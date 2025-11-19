uint64_t sub_100000F30()
{
  v0 = (*(*(sub_10000145C(&qword_100008030, &unk_100002860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000018EC(v3, qword_100008058);
  sub_1000018B4(v3, qword_100008058);
  v4 = type metadata accessor for NameSpecification();
  sub_100001950(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_10000104C()
{
  sub_1000019C4();
  v1 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = type metadata accessor for StateDump();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = async function pointer to static StateDump.dump()[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_10000116C;

  return static StateDump.dump()(v5);
}

uint64_t sub_10000116C()
{
  sub_1000019C4();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000013F0;
  }

  else
  {
    v3 = sub_10000127C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000127C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_10000145C(&qword_100008010, &qword_100002758);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100002740;
  v6 = StateDump.dataValue.getter();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
  }

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = v11;
  sub_1000014A4(v8, v9);
  *(v5 + 56) = &type metadata for String;
  v13 = 0x80000001000029B0;
  v14 = 0xD000000000000013;
  if (v12)
  {
    v14 = v10;
    v13 = v12;
  }

  *(v5 + 32) = v14;
  *(v5 + 40) = v13;
  print(_:separator:terminator:)();

  (*(v2 + 8))(v1, v4);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000013F0()
{
  sub_1000019C4();
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_10000145C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000014A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100001534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000015C0;

  return sub_10000104C();
}

uint64_t sub_1000015C0()
{
  sub_1000019C4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000016B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000018B4(v2, qword_100008058);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000017B0()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

unint64_t sub_100001808()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008020);
  }

  return result;
}

unint64_t sub_100001860()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_1000018B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000018EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100001978(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000019D0()
{
  v0 = (*(*(sub_10000145C(&qword_100008030, &unk_100002860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000018EC(v3, qword_100008070);
  sub_1000018B4(v3, qword_100008070);
  v4 = type metadata accessor for NameSpecification();
  sub_100001950(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_100001B08()
{
  sub_1000017B0();
  static ParsableArguments.parse(_:)();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001BFC;

  return sub_10000104C();
}

uint64_t sub_100001BFC()
{
  sub_1000024D4();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1000024C4();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    v7 = sub_100001D1C;
  }

  else
  {
    v7 = sub_100001D04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100001D34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001DC0;

  return sub_100001AEC();
}

uint64_t sub_100001DC0()
{
  sub_1000024D4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000024C4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100001EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008008 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000018B4(v2, qword_100008070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001F50()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = async function pointer to static AsyncParsableCommand.main()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  sub_100002358();
  *v2 = v0;
  v2[1] = sub_100002010;

  return static AsyncParsableCommand.main()();
}

uint64_t sub_100002010()
{
  sub_1000024D4();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1000024C4();
  *v6 = v5;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100002140, v8, v7);
}

void sub_100002140()
{
  v1 = *(v0 + 24);

  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1000021E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000226C;

  return sub_100001F50();
}

uint64_t sub_10000226C()
{
  sub_1000024D4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000024C4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

unint64_t sub_100002358()
{
  result = qword_100008038;
  if (!qword_100008038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008038);
  }

  return result;
}

unint64_t sub_1000023C0()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

unint64_t sub_100002418()
{
  result = qword_100008048;
  if (!qword_100008048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008048);
  }

  return result;
}

unint64_t sub_100002470()
{
  result = qword_100008050;
  if (!qword_100008050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008050);
  }

  return result;
}