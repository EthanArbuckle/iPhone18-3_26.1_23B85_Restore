uint64_t type metadata accessor for DeviceActivityMonitorExtension()
{
  result = qword_100008178;
  if (!qword_100008178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000112C()
{
  result = sub_100001474();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000011C4(uint64_t a1, uint64_t a2)
{
  sub_100001444();
  v4 = sub_100001454();

  return v4(a1, a2);
}

void sub_100001230()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_100001484();

    sub_100001464();
    v3.receiver = v0;
    v3.super_class = type metadata accessor for DeviceActivityMonitorExtension();
    objc_msgSendSuper2(&v3, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100001330()
{
  v1 = qword_100008170;
  v2 = sub_100001474();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100001398()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityMonitorExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000013D0(uint64_t a1)
{
  v2 = qword_100008170;
  v3 = sub_100001474();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}