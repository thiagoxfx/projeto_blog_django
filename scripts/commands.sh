#!/bin/sh

# Adicione estas linhas temporariamente
echo "DEBUG: POSTGRES_HOST é $POSTGRES_HOST"
echo "DEBUG: POSTGRES_PORT é $POSTGRES_PORT"
# Fim das linhas temporárias

# O shell irá encerrar a execução do script quando um comando falhar
set -e

wait_psql.sh
collectstatic.sh
makemigrations.sh
migrate.sh
runserver.sh