CREATE TABLE IF NOT EXISTS "session" (
    "id" serial PRIMARY KEY,
    "created_at" timestamp NOT NULL,
    "updated_at" timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "participant" (
    "id" serial PRIMARY KEY,
    "created_at" timestamp NOT NULL,
    "updated_at" timestamp NOT NULL,
    "name" varchar(255) NOT NULL,
    "session_id" int REFERENCES "session" ("id") ON DELETE SET NULL
);