# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists ActorDirector_18
(
actor_id int, 
director_id int, 
timestamp int
);

Truncate table ActorDirector_18;

insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('1', '1', '0');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('1', '1', '1');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('1', '1', '2');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('1', '2', '3');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('1', '2', '4');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('2', '1', '5');
insert into ActorDirector_18 (actor_id, director_id, timestamp) values ('2', '1', '6');

/*
Q. Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.
Return the result table in any order.

Input: 
ActorDirector table:
+-------------+-------------+-------------+
| actor_id    | director_id | timestamp   |
+-------------+-------------+-------------+
| 1           | 1           | 0           |
| 1           | 1           | 1           |
| 1           | 1           | 2           |
| 1           | 2           | 3           |
| 1           | 2           | 4           |
| 2           | 1           | 5           |
| 2           | 1           | 6           |
+-------------+-------------+-------------+
Output: 
+-------------+-------------+
| actor_id    | director_id |
+-------------+-------------+
| 1           | 1           |
+-------------+-------------+
Explanation: The only pair is (1, 1) where they cooperated exactly 3 times.
*/

SELECT * FROM ActorDirector_18;

# Query :- 
SELECT actor_id,director_id 
FROM ActorDirector_18
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3