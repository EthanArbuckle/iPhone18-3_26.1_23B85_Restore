unint64_t sub_1000BB8C8()
{
  result = qword_1006CC328;
  if (!qword_1006CC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC328);
  }

  return result;
}

uint64_t sub_1000BB944()
{

  return swift_once();
}

uint64_t sub_1000BB9E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[3];
  return v0[7];
}

uint64_t sub_1000BBA0C()
{

  return swift_once();
}

unint64_t sub_1000BBA2C@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v1;
  v4 = *(a1 + 32);
  return v3 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v2;
}

uint64_t sub_1000BBA50()
{

  return swift_task_create();
}

uint64_t sub_1000BBA6C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000BBA94()
{
  *(v0 + 160) = 0;
  v4 = v1[31];
  v3 = v1[32];
  v6 = v1[27];
  v5 = v1[28];
  v8 = v1[25];
  v7 = v1[26];
  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[21];
  v12 = v1[18];
}

uint64_t sub_1000BBB10()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void sub_1000BBB2C()
{
  v2 = *(v0 + 16) + 1;

  sub_1000631BC(0, v2, 1, v0);
}

uint64_t sub_1000BBB50@<X0>(uint64_t a1@<X8>)
{

  return sub_1000BA340(v2, v1 - a1, v3);
}

uint64_t sub_1000BBBA0()
{

  return swift_allocError();
}

uint64_t sub_1000BBC10()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC330);
  sub_100046E6C(v0, qword_1006CC330);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BBC94()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 24);
  sub_10006BF14();
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  sub_10006BF14();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BC934;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1000BC958;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBBE8;
  aBlock[3] = &unk_100694C70;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_1000BBDF0(id *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;
  *a1 = v2;
  v3 = v2;
}

uint64_t sub_1000BBE34(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS();
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = sub_10004EAE0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10004EAF4();
  v21 = v20 - v19;
  v22 = *(v1 + 24);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10006BF14();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_1000BC8E0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694BF8;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);
}

void sub_1000BC03C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v2 = a2;
}

void *sub_1000BC07C()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = sub_10004EAE0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004EAF4();
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10004EAF4();
  v1[2] = [objc_allocWithZone(CNContactStore) init];
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  sub_1000BC4E8();
  v15 = [objc_opt_self() defaultCenter];
  v16 = CNContactStoreMeContactDidChangeNotification;
  v17 = [objc_opt_self() mainQueue];
  aBlock[4] = sub_1000BC980;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1C04;
  aBlock[3] = &unk_100694C98;
  v18 = _Block_copy(aBlock);

  v19 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return v1;
}

void sub_1000BC354()
{
  if (qword_1006C9820 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100046E6C(v0, qword_1006CC330);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Me Contact changed", v3, 2u);
  }

  if ((sub_1000BC4E8() & 1) == 0)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Ignoring notification since values that we care about did not change", v5, 2u);
    }
  }
}

uint64_t sub_1000BC4E8()
{
  sub_1000443DC(&qword_1006CBEB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005CE040;
  *(v1 + 32) = CNContactGivenNameKey;
  *(v1 + 40) = CNContactFamilyNameKey;
  *(v1 + 48) = CNContactPhoneNumbersKey;
  *(v1 + 56) = CNContactEmailAddressesKey;
  *(v1 + 64) = CNContactPostalAddressesKey;
  v2 = *(v0 + 16);
  v3 = CNContactGivenNameKey;
  v4 = CNContactFamilyNameKey;
  v5 = CNContactPhoneNumbersKey;
  v6 = CNContactEmailAddressesKey;
  v7 = CNContactPostalAddressesKey;
  sub_1000443DC(&qword_1006CBEA0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = 0;
  v9 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v24];

  if (v9)
  {
    v10 = v24;
    v11 = v9;
    v12 = sub_1000BBC94();
    if (!v12 || (v13 = v12, sub_1000591B0(0, &qword_1006CBEA8, CNContact_ptr), v14 = v11, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) == 0))
    {
      sub_1000BBE34(v9);

      return 1;
    }
  }

  else
  {
    v17 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006C9820 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100046E6C(v18, qword_1006CC330);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v23 = sub_100052F7C();

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring error getting MeContact %s", v21, 0xCu);
      sub_100044850(v22);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000BC84C()
{
  sub_1000BC81C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000BC8A4()
{
  v1 = *(v0 + 16);

  sub_10006BF14();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000BC8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC900()
{
  v1 = *(v0 + 24);

  sub_10006BF14();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000BC958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1000BC998()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v4 = [objc_opt_self() sharedInstance];
  v5 = objc_allocWithZone(type metadata accessor for AssessmentPayloadStore());
  result = sub_1000BCB08(v3, v4);
  static AssessmentPayloadStore.shared = result;
  return result;
}

uint64_t *AssessmentPayloadStore.shared.unsafeMutableAddressor()
{
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C();
  }

  return &static AssessmentPayloadStore.shared;
}

id static AssessmentPayloadStore.shared.getter()
{
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C();
  }

  v1 = static AssessmentPayloadStore.shared;

  return v1;
}

id sub_1000BCB08(uint64_t a1, uint64_t a2)
{
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v5 = OBJC_IVAR____TtC3asd22AssessmentPayloadStore_logger;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for AssessmentPayloadStore();
  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t sub_1000BCBFC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000BCC1C, 0, 0);
}

uint64_t sub_1000BCC1C()
{
  v1 = v0[18];
  v2 = *(v0[19] + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager);
  sub_100078348();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;

  v0[2] = v0;
  v0[3] = sub_1000BCD78;
  v4 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CC4B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000BCF40;
  v0[13] = &unk_100694D00;
  v0[14] = v4;
  [v2 eWV8dPJG0p0nc2lk:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000BCD78()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1000BCED8;
  }

  else
  {
    v5 = sub_1000BCE7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BCE7C()
{
  sub_1000657D4();

  sub_10006574C();

  return v1();
}

uint64_t sub_1000BCED8()
{
  sub_1000657EC();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_10006574C();
  v4 = *(v0 + 168);

  return v3();
}

uint64_t sub_1000BCF40(uint64_t a1, void *a2)
{
  v3 = sub_100044728((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1000C4464(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t AssessmentPayloadStore.fetch(for:withBindings:)()
{
  sub_1000657D4();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = *(*(type metadata accessor for AssessmentPayloadFilter() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v6 = type metadata accessor for AssessmentPayload();
  v1[24] = v6;
  v7 = *(v6 - 8);
  v1[25] = v7;
  v8 = *(v7 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD0A8, 0, 0);
}

uint64_t sub_1000BD0A8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = *(v0[22] + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager);
  v4 = String._bridgeToObjectiveC()();
  v0[28] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000BD1E4;
  v5 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CC458);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000BD8A8;
  v0[13] = &unk_100694CC0;
  v0[14] = v5;
  [v3 naB577x5bWPDZyct:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000BD1E4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_1000BD7AC;
  }

  else
  {
    v5 = sub_1000BD2E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000BD2E8()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);

  sub_1000BD958(v2 + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_assessmentPayloadFilter, v1);
  v4 = sub_1000582D8(v3);
  if (v4)
  {
    v5 = v4;
    sub_1000BE014(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = *(v0 + 200);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      sub_1000788B8(v8, *(v0 + 208));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000BE014(v9 > 1, v10 + 1, 1);
      }

      v11 = *(v0 + 208);
      ++v6;
      _swiftEmptyArrayStorage[2] = (v10 + 1);
      sub_1000BE064(v11, _swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10);
    }

    while (v5 != v6);
  }

  *(v0 + 240) = _swiftEmptyArrayStorage;
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_1000BD4C4;
  v13 = *(v0 + 216);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);

  sub_1000CFC40(v13, _swiftEmptyArrayStorage, v15);
}

uint64_t sub_1000BD4C4()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v4 = v3;
  v5 = v2[31];
  *v4 = *v1;
  v3[32] = v0;

  v6 = v2[30];
  sub_1000BE120(v2[23], type metadata accessor for AssessmentPayloadFilter);

  if (v0)
  {
    v7 = sub_1000BD830;
  }

  else
  {
    v7 = sub_1000BD620;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000BD620()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[24];
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000BE0C8();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v0[27];
  if (v1)
  {
    sub_1000BE120(v0[27], type metadata accessor for AssessmentPayload);

    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[23];

    sub_10006574C();

    return v13();
  }

  else
  {
    v15 = v7;
    v16 = v8;
    v17 = v0[26];
    v18 = v0[23];
    sub_1000BE120(v0[27], type metadata accessor for AssessmentPayload);

    v19 = v0[1];

    return v19(v15, v16);
  }
}

uint64_t sub_1000BD7AC()
{
  sub_1000657EC();
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];

  sub_10006574C();

  return v7();
}

uint64_t sub_1000BD830()
{
  sub_1000657EC();
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[23];

  sub_10006574C();

  return v5();
}

uint64_t sub_1000BD8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000C4464(v4, v5);
  }

  else
  {
    sub_1000BEE7C();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1000C4460(v4, v7);
  }
}

uint64_t sub_1000BD958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayloadFilter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDA54(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v4[5] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a4;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1000BDB64;

  return AssessmentPayloadStore.fetch(for:withBindings:)();
}

uint64_t sub_1000BDB64(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1000657F8();
  v8 = v7;
  sub_1000773D4();
  *v9 = v8;
  v11 = v10[6];
  v12 = v10[5];
  v13 = v10[4];
  v14 = v10[2];
  v15 = *v3;
  sub_1000773D4();
  *v16 = v15;

  if (v4)
  {
    v17 = _convertErrorToNSError(_:)();

    isa = 0;
    v19 = v17;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000448B0(a1, a2);
    v17 = 0;
    v19 = isa;
  }

  v20 = *(v8 + 24);
  (v20)[2](v20, isa, v17);

  _Block_release(v20);
  sub_10006574C();

  return v21();
}

id AssessmentPayloadStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentPayloadStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_1000BDEA4(id *a1, int64_t a2, char a3)
{
  result = sub_1000BE57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000BDEC4(id *a1, int64_t a2, char a3)
{
  result = sub_1000BE674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000BDEE4()
{
  v1 = *v0;
  sub_1000BEF44();
  sub_1000BEACC(v2, v3, v4, v5, v6, v7, sub_100063638);
  *v0 = v8;
}

void sub_1000BDF44()
{
  v1 = *v0;
  sub_1000BEF2C();
  sub_1000BEACC(v2, v3, v4, v5, v6, v7, sub_100063678);
  *v0 = v8;
}

id *sub_1000BDF84(id *a1, int64_t a2, char a3)
{
  result = sub_1000BE8D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000BDFA4(id *a1, int64_t a2, char a3)
{
  result = sub_1000BE9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000BE064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BE0C8()
{
  result = qword_1006CC468;
  if (!qword_1006CC468)
  {
    type metadata accessor for AssessmentPayload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC468);
  }

  return result;
}

uint64_t sub_1000BE120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10007CB0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for AssessmentPayloadStore()
{
  result = qword_1006CC4A0;
  if (!qword_1006CC4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BE1C8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BE268()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BE2B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000BE378;

  return sub_1000BDA54(v2, v3, v5, v4);
}

uint64_t sub_1000BE378()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000773D4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

id *sub_1000BE45C(id *a1, int64_t a2, char a3)
{
  result = sub_1000BEC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000BE47C(id *a1, int64_t a2, char a3)
{
  result = sub_1000BED7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000BE49C(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_7;
  }

  sub_1000655C0();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(a4 + 16);
    if (v9 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      sub_1000443DC(a5);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * v15 - 64;
      if (a1)
      {
LABEL_12:
        a6(a4 + 32, v12, v14 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v14 + 4, (a4 + 32), v12);
    goto LABEL_15;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    sub_1000655B0();
    goto LABEL_7;
  }

  __break(1u);
}

id *sub_1000BE57C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CA620);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 16));
      if (v5)
      {
LABEL_13:
        sub_10006353C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_1000BE674(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 24));
      if (v5)
      {
LABEL_13:
        sub_100063650((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1000443DC(&qword_1006CC4C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000BE7B0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_1000655C0();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_1000443DC(&qword_1006CA6A0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v9;
      v11[3] = (2 * ((v12 - 32) / 104));
      if (a1)
      {
LABEL_12:
        sub_100063514((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    sub_1000655B0();
    goto LABEL_7;
  }

  __break(1u);
}

id *sub_1000BE8D4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 48));
      if (v5)
      {
LABEL_13:
        sub_100063690((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_1000BE9D4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 64));
      if (v5)
      {
LABEL_13:
        sub_1000636B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000BEACC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(unint64_t, void *, char *))
{
  if (a3)
  {
    sub_1000655C0();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  if (v11 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_1000443DC(a5);
  v16 = *(a6(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v14;
  v19[3] = (2 * ((v20 - v18) / v17));
LABEL_18:
  v22 = *(a6(0) - 8);
  if (a1)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    a7(a4 + v23, v14, v19 + v23);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_1000BEC80(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 32));
      if (v5)
      {
LABEL_13:
        sub_1000637D0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_1000BED7C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CA680);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = (2 * ((v11 - 32) / 24));
      if (v5)
      {
LABEL_13:
        sub_100063650((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000BEE7C()
{
  result = qword_1006CC4F0;
  if (!qword_1006CC4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CC4F0);
  }

  return result;
}

uint64_t sub_1000BEF0C()
{

  return swift_once();
}

void *sub_1000BEF5C()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CC370;
  *(inited + 32) = 0x724565646F636564;
  *(inited + 40) = 0xEB00000000726F72;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:*v1];
  strcpy((inited + 56), "filterIgnored");
  *(inited + 70) = -4864;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:*(v1 + 1)];
  sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (v1[2])
  {
    v4 = sub_1000BFB60(0x79616C6564, 0xE500000000000000);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v3[3];
      sub_1000443DC(&qword_1006CA8D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
      v9 = *(v3[6] + 16 * v6 + 8);

      v10 = *(v3[7] + 8 * v6);
      _NativeDictionary._delete(at:)();
    }
  }

  else
  {
    v11 = [objc_allocWithZone(NSNumber) initWithDouble:v1[1]];
    swift_isUniquelyReferenced_nonNull_native();
    sub_10006B088(v11, 0x79616C6564, 0xE500000000000000);
  }

  if (*(v1 + 4))
  {
    v12 = *(v1 + 3);
    v13 = String._bridgeToObjectiveC()();
    swift_isUniquelyReferenced_nonNull_native();
    sub_10006B088(v13, 0x646E616D6D6F63, 0xE700000000000000);
  }

  else
  {
    v14 = sub_1000BFB60(0x646E616D6D6F63, 0xE700000000000000);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      sub_1000443DC(&qword_1006CA8D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18);
      v19 = *(v3[6] + 16 * v16 + 8);

      v20 = *(v3[7] + 8 * v16);
      _NativeDictionary._delete(at:)();
    }
  }

  return v3;
}

unint64_t sub_1000BF244()
{
  v1 = type metadata accessor for ASAnalyticsEvent();
  v2 = sub_1000774D8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v7 = v6 - v5;
  sub_1000BFA88(v0, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD00000000000001DLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10007700C(v7);
      return 0xD000000000000023;
    case 2:
      sub_10007700C(v7);
      goto LABEL_9;
    case 3:
      sub_10007700C(v7);
      goto LABEL_8;
    case 4:
      v10 = *(sub_1000443DC(&qword_1006CB718) + 48);
      v11 = type metadata accessor for UUID();
      sub_1000774D8(v11);
      (*(v12 + 8))(v7 + v10);
LABEL_8:
      result = 0xD000000000000015;
      break;
    case 5:
LABEL_9:
      result = 0xD000000000000022;
      break;
    case 6:
      sub_10007700C(v7);
      result = 0xD000000000000027;
      break;
    case 7:
      return result;
    default:
      sub_10007700C(v7);
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_1000BF408()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v7 = v6 - v5;
  v8 = type metadata accessor for ASAnalyticsEvent();
  v9 = sub_1000774D8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10004EAF4();
  v14 = (v13 - v12);
  sub_1000BFA88(v1, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *v14;
      v45 = *(v14 + 1);
      v46 = *(v14 + 2);
      sub_1000443DC(&qword_1006CC4F8);
      inited = swift_initStackObject();
      v48 = sub_1000C074C(inited, xmmword_1005CC370);

      sub_1000C0784();
      *(inited + 48) = v48;
      *(inited + 56) = v49 | 7;
      *(inited + 64) = v50;
      *(inited + 72) = UInt64._bridgeToObjectiveC()();
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 2u:
      v24 = *v14;
      v25 = *(v14 + 1);
      v26 = *(v14 + 2);
      v27 = *(v14 + 3);
      sub_1000443DC(&qword_1006CC4F8);
      v28 = swift_initStackObject();
      v29 = sub_1000C074C(v28, xmmword_1005CC370);

      sub_1000C0784();
      v28[3].n128_u64[0] = v29;
      v28[3].n128_u64[1] = v30;
      v28[4].n128_u64[0] = v31;
      v32 = String._bridgeToObjectiveC()();

      v28[4].n128_u64[1] = v32;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 3u:
      v33 = *v14;
      v35 = *(v14 + 1);
      v34 = *(v14 + 2);
      v36 = *(v14 + 3);
      sub_1000443DC(&qword_1006CC4F8);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_1005CC380;
      *(v37 + 32) = 1701869940;
      *(v37 + 40) = 0xE400000000000000;
      v38 = String._bridgeToObjectiveC()();

      *(v37 + 48) = v38;
      *(v37 + 56) = 0x646F43726F727265;
      *(v37 + 64) = 0xE900000000000065;
      *(v37 + 72) = Int._bridgeToObjectiveC()();
      *(v37 + 80) = 7761509;
      *(v37 + 88) = 0xE300000000000000;
      v39 = String._bridgeToObjectiveC()();

      *(v37 + 96) = v39;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 4u:
      v19 = *v14;
      v20 = sub_1000443DC(&qword_1006CB718);
      (*(v3 + 32))(v7, &v14[*(v20 + 48)], v2);
      sub_1000443DC(&qword_1006CC4F8);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1005CC370;
      *(v21 + 32) = 0x756F437972746572;
      *(v21 + 40) = 0xEA0000000000746ELL;
      *(v21 + 48) = Int._bridgeToObjectiveC()();
      *(v21 + 56) = 0x4449676162;
      *(v21 + 64) = 0xE500000000000000;
      UUID.uuidString.getter();
      v22 = String._bridgeToObjectiveC()();

      *(v21 + 72) = v22;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      v23 = Dictionary.init(dictionaryLiteral:)();
      (*(v3 + 8))(v7, v2);
      return v23;
    case 5u:
      v51 = *v14;
      v52 = *(v14 + 1);
      sub_1000443DC(&qword_1006CC4F8);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_1005CC370;
      *(v53 + 32) = 0x73736563637573;
      *(v53 + 40) = 0xE700000000000000;
      *(v53 + 48) = Bool._bridgeToObjectiveC()();
      *(v53 + 56) = 0x6E6F697461727564;
      *(v53 + 64) = 0xE800000000000000;
      *(v53 + 72) = Double._bridgeToObjectiveC()();
      goto LABEL_9;
    case 6u:
      v55 = *(v14 + 1);
      v56[0] = *v14;
      v56[1] = v55;
      v57 = *(v14 + 4);
      v23 = sub_1000BEF5C();
      sub_1000BFAEC(v56);
      return v23;
    case 7u:
      sub_1000443DC(&qword_1006CC4F8);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1005CB870;
      sub_1000C0784();
      *(v42 + 32) = v41 | 0xE;
      *(v42 + 40) = v43;
      sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
      *(v40 + 48) = NSNumber.init(BOOLeanLiteral:)(1);
LABEL_9:
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      break;
    default:
      v15 = *v14;
      v16 = *(v14 + 1);
      sub_1000443DC(&qword_1006CC4F8);
      v17 = swift_initStackObject();
      v18 = sub_1000C074C(v17, xmmword_1005CB870);

      v17[3].n128_u64[0] = v18;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      break;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t type metadata accessor for ASAnalyticsEvent()
{
  result = qword_1006CC578;
  if (!qword_1006CC578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BFA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BFB1C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000BFD7C(a1, v4);
}

unint64_t sub_1000BFB60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000BFE40(a1, a2, v6);
}

unint64_t sub_1000BFBD8(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000BFEF4(a1, v4);
}

unint64_t sub_1000BFC20(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000BFF54(a1, v4);
}

unint64_t sub_1000BFC64(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  v8 = Hasher._finalize()();

  return sub_1000BFFB4(a1, a2, a3, v8);
}

unint64_t sub_1000BFCF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1000C0238(&qword_1006C9878);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000C0090(a1, v5);
}

unint64_t sub_1000BFD7C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10006B994(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100076E50(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BFE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BFEF4(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1000BFF54(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000BFFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1000C0090(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1000C0238(&qword_1006CC500);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000C0238(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C027C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C02D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1000C033C()
{
  sub_1000C0470();
  if (v0 <= 0x3F)
  {
    sub_1000C0570(319, &qword_1006CC590);
    if (v1 <= 0x3F)
    {
      sub_1000C0570(319, &qword_1006CC598);
      if (v2 <= 0x3F)
      {
        sub_1000C0498();
        if (v3 <= 0x3F)
        {
          sub_1000C0504();
          if (v4 <= 0x3F)
          {
            sub_1000C0570(319, &qword_1006CC5B0);
            if (v5 <= 0x3F)
            {
              sub_1000C05C8();
              if (v6 <= 0x3F)
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

void *sub_1000C0470()
{
  result = qword_1006CC588;
  if (!qword_1006CC588)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1006CC588);
  }

  return result;
}

void sub_1000C0498()
{
  if (!qword_1006CC5A0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006CC5A0);
    }
  }
}

void sub_1000C0504()
{
  if (!qword_1006CC5A8)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006CC5A8);
    }
  }
}

void sub_1000C0570(uint64_t a1, unint64_t *a2)
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

ValueMetadata *sub_1000C05C8()
{
  result = qword_1006CC5B8;
  if (!qword_1006CC5B8)
  {
    result = &type metadata for ASAnalyticsEvent.PushAnalytic;
    atomic_store(&type metadata for ASAnalyticsEvent.PushAnalytic, &qword_1006CC5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ASAnalyticsEvent.PushRegistrationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C06BCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C06F8()
{
  result = qword_1006CC5E8;
  if (!qword_1006CC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC5E8);
  }

  return result;
}

NSString sub_1000C074C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x776F6C666B726F77;
  a1[2].n128_u64[1] = 0xEA00000000004449;

  return String._bridgeToObjectiveC()();
}

BOOL sub_1000C0798()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v1 = sub_10004EAE0(v0);
  v76 = v2;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v1);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v73[-v8];
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v11 = sub_10004EAE0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10004EAF4();
  v18 = v17 - v16;
  v19 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v20 = sub_10004EAE0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10004EAF4();
  v27 = v26 - v25;
  v28 = type metadata accessor for GenerativeModelsAvailability();
  v29 = sub_10004EAE0(v28);
  v77 = v30;
  v78 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10004EAF4();
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v22 + 8))(v27, v19);
  GenerativeModelsAvailability.availability.getter();
  v33 = v13[11];
  v34 = sub_100053FF8();
  v36 = v35(v34);
  if (v36 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v37 = v13[1];
    v38 = sub_100053FF8();
    v39(v38);
LABEL_3:
    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24();
    }

    v40 = type metadata accessor for Logger();
    sub_100046E6C(v40, qword_1006CC5F0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      *swift_slowAlloc() = 0;
      sub_1000C1A6C(&_mh_execute_header, v43, v44, "GM state is available/restricted.");
      sub_1000488AC();
    }

    v45 = sub_1000C1A5C();
    v46(v45);
    return 1;
  }

  if (v36 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v48 = v13[12];
    v49 = sub_100053FF8();
    v50(v49);
    v51 = v76;
    (*(v76 + 32))(v9, v18, v0);
    v52 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v47 = sub_1000C0E68(v52);

    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24();
    }

    v53 = type metadata accessor for Logger();
    sub_100046E6C(v53, qword_1006CC5F0);
    (*(v51 + 16))(v7, v9, v0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v56 = 136315394;
      sub_1000C19DC(&qword_1006CC608, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v74 = v55;
      dispatch thunk of CustomStringConvertible.description.getter();
      v57 = *(v51 + 8);
      v57(v7);
      v58 = sub_100052F7C();

      *(v56 + 4) = v58;
      *(v56 + 12) = 1024;
      *(v56 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v54, v74, "GM state is unavailable. Reason: %s. Resolution: %{BOOL}d", v56, 0x12u);
      sub_100044850(v75);
      sub_1000488AC();
      sub_1000488AC();

      (v57)(v9, v0);
    }

    else
    {

      v69 = *(v51 + 8);
      v69(v7, v0);
      v69(v9, v0);
    }

    v70 = sub_1000C1A5C();
    v71(v70);
  }

  else
  {
    if (v36 == enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      goto LABEL_3;
    }

    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24();
    }

    v59 = type metadata accessor for Logger();
    sub_100046E6C(v59, qword_1006CC5F0);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      *swift_slowAlloc() = 0;
      sub_1000C1A6C(&_mh_execute_header, v62, v63, "GM state is unknown.");
      sub_1000488AC();
    }

    v64 = sub_1000C1A5C();
    v65(v64);
    v66 = v13[1];
    v67 = sub_100053FF8();
    v68(v67);
    return 0;
  }

  return v47;
}

uint64_t sub_1000C0DE4()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC5F0);
  sub_100046E6C(v0, qword_1006CC5F0);
  return Logger.init(subsystem:category:)();
}

BOOL sub_1000C0E68(uint64_t a1)
{
  sub_1000443DC(&qword_1006CC610);
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  sub_10004EAE0(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005CF080;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  v10(v9, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:), v2);
  v10(v9 + v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.selectedLanguageIneligible(_:), v2);
  v10(v9 + 2 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.selectedSiriLanguageIneligible(_:), v2);
  v10(v9 + 3 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:), v2);
  v10(v9 + 4 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:), v2);
  v10(v9 + 5 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:), v2);
  v10(v9 + 6 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:), v2);
  v11 = sub_1000C1390(v8);
  LOBYTE(a1) = sub_1000C1040(v11, a1);

  return (a1 & 1) == 0;
}

uint64_t sub_1000C1040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v30 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v38 = v9 + 16;
  v35 = a1 + 56;
  v33 = v9;
  v16 = (v9 + 8);
  swift_bridgeObjectRetain_n();

  v18 = 0;
  v31 = v15;
  v32 = a2 + 56;
  v34 = a2;
  if (v14)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      do
      {
LABEL_9:
        v20 = *(v33 + 72);
        v21 = *(a2 + 48) + v20 * (__clz(__rbit64(v14)) | (v18 << 6));
        v36 = *(v33 + 16);
        v37 = v20;
        v36(v39, v21, v4);
        if (*(a1 + 16))
        {
          v22 = *(a1 + 40);
          sub_1000C19DC(&qword_1006CC618, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
          v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v24 = a1;
          v25 = ~(-1 << *(a1 + 32));
          while (1)
          {
            v26 = v23 & v25;
            a1 = v24;
            if (((*(v35 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v25)) & 1) == 0)
            {
              break;
            }

            v36(v8, *(v24 + 48) + v26 * v37, v4);
            sub_1000C19DC(&qword_1006CC620, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
            v27 = dispatch thunk of static Equatable.== infix(_:_:)();
            v28 = *v16;
            (*v16)(v8, v4);
            v23 = v26 + 1;
            if (v27)
            {
              v28(v39, v4);

              v29 = 1;
              goto LABEL_17;
            }
          }
        }

        v14 &= v14 - 1;
        result = (*v16)(v39, v4);
        a2 = v34;
        v15 = v31;
        v11 = v32;
      }

      while (v14);
    }
  }

  v29 = 0;
LABEL_17:

  return v29;
}

uint64_t sub_1000C1390(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1000443DC(&qword_1006CC628);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = v9[5];
    sub_1000C19DC(&qword_1006CC618, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, v9[6] + v18 * v13, v2);
      sub_1000C19DC(&qword_1006CC620, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(v9[6] + v18 * v13, v25, v2);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v9[2] = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000C16CC(uint64_t a1)
{
  v2 = type metadata accessor for ProfileContext();
  v3 = sub_10004EAE0(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v34 - v10;
  if (!*(a1 + 16))
  {
    v12 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1000443DC(&qword_1006CBB20);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v42 = result + 56;
  v14 = *(v39 + 80);
  v36 = a1;
  v37 = a1 + ((v14 + 32) & ~v14);
  v41 = v39 + 16;
  v15 = (v39 + 8);
  v35 = (v39 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v39 + 72);
    v40 = v13 + 1;
    v17 = *(v39 + 16);
    v17(v43, v37 + v16 * v13, v2);
    v18 = v12[5];
    sub_1000C1A44();
    sub_1000C19DC(&qword_1006CA8F8, v19);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v42 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v12;
      v17(v9, v12[6] + v22 * v16, v2);
      sub_1000C1A44();
      sub_1000C19DC(&qword_1006CA900, v27);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v15;
      (*v15)(v9, v2);
      if (v28)
      {
        result = (v29)(v43, v2);
        v12 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v12 = v26;
    }

    v30 = v43;
    *(v42 + 8 * v23) = v25 | v24;
    result = (*v35)(v12[6] + v22 * v16, v30, v2);
    v31 = v12[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v12[2] = v33;
LABEL_12:
    v13 = v40;
    a1 = v36;
    if (v40 == v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000C19DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1A24()
{

  return swift_once();
}

uint64_t sub_1000C1A5C()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

void sub_1000C1A6C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1000C1A90(uint64_t a1, uint64_t a2)
{
  sub_1000443DC(&unk_1006CB550);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000C1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1000C1B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(*(a1 + 64) + 40);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return swift_continuation_throwingResume();
}

Class sub_1000C1B68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1000C1C04(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000C1CF8()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC630);
  sub_100046E6C(v0, qword_1006CC630);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C1D80()
{
  v1 = *(v0 + 184);
  sub_1000B05E4(v4);
  if (v5 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
    sub_1000C43EC(v4);
  }

  return v2 & 1;
}

uint64_t sub_1000C1DEC()
{
  sub_1000657D4();
  v1 = *(v0 + 16);
  sub_1000C1E44();
  sub_10006574C();

  return v2();
}

uint64_t sub_1000C1E44()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;
  v3 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1000C42F4;
  v8[5] = v3;
  sub_1000C44C4();
  v8[1] = 1107296256;
  v8[2] = sub_1000C1C04;
  v8[3] = &unk_100694F48;
  v4 = _Block_copy(v8);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v6 = *(v0 + 200);
  *(v0 + 200) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C1F88()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    sub_1000485F8(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_10006F27C(0, 0, v3, &unk_1005CF140, v7);
  }

  return result;
}

uint64_t sub_1000C2080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;

  return sub_1000C21CC(v1);
}

uint64_t sub_1000C2110()
{
  v0 = [objc_allocWithZone(ACAccountStore) init];
  v1 = [v0 aida_accountForPrimaryiCloudAccount];
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  v3 = [v1 aida_dsid];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_1000C21E4()
{
  sub_1000657EC();
  if (*(v0[2] + 208))
  {
    sub_10006574C();

    return v1();
  }

  else
  {
    sub_1000C2110();
    v4 = v3;
    v0[3] = v3;
    if ((sub_1000C1D80() & 1) != 0 || !v4)
    {
      v6 = swift_task_alloc();
      v0[5] = v6;
      *v6 = v0;
      v7 = sub_1000C453C(v6);

      return sub_1000C37D4(v7);
    }

    else
    {
      v5 = swift_task_alloc();
      v0[4] = v5;
      *v5 = v0;
      sub_1000C453C(v5);

      return sub_1000C2744();
    }
  }
}

uint64_t sub_1000C2334()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_10006574C();

  return v6();
}

uint64_t sub_1000C2430()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  return _swift_task_switch(sub_1000C2530, v3, 0);
}

uint64_t sub_1000C2530()
{
  sub_1000657EC();
  if (*(v0 + 24))
  {

    if (qword_1006C9838 != -1)
    {
      sub_1000C4468();
    }

    v1 = type metadata accessor for Logger();
    sub_100097D98(v1, qword_1006CC630);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v3))
    {
      v4 = sub_1000541D8();
      sub_100077908(v4);
      sub_10007FD74(&_mh_execute_header, v5, v6, "Push disabled - not registering with PDS");
      sub_1000488AC();
    }
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468();
    }

    v7 = type metadata accessor for Logger();
    sub_100097D98(v7, qword_1006CC630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v9))
    {
      v10 = sub_1000541D8();
      sub_100077908(v10);
      sub_10007FD74(&_mh_execute_header, v11, v12, "Couldn't find current user - not registering with PDS and removing Ravioli if present");
      sub_1000488AC();
    }

    v2 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
    [v2 hiMi2bftgysHNCmu];
  }

  sub_10006574C();

  return v13();
}

uint64_t sub_1000C26B8()
{
  sub_1000657D4();
  *(*(v0 + 16) + 208) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = sub_1000C453C(v1);

  return sub_1000C21CC(v2);
}

uint64_t sub_1000C2744()
{
  sub_1000657EC();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = type metadata accessor for ASAnalyticsEvent();
  v1[28] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000C2824, v0, 0);
}

uint64_t sub_1000C2824()
{
  v1 = *(v0[27] + 112);
  v0[32] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1000C2A7C;
    v2 = swift_continuation_init();
    v3 = sub_1000443DC(&qword_1006CC7A0);
    sub_1000C44FC(v3);
    sub_1000C44E4(COERCE_DOUBLE(1107296256));
    v0[12] = v4;
    v0[13] = &unk_100694EA8;
    v0[14] = v2;
    [v1 activeUsersWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468();
    }

    v12 = type metadata accessor for Logger();
    sub_100097D98(v12, qword_1006CC630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v14))
    {
      v15 = sub_1000541D8();
      sub_100077908(v15);
      sub_10007FD74(&_mh_execute_header, v16, v17, "PushManagerPDS has nil PDSRegistrar - Can't register dsid");
      sub_1000488AC();
    }

    v18 = v0[27];

    if (*(v18 + 136))
    {
      if (*(v18 + 136) == 1)
      {
        sub_1000C44B0();
      }

      else
      {
        sub_1000C4488();
      }
    }

    else
    {
      sub_1000C454C();
      sub_1000C449C();
    }

    v20 = v0[31];
    v21 = v0[28];
    *v20 = 1;
    sub_1000C451C(v19);
    sub_1000C4148(v20);
    sub_10007700C(v20);
    v23 = v0[30];
    v22 = v0[31];
    v24 = v0[29];

    sub_10006574C();

    return v25();
  }
}

uint64_t sub_1000C2A7C()
{
  sub_1000657D4();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 216);
  if (v3)
  {
    v5 = sub_1000C31F0;
  }

  else
  {
    v5 = sub_1000C2BC4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000C2BC4()
{
  v3 = v0[21];
  v4 = sub_1000591F0(v3);
  v5 = 0;
  v68 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v1 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_1000C4468();
      goto LABEL_40;
    }

    v8 = v0[25];
    v7 = v0[26];
    v9 = [v6 userID];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v2 == v8 && v11 == v7)
    {
    }

    else
    {
      v13 = v0[25];
      v14 = v0[26];
      LODWORD(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v2 & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_15;
      }
    }

LABEL_15:
    ++v5;
  }

  v15 = sub_1000591F0(_swiftEmptyArrayStorage);
  v16 = 0;
  v2 = _swiftEmptyArrayStorage & 0xC000000000000001;
  while (1)
  {
    if (v15 == v16)
    {

      goto LABEL_37;
    }

    if (v2)
    {
      sub_1000981E8();
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_54;
      }

      v17 = _swiftEmptyArrayStorage[v16 + 4];
    }

    v5 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_53;
    }

    v18 = v0[32];
    v0[24] = 0;
    v19 = [v18 removeAllRegistrationsFromUser:v5 error:v0 + 24];
    v1 = v0[24];
    if (!v19)
    {
      break;
    }

    v20 = v1;

    ++v16;
  }

  v21 = v1;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468();
  }

  v22 = type metadata accessor for Logger();
  sub_100097D98(v22, qword_1006CC630);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    *sub_1000541D8() = 0;
    sub_1000773B4(&_mh_execute_header, v25, v26, "Error getting or removing registrations for existing users.");
    sub_1000488AC();
  }

  v27 = v0[27];

  if (*(v27 + 136))
  {
    if (*(v27 + 136) == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C454C();
    sub_1000C449C();
  }

  v29 = v0[30];
  v30 = v0[28];
  *v29 = 1;
  sub_1000C451C(v28);
  sub_1000C4148(v29);

  sub_10007700C(v29);
LABEL_37:
  v31 = v0[32];
  v32 = v0[26];
  v33 = v0[27];
  v34 = v0[25];
  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);

  sub_1000981E8();
  v5 = sub_1000C36F4();
  sub_1000591B0(0, &qword_1006CC7B0, PDSRegistration_ptr);
  v35 = *(v33 + 120);
  v36 = *(v33 + 128);
  LODWORD(v2) = *(v33 + 136);

  v1 = sub_1000C3758(v35, v36, v2);
  v0[22] = 0;
  v37 = [v31 ensureRegistrationPresent:v1 forUser:v5 error:v0 + 22];
  v38 = v0[22];
  if (v37)
  {
    v39 = v0[32];
    v40 = v38;

    goto LABEL_48;
  }

  v68 = v35;
  v41 = v38;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    goto LABEL_55;
  }

LABEL_40:
  v42 = v0[27];
  v43 = type metadata accessor for Logger();
  sub_100097D98(v43, qword_1006CC630);
  swift_errorRetain();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v66 = v5;
    v69 = swift_slowAlloc();
    *v46 = 136315394;
    swift_getErrorValue();
    sub_1000C45AC();
    v47 = v1;
    v48 = sub_100052F7C();

    *(v46 + 4) = v48;
    v1 = v47;
    sub_1000C4558(v49, v50, v51, v52, v53, v54, v55, v56, v69, v66, v68);
    *(v46 + 14) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v44, v45, "Error thrown ensuring registering Push user: %s for topic %s", v46, 0x16u);
    swift_arrayDestroy();
    v5 = v67;
    sub_1000488AC();
    sub_1000488AC();
  }

  if (v2)
  {
    if (v2 == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C449C();
    sub_1000C454C();
  }

  v58 = v0[32];
  v59 = v0[28];
  v60 = v0[29];
  *v60 = 1;
  sub_1000C451C(v57);
  sub_1000C4148(v60);

  sub_10007700C(v60);
LABEL_48:
  v62 = v0[30];
  v61 = v0[31];
  v63 = v0[29];

  sub_10006574C();

  return v64();
}

uint64_t sub_1000C31F0()
{
  v1 = v0[33];
  swift_willThrow();
  v2 = v0[33];
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468();
  }

  v3 = type metadata accessor for Logger();
  sub_100097D98(v3, qword_1006CC630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *sub_1000541D8() = 0;
    sub_1000773B4(&_mh_execute_header, v6, v7, "Error getting or removing registrations for existing users.");
    sub_1000488AC();
  }

  v8 = v0[27];

  if (*(v8 + 136))
  {
    if (*(v8 + 136) == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C449C();
    sub_1000C454C();
  }

  v10 = v0[30];
  v11 = v0[28];
  *v10 = 1;
  sub_1000C451C(v9);
  sub_1000C4148(v10);

  sub_10007700C(v10);
  v12 = v0[32];
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);

  sub_1000981E8();
  v16 = sub_1000C36F4();
  sub_1000591B0(0, &qword_1006CC7B0, PDSRegistration_ptr);
  v17 = *(v14 + 120);
  v18 = *(v14 + 128);
  v19 = *(v14 + 136);

  v20 = sub_1000C3758(v17, v18, v19);
  v0[22] = 0;
  v52 = v16;
  v21 = [v12 ensureRegistrationPresent:v20 forUser:v16 error:v0 + 22];
  v22 = v0[22];
  if (v21)
  {
    v23 = v0[32];
    v24 = v22;
  }

  else
  {
    v51 = v17;
    v25 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468();
    }

    v26 = v0[27];
    sub_100097D98(v3, qword_1006CC630);
    swift_errorRetain();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v29 = 136315394;
      swift_getErrorValue();
      HIDWORD(v49) = v28;
      sub_1000C45AC();
      v30 = sub_100052F7C();

      *(v29 + 4) = v30;
      sub_1000C4558(v31, v32, v33, v34, v35, v36, v37, v38, v49, v53, v51);
      *(v29 + 14) = sub_100052F7C();
      _os_log_impl(&_mh_execute_header, v27, v50, "Error thrown ensuring registering Push user: %s for topic %s", v29, 0x16u);
      swift_arrayDestroy();
      sub_1000488AC();
      sub_1000488AC();
    }

    if (v19)
    {
      v39 = 0xE700000000000000;
      if (v19 == 1)
      {
        v40 = 0x786F62646E6173;
      }

      else
      {
        v40 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v40 = 0x69746375646F7270;
      v39 = 0xEA00000000006E6FLL;
    }

    v41 = v0[32];
    v42 = v0[28];
    v43 = v0[29];
    *v43 = 1;
    *(v43 + 8) = 3;
    *(v43 + 16) = v40;
    *(v43 + 24) = v39;
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v43);

    sub_10007700C(v43);
  }

  v45 = v0[30];
  v44 = v0[31];
  v46 = v0[29];

  sub_10006574C();

  return v47();
}

uint64_t sub_1000C3670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1000C1A90(v4, a3);
  }

  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1000C1AFC(v4, v6);
}

id sub_1000C36F4()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() userWithDSID:v0];

  return v1;
}

id sub_1000C3758(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithTopic:v5 pushEnvironment:a3];

  return v6;
}

uint64_t sub_1000C37EC()
{
  sub_1000657D4();
  *(*(v0 + 16) + 208) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  sub_1000C453C(v1);

  return sub_1000C387C();
}

uint64_t sub_1000C387C()
{
  sub_1000657D4();
  *(v1 + 184) = v0;

  return _swift_task_switch(sub_1000C3908, v0, 0);
}

uint64_t sub_1000C3908()
{
  v1 = *(v0[23] + 112);
  v0[24] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1000C3AEC;
    v2 = swift_continuation_init();
    v3 = sub_1000443DC(&qword_1006CC7A0);
    sub_1000C44FC(v3);
    sub_1000C44E4(COERCE_DOUBLE(1107296256));
    v0[12] = v4;
    v0[13] = &unk_100694E80;
    v0[14] = v2;
    [v1 activeUsersWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468();
    }

    v12 = type metadata accessor for Logger();
    sub_100097D98(v12, qword_1006CC630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v14))
    {
      v15 = sub_1000541D8();
      sub_100077908(v15);
      sub_10007FD74(&_mh_execute_header, v16, v17, "PushManagerPDS has nil PDSRegistrar - Can't unregister dsid");
      sub_1000488AC();
    }

    sub_10006574C();

    return v18();
  }
}

uint64_t sub_1000C3AEC()
{
  sub_1000657D4();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_1000C3EB0;
  }

  else
  {
    v5 = sub_1000C3C34;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000C3C34()
{
  v1 = v0[21];
  v2 = sub_1000591F0(v1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      v10 = v0[24];

      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1000981E8();
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v6 = v0[24];
    v0[10] = 0;
    v7 = [v6 removeAllRegistrationsFromUser:v5 error:v0 + 10];
    v8 = v0[10];
    if (!v7)
    {
      break;
    }

    v9 = v8;
  }

  v11 = v8;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 == -1)
  {
    goto LABEL_12;
  }

LABEL_20:
  sub_1000C4468();
LABEL_12:
  v12 = type metadata accessor for Logger();
  sub_100097D98(v12, qword_1006CC630);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  if (v15)
  {
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    sub_1000C458C(4.8149e-34);
    sub_1000C45AC();
    v18 = sub_100052F7C();

    *(v17 + 4) = v18;
    sub_1000C456C(&_mh_execute_header, v19, v20, "Error thrown unregistering Push user: %s");
    sub_100044850(v23);
    sub_1000488AC();
    sub_1000488AC();
  }

  else
  {
  }

LABEL_15:
  sub_10006574C();

  return v21();
}

uint64_t sub_1000C3EB0()
{
  v1 = *(v0 + 200);
  swift_willThrow();
  v2 = *(v0 + 200);
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468();
  }

  v3 = type metadata accessor for Logger();
  sub_100097D98(v3, qword_1006CC630);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    sub_1000C458C(4.8149e-34);
    sub_1000C45AC();
    v9 = sub_100052F7C();

    *(v8 + 4) = v9;
    sub_1000C456C(&_mh_execute_header, v10, v11, "Error thrown unregistering Push user: %s");
    sub_100044850(v14);
    sub_1000488AC();
    sub_1000488AC();
  }

  else
  {
  }

  sub_10006574C();

  return v12();
}

uint64_t sub_1000C4064()
{
  if (*(v0 + 200))
  {
    [*(v0 + 192) removeObserver:?];
  }

  v1 = *(v0 + 128);

  sub_100044850((v0 + 144));

  v2 = *(v0 + 200);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C40CC()
{
  sub_1000C4064();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C4148(uint64_t a1)
{
  v10 = type metadata accessor for ASAnalyticsEvent();
  v11 = &off_100694E68;
  v2 = sub_10005351C(v9);
  sub_1000BFA88(a1, v2);
  sub_100044728(v9, v10);
  sub_1000BF244();
  v3 = String._bridgeToObjectiveC()();

  sub_1000446C4(v9, v8);
  v4 = swift_allocObject();
  sub_100046D90(v8, v4 + 16);
  v7[4] = sub_1000C429C;
  v7[5] = v4;
  sub_1000C44C4();
  v7[1] = 1107296256;
  v7[2] = sub_1000C1B68;
  v7[3] = &unk_100694EF8;
  v5 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v5);

  return sub_100044850(v9);
}

uint64_t sub_1000C4264()
{
  sub_100044850((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C42A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C42BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C42FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C433C()
{
  sub_1000657EC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000640AC;

  return sub_1000C2080();
}

uint64_t sub_1000C43EC(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CAC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C4468()
{

  return swift_once();
}

uint64_t sub_1000C44FC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000C451C@<X0>(uint64_t a1@<X8>)
{
  v3[1] = v2;
  v3[2] = v1;
  v3[3] = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C453C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

void sub_1000C456C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000C458C(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000C45AC()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[20];

  return Error.localizedDescription.getter();
}

uint64_t sub_1000C45C4()
{
  sub_1000657EC();
  v2 = v1;
  v0[28] = v3;
  v0[29] = v4;
  v0[27] = v1;
  v5 = type metadata accessor for BindingsGuesser();
  v0[30] = v5;
  sub_100077674(v5);
  v7 = *(v6 + 64);
  v0[31] = sub_100065948();
  v8 = type metadata accessor for AssessmentPayloadCacher();
  v0[32] = v8;
  sub_100077674(v8);
  v10 = *(v9 + 64);
  v0[33] = sub_100065948();
  v11 = type metadata accessor for ProfileContent();
  sub_100077674(v11);
  v13 = *(v12 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v14 = type metadata accessor for ProfileContext();
  v0[38] = v14;
  sub_1000474C0(v14);
  v0[39] = v15;
  v17 = *(v16 + 64) + 15;
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v0[45] = v18;
  sub_1000474C0(v18);
  v0[46] = v19;
  v21 = *(v20 + 64);
  v22 = sub_100065948();
  v23 = *v2;
  v24 = v2[1];
  v0[47] = v22;
  v0[48] = v23;
  v0[49] = v24;

  swift_task_alloc();
  sub_10007743C();
  v0[50] = v25;
  *v25 = v26;
  v25[1] = sub_1000C47E4;

  return sub_1000C7BE8((v0 + 2), v23, v24);
}

uint64_t sub_1000C47E4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v8;
  v3[53] = v0;

  if (v0)
  {
    v9 = v3[49];
  }

  sub_1000658F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C48F0()
{
  sub_1000CACF0();
  sub_10006ECA0();
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[27];
  v5 = v0[28];
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v0[54] = sub_1000C85B4(v0 + 2, v6, v5);
  v7 = enum case for ProfileContext.fallbackPrecomputation(_:);
  v8 = *(v4 + 104);
  v0[55] = v8;
  v0[56] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v2, v7, v3);
  sub_100069948();
  v10 = v9;
  v11 = *(v4 + 8);
  v0[57] = v11;
  v0[58] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v3);
  if (v10)
  {
    v12 = v0[47];
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v14))
    {
      v15 = sub_1000541D8();
      sub_100077640(v15);
      sub_1000773B4(&_mh_execute_header, v16, v17, "Computing fba");
      sub_10007756C();
    }

    v18 = v0[43];
    v19 = v0[38];

    sub_1000446C4((v0 + 2), (v0 + 22));
    v20 = sub_1000CA80C();
    (v8)(v20);
    swift_task_alloc();
    sub_10007743C();
    v0[59] = v21;
    *v21 = v22;
    v21[1] = sub_1000C4C50;
    v23 = v0[43];
    v24 = v0[37];
  }

  else
  {
    v26 = v0[57];
    v25 = v0[58];
    sub_1000CA82C();
    v27 = sub_1000CA80C();
    v28(v27);
    sub_1000CABF4();
    v30 = v29;
    v31 = sub_100054004();
    v26(v31);
    if (v30)
    {
      v32 = v0[47];
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (sub_1000773E0(v34))
      {
        v35 = sub_1000541D8();
        sub_100077640(v35);
        sub_1000773B4(&_mh_execute_header, v36, v37, "Computing pca");
        sub_10007756C();
      }

      v39 = v0[55];
      v38 = v0[56];
      v40 = v0[42];
      v41 = v0[38];

      sub_1000446C4((v0 + 2), (v0 + 17));
      v42 = sub_1000CA80C();
      v39(v42);
      swift_task_alloc();
      sub_10007743C();
      v0[63] = v43;
      *v43 = v44;
      sub_1000CA900(v43);
    }

    else
    {
      v46 = v0[57];
      v45 = v0[58];
      sub_1000CA82C();
      v47 = sub_1000CA80C();
      v48(v47);
      sub_1000CABF4();
      v50 = v49;

      v51 = sub_100054004();
      v46(v51);
      if (v50)
      {
        v52 = v0[47];
        Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (sub_1000773E0(v53))
        {
          v54 = sub_1000541D8();
          sub_100077640(v54);
          sub_1000773B4(&_mh_execute_header, v55, v56, "Computing pga");
          sub_10007756C();
        }

        sub_1000CAB88();
        sub_1000446C4((v0 + 2), (v0 + 12));
        v57 = sub_1000CA80C();
        v45(v57);
        swift_task_alloc();
        sub_10007743C();
        v0[67] = v58;
        *v58 = v59;
        sub_1000CA7C8(v58);
      }

      else
      {
        v60 = v0[52];
        v61 = v0[49];

        sub_1000CA8B0();
        v62 = sub_1000CAC64();
        v10(v62);
        swift_task_alloc();
        sub_10007743C();
        v0[73] = v63;
        *v63 = v64;
        sub_1000CA768(v63);
      }
    }
  }

  sub_1000CACB8();

  return sub_10007FD94(v65, v66, v67);
}

uint64_t sub_1000C4C50()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[60] = v0;

  if (v0)
  {
    sub_1000CAABC();

    v9 = sub_100065864();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[61] = v12;
    *v12 = v7;
    v12[1] = sub_1000C4DC4;
    v13 = v3[51];
    v14 = v3[52];
    v15 = v3[37];
    v16 = v3[28];
    v17 = sub_100097E58(v3[27]);

    return sub_1000C8C28(v17, v18, v19, v20, v21);
  }
}

uint64_t sub_1000C4DC4()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v3 + 496) = v0;

  if (v0)
  {
    sub_1000CAABC();
  }

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C4ED8()
{
  sub_1000CACF0();
  sub_10006ECA0();
  v2 = v0[37];
  sub_1000CA718();
  sub_1000CA348(v3, v4);
  v6 = v0[57];
  v5 = v0[58];
  sub_1000CA82C();
  v7 = sub_1000CA80C();
  v8(v7);
  sub_1000CABF4();
  v10 = v9;
  v11 = sub_100054004();
  v6(v11);
  if (v10)
  {
    v12 = v0[47];
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v14))
    {
      v15 = sub_1000541D8();
      sub_100077640(v15);
      sub_1000773B4(&_mh_execute_header, v16, v17, "Computing pca");
      sub_10007756C();
    }

    v19 = v0[55];
    v18 = v0[56];
    v20 = v0[42];
    v21 = v0[38];

    sub_1000446C4((v0 + 2), (v0 + 17));
    v22 = sub_1000CA80C();
    v19(v22);
    swift_task_alloc();
    sub_10007743C();
    v0[63] = v23;
    *v23 = v24;
    sub_1000CA900(v23);
  }

  else
  {
    v26 = v0[57];
    v25 = v0[58];
    sub_1000CA82C();
    v27 = sub_1000CA80C();
    v28(v27);
    sub_1000CABF4();
    v30 = v29;

    v31 = sub_100054004();
    v26(v31);
    if (v30)
    {
      v32 = v0[47];
      Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (sub_1000773E0(v33))
      {
        v34 = sub_1000541D8();
        sub_100077640(v34);
        sub_1000773B4(&_mh_execute_header, v35, v36, "Computing pga");
        sub_10007756C();
      }

      sub_1000CAB88();
      sub_1000446C4((v0 + 2), (v0 + 12));
      v37 = sub_1000CA80C();
      v25(v37);
      swift_task_alloc();
      sub_10007743C();
      v0[67] = v38;
      *v38 = v39;
      sub_1000CA7C8(v38);
    }

    else
    {
      v40 = v0[52];
      v41 = v0[49];

      sub_1000CA8B0();
      v42 = sub_1000CAC64();
      v1(v42);
      swift_task_alloc();
      sub_10007743C();
      v0[73] = v43;
      *v43 = v44;
      sub_1000CA768(v43);
    }
  }

  sub_1000CACB8();

  return sub_10007FD94(v45, v46, v47);
}

uint64_t sub_1000C50F4()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[64] = v0;

  if (v0)
  {
    sub_1000CAABC();

    v9 = sub_100065864();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[65] = v12;
    *v12 = v7;
    v12[1] = sub_1000C5268;
    v13 = v3[36];
    v14 = v3[29];
    v15 = sub_100097E58(v3[27]);

    return sub_1000C9314(v15, v16, v17);
  }
}

uint64_t sub_1000C5268()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 520);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v3 + 528) = v0;

  if (v0)
  {
    sub_1000CAABC();
  }

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C537C()
{
  sub_1000CACF0();
  sub_10006ECA0();
  v2 = v0[36];
  sub_1000CA718();
  sub_1000CA348(v3, v4);
  v6 = v0[57];
  v5 = v0[58];
  sub_1000CA82C();
  v7 = sub_1000CA80C();
  v8(v7);
  sub_1000CABF4();
  v10 = v9;

  v11 = sub_100054004();
  v6(v11);
  if (v10)
  {
    v12 = v0[47];
    Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v13))
    {
      v14 = sub_1000541D8();
      sub_100077640(v14);
      sub_1000773B4(&_mh_execute_header, v15, v16, "Computing pga");
      sub_10007756C();
    }

    sub_1000CAB88();
    sub_1000446C4((v0 + 2), (v0 + 12));
    v17 = sub_1000CA80C();
    v5(v17);
    swift_task_alloc();
    sub_10007743C();
    v0[67] = v18;
    *v18 = v19;
    sub_1000CA7C8(v18);
  }

  else
  {
    v20 = v0[52];
    v21 = v0[49];

    sub_1000CA8B0();
    v22 = sub_1000CAC64();
    v1(v22);
    swift_task_alloc();
    sub_10007743C();
    v0[73] = v23;
    *v23 = v24;
    sub_1000CA768(v23);
  }

  sub_1000CACB8();

  return sub_10007FD94(v25, v26, v27);
}

uint64_t sub_1000C54E0()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[68] = v0;

  if (v0)
  {
    v9 = v3[52];
    v10 = v3[49];
  }

  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000C55EC()
{
  sub_100098024();
  sub_100097F98();
  v1 = v0[49];
  v2 = v0[33];
  *v2 = v0[48];
  v2[1] = v1;
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C();
  }

  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = static AssessmentPayloadStore.shared;
  v2[2] = static AssessmentPayloadStore.shared;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  v11 = *(v6 + 28);
  v12 = v10;
  sub_100065A4C();
  sub_1000CAAB0();
  Logger.init(subsystem:category:)();
  v13 = v8 + *(v9 + 20);
  *(v13 + 24) = &type metadata for BindingsGuesserSourceFactory;
  *(v13 + 32) = &off_100694360;
  v14 = (v8 + *(v9 + 24));
  v14[3] = type metadata accessor for BindingsHelpers();
  v14[4] = &off_100694330;
  sub_10005351C(v14);
  BindingsHelpers.init()();
  sub_100065A4C();
  sub_1000CAAB0();
  Logger.init(subsystem:category:)();
  v15 = *(v5 + 40);
  v16 = swift_task_alloc();
  v0[69] = v16;
  *v16 = v0;
  v16[1] = sub_1000C5788;
  v17 = v0[31];
  sub_100097DB0();

  return sub_1000A9794();
}

uint64_t sub_1000C5788()
{
  sub_100068324();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;
  v6 = v3[69];
  v7 = v3[31];
  v8 = *v0;
  *v5 = *v0;
  v4[70] = v2;

  sub_1000CA348(v7, type metadata accessor for BindingsGuesser);
  v9 = swift_task_alloc();
  v4[71] = v9;
  *v9 = v8;
  v9[1] = sub_1000C5928;
  v10 = v3[33];
  v11 = v3[28];
  sub_100097E58(v3[35]);

  return sub_1000D5600();
}

uint64_t sub_1000C5928()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *(v4 + 560);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v9 + 576) = v0;

  sub_1000658F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C5A3C()
{
  sub_1000657EC();
  v2 = v0[35];
  v3 = v0[33];
  sub_1000CA794();
  sub_1000CA348(v4, v5);
  sub_1000CA718();
  sub_1000CA348(v2, v6);
  sub_1000CA8B0();
  v7 = sub_1000CAC64();
  v1(v7);
  swift_task_alloc();
  sub_10007743C();
  v0[73] = v8;
  *v8 = v9;
  v10 = sub_1000CA768(v8);

  return sub_10007FD94(v10, v11, v12);
}

uint64_t sub_1000C5AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v16 = v14[46];
  v15 = v14[47];
  v17 = v14[45];
  v18 = v14[35];
  v19 = v14[33];
  sub_1000CA794();
  sub_1000CA348(v20, v21);
  (*(v16 + 8))(v15, v17);
  sub_100044850(v14 + 2);
  sub_1000CA718();
  sub_1000CA348(v18, v22);
  v23 = v14[72];
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C5BE4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[74] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[75] = v12;
    *v12 = v7;
    v12[1] = sub_1000C5D34;
    v13 = sub_100097E58(v3[34]);

    return sub_1000C97E8(v13);
  }
}

uint64_t sub_1000C5D34()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  *(v8 + 608) = v0;

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C5E2C()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[40];
  v8 = v0[41];
  v13 = v0[37];
  v14 = v0[36];
  v9 = v0[34];
  v15 = v0[35];
  v16 = v0[33];
  v17 = v0[31];
  sub_1000CA718();
  sub_1000CA348(v9, v10);
  (*(v1 + 8))(v2, v3);
  sub_100044850(v0 + 2);

  sub_1000CA840();

  return v11();
}

uint64_t sub_1000C5F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = *(v14 + 424);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  v17 = *(v14 + 480);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C60E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v16 = v14[46];
  v15 = v14[47];
  v17 = v14[45];
  v18 = v14[37];
  sub_1000CA718();
  sub_1000CA348(v19, v20);
  v21 = sub_1000CAB0C();
  v22(v21);
  sub_100044850(v14 + 2);
  v23 = v14[62];
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  v17 = *(v14 + 512);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v16 = v14[46];
  v15 = v14[47];
  v17 = v14[45];
  v18 = v14[36];
  sub_1000CA718();
  sub_1000CA348(v19, v20);
  v21 = sub_1000CAB0C();
  v22(v21);
  sub_100044850(v14 + 2);
  v23 = v14[66];
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  v17 = *(v14 + 544);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  v17 = *(v14 + 592);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v16 = v14[46];
  v15 = v14[47];
  v17 = v14[45];
  v18 = v14[34];
  sub_1000CA718();
  sub_1000CA348(v19, v20);
  v21 = sub_1000CAB0C();
  v22(v21);
  sub_100044850(v14 + 2);
  v23 = v14[76];
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t Data.uuid.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  v5 = 1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v6 = v6;
LABEL_6:
      if (v6 == 16)
      {
        if (v4 == 2)
        {
          v12 = *(a1 + 24);
          a1 = *(a1 + 16);
          v11 = v12;
          goto LABEL_12;
        }

        if (v4 != 1)
        {
          UUID.init(uuid:)();
          goto LABEL_14;
        }

        v10 = a1 >> 32;
        if (a1 >> 32 >= a1)
        {
          a1 = a1;
          v11 = v10;
LABEL_12:
          sub_1000CA2B4(a1, v11);
LABEL_14:
          v5 = 0;
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
        JUMPOUT(0x1000C676CLL);
      }

LABEL_15:
      v13 = type metadata accessor for UUID();

      return sub_1000485F8(a3, v5, 1, v13);
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_15;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

unsigned __int8 *sub_1000C677C(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 1);
    v2 = result[7];
    v3 = result[6];
    v4 = result[5];
    v5 = result[4];
    v6 = result[3];
    v7 = result[2];
    v8 = result[1];
    v9 = *result;
    return UUID.init(uuid:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C67DC()
{
  sub_1000657D4();
  v0[18] = v1;
  v2 = sub_1000443DC(&qword_1006CA4A0);
  sub_100077674(v2);
  v4 = *(v3 + 64);
  v0[19] = sub_100065948();
  v5 = type metadata accessor for UUID();
  v0[20] = v5;
  sub_1000474C0(v5);
  v0[21] = v6;
  v8 = *(v7 + 64);
  v0[22] = sub_100065948();
  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C68A4()
{
  v4 = *(v1 + 144);
  *(v1 + 184) = [objc_opt_self() sharedInstance];
  v5 = *(v4 + 32);
  *(v1 + 264) = v5;
  v6 = 1 << v5;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);

  if (!v8)
  {
    while (1)
    {
      sub_1000CAC70();
      if (v9 == v10)
      {
        break;
      }

      sub_1000CAC84();
    }

    v20 = *(v1 + 176);
    v22 = *(v1 + 144);
    v21 = *(v1 + 152);

    sub_1000CA840();
    sub_1000AF72C();

    __asm { BRAA            X1, X16 }
  }

  while (2)
  {
    sub_1000CA850(*(v1 + 144));
    switch(v11)
    {
      case 1:
        if (__OFSUB__(v4, v0))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v12 = v4 - v0;
LABEL_13:
        v15 = sub_100081220();
        sub_100046D38(v15, v16);
LABEL_14:
        if (v12 != 16)
        {
LABEL_15:
          v17 = *(v1 + 152);
          v4 = *(v1 + 160);
          v18 = sub_100081220();
          sub_1000448B0(v18, v19);
          sub_1000CAD20();
          continue;
        }

        if (v3 == 2)
        {
          v37 = *(v0 + 16);
          v38 = sub_100081220();
          v40 = sub_100046D38(v38, v39);
          sub_1000CAB70(v40, v41, v42, v43, v44, v45, v46, v47, v87, v89, v92, v94, v96, v98, v99, v100, v102);
          if (__DataStorage._bytes.getter())
          {
            v48 = sub_1000CAD08();
            if (__OFSUB__(v37, v48))
            {
              goto LABEL_41;
            }

            v49 = v37 - v48 + v3;
          }

          else
          {
            v49 = 0;
          }

          __DataStorage._length.getter();
          if (!v49)
          {
            __break(1u);
            goto LABEL_32;
          }

LABEL_34:
          sub_1000CAA10();
        }

        else
        {
          if (v3 == 1)
          {
            if (v0 <= v0 >> 32)
            {
              v25 = sub_100081220();
              v27 = sub_100046D38(v25, v26);
              sub_1000CAB70(v27, v28, v29, v30, v31, v32, v33, v34, v87, v89, v92, v94, v96, v98, v99, v100, v102);
              if (__DataStorage._bytes.getter())
              {
                v35 = sub_1000CAD08();
                if (!__OFSUB__(v0, v35))
                {
                  v36 = v0 - v35 + v3;
                  goto LABEL_33;
                }

LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                JUMPOUT(0x1000C6C3CLL);
              }

LABEL_32:
              v36 = 0;
LABEL_33:
              __DataStorage._length.getter();
              if (!v36)
              {
                goto LABEL_43;
              }

              goto LABEL_34;
            }

LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v91 = *(v1 + 152);
          v50 = sub_100081220();
          v52 = sub_100046D38(v50, v51);
          sub_1000CAB70(v52, v53, v54, v55, v56, v57, v58, v59, v87, v91, v0 >> 24, v0 >> 16, v0 >> 8, HIBYTE(v0), HIWORD(v0), v0 >> 40, v102);
          sub_1000CA988();
        }

        UUID.init(uuid:)();
        v60 = *(v1 + 176);
        v101 = *(v1 + 184);
        v62 = *(v1 + 160);
        v61 = *(v1 + 168);
        v63 = *(v1 + 152);
        v64 = sub_100081220();
        sub_1000448B0(v64, v65);
        v66 = sub_1000CABA4();
        v67(v66);
        v68 = sub_100081220();
        sub_100046D38(v68, v69);
        v70 = sub_1000CAAD8();
        sub_100046D38(v70, v71);
        v72 = sub_100081220();
        sub_1000448B0(v72, v73);
        sub_1000CAAD8();
        *(v1 + 240) = Data._bridgeToObjectiveC()();
        v74 = sub_1000CAAD8();
        sub_1000448B0(v74, v75);
        UUID.uuidString.getter();
        *(v1 + 248) = String._bridgeToObjectiveC()();

        *(v1 + 16) = v1;
        sub_1000CA9DC();
        v76 = sub_1000443DC(&qword_1006CC4B0);
        sub_1000CA968(v76);
        *(v1 + 88) = 1107296256;
        v77 = sub_1000CA94C(&unk_100695080, v88, v90, v93, v95, v97, v1 + 24, v1 + 96, v101);
        sub_1000CACD0(v77, "cacheData:forKey:andCategory:completion:");
        sub_1000AF72C();

        return _swift_continuation_await(v78, v79, v80, v81, v82, v83, v84, v85);
      case 2:
        v14 = *(v0 + 16);
        v13 = *(v0 + 24);
        v12 = v13 - v14;
        if (!__OFSUB__(v13, v14))
        {
          goto LABEL_13;
        }

        goto LABEL_39;
      case 3:
        goto LABEL_15;
      default:
        v12 = BYTE6(v2);
        goto LABEL_14;
    }
  }
}

uint64_t sub_1000C6C4C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C6D48()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  sub_1000448B0(*(v0 + 208), *(v0 + 216));
  sub_1000448B0(v3, v4);
  v8 = *(v6 + 8);
  v9 = sub_100054004();
  v10(v9);

  v11 = *(v0 + 200);
  if (((*(v0 + 192) - 1) & *(v0 + 192)) == 0)
  {
    while (!__OFADD__(v11, 1))
    {
      sub_1000CAC70();
      if (v12 == v13)
      {
        v23 = *(v0 + 176);
        v25 = *(v0 + 144);
        v24 = *(v0 + 152);

        sub_1000CA840();
        sub_1000AF72C();

        __asm { BRAA            X1, X16 }
      }

      sub_1000CAC84();
    }

    __break(1u);
    goto LABEL_28;
  }

  while (2)
  {
    sub_1000CA850(*(v0 + 144));
    switch(v14)
    {
      case 1:
        if (__OFSUB__(v4, v3))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v15 = v4 - v3;
LABEL_11:
        v18 = sub_100081220();
        sub_100046D38(v18, v19);
LABEL_12:
        if (v15 != 16)
        {
LABEL_13:
          v20 = *(v0 + 152);
          v4 = *(v0 + 160);
          v21 = sub_100081220();
          sub_1000448B0(v21, v22);
          sub_1000CAD20();
          continue;
        }

        if (v2 == 2)
        {
          v40 = *(v3 + 16);
          v41 = sub_100081220();
          v43 = sub_100046D38(v41, v42);
          sub_1000CAB70(v43, v44, v45, v46, v47, v48, v49, v50, v91, v92, v94, v95, v96, v97, v98, v99, v101);
          if (!__DataStorage._bytes.getter())
          {
LABEL_28:
            v52 = 0;
LABEL_29:
            __DataStorage._length.getter();
            if (!v52)
            {
              __break(1u);
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          v51 = sub_1000CAD08();
          if (!__OFSUB__(v40, v51))
          {
            v52 = &v2[v40 - v51];
            goto LABEL_29;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v2 != 1)
        {
          v93 = *(v0 + 152);
          v53 = sub_100081220();
          v55 = sub_100046D38(v53, v54);
          sub_1000CAB70(v55, v56, v57, v58, v59, v60, v61, v62, v91, v93, v3 >> 24, v3 >> 16, v3 >> 8, HIBYTE(v3), HIWORD(v3), v3 >> 40, v101);
          sub_1000CA988();
          goto LABEL_34;
        }

        if (v3 > v3 >> 32)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v28 = sub_100081220();
        v30 = sub_100046D38(v28, v29);
        sub_1000CAB70(v30, v31, v32, v33, v34, v35, v36, v37, v91, v92, v94, v95, v96, v97, v98, v99, v101);
        if (__DataStorage._bytes.getter())
        {
          v38 = sub_1000CAD08();
          if (!__OFSUB__(v3, v38))
          {
            v39 = &v2[v3 - v38];
            goto LABEL_32;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          JUMPOUT(0x1000C70D4);
        }

LABEL_31:
        v39 = 0;
LABEL_32:
        __DataStorage._length.getter();
        if (!v39)
        {
          goto LABEL_42;
        }

LABEL_33:
        sub_1000CAA10();
LABEL_34:
        UUID.init(uuid:)();
        v63 = *(v0 + 176);
        v65 = *(v0 + 160);
        v64 = *(v0 + 168);
        v100 = *(v0 + 184);
        v66 = *(v0 + 152);
        v67 = sub_100081220();
        sub_1000448B0(v67, v68);
        v69 = sub_1000CABA4();
        v70(v69);
        v71 = sub_100081220();
        sub_100046D38(v71, v72);
        v73 = sub_1000CAAD8();
        sub_100046D38(v73, v74);
        v75 = sub_100081220();
        sub_1000448B0(v75, v76);
        sub_1000CAAD8();
        *(v0 + 240) = Data._bridgeToObjectiveC()();
        v77 = sub_1000CAAD8();
        sub_1000448B0(v77, v78);
        UUID.uuidString.getter();
        *(v0 + 248) = String._bridgeToObjectiveC()();

        *(v0 + 16) = v0;
        sub_1000CA9DC(v79);
        v80 = sub_1000443DC(&qword_1006CC4B0);
        sub_1000CA968(v80);
        *(v0 + 88) = 1107296256;
        v81 = sub_1000CA94C(&unk_100695080, v91, v92, v94, v95, v96, v0 + 24, v0 + 96, v100);
        sub_1000CACD0(v81, "cacheData:forKey:andCategory:completion:");
        sub_1000AF72C();

        return _swift_continuation_await(v82, v83, v84, v85, v86, v87, v88, v89);
      case 2:
        v17 = *(v3 + 16);
        v16 = *(v3 + 24);
        v15 = v16 - v17;
        if (!__OFSUB__(v16, v17))
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      case 3:
        goto LABEL_13;
      default:
        v15 = BYTE6(v7);
        goto LABEL_12;
    }
  }
}

uint64_t sub_1000C70E4()
{
  v1 = v0[32];
  v13 = v0[29];
  v14 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v15 = v0[19];
  v16 = v0[30];
  swift_willThrow();

  sub_1000448B0(v4, v3);
  sub_1000448B0(v2, v13);
  (*(v7 + 8))(v5, v8);

  sub_10006574C();
  v11 = v0[32];

  return v10();
}

uint64_t sub_1000C71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return sub_1000772C4(sub_1000C71FC);
}

uint64_t sub_1000C71FC()
{
  sub_1000CACF0();
  sub_10006ECA0();
  isa = v0[20].super.isa;
  v1 = v0[21].super.isa;
  v4 = v0[18].super.isa;
  v3 = v0[19].super.isa;
  v0[22].super.isa = [objc_opt_self() sharedInstance];
  v0[23].super.isa = Data._bridgeToObjectiveC()().super.isa;
  v0[24].super.isa = String._bridgeToObjectiveC()();
  v0[2].super.isa = v0;
  v0[3].super.isa = sub_1000C7344;
  v5 = swift_continuation_init();
  v6 = sub_1000443DC(&qword_1006CC4B0);
  sub_1000CA9BC(v6);
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_1000BCF40;
  v0[13].super.isa = &unk_100695058;
  v0[14].super.isa = v5;
  v7 = sub_1000CAAA0();
  [v7 v8];
  sub_1000CACB8();

  return _swift_continuation_await(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000C7344()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C7440()
{
  sub_1000657D4();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  sub_1000CA840();

  return v3();
}

uint64_t sub_1000C74A4()
{
  sub_100068324();
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  sub_10006574C();
  v6 = v0[25];

  return v5();
}

uint64_t sub_1000C7520(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_1000772C4(sub_1000C7538);
}

uint64_t sub_1000C7538()
{
  sub_100068324();
  v2 = v0[20];
  v1 = v0[21];
  v3 = [objc_opt_self() sharedInstance];
  v0[22] = v3;
  v4 = String._bridgeToObjectiveC()();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C767C;
  v5 = swift_continuation_init();
  v6 = sub_1000443DC(&qword_1006CC7D0);
  sub_1000CA9BC(v6);
  v0[11] = 1107296256;
  v0[12] = sub_1000C7860;
  v0[13] = &unk_100695030;
  v0[14] = v5;
  [v3 fetchDataForKey:v4 andCategory:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000C767C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C7778()
{
  sub_1000657EC();
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1000C77F0()
{
  sub_1000657EC();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  sub_10006574C();
  v5 = v0[24];

  return v4();
}

uint64_t sub_1000C7860(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000C4464(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    return sub_1000C1B1C(v5, v9, v11);
  }
}

uint64_t sub_1000C7904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100065570;

  return sub_1000C67DC();
}

uint64_t sub_1000C7998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100065570;

  return sub_1000C71E0(a1, a2, a3, a4);
}

uint64_t sub_1000C7A4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C7AE8;

  return sub_1000C7520(a1, a2);
}

uint64_t sub_1000C7AE8()
{
  sub_1000657EC();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_1000C7BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_1000443DC(&qword_1006C9E20) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7C80, 0, 0);
}

uint64_t sub_1000C7C80()
{
  sub_1000657EC();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = type metadata accessor for TaskPriority();
  sub_1000485F8(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  v6 = sub_1000B09A8();
  v0[13] = v6;
  v7 = async function pointer to Task.value.getter[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = sub_1000443DC(qword_1006CC1A8);
  v10 = sub_1000443DC(&unk_1006CB550);
  *v8 = v0;
  v8[1] = sub_1000C7DC8;

  return Task.value.getter(v0 + 2, v6, v9, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000C7DC8()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 104);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v9 + 120) = v0;

  sub_1000658F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C7EDC()
{
  sub_1000657EC();
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  sub_100046D90((v0 + 16), *(v0 + 72));

  v4 = *(v0 + 8);
  v5 = sub_100065A4C();

  return v6(v5);
}

uint64_t sub_1000C7F5C()
{
  sub_1000657D4();
  v1 = *(v0 + 96);

  sub_10006574C();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_1000C7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[176] = a5;
  v5[175] = a4;
  v5[174] = a1;
  return _swift_task_switch(sub_1000C7FE0, 0, 0);
}

uint64_t sub_1000C7FE0()
{
  sub_10006ECA0();
  v1 = v0[176];
  v2 = v0[175];
  type metadata accessor for PrecomputationSession();
  sub_1000CA51C();

  v0[177] = PrecomputationSession.__allocating_init(workflowID:diskCommand:)();

  swift_asyncLet_begin();

  sub_1000471A4(&qword_1006CC7C8);
  swift_asyncLet_begin();
  v3 = sub_1000CAC50();

  return _swift_asyncLet_get_throwing(v3);
}

uint64_t sub_1000C80FC()
{
  *(v1 + 1424) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 656, v1 + 1336, sub_1000C82B8, v1 + 1296);
  }

  else
  {
    return sub_1000772C4(sub_1000C8138);
  }
}

void sub_1000C8138()
{
  sub_1000657D4();
  sub_1000446C4(v0 + 1336, *(v0 + 1392));

  JUMPOUT(0x100597F70);
}

uint64_t sub_1000C81B8()
{
  sub_1000657D4();
  v1 = v0[174];
  v2 = v0[173];
  *(v1 + 40) = v0[172];
  *(v1 + 48) = v2;

  v3 = sub_1000CAC50();

  return _swift_asyncLet_finish(v3, v4, v5, v6);
}

uint64_t sub_1000C825C()
{
  sub_1000657D4();
  v1 = *(v0 + 1416);

  sub_1000CA840();

  return v2();
}

uint64_t sub_1000C82F4()
{
  sub_1000657D4();
  v1 = *(v0 + 1416);

  sub_10006574C();
  v3 = *(v0 + 1424);

  return v2();
}

uint64_t sub_1000C8354(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = async function pointer to PrecomputationSession.getServerTimeSeed()[1];
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_1000C83EC;

  return PrecomputationSession.getServerTimeSeed()();
}

uint64_t sub_1000C83EC()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 48);
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = sub_100065864();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000C84D4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[5];
  if (!v1)
  {
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  *v3 = v2;
  v3[1] = v1;
  sub_1000CA840();
  return v4();
}

uint64_t sub_1000C8514(uint64_t a1)
{
  v3 = async function pointer to PrecomputationSession.fetchEncapsulatedProfile()[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000640AC;

  return PrecomputationSession.fetchEncapsulatedProfile()(a1);
}

uint64_t sub_1000C85B4(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v97 = a2;
  v4 = type metadata accessor for ProfileContext();
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100047544();
  v85 = v10;
  sub_1000474F8();
  __chkstk_darwin(v11);
  v13 = &v81[-v12];
  v14 = type metadata accessor for ContextualProfile();
  v15 = sub_10004EAE0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100047544();
  v91 = v20;
  sub_1000474F8();
  __chkstk_darwin(v21);
  v88 = &v81[-v22];
  sub_1000474F8();
  __chkstk_darwin(v23);
  v86 = &v81[-v24];
  sub_1000474F8();
  __chkstk_darwin(v25);
  v27 = &v81[-v26];
  v28 = a1[3];
  v29 = a1[4];
  v30 = sub_100044728(a1, v28);
  v101 = *(v7 + 104);
  v101(v13, enum case for ProfileContext.live(_:), v4);
  v99 = v30;
  v100 = v29;
  dispatch thunk of EncapsulatingProfile.profile(for:)();
  v90 = v7;
  v31 = *(v7 + 8);
  v95 = v4;
  v98 = v31;
  v31(v13, v4);
  v32 = v17 + 88;
  v96 = *(v17 + 88);
  LODWORD(v30) = (v96)(v27, v14);
  LODWORD(v4) = enum case for ContextualProfile.monoProfile(_:);
  v94 = v17;
  v34 = *(v17 + 8);
  v33 = v17 + 8;
  v35 = v27;
  v36 = v14;
  v93 = v34;
  (v34)(v35, v14);
  if (v30 == v4)
  {
    v37 = v101;
    v38 = v95;
    v39 = *(v97 + 48);
    v40 = *(v97 + 56);
    sub_1000443DC(&qword_1006CC7B8);
    v41 = *(v90 + 72);
    v42 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v43 = swift_allocObject();
    v44 = v43;
    *(v43 + 16) = xmmword_1005CB870;
    if ((v40 & 1) != 0 || (v39 & v92) == 0)
    {
      v45 = &enum case for ProfileContext.dataframePrecomputation(_:);
    }

    else
    {
      v45 = &enum case for ProfileContext.payloadPrecomputation(_:);
    }

    v37(v43 + v42, *v45, v38);
    return sub_1000C16CC(v44);
  }

  else
  {
    v102 = &_swiftEmptySetSingleton;
    v82 = enum case for ProfileContext.payloadPrecomputation(_:);
    v46 = v95;
    v84 = v7 + 104;
    (v101)(v13);
    v47 = v86;
    v90 = v28;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v48 = v46;
    v98(v13, v46);
    v89 = v32;
    v49 = (v96)(v47, v36);
    v87 = enum case for ContextualProfile.multiProfile(_:);
    v83 = v33;
    if (v49 == enum case for ContextualProfile.multiProfile(_:))
    {
      (*(v94 + 96))(v47, v36);
      v50 = *(*v47 + 16);

      v51 = v13;
      if (v50 && (*(v97 + 56) & 1) == 0 && (*(v97 + 48) & v92) != 0)
      {
        v101(v85, v82, v48);
        v52 = sub_1000CACAC();
        sub_10009F3D8(v52, v53);
        v98(v13, v48);
      }
    }

    else
    {
      (v93)(v47, v36);
      v51 = v13;
    }

    v101(v51, enum case for ProfileContext.dataframePrecomputation(_:), v48);
    v55 = v88;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v56 = v98;
    v98(v51, v48);
    v57 = sub_1000CAAE4();
    v58 = v96;
    v59 = v96(v57);
    if (v59 == v87)
    {
      v60 = *(v94 + 96);
      v61 = sub_1000CAAE4();
      v62(v61);
      v63 = *(*v55 + 16);

      if (v63 && ((*(v97 + 56) & 1) != 0 || (*(v97 + 48) & v92) == 0))
      {
        v64 = v85;
        sub_1000CAB2C();
        v65();
        sub_10009F3D8(v51, v64);
        v66 = sub_1000CACAC();
        v56(v66);
      }
    }

    else
    {
      v67 = sub_1000CAAE4();
      v93(v67);
    }

    sub_1000CAB2C();
    v68();
    v69 = v91;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v70 = sub_1000CACAC();
    v56(v70);
    v71 = sub_1000CAAE4();
    v72 = v58(v71);
    if (v72 == v87)
    {
      v73 = *(v94 + 96);
      v74 = sub_1000CAAE4();
      v75(v74);
      v76 = *(*v69 + 16);

      if (v76)
      {
        v77 = v85;
        sub_1000CAB2C();
        v78();
        sub_10009F3D8(v51, v77);
        v79 = sub_1000CACAC();
        v56(v79);
      }
    }

    else
    {
      v80 = sub_1000CAAE4();
      v93(v80);
    }

    return v102;
  }
}

uint64_t sub_1000C8C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for ODIBindingsDict();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for BindingsHelpers();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = type metadata accessor for AssessmentPayloadCacher();
  v5[17] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8D7C, 0, 0);
}

uint64_t sub_1000C8D7C()
{
  sub_1000657EC();
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  *(v0 + 16) = *v3;
  *v1 = *v3;
  sub_1000CA3A8(v0 + 16, v0 + 32);
  v4 = qword_1006C9828;

  if (v4 != -1)
  {
    sub_1000BEF0C();
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = static AssessmentPayloadStore.shared;
  *(v1 + 16) = static AssessmentPayloadStore.shared;
  *(v6 + 24) = v10;
  *(v6 + 32) = v9;
  v12 = *(v5 + 28);
  v13 = v11;
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  BindingsHelpers.init()();
  ODIBindingsDict.init(dictionaryLiteral:)();
  v14 = async function pointer to BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)[1];
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_1000C8EBC;
  v16 = *(v0 + 128);
  v17 = sub_100097E58(*(v0 + 104));

  return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v17);
}

uint64_t sub_1000C8EBC()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C8FA0()
{
  sub_100068324();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1000443DC(&qword_1006CA6B0);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[20] = v6;
  *(v6 + 16) = xmmword_1005CB870;
  (*(v2 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1000C90A4;
  v8 = v0[18];
  v9 = v0[7];
  sub_100097E58(v0[8]);

  return sub_1000D5600();
}

uint64_t sub_1000C90A4()
{
  sub_1000657D4();
  v2 = v0;
  sub_1000657F8();
  sub_10007CAE0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *(v5 + 160);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;
  *(v10 + 176) = v2;

  swift_setDeallocating();
  sub_1000CEE0C();
  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000C91C0()
{
  sub_100068324();
  v2 = sub_1000CAAF0();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = sub_100065A4C();
  v6(v5);
  sub_1000CA794();
  sub_1000CA348(v0, v7);

  sub_1000CA840();

  return v8();
}

uint64_t sub_1000C9268()
{
  sub_100068324();
  v3 = sub_1000CAAF0();
  v4(v3);
  v5 = *(v2 + 8);
  v6 = sub_100065A4C();
  v7(v6);
  sub_1000CA794();
  sub_1000CA348(v0, v8);

  sub_10006574C();
  v10 = *(v1 + 176);

  return v9();
}

uint64_t sub_1000C9314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for ODIBindingsDict();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C93D8, 0, 0);
}

uint64_t sub_1000C93D8()
{
  sub_1000657D4();
  v2 = v0[2];
  v1 = v0[3];
  v0[8] = *v2;
  v0[9] = v2[1];
  v3 = *sub_100044728(v1, v1[3]);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1000C9480;

  return sub_100070AC0();
}

uint64_t sub_1000C9480()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_10007CAE0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;
  *(v9 + 88) = v2;

  return _swift_task_switch(sub_1000C956C, v2, 0);
}

uint64_t sub_1000C956C()
{
  sub_1000657D4();
  v1 = v0[11];
  v2 = v0[7];
  sub_10008478C();
  sub_100084FA0();

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1000C961C;
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  sub_100097E58(v0[4]);

  return sub_1000D6670();
}

uint64_t sub_1000C961C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C9714()
{
  sub_1000657D4();
  v0 = sub_1000CAC3C();
  v1(v0);

  sub_1000CA840();

  return v2();
}

uint64_t sub_1000C977C()
{
  sub_1000657D4();
  v1 = sub_1000CAC3C();
  v2(v1);

  sub_10006574C();
  v4 = *(v0 + 104);

  return v3();
}

uint64_t sub_1000C9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = *(v12 + 208);
  *(v12 + 216) = [objc_opt_self() sharedInstance];
  v14 = type metadata accessor for ProfileContent();
  *(v12 + 224) = v14;
  v15 = *(v13 + *(v14 + 56));
  *(v12 + 232) = v15;
  v16 = *(v15 + 32);
  *(v12 + 328) = v16;
  v17 = -1;
  v18 = -1 << v16;
  if (-(-1 << v16) < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);

  if (v19)
  {
    v21 = 0;
LABEL_8:
    *(v12 + 240) = v19;
    *(v12 + 248) = v21;
    v23 = *(v20 + 48);
    v24 = *(v20 + 56);
    sub_1000CA92C(__clz(__rbit64(v19)) | (v21 << 6));

    sub_1000443DC(&qword_1006CA6C0);
    *(v12 + 256) = sub_1000CAC0C();

    *(v12 + 264) = sub_1000CAC24();

    *(v12 + 16) = v12;
    *(v12 + 24) = sub_1000C9B20;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(&unk_100694F98);
    sub_1000CAAB0();
    [v25 v26];
    goto LABEL_9;
  }

  v22 = 0;
  while (((63 - v18) >> 6) - 1 != v22)
  {
    v21 = v22 + 1;
    v19 = *(v20 + 8 * v22++ + 72);
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v35 = *(v12 + 208);

  v36 = *(v35 + *(v14 + 60));
  sub_1000CAA50();
  if (v18)
  {
    *(v12 + 288) = v18;
    *(v12 + 296) = 0;
    v39 = *(v12 + 216);
    sub_1000CA8D4(0);

    sub_1000443DC(&qword_1006CA6C0);
    v40.super.isa = sub_1000CAC0C().super.isa;
    sub_1000CABD8(v40.super.isa);
    v41 = sub_1000CAC24();
    sub_1000CAB54(v41);
    *(v12 + 80) = v12;
    *(v12 + 88) = sub_1000C9EE4;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(&unk_100694FC0);
    v42 = sub_1000CAAA0();
    [v42 v43];
LABEL_9:
    sub_100097DB0();

    return _swift_continuation_await(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_1000CAB3C();
  while (v38 != v37)
  {
    sub_1000CAC98();
  }

  sub_1000CA840();
  sub_100097DB0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_1000C9B20()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v14 = *(v12 + 256);

  v23 = *(v12 + 248);
  v24 = (*(v12 + 240) - 1) & *(v12 + 240);
  if (v24)
  {
    v15 = *(v12 + 232);
LABEL_7:
    *(v12 + 240) = v24;
    *(v12 + 248) = v23;
    v26 = *(v12 + 216);
    v27 = __clz(__rbit64(v24)) | (v23 << 6);
    v28 = *(v15 + 48);
    v29 = *(v15 + 56);
    sub_1000CA92C(v27);

    sub_1000443DC(&qword_1006CA6C0);
    *(v12 + 256) = sub_1000CAC0C();

    *(v12 + 264) = sub_1000CAC24();

    *(v12 + 16) = v12;
    *(v12 + 24) = sub_1000C9B20;
    v30 = swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    *(v12 + 176) = v30;
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    v31 = &unk_100694F98;
LABEL_8:
    *(v12 + 160) = sub_1000BCF40;
    *(v12 + 168) = v31;
    v32 = sub_1000CAAA0();
    [v32 v33];
    sub_100097DB0();

    return _swift_continuation_await(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return _swift_continuation_await(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v15 = *(v12 + 232);
      if (v25 >= (((1 << *(v12 + 328)) + 63) >> 6))
      {
        break;
      }

      v24 = *(v15 + 8 * v25 + 64);
      ++v23;
      if (v24)
      {
        v23 = v25;
        goto LABEL_7;
      }
    }

    v34 = *(v12 + 224);
    v35 = *(v12 + 208);

    v36 = *(v35 + *(v34 + 60));
    sub_1000CAA50();
    if (v13)
    {
      *(v12 + 288) = v13;
      *(v12 + 296) = 0;
      v39 = *(v12 + 216);
      sub_1000CA8D4(0);

      sub_1000443DC(&qword_1006CA6C0);
      v40.super.isa = sub_1000CAC0C().super.isa;
      sub_1000CABD8(v40.super.isa);
      v41 = sub_1000CAC24();
      sub_1000CAB54(v41);
      *(v12 + 80) = v12;
      *(v12 + 88) = sub_1000C9EE4;
      v42 = swift_continuation_init();
      *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
      *(v12 + 176) = v42;
      sub_1000CA7AC();
      *(v12 + 152) = 1107296256;
      v31 = &unk_100694FC0;
      goto LABEL_8;
    }

    sub_1000CAB3C();
    while (v38 != v37)
    {
      sub_1000CAC98();
    }

    sub_1000CA840();
    sub_100097DB0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_1000C9EE4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 112);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = *(v12 + 304);

  v22 = *(v12 + 296);
  v23 = (*(v12 + 288) - 1) & *(v12 + 288);
  if (v23)
  {
    v24 = *(v12 + 280);
LABEL_7:
    *(v12 + 288) = v23;
    *(v12 + 296) = v22;
    v26 = *(v12 + 216);
    sub_1000CA8D4(v22);

    sub_1000443DC(&qword_1006CA6C0);
    v27.super.isa = sub_1000CAC0C().super.isa;
    sub_1000CABD8(v27.super.isa);
    v28 = sub_1000CAC24();
    sub_1000CAB54(v28);
    *(v12 + 80) = v12;
    *(v12 + 88) = sub_1000C9EE4;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    *(v12 + 144) = _NSConcreteStackBlock;
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(&unk_100694FC0);
    v29 = sub_1000CAAA0();
    [v29 v30];
    sub_100097DB0();

    return _swift_continuation_await(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return _swift_continuation_await(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      if (v25 >= (((1 << *(v12 + 329)) + 63) >> 6))
      {
        break;
      }

      v23 = *(*(v12 + 280) + 8 * v25 + 64);
      ++v22;
      if (v23)
      {
        v22 = v25;
        goto LABEL_7;
      }
    }

    sub_1000CA840();
    sub_100097DB0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_1000CA1A4()
{
  sub_100068324();
  v1 = v0[34];
  swift_willThrow();
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[27];

  sub_10006574C();

  return v7();
}

uint64_t sub_1000CA22C()
{
  sub_100068324();
  v1 = v0[40];
  swift_willThrow();
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[27];

  sub_10006574C();

  return v7();
}

unsigned __int8 *sub_1000CA2B4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    return sub_1000C677C(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000CA348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CA430()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000CA470()
{
  sub_100068324();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_10007743C();
  *(v1 + 16) = v6;
  *v6 = v7;
  sub_1000CAB1C(v6);
  sub_1000CAAB0();

  return sub_1000C7FB8(v8, v9, v10, v11, v4);
}

unint64_t sub_1000CA51C()
{
  result = qword_1006CC7C0;
  if (!qword_1006CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC7C0);
  }

  return result;
}

uint64_t sub_1000CA570()
{
  sub_1000657D4();
  swift_task_alloc();
  sub_10007743C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000CAB1C(v1);

  return sub_1000C8354(v3);
}

uint64_t sub_1000CA5FC()
{
  sub_1000657D4();
  swift_task_alloc();
  sub_10007743C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000CAB1C(v1);

  return sub_1000C8514(v3);
}

uint64_t sub_1000CA698(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA730()
{
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[34];
  v11 = v0[35];
  v13 = v0[33];
  v14 = v0[31];
}

uint64_t sub_1000CA768(uint64_t a1)
{
  *(a1 + 8) = sub_1000C5BE4;
  v2 = *(v1 + 320);
  return *(v1 + 272);
}

uint64_t sub_1000CA7C8(uint64_t a1)
{
  *(a1 + 8) = sub_1000C54E0;
  v2 = *(v1 + 328);
  return *(v1 + 280);
}

void sub_1000CA7F4(uint64_t a1@<X8>)
{
  v1[20] = sub_1000BCF40;
  v1[21] = a1;
  v1[22] = v2;
}

uint64_t sub_1000CA81C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000CA82C()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[44];
  v5 = v0[38];
}

uint64_t sub_1000CA840()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000CA850(uint64_t a1@<X8>)
{
  v1[24] = v3;
  v1[25] = v2;
  v4 = (v2 << 10) | (16 * __clz(__rbit64(v3)));
  v5 = (*(a1 + 48) + v4);
  v1[26] = *v5;
  v1[27] = v5[1];
  v6 = (*(a1 + 56) + v4);
  v1[28] = *v6;
  v1[29] = v6[1];
}

uint64_t sub_1000CA8B0()
{
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[40];
  v5 = v0[38];

  return sub_1000446C4((v0 + 2), (v0 + 7));
}

uint64_t sub_1000CA8D4@<X0>(uint64_t a1@<X8>)
{
  v4 = __clz(v1) | (a1 << 6);
  v5 = (*(v2 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(*(v2 + 56) + 8 * v4);
}

uint64_t sub_1000CA900(uint64_t a1)
{
  *(a1 + 8) = sub_1000C50F4;
  v2 = *(v1 + 336);
  return *(v1 + 288);
}

uint64_t sub_1000CA92C@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + 16 * a1);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v2 + 8 * a1);
}

uint64_t sub_1000CA94C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a9;
  v10[12] = sub_1000BCF40;
  v10[13] = a1;
  v10[14] = v9;
  return result;
}

uint64_t sub_1000CA968(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000CA9BC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000CA9DC()
{
  *(v0 + 24) = sub_1000C6C4C;

  return swift_continuation_init();
}

uint64_t sub_1000CAA10()
{
  v2 = *(v1 + 152);
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[5];
  v6 = v0[4];
  v7 = v0[3];
  v8 = v0[2];
  v9 = v0[1];
  result = *v0;
  v11 = *(v0 + 1);
  return result;
}

uint64_t sub_1000CAA50()
{
  *(v0 + 280) = v1;
  v3 = *(v1 + 32);
  *(v0 + 329) = v3;
  v4 = -1;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v5 = v4 & *(v1 + 64);
}

uint64_t sub_1000CAA90()
{
  result = v0[47];
  v2 = v0[45];
  v3 = *(v0[46] + 8);
  return result;
}

uint64_t sub_1000CAABC()
{
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];
}

uint64_t sub_1000CAAF0()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = *(v0[12] + 8);
  return v0[13];
}

uint64_t sub_1000CAB54(uint64_t a1)
{
  *(v1 + 312) = a1;
}

uint64_t sub_1000CAB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_100046D38(a17, v17);
}

void sub_1000CAB88()
{
  v4 = v1[55];
  v3 = v1[56];
  v5 = v1[41];
  v6 = v1[38];
}

uint64_t sub_1000CABA4()
{
  sub_1000485F8(v2, 0, 1, v3);
  v4 = *(v1 + 32);
  return v0;
}

uint64_t sub_1000CABD8(uint64_t a1)
{
  *(v1 + 304) = a1;
}

void sub_1000CABF4()
{

  sub_100069948();
}

NSArray sub_1000CAC0C()
{

  return Array._bridgeToObjectiveC()();
}

NSString sub_1000CAC24()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_1000CAC3C()
{
  v1 = v0[5];
  v2 = *(v0[6] + 8);
  return v0[7];
}

id sub_1000CACD0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_1000CAD08()
{

  return __DataStorage._offset.getter();
}

uint64_t sub_1000CAD20()
{
  sub_1000485F8(v1, 1, 1, v0);

  return sub_1000CA698(v1);
}

uint64_t sub_1000CAD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v8);
  sub_10006EBD0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_10006EBD0();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1005CF2F0;
  v10[5] = v9;
  sub_1000CEB04(0, 0, v7, &unk_1005CF300, v10);
}

uint64_t sub_1000CAE5C()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC7D8);
  sub_100046E6C(v0, qword_1006CC7D8);
  return Logger.init(subsystem:category:)();
}

id *sub_1000CAEE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1000BE45C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_1000443DC(&qword_1006CA6C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000BE45C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = (v6 + 1);
      sub_1000534C8(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000CAFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5.super.isa];

  return v6;
}

uint64_t PJXBDBF1h0EU80dy.vWMDLV5jN1a2h2p2(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return sub_10007CAD0();
}

uint64_t sub_1000CB098()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000BE47C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    result = sub_1000CF378(v1);
    v7 = result;
    v8 = 0;
    v9 = v1 + 64;
    v48 = v5;
    v47 = v1 + 72;
    v49 = v2;
    v50 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v52 = v8;
      v53 = v5;
      v51 = v6;
      v11 = *(v1 + 56);
      v12 = (*(v1 + 48) + 16 * v7);
      v13 = v1;
      v14 = v3;
      v15 = *v12;
      v16 = v12[1];
      v17 = -*(v11 + 8 * v7);
      v18 = objc_allocWithZone(NSDate);

      v19 = [v18 initWithTimeIntervalSinceNow:v17];
      sub_1000443DC(&qword_1006CC7F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1005CC370;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 32) = v15;
      *(v20 + 40) = v16;
      v3 = v14;
      result = sub_1000591B0(0, &qword_1006CA340, NSDate_ptr);
      *(v20 + 88) = result;
      *(v20 + 64) = v19;
      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        v34 = result;
        sub_1000BE47C((v21 > 1), v22 + 1, 1);
        result = v34;
        v3 = v14;
      }

      v3[2] = (v22 + 1);
      v23 = &v3[3 * v22];
      v23[4] = 0xD000000000000023;
      v23[5] = 0x80000001005A5A20;
      v23[6] = v20;
      v24 = 1 << *(v13 + 32);
      if (v7 >= v24)
      {
        goto LABEL_28;
      }

      v1 = v13;
      v9 = v50;
      v25 = *(v50 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v53)
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = (v47 + 8 * v10);
        v29 = v10 + 1;
        while (v29 < (v24 + 63) >> 6)
        {
          v31 = *v28++;
          v30 = v31;
          v27 += 64;
          ++v29;
          if (v31)
          {
            v32 = result;
            sub_100087624(v7, v53, v51 & 1);
            result = v32;
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        v33 = result;
        sub_100087624(v7, v53, v51 & 1);
        result = v33;
      }

LABEL_19:
      v6 = 0;
      v8 = v52 + 1;
      v7 = v24;
      v5 = v48;
      if (v52 + 1 == v49)
      {
        v35 = result;
        v36 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-604800.0];
        v46[21] = v36;
        v37 = v3;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1005CB870;
        *(v38 + 56) = v35;
        *(v38 + 32) = v36;
        sub_1000443DC(&qword_1006CA680);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1005CB870;
        strcpy((inited + 32), "createdAt < %@");
        *(inited + 47) = -18;
        *(inited + 48) = v38;
        v40 = v36;
        sub_1000CF0C4(inited);
        v41 = v37;
        v46[22] = v37;
        v42 = swift_task_alloc();
        v46[23] = v42;
        *v42 = v46;
        v42[1] = sub_1000CB588;
        v43 = v46[20];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    sub_1000443DC(&qword_1006CA680);
    v41 = swift_initStackObject();
    v0[25] = v41;
    *(v41 + 16) = xmmword_1005CB870;
    strcpy((v41 + 32), "TRUEPREDICATE");
    *(v41 + 46) = -4864;
    *(v41 + 48) = _swiftEmptyArrayStorage;
    v44 = swift_task_alloc();
    v0[26] = v44;
    *v44 = v0;
    v44[1] = sub_1000CB6F0;
    v45 = v0[20];
LABEL_22:

    return sub_1000CB8F8(v41);
  }

  return result;
}

uint64_t sub_1000CB588()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v3[16] = v1;
  v3[17] = v5;
  v3[18] = v0;
  v7 = *(v6 + 184);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;
  v3[24] = v0;

  if (v0)
  {
    v10 = sub_1000CB898;
  }

  else
  {
    v11 = v3[22];

    v10 = sub_1000CB694;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000CB694()
{
  sub_1000657D4();

  v1 = *(v0 + 136);
  sub_1000CFAA4();

  return v2();
}

uint64_t sub_1000CB6F0()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  *(v5 + 216) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000CB834, 0, 0);
  }

  else
  {
    v11 = *(v5 + 200);
    swift_setDeallocating();
    sub_1000CEEB8();
    v12 = *(v9 + 8);

    return v12(v3);
  }
}

uint64_t sub_1000CB834()
{
  sub_1000657D4();
  v1 = *(v0 + 200);
  swift_setDeallocating();
  sub_1000CEEB8();
  v2 = *(v0 + 216);
  sub_10006574C();

  return v3();
}

uint64_t sub_1000CB898()
{
  sub_1000657D4();
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[24];
  sub_10006574C();

  return v4();
}

uint64_t sub_1000CB8F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000CB918, 0, 0);
}

uint64_t sub_1000CB918()
{
  sub_1000657EC();
  v1 = [*(v0 + 32) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v11 = *(v0 + 16);
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C();
    }

    v5 = type metadata accessor for Logger();
    sub_100046E6C(v5, qword_1006CC7D8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v7))
    {
      v8 = sub_1000541D8();
      sub_100077908(v8);
      sub_10007FD74(&_mh_execute_header, v9, v10, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_1000CFAA4();

  return v12();
}

uint64_t sub_1000CBAB0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000CBB94;

  return PJXBDBF1h0EU80dy.vWMDLV5jN1a2h2p2(_:)(v5);
}

uint64_t sub_1000CBB94()
{
  sub_10006ECA0();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[2];
  v11 = *v1;
  *v7 = *v1;

  v12 = v5[3];
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    v14 = sub_1000CFA4C();
    v15(v14, 0, v13);
  }

  else
  {
    v16 = sub_1000CFA4C();
    v17(v16, v4, 0);
  }

  _Block_release(v6[3]);
  v18 = v11[1];

  return v18();
}

uint64_t PJXBDBF1h0EU80dy.naB577x5bWPDZyct(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_10007CAD0();
}

uint64_t sub_1000CBD44()
{
  sub_10006ECA0();
  v1 = [*(v0 + 40) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = [objc_opt_self() fetchRequest];
    [v5 setResultType:0];
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    sub_1000443DC(&qword_1006CC4E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1005CB870;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;

    v7 = sub_1000CFA5C();
    v10 = sub_1000CAFE8(v7, v8, v9);
    [v5 setPredicate:v10];

    v11 = swift_task_alloc();
    *(v11 + 16) = v2;
    *(v11 + 24) = v5;
    sub_1000443DC(&qword_1006CC7F8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v18 = *(v0 + 16);
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C();
    }

    v12 = type metadata accessor for Logger();
    sub_100046E6C(v12, qword_1006CC7D8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v14))
    {
      v15 = sub_1000541D8();
      sub_100077908(v15);
      sub_10007FD74(&_mh_execute_header, v16, v17, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_1000CFAA4();

  return v19();
}

uint64_t sub_1000CBFA0@<X0>(void *a1@<X8>)
{
  sub_1000591B0(0, &qword_1006CC838, off_10068D798);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v5 = sub_1000591F0(result);
    if (v5)
    {
      v6 = v5;
      v15 = a1;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v6 < 0)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        [objc_allocWithZone(AssessmentPayloadRecord) initWithObject:v8];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v6 != v7);

      a1 = v15;
    }

    else
    {
    }

    v11 = 0;
    v12 = _swiftEmptyArrayStorage[2];
    while (1)
    {
      if (v12 == v11)
      {

        *a1 = _swiftEmptyArrayStorage;
        return result;
      }

      if (v11 >= _swiftEmptyArrayStorage[2])
      {
        break;
      }

      v13 = _swiftEmptyArrayStorage[v11++ + 4];
      if (v13)
      {
        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1000CC1D0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000CC2A4;

  return PJXBDBF1h0EU80dy.naB577x5bWPDZyct(_:)(v5, v7);
}

uint64_t sub_1000CC2A4()
{
  sub_100068324();
  v2 = v0;
  sub_1000657F8();
  v4 = v3;
  sub_10006564C();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  sub_1000655F4();
  *v11 = v10;

  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    isa = 0;
    v14 = v12;
  }

  else
  {
    sub_1000591B0(0, &qword_1006CC4F0, off_10068D778);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = 0;
    v14 = isa;
  }

  v15 = *(v4 + 24);
  (v15)[2](v15, isa, v12);

  _Block_release(v15);
  sub_10006574C();

  return v16();
}

uint64_t PJXBDBF1h0EU80dy.eWV8dPJG0p0nc2lk(_:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return sub_10007CAD0();
}

uint64_t sub_1000CC460()
{
  sub_100068324();
  v1 = [*(v0 + 104) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = (v0 + 16);
    sub_10005566C(0x49656C69666F7270, 0xE900000000000044, *(v0 + 96), (v0 + 56));
    if (*(v0 + 80))
    {
      sub_1000443DC(&qword_1006CC808);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 48) = 0;
        *v3 = 0u;
        *(v0 + 32) = 0u;
      }
    }

    else
    {
      sub_10004D2E8(v0 + 56, &qword_1006CA130);
      *v3 = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
    }

    sub_10004D344(v0 + 16, v0 + 56, &qword_1006CC800);
    if (*(v0 + 80))
    {
      v10 = *(v0 + 88);
      sub_100044728((v0 + 56), *(v0 + 80));
      dispatch thunk of ProfileIdentifiers.getProfileId()();
      v12 = v11;
      sub_100044850((v0 + 56));
      if (v12)
      {

        LOBYTE(v12) = 1;
      }
    }

    else
    {
      sub_10004D2E8(v0 + 56, &qword_1006CC800);
      LOBYTE(v12) = 0;
    }

    v13 = *(v0 + 96);
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = v2;
    *(v14 + 32) = v12;
    *(v14 + 40) = v3;
    NSManagedObjectContext.performAndWait<A>(_:)();

    sub_10004D2E8(v0 + 16, &qword_1006CC800);
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C();
    }

    v4 = type metadata accessor for Logger();
    sub_100046E6C(v4, qword_1006CC7D8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v6))
    {
      v7 = sub_1000541D8();
      sub_100077908(v7);
      sub_10007FD74(&_mh_execute_header, v8, v9, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_10006574C();

  return v15();
}

uint64_t sub_1000CC6CC(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v84 = a4;
  v83 = a3;
  v6 = sub_1000443DC(&qword_1006CC820);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v78 - v11;
  v12 = __chkstk_darwin(v10);
  v80 = &v78 - v13;
  v14 = __chkstk_darwin(v12);
  v79 = &v78 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = &v78 - v17;
  __chkstk_darwin(v16);
  v19 = &v78 - v18;
  v20 = sub_1000443DC(&qword_1006CA2B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000443DC(&qword_1006CC828);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v78 - v29;
  sub_10005566C(0x73676E69646E6962, 0xE800000000000000, a1, &v88);
  v86 = v30;
  if (v89)
  {
    v31 = type metadata accessor for ODIBindingsDict();
    v32 = swift_dynamicCast() ^ 1;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
    v34 = type metadata accessor for ODIBindingsDict();
    v33 = v30;
    v32 = 1;
  }

  sub_1000485F8(v33, v32, 1, v34);
  v35 = [objc_opt_self() insertNewObjectInManagedObjectContext:a2];
  sub_10005566C(0x776F6C666B726F77, 0xEA00000000004449, a1, &v88);
  v85 = a2;
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v36 = String._bridgeToObjectiveC()();

      goto LABEL_9;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v36 = 0;
LABEL_9:
  [v35 setWorkflowID:v36];

  sub_10005566C(0x4164657461657263, 0xE900000000000074, a1, &v88);
  if (v89)
  {
    v37 = type metadata accessor for Date();
    v38 = swift_dynamicCast();
    sub_1000485F8(v23, v38 ^ 1u, 1, v37);
    isa = 0;
    if (sub_100046EA4(v23, 1, v37) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(*(v37 - 8) + 8))(v23, v37);
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
    v40 = type metadata accessor for Date();
    sub_1000485F8(v23, 1, 1, v40);
    isa = 0;
  }

  [v35 setCreatedAt:isa];

  sub_10005566C(0x656D737365737361, 0xEA0000000000746ELL, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v41 = String._bridgeToObjectiveC()();

      goto LABEL_18;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v41 = 0;
LABEL_18:
  [v35 setAssessment:v41];

  sub_10005566C(0x676E696E69617274, 0xEC00000061746144, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v42 = String._bridgeToObjectiveC()();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v42 = 0;
LABEL_23:
  [v35 setTrainingData:v42];

  sub_10005566C(0x656D737365737361, 0xEE0044495547746ELL, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v43 = String._bridgeToObjectiveC()();

      goto LABEL_28;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v43 = 0;
LABEL_28:
  [v35 setAssessmentGUID:v43];

  sub_10005566C(0xD000000000000013, 0x80000001005A3330, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v44 = String._bridgeToObjectiveC()();

      goto LABEL_33;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v44 = 0;
LABEL_33:
  [v35 setAssessmentGUIDSeeds:v44];

  sub_10005566C(0x676E696E69617274, 0xEC00000044495547, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v45 = String._bridgeToObjectiveC()();

      goto LABEL_38;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v45 = 0;
LABEL_38:
  [v35 setTrainingGUID:v45];

  sub_10005566C(0xD000000000000011, 0x80000001005A3360, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v46 = String._bridgeToObjectiveC()();

      goto LABEL_43;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v46 = 0;
LABEL_43:
  [v35 setTrainingGUIDSeeds:v46];

  sub_10005566C(0xD000000000000010, 0x80000001005A3380, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v47 = String._bridgeToObjectiveC()();

      goto LABEL_48;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v47 = 0;
LABEL_48:
  [v35 setTrainingSignalID:v47];

  sub_10005566C(0x6E49747365676964, 0xEB00000000786564, a1, &v88);
  if (v89)
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v48 = v87;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
    v48 = 0;
  }

  [v35 setDigestIndex:v48];

  sub_10004D344(v86, v28, &qword_1006CC828);
  v49 = type metadata accessor for ODIBindingsDict();
  if (sub_100046EA4(v28, 1, v49) == 1)
  {
    sub_10004D2E8(v28, &qword_1006CC828);
    sub_1000443DC(&qword_1006CAD30);
    v50 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v50 = ODIBindingsDict.contents.getter();
    (*(*(v49 - 8) + 8))(v28, v49);
  }

  v51 = sub_1000A34A0(v50);

  sub_1000CF22C(v51, v35);
  sub_10005566C(0xD000000000000011, 0x80000001005A33B0, a1, &v88);
  if (v89)
  {
    sub_1000443DC(&qword_1006CC830);
    if (swift_dynamicCast())
    {
      v52.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_61;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v52.super.isa = 0;
LABEL_61:
  [v35 setBindingsToCompare:v52.super.isa];

  sub_10005566C(0x5468736572666572, 0xEA00000000004C54, a1, &v88);
  if (v89)
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v53 = v87;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
    v53 = 0;
  }

  [v35 setRefreshTTL:v53];

  sub_10005566C(0x6574707972636E65, 0xED00004449535464, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v54 = String._bridgeToObjectiveC()();

      goto LABEL_71;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v54 = 0;
LABEL_71:
  [v35 setEncryptedTSID:v54];

  sub_10005566C(0x6574707972636E65, 0xEE00444955474164, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v55 = String._bridgeToObjectiveC()();

      goto LABEL_76;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v55 = 0;
LABEL_76:
  [v35 setEncryptedAGUID:v55];

  sub_10005566C(0x6553646C756F6873, 0xED000044544F646ELL, a1, &v88);
  if (v89)
  {
    if (swift_dynamicCast())
    {
      v56 = v87;
      goto LABEL_81;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
  }

  v56 = 0;
LABEL_81:
  [v35 setShouldSendOTD:v56];
  sub_10005566C(0xD000000000000012, 0x80000001005A3400, a1, &v88);
  if (v89)
  {
    v57 = swift_dynamicCast();
    v58 = v85;
    if (v57)
    {
      v59 = String._bridgeToObjectiveC()();

      goto LABEL_86;
    }
  }

  else
  {
    sub_10004D2E8(&v88, &qword_1006CA130);
    v58 = v85;
  }

  v59 = 0;
LABEL_86:
  [v35 setOtdDestinationHost:v59];

  if (v83)
  {
    sub_10004D344(v84, &v88, &qword_1006CC800);
    v60 = v89;
    if (v89)
    {
      sub_100044728(&v88, v89);
      dispatch thunk of ProfileIdentifiers.getProfileId()();
      v62 = v61;
      sub_100044850(&v88);
      if (v62)
      {
        v60 = String._bridgeToObjectiveC()();
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      sub_10004D2E8(&v88, &qword_1006CC800);
    }

    [v35 setProfileID:v60];
  }

  else
  {
    sub_10004D344(v84, &v88, &qword_1006CC800);
    if (v89)
    {
      sub_100044728(&v88, v89);
      dispatch thunk of ProfileIdentifiers.getProfileSetObjectInfo()();
      sub_100044850(&v88);
    }

    else
    {
      sub_10004D2E8(&v88, &qword_1006CC800);
      v63 = type metadata accessor for ProfileSetObjectInfo();
      sub_1000485F8(v19, 1, 1, v63);
    }

    v64 = v82;
    v65 = v78;
    sub_10004D344(v19, v78, &qword_1006CC820);
    v66 = type metadata accessor for ProfileSetObjectInfo();
    if (sub_100046EA4(v65, 1, v66) == 1)
    {
      sub_10004D2E8(v65, &qword_1006CC820);
      v67 = 0;
    }

    else
    {
      ProfileSetObjectInfo.orderedProfileBagId.getter();
      (*(*(v66 - 8) + 8))(v65, v66);
      v67 = String._bridgeToObjectiveC()();
    }

    v68 = v79;
    [v35 setOrderedProfileBagId:v67];

    sub_10004D344(v19, v68, &qword_1006CC820);
    if (sub_100046EA4(v68, 1, v66) == 1)
    {
      sub_10004D2E8(v68, &qword_1006CC820);
      v69 = 0;
    }

    else
    {
      ProfileSetObjectInfo.assessmentConfigId.getter();
      (*(*(v66 - 8) + 8))(v68, v66);
      v69 = String._bridgeToObjectiveC()();
    }

    v70 = v80;
    [v35 setAssessmentConfigId:v69];

    sub_10004D344(v19, v70, &qword_1006CC820);
    if (sub_100046EA4(v70, 1, v66) == 1)
    {
      sub_10004D2E8(v70, &qword_1006CC820);
      v71 = 0;
    }

    else
    {
      ProfileSetObjectInfo.profileBagSetId.getter();
      (*(*(v66 - 8) + 8))(v70, v66);
      v71 = String._bridgeToObjectiveC()();
    }

    v72 = v81;
    [v35 setProfileBagSetId:v71];

    sub_10004D344(v19, v72, &qword_1006CC820);
    if (sub_100046EA4(v72, 1, v66) == 1)
    {
      sub_10004D2E8(v72, &qword_1006CC820);
      v73 = 0;
    }

    else
    {
      ProfileSetObjectInfo.profileSetObjectId.getter();
      (*(*(v66 - 8) + 8))(v72, v66);
      v73 = String._bridgeToObjectiveC()();
    }

    [v35 setProfileSetId:v73];

    sub_10004D344(v19, v64, &qword_1006CC820);
    if (sub_100046EA4(v64, 1, v66) == 1)
    {
      sub_10004D2E8(v64, &qword_1006CC820);
      v74 = 0;
    }

    else
    {
      ProfileSetObjectInfo.orderedProfileBagName.getter();
      (*(*(v66 - 8) + 8))(v64, v66);
      v74 = String._bridgeToObjectiveC()();
    }

    [v35 setProfileSetBagName:v74];

    sub_10004D2E8(v19, &qword_1006CC820);
  }

  if (![v58 hasChanges])
  {
    goto LABEL_115;
  }

  [v58 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  *&v88 = 0;
  if ([v58 save:&v88])
  {
    v75 = v88;
LABEL_115:

    return sub_10004D2E8(v86, &qword_1006CC828);
  }

  v77 = v88;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return sub_10004D2E8(v86, &qword_1006CC828);
}

uint64_t sub_1000CD9F8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1000CAD58(a6, v10);
}

uint64_t sub_1000CDA7C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000CDB64;

  return PJXBDBF1h0EU80dy.eWV8dPJG0p0nc2lk(_:)(v5);
}

uint64_t sub_1000CDB64()
{
  sub_100068324();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = sub_1000CFA4C();
    v13(v12, v11);
  }

  else
  {
    v14 = sub_1000CFA4C();
    v15(v14, 0);
  }

  _Block_release(v4[3]);
  v16 = v9[1];

  return v16();
}

uint64_t PJXBDBF1h0EU80dy.lJIqliFcwusu4FxD(_:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_10007CAD0();
}

uint64_t sub_1000CDD00()
{
  sub_10006ECA0();
  v1 = [*(v0 + 40) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = [objc_opt_self() fetchRequest];
    [v6 setResultType:0];
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    sub_1000443DC(&qword_1006CC4E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005CB870;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;

    v8 = sub_1000CFA5C();
    v11 = sub_1000CAFE8(v8, v9, v10);
    [v6 setPredicate:v11];

    v12 = swift_task_alloc();
    v12[2] = v2;
    v12[3] = v6;
    v12[4] = v5;
    v12[5] = v4;
    v12[6] = v3;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C();
    }

    v13 = type metadata accessor for Logger();
    sub_100046E6C(v13, qword_1006CC7D8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v15))
    {
      v16 = sub_1000541D8();
      sub_100077908(v16);
      sub_10007FD74(&_mh_execute_header, v17, v18, "moc is unavailable");
      sub_100053E64();
    }
  }

  sub_10006574C();

  return v19();
}

id sub_1000CDF20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000591B0(0, &qword_1006CC818, off_10068D790);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v5)
  {
    v16 = result;
    v17 = sub_1000591F0(result);
    v24 = a3;
    if (v17)
    {
      sub_100059210(0, (v16 & 0xC000000000000001) == 0, v16);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v16 + 4);
      }

      v19 = v18;
    }

    else
    {

      v19 = [objc_opt_self() insertNewObjectInManagedObjectContext:a1];
      sub_1000CF2AC(a4, a5, v19);
    }

    v20 = sub_1000CAEE0(v24);
    sub_1000CF304(v20, v19);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v14, v10);
    [v19 setUpdatedAt:isa];

    result = [a1 hasChanges];
    if (result)
    {
      [a1 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
      v25 = 0;
      if ([a1 save:&v25])
      {
        return v25;
      }

      else
      {
        v22 = v25;
        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1000CE250(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1000443DC(&qword_1006CA6C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000CE354;

  return PJXBDBF1h0EU80dy.lJIqliFcwusu4FxD(_:workflowID:)(v6, v7, v9);
}

uint64_t sub_1000CE354()
{
  sub_10006ECA0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[3];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = sub_1000CFA4C();
    v14(v13, v12);
  }

  else
  {
    v15 = sub_1000CFA4C();
    v16(v15, 0);
  }

  _Block_release(v4[3]);
  v17 = v10[1];

  return v17();
}

void sub_1000CE4FC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = [objc_opt_self() fetchRequest];
  v8 = v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v33 = a2;
    v34 = v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 0;
    v37 = a1 + 32;
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    v36 = v9;
    do
    {
      v11 = (v37 + 24 * v10);
      v12 = *v11;
      v13 = v11[2];
      v14 = *(v13 + 16);
      if (v14)
      {
        v38 = *v11;
        v39 = v11[1];
        swift_bridgeObjectRetain_n();

        sub_1000BE45C(0, v14, 0);
        v15 = v13 + 32;
        do
        {
          sub_10005346C(v15, v40);
          sub_1000443DC(&qword_1006CC840);
          swift_dynamicCast();
          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_1000BE45C((v16 > 1), v17 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v17 + 1);
          sub_1000534C8(v41, &_swiftEmptyArrayStorage[4 * v17 + 4]);
          v15 += 32;
          --v14;
        }

        while (v14);
        v9 = v36;
        v12 = v38;
        v18 = v39;
      }

      else
      {
        v18 = v11[1];
        swift_bridgeObjectRetain_n();
      }

      ++v10;
      sub_1000CAFE8(v12, v18, _swiftEmptyArrayStorage);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v9);
    a2 = v33;
    v8 = v34;
    v4 = v3;
  }

  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  v20 = sub_100061DB0(_swiftEmptyArrayStorage);
  [v8 setPredicate:v20];

  sub_1000591B0(0, &qword_1006CC838, off_10068D798);
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v23 = a2;
  v24 = sub_1000591F0(v21);
  for (i = 0; v24 != i; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v26 = *(v22 + 8 * i + 32);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    [v23 deleteObject:v26];
  }

  if ([v23 hasChanges])
  {
    [v23 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    *&v41[0] = 0;
    v28 = [v23 save:v41];
    v29 = *&v41[0];
    if (!v28)
    {
      v32 = *&v41[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_13:

      return;
    }

    v30 = sub_1000591F0(v22);
    v31 = v29;

    *a3 = v30;
  }

  else
  {

    *a3 = 0;
  }
}

uint64_t sub_1000CE934(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100065570;

  return v7();
}

uint64_t sub_1000CEA1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000640AC;

  return v8();
}

uint64_t sub_1000CEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000443DC(&qword_1006C9E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D344(a3, v12, &qword_1006C9E20);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100046EA4(v12, 1, v13) == 1)
  {
    sub_10004D2E8(v12, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
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

      sub_10004D2E8(a3, &qword_1006C9E20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10004D2E8(a3, &qword_1006C9E20);
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

uint64_t sub_1000CEDBC()
{
  v1 = *(v0 + 16);
  sub_1000443DC(&qword_1006CC810);
  swift_arrayDestroy();
  v2 = sub_1000777A0();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1000CEE0C()
{
  v1 = *(*(type metadata accessor for ODIBindingsDict() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = sub_1000777A0();

  return _swift_deallocClassInstance(v3, v4, v5);
}

uint64_t sub_1000CEE7C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1000777A0();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1000CEEB8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000CEEFC(uint64_t a1)
{
  result = sub_1000CFAB4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000CF1B4(result, 1, sub_100062EB0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CEFC0(uint64_t a1)
{
  result = sub_1000CFAB4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000CF1B4(result, 1, sub_100063174);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for LocalFeatureToggle();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CF0C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000CF1B4(result, 1, sub_100063204);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CF1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1000CF22C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setBindings:isa];
}

void sub_1000CF2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setWorkflowID:v4];
}

void sub_1000CF304(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setFields:isa];
}

uint64_t sub_1000CF378(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000CF3B8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000CBFA0(a1);
}

uint64_t sub_1000CF42C()
{
  _Block_release(*(v0 + 32));

  sub_10006EBD0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000CF478()
{
  sub_100068324();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10006EBC4(v5);
  *v6 = v7;
  v8 = sub_10006EB14(v6);

  return v9(v8);
}

uint64_t sub_1000CF514()
{
  sub_100068324();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10006EBC4(v5);
  *v6 = v7;
  v8 = sub_10006EB14(v6);

  return v9(v8);
}

uint64_t sub_1000CF5B4()
{
  sub_100068324();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10006EBC4(v7);
  *v8 = v9;
  v8[1] = sub_1000640AC;

  return sub_1000CEA1C(v2, v3, v4, v6);
}

uint64_t sub_1000CF678()
{
  v1 = *(v0 + 24);

  v2 = sub_1000777A0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000CF6A8()
{
  sub_1000657EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_1000CFA84(v4);

  return v7(v6);
}

uint64_t sub_1000CF740()
{
  sub_1000657EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_1000CFA84(v4);

  return v7(v6);
}

uint64_t sub_1000CF7DC()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EBC4(v4);
  *v5 = v6;
  v7 = sub_1000CFA2C(v5);

  return v8(v7);
}

uint64_t sub_1000CF870()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EBC4(v4);
  *v5 = v6;
  v7 = sub_1000CFA2C(v5);

  return v8(v7);
}

uint64_t sub_1000CF904()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CF94C()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EBC4(v4);
  *v5 = v6;
  v7 = sub_1000CFA2C(v5);

  return v8(v7);
}

uint64_t sub_1000CFA0C()
{

  return swift_once();
}

uint64_t sub_1000CFA2C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000CFA84(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000CFAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100046EA4(a1, a2, v4);
}

uint64_t sub_1000CFB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_1000485F8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AssessmentPayloadFilter()
{
  result = qword_1006CC8A0;
  if (!qword_1006CC8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CFBD4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000443DC(&qword_1006CC8D8);
  sub_100077674(v5);
  v7 = *(v6 + 64);
  v4[6] = sub_100065948();
  v8 = sub_1000443DC(&qword_1006CC8E0);
  sub_100077674(v8);
  v10 = *(v9 + 64);
  v4[7] = sub_100065948();
  v11 = type metadata accessor for DateComponents();
  v4[8] = v11;
  sub_1000474C0(v11);
  v4[9] = v12;
  v14 = *(v13 + 64);
  v4[10] = sub_100065948();
  v15 = type metadata accessor for Calendar();
  v4[11] = v15;
  sub_1000474C0(v15);
  v4[12] = v16;
  v18 = *(v17 + 64);
  v4[13] = sub_100065948();
  v19 = sub_1000443DC(&qword_1006CA2B0);
  sub_100077674(v19);
  v21 = *(v20 + 64);
  v4[14] = sub_100065948();
  v22 = type metadata accessor for Date();
  v4[15] = v22;
  sub_1000474C0(v22);
  v4[16] = v23;
  v25 = *(v24 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v26 = type metadata accessor for AssessmentPayload();
  v4[22] = v26;
  sub_1000474C0(v26);
  v4[23] = v27;
  v29 = *(v28 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v30 = sub_1000443DC(&qword_1006CC8E8);
  sub_100077674(v30);
  v32 = *(v31 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000CFEEC, 0, 0);
}

char *sub_1000CFEEC()
{
  result = off_1006C9430;
  if (!off_1006C9430)
  {
    __break(1u);
    goto LABEL_46;
  }

  v2 = v0[5];
  v3 = v0[3];
  v4 = String.init(cString:)();
  v6 = v5;
  v7 = objc_allocWithZone(NSError);
  v8 = sub_1000D2B50(v4, v6, -74200);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[3];
  v161 = v8;
  if (v11)
  {
    v13 = sub_100053F78();
    *v13 = 134217984;
    *(v13 + 4) = *(v12 + 16);

    _os_log_impl(&_mh_execute_header, v9, v10, "Total pa: %ld", v13, 0xCu);
    sub_1000488AC();
  }

  else
  {
  }

  v14 = v0[30];
  v15 = v0[22];
  v16 = v0[23];
  v17 = v0[3];
  sub_100097CFC();
  v172 = v18;
  sub_1000485F8(v19, v20, v21, v18);
  v22 = 0;
  v23 = *(v17 + 16);
  v168 = v23;
  while (v23 != v22)
  {
    v24 = v0[27];
    v26 = v0[4];
    v25 = v0[5];
    sub_10007AEB8(v0[3] + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, v24);
    v27 = swift_task_alloc();
    v27[2] = v24;
    v28 = sub_1000D2150(sub_1000D1E30, v27, v26);

    LOBYTE(v24) = sub_1000D0C0C(v28, v24 + *(v172 + 56));

    v29 = v0[27];
    if (v24)
    {
      v39 = v0[25];
      v40 = v0[5];
      sub_10007AEB8(v0[27], v0[26]);
      sub_10007AEB8(v29, v39);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v0[25];
      v45 = v0[26];
      if (v43)
      {
        v46 = v0[22];
        v47 = swift_slowAlloc();
        swift_slowAlloc();
        *v47 = 136315394;
        v48 = (v45 + *(v46 + 32));
        v49 = *v48;
        v50 = v48[1];

        sub_10007AF1C(v45);
        v51 = sub_100052F7C();

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = (v44 + *(v46 + 40));
        v53 = *v52;
        v54 = v52[1];

        sub_10007AF1C(v44);
        v55 = sub_100052F7C();

        *(v47 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v41, v42, "FOUND A MATCH in pga, %s , %s", v47, 0x16u);
        swift_arrayDestroy();
        sub_1000488AC();
        sub_1000488AC();
      }

      else
      {

        sub_10007AF1C(v44);
        sub_10007AF1C(v45);
      }

      v23 = v168;
      v56 = v0[30];
      v57 = v0[27];
      v58 = v0[22];
      sub_100076FB8(v56, &qword_1006CC8E8);
      sub_10007AEB8(v57, v56);
      sub_1000D2B30();
      sub_10007AF1C(v57);
      break;
    }

    v30 = v0[5];
    sub_10007AEB8(v0[27], v0[24]);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[24];
    if (v33)
    {
      v35 = sub_100053F78();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v34 + *(v172 + 20);
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_10007AF1C(v34);
      *(v35 + 4) = isa;
      *v36 = isa;
      _os_log_impl(&_mh_execute_header, v31, v32, "Skipping pga from %@", v35, 0xCu);
      sub_100076FB8(v36, &qword_1006CBB00);
      sub_1000488AC();
      v23 = v168;
      sub_1000488AC();
    }

    else
    {

      sub_10007AF1C(v34);
    }

    sub_10007AF1C(v0[27]);
    ++v22;
  }

  v59 = v0[22];
  sub_100087764(v0[30], v0[29], &qword_1006CC8E8);
  v60 = sub_1000D2AE4();
  v61 = v0[29];
  if (v60 == 1)
  {
    v62 = v0[5];
    sub_100076FB8(v0[29], &qword_1006CC8E8);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v65 = v161;
    if (os_log_type_enabled(v63, v64))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "No pga match found", v66, 2u);
      sub_1000488AC();
    }

    if (v23)
    {
      result = off_1006C9430;
      if (off_1006C9430)
      {
        v67 = String.init(cString:)();
        v69 = v68;
        v70 = objc_allocWithZone(NSError);
        v71 = sub_1000D2B50(v67, v69, -74201);

        v65 = v71;
        goto LABEL_23;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {

    sub_100076FB8(v61, &qword_1006CC8E8);
    v65 = 0;
  }

LABEL_23:
  v72 = v0[30];
  v73 = v0[22];
  if (!sub_1000D2AE4())
  {
    v74 = *(v72 + *(v73 + 64));
    v76 = v0[20];
    v75 = v0[21];
    v77 = v0[15];
    v78 = v0[16];
    v79 = *(v78 + 16);
    v79(v76, v72 + *(v172 + 20), v77);
    v80 = *(v78 + 32);
    v80(v75, v76, v77);
    if (v74 < 1)
    {
      (*(v0[16] + 8))(v0[21], v0[15]);
    }

    else
    {
      v150 = v79;
      v158 = v0[14];
      v162 = v65;
      v81 = v0[13];
      v169 = v0[12];
      v173 = v0[15];
      v83 = v0[10];
      v82 = v0[11];
      v84 = v0[9];
      v165 = v0[8];
      v86 = v0[6];
      v85 = v0[7];
      static Calendar.current.getter();
      sub_100097CFC();
      sub_1000485F8(v87, v88, v89, v82);
      type metadata accessor for TimeZone();
      sub_100097CFC();
      sub_1000485F8(v90, v91, v92, v93);
      v148 = v74;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      Calendar.date(byAdding:to:wrappingComponents:)();
      (*(v84 + 8))(v83, v165);
      v94 = *(v169 + 8);
      v95 = sub_1000D2A30();
      v96(v95);
      if (sub_100046EA4(v158, 1, v173) == 1)
      {
        v97 = v0[14];
        (*(v0[16] + 8))(v0[21], v0[15]);
        sub_100076FB8(v97, &qword_1006CA2B0);
        v65 = v162;
      }

      else
      {
        v112 = v0[18];
        v113 = v0[15];
        v114 = v0[16];
        v80(v0[19], v0[14], v113);
        Date.init()();
        v115 = static Date.< infix(_:_:)();
        v116 = *(v114 + 8);
        v116(v112, v113);
        v117 = v0[21];
        v65 = v162;
        if (v115)
        {
          v118 = v0[5];
          v150(v0[17], v0[21], v0[15]);
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.info.getter();
          v121 = os_log_type_enabled(v119, v120);
          v122 = v0[17];
          v123 = v0[15];
          if (v121)
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *v124 = 138543618;
            v126 = Date._bridgeToObjectiveC()().super.isa;
            v127 = sub_1000D2B24();
            (v116)(v127);
            *(v124 + 4) = v126;
            *v125 = v126;
            *(v124 + 12) = 2050;
            *(v124 + 14) = v148;
            _os_log_impl(&_mh_execute_header, v119, v120, "The pga Expired. created at %{public}@, ttl = %{public}ld", v124, 0x16u);
            sub_100076FB8(v125, &qword_1006CBB00);
            sub_1000488AC();
            sub_1000488AC();
          }

          else
          {

            v129 = sub_1000D2B24();
            (v116)(v129);
          }

          v130 = v0[22];
          sub_100076FB8(v0[30], &qword_1006CC8E8);
          sub_100097CFC();
          sub_1000485F8(v131, v132, v133, v130);
          result = off_1006C9430;
          if (off_1006C9430)
          {
            v134 = v0[21];
            v135 = v0[19];
            v136 = v0[15];
            String.init(cString:)();
            v137 = objc_allocWithZone(NSError);
            v138 = sub_1000D2B24();
            sub_1000D2B50(v138, v139, v140);

            v116(v135, v136);
            v116(v134, v136);
            goto LABEL_41;
          }

LABEL_48:
          __break(1u);
          return result;
        }

        v128 = v0[15];
        v116(v0[19], v128);
        v116(v117, v128);
      }
    }
  }

  if (v65)
  {
    goto LABEL_41;
  }

  v98 = v0[22];
  sub_100087764(v0[30], v0[28], &qword_1006CC8E8);
  if (sub_1000D2AE4() == 1)
  {
    sub_100076FB8(v0[28], &qword_1006CC8E8);
    result = off_1006C9430;
    if (off_1006C9430)
    {
      v99 = String.init(cString:)();
      v101 = v100;
      v102 = objc_allocWithZone(NSError);
      sub_1000D2B50(v99, v101, -74203);
LABEL_41:
      v142 = v0[29];
      v141 = v0[30];
      v144 = v0[27];
      v143 = v0[28];
      v146 = v0[25];
      v145 = v0[26];
      v147 = v0[24];
      v149 = v0[21];
      v151 = v0[20];
      v153 = v0[19];
      v155 = v0[18];
      v157 = v0[17];
      v160 = v0[14];
      v164 = v0[13];
      v167 = v0[10];
      v171 = v0[7];
      v175 = v0[6];
      swift_willThrow();
      sub_100076FB8(v141, &qword_1006CC8E8);

      v111 = v0[1];
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v104 = v0[29];
  v103 = v0[30];
  v105 = v0[27];
  v107 = v0[25];
  v106 = v0[26];
  v108 = v0[24];
  v110 = v0[20];
  v109 = v0[21];
  v152 = v0[19];
  v154 = v0[18];
  v156 = v0[17];
  v159 = v0[14];
  v163 = v0[13];
  v166 = v0[10];
  v170 = v0[7];
  v174 = v0[6];
  sub_1000BE064(v0[28], v0[2]);
  sub_100076FB8(v103, &qword_1006CC8E8);

  v111 = v0[1];
LABEL_42:

  return v111();
}