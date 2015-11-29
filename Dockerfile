FROM erlang:18

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y elixir

RUN mix local.hex

CMD ["elixir"]