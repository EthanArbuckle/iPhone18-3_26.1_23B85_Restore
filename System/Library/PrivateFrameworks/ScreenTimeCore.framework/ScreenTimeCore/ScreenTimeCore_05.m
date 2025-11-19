uint64_t sub_1000F1DFC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1EBC, 0, 0);
}

uint64_t sub_1000F1EBC()
{
  v1 = v0[2];
  sub_1000EF380(v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LegacyUserSettingsService: userSettings() is not implemented!", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  sub_1000EFB10();
  v8 = objc_allocWithZone(type metadata accessor for Downtime());
  Downtime.init(blockAtLimit:scheduleEnabled:schedules:)();
  type metadata accessor for AlwaysAllowed();
  static AlwaysAllowed.defaultAlwaysAllowed()();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000F1B30(_swiftEmptyArrayStorage);
  }

  v9 = v0[5];
  v10 = objc_allocWithZone(type metadata accessor for UserSettings());
  v11 = UserSettings.init(alwaysAllowed:appLimits:appLimitsEnabled:downtime:pin:)();

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1000F2084()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2144, 0, 0);
}

uint64_t sub_1000F2144()
{
  v1 = v0[2];
  sub_1000EF380(v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LegacyUserSettingsService: insert() is not implemented!", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F2250()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2310, 0, 0);
}

uint64_t sub_1000F2310()
{
  v1 = v0[2];
  sub_1000EF380(v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LegacyUserSettingsService: update() is not implemented!", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F241C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F24DC, 0, 0);
}

uint64_t sub_1000F24DC()
{
  v1 = v0[2];
  sub_1000EF380(v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LegacyUserSettingsService: deleteUserSettings() is not implemented!", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F25E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000F1348(v2, v3, v5, v4);
}

uint64_t sub_1000F26A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000F0F14(v2, v3, v5, v4);
}

uint64_t sub_1000F2768()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000F0AF4(v2, v3, v4);
}

uint64_t sub_1000F281C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000EF8CC(v2, v3);
}

unint64_t sub_1000F28C8()
{
  result = qword_1001E21F8;
  if (!qword_1001E21F8)
  {
    type metadata accessor for UserID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E21F8);
  }

  return result;
}

uint64_t sub_1000F2924()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = objc_opt_self();
    sub_1000F4F70();
    swift_allocError();
    *v3 = 1;
    v4 = v1;
    v5 = _convertErrorToNSError(_:)();

    v6 = [v2 failure:v5];

    [v4 resolve:v6];
  }

  sub_1000A462C((v0 + 16));
  sub_1000A462C((v0 + 56));
  sub_1000A462C((v0 + 96));

  v7 = *(v0 + 144);
  swift_unknownObjectRelease();
  v8 = *(v0 + 152);

  sub_1000A462C((v0 + 160));

  v9 = *(v0 + 216);

  v10 = *(v0 + 224);

  return v0;
}

uint64_t sub_1000F2A48()
{
  sub_1000F2924();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2AA4(void *a1, void *a2)
{
  v4 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1000A0F2C(&qword_1001E23B8, &unk_1001428F0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  if (a1[27])
  {
    v12 = a1[27];

    AnyCancellable.cancel()();
  }

  v13 = a1[26];
  if (v13)
  {
    v14 = objc_opt_self();
    sub_1000F4F70();
    swift_allocError();
    *v15 = 0;
    v16 = v13;
    v17 = _convertErrorToNSError(_:)();

    v18 = [v14 failure:v17];

    [v16 resolve:v18];
    v19 = a1[26];
  }

  else
  {
    v19 = 0;
  }

  a1[26] = a2;
  v20 = a2;

  v21 = sub_1000A9618(a1 + 12, a1[15]);
  v22 = *(*v21 + 24);
  *(*v21 + 24) = 0;

  v23 = a1[10];
  v24 = a1[11];
  sub_1000A9618(a1 + 7, v23);
  v25 = (*(v24 + 8))(v23, v24);
  v38 = a1[17];
  v26 = v38;
  v39 = v25;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = v26;
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F489C();
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630);
  sub_1000F4F20(&qword_1001E23A0, sub_1000F489C);
  Publisher.receive<A>(on:options:)();
  sub_1000F48E8(v7);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v20;
  *(v30 + 24) = v29;
  sub_1000F4FCC(&qword_1001E23D8, &qword_1001E23B8, &unk_1001428F0);
  v31 = v20;
  v32 = v37;
  v33 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v36 + 8))(v11, v32);
  v34 = a1[27];
  a1[27] = v33;
}

void sub_1000F2EDC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000A2B1C(v10, qword_1001E7070);
    sub_1000F5014();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_1000F501C(v3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      sub_1000F5038();
      v15 = Error.localizedDescription.getter();
      v17 = sub_1000A2E68(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "failed to start cloud syncing: %s", v13, 0xCu);
      sub_1000A462C(v14);
    }

    v18 = objc_opt_self();
    sub_1000F5038();
    swift_allocError();
    *v19 = v3;
    sub_1000F5014();
    v20 = _convertErrorToNSError(_:)();

    v9 = [v18 failure:v20];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 200) = 1;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000F457C();
    }

    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000A2B1C(v5, qword_1001E7070);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "successfully started cloud syncing", v8, 2u);
    }

    v9 = [objc_opt_self() success];
  }

  [a2 resolve:v9];

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = *(v21 + 208);
    *(v21 + 208) = 0;
  }
}

id sub_1000F329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(STPromise) initPendingOnQueue:*(v3 + 136)];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v14;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);

  v18 = v14;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000F4F20(&qword_1001E19E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);

  return v18;
}

uint64_t sub_1000F3584(void *a1, void *a2)
{
  v4 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_1000A0F2C(&qword_1001E23B8, &unk_1001428F0);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  if (a1[27])
  {
    v12 = a1[27];

    AnyCancellable.cancel()();
  }

  v13 = a1[26];
  if (v13)
  {
    v14 = objc_opt_self();
    sub_1000F4F70();
    swift_allocError();
    *v15 = 0;
    v16 = v13;
    v17 = _convertErrorToNSError(_:)();

    v18 = [v14 failure:v17];

    [v16 resolve:v18];
    v19 = a1[26];
  }

  else
  {
    v19 = 0;
  }

  a1[26] = a2;
  v20 = a2;

  v21 = a1[10];
  v22 = a1[11];
  sub_1000A9618(a1 + 7, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v36 = a1[17];
  v24 = v36;
  v37 = v23;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = v24;
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F489C();
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630);
  sub_1000F4F20(&qword_1001E23A0, sub_1000F489C);
  Publisher.receive<A>(on:options:)();
  sub_1000F48E8(v7);

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v27;
  sub_1000F4FCC(&qword_1001E23D8, &qword_1001E23B8, &unk_1001428F0);
  v29 = v20;
  v30 = v35;
  v31 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v34 + 8))(v11, v30);
  v32 = a1[27];
  a1[27] = v31;
}

void sub_1000F39A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000A2B1C(v14, qword_1001E7070);
    sub_1000F5014();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000F501C(v3);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315138;
      v27[5] = v3;
      sub_1000F5038();
      v19 = Error.localizedDescription.getter();
      v21 = sub_1000A2E68(v19, v20, v27);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "failed to stop cloud syncing: %s", v17, 0xCu);
      sub_1000A462C(v18);
    }

    v22 = objc_opt_self();
    sub_1000F5038();
    swift_allocError();
    *v23 = v3;
    sub_1000F5014();
    v24 = _convertErrorToNSError(_:)();

    v13 = [v22 failure:v24];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000DEF80(Strong + 96, v27);

      v5 = *sub_1000A9618(v27, v27[3]);
      sub_1000FE994();
      sub_1000A462C(v27);
    }

    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      *(v6 + 200) = 0;
    }

    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = *(v7 + 224);

      if (v8)
      {
        AnyCancellable.cancel()();
      }
    }

    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000A2B1C(v9, qword_1001E7070);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "successfully stopped cloud syncing", v12, 2u);
    }

    v13 = [objc_opt_self() success];
  }

  [a2 resolve:v13];

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = *(v25 + 208);
    *(v25 + 208) = 0;
  }
}

id sub_1000F3DA0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 136);
  v9 = [objc_allocWithZone(STPromise) initPendingOnQueue:v14];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v0;
  aBlock[4] = sub_1000F4F18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001AAD08;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000F4F20(&qword_1001E19E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);

  return v12;
}

void sub_1000F409C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = *(a2 + 200);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = [v4 success:isa];

  [a1 resolve:v7];
}

id sub_1000F4150()
{
  v1 = v0;
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E7070);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "forcing a mirroring sync", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = *(v1 + 136);
  v11[4] = sub_1000F4EF8;
  v11[5] = v1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000F43A8;
  v11[3] = &unk_1001AACB8;
  v8 = _Block_copy(v11);

  v9 = [v6 onQueue:v7 do:v8];
  _Block_release(v8);
  return v9;
}

uint64_t sub_1000F42F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 200) == 1)
  {
    v4 = sub_1000F2A7C();
  }

  else
  {
    v5 = [objc_opt_self() success];
    v4 = [objc_allocWithZone(STPromise) initWithResolution:v5 onQueue:*(a1 + 136)];
  }

  result = sub_1000A0F2C(&qword_1001E23B0, &unk_1001428E0);
  a2[3] = result;
  *a2 = v4;
  return result;
}

id sub_1000F43A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v12, v3);

  v4 = v13;
  if (v13)
  {
    v5 = sub_1000A9618(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000A462C(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1000F4508(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  return v5;
}

uint64_t sub_1000F457C()
{
  v1 = v0;
  v2 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v19 = sub_1000A0F2C(&qword_1001E2388, &qword_1001428D0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19);
  v9 = &v18 - v8;
  if (v0[28])
  {

    AnyCancellable.cancel()();
  }

  v10 = v0[19];
  v20 = v0[17];
  v11 = v20;
  v21 = v10;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);

  v13 = v11;
  sub_1000A0F2C(&qword_1001E2390, &qword_1001428D8);
  sub_1000F489C();
  sub_1000F4FCC(&qword_1001E2398, &qword_1001E2390, &qword_1001428D8);
  sub_1000F4F20(&qword_1001E23A0, sub_1000F489C);
  Publisher.receive<A>(on:options:)();
  sub_1000F48E8(v5);

  sub_1000F4FCC(&qword_1001E23A8, &qword_1001E2388, &qword_1001428D0);

  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v9, v14);
  v16 = v1[28];
  v1[28] = v15;

  sub_1000A9618(v1 + 20, v1[23]);
  type metadata accessor for ConcreteStoreChangeSyncTrigger();
  return sub_1000FF9BC();
}

unint64_t sub_1000F489C()
{
  result = qword_1001E1A08;
  if (!qword_1001E1A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001E1A08);
  }

  return result;
}

uint64_t sub_1000F48E8(uint64_t a1)
{
  v2 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F4950(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E7070);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315138;
    v9 = 0xE600000000000000;
    v10 = 0x6C61756E616DLL;
    if (v3 == 1)
    {
      v10 = 0xD000000000000012;
      v9 = 0x8000000100151710;
    }

    if (v3)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x8000000100151730;
    }

    v13 = sub_1000A2E68(v11, v12, v17);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "attempting to sync in response to %s trigger event", v7, 0xCu);
    sub_1000A462C(v8);
  }

  [*(a2 + 144) transactionWithDescription:"com.apple.ScreenTimeAgent.mirroring-synchronizing-stores"];
  LOBYTE(v17[0]) = 0;
  sub_1000F4BA8(a2, v17);
  if (LOBYTE(v17[0]) == 1)
  {
    v14 = *(a2 + 232);
    if (qword_1001DF150 != -1)
    {
      v16 = *(a2 + 232);
      swift_once();
      v14 = v16;
    }

    [v14 postNotificationName:qword_1001E7040 object:a2];
  }

  return swift_unknownObjectRelease();
}

void sub_1000F4BA8(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1000A9618((a1 + 16), *(a1 + 40));
  v4 = sub_1000FE884(*v3);
  if (!v4)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E7070);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "local store is up to date with cloud store";
    goto LABEL_11;
  }

  v5 = v4;
  if (v4 == 1)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000A2B1C(v6, qword_1001E7070);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "local store changes were exported to cloud store";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_12:

    *a2 = 1;
    return;
  }

  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000A2B1C(v12, qword_1001E7070);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  sub_1000F4EE8(v5);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000A2E68(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "failed to synchronize stores: %s", v15, 0xCu);
    sub_1000A462C(v16);

    sub_1000F4EE8(v5);
  }

  else
  {

    sub_1000F4EE8(v5);
  }
}

NSString sub_1000F4EA8()
{
  result = String._bridgeToObjectiveC()();
  qword_1001E7040 = result;
  return result;
}

unint64_t sub_1000F4EE8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1000F4F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F4F20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F4F70()
{
  result = qword_1001E23C0;
  if (!qword_1001E23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23C0);
  }

  return result;
}

uint64_t sub_1000F4FCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000A53D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F501C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000F5030();
  }

  return result;
}

unint64_t sub_1000F5038()
{
  result = qword_1001E23E0;
  if (!qword_1001E23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23E0);
  }

  return result;
}

uint64_t sub_1000F508C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F50D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000F5130()
{
  result = qword_1001E23E8;
  if (!qword_1001E23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23E8);
  }

  return result;
}

Swift::Int sub_1000F519C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000F5200()
{
  if (*v0)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F5258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL sub_1000F52B8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_1000A0F74(0, &qword_1001E2A18, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

Swift::Int sub_1000F5328()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_1000F53C4()
{
  if (!*(v0 + 16))
  {
    v1 = 1;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 2;
LABEL_5:
    Hasher._combine(_:)(v1);

    String.hash(into:)();
    return;
  }

  if (*v0 == 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000F545C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1000F54F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    if (v9 != 1)
    {
      return 0;
    }

LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  if (v4 | v5)
  {
    if (v9 != 2 || v7 != 1 || v8 != 0)
    {
      return 0;
    }
  }

  else if (v9 != 2 || (v8 | v7) != 0)
  {
    return 0;
  }

  return 1;
}

id sub_1000F5578()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [*(v0 + 16) newBackgroundContext];
    [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v4 = String._bridgeToObjectiveC()();
    [v3 setTransactionAuthor:v4];

    v5 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1000F5638(void *a1@<X1>, int a2@<W2>, char *a3@<X8>)
{
  LODWORD(v74) = a2;
  v76 = a3;
  v5 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v61 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v61 - v19;
  __chkstk_darwin(v18);
  v22 = &v61 - v21;
  v23 = sub_1000F8ED8(a1);
  if (!v3)
  {
    v24 = v23;
    v70 = v17;
    v71 = v8;
    v67 = v14;
    v75 = v22;
    v69 = v20;
    if (v74)
    {
      v25 = sub_1000F91D8();
    }

    else
    {
      v25 = sub_1000F93E4(STiCloudOrganization_ptr, &qword_1001E2A20, 7);
    }

    v26 = v69;
    v27 = v25;
    v64 = 0;
    v28 = [objc_opt_self() fetchRequestMatchingBlueprintsForUser:v24 fromOrganization:v25 includeTombstones:1];
    v77 = 0;
    v29 = [v28 execute:&v77];
    v30 = v77;
    if (!v29)
    {
      v59 = v28;
      v60 = v77;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v31 = v29;
    sub_1000A0F74(0, &qword_1001E0240, STBlueprint_ptr);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v30;

    static Date.distantPast.getter();
    v34 = v32;
    v62 = v27;
    v63 = v24;
    v61 = v28;
    if (v32 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v32;
      v36 = v10;
      if (v35)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v10;
      if (v35)
      {
LABEL_8:
        if (v35 < 1)
        {
          __break(1u);
        }

        v37 = 0;
        v72 = v34;
        v73 = v34 & 0xC000000000000001;
        v38 = (v36 + 32);
        v39 = (v36 + 8);
        v68 = (v36 + 56);
        v65 = (v36 + 48);
        v66 = (v36 + 16);
        v40 = v76;
        v74 = v35;
        do
        {
          if (v73)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v41 = *(v34 + 8 * v37 + 32);
          }

          v42 = v41;
          v43 = [v41 modificationDate];
          if (v43)
          {
            v44 = v43;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = v75;
            (*v38)(v75, v26, v9);
          }

          else
          {
            v45 = v75;
            (*v66)(v75, v40, v9);
          }

          v46 = static Date.> infix(_:_:)();
          v47 = v45;
          v48 = v46;
          v49 = *v39;
          (*v39)(v47, v9);
          if (v48)
          {
            v50 = [v42 modificationDate];
            if (v50)
            {
              v51 = v67;
              v52 = v50;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v49(v76, v9);
              v53 = *v38;
              v54 = v71;
              v55 = v51;
              v40 = v76;
              (*v38)(v71, v55, v9);
              (*v68)(v54, 0, 1, v9);
              v56 = v70;
              v53(v70, v54, v9);
            }

            else
            {
              v57 = v71;
              (*v68)(v71, 1, 1, v9);
              v58 = v70;
              static Date.distantPast.getter();

              v56 = v58;
              v26 = v69;
              v49(v40, v9);
              if ((*v65)(v57, 1, v9) != 1)
              {
                sub_1000A5148(v71, &unk_1001E1830, &unk_100141720);
              }
            }

            (*v38)(v40, v56, v9);
          }

          else
          {
          }

          v34 = v72;
          ++v37;
        }

        while (v74 != v37);
      }
    }
  }
}

double sub_1000F5BFC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000F8ED8(a1);
  if (!v2)
  {
    v6 = v4;
    sub_1000F95E8(v4, v9);

    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = *v10;
    *(a2 + 79) = *&v10[15];
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

void sub_1000F5C78(void *a1)
{
  sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    v5 = sub_1000F5578();
    __chkstk_darwin(v5);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (v1)
    {
    }

    else
    {

      v9[2] = v13;
      v9[3] = v14;
      *v10 = *v15;
      *&v10[15] = *&v15[15];
      v9[0] = v11;
      v9[1] = v12;
      sub_1000A0F74(0, &qword_1001E2A18, NSObject_ptr);
      v6 = v11;
      v7 = static NSObject.== infix(_:_:)();
      sub_1000F8EA8(v9);

      if ((v7 & 1) == 0)
      {
        v8 = a1;
      }
    }
  }
}

void sub_1000F5DFC(void *a1@<X1>, char a2@<W2>, char *a3@<X8>)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v22 - v14;
  v16 = sub_1000F8ED8(a1);
  if (!v3)
  {
    v17 = v16;
    v18 = sub_1000F98A8(v16, a2 & 1);
    v19 = [v18 modificationDate];
    if (v19)
    {
      v20 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = *(v8 + 32);
      v21(v15, v11, v7);
      (*(v8 + 56))(v15, 0, 1, v7);
      v21(a3, v15, v7);
    }

    else
    {
      (*(v8 + 56))(v15, 1, 1, v7);
      static Date.distantPast.getter();

      if ((*(v8 + 48))(v15, 1, v7) != 1)
      {
        sub_1000A5148(v15, &unk_1001E1830, &unk_100141720);
      }
    }
  }
}

id sub_1000F6040@<X0>(void *a1@<X1>, NSNumber *a2@<X8>)
{
  v5 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  result = sub_1000F8ED8(a1);
  if (!v2)
  {
    v16 = result;
    v27 = 0;
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    v17.super.super.isa = NSNumber.init(integerLiteral:)([v16 passcodeEntryAttemptCount]).super.super.isa;
    v18 = [v16 passcodeEntryTimeoutEndDate];
    if (v18)
    {
      v19 = v18;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    }

    else
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    }

    sub_1000F97C8(v12, v14);
    v26 = *(sub_1000A0F2C(&qword_1001E1F08, &qword_100142050) + 48);
    a2->super.super.isa = v17.super.super.isa;
    sub_1000F9838(v14, v9);
    type metadata accessor for Date();
    v21 = *(v20 - 8);
    isa = v17.super.super.isa;
    v23 = *(v21 + 48);
    if (v23(v9, 1, v20) == 1)
    {
      v24 = isa;
      Date.init()();

      sub_1000A5148(v14, &unk_1001E1830, &unk_100141720);
      result = v23(v9, 1, v20);
      if (result != 1)
      {
        return sub_1000A5148(v9, &unk_1001E1830, &unk_100141720);
      }
    }

    else
    {
      sub_1000A5148(v14, &unk_1001E1830, &unk_100141720);

      return (*(v21 + 32))(a2 + v26, v9, v20);
    }
  }

  return result;
}

void sub_1000F6358(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = sub_1000F8ED8(a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 localUserDeviceState];
    if (!v7)
    {

      *a3 = 1;
      return;
    }

    v8 = sub_1000F93E4(STScreenTimeSettings_ptr, &qword_1001E2A30, 0xD);
    v9 = v8;
    v10 = [v8 currentOrganization];
    if (v10)
    {

      v11 = [v9 currentOrganization];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          *a3 = 1;
          return;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          *a3 = 0;
          return;
        }

        objc_opt_self();
      }

      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v13 = 0xD000000000000010;
      v13[1] = 0x80000001001528A0;
    }

    else
    {
      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1000F65A4()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_1000F6658()
{
  sub_1000AB584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000F676C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataStore.DataStoreError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8E2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000F8E44(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000F8ED8(void *a1)
{
  v1 = a1;
  if (a1)
  {
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {
      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v4 = v1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v5 = v1;
      return v1;
    }

    v6 = [objc_opt_self() fetchRequestForUsersWithDSID:v1];
  }

  else
  {
    v6 = [objc_opt_self() fetchRequestMatchingLocalUser];
  }

  v7 = v6;
  v18 = 0;
  v8 = [v7 execute:&v18];
  v9 = v18;
  if (!v8)
  {
    v1 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_18:

    return v1;
  }

  v10 = v8;
  sub_1000A0F74(0, &qword_1001E0A40, STCoreUser_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 != 1)
  {
LABEL_15:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
    swift_allocError();
    *v15 = v1;
    if (v13)
    {
      v15[1] = v13;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v1;
    goto LABEL_18;
  }

LABEL_9:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v11 + 32);
  }

  v1 = v14;

  return v1;
}

id sub_1000F91D8()
{
  v0 = [objc_opt_self() fetchRequest];
  v10 = 0;
  v1 = [v0 execute:&v10];
  v2 = v10;
  if (!v1)
  {
    v7 = v10;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();

    return v2;
  }

  v3 = v1;
  sub_1000A0F74(0, &qword_1001E2A28, STFamilyOrganization_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v2;

  if (v4 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 != 1)
  {
LABEL_10:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
    swift_allocError();
    if (v2)
    {
      *v8 = v2;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v6 = *(v4 + 32);
  }

  v2 = v6;

  return v2;
}

id sub_1000F93E4(uint64_t *a1, unint64_t *a2, id a3)
{
  v6 = *a1;
  v7 = [objc_opt_self() fetchRequest];
  v17 = 0;
  v8 = [v7 execute:&v17];
  v9 = v17;
  if (!v8)
  {
    a3 = v17;
    _convertNSErrorToError(_:)();

LABEL_11:
    swift_willThrow();

    return a3;
  }

  v10 = v8;
  sub_1000A0F74(0, a2, a1);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 != 1)
  {
LABEL_10:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
    swift_allocError();
    *v15 = v13;
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v11 + 32);
  }

  a3 = v14;

  return a3;
}

id sub_1000F95E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = [a1 dsid];
  v4 = [a1 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v7;
    v29 = v6;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v8 = [a1 appleID];
  if (v8)
  {
    v9 = v8;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v26 = 0;
    v11 = 0;
  }

  v12 = [a1 familyName];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 givenName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 familyMemberType];
  if (!v22)
  {
    v22 = STFamilyMemberTypeUnknown;
  }

  v23 = [a1 isParent];
  v24 = [a1 isFamilyOrganizer];
  result = [a1 isManaged];
  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v23;
  *(a2 + 81) = v24;
  *(a2 + 82) = result;
  return result;
}

uint64_t sub_1000F97C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000F98A8(id a1, char a2)
{
  if (a2)
  {
    result = [a1 familySettings];
    if (result)
    {
      return result;
    }

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
    swift_allocError();
    v5 = v4;
    v6 = [a1 localUserDeviceState];
    if (v6)
    {

      v7 = 0;
    }

    else
    {
      v7 = [a1 dsid];
    }

    *v5 = v7;
  }

  else
  {
    result = [a1 cloudSettings];
    if (result)
    {
      return result;
    }

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
    swift_allocError();
    v9 = v8;
    v10 = [a1 localUserDeviceState];
    if (v10)
    {

      v11 = 0;
    }

    else
    {
      v11 = [a1 dsid];
    }

    *v9 = v11;
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

__n128 sub_1000F9A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000F9A98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 83))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F9AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F9B4C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000F9B68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000F9B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000F9BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000F9C08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000F9C3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F9C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1000F9CE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1000F9D60()
{
  sub_1000FA4C0(319, &qword_1001E2AB8, type metadata accessor for STBlueprintType);
  if (v0 <= 0x3F)
  {
    sub_1000FA1C4();
    if (v1 <= 0x3F)
    {
      sub_1000FA21C();
      if (v2 <= 0x3F)
      {
        sub_1000FA24C();
        if (v3 <= 0x3F)
        {
          sub_1000FA2AC(319, &qword_1001E2AD8, type metadata accessor for STBlueprintType);
          if (v4 <= 0x3F)
          {
            sub_1000FA27C();
            if (v5 <= 0x3F)
            {
              sub_1000FA2AC(319, &qword_1001E2AE8, type metadata accessor for STBlueprintConfigurationType);
              if (v6 <= 0x3F)
              {
                sub_1000FA5AC(319, &qword_1001E2AF0);
                if (v7 <= 0x3F)
                {
                  sub_1000FA324();
                  if (v8 <= 0x3F)
                  {
                    sub_1000FA354();
                    if (v9 <= 0x3F)
                    {
                      sub_1000FA384();
                      if (v10 <= 0x3F)
                      {
                        sub_1000FA3B4();
                        if (v11 <= 0x3F)
                        {
                          sub_1000FA5AC(319, &qword_1001E2B18);
                          if (v12 <= 0x3F)
                          {
                            sub_1000FA5AC(319, &qword_1001E2B20);
                            if (v13 <= 0x3F)
                            {
                              sub_1000FA430();
                              if (v14 <= 0x3F)
                              {
                                sub_1000FA460();
                                if (v15 <= 0x3F)
                                {
                                  sub_1000FA490();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1000FA4C0(319, &qword_1001E2B40, type metadata accessor for STFamilyMemberType);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1000FA50C(319, &qword_1001E2B48, type metadata accessor for STBlueprintType);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1000FA57C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1000FA50C(319, &qword_1001E2B58, type metadata accessor for STBlueprintConfigurationType);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1000FA5AC(319, &qword_1001E2B60);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1000FA5AC(319, &qword_1001E2B68);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1000FA4C0(319, &qword_1001E2B70, &type metadata accessor for URL);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1000FA604();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1000FA4C0(319, &unk_1001E2B80, type metadata accessor for STBlueprintConfigurationType);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000FA1C4()
{
  if (!qword_1001E2AC0)
  {
    v0 = sub_1000A0F74(0, &qword_1001E0028, NSPredicate_ptr);
    if (!v1)
    {
      atomic_store(v0, &qword_1001E2AC0);
    }
  }
}

void *sub_1000FA21C()
{
  result = qword_1001E2AC8;
  if (!qword_1001E2AC8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2AC8);
  }

  return result;
}

void *sub_1000FA24C()
{
  result = qword_1001E2AD0;
  if (!qword_1001E2AD0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2AD0);
  }

  return result;
}

void *sub_1000FA27C()
{
  result = qword_1001E2AE0;
  if (!qword_1001E2AE0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2AE0);
  }

  return result;
}

void sub_1000FA2AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void *sub_1000FA324()
{
  result = qword_1001E2AF8;
  if (!qword_1001E2AF8)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2AF8);
  }

  return result;
}

void *sub_1000FA354()
{
  result = qword_1001E2B00;
  if (!qword_1001E2B00)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B00);
  }

  return result;
}

void *sub_1000FA384()
{
  result = qword_1001E2B08;
  if (!qword_1001E2B08)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B08);
  }

  return result;
}

void sub_1000FA3B4()
{
  if (!qword_1001E2B10)
  {
    sub_1000A0F74(255, &qword_1001E0028, NSPredicate_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001E2B10);
    }
  }
}

void *sub_1000FA430()
{
  result = qword_1001E2B28;
  if (!qword_1001E2B28)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B28);
  }

  return result;
}

void *sub_1000FA460()
{
  result = qword_1001E2B30;
  if (!qword_1001E2B30)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2B30);
  }

  return result;
}

void *sub_1000FA490()
{
  result = qword_1001E2B38;
  if (!qword_1001E2B38)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2B38);
  }

  return result;
}

void sub_1000FA4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000FA50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1000FA57C()
{
  result = qword_1001E2B50;
  if (!qword_1001E2B50)
  {
    result = &type metadata for DataStore.UserID;
    atomic_store(&type metadata for DataStore.UserID, &qword_1001E2B50);
  }

  return result;
}

void sub_1000FA5AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1000FA604()
{
  result = qword_1001E2B78;
  if (!qword_1001E2B78)
  {
    result = &type metadata for DataStore.DeviceID;
    atomic_store(&type metadata for DataStore.DeviceID, &qword_1001E2B78);
  }

  return result;
}

unint64_t sub_1000FA638()
{
  result = qword_1001E2BB0;
  if (!qword_1001E2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2BB0);
  }

  return result;
}

unint64_t sub_1000FA690()
{
  result = qword_1001E2BB8;
  if (!qword_1001E2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2BB8);
  }

  return result;
}

unint64_t sub_1000FA6E8(uint64_t a1)
{
  if (a1 < 0)
  {
    _StringGuts.grow(_:)(36);

    v3 = 0xD000000000000022;
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v3 = 0xD000000000000020;
  }

  swift_getErrorValue();
  v1._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t sub_1000FA7E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000FA844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_1000FA8C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(STDaemonPersistenceController) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FA934()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(STUserNotificationManager) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FA9A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteAskForTimeEventRelay) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAA0C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteDeviceInformationPrimitives) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAA78()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteAskForTimeConfigurationProvider) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAAE4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for STConcreteAskToManager()) init];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAB50()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = sub_1000FA8C8();
    v4 = sub_1000FA934();
    v5 = sub_1000FA9A0();
    v6 = sub_1000FAA78();
    v7 = sub_1000FAAE4();
    v8 = [objc_allocWithZone(STAskForTimeManager) initWithPersistenceController:v3 userNotificationManager:v4 eventRelay:v5 askForTimeConfigurationProvider:v6 askToManager:v7];

    v9 = *(v0 + 64);
    *(v0 + 64) = v8;
    v2 = v8;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1000FAC20()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v11 = v0;
    v12 = sub_1000FA8C8();
    v17 = sub_1000FAB50();
    v16[1] = sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
    (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1000FDFE0();
    sub_1000A0F2C(&qword_1001E1A20, qword_1001431E0);
    sub_1000FE038();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v10 = sub_1000FE09C(v12, v13);

    v14 = *(v0 + 72);
    *(v11 + 72) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v10;
}

id sub_1000FAEA4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(STAccountNotifier) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAF10()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAF84()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = sub_1000FA8C8();
    v4 = sub_1000FAB50();
    v5 = sub_1000FAC20();
    v6 = sub_1000FAEA4();
    v7 = sub_1000FAA0C();
    v8 = [v7 screenTimeCapabilities];

    v9 = [objc_allocWithZone(STScreenTimeOrganizationController) initWithPersistenceController:v3 askForTimeManager:v4 mirroringMonitor:v5 accountNotifier:v6 capabilities:v8];
    swift_unknownObjectRelease();

    v10 = *(v0 + 96);
    *(v0 + 96) = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t sub_1000FB074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2F10, &unk_100143010);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder;
  swift_beginAccess();
  sub_1000A95B0(v1 + v10, v9, &qword_1001E2F10, &unk_100143010);
  v11 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001E2F10, &unk_100143010);
  STExpressIntroduction.Internal.JSONCoder.init()();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000FDF78(v7, v1 + v10, &qword_1001E2F10, &unk_100143010);
  return swift_endAccess();
}

uint64_t sub_1000FB278@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2F00, &qword_100143008);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource;
  swift_beginAccess();
  sub_1000A95B0(v1 + v10, v9, &qword_1001E2F00, &qword_100143008);
  v11 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001E2F00, &qword_100143008);
  v17[3] = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v17[4] = &protocol witness table for STExpressIntroduction.Internal.JSONCoder;
  v13 = sub_1000AC704(v17);
  sub_1000FB074(v13);
  sub_1000DEF80(v17, v16);
  STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.init(coder:createAppGroupUserDefaults:)();
  sub_1000A462C(v17);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000FDF78(v7, v1 + v10, &qword_1001E2F00, &qword_100143008);
  return swift_endAccess();
}

id sub_1000FB4D0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    sub_1000FDF24();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000FB590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2EF8, &unk_100142FF8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore;
  swift_beginAccess();
  sub_1000A95B0(v1 + v10, v9, &qword_1001E2EF8, &unk_100142FF8);
  v11 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001E2EF8, &unk_100142FF8);
  v19[3] = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  v19[4] = &protocol witness table for STExpressIntroduction.Internal.STDatabase;
  v13 = sub_1000AC704(v19);
  sub_1000FBFB0(v13);
  v18[3] = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore();
  v18[4] = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore;
  sub_1000AC704(v18);
  static STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.shared.getter();
  sub_1000DEF80(v19, v17);
  sub_1000DEF80(v18, v16);
  STExpressIntroduction.Internal.ReconcilingSettingsStore.init(dataSource:userContextStore:fetchSignedInAppleAccountDSID:)();
  sub_1000A462C(v18);
  sub_1000A462C(v19);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000FDF78(v7, v1 + v10, &qword_1001E2EF8, &unk_100142FF8);
  return swift_endAccess();
}

void sub_1000FB824()
{
  v0 = [objc_allocWithZone(ACAccountStore) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_personID];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = HIBYTE(v5) & 0xF;
      v7 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v35 = 0;

          sub_1000FCF78(v3, v5, 10);
          swift_bridgeObjectRelease_n();
          return;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          v34[0] = v3;
          v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v23 = 0;
                v24 = v34 + 1;
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    break;
                  }

                  v26 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    break;
                  }

                  v23 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    break;
                  }

                  ++v24;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_72;
          }

          if (v3 != 45)
          {
            if (v6)
            {
              v30 = 0;
              v31 = v34;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  break;
                }

                v30 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v6)
          {
            if (--v6)
            {
              v15 = 0;
              v16 = v34 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = _StringObject.sharedUTF8.getter();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v19 = 0;
                if (v9)
                {
                  v20 = v9 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v19;
                    if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v19 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v6)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_71;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v27 = 0;
              if (v9)
              {
                while (1)
                {
                  v28 = *v9 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_63;
                  }

                  v29 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v27 = v29 + v28;
                  if (__OFADD__(v29, v28))
                  {
                    goto LABEL_63;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v6) = 1;
            goto LABEL_64;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_63;
                  }

                  v14 = 10 * v11;
                  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_63;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v6) = 0;
LABEL_64:
              v35 = v6;

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }
    }
  }
}

id sub_1000FBBAC()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer);
  }

  else
  {
    v4 = sub_1000FBC10();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000FBC10()
{
  v0 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  v25[3] = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v25[4] = &protocol witness table for STExpressIntroduction.Internal.ReconcilingSettingsStore;
  v16 = sub_1000AC704(v25);
  sub_1000FB590(v16);
  v24[3] = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v24[4] = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource;
  v17 = sub_1000AC704(v24);
  sub_1000FB278(v17);
  sub_1000DEF80(v25, v23);
  sub_1000DEF80(v24, v22);
  STExpressIntroduction.Internal.DefaultsSavingSettingsStore.init(internal:settingsDefaultsDataSource:)();
  sub_1000A462C(v24);
  sub_1000A462C(v25);
  sub_1000FB074(v7);
  (*(v1 + 16))(v5, v7, v0);
  (*(v9 + 16))(v13, v15, v8);
  v18 = sub_1000FDDA8(v5, v13);
  (*(v1 + 8))(v7, v0);
  v19 = sub_1000FAF84();
  v20 = [objc_allocWithZone(STAgentServer) initWithScreenTimeStateManager:v19 expressIntroductionServer:v18];

  (*(v9 + 8))(v15, v8);
  return v20;
}

char *sub_1000FBEC8()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate);
  }

  else
  {
    v4 = v0;
    v5 = sub_1000FA8C8();
    v6 = type metadata accessor for STExceptionServer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_fetchContext] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_fetchController] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_persistenceController] = v5;
    v14.receiver = v7;
    v14.super_class = v6;
    v8 = objc_msgSendSuper2(&v14, "init");
    v9 = objc_allocWithZone(type metadata accessor for STExceptionListener());
    v10 = sub_1000B8198(v8);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1000FBFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2EE0, &qword_100142FF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v20[-v8 - 8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource;
  swift_beginAccess();
  sub_1000A95B0(v1 + v10, v9, &qword_1001E2EE0, &qword_100142FF0);
  v11 = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001E2EE0, &qword_100142FF0);
  sub_1000FA8C8();
  v13 = *(v1 + 16);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 create];
  [objc_allocWithZone(STOrganizationSettingsRestrictionUtility) initWithPersistenceController:v15 restrictionPayloadUtility:v16];

  v17 = sub_1000FAF84();
  v21[3] = sub_1000A0F74(0, &qword_1001E2EE8, off_1001A1178);
  v21[4] = sub_1000FCE9C();
  v21[0] = v17;
  sub_1000DEF80(v21, v20);
  STExpressIntroduction.Internal.STDatabase.init(persistenceController:organizationSettingsRestrictionUtility:introductionModelService:)();
  sub_1000A462C(v21);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000FDF78(v7, v1 + v10, &qword_1001E2EE0, &qword_100142FF0);
  return swift_endAccess();
}

uint64_t sub_1000FC270()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();

  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder, &qword_1001E2F10, &unk_100143010);
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource, &qword_1001E2F00, &qword_100143008);
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore, &qword_1001E2EF8, &unk_100142FF8);

  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource, &qword_1001E2EE0, &qword_100142FF0);
  return v0;
}

uint64_t sub_1000FC380()
{
  sub_1000FC270();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000FC3D8()
{
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder;
  v2 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource;
  v4 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore;
  v6 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer) = 0;
  *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate) = 0;
  v7 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource;
  v8 = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1000FC544@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedInstance];
  v12 = sub_1000FA8C8();
  v31 = sub_1000A0F2C(&qword_1001E2F20, &qword_100143028);
  v32 = &off_1001A7A80;
  v30[0] = v11;
  sub_1000DEF80(v30, &v27);
  _s16EligibilityStoreCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_100004804(&v27, v13 + 24);
  v14 = v11;
  sub_1000A462C(v30);
  sub_1000FB590(v10);
  sub_1000FB278(v5);
  v31 = v6;
  v32 = &protocol witness table for STExpressIntroduction.Internal.ReconcilingSettingsStore;
  v15 = sub_1000AC704(v30);
  (*(v7 + 16))(v15, v10, v6);
  v28 = v1;
  v29 = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource;
  v16 = sub_1000AC704(&v27);
  (*(v2 + 16))(v16, v5, v1);
  sub_1000DEF80(v30, v26);
  sub_1000DEF80(&v27, v25);
  _s14SettingsMergerCMa();
  v17 = swift_allocObject();
  sub_100004804(v26, v17 + 16);
  sub_100004804(v25, v17 + 56);
  sub_1000A462C(v30);
  sub_1000A462C(&v27);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  v18 = sub_1000FAF10();
  v19 = sub_1000FDB9C(v13, v17, v18);

  v20 = _s19SettingsCoordinatorCMa();
  v21 = v24;
  v24[3] = v20;
  v21[4] = &off_1001A72F8;
  v22 = v21;

  *v22 = v19;
  return result;
}

uint64_t sub_1000FC884(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(sub_1000FC8A8, 0, 0);
}

uint64_t sub_1000FC8A8()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1000FC9C8;
  v3 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB2C8;
  v0[14] = v3;
  [v1 enableRemoteManagementForDSID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000FC9C8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000FCAD0(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = *v2;
  return _swift_task_switch(sub_1000FCAF8, 0, 0);
}

uint64_t sub_1000FCAF8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000FE880;
  v4 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB2A0;
  v0[14] = v4;
  [v1 applyIntroductionModel:v3 forDSID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t type metadata accessor for ConcreteDependencyFactory()
{
  result = qword_1001E2C18;
  if (!qword_1001E2C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FCC74()
{
  sub_1000FCE48(319, &qword_1001E2C28, &type metadata accessor for STExpressIntroduction.Internal.JSONCoder);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1000FCE48(319, &qword_1001E2C30, &type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000FCE48(319, &qword_1001E2C38, &type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000FCE48(319, &unk_1001E2C40, &type metadata accessor for STExpressIntroduction.Internal.STDatabase);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000FCE48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000FCE9C()
{
  result = qword_1001E2EF0;
  if (!qword_1001E2EF0)
  {
    sub_1000A0F74(255, &qword_1001E2EE8, off_1001A1178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2EF0);
  }

  return result;
}

void *sub_1000FCF04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000A0F2C(&qword_1001DF7B0, &qword_100140120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1000FCF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000FD504();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000FD504()
{
  v0 = String.subscript.getter();
  v4 = sub_1000FD584(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000FD584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000FCF04(v9, 0);
  v12 = sub_1000FD6DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000FD6DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000FD8FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000FD8FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000FD8FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000FD978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s16EligibilityStoreCMa();
  v32[3] = v6;
  v32[4] = &off_1001A7A18;
  v32[0] = a1;
  v7 = _s14SettingsMergerCMa();
  v30 = v7;
  v31 = &off_1001A7248;
  v29[0] = a2;
  _s19SettingsCoordinatorCMa();
  v8 = swift_allocObject();
  v9 = sub_1000FE6EC(v32, v6);
  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v30;
  v15 = sub_1000FE6EC(v29, v30);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v12;
  v21 = *v18;
  v27 = v6;
  v28 = &off_1001A7A18;
  v25 = &off_1001A7248;
  *&v26 = v20;
  v24 = v7;
  *&v23 = v21;
  swift_defaultActor_initialize();
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  sub_100004804(&v26, v8 + 112);
  sub_100004804(&v23, v8 + 152);
  *(v8 + 192) = a3;
  sub_1000A462C(v29);
  sub_1000A462C(v32);
  return v8;
}

uint64_t sub_1000FDB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v27[3] = _s16EligibilityStoreCMa();
  v27[4] = &off_1001A7A18;
  v27[0] = a1;
  v26[3] = _s14SettingsMergerCMa();
  v26[4] = &off_1001A7248;
  v26[0] = a2;
  sub_1000DEF80(v27, v24);
  sub_1000DEF80(v26, v22);
  v6 = v25;
  v7 = sub_1000FE6EC(v24, v25);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v23;
  v13 = sub_1000FE6EC(v22, v23);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v10;
  v19 = *v16;

  v20 = sub_1000FD978(v18, v19, a3);
  sub_1000A462C(v22);
  sub_1000A462C(v24);
  sub_1000A462C(v27);
  sub_1000A462C(v26);
  return v20;
}

id sub_1000FDDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v14[3] = v4;
  v14[4] = &protocol witness table for STExpressIntroduction.Internal.JSONCoder;
  v5 = sub_1000AC704(v14);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v6 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  v13[3] = v6;
  v13[4] = &protocol witness table for STExpressIntroduction.Internal.DefaultsSavingSettingsStore;
  v7 = sub_1000AC704(v13);
  (*(*(v6 - 8) + 32))(v7, a2, v6);
  v8 = type metadata accessor for STExpressIntroductionServer();
  v9 = objc_allocWithZone(v8);
  Logger.init(subsystem:category:)();
  sub_1000DEF80(v14, v9 + OBJC_IVAR____TtC15ScreenTimeAgent27STExpressIntroductionServer_coder);
  sub_1000DEF80(v13, v9 + OBJC_IVAR____TtC15ScreenTimeAgent27STExpressIntroductionServer_settingsStore);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_1000A462C(v13);
  sub_1000A462C(v14);
  return v10;
}

unint64_t sub_1000FDF24()
{
  result = qword_1001E2F08;
  if (!qword_1001E2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2F08);
  }

  return result;
}

uint64_t sub_1000FDF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000A0F2C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000FDFE0()
{
  result = qword_1001E1A18;
  if (!qword_1001E1A18)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1A18);
  }

  return result;
}

unint64_t sub_1000FE038()
{
  result = qword_1001E1A28;
  if (!qword_1001E1A28)
  {
    sub_1000A53D0(&qword_1001E1A20, qword_1001431E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1A28);
  }

  return result;
}

uint64_t sub_1000FE09C(void *a1, void *a2)
{
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E7070);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "using mirroring with automatic scheduling", v7, 2u);
  }

  v8 = [objc_allocWithZone(STUnique) initWithPersistenceController:a1];
  v60[4] = &type metadata for ConcretePersistentStoreSynchronizer;
  v60[5] = &off_1001AB3A8;
  v60[0] = a1;
  v60[1] = v8;
  v54[3] = &type metadata for MirroringCloudStoreLoader;
  v54[4] = &off_1001ABD20;
  v54[0] = a1;
  v54[1] = a2;
  v56 = &type metadata for GenesisCloudMirroringImporter;
  v57 = &off_1001AB4A8;
  v55 = swift_allocObject();
  sub_1000FE634(v60, v55 + 16);
  type metadata accessor for DefaultsBackedCloudMirroringGenesisStateStore();
  v58 = swift_allocObject();
  v59 = &off_1001AB408;
  v9 = type metadata accessor for ConcreteStoreChangeSyncTrigger();
  v42[0] = v9;
  v10 = swift_allocObject();
  v11 = sub_1000A0F2C(&qword_1001E2F18, &qword_100143020);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = a1;
  v15 = a2;
  v16 = v8;
  *(v10 + 16) = PassthroughSubject.init()();
  v17 = type metadata accessor for ConcretePushServicePrimitives();
  swift_allocObject();
  v18 = sub_1000FEAD4();
  v44 = sub_1000FED04(v14, v15);
  v43 = [objc_allocWithZone(STConcretePrimitiveOSTransactionProvider) init];
  v45 = sub_1000FAF10();
  v53[4] = &off_1001AB3A8;
  v53[3] = &type metadata for ConcretePersistentStoreSynchronizer;
  v53[0] = v16;
  v51 = &type metadata for GenesisCloudStoreLoader;
  v52 = &off_1001AB810;
  *&v50 = swift_allocObject();
  sub_1000FE690(v54, v50 + 16);
  v49[3] = v17;
  v49[4] = &off_1001AB3B8;
  v49[0] = v18;
  v47 = v9;
  v48 = &off_1001AB3D0;
  v46[0] = v10;
  type metadata accessor for AutomaticCloudMirroringMonitor();
  v19 = swift_allocObject();
  v20 = sub_1000FE6EC(v53, &type metadata for ConcretePersistentStoreSynchronizer);
  v42[1] = v42;
  v21 = value witness table for Builtin.UnknownObject[8];
  __chkstk_darwin(v20);
  v23 = (v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_1000FE6EC(v49, v17);
  v26 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v47;
  v31 = sub_1000FE6EC(v46, v47);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v23;
  v37 = *v28;
  v38 = *v34;
  *(v19 + 40) = &type metadata for ConcretePersistentStoreSynchronizer;
  *(v19 + 48) = &off_1001AB3A8;
  *(v19 + 16) = v36;
  *(v19 + 120) = v17;
  *(v19 + 128) = &off_1001AB3B8;
  *(v19 + 96) = v37;
  *(v19 + 184) = v42[0];
  *(v19 + 192) = &off_1001AB3D0;
  *(v19 + 160) = v38;
  *(v19 + 200) = 0;
  *(v19 + 216) = 0;
  *(v19 + 224) = 0;
  *(v19 + 208) = 0;
  sub_100004804(&v50, v19 + 56);
  v39 = v44;
  *(v19 + 144) = v43;
  *(v19 + 152) = v39;
  *(v19 + 136) = v15;
  *(v19 + 232) = v45;
  v40 = v15;
  sub_1000A462C(v46);
  sub_1000A462C(v49);
  sub_1000A462C(v53);
  sub_1000FE73C(v54);
  sub_1000FE790(v60);
  return v19;
}

uint64_t sub_1000FE6EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000FE824()
{
  result = qword_1001E2F30;
  if (!qword_1001E2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2F30);
  }

  return result;
}

uint64_t sub_1000FE884(void *a1)
{
  v6 = 0;
  v5 = 0;
  if ([a1 migrateWithExportNeeded:&v6 error:&v5])
  {
    v1 = v6;
    v2 = v5;
  }

  else
  {
    v3 = v5;
    v1 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t type metadata accessor for UsageLimit()
{
  result = qword_1001E2F60;
  if (!qword_1001E2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FE994()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(APSConnection);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 initWithEnvironmentName:v4 namedDelegatePort:v5 queue:v3];

  v7 = *(v0 + 24);
  *(v0 + 24) = v6;
}

uint64_t sub_1000FEA70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FEAD4()
{
  v10[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000F489C();
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_1000FDFE0();
  sub_1000A0F2C(&qword_1001E1A20, qword_1001431E0);
  sub_1000FE038();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10[0]);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1000FED04(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v45 = &v41 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000A0F2C(&qword_1001E3290, &qword_100143250);
  v49 = *(v46 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v46);
  v13 = &v41 - v12;
  v14 = sub_1000A0F2C(&qword_1001E3298, &qword_100143258);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v41 = &v41 - v17;
  v18 = type metadata accessor for NSNotificationCenter.Publisher();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000A0F2C(&qword_1001E32A0, &unk_100143260);
  v43 = *(v23 - 8);
  v24 = *(v43 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v41 - v28;
  sub_1000FF34C(a1);
  v30 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1000BABD4();
  Publisher.compactMap<A>(_:)();
  (*(v19 + 8))(v22, v18);
  v52 = *(v3 + 16);
  sub_1000A0F2C(&qword_1001E2F18, &qword_100143020);
  sub_1000F4FCC(&qword_1001E32A8, &qword_1001E2F18, &qword_100143020);
  sub_1000F4FCC(&qword_1001E32B0, &qword_1001E32A0, &unk_100143260);
  v31 = v13;
  Publisher.merge<A, B>(with:_:)();
  v32 = v42;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v52 = v44;
  v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v34 = v45;
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
  sub_1000F4FCC(&qword_1001E32B8, &qword_1001E3290, &qword_100143250);
  sub_1000FFA00();
  v35 = v41;
  v36 = v46;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000A5148(v34, &qword_1001E2380, &qword_1001428C8);
  (*(v50 + 8))(v32, v51);
  (*(v49 + 8))(v31, v36);
  sub_1000F4FCC(&qword_1001E32C0, &qword_1001E3298, &qword_100143258);
  v37 = v47;
  v38 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v35, v37);
  v39 = *(v43 + 8);
  v39(v27, v23);
  v39(v29, v23);
  return v38;
}

uint64_t sub_1000FF34C(void *a1)
{
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 persistentContainer];
  v8 = [v7 persistentStoreCoordinator];

  v9 = [objc_opt_self() defaultCenter];
  v10 = v8;
  NSNotificationCenter.publisher(for:object:)();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  sub_1000BABD4();
  v12 = v10;
  v13 = a1;
  Publisher.compactMap<A>(_:)();

  return (*(v3 + 8))(v6, v2);
}

void sub_1000FF51C(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_1000CBB00(&v23), (v9 & 1) == 0))
  {

    sub_1000C8034(&v23);
LABEL_11:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_12;
  }

  sub_1000A5078(*(v7 + 56) + 32 * v8, &v24);
  sub_1000C8034(&v23);

  if (!*(&v25 + 1))
  {
LABEL_12:
    sub_1000A5148(&v24, &qword_1001E03A0, qword_100140A70);
LABEL_13:
    v17 = 3;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = String._bridgeToObjectiveC()();

  v11 = [a1 persistentStoreForIdentifier:v10];

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [v11 configurationName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {

      v17 = 0;
      goto LABEL_14;
    }

    v19 = v11;
    v20 = [a2 localStore];
    if (v20)
    {
      v21 = v20;
      sub_1000A0F74(0, &qword_1001E3288, NSPersistentStore_ptr);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

  v17 = 0;
LABEL_14:
  *a3 = v17;
}

void sub_1000FF798(char *a1@<X8>)
{
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    *&v12[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v12[0] + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16))
    {
      v5 = sub_1000CBB00(v11);
      if (v6)
      {
        sub_1000A5078(*(v3 + 56) + 32 * v5, v12);
        sub_1000C8034(v11);

        goto LABEL_7;
      }
    }

    sub_1000C8034(v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_1000FFA68(v12, v11);
  if (!v11[3])
  {
    sub_1000A5148(v12, &qword_1001E03A0, qword_100140A70);
    v8 = v11;
LABEL_16:
    sub_1000A5148(v8, &qword_1001E03A0, qword_100140A70);
    goto LABEL_17;
  }

  sub_1000A0F74(0, &qword_1001E1840, NSPersistentCloudKitContainerEvent_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = v12;
    goto LABEL_16;
  }

  v7 = v11[5];
  if (os_variant_has_internal_content())
  {
    sub_1000FFAD8(v7);
  }

  if ([v7 type] == 1 || !objc_msgSend(v7, "type"))
  {
    v10 = [v7 succeeded];

    sub_1000A5148(v12, &qword_1001E03A0, qword_100140A70);
    if (v10)
    {
      v9 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000A5148(v12, &qword_1001E03A0, qword_100140A70);
  }

LABEL_17:
  v9 = 3;
LABEL_18:
  *a1 = v9;
}

unint64_t sub_1000FFA00()
{
  result = qword_1001E23A0;
  if (!qword_1001E23A0)
  {
    sub_1000A0F74(255, &qword_1001E1A08, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23A0);
  }

  return result;
}

uint64_t sub_1000FFA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E03A0, qword_100140A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FFAD8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type] == 1)
  {
    v7 = [objc_opt_self() defaultCenter];
    v8 = String._bridgeToObjectiveC()();
    sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFC0;
    v17 = 1701869940;
    v18 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x74726F706D69;
    *(inited + 80) = 0xE600000000000000;
    v17 = 0x696669746E656469;
    v18 = 0xEA00000000007265;
    AnyHashable.init<A>(_:)();
    v10 = [a1 identifier];
  }

  else
  {
    if ([a1 type] != 2)
    {
      return;
    }

    v7 = [objc_opt_self() defaultCenter];
    v8 = String._bridgeToObjectiveC()();
    sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFC0;
    v17 = 1701869940;
    v18 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x74726F707865;
    *(inited + 80) = 0xE600000000000000;
    v17 = 0x696669746E656469;
    v18 = 0xEA00000000007265;
    AnyHashable.init<A>(_:)();
    v10 = [a1 identifier];
  }

  v11 = v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  sub_10010DA40(inited);
  swift_setDeallocating();
  sub_1000A0F2C(&qword_1001E0E60, &qword_100141388);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 postNotificationName:v8 object:0 userInfo:isa];
}

__n128 sub_1000FFEC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000FFED8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FFF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000FFF7C()
{
  v16[0] = sub_1000A0F2C(&qword_1001E3378, &unk_100143520);
  v1 = *(v16[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  sub_1000FE634(v0, &v17);
  v5 = swift_allocObject();
  v6 = v18;
  v5[1] = v17;
  v5[2] = v6;
  v5[3] = v19;
  v7 = sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v16[1] = Future.init(_:)();
  sub_1000FE634(v0, &v17);
  v10 = swift_allocObject();
  v11 = v18;
  v10[1] = v17;
  v10[2] = v11;
  v10[3] = v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100100758;
  *(v12 + 24) = v10;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E3388, &qword_100143530);
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900);
  sub_1000F4FCC(&qword_1001E3398, &qword_1001E3388, &qword_100143530);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000F4FCC(&qword_1001E33A0, &qword_1001E3378, &unk_100143520);
  v13 = v16[0];
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v13);
  return v14;
}

unint64_t sub_100100264(uint64_t a1)
{
  v1 = sub_1000A9618((a1 + 8), *(a1 + 32));
  v2 = sub_1000FE884(*v1);
  if (v2 >= 2)
  {
    v4 = v2;
    sub_1000A0F2C(&qword_1001E33A8, qword_100143538);
    Result.publisher.getter();
    return sub_1000F4EE8(v4);
  }

  else
  {
    sub_1000F4EE8(v2);
    sub_1000A0F2C(&qword_1001E33A8, qword_100143538);
    return Result.publisher.getter();
  }
}

void sub_10010031C(void (*a1)(void ***), uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;

  v8 = [v7 cloudStore];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100100788;
    *(v10 + 24) = v6;
    v11 = objc_allocWithZone(NSCloudKitMirroringImportRequest);
    v31 = sub_100100A70;
    v32 = v10;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000D4878;
    v30 = &unk_1001AB580;
    v12 = _Block_copy(&aBlock);

    v13 = [v11 initWithOptions:0 completionBlock:v12];
    _Block_release(v12);
    sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10013FFF0;
    *(v14 + 32) = v9;
    sub_100100BB0();
    v15 = v13;
    v16 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setAffectedStores:isa];

    v25 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    v26 = 1;
    v18 = swift_allocObject();
    *(v18 + 16) = &v25;
    *(v18 + 24) = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100100BFC;
    *(v19 + 24) = v18;
    v31 = sub_100100C04;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100100B4C;
    v30 = &unk_1001AB5F8;
    v20 = _Block_copy(&aBlock);
    v21 = v15;

    [v7 performBackgroundTaskAndWait:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (v26)
      {
        v23 = v25;
        aBlock = v25;
        LOBYTE(v28) = 1;
        swift_errorRetain();
        a1(&aBlock);

        sub_1000CD43C(v23, 1);
      }

      else
      {
      }

      sub_1000CD43C(v25, v26);
    }
  }

  else
  {

    v24 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    aBlock = v24;
    LOBYTE(v28) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_100100718()
{
  sub_1000A462C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100100760()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100100794(void *a1, uint64_t (*a2)(id, uint64_t))
{
  if ([a1 success])
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2B1C(v4, qword_1001E7070);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "genesis import completed successfully", v7, 2u);
    }

    return a2(0, 0);
  }

  else
  {
    v9 = [a1 error];
    if (!v9)
    {
      v9 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    }

    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000A2B1C(v10, qword_1001E7070);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_1000A2E68(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "genesis import completed with an error: %s", v13, 0xCu);
      sub_1000A462C(v14);
    }

    swift_errorRetain();
    a2(v9, 1);
  }
}

uint64_t sub_100100A78(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v5 = [a1 executeRequest:a3 error:&v11];
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v7 = v11;
    v3 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  *a2 = v3;
  *(a2 + 8) = v5 == 0;
  return sub_1000CD43C(v8, v9);
}

void sub_100100B4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_100100B98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100100BB0()
{
  result = qword_1001E3288;
  if (!qword_1001E3288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001E3288);
  }

  return result;
}

uint64_t sub_100100C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100100C34(uint64_t a1, void *a2)
{
  v3 = sub_1000A9618((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100100CE0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100100D00, 0, 0);
}

uint64_t sub_100100D00()
{
  v1 = sub_10010248C(v0[18], 0, 1);
  v0[20] = v1;
  v2 = v1;
  v3 = *(v0[19] + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  v0[2] = v0;
  v0[3] = sub_100100E84;
  v4 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB670;
  v0[14] = v4;
  [v3 sendAskForTimeRequest:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100100E84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100100FF8;
  }

  else
  {
    v3 = sub_100100F94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100100F94()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100FF8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001011F4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000F1684;

  return sub_100100CE0(v5);
}

uint64_t sub_1001012B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = type metadata accessor for UUID();
  v4[38] = v5;
  v6 = *(v5 - 8);
  v4[39] = v6;
  v7 = *(v6 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100101388, 0, 0);
}

uint64_t sub_100101388()
{
  v1 = sub_100102970(*(v0 + 280));
  *(v0 + 336) = v1;
  v2 = [v1 amountGranted];
  if (v2)
  {
    v3 = v2;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v4 = sub_10010248C(*(v0 + 288), 0, 1);
  *(v0 + 344) = v4;
  v8 = v4;
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  type metadata accessor for UserID();
  v11 = dispatch thunk of static UserID.local()();
  v12 = static NSObject.== infix(_:_:)();
  *(v0 + 376) = v12 & 1;

  v13 = *(v9 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  if (v12)
  {
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_10010183C;
    v14 = swift_continuation_init();
    *(v0 + 264) = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100100C34;
    *(v0 + 232) = &unk_1001AB648;
    *(v0 + 240) = v14;
    [v13 approveExceptionForRequest:v8 completionHandler:v0 + 208];
    v15 = v0 + 80;
LABEL_9:

    return _swift_continuation_await(v15);
  }

  v16 = *(v0 + 272);
  dispatch thunk of UserID.altDSID()();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v13 requestIdentifierFor:v17 request:*(v0 + 344)];

  v19 = *(v0 + 336);
  if (v18)
  {
    v20 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v22 + 32))(v21, v20, v23);
    v24 = [v19 answer];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 360) = isa;
    v26 = [v19 amountGranted];
    *(v0 + 368) = v26;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100101C5C;
    v27 = swift_continuation_init();
    *(v0 + 200) = sub_1000A0F2C(&qword_1001E34B8, &unk_100143580);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100101E74;
    *(v0 + 168) = &unk_1001AB620;
    *(v0 + 176) = v27;
    [v13 handleAnswer:v24 requestIdentifier:isa timeApproved:v26 completionHandler:?];
    v15 = v0 + 16;
    goto LABEL_9;
  }

  v28 = *(v0 + 344);
  if (*(v0 + 376) == 1)
  {
    v29 = *(v0 + 320);
    v30 = *(v0 + 328);
  }

  else
  {
    v32 = type metadata accessor for AccessResponseError();
    sub_100102E74(&qword_1001E34B0, &type metadata accessor for AccessResponseError);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, enum case for AccessResponseError.requestRecordNotFound(_:), v32);
    swift_willThrow();

    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_10010183C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_100101DEC;
  }

  else
  {
    v3 = sub_10010194C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010194C()
{
  v1 = *(*(v0 + 296) + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  v2 = [v1 requestIdentifierFor:0 request:*(v0 + 344)];
  if (v2)
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 304);
    v8 = v2;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v3, v5, v7);
    v9 = [v4 answer];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 360) = isa;
    v11 = [v4 amountGranted];
    *(v0 + 368) = v11;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100101C5C;
    v12 = swift_continuation_init();
    *(v0 + 200) = sub_1000A0F2C(&qword_1001E34B8, &unk_100143580);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100101E74;
    *(v0 + 168) = &unk_1001AB620;
    *(v0 + 176) = v12;
    [v1 handleAnswer:v9 requestIdentifier:isa timeApproved:v11 completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    if (*(v0 + 376) == 1)
    {
      v15 = *(v0 + 320);
      v16 = *(v0 + 328);
    }

    else
    {
      v18 = type metadata accessor for AccessResponseError();
      sub_100102E74(&qword_1001E34B0, &type metadata accessor for AccessResponseError);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, enum case for AccessResponseError.requestRecordNotFound(_:), v18);
      swift_willThrow();

      v21 = *(v0 + 320);
      v20 = *(v0 + 328);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100101C5C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100101D3C, 0, 0);
}

uint64_t sub_100101D3C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 360);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100101DEC()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  swift_willThrow();

  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100101E74(uint64_t a1)
{
  v1 = *sub_1000A9618((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100102050(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_100102140;

  return sub_1001012B8(v9, v10, v11);
}

uint64_t sub_100102140()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100102318()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService____lazy_storage___logger);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessCompatibilityService()
{
  result = qword_1001E33E0;
  if (!qword_1001E33E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001023E0()
{
  sub_1000AB584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_10010248C(uint64_t a1, uint64_t a2, int a3)
{
  v39 = type metadata accessor for Date();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResourceType();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  AccessRequest.resource.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ResourceType.bundleIdentifier(_:))
  {
    v37 = a3;
    v36 = *&a2;
    v38 = v3;
    (*(v11 + 96))(v14, v10);
    v17 = *v14;
    v16 = v14[1];
    v18 = [objc_opt_self() sharedCache];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 appInfoForBundleIdentifier:v19];

    v21 = [v20 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else if (v15 == enum case for ResourceType.websiteUrl(_:))
  {
    v37 = a3;
    v36 = *&a2;
    v38 = v3;
    (*(v11 + 96))(v14, v10);
    v24 = *v14;
    v23 = v14[1];

    v22 = 1;
  }

  else
  {
    if (v15 != enum case for ResourceType.categoryIdentifier(_:))
    {
      v33 = type metadata accessor for AccessRequestError();
      sub_100102E74(&qword_1001E34C0, &type metadata accessor for AccessRequestError);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, enum case for AccessRequestError.invalidRequest(_:), v33);
      swift_willThrow();
      (*(v11 + 8))(v14, v10);
      return v10;
    }

    v37 = a3;
    v36 = *&a2;
    v38 = v3;
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = STCategoryNameWithIdentifier();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 2;
  }

  v27 = objc_allocWithZone(STAskForTimeRequest);
  v28 = String._bridgeToObjectiveC()();

  v10 = [v27 initWithUsageType:v22 requestedResourceIdentifier:v28];

  v29 = String._bridgeToObjectiveC()();

  [v10 setResourceDisplayName:v29];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v39);
  [v10 setTimeStamp:isa];

  if ((v37 & 1) == 0)
  {
    v31 = v36;
    v32 = Double._bridgeToObjectiveC()().super.super.isa;
    [v10 setTimeRequested:v32];

    [v10 setOneMoreMinute:v31 == 60.0];
  }

  return v10;
}

uint64_t sub_100102970(void *a1)
{
  v2 = type metadata accessor for Date();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ApprovalType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AnswerType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(STAskForTimeResponse) init];
  v32 = a1;
  AccessResponse.answerType.getter();
  v19 = (*(v14 + 88))(v17, v13);
  if (v19 == enum case for AnswerType.approved(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v6 + 32))(v12, v17, v5);
    [v18 setAnswer:0];
    (*(v6 + 16))(v10, v12, v5);
    v20 = (*(v6 + 88))(v10, v5);
    if (v20 == enum case for ApprovalType.duration(_:))
    {
      (*(v6 + 96))(v10, v5);
      v21 = *v10;
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      [v18 setAmountGranted:isa];

LABEL_8:
      (*(v6 + 8))(v12, v5);
      goto LABEL_9;
    }

    if (v20 == enum case for ApprovalType.tillDate(_:))
    {
      [v18 setAmountGranted:0];
      goto LABEL_8;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v31._countAndFlagsBits = 0xD000000000000021;
    v31._object = 0x8000000100152F50;
    String.append(_:)(v31);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    if (v19 == enum case for AnswerType.denied(_:))
    {
      [v18 setAnswer:1];
LABEL_9:
      v23 = v33;
      static Date.now.getter();
      v24 = Date._bridgeToObjectiveC()().super.isa;
      (*(v34 + 8))(v23, v35);
      [v18 setTimeStamp:v24];

      return v18;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v36 = 0xD000000000000017;
    v37 = 0x8000000100152F30;
    v26 = [v32 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100102E74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100102EBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_100102050(v2, v3, v4, v5, v6);
}

uint64_t sub_100102F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1001011F4(v2, v3, v4);
}

__n128 sub_100103048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100103064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001030AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100103114()
{
  v1 = sub_1000A0F2C(&qword_1001E34D8, &qword_100143638);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  v6 = v0[3];
  v7 = v0[4];
  sub_1000A9618(v0, v6);
  v17 = (*(v7 + 8))(v6, v7);
  sub_1000FE690(v0, v16);
  v8 = swift_allocObject();
  v9 = v16[3];
  v8[3] = v16[2];
  v8[4] = v9;
  v10 = v16[5];
  v8[5] = v16[4];
  v8[6] = v10;
  v11 = v16[1];
  v8[1] = v16[0];
  v8[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001040AC;
  *(v12 + 24) = v8;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000F4FCC(&qword_1001E34E0, &qword_1001E34D8, &qword_100143638);
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_10010338C(uint64_t a1)
{
  v2 = sub_1000A0F2C(&qword_1001E34E8, &qword_100143640);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v37 = sub_1000A0F2C(&qword_1001E34F0, &qword_100143648);
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = sub_1000A0F2C(&qword_1001E34F8, &qword_100143650);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v36 = sub_1000A0F2C(&qword_1001E3500, &qword_100143658);
  v34 = *(v36 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v36);
  v15 = &v32 - v14;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000A2B1C(v19, qword_1001E7070);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "genesis import has already occurred, skipping", v22, 2u);
    }

    Just.init(_:)();
    sub_1000F5038();
    Just.setFailureType<A>(to:)();
    (*(v33 + 8))(v5, v2);
    sub_1000F4FCC(&qword_1001E3528, &qword_1001E34F0, &qword_100143648);
    v23 = v37;
    v24 = Publisher.eraseToAnyPublisher()();
    (*(v35 + 8))(v8, v23);
  }

  else
  {
    sub_1000A9618((a1 + 40), *(a1 + 64));
    v39 = sub_1000FFF7C();
    sub_1000FE690(a1, v38);
    v25 = swift_allocObject();
    v26 = v38[3];
    v25[3] = v38[2];
    v25[4] = v26;
    v27 = v38[5];
    v25[5] = v38[4];
    v25[6] = v27;
    v28 = v38[1];
    v25[1] = v38[0];
    v25[2] = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1001040E4;
    *(v29 + 24) = v25;
    sub_1000A0F2C(&qword_1001E3508, qword_100143660);
    sub_1000F4FCC(&qword_1001E3510, &qword_1001E3508, qword_100143660);
    Publisher.map<A>(_:)();

    sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
    sub_1000F4FCC(&qword_1001E3518, &qword_1001E34F8, &qword_100143650);
    sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630);
    Publisher.catch<A>(_:)();
    (*(v32 + 8))(v12, v9);
    sub_1000F4FCC(&qword_1001E3520, &qword_1001E3500, &qword_100143658);
    v30 = v36;
    v24 = Publisher.eraseToAnyPublisher()();
    (*(v34 + 8))(v15, v30);
  }

  return v24;
}

uint64_t sub_1001039D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = sub_1000A0F2C(&qword_1001E34E8, &qword_100143640);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v26 - v6;
  v28 = sub_1000A0F2C(&qword_1001E34F0, &qword_100143648);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = *a1;
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000A2B1C(v13, qword_1001E7070);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000A2E68(v19, v20, &v29);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "dropping genesis import error: %s", v17, 0xCu);
    sub_1000A462C(v18);

    a2 = v26;
  }

  Just.init(_:)();
  sub_1000F5038();
  v22 = v27;
  Just.setFailureType<A>(to:)();
  (*(v4 + 8))(v7, v22);
  sub_1000F4FCC(&qword_1001E3528, &qword_1001E34F0, &qword_100143648);
  v23 = v28;
  v24 = Publisher.eraseToAnyPublisher()();
  result = (*(v8 + 8))(v11, v23);
  *a2 = v24;
  return result;
}

void sub_100103D18(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 setBool:a2 & 1 forKey:v4];
}

uint64_t sub_100103DB8()
{
  v1 = sub_1000A0F2C(&qword_1001E34C8, &qword_100143628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  v6 = v0[3];
  v7 = v0[4];
  sub_1000A9618(v0, v6);
  v17 = (*(v7 + 16))(v6, v7);
  sub_1000FE690(v0, v16);
  v8 = swift_allocObject();
  v9 = v16[3];
  v8[3] = v16[2];
  v8[4] = v9;
  v10 = v16[5];
  v8[5] = v16[4];
  v8[6] = v10;
  v11 = v16[1];
  v8[1] = v16[0];
  v8[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10010401C;
  *(v12 + 24) = v8;
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630);
  Publisher.map<A>(_:)();

  sub_1000F4FCC(&qword_1001E34D0, &qword_1001E34C8, &qword_100143628);
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_10010403C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100104064()
{
  sub_1000A462C(v0 + 2);
  sub_1000A462C(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001040B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_100104238(char *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v99) = a6;
  v103 = a11;
  v106.opaque[0] = 0;
  v106.opaque[1] = 0;
  v102 = a1;
  v17 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  v104 = v17;
  os_activity_scope_enter(v17, &v106);
  swift_endAccess();
  v105 = a4;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Checking for first unlock.", v20, 2u);
  }

  v21 = MKBUserUnlockedSinceBoot();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  v24 = os_log_type_enabled(v22, v23);
  v101 = a3;
  v100 = a2;
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v108[0] = v26;
      *v25 = 136446210;
      v27 = StaticString.description.getter();
      v29 = sub_1000A2E68(v27, v28, v108);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v25, 0xCu);
      sub_1000A462C(v26);
    }

    v30 = 1;
  }

  else
  {
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v31, 2u);
    }

    v30 = 0;
  }

  sub_1000A0F2C(a9, a10);
  sub_10010A23C(v103, a9, a10);
  v32 = swift_allocError();
  *v33 = v30;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v106);
  swift_endAccess();
  swift_unknownObjectRelease();
  v108[0] = v32;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a9, a10);
  if (swift_dynamicCast() && (v107 & 1) == 0)
  {

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v53, 2u);
    }

    swift_allocError();
    *v54 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v108[0] = v32;
  v34 = type metadata accessor for DataStore.DataStoreError(0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v36 = (v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v37 = *v36;
      v38 = *v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v107 = v104;
        *v41 = 136446466;
        v42 = StaticString.description.getter();
        v44 = sub_1000A2E68(v42, v43, &v107);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v45 = v37;
        swift_storeEnumTagMultiPayload();
        v46 = v38;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v47;
        v48 = v103;
        *v103 = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "DaemonActivity %{public}s failed with unknown user: %{public}@", v41, 0x16u);
        sub_1000A5148(v48, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v104);
      }

      sub_10010A07C();
      swift_allocError();
      *v49 = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v50 = type metadata accessor for Logger();
      (*(*(v50 - 8) + 8))(v105, v50);
    }

    sub_10010A020(v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v55 = a12;

  v108[0] = v32;
  swift_errorRetain();
  if (swift_dynamicCast() && (v107 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v66 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v66 = swift_allocError();
      *v91 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138412290;
      swift_errorRetain();
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v94 + 4) = v96;
      *v95 = v96;
      _os_log_impl(&_mh_execute_header, v92, v93, "The preflight error %@ did not result in a TTR", v94, 0xCu);
      sub_1000A5148(v95, &unk_1001E1820, &qword_100140020);
    }

    (a12)(v66);
    swift_willThrow();

LABEL_44:
    v97 = type metadata accessor for Logger();
    (*(*(v97 - 8) + 8))(v105, v97);
  }

  v108[0] = v32;
  __chkstk_darwin(v56);
  v57 = (v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v59 = *v57;
      v58 = v57[1];

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v107 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1000A2E68(v59, v58, &v107);
        _os_log_impl(&_mh_execute_header, v60, v61, "askForTime response handling did not find ask request identifier %s", v62, 0xCu);
        sub_1000A462C(v63);
      }

      sub_10010A07C();
      swift_allocError();
      *v64 = v59;
      v64[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v65 = type metadata accessor for Logger();
      (*(*(v65 - 8) + 8))(v105, v65);
    }

    sub_10010A020(v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v104 = a12;
    v72 = v71;
    v108[0] = v71;
    *v69 = 136446466;
    v73 = StaticString.description.getter();
    v75 = sub_1000A2E68(v73, v74, v108);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2114;
    swift_errorRetain();
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 14) = v76;
    *v70 = v76;
    _os_log_impl(&_mh_execute_header, v67, v68, "DaemonActivity %{public}s failed with: %{public}@.", v69, 0x16u);
    sub_1000A5148(v70, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v72);
    v55 = v104;
  }

  if ((v99 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v99 = a14;
    v77 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v103 = v98;
    v78 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v77 - 8);
    v80 = v98 - v79;
    v81 = type metadata accessor for TaskPriority();
    (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
    v82 = type metadata accessor for Logger();
    v98[1] = v98;
    v83 = *(v82 - 8);
    v84 = *(v83 + 64);
    __chkstk_darwin(v82);
    v104 = v55;
    (*(v83 + 16))(v98 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v105, v82);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    *(v86 + 24) = 0;
    v55 = v104;
    (*(v83 + 32))(v86 + v85, v98 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v82);
    v87 = v86 + ((v85 + v84 + 7) & 0xFFFFFFFFFFFFFFF8);
    v88 = v100;
    *v87 = v102;
    *(v87 + 8) = v88;
    *(v87 + 16) = v101;
    *(v86 + ((v85 + v84 + 31) & 0xFFFFFFFFFFFFFFF8)) = v32;
    swift_errorRetain();
    sub_1000A2630(0, 0, v80, v99, v86);
  }

  (v55)(v32);
  swift_willThrow();

  v89 = type metadata accessor for Logger();
  return (*(*(v89 - 8) + 8))(v105, v89);
}

uint64_t sub_100105010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent12SetupService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1001053AC(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_10010546C, 0, 0);
}

uint64_t sub_10010546C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100105568;
  v3 = *(v0 + 32);

  return sub_10010FC5C("SetupService.currentConfiguration", 33, 2, v3, 0);
}

uint64_t sub_100105568(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100105730;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_100105690;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100105690()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100105730()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = _convertErrorToNSError(_:)();

  (v2)[2](v2, 0, v5);

  _Block_release(v2);
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100105970(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_100105A30, 0, 0);
}

uint64_t sub_100105A30()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0908;
  v3 = *(v0 + 32);

  return sub_10010DB7C("SetupService.applyUpdatedConfiguration", 38, 2, v3, 0);
}

uint64_t sub_100105CB8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000BB794;

  return sub_100109BD0();
}

uint64_t sub_100105D88()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent12SetupService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SetupService()
{
  result = qword_1001E3560;
  if (!qword_1001E3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100105E54()
{
  result = qword_1001E3640;
  if (!qword_1001E3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E3640);
  }

  return result;
}

uint64_t sub_100105EA8(void *a1)
{
  if (a1)
  {
    _StringGuts.grow(_:)(36);

    v2 = [a1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    v7 = [objc_opt_self() mainBundle];
    v14._object = 0xEE007265626D654DLL;
    v14._countAndFlagsBits = 0x796C696D61466F6ELL;
    v8._countAndFlagsBits = 0xD000000000000022;
    v8._object = 0x8000000100153090;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v14)._countAndFlagsBits;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v15._object = 0xEE00726F72724520;
    v15._countAndFlagsBits = 0x6C616E7265746E49;
    v11._object = 0x8000000100153070;
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v7, v12, v15)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100106070()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_100105CB8(v2, v3, v4);
}

uint64_t sub_100106124(char *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v92) = a5;
  v97.opaque[0] = 0;
  v97.opaque[1] = 0;
  v9 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v9, &v97);
  swift_endAccess();
  v96 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking for first unlock.", v12, 2u);
  }

  v13 = MKBUserUnlockedSinceBoot();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v95 = a3;
  v93 = a1;
  v94 = a2;
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v99[0] = v18;
      *v17 = 136446210;
      v19 = StaticString.description.getter();
      v21 = sub_1000A2E68(v19, v20, v99);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v17, 0xCu);
      sub_1000A462C(v18);
    }

    v22 = 1;
  }

  else
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v23, 2u);
    }

    v22 = 0;
  }

  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  sub_10010A23C(&qword_1001E3660, &qword_1001E3658, &qword_100143780);
  v24 = swift_allocError();
  *v25 = v22;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v97);
  swift_endAccess();
  swift_unknownObjectRelease();
  v99[0] = v24;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  if (swift_dynamicCast() && (v98 & 1) == 0)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v45, 2u);
    }

    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v99[0] = v24;
  v26 = type metadata accessor for DataStore.DataStoreError(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v28 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v29 = *v28;
      v30 = *v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v98 = v92;
        *v33 = 136446466;
        v34 = StaticString.description.getter();
        v36 = sub_1000A2E68(v34, v35, &v98);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v37 = v29;
        swift_storeEnumTagMultiPayload();
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v39;
        v40 = v91;
        *v91 = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "DaemonActivity %{public}s failed with unknown user: %{public}@", v33, 0x16u);
        sub_1000A5148(v40, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v92);
      }

      sub_10010A07C();
      swift_allocError();
      *v41 = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v42 = type metadata accessor for Logger();
      (*(*(v42 - 8) + 8))(v96, v42);
      goto LABEL_45;
    }

    sub_10010A020(&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v99[0] = v24;
  swift_errorRetain();
  if (swift_dynamicCast() && (v98 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v57 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v57 = swift_allocError();
      *v83 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138412290;
      swift_errorRetain();
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 4) = v88;
      *v87 = v88;
      _os_log_impl(&_mh_execute_header, v84, v85, "The preflight error %@ did not result in a TTR", v86, 0xCu);
      sub_1000A5148(v87, &unk_1001E1820, &qword_100140020);
    }

    sub_100110B88(v57);
    swift_willThrow();

LABEL_44:
    v89 = type metadata accessor for Logger();
    (*(*(v89 - 8) + 8))(v96, v89);
LABEL_45:

    return 0;
  }

  v99[0] = v24;
  __chkstk_darwin(v47);
  v48 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v50 = *v48;
      v49 = v48[1];

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v98 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000A2E68(v50, v49, &v98);
        _os_log_impl(&_mh_execute_header, v51, v52, "askForTime response handling did not find ask request identifier %s", v53, 0xCu);
        sub_1000A462C(v54);
      }

      sub_10010A07C();
      swift_allocError();
      *v55 = v50;
      v55[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = type metadata accessor for Logger();
      (*(*(v56 - 8) + 8))(v96, v56);
      goto LABEL_45;
    }

    sub_10010A020(v48);
  }

  swift_errorRetain();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v99[0] = v62;
    *v60 = 136446466;
    v63 = StaticString.description.getter();
    v65 = sub_1000A2E68(v63, v64, v99);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2114;
    swift_errorRetain();
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 14) = v66;
    *v61 = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "DaemonActivity %{public}s failed with: %{public}@.", v60, 0x16u);
    sub_1000A5148(v61, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v62);
  }

  if ((v92 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v67 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v92 = &v91;
    v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v67 - 8);
    v70 = &v91 - v69;
    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
    v72 = type metadata accessor for Logger();
    v91 = &v91;
    v73 = *(v72 - 8);
    v74 = *(v73 + 64);
    __chkstk_darwin(v72);
    v75 = &v91 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v75, v96, v72);
    v76 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v77 = (v76 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v76 + v74 + 31) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    (*(v73 + 32))(v79 + v76, v75, v72);
    v80 = v79 + v77;
    v81 = v94;
    *v80 = v93;
    *(v80 + 8) = v81;
    *(v80 + 16) = v95;
    *(v79 + v78) = v24;
    swift_errorRetain();
    sub_1000A2630(0, 0, v70, &unk_100143788, v79);
  }

  sub_100110B88(v24);
  swift_willThrow();

  v82 = type metadata accessor for Logger();
  (*(*(v82 - 8) + 8))(v96, v82);
  return 0;
}

uint64_t sub_100106EE8(char *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v92) = a5;
  v97.opaque[0] = 0;
  v97.opaque[1] = 0;
  v9 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v9, &v97);
  swift_endAccess();
  v96 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking for first unlock.", v12, 2u);
  }

  v13 = MKBUserUnlockedSinceBoot();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v95 = a3;
  v93 = a1;
  v94 = a2;
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v99[0] = v18;
      *v17 = 136446210;
      v19 = StaticString.description.getter();
      v21 = sub_1000A2E68(v19, v20, v99);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v17, 0xCu);
      sub_1000A462C(v18);
    }

    v22 = 1;
  }

  else
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v23, 2u);
    }

    v22 = 0;
  }

  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  sub_10010A23C(&qword_1001E3650, &qword_1001E3648, &unk_100143730);
  v24 = swift_allocError();
  *v25 = v22;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v97);
  swift_endAccess();
  swift_unknownObjectRelease();
  v99[0] = v24;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  if (swift_dynamicCast() && (v98 & 1) == 0)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v45, 2u);
    }

    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v99[0] = v24;
  v26 = type metadata accessor for DataStore.DataStoreError(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v28 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v29 = *v28;
      v30 = *v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v98 = v92;
        *v33 = 136446466;
        v34 = StaticString.description.getter();
        v36 = sub_1000A2E68(v34, v35, &v98);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v37 = v29;
        swift_storeEnumTagMultiPayload();
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v39;
        v40 = v91;
        *v91 = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "DaemonActivity %{public}s failed with unknown user: %{public}@", v33, 0x16u);
        sub_1000A5148(v40, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v92);
      }

      sub_10010A07C();
      swift_allocError();
      *v41 = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v42 = type metadata accessor for Logger();
      (*(*(v42 - 8) + 8))(v96, v42);
    }

    sub_10010A020(&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v99[0] = v24;
  swift_errorRetain();
  if (swift_dynamicCast() && (v98 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v57 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v57 = swift_allocError();
      *v84 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      swift_errorRetain();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v89;
      *v88 = v89;
      _os_log_impl(&_mh_execute_header, v85, v86, "The preflight error %@ did not result in a TTR", v87, 0xCu);
      sub_1000A5148(v88, &unk_1001E1820, &qword_100140020);
    }

    sub_100110B88(v57);
    swift_willThrow();

LABEL_44:
    v90 = type metadata accessor for Logger();
    (*(*(v90 - 8) + 8))(v96, v90);
  }

  v99[0] = v24;
  __chkstk_darwin(v47);
  v48 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v50 = *v48;
      v49 = v48[1];

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v98 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000A2E68(v50, v49, &v98);
        _os_log_impl(&_mh_execute_header, v51, v52, "askForTime response handling did not find ask request identifier %s", v53, 0xCu);
        sub_1000A462C(v54);
      }

      sub_10010A07C();
      swift_allocError();
      *v55 = v50;
      v55[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = type metadata accessor for Logger();
      (*(*(v56 - 8) + 8))(v96, v56);
    }

    sub_10010A020(v48);
  }

  swift_errorRetain();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v99[0] = v62;
    *v60 = 136446466;
    v63 = StaticString.description.getter();
    v65 = sub_1000A2E68(v63, v64, v99);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2114;
    swift_errorRetain();
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 14) = v66;
    *v61 = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "DaemonActivity %{public}s failed with: %{public}@.", v60, 0x16u);
    sub_1000A5148(v61, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v62);
  }

  if ((v92 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v67 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v92 = &v91;
    v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v67 - 8);
    v70 = &v91 - v69;
    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
    v72 = type metadata accessor for Logger();
    v91 = &v91;
    v73 = *(v72 - 8);
    v74 = *(v73 + 64);
    __chkstk_darwin(v72);
    v75 = &v91 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v75, v96, v72);
    v76 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v77 = (v76 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v76 + v74 + 31) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    (*(v73 + 32))(v79 + v76, v75, v72);
    v80 = v79 + v77;
    v81 = v94;
    *v80 = v93;
    *(v80 + 8) = v81;
    *(v80 + 16) = v95;
    *(v79 + v78) = v24;
    swift_errorRetain();
    sub_1000A2630(0, 0, v70, &unk_100143740, v79);
  }

  sub_100110B88(v24);
  swift_willThrow();

  v82 = type metadata accessor for Logger();
  return (*(*(v82 - 8) + 8))(v96, v82);
}

uint64_t sub_100107DD0(char *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v102 = a8;
  LODWORD(v98) = a5;
  v105.opaque[0] = 0;
  v105.opaque[1] = 0;
  v101 = a1;
  v16 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  v103 = v16;
  os_activity_scope_enter(v16, &v105);
  swift_endAccess();
  v104 = a4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Checking for first unlock.", v19, 2u);
  }

  v20 = MKBUserUnlockedSinceBoot();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v100 = a3;
  v99 = a2;
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v107[0] = v25;
      *v24 = 136446210;
      v26 = StaticString.description.getter();
      v28 = sub_1000A2E68(v26, v27, v107);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v24, 0xCu);
      sub_1000A462C(v25);
    }

    v29 = 1;
  }

  else
  {
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v30, 2u);
    }

    v29 = 0;
  }

  sub_1000A0F2C(a6, a7);
  sub_10010A23C(v102, a6, a7);
  v31 = swift_allocError();
  *v32 = v29;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v105);
  swift_endAccess();
  swift_unknownObjectRelease();
  v107[0] = v31;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a6, a7);
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v52, 2u);
    }

    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v107[0] = v31;
  v33 = type metadata accessor for DataStore.DataStoreError(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v36 = *v35;
      v37 = *v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v106 = v103;
        *v40 = 136446466;
        v41 = StaticString.description.getter();
        v43 = sub_1000A2E68(v41, v42, &v106);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v44 = v36;
        swift_storeEnumTagMultiPayload();
        v45 = v37;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v46;
        v47 = v102;
        *v102 = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "DaemonActivity %{public}s failed with unknown user: %{public}@", v40, 0x16u);
        sub_1000A5148(v47, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v103);
      }

      sub_10010A07C();
      swift_allocError();
      *v48 = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v104, v49);
    }

    sub_10010A020(&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v54 = a9;

  v107[0] = v31;
  swift_errorRetain();
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v65 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v65 = swift_allocError();
      *v90 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "The preflight error %@ did not result in a TTR", v93, 0xCu);
      sub_1000A5148(v94, &unk_1001E1820, &qword_100140020);
    }

    (a9)(v65);
    swift_willThrow();

LABEL_44:
    v96 = type metadata accessor for Logger();
    (*(*(v96 - 8) + 8))(v104, v96);
  }

  v107[0] = v31;
  __chkstk_darwin(v55);
  v56 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v58 = *v56;
      v57 = v56[1];

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v106 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000A2E68(v58, v57, &v106);
        _os_log_impl(&_mh_execute_header, v59, v60, "askForTime response handling did not find ask request identifier %s", v61, 0xCu);
        sub_1000A462C(v62);
      }

      sub_10010A07C();
      swift_allocError();
      *v63 = v58;
      v63[1] = v57;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v64 = type metadata accessor for Logger();
      (*(*(v64 - 8) + 8))(v104, v64);
    }

    sub_10010A020(&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v103 = a9;
    v71 = v70;
    v107[0] = v70;
    *v68 = 136446466;
    v72 = StaticString.description.getter();
    v74 = sub_1000A2E68(v72, v73, v107);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2114;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 14) = v75;
    *v69 = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "DaemonActivity %{public}s failed with: %{public}@.", v68, 0x16u);
    sub_1000A5148(v69, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v71);
    v54 = v103;
  }

  if ((v98 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v98 = a11;
    v76 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v102 = &v97;
    v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v76 - 8);
    v79 = &v97 - v78;
    v80 = type metadata accessor for TaskPriority();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
    v81 = type metadata accessor for Logger();
    v97 = &v97;
    v82 = *(v81 - 8);
    v83 = *(v82 + 64);
    __chkstk_darwin(v81);
    v103 = v54;
    (*(v82 + 16))(&v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v104, v81);
    v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    v54 = v103;
    (*(v82 + 32))(v85 + v84, &v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v81);
    v86 = v85 + ((v84 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
    v87 = v99;
    *v86 = v101;
    *(v86 + 8) = v87;
    *(v86 + 16) = v100;
    *(v85 + ((v84 + v83 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;
    swift_errorRetain();
    sub_1000A2630(0, 0, v79, v98, v85);
  }

  (v54)(v31);
  swift_willThrow();

  v88 = type metadata accessor for Logger();
  return (*(*(v88 - 8) + 8))(v104, v88);
}

uint64_t sub_100108DF8(char *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v102 = a8;
  LODWORD(v98) = a5;
  v105.opaque[0] = 0;
  v105.opaque[1] = 0;
  v101 = a1;
  v16 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  v103 = v16;
  os_activity_scope_enter(v16, &v105);
  swift_endAccess();
  v104 = a4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Checking for first unlock.", v19, 2u);
  }

  v20 = MKBUserUnlockedSinceBoot();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v100 = a3;
  v99 = a2;
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v107[0] = v25;
      *v24 = 136446210;
      v26 = StaticString.description.getter();
      v28 = sub_1000A2E68(v26, v27, v107);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v24, 0xCu);
      sub_1000A462C(v25);
    }

    v29 = 1;
  }

  else
  {
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v30, 2u);
    }

    v29 = 0;
  }

  sub_1000A0F2C(a6, a7);
  sub_10010A23C(v102, a6, a7);
  v31 = swift_allocError();
  *v32 = v29;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v105);
  swift_endAccess();
  swift_unknownObjectRelease();
  v107[0] = v31;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a6, a7);
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v52, 2u);
    }

    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v107[0] = v31;
  v33 = type metadata accessor for DataStore.DataStoreError(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v36 = *v35;
      v37 = *v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v106 = v103;
        *v40 = 136446466;
        v41 = StaticString.description.getter();
        v43 = sub_1000A2E68(v41, v42, &v106);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v44 = v36;
        swift_storeEnumTagMultiPayload();
        v45 = v37;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v46;
        v47 = v102;
        *v102 = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "DaemonActivity %{public}s failed with unknown user: %{public}@", v40, 0x16u);
        sub_1000A5148(v47, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v103);
      }

      sub_10010A07C();
      swift_allocError();
      *v48 = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v104, v49);
    }

    sub_10010A020(&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v54 = a9;

  v107[0] = v31;
  swift_errorRetain();
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v65 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v65 = swift_allocError();
      *v90 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "The preflight error %@ did not result in a TTR", v93, 0xCu);
      sub_1000A5148(v94, &unk_1001E1820, &qword_100140020);
    }

    (a9)(v65);
    swift_willThrow();

LABEL_44:
    v96 = type metadata accessor for Logger();
    (*(*(v96 - 8) + 8))(v104, v96);
  }

  v107[0] = v31;
  __chkstk_darwin(v55);
  v56 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v58 = *v56;
      v57 = v56[1];

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v106 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000A2E68(v58, v57, &v106);
        _os_log_impl(&_mh_execute_header, v59, v60, "askForTime response handling did not find ask request identifier %s", v61, 0xCu);
        sub_1000A462C(v62);
      }

      sub_10010A07C();
      swift_allocError();
      *v63 = v58;
      v63[1] = v57;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v64 = type metadata accessor for Logger();
      (*(*(v64 - 8) + 8))(v104, v64);
    }

    sub_10010A020(&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v103 = a9;
    v71 = v70;
    v107[0] = v70;
    *v68 = 136446466;
    v72 = StaticString.description.getter();
    v74 = sub_1000A2E68(v72, v73, v107);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2114;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 14) = v75;
    *v69 = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "DaemonActivity %{public}s failed with: %{public}@.", v68, 0x16u);
    sub_1000A5148(v69, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v71);
    v54 = v103;
  }

  if ((v98 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v98 = a11;
    v76 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v102 = &v97;
    v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v76 - 8);
    v79 = &v97 - v78;
    v80 = type metadata accessor for TaskPriority();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
    v81 = type metadata accessor for Logger();
    v97 = &v97;
    v82 = *(v81 - 8);
    v83 = *(v82 + 64);
    __chkstk_darwin(v81);
    v103 = v54;
    (*(v82 + 16))(&v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v104, v81);
    v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    v54 = v103;
    (*(v82 + 32))(v85 + v84, &v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v81);
    v86 = v85 + ((v84 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
    v87 = v99;
    *v86 = v101;
    *(v86 + 8) = v87;
    *(v86 + 16) = v100;
    *(v85 + ((v84 + v83 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;
    swift_errorRetain();
    sub_1000A2630(0, 0, v79, v98, v85);
  }

  (v54)(v31);
  swift_willThrow();

  v88 = type metadata accessor for Logger();
  return (*(*(v88 - 8) + 8))(v104, v88);
}

uint64_t sub_100109BD0()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100109C9C, 0, 0);
}

uint64_t sub_100109C9C()
{
  v1 = v0[10];
  Logger.init(subsystem:category:)();
  sub_100106EE8("SetupService.promptForPasscodeFromUser", 38, 2, v1, 0);
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100109ECC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000A5418;

  return sub_1000C0AF8(a1, v8, v9, v1 + v6, v11, v12, v14, v13);
}

uint64_t sub_10010A020(uint64_t a1)
{
  v2 = type metadata accessor for DataStore.DataStoreError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10010A07C()
{
  result = qword_1001E2A08;
  if (!qword_1001E2A08)
  {
    type metadata accessor for DataStore.DataStoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2A08);
  }

  return result;
}

uint64_t sub_10010A0D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_100105970(v2, v3, v4);
}

uint64_t sub_10010A188()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1001053AC(v2, v3, v4);
}

uint64_t sub_10010A23C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000A53D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10010A290()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10010A368(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000A4F84;

  return sub_1000C0AF8(a1, v8, v9, v1 + v6, v11, v12, v14, v13);
}

uint64_t sub_10010A50C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000B3894(v3, a2);
  sub_1000A2B1C(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010A584(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010A5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010A618(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10010A658(void *a1, void *a2)
{
  v27 = sub_1000A0F2C(&qword_1001E36E8, &qword_1001438F0);
  v30 = *(v27 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v27);
  v6 = &v26 - v5;
  v7 = sub_1000A0F2C(&qword_1001E36F0, &qword_1001438F8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = a1;
  v17 = a2;
  v31 = Future.init(_:)();
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900);
  sub_1000F5038();
  Publisher.mapError<A>(_:)();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10010BCB0;
  *(v19 + 24) = v18;
  v20 = v16;
  v21 = v17;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  sub_1000F4FCC(&qword_1001E3700, &qword_1001E36E8, &qword_1001438F0);
  sub_1000F4FCC(&qword_1001E3708, &qword_1001E36F8, &qword_100143908);
  v22 = v27;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v30 + 8))(v6, v22);
  sub_1000F4FCC(&qword_1001E3710, &qword_1001E36F0, &qword_1001438F8);
  v23 = v28;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v11, v23);
  return v24;
}

uint64_t sub_10010AA2C(void *a1, void *a2)
{
  v27 = sub_1000A0F2C(&qword_1001E36E8, &qword_1001438F0);
  v30 = *(v27 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v27);
  v6 = &v26 - v5;
  v7 = sub_1000A0F2C(&qword_1001E36F0, &qword_1001438F8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = a1;
  v17 = a2;
  v31 = Future.init(_:)();
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900);
  sub_1000F5038();
  Publisher.mapError<A>(_:)();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10010BADC;
  *(v19 + 24) = v18;
  v20 = v16;
  v21 = v17;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  sub_1000F4FCC(&qword_1001E3700, &qword_1001E36E8, &qword_1001438F0);
  sub_1000F4FCC(&qword_1001E3708, &qword_1001E36F8, &qword_100143908);
  v22 = v27;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v30 + 8))(v6, v22);
  sub_1000F4FCC(&qword_1001E3710, &qword_1001E36F0, &qword_1001438F8);
  v23 = v28;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v11, v23);
  return v24;
}

uint64_t sub_10010AE00(void *a1, void *a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  v8 = sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  return Future.init(_:)();
}

uint64_t sub_10010AE90(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = sub_10010BB54;
  *(v19 + 48) = v18;
  aBlock[4] = sub_10010BB58;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001ABE28;
  v20 = _Block_copy(aBlock);

  v21 = a3;
  a4;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10010BB80();
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void sub_10010B17C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameCloud type:NSSQLiteStoreType];
  [v9 setShouldAddStoreAsynchronously:0];
  if (a1)
  {
    v10 = objc_allocWithZone(NSCloudKitMirroringDelegateOptions);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithContainerIdentifier:v11];

    [v12 setUseDeviceToDeviceEncryption:1];
    v13 = [objc_allocWithZone(CKContainerOptions) init];
    [v13 setUseZoneWidePCS:1];
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    [v12 setValue:v14 forKey:v15];

    [v12 setAutomaticallyScheduleImportAndExportOperations:1];
    v16 = String._bridgeToObjectiveC()();
    [v12 setApsConnectionMachServiceName:v16];

    v17 = [objc_allocWithZone(NSCloudKitMirroringDelegate) initWithOptions:v12];
    [v9 setOption:v17 forMirroringKey:NSPersistentStoreMirroringDelegateOptionKey];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v20[4] = sub_10010BBD8;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000D4878;
  v20[3] = &unk_1001ABE78;
  v19 = _Block_copy(v20);

  [a2 loadPersistentStoreDescription:v9 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10010B438(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10010BBE0;
  *(v7 + 24) = v6;
  v18 = sub_100100C04;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100100B4C;
  v17 = &unk_1001ABEF0;
  v8 = _Block_copy(&v14);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10010BC10;
  *(v10 + 24) = v9;
  v18 = sub_10010BC3C;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10010B6B0;
  v17 = &unk_1001ABF68;
  v11 = _Block_copy(&v14);

  [a1 evaluateWithSuccess:v8 failure:v11];
  _Block_release(v8);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_10010B6B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_10010B6FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_10010BD1C;
  v17[5] = v16;
  aBlock[4] = sub_10010BCA4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001ABFE0;
  v18 = _Block_copy(aBlock);

  v19 = a3;
  a4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10010BB80();
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_10010B9E0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v8 = 0;
  if ([a1 unloadCloudPersistentStoreWithError:&v8])
  {
    v4 = v8;
    return a3(0, 0);
  }

  else
  {
    v6 = v8;
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    a3(v7, 1);
  }
}

uint64_t sub_10010BB18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_10010BB68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10010BB80()
{
  result = qword_1001E19E8;
  if (!qword_1001E19E8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E19E8);
  }

  return result;
}

uint64_t sub_10010BBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

uint64_t sub_10010BC10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

uint64_t sub_10010BC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10010BC64(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_10010BD30()
{
  v1 = 0x6C61756E616DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_10010BD94()
{
  result = qword_1001E3718;
  if (!qword_1001E3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E3718);
  }

  return result;
}

unint64_t sub_10010BDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000A0F2C(&qword_1001E1100, &qword_100141708);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1000C6C8C(&v27, v29);
        sub_1000C6C8C(v29, v30);
        sub_1000C6C8C(v30, &v28);
        result = sub_1000CBA20(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1000A462C(v12);
          result = sub_1000C6C8C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1000C6C8C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10010C040(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for CocoaError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v24 = a1;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  if (swift_dynamicCast())
  {
    v23 = *(v5 + 8);
    v23(v14, v4);
    v24 = a1;
    swift_errorRetain();
    swift_dynamicCast();
    sub_10010EAA8(&qword_1001E3880, &type metadata accessor for CocoaError);
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    sub_1000A0F2C(&qword_1001E3888, &qword_100143A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFD0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v19;
    *(inited + 48) = v15;
    *(inited + 56) = v17;
    v20 = sub_10010D92C(inited);
    swift_setDeallocating();
    sub_1000A5148(inited + 32, &qword_1001E3890, &qword_100143AA0);
    sub_10010EAA8(&qword_1001E3898, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.code.getter();
    sub_10010BDE8(v20);

    _BridgedStoredNSError.init(_:userInfo:)();
    a1 = CocoaError._nsError.getter();
    v21 = v23;
    v23(v9, v4);
    v21(v12, v4);
  }

  else
  {
    swift_errorRetain();
  }

  return a1;
}

uint64_t sub_10010C380()
{
  v0 = objc_allocWithZone(type metadata accessor for ATQuestion.Topic());
  result = ATQuestion.Topic.init(rawValue:)();
  qword_1001E7088 = result;
  return result;
}

uint64_t sub_10010C55C(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_10010C61C, 0, 0);
}

uint64_t sub_10010C61C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0EA4;
  v3 = *(v0 + 32);

  return sub_10010DB7C("AskService.approveException", 27, 2, v3, 0);
}

uint64_t sub_10010C8BC(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v8 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;

  return _swift_task_switch(sub_10010C9F4, 0, 0);
}

uint64_t sub_10010C9F4()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000EB578;
  v3 = *(v0 + 32);

  return sub_10010DB7C("AskService.handleAnswer", 23, 2, v3, 0);
}

uint64_t sub_10010CC80(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = _Block_copy(a3);

  return _swift_task_switch(sub_10010CD30, 0, 0);
}

uint64_t sub_10010CD30()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BCE14;
  v3 = *(v0 + 24);

  return sub_10010DB7C("AskService.respondToAskForTimeRequest", 37, 2, v3, 0);
}

uint64_t sub_10010CFB8(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_10010D078, 0, 0);
}

uint64_t sub_10010D078()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0908;
  v3 = *(v0 + 32);

  return sub_10010DB7C("AskService.sendAsk", 18, 2, v3, 0);
}

uint64_t sub_10010D174()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent10AskService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskService()
{
  result = qword_1001E3750;
  if (!qword_1001E3750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010D23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_10010CFB8(v2, v3, v4);
}

uint64_t sub_10010D2F0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000A5418;

  return v7();
}

uint64_t sub_10010D3D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000A4F84;

  return v8();
}

uint64_t sub_10010D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000A95B0(a3, v25 - v11, &unk_1001DF9B0, &qword_100140000);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000A5148(v12, &unk_1001DF9B0, &qword_100140000);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);

    return v23;
  }

LABEL_8:
  sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10010D7BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A5418;

  return sub_1000A2BF4(a1, v5);
}

uint64_t sub_10010D874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A4F84;

  return sub_1000A2BF4(a1, v5);
}

unint64_t sub_10010D92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E38A0, &qword_100143AA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000CBA20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10010DA40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E38B8, &qword_100143B28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000A95B0(v4, v13, &qword_1001E0E60, &qword_100141388);
      result = sub_1000CBB00(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000C6C8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}