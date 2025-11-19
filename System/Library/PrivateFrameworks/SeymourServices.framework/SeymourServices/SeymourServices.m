int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SessionDaemon();
  sub_100000F9C();
  static DaemonProtocol.main()();
  return 0;
}

unint64_t sub_100000F9C()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    type metadata accessor for SessionDaemon();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}