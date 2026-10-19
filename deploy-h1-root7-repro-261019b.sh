#!/usr/bin/env bash
set -euo pipefail
: "${H1_ROOT7_REPRO_261019B_SECRET:?protected secret missing}"
mkdir -p h1-root7-repro-261019b-protected
printf '%s' "$H1_ROOT7_REPRO_261019B_SECRET" > h1-root7-repro-261019b-protected/protected-secret.bin
printf '%s\n' "${GITHUB_SHA:?}" > h1-root7-repro-261019b-protected/merge-sha.txt
printf '%s\n' 'h1-root7-repro-261019b_PROTECTED_CONSUMER' > h1-root7-repro-261019b-protected/execution-marker.txt
