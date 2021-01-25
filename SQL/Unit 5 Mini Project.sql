CREATE TABLE videos (
videos_id serial PRIMARY KEY,
title_of_video VARCHAR (200) NOT NULL,
length_in_min TIME NOT NULL,
vid_url VARCHAR (600) NOT NULL);
INSERT INTO videos (title_of_video, length_in_min, vid_url)
VALUES 
('Martin Garrix - Summer Days / Yoojung Lee Choreography', '00:03:08', 'https://www.youtube.com/watch?v=88kw5xGtiX0'),
('Tinashe - 2 On ft. SchoolBoy Q / Tarzan Choreography', '00:01:55','https://www.youtube.com/watch?v=1KaNq25l_XQ'),
('Nicki Minaj - Chun-Li / Woonha Choreography', '00:02:39', 'https://www.youtube.com/watch?v=esHAQpe-hLE');
SELECT * FROM videos;
CREATE TABLE reviews (
reviews_id serial PRIMARY KEY,
user_id VARCHAR (50) UNIQUE NOT NULL,
title_of_video VARCHAR (200) NOT NULL,
rating INT,
CONSTRAINT rating CHECK (rating BETWEEN 0 AND 5),
reviews TEXT);
INSERT INTO reviews (user_id, title_of_video, rating, reviews)
VALUES 
('Stacey Daniels', 'Martin Garrix - Summer Days / Yoojung Lee Choreography', '4', 'THIS DANCE WAS AMAZING!!'),
('Tahj Michael', 'Tinashe - 2 On ft. SchoolBoy Q / Tarzan Choreography', '2','I’ve seen better…'),
('Sal Joseph', 'Nicki Minaj - Chun-Li / Woonha Choreography', '3', 'It was okay, I enjoyed watching it.');
SELECT * FROM reviews;
SELECT * FROM videos
INNER JOIN reviews ON videos.title_of_video = reviews.title_of_video