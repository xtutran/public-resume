FROM thomasweise/texlive

RUN apt-get update

# RUN apt-get install -y --no-install-recommends curl jq && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
