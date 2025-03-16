FROM alpine:latest

WORKDIR /app

COPY ./log-generator.sh .
RUN apk update && \
    apk add --no-cache \
    jq \
    netcat-openbsd \
    bash && \
    dos2unix /app/log-generator.sh && \
    chmod +x /app/log-generator.sh

CMD ["/bin/bash", "/app/log-generator.sh"]