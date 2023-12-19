#!/bin/bash

commands=(
  "echo 'Hello, world!'"
  "ls -l"
  "date"
  "whoami"
  "uname -a"
)

for ((i=1; i<=${#commands[@]}; i++)); do
  output=$(eval ${commands[$i]})
  echo "${commands[$i]}; exit" > "input${i}.txt"
  echo "$output" > "test${i}_expected_output.txt"
done
