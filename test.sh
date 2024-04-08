#!/usr/bin/env bash

for DIR in */; do
    DIRNAME=$(basename "$DIR")
    echo "==> $DIRNAME <=="
    (cd $DIR && cargo fmt && cargo test)
done

echo "===== Formatting and executing the Rust internal test framework complete ====="
