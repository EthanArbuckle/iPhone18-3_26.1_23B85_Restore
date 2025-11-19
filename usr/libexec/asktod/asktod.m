int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_autoreleasePoolPush();
  v9 = type metadata accessor for Daemon();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = Daemon.init()();
  objc_autoreleasePoolPop(v8);
  qword_100008010 = v12;
  v13 = objc_autoreleasePoolPush();
  sub_1000013D4();
  objc_autoreleasePoolPop(v13);
  v14 = [objc_opt_self() currentRunLoop];
  [v14 run];

  if (qword_100008018 != -1)
  {
    swift_once();
  }

  v15 = sub_1000014C0(v3, qword_100008020);
  (*(v4 + 16))(v7, v15, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "asktod runloop completed", v18, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

void sub_1000013D4()
{
  if (qword_100008018 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000014C0(v0, qword_100008020);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "asktod entered autoreleasepool", v3, 2u);
  }

  Daemon.startup()();
}

uint64_t sub_1000014C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000014F8()
{
  v0 = type metadata accessor for Logger();
  sub_100001578(v0, qword_100008020);
  sub_1000014C0(v0, qword_100008020);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001578(uint64_t a1, uint64_t *a2)
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