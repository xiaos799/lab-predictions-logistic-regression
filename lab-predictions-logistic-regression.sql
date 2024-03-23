use sakila;

select * from film;
select * from rental;
select * from inventory;

CREATE TABLE subset_data AS
select film_id, release_year, language_id, rental_duration, rental_rate, length, rating, special_features, left(rental_date,7) as rental_date from film
join inventory using (film_id)
join rental using (inventory_id);

