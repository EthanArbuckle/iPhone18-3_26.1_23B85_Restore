int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_100001094(&qword_100008000, "\n") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_1000011AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  qword_100008010 = &off_100004138;
  sub_10000120C();
  sub_1000011BC();
  qword_100008018 = &_swiftEmptyArrayStorage;
  sub_1000011CC();
  qword_100008020 = sub_1000011EC();
  sub_10000119C();
  sub_10000121C();
  sub_1000010DC();
  sub_1000011FC();
  (*(v7 + 8))(v10, v6);
  v11 = enum case for SandboxID.blastdoor(_:);
  v12 = sub_10000122C();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  sub_1000011DC();
  sub_100001134(v5);
  return 0;
}

uint64_t sub_100001094(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000010DC()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_1000011AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001134(uint64_t a1)
{
  v2 = sub_100001094(&qword_100008000, "\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}