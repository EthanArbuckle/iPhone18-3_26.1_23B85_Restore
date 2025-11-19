unint64_t sub_1000EF7D0()
{
  result = qword_1002F7D78;
  if (!qword_1002F7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7D78);
  }

  return result;
}

uint64_t sub_1000EF824(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000EF870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000EF8C4()
{
  result = qword_1002F7D80;
  if (!qword_1002F7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7D80);
  }

  return result;
}

uint64_t sub_1000EF918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF97C(uint64_t a1)
{
  v2 = type metadata accessor for DeviceRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EF9D8()
{
  result = qword_1002F7DA0;
  if (!qword_1002F7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7DA0);
  }

  return result;
}

uint64_t sub_1000EFA2C(uint64_t a1, uint64_t a2)
{
  if ((sub_100121564(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceRecord();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v25 = v4[10];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v29 = v4[11];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v33 = v4[12];

  return static Date.== infix(_:_:)(a1 + v33, a2 + v33);
}

uint64_t getEnumTagSinglePayload for DeviceRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000EFD24()
{
  result = qword_1002F7DF0;
  if (!qword_1002F7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7DF0);
  }

  return result;
}

unint64_t sub_1000EFD7C()
{
  result = qword_1002F7DF8;
  if (!qword_1002F7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7DF8);
  }

  return result;
}

unint64_t sub_1000EFDD4()
{
  result = qword_1002F7E00;
  if (!qword_1002F7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7E00);
  }

  return result;
}

uint64_t sub_1000EFE28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1000F01AC()
{
  sub_1000EE870(&qword_1002F7ED0, &qword_100226C60);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_100226100;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 504;
  v1 = NSFilePosixPermissions;
  v2 = sub_1000F96D4(inited);
  swift_setDeallocating();
  result = sub_1000F0700(inited + 32);
  qword_100300B08 = v2;
  return result;
}

uint64_t sub_1000F0254()
{
  v0 = [objc_opt_self() defaultManager];
  v25 = 0;
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v25];

  if (v2)
  {
    if (v25)
    {
LABEL_11:

      return v2 ^ 1;
    }

    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226100;
    v5 = URL.description.getter();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000EE954();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
LABEL_10:
    os_log(_:dso:log:_:_:)();

    goto LABEL_11;
  }

  URL._bridgeToObjectiveC()(v3);
  v9 = v8;
  type metadata accessor for FileAttributeKey(0);
  sub_1000F06B8(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24 = 0;
  v11 = [v0 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:isa error:&v24];

  if (v11)
  {
    v12 = v24;
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    type metadata accessor for URL();
    sub_1000F06B8(&unk_1002F9C00, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    goto LABEL_10;
  }

  v17 = v24;
  v18 = _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100226100;
  v24 = v18;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000EE954();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  return v2 ^ 1;
}

uint64_t sub_1000F06B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F0700(uint64_t a1)
{
  v2 = sub_1000EE870(&qword_1002F7FF0, &qword_100226C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0768()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v20 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v20];

  if (!v4)
  {
    v11 = v20;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v12;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    sub_1000F0A84();
    if (!swift_dynamicCast())
    {
    }

    v13 = [v19 domain];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v17 == v16)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
      }
    }

    if ([v19 code] == 4)
    {
    }

    goto LABEL_12;
  }

  v5 = v20;
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  type metadata accessor for URL();
  sub_1000F06B8(&unk_1002F9C00, &type metadata accessor for URL);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();
}

unint64_t sub_1000F0A84()
{
  result = qword_1002F7ED8;
  if (!qword_1002F7ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F7ED8);
  }

  return result;
}

void sub_1000F0AD0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    v11 = sub_1000F0C3C(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

void *sub_1000F0C3C(uint64_t a1, uint64_t a2)
{
  v14[3] = &type metadata for AudioAccessoryFeatures;
  v14[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v14);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100103934();
  v5 = sub_1001B0F34(a1, a2);

  if (v5)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100226100;
    v7 = v5;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000EE954();
    *(v6 + 32) = v9;
    *(v6 + 40) = v11;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    os_log(_:dso:log:_:_:)();
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1000F0EA0(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for AudioAccessoryFeatures;
  v17 = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  v6 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v19;
  v7[5] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000F2B8C;
  *(v8 + 24) = v7;
  v17 = sub_1000F2B98;
  v18 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  v16 = &unk_1002BC1B8;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  v11 = v2;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = v19;

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F1064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  os_log(_:dso:log:_:_:)();

  v7 = sub_1000F0C3C(a1, a2);
  v8 = *a3;
  *a3 = v7;

  return _objc_release_x1(v7, v8);
}

uint64_t sub_1000F1200(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001A55A4(a4, a5, 0x6563697665444141, 0xEE0064726F636552, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v13 = 0;
    a2();
  }
}

uint64_t sub_1000F13D4(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1000F1478(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    v10 = a4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001B0678(v10, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v16 = 0;
    a2();
  }
}

uint64_t sub_1000F16E4(uint64_t a1, SEL *a2)
{
  v12[3] = &type metadata for AudioAccessoryFeatures;
  v12[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  result = sub_1000EF824(v12);
  if (v4)
  {
    v6 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v10 respondsToSelector:*a2])
        {
          type metadata accessor for AADeviceRecord();
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v10 *a2];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000F1874()
{
  result = qword_1002F9BC0;
  if (!qword_1002F9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9BC0);
  }

  return result;
}

uint64_t sub_1000F18C8()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v6 respondsToSelector:"aaDeviceRecordsRemovedWithRecords:"])
      {
        type metadata accessor for AADeviceRecord();
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v6 aaDeviceRecordsRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1000F1A2C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for AudioAccessoryFeatures;
  v7 = sub_1000F1874();
  v43 = v7;
  v8 = isFeatureEnabled(_:)();
  result = sub_1000EF824(&v41._countAndFlagsBits);
  if (v8)
  {
    v10._countAndFlagsBits = 0xD00000000000002CLL;
    v10._object = 0x8000000100267570;
    String.append(_:)(v10);
    v11._object = 0x80000001002675A0;
    v11._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v11);
    v12._object = 0x80000001002675D0;
    v12._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    v13._object = 0x8000000100267600;
    String.append(_:)(v13);
    static os_log_type_t.default.getter();
    if (qword_1002F7B00 != -1)
    {
      swift_once();
    }

    v14 = _swiftEmptyArrayStorage;
    v40 = qword_100300E50;
    os_log(_:dso:log:_:_:)();
    sub_100103934();
    v42 = &type metadata for AudioAccessoryFeatures;
    v43 = v7;
    v15 = isFeatureEnabled(_:)();
    sub_1000EF824(&v41._countAndFlagsBits);
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v18 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v3 = v18;
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      goto LABEL_11;
    }

    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v16 = sub_1000EE91C(v2, qword_100300D88);
      (*(v3 + 16))(v6, v16, v2);
      v14 = sub_10018B1E4(v6);

      v17 = *(v3 + 8);
      v3 += 8;
      v17(v6, v2);
LABEL_11:

      if (v14 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
        }
      }

      if (v19 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v20 = 0;
    v39 = v14 & 0xC000000000000001;
    v38 = xmmword_100226100;
    v37[1] = a1;
    v21 = v14;
    do
    {
      if (v39)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v24 = swift_allocObject();
      *(v24 + 16) = v38;
      v25 = v23;
      v26 = [v25 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1000EE954();
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      os_log(_:dso:log:_:_:)();

      v30 = v25;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v41._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v41._object = 0xE700000000000000;
      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 10;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);

      String.append(_:)(v41);

      v14 = v21;
    }

    while (v19 != v20);
  }

  return result;
}

uint64_t sub_1000F1F48(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a4);
  v16 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v16)
  {
    v17 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_1000F2BA0;
    v20 = v24;
    v19[4] = v15;
    v19[5] = v20;
    v19[6] = a2;
    v30 = sub_1000F2BFC;
    v31 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002BC230;
    v21 = _Block_copy(aBlock);
    v22 = v17;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v26 + 8))(v10, v7);
    (*(v11 + 8))(v14, v25);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t sub_1000F22B0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v26 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v31 = &type metadata for AudioAccessoryFeatures;
  v32 = sub_1000F1874();
  _Block_copy(a4);
  v16 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v16)
  {
    v17 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_1000F2C44;
    v20 = v26;
    v19[4] = v15;
    v19[5] = v20;
    v19[6] = a2;
    v32 = sub_1000F2B74;
    v33 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v31 = &unk_1002BC140;
    v21 = _Block_copy(aBlock);
    v22 = v17;

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v28 + 8))(v10, v7);
    (*(v11 + 8))(v14, v27);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v23 = 4;
    v24 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v24);
  }
}

uint64_t sub_1000F2654(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v27 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v31 = &type metadata for AudioAccessoryFeatures;
  v32 = sub_1000F1874();
  _Block_copy(a3);
  v15 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v15)
  {
    v26 = v10;
    v16 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1000F29F0;
    v19 = v27;
    v18[4] = v14;
    v18[5] = v19;
    v32 = sub_1000F2A4C;
    v33 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v31 = &unk_1002BC0C8;
    v20 = _Block_copy(aBlock);
    v21 = v16;

    v22 = v19;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v6 + 8))(v9, v5);
    (*(v28 + 8))(v13, v26);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v23 = 4;
    v24 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v24);
  }
}

unint64_t sub_1000F29F8()
{
  result = qword_1002F7EE0;
  if (!qword_1002F7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7EE0);
  }

  return result;
}

uint64_t sub_1000F2A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000F2A70()
{
  result = qword_1002F9CB0;
  if (!qword_1002F9CB0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9CB0);
  }

  return result;
}

unint64_t sub_1000F2AC8()
{
  result = qword_1002F9CC0;
  if (!qword_1002F9CC0)
  {
    sub_1000F2B2C(&unk_1002F92D0, &unk_100227B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9CC0);
  }

  return result;
}

uint64_t sub_1000F2B2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F2BB4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t AAProxCardsRecord.ProxCardKeys.rawValue.getter(char a1)
{
  result = 0x62756F4465736163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x7473654764616568;
      break;
    case 4:
      result = 0x41676E6972616568;
      break;
    case 5:
      result = 0x54676E6972616568;
      break;
    case 6:
      result = 0x7461527472616568;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6F69647541627375;
      break;
    case 12:
      result = 0x6175516563696F76;
      break;
    case 13:
      result = 0x77654E7374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2E14(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AAProxCardsRecord.ProxCardKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AAProxCardsRecord.ProxCardKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000F2E9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F2F00()
{
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000F2F54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000F2FB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15audioaccessoryd17AAProxCardsRecordC12ProxCardKeysO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F2FE4@<X0>(unint64_t *a1@<X8>)
{
  result = AAProxCardsRecord.ProxCardKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000F3020()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300B10);
  sub_1000EE91C(v4, qword_100300B10);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *sub_1000F3B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1001C4E58(0, v2, 0);
    v29 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v26 = v2;
    v27 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v28 = v7;
      v11 = (*(a1 + 48) + 16 * v6);
      v12 = *(*(a1 + 56) + 8 * v6);
      v30 = *v11;
      v31 = v11[1];
      swift_bridgeObjectRetain_n();
      v13._countAndFlagsBits = 58;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15 = v29;
      v17 = v29[2];
      v16 = v29[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1001C4E58((v16 > 1), v17 + 1, 1);
        v15 = v29;
      }

      v15[2] = v17 + 1;
      v18 = &v15[2 * v17];
      v18[4] = v30;
      v18[5] = v31;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v15;
      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1000FA948(v6, v27, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1000FA948(v6, v27, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v9;
      if (v28 + 1 == v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t HMDeviceCloudRecord.debugDescription.getter()
{
  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000F3E30(char *a1)
{
  v2 = v1;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v10 = type metadata accessor for Date();
  v103 = *(v10 - 8);
  v11 = v103[8];
  __chkstk_darwin(v10);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v95 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v95 - v18;
  v20 = type metadata accessor for UUID();
  v106 = *(v20 - 8);
  v21 = *(v106 + 64);
  __chkstk_darwin(v20);
  v105 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000011 && 0x8000000100226E20 == v23)
  {
  }

  else
  {
    v24 = v23;
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_1000FA7DC();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  v101 = v20;
  v26 = [a1 encryptedValues];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28 || (v112 = v28, v108 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_10;
  }

  v107 = v26;
  v99 = v109;
  v100 = v110;
  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = a1;

  UUID.init(uuidString:)();

  v32 = v106;
  v33 = v101;
  if ((*(v106 + 48))(v19, 1, v101) == 1)
  {

    sub_1000EEE6C(v19, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_9;
  }

  v41 = v105;
  (*(v32 + 32))(v105, v19, v33);
  (*(v32 + 16))(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier, v41, v33);
  v42 = (v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
  v43 = v100;
  *v42 = v99;
  v42[1] = v43;
  v44 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v31 encodeSystemFieldsWithCoder:v44];
  [v44 finishEncoding];
  v45 = [v44 encodedData];
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = (v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata);
  *v49 = v46;
  v49[1] = v48;
  v50 = [v31 modificationDate];
  v51 = v31;
  if (v50)
  {
    v52 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = v103;
    v53 = v104;
    v55 = v103[4];
    v55(v104, v13, v10);
    (v54[7])(v53, 0, 1, v10);
    v56 = v102;
    v55(v102, v53, v10);
    v57 = v107;
  }

  else
  {
    v54 = v103;
    v58 = v103[7];
    v58(v104, 1, 1, v10);
    v59 = [v51 creationDate];
    if (v59)
    {
      v60 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = v54[4];
      v61(v7, v13, v10);
      v58(v7, 0, 1, v10);
      v56 = v102;
      v61(v102, v7, v10);
      v54 = v103;
      v62 = v103[6];
    }

    else
    {
      v58(v7, 1, 1, v10);
      v56 = v102;
      static Date.now.getter();
      v62 = v54[6];
      if (v62(v7, 1, v10) != 1)
      {
        sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v57 = v107;
    v63 = v104;
    if (v62(v104, 1, v10) != 1)
    {
      sub_1000EEE6C(v63, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (v54[4])(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate, v56, v10);
  v64 = String._bridgeToObjectiveC()();
  v65 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  v66 = [v57 objectForKeyedSubscript:v64];

  v97 = v51;
  if (v66 && (v109 = v66, (swift_dynamicCast() & 1) != 0))
  {
    v67 = v112;
  }

  else
  {
    v67 = 0;
  }

  *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) = v67;
  *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions) = sub_1000F98F4(&_swiftEmptyArrayStorage);
  v68 = type metadata accessor for AAProxCardsRecord();
  v111.receiver = v2;
  v111.super_class = v68;
  v2 = 0xED0000706154656CLL;
  v69 = objc_msgSendSuper2(&v111, "init");
  v70 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  v103 = 0x8000000100267150;
  v104 = 0x8000000100267170;
  v102 = 0x8000000100267130;
  v99 = 0x80000001002670C0;
  v100 = 0x8000000100267110;
  v98 = 0x80000001002670A0;
  v96 = v69;
  a1 = 0;
  while (2)
  {
    v73 = *(&off_1002BBBA8 + a1++ + 32);
    v74 = String._bridgeToObjectiveC()();

    v75 = [v57 v65[235]];

    if (!v75)
    {
      goto LABEL_29;
    }

    v109 = v75;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v76 = v112;
    v77 = v73;
    v78 = 0xED0000706154656CLL;
    v79 = 0x62756F4465736163;
    switch(v77)
    {
      case 0:
        goto LABEL_46;
      case 1:
        v79 = 0xD000000000000011;
        v78 = v98;
        goto LABEL_46;
      case 2:
        v79 = 0xD00000000000001ELL;
        v78 = v99;
        goto LABEL_46;
      case 3:
        v79 = 0x7473654764616568;
        v78 = 0xEC00000073657275;
        goto LABEL_46;
      case 4:
        v79 = 0x41676E6972616568;
        v78 = 0xED00007473697373;
        goto LABEL_46;
      case 5:
        v79 = 0x54676E6972616568;
        v78 = 0xEB00000000747365;
        goto LABEL_46;
      case 6:
        v79 = 0x7461527472616568;
        v78 = 0xE900000000000065;
        goto LABEL_46;
      case 7:
        v79 = 0xD000000000000011;
        v78 = v100;
        goto LABEL_46;
      case 8:
        v79 = 0xD000000000000011;
        v78 = v102;
        goto LABEL_46;
      case 9:
        v79 = 0xD000000000000012;
        v78 = v103;
        goto LABEL_46;
      case 10:
        v79 = 0xD000000000000013;
        v78 = v104;
        goto LABEL_46;
      case 11:
        v78 = 0xE800000000000000;
        v79 = 0x6F69647541627375;
        goto LABEL_46;
      case 12:
        v79 = 0x6175516563696F76;
        v78 = 0xEC0000007974696CLL;
        goto LABEL_46;
      case 13:
        v78 = 0xE800000000000000;
        v79 = 0x77654E7374616877;
LABEL_46:
        swift_beginAccess();
        v80 = *&v69[v70];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *&v69[v70];
        v82 = v112;
        *&v69[v70] = 0x8000000000000000;
        v83 = sub_1000F8C5C(v79, v78);
        v85 = v82[2];
        v86 = (v84 & 1) == 0;
        v87 = __OFADD__(v85, v86);
        v88 = v85 + v86;
        if (!v87)
        {
          v89 = v84;
          if (v82[3] < v88)
          {
            sub_10015C88C(v88, isUniquelyReferenced_nonNull_native);
            v83 = sub_1000F8C5C(v79, v78);
            if ((v89 & 1) != (v90 & 1))
            {
              goto LABEL_60;
            }

LABEL_51:
            v65 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
            if ((v89 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_27;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_51;
          }

          v94 = v83;
          sub_10015D94C();
          v83 = v94;
          v65 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          if ((v89 & 1) == 0)
          {
LABEL_52:
            v72 = v112;
            v112[(v83 >> 6) + 8] |= 1 << v83;
            v91 = (v72[6] + 16 * v83);
            *v91 = v79;
            v91[1] = v78;
            *(v72[7] + 8 * v83) = v76;
            v92 = v72[2];
            v87 = __OFADD__(v92, 1);
            v93 = v92 + 1;
            if (v87)
            {
              __break(1u);
LABEL_60:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_61:
              JUMPOUT(0);
            }

            v72[2] = v93;
            goto LABEL_28;
          }

LABEL_27:
          v71 = v83;

          v72 = v112;
          *(v112[7] + 8 * v71) = v76;
LABEL_28:
          *&v69[v70] = v72;
          swift_endAccess();
          v57 = v107;
          v2 = 0xED0000706154656CLL;
LABEL_29:
          if (a1 == 14)
          {

            swift_unknownObjectRelease();
            v24 = v96;

            (*(v106 + 8))(v105, v101);
            return v24;
          }

          continue;
        }

        __break(1u);
LABEL_58:
        swift_once();
LABEL_10:
        v24 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100226100;
        *(v34 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
        *(v34 + 64) = sub_1000FA830();
        *(v34 + 32) = a1;
        v35 = a1;
        os_log(_:dso:log:_:_:)();

        sub_1000FA7DC();
        swift_allocError();
        *v36 = 4;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_12:
        type metadata accessor for AAProxCardsRecord();
        v38 = *((swift_isaMask & *v2) + 0x30);
        v39 = *((swift_isaMask & *v2) + 0x34);
        swift_deallocPartialClassInstance();
        return v24;
      default:
        goto LABEL_61;
    }
  }
}

void (*sub_1000F4D10(uint64_t a1, uint64_t a2, unint64_t a3, void *a4))(uint64_t, uint64_t)
{
  v9 = type metadata accessor for Date();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v41 = a1;
  v16(&v4[v13], a1, v14);
  v38 = a2;
  v39 = a3;
  sub_1000EE9F4(a2, a3);
  v37 = a4;
  v17 = [a4 bluetoothAddress];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || v18 == 0xD000000000000011 && 0x8000000100267AA0 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1000FA7DC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    sub_1000EF870(v38, v39);
    v23 = *(v15 + 8);
    v23(v41, v14);
    sub_1000EF870(*v12, *(v12 + 1));
    v23(&v4[v13], v14);
    type metadata accessor for AAProxCardsRecord();
    v24 = *((swift_isaMask & *v4) + 0x30);
    v25 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = &v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    *v27 = v18;
    v27[1] = v20;
    v28 = v34;
    static Date.now.getter();
    (*(v35 + 32))(&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate], v28, v36);
    v29 = v37;
    v30 = [v37 fitEducationNotificationsShownCount];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount] = v30;
    *&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions] = sub_1000F98F4(_swiftEmptyArrayStorage);
    v31 = type metadata accessor for AAProxCardsRecord();
    v40.receiver = v4;
    v40.super_class = v31;
    v23 = objc_msgSendSuper2(&v40, "init");
    v32 = sub_1000F50A8();
    sub_1000F5604(v32);

    sub_1000EF870(v38, v39);
    (*(v15 + 8))(v41, v14);
  }

  return v23;
}

void *sub_1000F50A8()
{
  if ([v0 caseDoubleTapVersion])
  {
    v1 = [v0 caseDoubleTapVersion];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v1, 0x62756F4465736163, 0xED0000706154656CLL, isUniquelyReferenced_nonNull_native);
  }

  if ([v0 chargingRemindersVersion])
  {
    v3 = [v0 chargingRemindersVersion];
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v3, 0xD000000000000011, 0x80000001002670A0, v4);
  }

  if ([v0 dynamicEndOfChargeNotificationVersion])
  {
    v5 = [v0 dynamicEndOfChargeNotificationVersion];
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v5, 0xD00000000000001ELL, 0x80000001002670C0, v6);
  }

  if ([v0 headGesturesVersion])
  {
    v7 = [v0 headGesturesVersion];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v7, 0x7473654764616568, 0xEC00000073657275, v8);
  }

  if ([v0 hearingAssistVersion])
  {
    v9 = [v0 hearingAssistVersion];
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v9, 0x41676E6972616568, 0xED00007473697373, v10);
  }

  if ([v0 hearingTestVersion])
  {
    v11 = [v0 hearingTestVersion];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v11, 0x54676E6972616568, 0xEB00000000747365, v12);
  }

  if ([v0 heartRateVersion])
  {
    v13 = [v0 heartRateVersion];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v13, 0x7461527472616568, 0xE900000000000065, v14);
  }

  if ([v0 newChargingStatusVersion])
  {
    v15 = [v0 newChargingStatusVersion];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v15, 0xD000000000000011, 0x8000000100267110, v16);
  }

  if ([v0 pauseMediaOnSleepVersion])
  {
    v17 = [v0 pauseMediaOnSleepVersion];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v17, 0xD000000000000011, 0x8000000100267130, v18);
  }

  if ([v0 personalTranslatorVersion])
  {
    v19 = [v0 personalTranslatorVersion];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v19, 0xD000000000000012, 0x8000000100267150, v20);
  }

  if ([v0 remoteCameraControlVersion])
  {
    v21 = [v0 remoteCameraControlVersion];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v21, 0xD000000000000013, 0x8000000100267170, v22);
  }

  if ([v0 usbAudioVersion])
  {
    v23 = [v0 usbAudioVersion];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v23, 0x6F69647541627375, 0xE800000000000000, v24);
  }

  if ([v0 voiceQualityVersion])
  {
    v25 = [v0 voiceQualityVersion];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v25, 0x6175516563696F76, 0xEC0000007974696CLL, v26);
  }

  if ([v0 whatsNewVersion])
  {
    v27 = [v0 whatsNewVersion];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v27, 0x77654E7374616877, 0xE800000000000000, v28);
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1000F5604(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  while (2)
  {
    v7 = *(&off_1002BBBA8 + v4++ + 32);
    v8 = 0xED0000706154656CLL;
    v9 = 0x62756F4465736163;
    switch(v7)
    {
      case 1:
        v9 = 0xD000000000000011;
        v8 = 0x80000001002670A0;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 2:
        v9 = 0xD00000000000001ELL;
        v8 = 0x80000001002670C0;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 3:
        v9 = 0x7473654764616568;
        v10 = 1936028277;
        goto LABEL_17;
      case 4:
        v9 = 0x41676E6972616568;
        v8 = 0xED00007473697373;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 5:
        v9 = 0x54676E6972616568;
        v8 = 0xEB00000000747365;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 6:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 7:
        v9 = 0xD000000000000011;
        v8 = 0x8000000100267110;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 8:
        v9 = 0xD000000000000011;
        v8 = 0x8000000100267130;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x8000000100267150;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 10:
        v9 = 0xD000000000000013;
        v8 = 0x8000000100267170;
        goto LABEL_28;
      case 11:
        v8 = 0xE800000000000000;
        v9 = 0x6F69647541627375;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 12:
        v9 = 0x6175516563696F76;
        v10 = 2037672300;
LABEL_17:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 13:
        v8 = 0xE800000000000000;
        v9 = 0x77654E7374616877;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (*(a1 + 16))
        {
LABEL_29:
          v11 = sub_1000F8C5C(v9, v8);
          v13 = v12;

          if (v13)
          {
            v34 = *(*(a1 + 56) + 8 * v11);
            v14 = v7;
            v15 = 0xED0000706154656CLL;
            v16 = 0x62756F4465736163;
            switch(v14)
            {
              case 0:
                goto LABEL_46;
              case 1:
                v16 = 0xD000000000000011;
                v15 = 0x80000001002670A0;
                goto LABEL_46;
              case 2:
                v16 = 0xD00000000000001ELL;
                v15 = 0x80000001002670C0;
                goto LABEL_46;
              case 3:
                v16 = 0x7473654764616568;
                v15 = 0xEC00000073657275;
                goto LABEL_46;
              case 4:
                v16 = 0x41676E6972616568;
                v15 = 0xED00007473697373;
                goto LABEL_46;
              case 5:
                v16 = 0x54676E6972616568;
                v15 = 0xEB00000000747365;
                goto LABEL_46;
              case 6:
                v16 = 0x7461527472616568;
                v15 = 0xE900000000000065;
                goto LABEL_46;
              case 7:
                v16 = 0xD000000000000011;
                v15 = 0x8000000100267110;
                goto LABEL_46;
              case 8:
                v16 = 0xD000000000000011;
                v15 = 0x8000000100267130;
                goto LABEL_46;
              case 9:
                v16 = 0xD000000000000012;
                v15 = 0x8000000100267150;
                goto LABEL_46;
              case 10:
                v16 = 0xD000000000000013;
                v15 = 0x8000000100267170;
                goto LABEL_46;
              case 11:
                v15 = 0xE800000000000000;
                v16 = 0x6F69647541627375;
                goto LABEL_46;
              case 12:
                v16 = 0x6175516563696F76;
                v15 = 0xEC0000007974696CLL;
                goto LABEL_46;
              case 13:
                v15 = 0xE800000000000000;
                v16 = 0x77654E7374616877;
LABEL_46:
                swift_beginAccess();
                v17 = *(v2 + v5);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v19 = *(v2 + v5);
                v35 = v19;
                *(v2 + v5) = 0x8000000000000000;
                v20 = sub_1000F8C5C(v16, v15);
                v22 = v19[2];
                v23 = (v21 & 1) == 0;
                v24 = __OFADD__(v22, v23);
                v25 = v22 + v23;
                if (v24)
                {
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
LABEL_61:
                  JUMPOUT(0);
                }

                v26 = v21;
                if (v19[3] >= v25)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v33 = v20;
                    sub_10015D94C();
                    v20 = v33;
                  }
                }

                else
                {
                  sub_10015C88C(v25, isUniquelyReferenced_nonNull_native);
                  v20 = sub_1000F8C5C(v16, v15);
                  if ((v26 & 1) != (v27 & 1))
                  {
                    goto LABEL_60;
                  }
                }

                if (v26)
                {
                  v28 = v20;

                  v29 = v35;
                  *(v35[7] + 8 * v28) = v34;
                }

                else
                {
                  v29 = v19;
                  v19[(v20 >> 6) + 8] |= 1 << v20;
                  v30 = (v19[6] + 16 * v20);
                  *v30 = v16;
                  v30[1] = v15;
                  *(v19[7] + 8 * v20) = v34;
                  v31 = v19[2];
                  v24 = __OFADD__(v31, 1);
                  v32 = v31 + 1;
                  if (v24)
                  {
                    goto LABEL_59;
                  }

                  v19[2] = v32;
                }

                *(v2 + v5) = v29;
                result = swift_endAccess();
                break;
              default:
                goto LABEL_61;
            }
          }
        }

        else
        {
LABEL_2:
        }

        if (v4 != 14)
        {
          continue;
        }

        return result;
    }
  }
}

char *AAProxCardsRecord.init(from:)(uint64_t *a1)
{
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v77 - v6;
  __chkstk_darwin(v7);
  v85 = &v77 - v8;
  v9 = type metadata accessor for Date();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  __chkstk_darwin(v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for UUID();
  v88 = *(v16 - 8);
  v17 = *(v88 + 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000EE870(&qword_1002F7F10, &qword_100226CA0);
  v89 = *(v20 - 8);
  v21 = *(v89 + 64);
  __chkstk_darwin(v20);
  v23 = &v77 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v91 = a1;
  sub_1000EF78C(a1, v24);
  sub_1000F9F34();
  v26 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_1000EF824(v91);
    v27 = v92;
    type metadata accessor for AAProxCardsRecord();
    v28 = *((swift_isaMask & *v27) + 0x30);
    v29 = *((swift_isaMask & *v27) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v90 = v15;
    v82 = v12;
    v95 = 0;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v92[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata] = *v93;
    LOBYTE(v93[0]) = 1;
    sub_1000F9EEC(&unk_1002F8750, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v92;
    (*(v88 + 4))(&v92[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier], v19, v16);
    LOBYTE(v93[0]) = 2;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = &v31[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v93[0]) = 3;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    *&v31[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount] = v37;
    *&v31[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions] = sub_1000F98F4(_swiftEmptyArrayStorage);
    v38 = v90;
    static Date.now.getter();
    v39 = v20;
    v40 = *(v86 + 32);
    v40(&v31[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate], v38, v87);
    v41 = type metadata accessor for AAProxCardsRecord();
    v94.receiver = v31;
    v94.super_class = v41;
    v42 = objc_msgSendSuper2(&v94, "init");
    sub_1000EE870(&qword_1002F7F20, &qword_100226CA8);
    v95 = 4;
    sub_1000F9FD4(&unk_1002F7F28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v88 = v40;
    v92 = v42;
    sub_1000F5604(v93[0]);
    v43 = v87;

    LOBYTE(v93[0]) = 5;
    sub_1000F9EEC(&qword_1002F7D90, &type metadata accessor for Date);
    v44 = v85;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v80 = v23;
    v81 = v39;
    v45 = v86 + 48;
    v46 = *(v86 + 48);
    if (v46(v44, 1, v43) == 1)
    {
      v78 = v46;
      v79 = v45;
      v47 = v92;
      v48 = objc_autoreleasePoolPush();
      v49 = &v47[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
      isa = sub_100169D38(*&v47[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v47[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      v51 = v88;
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      v93[0] = isa;
      v52 = isa;
      sub_1000F6FF4(v93);
      objc_autoreleasePoolPop(v48);
      v53 = [v52 modificationDate];

      if (v53)
      {
        v54 = v90;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v89 + 8))(v80, v81);
        v55 = v84;
        v43 = v87;
        v51(v84, v54, v87);
        (*(v86 + 56))(v55, 0, 1, v43);
        v56 = v82;
        v51(v82, v55, v43);
        v57 = &unk_100300000;
        v58 = v85;
        v59 = v78(v85, 1, v43);
      }

      else
      {
        v62 = *(v86 + 56);
        v62(v84, 1, 1, v87);
        v63 = objc_autoreleasePoolPush();
        v64 = sub_100169D38(*v49, *(v49 + 1));
        if (!v64)
        {
          v64 = sub_1000F882C().super.isa;
        }

        v65 = v83;
        v93[0] = v64;
        v66 = v64;
        sub_1000F6FF4(v93);
        objc_autoreleasePoolPop(v63);
        v67 = [v66 creationDate];

        v56 = v82;
        if (v67)
        {
          v68 = v62;
          v69 = v90;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v89 + 8))(v80, v81);
          v70 = v87;
          v71 = v88;
          v88(v65, v69, v87);
          v68(v65, 0, 1, v70);
          v43 = v70;
          v71(v56, v65, v70);
          v72 = v78;
        }

        else
        {
          v73 = v87;
          v62(v65, 1, 1, v87);
          v43 = v73;
          static Date.now.getter();
          (*(v89 + 8))(v80, v81);
          v72 = v78;
          if (v78(v65, 1, v73) != 1)
          {
            sub_1000EEE6C(v83, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v74 = v84;
        v75 = v72(v84, 1, v43);
        v57 = &unk_100300000;
        v58 = v85;
        if (v75 != 1)
        {
          sub_1000EEE6C(v74, &qword_1002F7EF0, &unk_100226C90);
        }

        v59 = v72(v58, 1, v43);
      }

      if (v59 != 1)
      {
        sub_1000EEE6C(v58, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v60 = *(v89 + 8);
      v61 = v92;
      v60(v80, v81);
      v56 = v82;
      v88(v82, v44, v43);
      v57 = &unk_100300000;
    }

    v76 = v57[361];
    v27 = v92;
    swift_beginAccess();
    (*(v86 + 40))(&v27[v76], v56, v43);
    swift_endAccess();
    sub_1000EF824(v91);
  }

  return v27;
}

id HMDeviceCloudRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1000F67AC()
{
  v1 = *v0;
  v2 = 0x74654D64756F6C63;
  v3 = 0xD000000000000023;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x696669746E656469;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F688C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FA56C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F68C0(uint64_t a1)
{
  v2 = sub_1000F9F34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F68FC(uint64_t a1)
{
  v2 = sub_1000F9F34();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AAProxCardsRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAProxCardsRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AAProxCardsRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F7F38, &qword_100226CB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1000F9F34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8);
  v29 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata);
  v30 = v14;
  LOBYTE(v28) = 0;
  sub_1000EE9F4(v29, v14);
  sub_1000EF9D8();
  v15 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
    sub_1000EF870(v29, v30);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v27 = v7;
    sub_1000EF870(v29, v30);
    LOBYTE(v29) = 1;
    type metadata accessor for UUID();
    sub_1000F9EEC(&qword_1002F8340, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
    v18 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8);
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v9;
    v20 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    swift_beginAccess();
    v28 = *(v2 + v21);
    v31 = 4;
    sub_1000EE870(&qword_1002F7F20, &qword_100226CA8);
    sub_1000F9FD4(&unk_1002F7F40);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
    swift_beginAccess();
    v25[1] = v8;
    v24 = v26;
    v23 = v27;
    (*(v26 + 16))(v27, v2 + v22, v4);
    v31 = 5;
    sub_1000F9EEC(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v23, v4);
    return (*(v19 + 8))(v12, v8);
  }
}

uint64_t sub_1000F6F00()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1000F6F44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1000F6FF4(id *a1)
{
  v2 = v1;
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  v5 = *a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000EE954();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = [v5 encryptedValues];
  swift_getObjectType();
  v33 = v10;
  CKRecordKeyValueSetting.subscript.getter();
  v12 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
  v11 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8);
  if (!v36)
  {
    goto LABEL_8;
  }

  if (v35 != v12 || v36 != v11)
  {
    v13 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
    v14 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8);
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v35 = v12;
    v36 = v11;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_9;
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v36 & 1) != 0 || v35 != *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount))
  {
    v35 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v16 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v2 = v17 + 64;
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  a1 = 0;
LABEL_16:
  v22 = v33;
  if (!v20)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_21:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v24 | (a1 << 6);
    v26 = (*(v17 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(*(v17 + 56) + 8 * v25);

    v30 = String._bridgeToObjectiveC()();
    v31 = [v22 objectForKeyedSubscript:v30];

    if (v31 && (v35 = v31, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
    {
      if (v34 >= v29)
      {
        goto LABEL_15;
      }
    }

    else if (!v29)
    {
LABEL_15:

      goto LABEL_16;
    }

    v35 = v29;
    v22 = v33;
    CKRecordKeyValueSetting.subscript.setter();
  }

  while (v20);
  while (1)
  {
LABEL_17:
    v23 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v2 + 8 * v23);
    a1 = (a1 + 1);
    if (v20)
    {
      a1 = v23;
      goto LABEL_21;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F7438@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

char *sub_1000F74B4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord());
  result = AAProxCardsRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::UInt64 __swiftcall AAProxCardsRecord.version(for:)(audioaccessoryd::AAProxCardsRecord::ProxCardKeys a1)
{
  v2 = AAProxCardsRecord.ProxCardKeys.rawValue.getter(a1);
  v4 = v3;
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (, v7 = sub_1000F8C5C(v2, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v7);

    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000F75E4(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000F7B9C(a1))
  {
    v55 = v7;
    v56 = v4;
    v57 = v3;
    v8 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) < v8)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) = v8;
    }

    v9 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    swift_beginAccess();
    v10 = *(a1 + v9);
    a1 = (v10 + 64);
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    v62 = v10;

    v61 = v14;
    swift_beginAccess();
    v15 = 0;
    v16 = (v11 + 63) >> 6;
    v58 = &_swiftEmptyDictionarySingleton;
    v59 = xmmword_100226C80;
    v60 = v1;
    while (1)
    {
      while (1)
      {
        if (!v13)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_39;
            }

            if (v17 >= v16)
            {
              break;
            }

            v13 = a1[v17];
            ++v15;
            if (v13)
            {
              v15 = v17;
              goto LABEL_12;
            }
          }

          if (!*(v58 + 16))
          {
          }

          sub_1000F5604(v58);

          v53 = v55;
          static Date.now.getter();
          v54 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
          swift_beginAccess();
          (*(v56 + 40))(v1 + v54, v53, v57);
          return swift_endAccess();
        }

LABEL_12:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = v18 | (v15 << 6);
        v20 = (*(v62 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v62 + 56) + 8 * v19);
        v24 = *(v1 + v61);
        v25 = *(v24 + 16);

        if (v25)
        {
          break;
        }

LABEL_21:
        if (v23)
        {
          goto LABEL_15;
        }

LABEL_22:
        static os_log_type_t.info.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v38 = swift_allocObject();
        *(v38 + 16) = v59;
        *(v38 + 56) = &type metadata for String;
        v39 = sub_1000EE954();
        *(v38 + 32) = v22;
        *(v38 + 40) = v21;
        *(v38 + 96) = &type metadata for UInt64;
        *(v38 + 104) = &protocol witness table for UInt64;
        *(v38 + 64) = v39;
        *(v38 + 72) = v23;
        os_log(_:dso:log:_:_:)();

        v1 = v60;
      }

      v26 = sub_1000F8C5C(v22, v21);
      if ((v27 & 1) == 0)
      {

        goto LABEL_21;
      }

      v28 = *(*(v24 + 56) + 8 * v26);

      if (v28 >= v23)
      {
        goto LABEL_22;
      }

LABEL_15:
      v29 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v29;
      v32 = sub_1000F8C5C(v22, v21);
      v33 = *(v29 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (*(v29 + 24) >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v40 = v31;
          sub_10015D94C();
          if ((v40 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v58 = v63;
        *(*(v63 + 56) + 8 * v32) = v23;
        v1 = v60;
      }

      else
      {
        LODWORD(v58) = v31;
        sub_10015C88C(v35, isUniquelyReferenced_nonNull_native);
        v36 = sub_1000F8C5C(v22, v21);
        if ((v58 & 1) != (v37 & 1))
        {
          goto LABEL_42;
        }

        v32 = v36;
        if (v58)
        {
          goto LABEL_27;
        }

LABEL_29:
        v41 = v63;
        *(v63 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v42 = (v41[6] + 16 * v32);
        *v42 = v22;
        v42[1] = v21;
        *(v41[7] + 8 * v32) = v23;
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_41;
        }

        v58 = v41;
        v41[2] = v45;
        v1 = v60;
      }
    }
  }

  static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100226100;
  v47 = a1;
  v48 = [v47 description];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_1000EE954();
  *(v46 + 32) = v49;
  *(v46 + 40) = v51;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000F7B9C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) < *(result + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v4 < *(v6 + 16))
  {
    return 1;
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v25 = v2;

  v11 = 0;
  v26 = v3;
  v27 = v1;
  while (v9)
  {
LABEL_15:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(v6 + 56) + 8 * v14);
    v16 = *(v1 + v3);
    if (!*(v16 + 16))
    {
      goto LABEL_9;
    }

    v17 = (*(v6 + 48) + 16 * v14);
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_1000F8C5C(v18, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v16 + 56) + 8 * v20);

      v24 = v23 >= v15;
      v3 = v26;
      v1 = v27;
      if (!v24)
      {
LABEL_18:

        return 1;
      }
    }

    else
    {

      v3 = v26;
      v1 = v27;
LABEL_9:
      if (v15)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

CKRecord sub_1000F7D84()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x8000000100267A50;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000100267A80;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x8000000100267A80;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

CKRecord sub_1000F7F40()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267AC0;
  v5._countAndFlagsBits = 0xD000000000000022;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = 0x654B72657473614DLL;
  *(v9 + 40) = 0xE900000000000079;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0x654B72657473614DLL;
  v10._object = 0xE900000000000079;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

CKRecord sub_1000F8100()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267220;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  strcpy((v9 + 32), "MagicSettings");
  *(v9 + 46) = -4864;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0x746553636967614DLL;
  v10._object = 0xED000073676E6974;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

CKRecord sub_1000F82C4(uint64_t a1)
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v2 = a1 + *(type metadata accessor for SoundProfileRecord() + 20);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = 0xD000000000000010;
  v8._object = 0x8000000100267960;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  v10._countAndFlagsBits = v3;
  v10._object = v5;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = 0xD000000000000012;
  *(v12 + 40) = 0x80000001002671C0;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x80000001002671C0;
  return CKRecord.init(recordType:recordID:)(v13, v11);
}

CKRecord sub_1000F8490(uint64_t a1)
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v2 = a1 + *(type metadata accessor for DeviceRecord() + 20);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._object = 0x8000000100267220;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  v10._countAndFlagsBits = v3;
  v10._object = v5;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  strcpy((v12 + 32), "DeviceRecord");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v13._countAndFlagsBits = 0x6552656369766544;
  v13._object = 0xEC00000064726F63;
  return CKRecord.init(recordType:recordID:)(v13, v11);
}

CKRecord sub_1000F8660()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x8000000100267AF0;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = 0xD000000000000013;
  *(v9 + 40) = 0x8000000100267B10;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x8000000100267B10;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

CKRecord sub_1000F882C()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x8000000100267AF0;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000100226E20;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x8000000100226E20;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

CKRecord sub_1000F89F4()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267AF0;
  v5._countAndFlagsBits = 0xD000000000000012;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  strcpy((v9 + 32), "AADeviceRecord");
  *(v9 + 47) = -18;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v10._countAndFlagsBits = 0x6563697665444141;
  v10._object = 0xEE0064726F636552;
  return CKRecord.init(recordType:recordID:)(v10, v8);
}

unint64_t sub_1000F8BC8(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F8EBC(a1, v4);
}

unint64_t sub_1000F8C5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000F8FC0(a1, a2, v6);
}

unint64_t sub_1000F8CD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000F9EEC(&qword_1002F8028, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F9078(a1, v4);
}

unint64_t sub_1000F8D88(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &qword_1002F85A0, CKRecord_ptr);
}

unint64_t sub_1000F8DD8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &unk_1002F8B50, CKRecordID_ptr);
}

unint64_t sub_1000F8E28(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &unk_1002F7FD0, CKRecordZoneID_ptr);
}

unint64_t sub_1000F8E78(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000F9250(a1, v4);
}

unint64_t sub_1000F8EBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000F8FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000F9078(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000F9EEC(&qword_1002F8028, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000F9184(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000FA784(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000F9250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FA898(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000FA8F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000F9318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000F8C5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10015D94C();
      result = v19;
      goto LABEL_8;
    }

    sub_10015C88C(v16, a4 & 1);
    v20 = *v5;
    result = sub_1000F8C5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_10015D8C0(result, a2, a3, a1, v22);
  }

  return result;
}

id sub_1000F9448(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000F8E28(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10015DC30();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10015D074(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1000F8E28(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1(v8, v21);
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1(v8, v21);
  }

  sub_10015D908(v8, a2, a1, v19);

  return a2;
}

uint64_t sub_1000F958C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F8C5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10015DD90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10015D2DC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000F8C5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10015D8C0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1000F96D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&unk_1002F9D40, &unk_100226FB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FAAFC(v4, &v11, &qword_1002F7FF0, &qword_100226C68);
      v5 = v11;
      result = sub_1000F8BC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000FA7CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000F97FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&unk_1002F7FE0, &qword_100226FA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000F8BC8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1000F98F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8030, qword_100229300);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000F8C5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000F99F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8040, qword_1002270C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FAAFC(v4, &v13, &unk_1002F9EB0, &unk_100227D50);
      v5 = v13;
      v6 = v14;
      result = sub_1000F8C5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000FA7CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F9B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8010, &qword_100226FE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1000F8C5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1000F9C8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000EE870(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v15 = *i;
      v9 = *(i - 1);

      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1000F9D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F7FF8, qword_100226FC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000F8C5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _s15audioaccessoryd17AAProxCardsRecordC12ProxCardKeysO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BBA38, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F9EEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F9F34()
{
  result = qword_1002F7F18;
  if (!qword_1002F7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7F18);
  }

  return result;
}

uint64_t type metadata accessor for AAProxCardsRecord()
{
  result = qword_1002F7FA8;
  if (!qword_1002F7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F9FD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2B2C(&qword_1002F7F20, &qword_100226CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FA048()
{
  result = qword_1002F7F50;
  if (!qword_1002F7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7F50);
  }

  return result;
}

uint64_t sub_1000FA0E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2B2C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FA128(uint64_t a1)
{
  result = sub_1000F9EEC(&qword_1002F7F68, type metadata accessor for AAProxCardsRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000FA180(uint64_t a1)
{
  *(a1 + 8) = sub_1000F9EEC(&qword_1002F7F70, type metadata accessor for AAProxCardsRecord);
  result = sub_1000F9EEC(&qword_1002F7F78, type metadata accessor for AAProxCardsRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000FA20C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAProxCardsRecord.ProxCardKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AAProxCardsRecord.ProxCardKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FA468()
{
  result = qword_1002F7FB8;
  if (!qword_1002F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7FB8);
  }

  return result;
}

unint64_t sub_1000FA4C0()
{
  result = qword_1002F7FC0;
  if (!qword_1002F7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7FC0);
  }

  return result;
}

unint64_t sub_1000FA518()
{
  result = qword_1002F7FC8;
  if (!qword_1002F7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7FC8);
  }

  return result;
}

uint64_t sub_1000FA56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001002678F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FA784(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_1000FA7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000FA7DC()
{
  result = qword_1002F8008;
  if (!qword_1002F8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8008);
  }

  return result;
}

unint64_t sub_1000FA830()
{
  result = qword_1002F7BE0;
  if (!qword_1002F7BE0)
  {
    sub_1000FA784(255, &qword_1002F85A0, CKRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7BE0);
  }

  return result;
}

uint64_t sub_1000FA948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BTDeferredRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTDeferredRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FAAA8()
{
  result = qword_1002F8038;
  if (!qword_1002F8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8038);
  }

  return result;
}

uint64_t sub_1000FAAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000EE870(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000FAB84()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300B50);
  sub_1000EE91C(v4, qword_100300B50);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1000FAD4C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300B68);
  sub_1000EE91C(v4, qword_100300B68);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1000FB81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v77 - v7;
  __chkstk_darwin(v8);
  v85 = &v77 - v9;
  v10 = type metadata accessor for Date();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  __chkstk_darwin(v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v77 - v14;
  v15 = type metadata accessor for URL();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = *(v89 + 64);
  __chkstk_darwin(v15);
  v92 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UUID();
  v91 = *(v88 - 1);
  v18 = *(v91 + 64);
  __chkstk_darwin(v88);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000EE870(&qword_1002F8130, &qword_100227338);
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v21);
  v24 = &v77 - v23;
  v25 = type metadata accessor for SoundProfileRecord();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1000FE260();
  v30 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return sub_1000EF824(a1);
  }

  v31 = v92;
  v78 = v28;
  v79 = v25;
  v94 = a1;
  v96 = 0;
  sub_1000EF8C4();
  v32 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v21;
  v35 = v78;
  *v78 = *v95;
  LOBYTE(v95[0]) = 1;
  sub_1000FDE18(&unk_1002F8750, &type metadata accessor for UUID);
  v36 = v20;
  v37 = v88;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v79;
  (*(v91 + 32))(&v35[*(v79 + 20)], v36, v37);
  LOBYTE(v95[0]) = 2;
  sub_1000FDE18(&qword_1002F8138, &type metadata accessor for URL);
  v39 = v90;
  v77 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v89 + 32))(&v35[*(v38 + 24)], v31, v39);
  v40 = *(v38 + 28);
  static Date.now.getter();
  LOBYTE(v95[0]) = 3;
  sub_1000FDE18(&qword_1002F7D90, &type metadata accessor for Date);
  v41 = v85;
  v42 = v87;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v92 = v32;
  v43 = v86;
  v44 = v86 + 48;
  v91 = *(v86 + 48);
  if ((v91)(v41, 1, v42) == 1)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v78;
    isa = sub_100169D38(*v78, *(v78 + 1));
    v90 = v44;
    if (!isa)
    {
      isa = sub_1000F82C4(v46).super.isa;
    }

    v89 = v40;
    v95[0] = isa;
    v48 = isa;
    sub_1000FD23C(v95);
    objc_autoreleasePoolPop(v45);
    v49 = [v48 modificationDate];

    if (v49)
    {
      v50 = v81;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v93 + 8))(v92, v33);
      v51 = v86;
      v42 = v87;
      v52 = *(v86 + 32);
      v53 = v82;
      v52(v82, v50, v87);
      (*(v51 + 56))(v53, 0, 1, v42);
      v52(v84, v53, v42);
      v54 = v94;
      v55 = v83;
      v56 = v85;
      v40 = v89;
      v57 = (v91)(v85, 1, v42);
    }

    else
    {
      v59 = *(v86 + 56);
      v60 = v82;
      v59();
      v88 = objc_autoreleasePoolPush();
      v61 = sub_100169D38(*v46, *(v46 + 8));
      v62 = v81;
      if (!v61)
      {
        v61 = sub_1000F82C4(v46).super.isa;
      }

      v63 = v93;
      v95[0] = v61;
      v64 = v61;
      sub_1000FD23C(v95);
      objc_autoreleasePoolPop(v88);
      v65 = [v64 creationDate];

      if (v65)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v63 + 8))(v92, v33);
        v66 = *(v86 + 32);
        v67 = v80;
        v68 = v62;
        v69 = v87;
        v66(v80, v68, v87);
        (v59)(v67, 0, 1, v69);
        v66(v84, v67, v69);
        v42 = v69;
        v70 = v82;
        v55 = v83;
        v54 = v94;
        v40 = v89;
      }

      else
      {
        v71 = v80;
        v72 = v59;
        v42 = v87;
        (v72)(v80, 1, 1, v87);
        static Date.now.getter();
        (*(v63 + 8))(v92, v33);
        v73 = (v91)(v71, 1, v42);
        v54 = v94;
        v55 = v83;
        v40 = v89;
        v70 = v60;
        if (v73 != 1)
        {
          sub_1000EEE6C(v71, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v74 = v91;
      v75 = (v91)(v70, 1, v42);
      v56 = v85;
      if (v75 != 1)
      {
        sub_1000EEE6C(v70, &qword_1002F7EF0, &unk_100226C90);
      }

      v57 = v74(v56, 1, v42);
    }

    v58 = v84;
    if (v57 != 1)
    {
      sub_1000EEE6C(v56, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  else
  {
    (*(v93 + 8))(v92, v33);
    v58 = v84;
    (*(v43 + 32))(v84, v41, v42);
    v54 = v94;
    v55 = v83;
  }

  v76 = v78;
  (*(v86 + 40))(&v78[v40], v58, v42);
  sub_1000FE2B4(v76, v55);
  sub_1000EF824(v54);
  return sub_1000FE318(v76);
}

void sub_1000FC2B4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v68 - v8;
  v75 = type metadata accessor for Date();
  v76 = *(v75 - 8);
  v9 = v76[8];
  __chkstk_darwin(v75);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  v13 = type metadata accessor for URL();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v68 - v18;
  v19 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v68 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002270D0 == v28)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_1000FDE60();
      swift_allocError();
      *v57 = 1;
      swift_willThrow();

      return;
    }
  }

  v72 = a2;
  v30 = [a1 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1000EEE6C(v22, &qword_1002F8000, &unk_1002262C0);
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    *(v32 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    *(v32 + 64) = sub_1000FA830();
    *(v32 + 32) = a1;
    v33 = a1;
    os_log(_:dso:log:_:_:)();

    sub_1000FDE60();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    return;
  }

  (*(v24 + 32))(v27, v22, v23);
  v35 = [a1 valueStore];
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if (!v83)
  {
    sub_1000EEE6C(v82, &qword_1002F8058, &unk_100227110);
    goto LABEL_17;
  }

  sub_1000EE870(&unk_1002F9D70, &qword_100229A40);
  sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_1000FDE60();
    swift_allocError();
    *v58 = 1;
    swift_willThrow();

    (*(v24 + 8))(v27, v23);
    return;
  }

  v36 = v84;
  v37 = [v84 fileURL];
  if (!v37)
  {

    goto LABEL_17;
  }

  v70 = v36;
  v38 = v37;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v80 + 32))(v79, v16, v81);
  v39 = type metadata accessor for SoundProfileRecord();
  (*(v24 + 16))(v72 + *(v39 + 20), v27, v23);
  v40 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v40];
  [v40 finishEncoding];
  v41 = [v40 encodedData];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = v72;
  *v72 = v42;
  v45[1] = v44;
  v46 = v79;
  v47 = v80;
  v48 = v81;
  v71 = v39;
  (*(v80 + 16))(v45 + *(v39 + 24), v79, v81);
  v49 = [a1 modificationDate];
  if (v49)
  {
    v50 = v46;
    v51 = v49;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v47 + 8))(v50, v48);
    (*(v24 + 8))(v27, v23);
    v52 = v76;
    v53 = v77;
    v54 = v76[4];
    v55 = v75;
    v54(v77, v78, v75);
    (v52[7])(v53, 0, 1, v55);
    v56 = v74;
    v54(v74, v53, v55);
  }

  else
  {
    v52 = v76;
    v59 = v76[7];
    v55 = v75;
    v59(v77, 1, 1, v75);
    v60 = [a1 creationDate];
    if (v60)
    {
      v69 = v59;
      v61 = v78;
      v62 = v60;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v76;
      (*(v80 + 8))(v79, v81);
      (*(v24 + 8))(v27, v23);
      v63 = v52[4];
      v64 = v73;
      v63(v73, v61, v55);
      v69(v64, 0, 1, v55);
      v56 = v74;
      v63(v74, v64, v55);
      v65 = v52[6];
    }

    else
    {
      v66 = v73;
      v59(v73, 1, 1, v55);
      v56 = v74;
      static Date.now.getter();

      (*(v80 + 8))(v79, v81);
      (*(v24 + 8))(v27, v23);
      v65 = v52[6];
      if (v65(v66, 1, v55) != 1)
      {
        sub_1000EEE6C(v66, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v45 = v72;
    v67 = v77;
    if (v65(v77, 1, v55) != 1)
    {
      sub_1000EEE6C(v67, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (v52[4])(v45 + *(v71 + 28), v56, v55);
}

uint64_t sub_1000FCD2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002270D0 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      sub_1000FDE60();
      swift_allocError();
      v20 = 1;
      goto LABEL_11;
    }
  }

  v43 = a2;
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v21 = v41;
    (*(v10 + 32))(v41, v8, v9);
    v22 = type metadata accessor for SoundProfileRecord();
    v23 = v22[5];
    v24 = *(v10 + 16);
    v25 = a1;
    v40 = a1;
    v26 = v42;
    v24(v42 + v23, v21, v9);
    v27 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    [v25 encodeSystemFieldsWithCoder:v27];
    [v27 finishEncoding];
    v28 = [v27 encodedData];
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *v26 = v29;
    v26[1] = v31;
    v32 = v22[6];
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    v35 = v26 + v32;
    v36 = v43;
    (*(v34 + 16))(v35, v43, v33);
    v37 = v26 + v22[7];
    static Date.now.getter();

    (*(v34 + 8))(v36, v33);
    return (*(v10 + 8))(v21, v9);
  }

  sub_1000EEE6C(v8, &qword_1002F8000, &unk_1002262C0);
  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100226100;
  *(v17 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  *(v17 + 64) = sub_1000FA830();
  *(v17 + 32) = a1;
  v18 = a1;
  os_log(_:dso:log:_:_:)();

  sub_1000FDE60();
  swift_allocError();
  v20 = 0;
  a2 = v43;
LABEL_11:
  *v19 = v20;
  swift_willThrow();

  v39 = type metadata accessor for URL();
  return (*(*(v39 - 8) + 8))(a2, v39);
}

void sub_1000FD23C(id *a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226100;
  v3 = *a1;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000EE954();
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  v12 = [v3 valueStore];
  LODWORD(v3) = *(type metadata accessor for SoundProfileRecord() + 24);
  v8 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  [v8 initWithFileURL:v10];

  sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.setter();
}

uint64_t sub_1000FD448(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8118, &qword_100227330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1000FE260();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v18 = *v3;
  v19 = v11;
  v17[15] = 0;
  sub_1000EE9F4(v18, v11);
  sub_1000EF9D8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000EF870(v18, v19);
  if (!v2)
  {
    v12 = type metadata accessor for SoundProfileRecord();
    v13 = v12[5];
    LOBYTE(v18) = 1;
    type metadata accessor for UUID();
    sub_1000FDE18(&qword_1002F8340, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v18) = 2;
    type metadata accessor for URL();
    sub_1000FDE18(&qword_1002F8128, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v12[7];
    LOBYTE(v18) = 3;
    type metadata accessor for Date();
    sub_1000FDE18(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000FD710()
{
  v1 = 0x74654D64756F6C63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000FD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FE48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000FD7DC(uint64_t a1)
{
  v2 = sub_1000FE260();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD818(uint64_t a1)
{
  v2 = sub_1000FE260();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1000FD904(int *a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  Data.hash(into:)();
  v5 = a1[5];
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = a1[6];
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v7 = a1[7];
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FDA60(uint64_t a1, int *a2)
{
  v4 = *v2;
  v5 = v2[1];
  Data.hash(into:)();
  v6 = a2[5];
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = a2[6];
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v8 = a2[7];
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000FDBA8(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  Data.hash(into:)();
  v6 = a2[5];
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = a2[6];
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v8 = a2[7];
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FDD00(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_100121564(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[6];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a3[7];

  return static Date.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t type metadata accessor for SoundProfileRecord()
{
  result = qword_1002F80B8;
  if (!qword_1002F80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDE18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000FDE60()
{
  result = qword_1002F8050;
  if (!qword_1002F8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoundProfileRecord.SoundProfileRecordError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SoundProfileRecord.SoundProfileRecordError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000FE038()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000FE0E4(uint64_t a1)
{
  *(a1 + 8) = sub_1000FDE18(&qword_1002F80F8, type metadata accessor for SoundProfileRecord);
  result = sub_1000FDE18(&qword_1002F9D80, type metadata accessor for SoundProfileRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FE1B4()
{
  result = qword_1002F8108;
  if (!qword_1002F8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8108);
  }

  return result;
}

uint64_t sub_1000FE208(uint64_t a1)
{
  result = sub_1000FDE18(&qword_1002F8110, type metadata accessor for SoundProfileRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FE260()
{
  result = qword_1002F8120;
  if (!qword_1002F8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8120);
  }

  return result;
}

uint64_t sub_1000FE2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundProfileRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE318(uint64_t a1)
{
  v2 = type metadata accessor for SoundProfileRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FE388()
{
  result = qword_1002F8148;
  if (!qword_1002F8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8148);
  }

  return result;
}

unint64_t sub_1000FE3E0()
{
  result = qword_1002F8150;
  if (!qword_1002F8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8150);
  }

  return result;
}

unint64_t sub_1000FE438()
{
  result = qword_1002F8158;
  if (!qword_1002F8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8158);
  }

  return result;
}

uint64_t sub_1000FE48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100267C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000FE614(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6574656C6564;
  }

  else
  {
    v2 = 0x657461647075;
  }

  if (*a2)
  {
    v3 = 0x6574656C6564;
  }

  else
  {
    v3 = 0x657461647075;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000FE694()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FE704()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000FE758()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FE7C4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BBBD8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000FE824(uint64_t *a1@<X8>)
{
  v2 = 0x657461647075;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_1000FE904(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8210, &qword_1002275F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1000FF510();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = *v3;
  v25 = 0;
  sub_1000FF564();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for BTDeferredRecord();
    v15 = v14[6];
    LOBYTE(v23) = 2;
    type metadata accessor for UUID();
    sub_1000FF634(&qword_1002F8340, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + v14[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v14[8]);
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = (v3 + v14[9]);
    v21 = v20[1];
    v23 = *v20;
    v24 = v21;
    v25 = 5;
    sub_1000FF5B8(v23, v21);
    sub_1000EF9D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000FF5CC(v23, v24);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000FEBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000EE870(&qword_1002F8228, &qword_1002275F8);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v33);
  v10 = &v28 - v9;
  v11 = type metadata accessor for BTDeferredRecord();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v35 = a1;
  sub_1000EF78C(a1, v15);
  sub_1000FF510();
  v34 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000EF824(v35);
  }

  v29 = v7;
  v17 = v14;
  v18 = v31;
  v19 = v32;
  v37 = 0;
  sub_1000FF5E0();
  v20 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v36;
  LOBYTE(v36) = 1;
  *(v17 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v17 + 16) = v21;
  LOBYTE(v36) = 2;
  sub_1000FF634(&unk_1002F8750, &type metadata accessor for UUID);
  v22 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v17 + v11[6], v22, v4);
  LOBYTE(v36) = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = (v17 + v11[7]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v36) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v17 + v11[8]) = v26;
  v37 = 5;
  sub_1000EF8C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v34, v20);
  *(v17 + v11[9]) = v36;
  sub_1000FF67C(v17, v30);
  sub_1000EF824(v35);
  return sub_1000FF6E0(v17);
}

unint64_t sub_1000FF0A4()
{
  v1 = *v0;
  v2 = 0x7079547265666564;
  v3 = 0xD000000000000010;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0x614464726F636572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x795464726F636572;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FF170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FF8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000FF198(uint64_t a1)
{
  v2 = sub_1000FF510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FF1D4(uint64_t a1)
{
  v2 = sub_1000FF510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FF210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for BTDeferredRecord()
{
  result = qword_1002F81B8;
  if (!qword_1002F81B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FF2F8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000FF3A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FF3A4()
{
  if (!qword_1002F81C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002F81C8);
    }
  }
}

unint64_t sub_1000FF408()
{
  result = qword_1002F8208;
  if (!qword_1002F8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8208);
  }

  return result;
}

uint64_t sub_1000FF45C(uint64_t a1)
{
  *(a1 + 8) = sub_1000FF634(&qword_1002F9E50, type metadata accessor for BTDeferredRecord);
  result = sub_1000FF634(&unk_1002F9D20, type metadata accessor for BTDeferredRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FF510()
{
  result = qword_1002F8218;
  if (!qword_1002F8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8218);
  }

  return result;
}

unint64_t sub_1000FF564()
{
  result = qword_1002F8220;
  if (!qword_1002F8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8220);
  }

  return result;
}

uint64_t sub_1000FF5B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000EE9F4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000FF5CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000EF870(a1, a2);
  }

  return a1;
}

unint64_t sub_1000FF5E0()
{
  result = qword_1002F8230;
  if (!qword_1002F8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8230);
  }

  return result;
}

uint64_t sub_1000FF634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FF67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF6E0(uint64_t a1)
{
  v2 = type metadata accessor for BTDeferredRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FF73C()
{
  result = qword_1002F8238;
  if (!qword_1002F8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8238);
  }

  return result;
}

unint64_t sub_1000FF7A4()
{
  result = qword_1002F8240;
  if (!qword_1002F8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8240);
  }

  return result;
}

unint64_t sub_1000FF7FC()
{
  result = qword_1002F8248;
  if (!qword_1002F8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8248);
  }

  return result;
}

unint64_t sub_1000FF854()
{
  result = qword_1002F8250;
  if (!qword_1002F8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8250);
  }

  return result;
}

uint64_t sub_1000FF8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547265666564 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614464726F636572 && a2 == 0xEA00000000006174)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FFAC4()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300B80);
  sub_1000EE91C(v4, qword_100300B80);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1001003DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v64 - v8;
  v9 = type metadata accessor for Date();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = v68[8];
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v64 - v14;
  v15 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v64 - v17;
  UUID.init(uuidString:)();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v18, 1, v19);
  if (result == 1)
  {
    goto LABEL_34;
  }

  (*(v20 + 32))(a2, v18, v19);
  if (CKRecord.recordType.getter() == 0x654B72657473614DLL && v22 == 0xE900000000000079)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      sub_100102068();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
LABEL_24:

      return (*(v20 + 8))(a2, v19);
    }
  }

  v71 = a2;
  v24 = [a1 encryptedValues];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];

  if (!v26 || (v74 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_21:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100226100;
    *(v52 + 56) = sub_1000EEE20();
    *(v52 + 64) = sub_1001024FC(&qword_1002F7BE0, sub_1000EEE20);
    *(v52 + 32) = a1;
    v53 = a1;
    os_log(_:dso:log:_:_:)();

    sub_100102068();
    swift_allocError();
    *v54 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    a2 = v71;
    goto LABEL_24;
  }

  v27 = v72;
  v28 = v73;
  v29 = v73 >> 62;
  if ((v73 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v32 = *(v72 + 16);
      v31 = *(v72 + 24);
      v33 = __OFSUB__(v31, v32);
      v34 = v31 - v32;
      if (v33)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (v34 == 33)
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    sub_1000EF870(v72, v73);
    goto LABEL_21;
  }

  if (!v29)
  {
    if (BYTE6(v73) != 33)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (__OFSUB__(HIDWORD(v72), v72))
  {
    goto LABEL_33;
  }

  if (HIDWORD(v72) - v72 != 33)
  {
    goto LABEL_20;
  }

LABEL_16:
  v35 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v36 = (v71 + *(v35 + 20));
  *v36 = v27;
  v36[1] = v28;
  v37 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v37];
  [v37 finishEncoding];
  v38 = [v37 encodedData];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v65 = v35;
  v42 = (v71 + *(v35 + 24));
  *v42 = v39;
  v42[1] = v41;
  v43 = [a1 modificationDate];
  if (v43)
  {
    v44 = v43;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v46 = v68;
    v45 = v69;
    v47 = v68[4];
    v48 = v70;
    v47(v70, v12, v69);
    (v46[7])(v48, 0, 1, v45);
    v49 = v67;
    v47(v67, v48, v45);
    v50 = v71;
    v51 = v65;
  }

  else
  {
    v46 = v68;
    v45 = v69;
    v55 = v68[7];
    v55(v70, 1, 1, v69);
    v56 = [a1 creationDate];
    if (v56)
    {
      v57 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v58 = v46[4];
      v59 = v66;
      v58(v66, v12, v45);
      v55(v59, 0, 1, v45);
      v49 = v67;
      v58(v67, v59, v45);
      v60 = v46[6];
    }

    else
    {
      v61 = v66;
      v55(v66, 1, 1, v45);
      v62 = v61;
      v49 = v67;
      static Date.now.getter();
      swift_unknownObjectRelease();

      v60 = v46[6];
      if (v60(v62, 1, v45) != 1)
      {
        sub_100102138(v62);
      }
    }

    v63 = v70;
    v50 = v71;
    v51 = v65;
    if (v60(v70, 1, v45) != 1)
    {
      sub_100102138(v63);
    }
  }

  return (v46[4])(v50 + *(v51 + 28), v49, v45);
}

uint64_t sub_100100BEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = (&v67 - v8);
  __chkstk_darwin(v9);
  v77 = &v67 - v10;
  v11 = type metadata accessor for Date();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = v80[8];
  __chkstk_darwin(v11);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = &v67 - v15;
  v16 = sub_1000EE870(&qword_1002F8348, &qword_100227970);
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v19 = &v67 - v18;
  v20 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v67 - v22;
  v24 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v25 = *(*(v24 - 1) + 64);
  __chkstk_darwin(v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v23, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 32))(v27, v23, v28);
    v31 = a1;
    v32 = a1[3];
    v33 = v31[4];
    v82 = v31;
    sub_1000EF78C(v31, v32);
    sub_1001023E8();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v82);
      return (*(v29 + 8))(v27, v28);
    }

    else
    {
      v84 = 1;
      sub_1000EF8C4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v27[v24[5]] = v83;
      v84 = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v70 = &v27[v24[6]];
      *v70 = v83;
      v71 = v24[7];
      static Date.now.getter();
      LOBYTE(v83) = 3;
      sub_1001024FC(&qword_1002F7D90, &type metadata accessor for Date);
      v34 = v81;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v35 = v70;
      v36 = v80;
      v37 = v80[6];
      v38 = v77;
      v69 = v80 + 6;
      if (v37(v77, 1, v34) == 1)
      {
        v39 = objc_autoreleasePoolPush();
        isa = sub_100169D38(*v35, *(v35 + 1));
        v68 = v37;
        if (!isa)
        {
          isa = sub_1000F7F40().super.isa;
        }

        v41 = v74;
        *&v83 = isa;
        v42 = isa;
        sub_100101534(&v83);
        objc_autoreleasePoolPop(v39);
        v43 = [v42 modificationDate];

        if (v43)
        {
          v44 = v73;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v78 + 8))(v19, v79);
          v45 = v80;
          v46 = v80[4];
          v47 = v44;
          v48 = v81;
          v46(v41, v47, v81);
          (v45[7])(v41, 0, 1, v48);
          v49 = v75;
          v46(v75, v41, v48);
          v50 = v48;
          v51 = v77;
          v52 = v71;
        }

        else
        {
          v74 = v80[7];
          v74(v41, 1, 1, v81);
          v69 = objc_autoreleasePoolPush();
          v53 = sub_100169D38(*v35, *(v35 + 1));
          if (!v53)
          {
            v53 = sub_1000F7F40().super.isa;
          }

          *&v83 = v53;
          v54 = v53;
          sub_100101534(&v83);
          objc_autoreleasePoolPop(v69);
          v55 = [v54 creationDate];

          if (v55)
          {
            v56 = v73;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v78 + 8))(v19, v79);
            v57 = v80[4];
            v58 = v72;
            v59 = v56;
            v60 = v81;
            v57(v72, v59, v81);
            v74(v58, 0, 1, v60);
            v50 = v60;
            v49 = v75;
            v57(v75, v58, v50);
            v51 = v77;
          }

          else
          {
            v61 = v72;
            v62 = v81;
            v74(v72, 1, 1, v81);
            v50 = v62;
            v49 = v75;
            static Date.now.getter();
            v63 = v61;
            (*(v78 + 8))(v19, v79);
            v64 = v68(v61, 1, v50);
            v51 = v77;
            if (v64 != 1)
            {
              sub_100102138(v63);
            }
          }

          v65 = v68(v41, 1, v50);
          v52 = v71;
          if (v65 != 1)
          {
            sub_100102138(v41);
          }
        }

        v66 = v68(v51, 1, v50);
        v36 = v80;
        if (v66 != 1)
        {
          sub_100102138(v51);
        }
      }

      else
      {
        v50 = v34;
        (*(v78 + 8))(v19, v79);
        v49 = v75;
        (v36[4])(v75, v38, v50);
        v52 = v71;
      }

      (v36[5])(&v27[v52], v49, v50);
      sub_10010243C(v27, v76);
      sub_1000EF824(v82);
      return sub_1001024A0(v27);
    }
  }

  return result;
}

uint64_t sub_100101534(id *a1)
{
  v2 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = (v1 + *(type metadata accessor for LegacyAccountMagicKeysRecord() + 20));
  v5 = *v3;
  v4 = v3[1];
  if (v13 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_1000EE9F4(v5, v4);
      swift_unknownObjectRelease();
      return sub_1000FF5CC(v12, v13);
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    sub_1000EE9F4(v5, v4);
    sub_1000FF5CC(v12, v13);
    sub_1000FF5CC(v5, v4);
LABEL_6:
    static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    v8 = Data.hexString.getter(v5, v4);
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)();

    sub_1000EE9F4(v5, v4);
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  sub_1000EE9F4(v5, v4);
  sub_1000EE9F4(v5, v4);
  sub_1000FF5B8(v12, v13);
  v11 = sub_100121564(v12, v13, v5, v4);
  sub_1000EF870(v5, v4);
  sub_1000FF5CC(v12, v13);
  sub_1000FF5CC(v5, v4);
  sub_1000FF5CC(v12, v13);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001017E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8330, &qword_100227968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1001023E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  type metadata accessor for UUID();
  sub_1001024FC(&qword_1002F8340, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for LegacyAccountMagicKeysRecord();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    v19 = 1;
    sub_1000EE9F4(v20, v13);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v20, v21);
    v14 = (v3 + v11[6]);
    v15 = v14[1];
    v20 = *v14;
    v21 = v15;
    v19 = 2;
    sub_1000EE9F4(v20, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v20, v21);
    v16 = v11[7];
    LOBYTE(v20) = 3;
    type metadata accessor for Date();
    sub_1001024FC(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100101A8C()
{
  v1 = 0x696669746E656469;
  v2 = 0x74654D64756F6C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x4B746E756F636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100101B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010265C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100101B50(uint64_t a1)
{
  v2 = sub_1001023E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101B8C(uint64_t a1)
{
  v2 = sub_1001023E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101C00(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_1000EE9F4(*v2, *(v2 + 8));
  return v3;
}

Swift::Int sub_100101C40(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  Data.hash(into:)();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  Data.hash(into:)();
  v9 = a1[7];
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100101D54(uint64_t a1, int *a2)
{
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  Data.hash(into:)();
  v10 = a2[7];
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100101E50(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  Data.hash(into:)();
  v10 = a2[7];
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100101F60(uint64_t a1, uint64_t a2, int *a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (sub_100121564(*(a1 + a3[5]), *(a1 + a3[5] + 8), *(a2 + a3[5]), *(a2 + a3[5] + 8)) & 1) == 0 || (sub_100121564(*(a1 + a3[6]), *(a1 + a3[6] + 8), *(a2 + a3[6]), *(a2 + a3[6] + 8)) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];

  return static Date.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_100102000@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100102068()
{
  result = qword_1002F8258;
  if (!qword_1002F8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8258);
  }

  return result;
}

uint64_t type metadata accessor for LegacyAccountMagicKeysRecord()
{
  result = qword_1002F82C8;
  if (!qword_1002F82C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100102138(uint64_t a1)
{
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001021D8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010226C(uint64_t a1)
{
  *(a1 + 8) = sub_1001024FC(&qword_1002F9DE0, type metadata accessor for LegacyAccountMagicKeysRecord);
  result = sub_1001024FC(&qword_1002F8310, type metadata accessor for LegacyAccountMagicKeysRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100102338(uint64_t a1)
{
  result = sub_1001024FC(&qword_1002F8320, type metadata accessor for LegacyAccountMagicKeysRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100102394()
{
  result = qword_1002F8328;
  if (!qword_1002F8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8328);
  }

  return result;
}

unint64_t sub_1001023E8()
{
  result = qword_1002F8338;
  if (!qword_1002F8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8338);
  }

  return result;
}

uint64_t sub_10010243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001024A0(uint64_t a1)
{
  v2 = type metadata accessor for LegacyAccountMagicKeysRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001024FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100102558()
{
  result = qword_1002F8360;
  if (!qword_1002F8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8360);
  }

  return result;
}

unint64_t sub_1001025B0()
{
  result = qword_1002F8368;
  if (!qword_1002F8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8368);
  }

  return result;
}

unint64_t sub_100102608()
{
  result = qword_1002F8370;
  if (!qword_1002F8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8370);
  }

  return result;
}

uint64_t sub_10010265C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B746E756F636361 && a2 == 0xEF626F6C42737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100102AE0(uint64_t a1)
{
  v2 = sub_1000EE870(&unk_1002F9C10, &qword_100228390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100102B48(unint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction] = 0;
  *&v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingActivity] = 0;
  v13 = &v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState];
  v14 = type metadata accessor for BTUserTransaction();
  *v13 = 0;
  *(v13 + 1) = 0;
  v52.receiver = v3;
  v52.super_class = v14;
  result = objc_msgSendSuper2(&v52, "init");
  v16 = result;
  v49 = a3;
  v48 = a2;
  if (a3)
  {
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        v18 = (a1 & 0x3F) << 8;
        v19 = (a1 >> 6) + v18 + 33217;
        v20 = (v18 | (a1 >> 6) & 0x3F) << 8;
        v21 = (a1 >> 18) + ((v20 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v22 = (a1 >> 12) + v20 + 8487393;
        if (a1 >> 16)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        if (a1 < 0x800)
        {
          v23 = v19;
        }

        if (a1 <= 0x7F)
        {
          v23 = a1 + 1;
        }

        v50 = (v23 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v23) >> 3))));
        v24 = result;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = result;
LABEL_15:
  v50 = static String._fromUTF8Repairing(_:)();
  v51 = v25;

  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);

  v27 = v50;
  v28 = v51;
  UUID.init()();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  (*(v8 + 8))(v11, v7);
  v50 = v27;
  v51 = v28;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33 = v51;
  v34 = &v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name];
  v35 = *&v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name + 8];
  *v34 = v50;
  v34[1] = v33;

  String.utf8CString.getter();

  v36 = os_transaction_create();

  v37 = *&v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction];
  *&v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction] = v36;
  swift_unknownObjectRelease();
  v38 = _BTActivityCreate(_:dso:)(a1, v48, v49, &_mh_execute_header);
  v39 = *&v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingActivity];
  *&v16[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingActivity] = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v40 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState;
  swift_beginAccess();
  os_activity_scope_enter(v38, &v16[v40]);
  swift_endAccess();
  swift_unknownObjectRelease();
  static os_log_type_t.default.getter();
  if (qword_1002F7B08 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100226100;
  v42 = v16;
  v43 = [v42 description];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_1000EE954();
  *(v41 + 32) = v44;
  *(v41 + 40) = v46;
  os_log(_:dso:log:_:_:)();

  return v42;
}

void static BTUserTransaction.named(_:with:)(unint64_t a1, uint64_t a2, int a3, void (*a4)(void))
{
  v8 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
  v9 = sub_100102B48(a1, a2, a3);
  a4();
}

{
  v8 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
  v9 = sub_100102B48(a1, a2, a3);
  a4();
}

id BTUserTransaction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction;
  if (*&v0[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction])
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7B08 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226100;
    v3 = v0;
    v4 = [v3 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000EE954();
    *(v2 + 32) = v5;
    *(v2 + 40) = v7;
    os_log(_:dso:log:_:_:)();

    v8 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState;
    swift_beginAccess();
    os_activity_scope_leave(&v3[v8]);
    swift_endAccess();
    v9 = *&v0[v1];
    *&v0[v1] = 0;
    swift_unknownObjectRelease();
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for BTUserTransaction();
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t BTUserTransaction.description.getter()
{
  v4 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name);
  v5 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name + 8);

  sub_1000EE870(&qword_1002F94C0, qword_100227A98);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x3A4E58545BLL;
}

Swift::Int sub_1001034C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100103534()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10010359C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  sub_10010432C();
  qword_100300B98 = v0;
}

unint64_t sub_100103638(unsigned __int8 a1)
{
  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0x2064696C61766E49;
      v5 = 0xEE0064726F636572;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v7;
      *(inited + 48) = 0x206E776F6E6B6E55;
      v5 = 0xED0000726F727265;
    }
  }

  else
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691F0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000015;
    }

    else if (a1 == 3)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691D0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000010;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691B0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000017;
    }

    *(inited + 40) = v3;
    *(inited + 48) = v6;
  }

  *(inited + 56) = v5;
  v9 = sub_1000F99F0(inited);
  swift_setDeallocating();
  sub_1000EEE6C(v4, &unk_1002F9EB0, &unk_100227D50);
  return v9;
}

uint64_t sub_1001038BC(uint64_t a1)
{
  v2 = sub_1001155B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001038F8(uint64_t a1)
{
  v2 = sub_1001155B0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100103934()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
  if (*&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore])
  {
    v7 = *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];
  }

  else
  {
    v8 = type metadata accessor for DeviceStore();
    sub_100174350();
    v9 = *&v1[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
    v10 = *(v8 + 48);
    v11 = *(v8 + 52);
    swift_allocObject();
    v12 = v9;
    v13 = v1;
    v7 = sub_1001CA61C(v1, &off_1002BC910, v5, v12);

    v14 = *&v1[v6];
    *&v1[v6] = v7;
  }

  return v7;
}

char *sub_100103A4C()
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
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_pushService] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher] = 0;
  v24 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue;
  v23 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100114C58(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for DeviceManager();
  v31.receiver = v0;
  v31.super_class = v10;
  v11 = objc_msgSendSuper2(&v31, "init");
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  v12 = static DarwinNotificationManager.shared;
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v29 = sub_1001152B4;
  v30 = v14;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100115F4C;
  v28 = &unk_1002BD8E8;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v13, v15);
  _Block_release(v15);

  v17 = objc_opt_self();
  LODWORD(v15) = [v17 isBuddyComplete];
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v15)
  {
    sub_10010432C();
  }

  else
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1001152BC;
    v30 = v18;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001742E0;
    v28 = &unk_1002BD910;
    v19 = _Block_copy(&aBlock);

    v20 = [v17 addBuddyCompleteObserver:v19];
    _Block_release(v19);
    v21 = *&v11[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher];
    *&v11[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = v20;
  }

  return v11;
}

void sub_100103FC0()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100226100;
  v1 = [objc_opt_self() isBuddyComplete];
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 64) = &protocol witness table for Bool;
  *(v0 + 32) = v1;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10010432C();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = 0;
  }
}

id sub_100104148()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010432C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  if ([v11 isFirstUnlocked])
  {
    v23 = v2;
    v12 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1001150A0;
    v30 = v13;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001742E0;
    v28 = &unk_1002BD488;
    v21 = _Block_copy(&aBlock);
    v14 = v12;
    v22 = v6;
    v15 = v14;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v23 + 8))(v5, v1);
    (*(v7 + 8))(v10, v22);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_100115098;
    v30 = v17;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001742E0;
    v28 = &unk_1002BD460;
    v18 = _Block_copy(&aBlock);

    v19 = [v11 addFirstUnlockObserver:v18];
    _Block_release(v18);
    v20 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher);
    *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher) = v19;
  }
}

void sub_100104778()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10010432C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher];
    *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher] = 0;
  }
}

uint64_t sub_100104870()
{
  v0 = type metadata accessor for CloudCoordinatorConfiguration();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100103934();
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100192770(v3);
    sub_10011481C(v3);
    sub_1001150A8(v3, type metadata accessor for CloudCoordinatorConfiguration);
    sub_100193560();
    sub_100141480();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001049F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v2 = sub_100103934();
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100193560();
    sub_10015F824(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100104BB4()
{
  v0 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  static os_log_type_t.default.getter();
  if (Strong)
  {
    v37 = v5;
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E30;
    os_log(_:dso:log:_:_:)();
    sub_100103934();
    v38 = objc_opt_self();
    v16 = [v38 isFirstUnlocked];
    v35 = v8;
    v36 = v15;
    if (v16)
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1000EE91C(v9, qword_100300AF0);
      (*(v10 + 16))(v13, v17, v9);
      v18 = sub_10018B20C(v13);

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v18 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_1001746E8(v18);

    v20 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
    v21 = *&Strong[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

    if ([v38 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v22 = sub_1000EE91C(v9, qword_100300D48);
      (*(v10 + 16))(v13, v22, v9);
      v23 = sub_10018BDC8(v13);

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v23 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_1001754E4(v23);

    v24 = *&Strong[v20];

    sub_100194630(v3);

    v25 = v37;
    if ((*(v37 + 48))(v3, 1, v4) == 1)
    {
      sub_1000EEE6C(v3, &qword_1002F9D90, &qword_100227B30);
    }

    else
    {
      v26 = v3;
      v27 = v35;
      sub_100114F1C(v26, v35, type metadata accessor for LegacyMagicPairingSettingsRecords);
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_1000EE870(&qword_1002F8528, &unk_100229A90);
      v28 = *(v25 + 72);
      v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100226100;
      sub_100115124(v27, v30 + v29, type metadata accessor for LegacyMagicPairingSettingsRecords);
      sub_100175BB0(v30);

      sub_1001150A8(v27, type metadata accessor for LegacyMagicPairingSettingsRecords);
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v31 = *&Strong[v20];

    if ([v38 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v32 = sub_1000EE91C(v9, qword_100300BA8);
      (*(v10 + 16))(v13, v32, v9);
      v33 = sub_10018C984(v13);

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v33 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_100176C18(v33);
  }

  else
  {
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_100105430(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v116 = &v106 - v7;
  v121 = type metadata accessor for BTDeferredRecord();
  v8 = *(v121 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v121);
  v108 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v106 - v12;
  __chkstk_darwin(v13);
  v15 = &v106 - v14;
  v16 = type metadata accessor for DeviceRecord();
  *&v118 = *(v16 - 1);
  v17 = *(v118 + 64);
  __chkstk_darwin(v16);
  v107 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v111 = a2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v110 = qword_100300E30;
      os_log(_:dso:log:_:_:)();
      v122 = _swiftEmptyArrayStorage;
      v27 = sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        v120 = v27;
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v28 = sub_1000EE91C(v22, qword_100300AF0);
        (*(v23 + 16))(v26, v28, v22);
        v29 = sub_10018B20C(v26);

        v30 = v26;
        v26 = v29;
        (*(v23 + 8))(v30, v22);
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v26 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }

      v22 = v116;
      v31 = *(v26 + 2);
      v120 = a3;
      v117 = v31;
      if (!v31)
      {
        break;
      }

      v23 = 0;
      v114 = &v26[(*(v118 + 80) + 32) & ~*(v118 + 80)];
      v115 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v113 = _swiftEmptyArrayStorage;
      v109 = v26;
      while (v23 < *(v26 + 2))
      {
        sub_100115124(&v114[*(v118 + 72) * v23], v21, type metadata accessor for DeviceRecord);
        v32 = *&Strong[v115];

        v33 = sub_10019391C();

        a3 = *(v33 + 16);
        if (a3)
        {
          v22 = 0;
          v26 = (v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
          while (v22 < *(v33 + 16))
          {
            sub_100115124(&v26[*(v8 + 72) * v22], v15, type metadata accessor for BTDeferredRecord);
            v34 = *(v15 + 1) == 0x6552656369766544 && *(v15 + 2) == 0xEC00000064726F63;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v35 = &v15[*(v121 + 28)], v36 = *v35, v37 = *(v35 + 1), v38 = &v21[v16[6]], v36 == *v38) ? (v39 = v37 == *(v38 + 1)) : (v39 = 0), v39 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              if (*v15 == 1)
              {

                sub_1001150A8(v15, type metadata accessor for BTDeferredRecord);
LABEL_14:

                a3 = v120;
                v22 = v116;
                v26 = v109;
                goto LABEL_15;
              }

              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

              sub_1001150A8(v15, type metadata accessor for BTDeferredRecord);
              if (v40)
              {
                goto LABEL_14;
              }
            }

            else
            {
              sub_1001150A8(v15, type metadata accessor for BTDeferredRecord);
            }

            if (a3 == ++v22)
            {

              v22 = v116;
              v26 = v109;
              goto LABEL_37;
            }
          }

          __break(1u);
          break;
        }

LABEL_37:
        v41 = &v21[v16[6]];
        v42 = *v41;
        v43 = *(v41 + 1);
        v44 = objc_allocWithZone(BTCloudDevice);
        v45 = String._bridgeToObjectiveC()();
        v46 = [v44 initWithBluetoothAddress:v45];

        v47 = &v21[v16[7]];
        v48 = *v47;
        v49 = *(v47 + 1);
        v50 = String._bridgeToObjectiveC()();
        [v46 setNickname:v50];

        v51 = &v21[v16[8]];
        v52 = *v51;
        v53 = *(v51 + 1);
        v54 = String._bridgeToObjectiveC()();
        [v46 setModelNumber:v54];

        v55 = &v21[v16[9]];
        v56 = *v55;
        v57 = *(v55 + 1);
        v58 = String._bridgeToObjectiveC()();
        [v46 setManufacturer:v58];

        v59 = &v21[v16[10]];
        v60 = *v59;
        v61 = *(v59 + 1);
        v62 = String._bridgeToObjectiveC()();
        [v46 setProductID:v62];

        v63 = &v21[v16[11]];
        v64 = *v63;
        v65 = *(v63 + 1);
        v66 = String._bridgeToObjectiveC()();
        [v46 setVendorID:v66];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = v26;
          v68 = v22;
          v69 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v68;
          v26 = v67;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v113 = v122;
        a3 = v120;
LABEL_15:
        ++v23;
        sub_1001150A8(v21, type metadata accessor for DeviceRecord);
        if (v23 == v117)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_64:
      swift_once();
    }

    v113 = _swiftEmptyArrayStorage;
LABEL_42:
    v70 = *&Strong[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

    v71 = sub_10019391C();

    v72 = *(v71 + 16);
    v73 = v111;
    if (v72)
    {
      v117 = 0;
      v74 = *(v8 + 80);
      v109 = v71;
      v75 = v71 + ((v74 + 32) & ~v74);
      v76 = *(v8 + 72);
      v114 = (v118 + 56);
      v118 = xmmword_100226100;
      v77 = v112;
      v115 = v76;
      do
      {
        sub_100115124(v75, v77, type metadata accessor for BTDeferredRecord);
        v83 = *(v77 + 8) == 0x6552656369766544 && *(v77 + 16) == 0xEC00000064726F63;
        if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        if (*v77)
        {
          v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v85 = v117;
          if ((v84 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {

          v85 = v117;
        }

        v86 = v77 + *(v121 + 36);
        v87 = *(v86 + 8);
        if (v87 >> 60 != 15)
        {
          v88 = *v86;
          sub_1000EE9F4(*v86, *(v86 + 8));
          v89 = objc_autoreleasePoolPush();
          v90 = type metadata accessor for PropertyListDecoder();
          v91 = *(v90 + 48);
          v92 = *(v90 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_100114C58(&qword_1002F9C20, type metadata accessor for DeviceRecord);
          v93 = v116;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!v85)
          {
            v117 = 0;

            objc_autoreleasePoolPop(v89);
            (*v114)(v93, 0, 1, v16);
            v94 = v93;
            v95 = v107;
            sub_100114F1C(v94, v107, type metadata accessor for DeviceRecord);
            LODWORD(v113) = static os_log_type_t.default.getter();
            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v96 = swift_allocObject();
            *(v96 + 16) = v118;
            v97 = sub_1000EA6CC();
            v99 = v98;
            *(v96 + 56) = &type metadata for String;
            *(v96 + 64) = sub_1000EE954();
            *(v96 + 32) = v97;
            *(v96 + 40) = v99;
            os_log(_:dso:log:_:_:)();

            sub_100106284();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v100 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v95 = v107;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000FF5CC(v88, v87);
            sub_1001150A8(v95, type metadata accessor for DeviceRecord);
            v113 = v122;
            v73 = v111;
            v77 = v112;
            goto LABEL_46;
          }

          objc_autoreleasePoolPop(v89);
          sub_1000FF5CC(v88, v87);
          (*v114)(v93, 1, 1, v16);
          sub_1000EEE6C(v93, &qword_1002F8520, &unk_100227B60);
          v117 = 0;
        }

        static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v78 = swift_allocObject();
        *(v78 + 16) = v118;
        v79 = v112;
        sub_100115124(v112, v108, type metadata accessor for BTDeferredRecord);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        *(v78 + 56) = &type metadata for String;
        *(v78 + 64) = sub_1000EE954();
        *(v78 + 32) = v80;
        *(v78 + 40) = v82;
        os_log(_:dso:log:_:_:)();
        v77 = v79;

        v73 = v111;
        v76 = v115;
LABEL_46:
        sub_1001150A8(v77, type metadata accessor for BTDeferredRecord);
        v75 += v76;
        --v72;
      }

      while (v72);
    }

    static os_log_type_t.debug.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
    v102 = v113;
    v103 = Array.description.getter();
    v105 = v104;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = sub_1000EE954();
    *(v101 + 32) = v103;
    *(v101 + 40) = v105;
    os_log(_:dso:log:_:_:)();

    (v73)(v102);
  }

  else
  {
    a2();
  }
}

id sub_100106284()
{
  v1 = type metadata accessor for DeviceRecord();
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(BTCloudDevice);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBluetoothAddress:v6];

  v8 = (v0 + v1[7]);
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v7 setNickname:v11];

  v12 = (v0 + v1[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = String._bridgeToObjectiveC()();
  [v7 setModelNumber:v15];

  v16 = (v0 + v1[9]);
  v17 = *v16;
  v18 = v16[1];
  v19 = String._bridgeToObjectiveC()();
  [v7 setManufacturer:v19];

  v20 = (v0 + v1[10]);
  v21 = *v20;
  v22 = v20[1];
  v23 = String._bridgeToObjectiveC()();
  [v7 setProductID:v23];

  v24 = (v0 + v1[11]);
  v25 = *v24;
  v26 = v24[1];
  v27 = String._bridgeToObjectiveC()();
  [v7 setVendorID:v27];

  return v7;
}

void sub_100106440(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = type metadata accessor for URL();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = v43 - v19;
  __chkstk_darwin(v20);
  v51 = v43 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v48 = a3;
  v49 = a2;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v22 = qword_100300E30;
    v45 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    v44 = xmmword_100226100;
    *(v23 + 16) = xmmword_100226100;
    *(v23 + 56) = &type metadata for String;
    v46 = sub_1000EE954();
    *(v23 + 64) = v46;
    *(v23 + 32) = a4;
    *(v23 + 40) = a5;

    v47 = v22;
    os_log(_:dso:log:_:_:)();

    v24 = sub_100103934();
    if (![objc_opt_self() isFirstUnlocked])
    {
      break;
    }

    sub_100192340();
    v43[1] = v24;
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v25 = v52;
    v26 = sub_1000EE91C(v52, qword_100300AF0);
    (*(v9 + 16))(v12, v26, v25);
    v27 = sub_10018B20C(v12);

    v28 = *(v9 + 8);
    v9 += 8;
    v28(v12, v25);
    v29 = v49;
    v12 = v27[2];
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_12:
    v30 = 0;
    while (v30 < v27[2])
    {
      sub_100115124(v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v30, v17, type metadata accessor for DeviceRecord);
      v31 = &v17[*(v13 + 24)];
      v32 = *v31 == a4 && *(v31 + 1) == a5;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v35 = v17;
        v36 = v50;
        sub_100114F1C(v35, v50, type metadata accessor for DeviceRecord);
        v37 = v51;
        sub_100114F1C(v36, v51, type metadata accessor for DeviceRecord);
        static os_log_type_t.default.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v44;
        v39 = sub_1000EA6CC();
        v40 = v46;
        *(v38 + 56) = &type metadata for String;
        *(v38 + 64) = v40;
        *(v38 + 32) = v39;
        *(v38 + 40) = v41;
        os_log(_:dso:log:_:_:)();

        v42 = sub_100106284();
        v29();

        sub_1001150A8(v37, type metadata accessor for DeviceRecord);
        return;
      }

      ++v30;
      sub_1001150A8(v17, type metadata accessor for DeviceRecord);
      if (v12 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  static os_log_type_t.error.getter();
  v29 = v49;
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v27 = _swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)();

  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_20:

  static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v44;
  v34 = v46;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v34;
  *(v33 + 32) = a4;
  *(v33 + 40) = a5;

  os_log(_:dso:log:_:_:)();

  (v29)(0);
}

uint64_t sub_100106A90(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v5 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = &v15;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10011500C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001156A8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002BD348;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

void sub_100106C1C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v44 = a4;
  v45 = type metadata accessor for URL();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v41 - v15;
  __chkstk_darwin(v16);
  v43 = &v41 - v17;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v18 = qword_100300E30;
    v48 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    v47 = xmmword_100226100;
    *(v19 + 16) = xmmword_100226100;
    *(v19 + 56) = &type metadata for String;
    v49 = sub_1000EE954();
    *(v19 + 64) = v49;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;

    v50 = v18;
    os_log(_:dso:log:_:_:)();

    v20 = sub_100103934();
    if (![objc_opt_self() isFirstUnlocked])
    {
      break;
    }

    sub_100192340();
    v41 = v20;
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v21 = v45;
    v22 = sub_1000EE91C(v45, qword_100300AF0);
    v23 = v46;
    (*(v6 + 16))(v46, v22, v21);
    v24 = sub_10018B20C(v23);

    v25 = *(v6 + 8);
    v6 += 8;
    v25(v23, v21);
    v26 = v24[2];
    if (!v26)
    {
      goto LABEL_18;
    }

LABEL_10:
    v27 = 0;
    while (v27 < v24[2])
    {
      sub_100115124(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, v13, type metadata accessor for DeviceRecord);
      v28 = &v13[*(v9 + 24)];
      v29 = *v28 == a1 && *(v28 + 1) == a2;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v32 = v42;
        sub_100114F1C(v13, v42, type metadata accessor for DeviceRecord);
        v33 = v32;
        v34 = v43;
        sub_100114F1C(v33, v43, type metadata accessor for DeviceRecord);
        static os_log_type_t.default.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = v47;
        v36 = sub_1000EA6CC(v35);
        v37 = v49;
        *(v35 + 56) = &type metadata for String;
        *(v35 + 64) = v37;
        *(v35 + 32) = v36;
        *(v35 + 40) = v38;
        os_log(_:dso:log:_:_:)();

        v39 = sub_100106284();
        sub_1001150A8(v34, type metadata accessor for DeviceRecord);
        v40 = *v44;
        *v44 = v39;

        return;
      }

      ++v27;
      sub_1001150A8(v13, type metadata accessor for DeviceRecord);
      if (v26 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v24 = _swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)();

  v26 = _swiftEmptyArrayStorage[2];
  if (v26)
  {
    goto LABEL_10;
  }

LABEL_18:

  static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = v47;
  v31 = v49;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v31;
  *(v30 + 32) = a1;
  *(v30 + 40) = a2;

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10010724C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v19 = *(v8 - 8);
  v20 = v8;
  v9 = *(v19 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_100115004;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BD2D0;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v7, v4);
  (*(v19 + 8))(v11, v20);
}

uint64_t sub_100107550(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100103934();
    sub_1001A3FE0(a2);
  }

  return result;
}

uint64_t sub_100107650(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  v10 = *(v18 + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v18 + 8))(v12, v19);
}

uint64_t sub_100107920()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_100103934();
    sub_1001A43D0();
  }

  return result;
}

void sub_1001079F8(uint64_t a1, void (*a2)(void, unint64_t))
{
  v3 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_100103934();
    sub_100192464(v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000EEE6C(v6, &qword_1002F8500, &qword_100227B38);
      a2(0, 0xF000000000000000);
    }

    else
    {
      sub_100114F1C(v6, v11, type metadata accessor for LegacyAccountMagicKeysRecord);
      a2(*&v11[*(v7 + 20)], *&v11[*(v7 + 20) + 8]);

      sub_1001150A8(v11, type metadata accessor for LegacyAccountMagicKeysRecord);
    }
  }

  else
  {
    a2(0, 0xF000000000000000);
  }
}

uint64_t sub_100107C3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_100107CD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

void sub_100107D64(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v28 = 0;
    a2();
LABEL_13:

    return;
  }

  v41 = Strong;
  v42 = a3;
  v43 = a2;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226C80;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = &type metadata for String;
  v13 = sub_1000EE954();
  *(v8 + 64) = v13;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v14 = a4;
  v15 = [v14 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v13;
  *(v8 + 72) = v16;
  *(v8 + 80) = v18;
  os_log(_:dso:log:_:_:)();

  v19 = [v14 bluetoothAddress];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_12:
    static os_log_type_t.error.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100226C80;
    v31 = [v14 bluetoothAddress];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v13;
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    v35 = v14;
    v36 = [v35 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v13;
    *(v30 + 72) = v37;
    *(v30 + 80) = v39;
    os_log(_:dso:log:_:_:)();

    sub_1000F29F8();
    swift_allocError();
    *v40 = 1;
    v43();

    goto LABEL_13;
  }

  v24 = [v14 bluetoothAddress];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == 0xD000000000000011 && 0x8000000100267AA0 == v27)
  {

    goto LABEL_12;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_12;
  }

  sub_100103934();
  sub_1001A4748(v14, v43, v42);
}

void sub_1001081A4(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226C80;
    v21 = [a4 bluetoothAddress];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    v25 = sub_1000EE954();
    *(v20 + 64) = v25;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v26 = a4;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v25;
    *(v20 + 72) = v28;
    *(v20 + 80) = v30;
    os_log(_:dso:log:_:_:)();

    sub_1000F29F8();
    swift_allocError();
    *v31 = 1;
    a2();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  v33 = a4;
  v34 = [v33 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000EE954();
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  sub_100103934();
  sub_1001A4748(v33, a2, a3);
}

uint64_t sub_1001085D0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_1001086A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v59 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DeviceRecord();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v60);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = v6;
    v56 = a3;
    v53 = v10;
    v54 = v7;
    v51 = v17;
    v52 = v20;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100226100;
      v22 = v59;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v59 = v22;

      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1000EE954();
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      os_log(_:dso:log:_:_:)();

      sub_100103934();
      v27 = [objc_opt_self() isFirstUnlocked];
      v57 = a2;
      if (v27)
      {
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v28 = v55;
        v29 = sub_1000EE91C(v55, qword_100300AF0);
        v31 = v53;
        v30 = v54;
        (*(v54 + 16))(v53, v29, v28);
        v32 = sub_10018B20C(v31);

        (*(v30 + 8))(v31, v28);
        v33 = v32[2];
        if (!v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v32 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();

        v33 = _swiftEmptyArrayStorage[2];
        if (!v33)
        {
LABEL_20:

          sub_1000F29F8();
          swift_allocError();
          *v44 = 3;
          v57();
        }
      }

      a2 = 0;
      while (a2 < v32[2])
      {
        sub_100115124(v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2, v14, type metadata accessor for DeviceRecord);
        v35 = &v14[*(v60 + 24)];
        v36 = *v35;
        v37 = *(v35 + 1);
        v38 = [v59 bluetoothAddress];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        if (v36 == v39 && v37 == v41)
        {

LABEL_23:

          v46 = v51;
          v47 = v52;
          sub_100114F1C(v14, v51, type metadata accessor for DeviceRecord);
          sub_100114F1C(v46, v47, type metadata accessor for DeviceRecord);
          v48 = Strong;
          v49 = *&Strong[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

          sub_1001A68A8(v47, v57, v56);

          return sub_1001150A8(v47, type metadata accessor for DeviceRecord);
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
          goto LABEL_23;
        }

        ++a2;
        sub_1001150A8(v14, type metadata accessor for DeviceRecord);
        if (v33 == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v34 = 0;
  (a2)();
}