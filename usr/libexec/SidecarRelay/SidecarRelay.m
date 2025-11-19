int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  objc_autoreleasePoolPop(v4);
  dispatch_main();
}

uint64_t sub_100001B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__n128 sub_100001C04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001C14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100001CA0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100001CC4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

void sub_100001D04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100001B60();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_100001D38@<X0>(uint64_t *a1@<X8>)
{
  result = RapportDeviceChangeFlags.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

Swift::Int sub_100001DCC(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100001E24(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void *sub_100001E74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E84@<X0>(uint64_t *a1@<X8>)
{
  result = j___s15SidecarTimeSync5ClockC14heartbeatTimer33_52E478E0294A7D1A30B0593D640BE43CLLSo24OS_dispatch_source_timer_pSgvpfi();
  *a1 = result;
  return result;
}

uint64_t sub_100001EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001B58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100001EE8(uint64_t *a1)
{
  v2 = sub_1000022F0(a1);
  result = sub_1000496A4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100001F10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100010C6C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100001F48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100001CA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100001F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100001CC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100001FC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001C98(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100002044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001B68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000020F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002218(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002238(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

void sub_100002298(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000022F0(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_100002300()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_10000235C()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100098FE0);
  sub_100003420(v0, qword_100098FE0);
  return Logger.init(subsystem:category:)();
}

id sub_1000023DC(char a1)
{
  v3 = qword_100098B40;
  v4 = v1;
  if (v3 != -1)
  {
    sub_100003508();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100098FE0);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    swift_getObjectType();

    v11 = _typeName(_:qualified:)();
    v13 = sub_100014C58(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Loading %s. 'logErrorsWhenCalled' is set to: [%{BOOL}d]", v9, 0x12u);
    sub_100003458(v10);
    sub_100003534();
    sub_100003534();
  }

  else
  {
  }

  *(v6 + OBJC_IVAR____TtC12SidecarRelay24SidecarRelayNullDelegate_logErrorsWhenCalled) = a1 & 1;
  v14 = type metadata accessor for SidecarRelayNullDelegate();
  v17.receiver = v6;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_100002578(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(24);
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  v7 = v6;

  v21[0] = v5;
  v21[1] = v7;
  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  sub_100003528();
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  v11 = v5;
  v12 = v7;
  if (*(v2 + OBJC_IVAR____TtC12SidecarRelay24SidecarRelayNullDelegate_logErrorsWhenCalled) == 1)
  {
    if (qword_100098B40 != -1)
    {
      sub_100003508();
    }

    v13 = type metadata accessor for Logger();
    sub_100003420(v13, qword_100098FE0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_100014C58(v11, v12, v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "%{private}s", v16, 0xCu);
      sub_100003458(v17);
      sub_100003534();
      sub_100003534();
    }
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10001E468(v18, v19, -999, v11, v12, 0);
}

id sub_1000027D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidecarRelayNullDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000282C()
{
  sub_100003528();
  sub_100002578(0xD000000000000017, v0);
}

uint64_t sub_1000028B8()
{
  sub_100003528();
  sub_100002578(0xD000000000000021, v0);
}

uint64_t sub_100002944()
{
  sub_100003528();
  sub_100002578(0xD000000000000011, v0);
}

uint64_t sub_1000029E0()
{
  sub_100003528();
  sub_100002578(0xD000000000000012, v0);
}

uint64_t sub_100002A64()
{
  sub_100003528();
  sub_100002578(0xD000000000000025, v0);
}

uint64_t sub_100002B84()
{
  sub_100003528();
  sub_100002578(0xD000000000000016, v0);

  return 0;
}

void sub_100002C00(uint64_t a1, void (**a2)(void, void, void))
{
  sub_100002578(0xD000000000000032, 0x8000000100079CD0);
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = _convertErrorToNSError(_:)();
  (a2)[2](a2, isa, v4);

  _Block_release(a2);
}

void sub_100002D24(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD00000000000004ELL, 0x8000000100079C80);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

void sub_100002DC4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD000000000000051, 0x8000000100079C20);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

void sub_100002E64(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD000000000000033, 0x8000000100079BE0);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

uint64_t sub_100002F04(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

void sub_100003024(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  sub_100002578(0xD000000000000039, 0x8000000100079BA0);
  v5 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v5);

  _Block_release(a4);
}

void sub_100003138(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  sub_100002578(0xD00000000000001ELL, 0x8000000100079B80);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = _convertErrorToNSError(_:)();
  (a4)[2](a4, isa, v6);

  _Block_release(a4);
}

uint64_t sub_100003284()
{
  sub_100003528();
  sub_100002578(0xD000000000000022, v0);
}

uint64_t sub_100003388(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000033E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003420(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003458(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_1000034A4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003508()
{

  return swift_once();
}

uint64_t sub_100003534()
{
}

uint64_t sub_10000354C()
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_1000A1AE8);
  v1 = *(*(v0 - 8) + 16);
  v2 = sub_100011F70();

  return v3(v2);
}

id sub_1000035F0(void *a1)
{
  *&v1[OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap] = 0;
  v3 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
  type metadata accessor for UUID();
  _s7SessionC8IdentityVMa(0);
  sub_100010CD8(&unk_100099180, &type metadata accessor for UUID);
  *&v1[v3] = Dictionary.init(dictionaryLiteral:)();
  v4 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  type metadata accessor for Relay.Session(0);
  sub_10000FC6C(&qword_10009AAE0, &qword_100076C10);
  sub_100010CD8(&unk_100099190, type metadata accessor for Relay.Session);
  *&v1[v4] = Dictionary.init(dictionaryLiteral:)();
  v5 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
  sub_100010D20();
  *&v1[v5] = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR____TtC12SidecarRelay6Client_connection] = a1;
  v6 = a1;
  v7 = [v6 processIdentifier];
  *&v1[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier] = v7;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for Client();
  v8 = objc_msgSendSuper2(&v33, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = sub_100011E38();
  v13 = [v11 v12];
  [v6 setExportedInterface:v13];

  [v6 setExportedObject:v10];
  sub_10001203C();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v31 = sub_100010DA8;
  v32 = v14;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100052C90;
  v30 = &unk_10008DDF8;
  v15 = _Block_copy(&v27);
  v16 = v10;

  [v6 setInterruptionHandler:v15];
  _Block_release(v15);
  sub_10001203C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v31 = sub_100010DC8;
  v32 = v17;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100052C90;
  v30 = &unk_10008DE48;
  v18 = _Block_copy(&v27);
  v19 = v16;

  [v6 setInvalidationHandler:v18];
  _Block_release(v18);
  v20 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL___SidecarCore_Interface];
  v21 = sub_100011F70();
  [v21 v22];

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = sub_100011F70();
  [v24 v25];

  [v6 resume];
  return v19;
}

void sub_100003A84()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100011D10();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  if (*(v1 + v14) && SidecarMapTableGetCount())
  {
    v15 = *v1;
    sub_100011F64();
    (*(v16 + 176))();
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (sub_100011EEC(v19))
    {
      v20 = sub_100012048();
      *v20 = 67109120;
      v20[1] = *(v17 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

      sub_100011FD4(&_mh_execute_header, v21, v22, "PID %d: Terminated with Active Sessions");
      sub_100011CF4();
    }

    else
    {

      v18 = v17;
    }
  }

  else
  {
    v23 = *v1;
    sub_100011F64();
    (*(v24 + 176))();
    v25 = v1;
    v18 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (sub_100011EEC(v26))
    {
      v27 = sub_100012048();
      *v27 = 67109120;
      v27[1] = *(v25 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

      sub_100011FD4(&_mh_execute_header, v28, v29, "PID %d: Terminated");
      sub_100011CF4();
    }

    else
    {

      v18 = v25;
    }

    v13 = v10;
  }

  (*(v5 + 8))(v13, v2);
  v30 = *(v1 + OBJC_IVAR____TtC12SidecarRelay6Client_connection);
  [v30 invalidate];
  [v30 setExportedObject:0];
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  sub_10002087C();
}

void sub_100003D64()
{
  sub_100011EA4();
  v3 = type metadata accessor for Logger();
  v4 = sub_100011C54(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011CBC();
  v9 = *v0;
  sub_100011D5C();
  (*(v10 + 176))();
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (sub_100011EEC(v13))
  {
    v14 = sub_100012048();
    *v14 = 67109120;
    *(v14 + 4) = *(&v11->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    _os_log_impl(&_mh_execute_header, v12, v2, v1, v14, 8u);
    sub_100011CF4();
  }

  else
  {

    v12 = v11;
  }

  v15 = *(v6 + 8);
  v16 = sub_100011E98();
  v17(v16);
  sub_100003A84();
}

uint64_t sub_100003ECC(uint64_t a1, void *a2)
{
  v3 = v2;
  result = sub_100006980();
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = a2[4];
    sub_10000FCB4(a2, a2[3]);
    v10 = *(v9 + 16);
    v11 = sub_100011EC8();
    result = v12(v11, v9);
    if (v13 >> 60 != 15)
    {
      v14 = result;
      v15 = v13;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v3 relaySession:v8 receivedOPACKData:isa dataLink:*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink)];

      return sub_100011358(v14, v15);
    }
  }

  return result;
}

uint64_t sub_100003FBC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1000392A0(), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000388A8(0, v10[2] + 1, 1, v10);
    v10 = v17;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v18 = sub_100011EBC(v12);
    sub_1000388A8(v18, v13 + 1, 1, v10);
    v10 = v19;
  }

  v10[2] = v13 + 1;
  v14 = &v10[2 * v13];
  v14[4] = a1;
  v14[5] = v11;
  sub_100011E50();
  swift_beginAccess();
  v15 = *(v3 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v3 + v6);
  sub_10003D388();
  *(v3 + v6) = v20;
  return swift_endAccess();
}

void sub_10000410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + 40);
  v5 = *(a3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100011CE4();
      sub_100011CA8();
      sub_10001E468(v18, v19, v20, v21, v22, v23);
      sub_100011ED4();
      return;
    }

    v6 = v4 + 2;
    v7 = *(v4 - 1);
    v8 = *v4;
    type metadata accessor for RapportStreamSession();
    v9 = static RapportRemoteDisplayDevice.== infix(_:_:)(v7, a1);
    v4 = v6;
  }

  while (!v9);
  v10 = v8;
  sub_100006980();
  if (v11)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    sub_10001E468(v12, v13, v14, v15, v16, v17);
    sub_100011ED4();
  }
}

uint64_t sub_100004258@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33[0] = a4;
  v33[1] = a2;
  v35 = a1;
  v36 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
  v7 = *(*(v36 - 8) + 64);
  v8 = __chkstk_darwin(v36);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = v33 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v37 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v38 = v5;
      v19 = v10;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v37;
      v23 = *(v37 + 48);
      v24 = type metadata accessor for UUID();
      v25 = v34;
      (*(*(v24 - 8) + 16))(v34, v23 + *(*(v24 - 8) + 72) * v21, v24);
      v26 = *(v22 + 56);
      v27 = _s7SessionC8IdentityVMa(0);
      sub_100011490(v26 + *(*(v27 - 8) + 72) * v21, v25 + *(v36 + 48), _s7SessionC8IdentityVMa);
      v10 = v19;
      sub_1000115F8(v25, v19);
      v28 = v38;
      v29 = v35(v19);
      v5 = v28;
      if (v28)
      {
        sub_100011668(v19, &qword_100099208, &qword_1000757A0);
      }

      if (v29)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_100011668(v19, &qword_100099208, &qword_1000757A0);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v32 = v33[0];
    sub_1000115F8(v10, v33[0]);
    v30 = v32;
    v31 = 0;
    return sub_10001137C(v30, v31, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        v30 = v33[0];
        v31 = 1;
        return sub_10001137C(v30, v31, 1, v36);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v38 = v5;
        v19 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000450C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v28 = *(v1 + v3);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v10)));
      v16 = *(*(v28 + 48) + v15);
      v17 = *(*(v28 + 56) + v15);

      sub_10000410C(a1, v16, v17);
      if (v29)
      {

        return v2;
      }

      v2 = v18;
      v20 = v19;

      if (v20)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v2;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100011CE4();
        sub_100011CA8();
        sub_10001E468(v21, v22, v23, v24, v25, v26);
        sub_100011ED4();
        return v2;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000046E8()
{
  v4 = v0;
  sub_100011D68();
  v5 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  result = swift_beginAccess();
  v7 = *(v0 + v5);
  if (*(v7 + 16))
  {
    result = sub_1000392A0();
    if (v8)
    {
      v31 = v5;
      v32 = v1;
      v33 = v4;
      v9 = *(*(v7 + 56) + 8 * result);
      v10 = *(v9 + 16);

      v11 = 0;
      v34 = _swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          if (v10 == v11)
          {

            if (v34[2])
            {
              sub_100011E50();
              swift_beginAccess();
              v23 = *(v33 + v31);
              swift_isUniquelyReferenced_nonNull_native();
              v36 = *(v33 + v31);
              sub_10003D388();
              *(v33 + v31) = v36;
              return swift_endAccess();
            }

            else
            {

              sub_100011E50();
              swift_beginAccess();
              sub_10003BC1C(v32, v24, v25, v26, v27, v28, v29, v30, v31, v32);
              swift_endAccess();
            }
          }

          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v35 = *(v9 + 16 * v11 + 32);

          v12 = *(&v35 + 1);
          v13 = [v12 identifier];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if (v14 != v3 || v16 != v2)
          {
            break;
          }

LABEL_13:
          ++v11;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

          goto LABEL_13;
        }

        v19 = v34;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10003EC5C(0, v34[2] + 1, 1);
          v19 = v34;
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          v22 = sub_100011EBC(v20);
          result = sub_10003EC5C(v22, v21 + 1, 1);
          v19 = v34;
        }

        ++v11;
        v19[2] = v21 + 1;
        v34 = v19;
        *&v19[2 * v21 + 4] = v35;
      }
    }
  }

  return result;
}

void sub_100004974(uint64_t a1, void *a2)
{
  sub_100011E50();
  swift_beginAccess();
  sub_10003BC1C(a1, v4, v5, v6, v7, v8, v9, v10, v14, v15);
  swift_endAccess();

  sub_100006980();
  if ((v11 & 1) == 0)
  {
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    v12 = sub_100011F70();
    [v12 v13];
  }
}

uint64_t sub_100004A20(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100027DA0();
  v10 = v5;
  v6._countAndFlagsBits = 15392;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10;
}

uint64_t sub_100004AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100004ADC(int a1, Swift::UInt a2)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int sub_100004B30(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100004B98()
{
  v1 = v0[1];
  v2 = v0[2];
  return sub_100004B30(*v0);
}

uint64_t sub_100004BA4(int a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_100004ADC(a1, *v1);
}

Swift::Int sub_100004BB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100004C38()
{
  v1 = v0;
  if ((*v0 - 1) < 3)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  sub_10000FE40(v2);
  if ((*(v0 + 8) & 2) != 0)
  {
    v3 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
  }

  else
  {
    v3 = 0;
  }

  _StringGuts.grow(_:)(32);
  v4._countAndFlagsBits = 0x694C6D6165727453;
  v4._object = 0xEF2072656E657473;
  String.append(_:)(v4);
  sub_10000FC6C(&qword_100099168, &unk_100075750);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 541869600;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  if (HIDWORD(v3))
  {
    __break(1u);
  }

  else
  {
    v6 = RPStreamFlagsCopyDescription(v3);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x2044495550202CLL;
    v11._object = 0xE700000000000000;
    String.append(_:)(v11);
    v13 = *(v1 + 16);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);
  }
}

void sub_100004DC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_100004C38();
}

void sub_100004E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011FF4();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for Logger();
  v30 = sub_100011C54(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_100011CD4();
  v37 = v36 - v35;
  sub_100006980();
  if (v38)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    sub_10001E468(v39, v40, v41, v42, v43, v44);
    swift_willThrow();
  }

  else
  {
    v79 = v32;
    sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
    sub_100011EC8();

    v46 = sub_100021034(v45);
    if (!v21)
    {
      v77 = v29;
      v78 = v46;
      v47 = [v46 identifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
      sub_100011D50();
      swift_beginAccess();
      v52 = *(v24 + v51);

      sub_100020A8C(v26, v48, v50, v52, v80);

      if (v82)
      {
        v54 = v80[8];
        v53 = v81;
        swift_beginAccess();
        *(v28 + 32) = &off_10008DD98;
        swift_unknownObjectWeakAssign();
        RapportStreamSession.delegatedProcessUPID.setter(v53);
        v55 = 0;
        if ((v54 & 2) != 0)
        {
          v55 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
        }

        v56 = *RapportStreamFlags.handoff.unsafeMutableAddressor();
        v57 = RapportStreamSession.streamFlags.getter();
        RapportStreamSession.streamFlags.setter(v56 | v55 | v57);
        v58 = sub_1000052A4();
        v60 = v59;
        (*((swift_isaMask & *v24) + 0xB0))();

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          sub_100011DE8();
          v63 = v58;
          v64 = swift_slowAlloc();
          sub_100011D78();
          a10 = swift_slowAlloc();
          *v64 = 136446466;
          v76 = v62;
          v65 = sub_100014C58(v63, v60, &a10);

          *(v64 + 4) = v65;
          *(v64 + 12) = 2082;
          v67 = RapportStreamSession.description.getter(v66);
          v69 = sub_100014C58(v67, v68, &a10);

          *(v64 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v61, v76, "%{public}s: Prepare %{public}s", v64, 0x16u);
          swift_arrayDestroy();
          sub_100011CF4();

          sub_100011CF4();
        }

        else
        {
        }

        (*(v79 + 8))(v37, v77);
        sub_100003FBC(v28, v78);

        sub_100011668(v80, &unk_1000991C0, &qword_100075770);
      }

      else
      {
        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100011CE4();
        sub_100011CA8();
        sub_10001E468(v70, v71, v72, v73, v74, v75);
        swift_willThrow();
      }
    }
  }

  sub_100011FBC();
}

uint64_t sub_1000052A4()
{
  sub_100011F50();
  v5 = *(v0 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  sub_100010C84();
  sub_100011EB0();
  v3._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v3);

  return v6;
}

void sub_10000535C()
{
  sub_100011FF4();
  v2 = v0;
  v4 = v3;
  v5 = sub_10000FC6C(&qword_100099200, &qword_100075798);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v83 - v7;
  v9 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100011D10();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v97 = &v83 - v15;
  v16 = _s7SessionC8IdentityVMa(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_100011CD4();
  v20 = v19 - v18;
  v21 = type metadata accessor for Logger();
  v22 = sub_100011C54(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100011CD4();
  v92 = v28 - v27;
  v29 = RapportStreamSession.trafficFlags.getter();
  RapportStreamSession.trafficFlags.setter(v29 & 0xFFFFBDFF);
  sub_10000450C(v4);
  if (!v1)
  {
    v86 = v21;
    v87 = v24;
    v83 = v8;
    v84 = v13;
    v90 = v31;
    v91 = 0;
    v88 = v30;
    v89 = v20;
    v32 = sub_1000052A4();
    v34 = v33;
    v35 = v92;
    (*((swift_isaMask & *v0) + 0xB0))();

    v36 = Logger.logObject.getter();
    v37 = v4;
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v36, v38);
    v85 = v37;
    if (v39)
    {
      sub_100011DE8();
      v40 = swift_slowAlloc();
      sub_100011D78();
      v93[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_100014C58(v32, v34, v93);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2082;
      v43 = RapportStreamSession.description.getter(v42);
      v45 = sub_100014C58(v43, v44, v93);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v38, "%{public}s: Accept %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      sub_100011CF4();

      sub_100011CF4();
    }

    else
    {
    }

    (*(v87 + 8))(v35, v86);
    v46 = v88;

    v47 = v90;
    v48 = [v90 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    sub_100011E50();
    swift_beginAccess();
    v51 = sub_100011F38();
    sub_10003BEE8(v51, v52, v50, v53);
    swift_endAccess();
    v54 = v95;
    v55 = v89;
    if (v95)
    {
      v92 = v96;
      sub_100011490(v46 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v89, _s7SessionC8IdentityVMa);

      v56 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
      sub_100011D50();
      v57 = swift_beginAccess();
      v58 = *(v2 + v56);
      __chkstk_darwin(v57);
      v82 = v55;

      v59 = v83;
      v60 = v91;
      sub_100004258(sub_100011578, (&v83 - 4), v58, v83);
      v91 = v60;

      v61 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
      if (sub_1000113A4(v59, 1, v61) == 1)
      {
        sub_100011668(v59, &qword_100099200, &qword_100075798);
        v62 = type metadata accessor for UUID();
        sub_10001137C(v97, 1, 1, v62);
      }

      else
      {
        v69 = *(v61 + 48);
        v62 = type metadata accessor for UUID();
        sub_100011D00(v62);
        v71 = *(v70 + 32);
        v72 = sub_100011DFC();
        v73(v72);
        sub_10001137C(v97, 0, 1, v62);
        sub_100011D38();
        sub_1000113CC(v59 + v69, v74);
      }

      v75 = v84;
      sub_100011598(v97, v84, &qword_1000991D8, &qword_100075780);
      type metadata accessor for UUID();
      if (sub_1000113A4(v75, 1, v62) == 1)
      {
        sub_100011668(v75, &qword_1000991D8, &qword_100075780);
        v76 = 0;
        v77 = 0;
      }

      else
      {
        v76 = UUID.uuidString.getter();
        v77 = v78;
        (*(*(v62 - 8) + 8))(v75, v62);
      }

      RapportStreamSession.trafficSessionID.setter(v76, v77);
      sub_100011598(v94, v93, &unk_1000991C0, &qword_100075770);
      v79 = v90;
      v80 = v90;
      v54(v79, 0);

      sub_100011668(v94, &unk_1000991C0, &qword_100075770);

      sub_100011668(v94, &unk_1000991C0, &qword_100075770);
      sub_100011668(v97, &qword_1000991D8, &qword_100075780);
      sub_100011D38();
      sub_1000113CC(v55, v81);
    }

    else
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100011CE4();
      sub_100011CA8();
      sub_10001E468(v63, v64, v65, v66, v67, v68);
      sub_100011ED4();
    }
  }

  sub_100011FBC();
}

uint64_t sub_100005AA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(sub_10000FC6C(&qword_100099208, &qword_1000757A0) + 48);
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v4 = _s7SessionC8IdentityVMa(0), *(v3 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(v3 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100005B44(uint64_t a1)
{
  sub_10000450C(a1);

  return sub_1000052A4();
}

void sub_100005BCC()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = sub_100011C54(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100011CBC();
  v9 = sub_100005B44(v4);
  v11 = v10;
  v12 = *v0;
  sub_100011D5C();
  (*(v13 + 176))();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    sub_100011DE8();
    v24 = v2;
    v16 = swift_slowAlloc();
    sub_100011D78();
    v25 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = sub_100014C58(v9, v11, &v25);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2082;
    v19 = RapportStreamSession.description.getter(v18);
    v21 = sub_100014C58(v19, v20, &v25);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, v24, v16, 0x16u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100011CF4();

    v22 = sub_100011E44();
  }

  else
  {

    v22 = sub_100011E44();
  }

  v23(v22, v5);
  sub_100011DB8();
}

void sub_100005DE4()
{
  sub_100011DD0();
  sub_100011EA4();
  v2 = type metadata accessor for Logger();
  v3 = sub_100011C54(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100011CBC();
  sub_100005B44(v1);
  v6 = *v0;
  sub_100011D5C();
  (*(v7 + 176))();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    sub_100011DE8();
    v20 = v2;
    v10 = swift_slowAlloc();
    sub_100011D78();
    v21 = swift_slowAlloc();
    sub_100011F9C(4.8752e-34);
    sub_100011EC8();

    sub_100011E88();
    v12 = RapportStreamSession.description.getter(v11);
    v14 = sub_100014C58(v12, v13, &v21);

    *(v10 + 14) = v14;
    sub_100011F7C(&_mh_execute_header, v15, v16, "%{public}s: Received Message %{public}s");
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();

    v17 = sub_100011E44();
    v19 = v20;
  }

  else
  {

    v17 = sub_100011E44();
    v19 = v2;
  }

  v18(v17, v19);
  sub_100011DB8();
}

void sub_100005FC0()
{
  sub_100011DD0();
  sub_100011EA4();
  v2 = type metadata accessor for Logger();
  v3 = sub_100011C54(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100011CBC();
  sub_100005B44(v1);
  v6 = *v0;
  sub_100011D5C();
  (*(v7 + 176))();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    sub_100011DE8();
    v20 = v2;
    v10 = swift_slowAlloc();
    sub_100011D78();
    v21 = swift_slowAlloc();
    sub_100011F9C(4.8752e-34);
    sub_100011EC8();

    sub_100011E88();
    v12 = RapportStreamSession.description.getter(v11);
    v14 = sub_100014C58(v12, v13, &v21);

    *(v10 + 14) = v14;
    sub_100011F7C(&_mh_execute_header, v15, v16, "%{public}s: Received Request %{public}s");
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();

    v17 = sub_100011E44();
    v19 = v20;
  }

  else
  {

    v17 = sub_100011E44();
    v19 = v2;
  }

  v18(v17, v19);
  sub_100011DB8();
}

void sub_10000619C()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = sub_100011C54(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100011D10();
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_10000450C(v3);
  v15 = v14;
  v36 = v4;

  v34 = sub_1000052A4();
  v17 = v16;
  v35 = RapportStreamSession.statusFlags.getter();
  v18 = *v0;
  sub_100011F64();
  (*(v19 + 176))();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_100011DE8();
    v22 = swift_slowAlloc();
    v33 = v15;
    v23 = v22;
    sub_100011D78();
    v24 = swift_slowAlloc();
    v32 = v13;
    v37[0] = v24;
    *v23 = 136446466;
    v25 = sub_100014C58(v34, v17, v37);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2082;
    v27 = RapportStreamSession.description.getter(v26);
    v29 = sub_100014C58(v27, v28, v37);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Status Changed %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v13 = v32;
    sub_100011CF4();

    v15 = v33;
    sub_100011CF4();
  }

  else
  {
  }

  (*(v7 + 8))(v12, v36);
  v30 = [v15 identifier];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v1 relaySession:v13 stream:v30 status:v35];

  sub_100011DB8();
}

uint64_t sub_100006560(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v2._object = 0x800000010007A240;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  return a1;
}

void sub_1000065E4()
{
  sub_100011DD0();
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = sub_100011C54(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011D10();
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  sub_10000450C(v2);

  v13 = sub_1000052A4();
  v15 = v14;
  v16 = *v0;
  sub_100011D5C();
  (*(v17 + 176))();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    sub_100011DE8();
    v20 = v13;
    v21 = swift_slowAlloc();
    sub_100011D78();
    v26[0] = swift_slowAlloc();
    *v21 = 136446466;
    sub_100014C58(v20, v15, v26);
    sub_100011EC8();

    sub_100011E88();
    v23 = RapportStreamSession.description.getter(v22);
    v25 = sub_100014C58(v23, v24, v26);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Connection Ready %{public}s", v21, 0x16u);
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  (*(v6 + 8))(v11, v3);
  sub_100011DB8();
}

uint64_t sub_1000068FC(uint64_t a1)
{
  _StringGuts.grow(_:)(20);

  v2._object = 0x800000010007A220;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  return a1;
}

uint64_t sub_100006980()
{
  v1 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return SidecarMapTableGetHandle();
  }

  return result;
}

void sub_1000069E8()
{
  v1 = *v0;
  if (*v0)
  {
    v4 = *v0;
  }

  else
  {
    v2 = SidecarMapTableCreateStrong();
    *v0 = v2;
    v4 = v2;
    v1 = 0;
  }

  v3 = v1;
  SidecarMapTableReplaceObject();
}

id sub_100006A70(id a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = SidecarMapTableGetObject();
  if (v6)
  {
    a1 = v6;
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011558(&v15, v16);
  }

  else
  {

    memset(v16, 0, sizeof(v16));
  }

  sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  v7 = sub_100011EA4();
  type metadata accessor for Relay.Session(v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;

LABEL_9:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    sub_10001E468(v8, v9, v10, v11, v12, v13);
    sub_100011ED4();
    return a1;
  }

  a1 = v17;

  if (!a1)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_100006BBC()
{
  sub_100011E50();
  swift_beginAccess();
  v0 = sub_100006C78();
  swift_endAccess();
  if (!v0)
  {
    v0 = sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    sub_10001E468(v1, v2, v3, v4, v5, v6);
    sub_100011ED4();
  }

  return v0;
}

uint64_t sub_100006C78()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = *v0;
  if (SidecarMapTableRemoveObject())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100011558(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  type metadata accessor for Relay.Session(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v4 = 0;
  }

  Count = SidecarMapTableGetCount();

  if (!Count)
  {

    *v0 = 0;
  }

  return v4;
}

id sub_100006DA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006E8C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12SidecarRelay6Client_connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FC6C(&qword_100099178, &unk_100075760);
  swift_dynamicCast();
  return v3;
}

void sub_100006F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100006E8C();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100011E98();
  v7 = String._bridgeToObjectiveC()();
  [v5 relaySession:isa openedByDevice:a2 dataLink:a3 service:v7];
  swift_unknownObjectRelease();
}

void sub_100007100()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Logger();
  v7 = sub_100011C54(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100011D10();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v38 = v5;
  v18 = sub_1000052A4();
  v20 = v19;
  if (v3)
  {
    v21 = *((swift_isaMask & *v1) + 0xB0);
    v22 = swift_errorRetain();
    v23 = v21(v22);
    __chkstk_darwin(v23);
    sub_100011D98();
    *(v24 - 16) = v18;
    *(v24 - 8) = v20;
    __chkstk_darwin(v25);
    sub_100011DA8();
    *(v26 - 16) = v3;
    sub_100016F18(sub_100011550, v27, sub_100011C20);

    (*(v9 + 8))(v17, v6);
  }

  else
  {
    (*((swift_isaMask & *v1) + 0xB0))();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = sub_100012024();
      v37 = v28;
      v32 = v31;
      v39 = v31;
      *v30 = 136446210;
      v33 = sub_100014C58(v18, v20, &v39);

      *(v30 + 4) = v33;
      v34 = v37;
      _os_log_impl(&_mh_execute_header, v37, v29, "%{public}s: Closing Session", v30, 0xCu);
      sub_100003458(v32);
      sub_100011CF4();

      sub_100011CF4();
    }

    else
    {
    }

    (*(v9 + 8))(v14, v6);
  }

  v35 = sub_100006E8C();
  if (v3)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  [v35 relaySession:v38 closedWithError:v3];
  swift_unknownObjectRelease();

  sub_100011DB8();
}

uint64_t sub_100007420(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  v2._object = 0x800000010007A200;
  v2._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v2);
  return a1;
}

void sub_100007510()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100011EA4();
  v8 = type metadata accessor for Logger();
  v9 = sub_100011C54(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100011CD4();
  v16 = v15 - v14;
  v17 = sub_1000052A4();
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    JUMPOUT(0x100007878);
  }

  v19 = v18;
  v40 = v17;
  v41 = v11;
  v42 = v8;
  v20 = RPDataLinkTypeCopyDescription(v3);
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  (*((swift_isaMask & *v1) + 0xB0))();

  v23 = sub_100011F38();
  sub_100010E78(v23, v24);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_100012024();
    sub_100011D78();
    v43 = swift_slowAlloc();
    *v27 = 136446722;
    v28 = sub_100014C58(v40, v19, &v43);

    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;
    v29 = 0;
    switch(v5 >> 62)
    {
      case 1uLL:
        LODWORD(v29) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_14;
        }

        v29 = v29;
LABEL_10:
        *(v27 + 14) = v29;
        sub_100003388(v7, v5);
        *(v27 + 22) = 2082;
        v35 = sub_100014C58(v39, v22, &v43);

        *(v27 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: Received %ld bytes [%{public}s]", v27, 0x20u);
        swift_arrayDestroy();
        sub_100011CF4();

        sub_100011CF4();

        (*(v41 + 8))(v16, v42);
        break;
      case 2uLL:
        v33 = *(v7 + 16);
        v32 = *(v7 + 24);
        v34 = __OFSUB__(v32, v33);
        v29 = v32 - v33;
        if (!v34)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_10;
      default:
        v29 = BYTE6(v5);
        goto LABEL_10;
    }
  }

  else
  {

    v30 = sub_100011F38();
    sub_100003388(v30, v31);

    (*(v41 + 8))(v16, v42);
  }

  sub_100006E8C();
  sub_100011F38();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v37 = sub_100011E38();
  [v37 v38];
  swift_unknownObjectRelease();

  sub_100011DB8();
}

void sub_100007928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  v6 = sub_100006E8C();
  v7 = String._bridgeToObjectiveC()();
  [v6 relaySession:v4 stream:v7 status:a4];
  swift_unknownObjectRelease();
}

void sub_100007A34()
{
  sub_100011DD0();
  v1 = type metadata accessor for Logger();
  v2 = sub_100011C54(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100011CBC();
  v7 = *v0;
  sub_100011D5C();
  (*(v8 + 176))();
  v9 = v0;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = sub_100012024();
    *v12 = 67109378;
    *(v12 + 4) = *(v9 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v12 + 8) = 2082;
    v13 = sub_100011DFC();
    *(v12 + 10) = sub_100014C58(v13, v14, v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Starting Service Extension '%{public}s' - NOT A PRESENTER", v12, 0x12u);
    sub_100003458(v19);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  v16 = *(v4 + 8);
  v17 = sub_100011E98();
  v18(v17);
  sub_100011DB8();
}

uint64_t sub_100007CA4()
{
  v1 = type metadata accessor for Logger();
  v2 = sub_100011C54(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100011CBC();
  v7 = *v0;
  sub_100011D5C();
  (*(v8 + 176))();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100012048();
    *v12 = 67109120;
    *(v12 + 4) = *(&v9->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    _os_log_impl(&_mh_execute_header, v10, v11, "PID %d: Terminate Service", v12, 8u);
    sub_100011CF4();
  }

  else
  {

    v10 = v9;
  }

  v13 = *(v4 + 8);
  v14 = sub_100011E98();
  v15(v14);
  [sub_100006E8C() relayTerminateService];
  return swift_unknownObjectRelease();
}

uint64_t sub_100007EAC(const void *a1, uint64_t a2)
{
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  v4 = *(qword_1000A1AE0 + 56);
  result = [v4 respondsToSelector:"fetchRemoteDisplaySendingDeviceStatesWithCompletion:"];
  if (result)
  {
    v6[4] = a1;
    v6[5] = a2;
    sub_100011C68();
    v6[1] = 1107296256;
    v6[2] = sub_100007F88;
    v6[3] = &unk_10008E1E0;
    _Block_copy(v6);
    sub_100011F44();

    [v4 fetchRemoteDisplaySendingDeviceStatesWithCompletion:a1];
    _Block_release(a1);
  }

  return result;
}

void sub_100007F88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

void sub_1000080F4()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for UUID();
  v11 = sub_100011C54(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  v18 = v17 - v16;
  v19 = _Block_copy(v7);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001203C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v9;
  sub_100008214(v18, v5, v20, v3, v1);

  (*(v13 + 8))(v18, v10);
  sub_100011DB8();
}

uint64_t sub_100008214(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  v9 = *(qword_1000A1AE0 + 56);
  result = [v9 respondsToSelector:*a4];
  if (result)
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14[4] = a2;
    v14[5] = a3;
    sub_100011C68();
    sub_100011D20();
    v14[2] = v12;
    v14[3] = a5;
    v13 = _Block_copy(v14);

    [v9 *a4];
    swift_unknownObjectRelease();
    _Block_release(v13);
  }

  return result;
}

uint64_t sub_10000833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  result = [*(qword_1000A1AE0 + 56) respondsToSelector:"fetchDeviceReadinessStatusWithIDSIdentifier:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_100011DFC();
    v7 = String._bridgeToObjectiveC()();
    v11[4] = v4;
    v11[5] = a4;
    sub_100011C68();
    sub_100011D20();
    v11[2] = v8;
    v11[3] = &unk_10008E0F0;
    _Block_copy(v11);
    sub_100011F44();

    v9 = sub_100011E38();
    [v9 v10];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }

  return result;
}

uint64_t sub_1000084E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  result = [*(qword_1000A1AE0 + 56) respondsToSelector:"sendDataRequest:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_100011DFC();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10[4] = v4;
    v10[5] = a4;
    sub_100011C68();
    v10[1] = 1107296256;
    v10[2] = sub_10001C2F8;
    v10[3] = &unk_10008E0A0;
    _Block_copy(v10);
    sub_100011F44();

    v8 = sub_100011E38();
    [v8 v9];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }

  return result;
}

void sub_1000086E8()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  v9 = sub_100011C54(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100011CD4();
  v16 = v15 - v14;
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CA8();
  v23 = sub_10001E468(v17, v18, v19, v20, v21, v22);
  (*((swift_isaMask & *v7) + 0xB0))();
  v26[2] = v7;
  sub_100016F18(v3, v26, v1);
  (*(v11 + 8))(v16, v8);
  v24 = v23;
  v25 = _convertErrorToNSError(_:)();
  (v5)[2](v5, v25);

  _Block_release(v5);
  sub_100011DB8();
}

uint64_t sub_10000889C()
{
  sub_100011F50();
  v3 = *(v0 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v4;
}

void sub_100008934(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  sub_1000086E8();
  _Block_release(v4);
}

void sub_1000089C0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a2) + 0xB0))(v9);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = *(&v12->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v15 + 8) = 2048;
    *(v15 + 10) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "PID %d: Service Presenter Ready (%lx) - NOT A PRESENTER", v15, 0x12u);
  }

  else
  {

    v13 = v12;
  }

  (*(v7 + 8))(v11, v6);
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = sub_10001E468(v16, v17, -1001, 0, 0, 0);
  v19 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v19);

  _Block_release(a3);
}

void sub_100008C2C()
{
  sub_100011DD0();
  v35 = v1;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100011C54(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Logger();
  v14 = sub_100011C54(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100011CD4();
  v21 = v20 - v19;
  v22 = *v0;
  sub_100011D5C();
  (*(v23 + 176))();
  (*(v7 + 16))(v12, v3, v4);
  v24 = v0;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v34 = v13;
    v27 = swift_slowAlloc();
    v33 = v16;
    v28 = sub_100012024();
    v36 = v28;
    *v27 = 67109378;
    *(v27 + 4) = *(v24 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v27 + 8) = 2082;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    (*(v7 + 8))(v12, v4);
    v32 = sub_100014C58(v29, v31, &v36);

    *(v27 + 10) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, v35, v27, 0x12u);
    sub_100003458(v28);
    sub_100011CF4();

    sub_100011CF4();

    (*(v33 + 8))(v21, v34);
  }

  else
  {

    (*(v7 + 8))(v12, v4);
    (*(v16 + 8))(v21, v13);
  }

  sub_100011DB8();
}

uint64_t sub_100008EE8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100011CD4();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  sub_100008C2C();

  v9 = *(v5 + 8);
  v10 = sub_100011DFC();
  return v11(v10);
}

void sub_100008FC0(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_100009020(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, Class, void))
{
  v27 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a3) + 0xB0))(v10);
  v13 = a3;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 67109378;
    *(v16 + 4) = *(v13 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v16 + 8) = 2082;
    *(v16 + 10) = sub_100014C58(a1, a2, &v29);
    _os_log_impl(&_mh_execute_header, v14, v15, "PID %d: '%{public}s'", v16, 0x12u);
    sub_100003458(v17);
  }

  else
  {
  }

  (*(v8 + 8))(v12, v7);
  v18 = a1 == 42 && a2 == 0xE100000000000000;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_100098B98 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (qword_100098B98 != -1)
  {
LABEL_26:
    swift_once();
  }

LABEL_12:
  v19 = sub_100021270();
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v20 = sub_1000388A4(v19);
  v21 = 0;
  while (v20 != v21)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
    ++v21;
    if (sub_100058458())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v29;
      v21 = v23;
    }
  }

  sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = v27;
  v27[2](v27, isa, 0);

  _Block_release(v25);
}

void sub_1000094D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v169 = a8;
  v159 = a6;
  v173 = a5;
  v162 = a4;
  v171 = a3;
  v168 = _s7SessionC8IdentityVMa(0);
  v11 = *(*(v168 - 8) + 64);
  v12 = __chkstk_darwin(v168);
  v145 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v147 = &v144 - v15;
  __chkstk_darwin(v14);
  v149 = &v144 - v16;
  v17 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v150 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v157 = &v144 - v22;
  v23 = __chkstk_darwin(v21);
  v152 = &v144 - v24;
  __chkstk_darwin(v23);
  v174 = &v144 - v25;
  v26 = type metadata accessor for Logger();
  v175 = *(v26 - 8);
  v176 = v26;
  v27 = *(v175 + 64);
  v28 = __chkstk_darwin(v26);
  v158 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v148 = &v144 - v31;
  v32 = __chkstk_darwin(v30);
  v161 = &v144 - v33;
  __chkstk_darwin(v32);
  v166 = (&v144 - v34);
  v35 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v163 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v144 - v39;
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v155 = &v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v164 = &v144 - v47;
  __chkstk_darwin(v46);
  v160 = &v144 - v48;
  v49 = type metadata accessor for SidecarIdentity();
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v53 = &v144 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v51);
  v56 = &v144 - v55;
  __chkstk_darwin(v54);
  v58 = &v144 - v57;
  v156 = a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v60 = sub_100010F24(isa);

  v146 = v60;
  v61 = v42;
  v170 = sub_1000052A4();
  v63 = v62;
  v64 = *(v61 + 16);
  v154 = v61 + 16;
  v153 = v64;
  v64(v58, v173, v41);
  v165 = a2;
  sub_100011598(a2, v40, &qword_1000991D8, &qword_100075780);
  v65 = sub_1000113A4(v40, 1, v41);
  v172 = v58;
  v173 = a7;
  v167 = v63;
  if (v65 == 1)
  {
    v151 = v61;
    v66 = sub_100011668(v40, &qword_1000991D8, &qword_100075780);
    (*((swift_isaMask & *a7) + 0xB0))(v66);
    sub_100011490(v58, v53, type metadata accessor for SidecarIdentity);

    v67 = v162;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v70 = 136446722;
      *(v70 + 4) = sub_100014C58(v170, v63, &v178);
      *(v70 + 12) = 2082;
      v71 = sub_100052008();
      v73 = v72;
      sub_1000113CC(v53, type metadata accessor for SidecarIdentity);
      v74 = sub_100014C58(v71, v73, &v178);

      *(v70 + 14) = v74;
      *(v70 + 22) = 2082;
      *(v70 + 24) = sub_100014C58(v171, v67, &v178);
      _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s: Connecting to %{public}s '%{public}s'", v70, 0x20u);
      swift_arrayDestroy();
      v58 = v172;
    }

    else
    {

      sub_1000113CC(v53, type metadata accessor for SidecarIdentity);
    }

    v166 = *(v175 + 8);
    v166(v161, v176);
    v86 = v168;
    v87 = v41;
    v61 = v151;
  }

  else
  {
    (*(v61 + 32))(v160, v40, v41);
    v75 = UUID._bridgeToObjectiveC()().super.isa;
    v161 = sub_100010F24(v75);

    (*((swift_isaMask & *a7) + 0xB0))();
    sub_100011490(v58, v56, type metadata accessor for SidecarIdentity);

    v67 = v162;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v151 = v61;
      v178 = v79;
      *v78 = 136446978;
      *(v78 + 4) = sub_100014C58(v170, v63, &v178);
      *(v78 + 12) = 2082;
      v80 = sub_100052008();
      v81 = v67;
      v83 = v82;
      sub_1000113CC(v56, type metadata accessor for SidecarIdentity);
      v84 = sub_100014C58(v80, v83, &v178);
      v67 = v81;

      *(v78 + 14) = v84;
      *(v78 + 22) = 2082;
      *(v78 + 24) = sub_100014C58(v171, v81, &v178);
      *(v78 + 32) = 2048;
      *(v78 + 34) = v161;
      _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: Reconnecting to %{public}s '%{public}s' (%lx)", v78, 0x2Au);
      swift_arrayDestroy();

      v58 = v172;

      v85 = v166;
      v166 = *(v175 + 8);
      v166(v85, v176);
      v61 = v151;
      (*(v151 + 8))(v160, v41);
    }

    else
    {

      sub_1000113CC(v56, type metadata accessor for SidecarIdentity);
      v88 = v166;
      v166 = *(v175 + 8);
      v166(v88, v176);
      (*(v61 + 8))(v160, v41);
    }

    v86 = v168;
    v87 = v41;
  }

  v89 = v164;
  v90 = v163;
  sub_100011598(v165, v163, &qword_1000991D8, &qword_100075780);
  if (sub_1000113A4(v90, 1, v87) == 1)
  {
    sub_100011668(v90, &qword_1000991D8, &qword_100075780);
    v91 = v174;
    sub_10001137C(v174, 1, 1, v86);
  }

  else
  {
    (*(v61 + 32))(v89, v90, v87);
    v94 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
    v95 = v173;
    swift_beginAccess();
    v96 = *(v95 + v94);

    v91 = v174;
    sub_100020B28(v89, v96);

    v97 = v152;
    sub_100011598(v91, v152, &unk_1000991E0, &qword_100075788);
    if (sub_1000113A4(v97, 1, v86) == 1)
    {

      sub_100011668(v97, &unk_1000991E0, &qword_100075788);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10001E468(v98, v99, -1020, 0, 0, 0);
      swift_willThrow();
      (*(v61 + 8))(v89, v87);
      sub_100011668(v91, &unk_1000991E0, &qword_100075788);
      v100 = v158;
      v101 = v166;
      v102 = v176;
      v138 = *((swift_isaMask & *v95) + 0xB0);
      v139 = swift_errorRetain();
      v140 = v138(v139);
      __chkstk_darwin(v140);
      sub_100016F18(sub_10000AA1C, 0, sub_100011C20);
      v101(v100, v102);
      swift_errorRetain();
      v141 = _convertErrorToNSError(_:)();
      v142 = v169;
      (*(v169 + 16))(v169, v141);

      v143 = v172;
      goto LABEL_27;
    }

    (*(v61 + 8))(v89, v87);
    sub_100011668(v97, &unk_1000991E0, &qword_100075788);
  }

  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  v103 = v173;
  sub_1000212CC(v173, v171, v67, v58, v159, v91, v92, v93, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v105 = v104;
  swift_beginAccess();
  sub_1000069E8();
  swift_endAccess();
  v106 = v149;
  sub_100011490(v105 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v149, _s7SessionC8IdentityVMa);
  v107 = v155;
  v153(v155, v156, v87);
  v108 = v157;
  sub_100011490(v106, v157, _s7SessionC8IdentityVMa);
  sub_10001137C(v108, 0, 1, v86);
  swift_beginAccess();
  sub_10004FE44(v108, v107);
  v109 = swift_endAccess();
  v110 = v148;
  (*((swift_isaMask & *v103) + 0xB0))(v109);
  v111 = v147;
  sub_100011490(v106, v147, _s7SessionC8IdentityVMa);
  v112 = v167;

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();

  v115 = os_log_type_enabled(v113, v114);
  v116 = v176;
  if (v115)
  {
    v117 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v177 = v173;
    *v117 = 136446466;
    v118 = sub_100014C58(v170, v112, &v177);
    LODWORD(v171) = v114;
    v119 = v118;

    *(v117 + 4) = v119;
    *(v117 + 12) = 2082;
    v120 = sub_100052008();
    v122 = v121;
    v123 = *(v86 + 20);
    v124 = *(v111 + *(v86 + 24)) == 0;
    if (*(v111 + *(v86 + 24)))
    {
      v125 = 0x65746F6D6572;
    }

    else
    {
      v125 = 0x6C61636F6CLL;
    }

    v170 = v105;
    if (v124)
    {
      v126 = 0xE500000000000000;
    }

    else
    {
      v126 = 0xE600000000000000;
    }

    v178 = *(v111 + v123);
    sub_100010ED0();
    v127 = String.init<A>(_:radix:uppercase:)();
    v129 = v128;
    v178 = v120;
    v179 = v122;
    v130._countAndFlagsBits = 58;
    v130._object = 0xE100000000000000;
    String.append(_:)(v130);
    v131._countAndFlagsBits = v125;
    v131._object = v126;
    String.append(_:)(v131);

    v132._countAndFlagsBits = 58;
    v132._object = 0xE100000000000000;
    String.append(_:)(v132);
    v133._countAndFlagsBits = v127;
    v134 = v174;
    v133._object = v129;
    String.append(_:)(v133);

    v135 = v178;
    v136 = v179;
    sub_1000113CC(v111, _s7SessionC8IdentityVMa);
    v137 = sub_100014C58(v135, v136, &v177);

    *(v117 + 14) = v137;
    _os_log_impl(&_mh_execute_header, v113, v171, "%{public}s: Connected %{public}s", v117, 0x16u);
    swift_arrayDestroy();

    v166(v148, v176);
    sub_1000113CC(v149, _s7SessionC8IdentityVMa);
    v142 = v169;
    v143 = v172;
  }

  else
  {

    sub_1000113CC(v111, _s7SessionC8IdentityVMa);
    v166(v110, v116);
    sub_1000113CC(v106, _s7SessionC8IdentityVMa);
    v142 = v169;
    v143 = v172;
    v134 = v174;
  }

  v142[2](v142, 0);
  sub_100011668(v134, &unk_1000991E0, &qword_100075788);
LABEL_27:
  sub_1000113CC(v143, type metadata accessor for SidecarIdentity);
  _Block_release(v142);
}

uint64_t sub_10000A998(uint64_t a1)
{
  _StringGuts.grow(_:)(23);

  v2._object = 0x800000010007A180;
  v2._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v2);
  return a1;
}

void sub_10000AC64(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v36 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v33 - v13;
  v15 = sub_1000052A4();
  v17 = v16;
  v33[1] = a2;
  v33[2] = v8;
  v34 = v15;
  v35 = v16;
  if (a2)
  {
    v18 = v15;
    v19 = swift_isaMask & *a3;
    v33[0] = a1;
    v20 = v8;
    v21 = *(v19 + 176);
    v22 = swift_errorRetain();
    v23 = v21(v22);
    v24 = __chkstk_darwin(v23);
    v33[-2] = v18;
    v33[-1] = v17;
    __chkstk_darwin(v24);
    v33[-2] = a2;
    sub_100016F18(sub_100011374, v25, sub_100011C20);

    (*(v20 + 8))(v14, v7);
  }

  else
  {
    (*((swift_isaMask & *a3) + 0xB0))();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33[0] = v7;
      v31 = v30;
      v37 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100014C58(v34, v17, &v37);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: Close Session", v29, 0xCu);
      sub_100003458(v31);
      v7 = v33[0];

      v32 = v28;
    }

    else
    {

      v32 = v8;
    }

    (*(v32 + 8))(v12, v7);
  }

  sub_100006BBC();

  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_1000216C0();
  v36[2](v36, 0);

  _Block_release(v36);
}

uint64_t sub_10000B148(uint64_t a1)
{
  _StringGuts.grow(_:)(17);

  v2._countAndFlagsBits = 0x2065736F6C43203ALL;
  v2._object = 0xEF6E6F6973736553;
  String.append(_:)(v2);
  return a1;
}

uint64_t sub_10000B1D4(uint64_t a1)
{
  _StringGuts.grow(_:)(24);

  v2._object = 0x800000010007A160;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  return a1;
}

void sub_10000B2E4(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v60 = a3;
  v5 = _s7SessionC8IdentityVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UUID();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v53);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v54 = a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100010F24(isa);

  v20 = sub_1000052A4();
  v22 = v21;
  v23 = *((swift_isaMask & *a2) + 0xB0);
  v55 = (swift_isaMask & *a2) + 176;
  v56 = v23;
  v23();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v59 = v13;
  v57 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v50 = v9;
    v28 = v13;
    v29 = v27;
    v30 = swift_slowAlloc();
    v51 = v8;
    v31 = v30;
    v61[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_100014C58(v20, v22, v61);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Deallocate Session", v29, 0xCu);
    sub_100003458(v31);
    v8 = v51;

    v32 = v28;
    v9 = v50;
  }

  else
  {

    v32 = v13;
  }

  v33 = *(v32 + 8);
  v33(v18, v12);
  v34 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
  swift_beginAccess();
  v35 = *(a2 + v34);
  if (!*(v35 + 16))
  {
    goto LABEL_8;
  }

  v36 = *(a2 + v34);

  sub_100039668();
  if ((v37 & 1) == 0)
  {

LABEL_8:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = 559;
    v42 = sub_10001E468(v40, v41, -1020, 0, 0, 0);
    v43 = swift_willThrow();
    v44 = v58;
    v45 = (v56)(v43);
    __chkstk_darwin(v45);
    v48 = v42;

    sub_100016C54(sub_100011C20, (&v50 - 4), v44, v57, v22);

    v33(v44, v12);
    v46 = v42;
    v47 = _convertErrorToNSError(_:)();
    (v60)[2](v60, v47);

    goto LABEL_9;
  }

  v38 = *(v35 + 36);

  swift_beginAccess();
  sub_10000FC6C(&qword_1000991D0, &qword_100075778);
  v39 = v52;
  Dictionary._Variant.remove(at:)();
  sub_1000113CC(v8, _s7SessionC8IdentityVMa);
  (*(v9 + 8))(v39, v53);
  swift_endAccess();
  v60[2](v60, 0);
LABEL_9:
  _Block_release(v60);
}

void sub_10000B958(void *a1, uint64_t a2, unint64_t a3, void *a4, const void *a5)
{
  v10 = type metadata accessor for Logger();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  _Block_copy(a5);
  v42 = a1;
  v16 = sub_1000052A4();
  v18 = v17;
  v19 = *((swift_isaMask & *a4) + 0xB0);
  v37 = (swift_isaMask & *a4) + 176;
  v38 = v19;
  v19();

  sub_100010E78(a2, a3);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v40 = a2;
  v41 = v16;
  if (v22)
  {
    v36 = a5;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_100014C58(v16, v18, &v45);
    *(v23 + 12) = 2048;
    v25 = 0;
    v26 = v40;
    switch(a3 >> 62)
    {
      case 1uLL:
        LODWORD(v25) = HIDWORD(v40) - v40;
        if (__OFSUB__(HIDWORD(v40), v40))
        {
          __break(1u);
LABEL_11:
          __break(1u);
          JUMPOUT(0x10000BE58);
        }

        v25 = v25;
LABEL_8:
        *(v23 + 14) = v25;
        sub_100003388(v26, a3);
        _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Send %ld Bytes", v23, 0x16u);
        sub_100003458(v24);

        (*(v44 + 8))(v15, v10);
        v27 = v36;
        break;
      case 2uLL:
        v29 = *(v40 + 16);
        v28 = *(v40 + 24);
        v30 = __OFSUB__(v28, v29);
        v25 = v28 - v29;
        if (!v30)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        goto LABEL_8;
      default:
        v25 = BYTE6(a3);
        goto LABEL_8;
    }
  }

  else
  {
    sub_100003388(a2, a3);

    (*(v44 + 8))(v15, v10);
    v27 = a5;
  }

  sub_100006A70(v42);

  v31 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v33 = Int._bridgeToObjectiveC()().super.super.isa;
  [v31 setObject:isa forKeyedSubscript:v33];

  v34 = v40;
  sub_100010E78(v40, a3);
  sub_100011358(0, 0xF000000000000000);
  sub_100046464();

  sub_100011358(v34, a3);

  _Block_release(v27);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10000BE68()
{

  v0._countAndFlagsBits = 0x4620646E6553203ALL;
  v0._object = 0xED000064656C6961;
  String.append(_:)(v0);
}

void sub_10000BF7C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, const void *a8)
{
  v70 = a6;
  v64 = a4;
  v14 = type metadata accessor for Logger();
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = *(v72 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v68 = swift_allocObject();
  *(v68 + 16) = a8;
  v71 = a8;
  _Block_copy(a8);
  v69 = sub_1000052A4();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(a3))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v22 = v21;
  v65 = a1;
  ProcessUniqueID = SidecarGetProcessUniqueID();
  v24 = *((swift_isaMask & *a7) + 0xB0);
  v62 = (swift_isaMask & *a7) + 176;
  v63 = v24;
  v24();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v60 = v26;
  v27 = os_log_type_enabled(v25, v26);
  v66 = ProcessUniqueID;
  v67 = v22;
  v58 = a3;
  v59 = a5;
  v57 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v74[0] = v56;
    *v28 = 136447234;
    *(v28 + 4) = sub_100014C58(v69, v22, v74);
    *(v28 + 12) = 2080;
    if (ProcessUniqueID == v70)
    {
      v29 = 7239503;
    }

    else
    {
      v29 = 0x66666F646E6148;
    }

    v30 = a2;
    if (ProcessUniqueID == v70)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = sub_100014C58(v29, v31, v74);

    *(v28 + 14) = v32;
    v61 = v18;
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_100014C58(v64, a5, v74);
    *(v28 + 32) = 2082;
    v33 = RPStreamTypeCopyDescription(v30);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = a3;
    v37 = v36;

    v38 = sub_100014C58(v34, v37, v74);

    *(v28 + 34) = v38;
    *(v28 + 42) = 2082;
    v18 = v61;
    v39 = RPStreamFlagsCopyDescription(v35);
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v72;
    v44 = sub_100014C58(v40, v42, v74);

    *(v28 + 44) = v44;
    _os_log_impl(&_mh_execute_header, v25, v60, "%{public}s: Open(%s) Stream '%{public}s', %{public}s <%{public}s>", v28, 0x34u);
    swift_arrayDestroy();

    v45 = v43;
  }

  else
  {

    v45 = v72;
  }

  (*(v45 + 8))(v20, v73);
  v46 = sub_100006A70(v65);
  v61 = v18;
  v65 = sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
  v47 = swift_allocObject();
  v48 = v69;
  v49 = v70;
  v47[2] = a7;
  v47[3] = v48;
  v50 = v66;
  v47[4] = v67;
  v47[5] = v50;
  v47[6] = v49;
  v47[7] = sub_100011C14;
  v51 = v64;
  v47[8] = v68;
  v47[9] = v51;
  v52 = v59;
  v47[10] = v59;
  v47[11] = v46;

  v53 = a7;

  sub_100021EBC(v54, v57, v58, v49, v51, v52, sub_1000112C4, v47);

  _Block_release(v71);
}

void sub_10000C59C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a9;
  v58 = a8;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  v26 = v52 - v25;
  v27 = *((swift_isaMask & *a3) + 0xB0);
  if (a2)
  {
    v28 = v27(v23);
    v29 = __chkstk_darwin(v28);
    v52[-4] = a4;
    v52[-3] = a5;
    v52[-2] = a6;
    v52[-1] = a7;
    __chkstk_darwin(v29);
    v52[-2] = a1;
    sub_100016F18(sub_100011C4C, v30, sub_100011C20);
    (*(v20 + 8))(v26, v19);
    v58(0, a1);
  }

  else
  {
    v31 = a4;
    v53 = v20;
    v54 = v19;
    v55 = a10;
    v56 = a11;
    v52[2] = a3;
    v32 = v24;
    v27(v23);

    sub_100011304(a1, 0);
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    sub_100011310(a1, 0);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52[1] = a12;
      v37 = v36;
      v59 = swift_slowAlloc();
      *v37 = 136446722;
      *(v37 + 4) = sub_100014C58(v31, a5, &v59);
      *(v37 + 12) = 2080;
      if (a6 == a7)
      {
        v38 = 7239503;
      }

      else
      {
        v38 = 0x66666F646E6148;
      }

      if (a6 == a7)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE700000000000000;
      }

      v40 = v35;
      v41 = sub_100014C58(v38, v39, &v59);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2082;
      v43 = RapportStreamSession.description.getter(v42);
      v45 = sub_100014C58(v43, v44, &v59);

      *(v37 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v34, v40, "%{public}s: Opened(%s) %{public}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    (*(v53 + 8))(v33, v54);
    v46 = *(a1 + 16);
    v47 = objc_allocWithZone(SidecarStream);
    v48 = v56;

    v49 = v46;
    v50 = sub_100010C08(v55, v48, v49);
    sub_100003FBC(a1, v50);
    v51 = v50;
    v58(v50, 0);
  }
}

void sub_10000C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000CA64(uint64_t a1)
{
  _StringGuts.grow(_:)(20);

  v2._object = 0x800000010007A140;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  return a1;
}

void sub_10000CAE8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000CBC4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void (**a8)(void, void, void))
{
  v76 = a3;
  v78 = type metadata accessor for Logger();
  v15 = *(v78 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v78);
  v19 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v62[-v20];
  v74 = swift_allocObject();
  *(v74 + 16) = a8;
  v77 = a8;
  _Block_copy(a8);
  v73 = a1;
  v75 = sub_1000052A4();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v76 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v76))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v66 = a2;
  v70 = a4;
  v23 = v22;
  ProcessUniqueID = SidecarGetProcessUniqueID();
  v25 = (swift_isaMask & *a7) + 176;
  v68 = *((swift_isaMask & *a7) + 0xB0);
  v67 = v25;
  v68();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v65 = a5;
  v72 = a6;
  v69 = v19;
  v71 = v23;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v29 = 136447234;
    *(v29 + 4) = sub_100014C58(v75, v23, v82);
    *(v29 + 12) = 2080;
    if (ProcessUniqueID == a6)
    {
      v30 = 7239503;
    }

    else
    {
      v30 = 0x66666F646E6148;
    }

    if (ProcessUniqueID == a6)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = sub_100014C58(v30, v31, v82);
    v63 = v27;
    v33 = v32;

    *(v29 + 14) = v33;
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_100014C58(v70, a5, v82);
    *(v29 + 32) = 2082;
    v34 = RPStreamTypeCopyDescription(v66);
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100014C58(v35, v37, v82);

    *(v29 + 34) = v38;
    *(v29 + 42) = 2082;
    v39 = RPStreamFlagsCopyDescription(v76);
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_100014C58(v40, v42, v82);

    *(v29 + 44) = v43;
    _os_log_impl(&_mh_execute_header, v26, v63, "%{public}s: Listen(%s) Stream '%{public}s', %{public}s <%{public}s>", v29, 0x34u);
    swift_arrayDestroy();
  }

  v44 = v15[1];
  v44(v21, v78);
  v45 = sub_100006A70(v73);
  v73 = v15;
  v46 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
  swift_beginAccess();
  v47 = *(a7 + v46);
  v48 = v65;

  sub_100020A8C(v45, v70, v48, v47, v80);

  if (v81)
  {
    sub_100011668(v80, &unk_1000991C0, &qword_100075770);
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = sub_10001E468(v49, v50, -121, 0, 0, 0);
    swift_willThrow();

    v53 = v69;
    v54 = (v68)(v52);
    v55 = __chkstk_darwin(v54);
    v56 = v71;
    *&v62[-32] = v75;
    *&v62[-24] = v56;
    v61 = v72;
    __chkstk_darwin(v55);
    v60 = v51;
    sub_100016F18(sub_10001115C, v57, sub_100011C20);

    v44(v53, v78);
    swift_errorRetain();
    v58 = _convertErrorToNSError(_:)();
    (v77)[2](v77, 0, v58);
  }

  else
  {

    v82[0] = v66;
    v82[1] = v76;
    v82[2] = v72;
    v82[3] = sub_10001107C;
    v82[4] = v74;
    swift_beginAccess();

    v59 = *(a7 + v46);
    swift_isUniquelyReferenced_nonNull_native();
    v79 = *(a7 + v46);
    sub_10003DB4C();
    *(a7 + v46) = v79;

    swift_endAccess();
  }

  _Block_release(v77);
}

uint64_t sub_10000D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  sub_100011DD0();
  v22 = v21;
  v24 = _Block_copy(v23);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v24);
  v25 = v22;
  v26 = sub_100011DFC();
  a21(v26);
  _Block_release(v24);

  sub_100011DB8();
}

void sub_10000D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v15 = String._bridgeToObjectiveC()();
  SidecarGetProcessUniqueID();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a1;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = a7;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CAE8;
  aBlock[3] = a8;
  v17 = _Block_copy(aBlock);
  v18 = v9;

  v19 = *a9;
  v20 = sub_100011E38();
  [v20 v21];
  _Block_release(v17);
}

void sub_10000D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  sub_100011DD0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v62 = v33;
  v60 = type metadata accessor for Logger();
  v34 = sub_100011C54(v60);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_100011CD4();
  v41 = v40 - v39;
  v61 = sub_1000052A4();
  v43 = v42;
  if (v30)
  {
    swift_willThrow();
    v44 = v30;
LABEL_3:
    v45 = *((swift_isaMask & *v28) + 0xB0);
    v46 = swift_errorRetain();
    v47 = v45(v46);
    __chkstk_darwin(v47);
    sub_100011D98();
    *(v48 - 16) = v61;
    *(v48 - 8) = v43;
    __chkstk_darwin(v49);
    sub_100011DA8();
    *(v50 - 16) = v44;
    sub_100016F18(v62, v51, a21);

    (*(v36 + 8))(v41, v60);
    sub_100011DB8();
    return;
  }

  if (!v32)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    v44 = sub_10001E468(v53, v54, v55, v56, v57, v58);
    swift_willThrow();
    goto LABEL_3;
  }

  v52 = v32;
  sub_100006A70(v26);

  sub_10002991C(v24, v22, v52);

  sub_100011DB8();
}

uint64_t sub_10000D8CC(uint64_t a1)
{
  _StringGuts.grow(_:)(22);

  v2._object = 0x800000010007A120;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  return a1;
}

uint64_t sub_10000D9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a1;
  v18 = sub_100011DFC();
  sub_10000D530(v18, v19, a5, v14, v16, a7, a8, a9, a10);
}

void sub_10000DA58()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26 = type metadata accessor for Logger();
  v7 = sub_100011C54(v26);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100011CD4();
  v14 = v13 - v12;
  v15 = sub_1000052A4();
  v17 = v16;
  v18 = *v0;
  sub_100011D5C();
  (*(v19 + 176))();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_100011DE8();
    v25 = v2;
    v22 = v4;
    v23 = swift_slowAlloc();
    sub_100011D78();
    v27[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = sub_100014C58(v15, v17, v27);

    *(v23 + 4) = v24;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_100014C58(v22, v25, v27);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: Close Stream '%{public}s'", v23, 0x16u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100011CF4();

    (*(v9 + 8))(v14, v26);
  }

  else
  {

    (*(v9 + 8))(v14, v26);
  }

  sub_100006A70(v6);
  sub_1000046E8();

  sub_100011DB8();
}

void sub_10000DD4C(void *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  _Block_copy(a3);
  v30 = a1;
  v13 = sub_1000052A4();
  v15 = v14;
  v28 = *((swift_isaMask & *a2) + 0xB0);
  v28();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v33 = a3;
  v31 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v27 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100014C58(v13, v15, &v34);
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: TimeSync Requested", v20, 0xCu);
    sub_100003458(v21);

    v7 = v27;
  }

  (*(v7 + 8))(v12, v6);
  sub_100006A70(v30);
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  v22[2] = a2;
  v22[3] = v23;
  v22[4] = v15;
  v22[5] = sub_10001107C;
  v22[6] = v24;
  v25 = a2;

  sub_100022124();

  _Block_release(v33);
}

uint64_t sub_10000E1A4(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v35 = a7;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v33 - v20;
  v22 = *((swift_isaMask & *a3) + 0xB0);
  if (a2)
  {
    v23 = v22(v19);
    v24 = __chkstk_darwin(v23);
    *(&v33 - 2) = a4;
    *(&v33 - 1) = a5;
    __chkstk_darwin(v24);
    *(&v33 - 2) = a1;
    sub_100016F18(sub_100011C18, v25, sub_100011C20);
    (*(v14 + 8))(v18, v13);
    type metadata accessor for Clock();
    v26 = static Clock.nullClockIdentifier.getter();
    return a6(v26, a1);
  }

  else
  {
    v34 = v13;
    v22(v19);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = a6;
      v32 = v31;
      v36 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100014C58(a4, a5, &v36);
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: TimeSync Enabled", v30, 0xCu);
      sub_100003458(v32);
      a6 = v33;
    }

    (*(v14 + 8))(v21, v34);
    return a6(*(a1 + 24), 0);
  }
}

uint64_t sub_10000E4AC(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  v2._object = 0x800000010007A0D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v2);
  return a1;
}

void sub_10000E548(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v9 = a1;
  v8 = sub_100011E38();
  a5(v8);
  _Block_release(v7);
}

void sub_10000E5C4(void *a1, void (**a2)(void, void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  [*(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_connection) auditToken];
  if (xpc_copy_entitlement_for_token())
  {
    v22 = v4;
    v9 = swift_unknownObjectRelease();
    if (qword_100098B98 != -1)
    {
      v9 = swift_once();
    }

    sub_1000222B8(v24, v9);
    v10 = type metadata accessor for PropertyListEncoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    memcpy(v23, v24, sizeof(v23));
    sub_100010DD0();
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v20 = v19;
    sub_100010E24(v24);
    sub_100010E78(v18, v20);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (a2)[2](a2, isa, 0);

    sub_100003388(v18, v20);
    sub_100003388(v18, v20);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001E468(v13, v14, -1000, 0, 0, 0);
    v15 = swift_willThrow();
    v16 = (*((swift_isaMask & *a1) + 0xB0))(v15);
    __chkstk_darwin(v16);
    sub_100016F18(sub_10000E978, 0, sub_100011C20);
    (*(v5 + 8))(v8, v4);
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v17);
  }

  _Block_release(a2);
}

void sub_10000E9B4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10000EA28(void *a1, int a2, void *a3, void (**a4)(void, void))
{
  v66 = a2;
  v70 = type metadata accessor for Logger();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v70);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v62 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v62 - v16;
  __chkstk_darwin(v15);
  v18 = sub_100006A70(a1);
  v19 = v7;
  v67 = v14;
  v68 = v11;
  v20 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  swift_beginAccess();
  v21 = sub_100020A3C(v18, *(a3 + v20));
  if (v21)
  {
    v62[1] = v18;
    v63 = a4;
    v64 = v21;
    v23 = *(v21 + 16);
    v24 = v66;
    if (v23)
    {
      v25 = (v64 + 32);
      v69 = (v7 + 8);
      *&v22 = 136315138;
      v65 = v22;
      do
      {
        v26 = *v25;
        v27 = *((swift_isaMask & *a3) + 0xB0);

        if (v24)
        {
          v29 = v67;
          v27(v28);
          v30 = v29;

          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v71 = v34;
            *v33 = v65;

            v36 = RapportStreamSession.description.getter(v35);
            v38 = v37;

            v39 = sub_100014C58(v36, v38, &v71);

            *(v33 + 4) = v39;
            _os_log_impl(&_mh_execute_header, v31, v32, "Stream is suspended, removing traffic flags from stream %s", v33, 0xCu);
            sub_100003458(v34);
            v24 = v66;

            (*v69)(v67, v70);
          }

          else
          {

            (*v69)(v30, v70);
          }

          v51 = 0;
        }

        else
        {
          v40 = v68;
          v27(v28);
          v41 = v40;

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v71 = v45;
            *v44 = v65;

            v47 = RapportStreamSession.description.getter(v46);
            v49 = v48;

            v50 = sub_100014C58(v47, v49, &v71);

            *(v44 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v42, v43, "Stream has resumed, setting regular traffic flags for stream %s", v44, 0xCu);
            sub_100003458(v45);
            v24 = v66;

            (*v69)(v68, v70);
          }

          else
          {

            (*v69)(v41, v70);
          }

          v51 = RapportStreamSession.trafficFlags.getter() & 0xFFFFBDFF;
        }

        RapportStreamSession.trafficFlags.setter(v51);

        v25 += 2;
        --v23;
      }

      while (v23);
    }

    a4 = v63;
    v63[2](v63, 0);
  }

  else
  {
    v52 = v17;
    (*((swift_isaMask & *a3) + 0xB0))();

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v55 = 136315138;

      sub_100027DA0();
      v58 = v57;
      v60 = v59;

      v61 = sub_100014C58(v58, v60, &v71);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "There is no stream for session %s to set the suspended state.", v55, 0xCu);
      sub_100003458(v56);
    }

    (*(v19 + 8))(v52, v70);
    a4[2](a4, 0);
  }

  _Block_release(a4);
}

__n128 sub_10000F1E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F1F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000F290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F2A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F2E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000F338()
{
  result = qword_1000990F8;
  if (!qword_1000990F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000990F8);
  }

  return result;
}

unint64_t sub_10000F390()
{
  result = qword_100099100;
  if (!qword_100099100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099100);
  }

  return result;
}

uint64_t sub_10000F3E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E657473696CLL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6580592 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736D6165727473 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_10000F584(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10000F5D8(char a1)
{
  result = 0x72656E657473696CLL;
  switch(a1)
  {
    case 1:
      result = 6580592;
      break;
    case 2:
      result = 0x736E6F6973736573;
      break;
    case 3:
      result = 0x736D6165727473;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10000F684()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000F3E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F718@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportControlFlags.infraWiFi.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F740(uint64_t a1)
{
  v2 = sub_10000FCF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F77C(uint64_t a1)
{
  v2 = sub_10000FCF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000F7B8()
{
  sub_100011FF4();
  v14 = v1;
  v15 = v2;
  v4 = v3;
  v5 = sub_10000FC6C(&qword_100099128, &unk_100075730);
  v6 = sub_100011C54(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v14 - v11;
  v13 = v4[4];
  sub_10000FCB4(v4, v4[3]);
  sub_10000FCF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100011A38(&qword_100099140);
  sub_100011E5C();
  if (!v0)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    sub_100011E5C();
    v16 = 3;
    sub_10000FC6C(&qword_100099148, &qword_100075740);
    sub_10000FD94();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v8 + 8))(v12, v5);
  sub_100011FBC();
}

void sub_10000F9B8()
{
  sub_100011FF4();
  v2 = v1;
  v3 = sub_10000FC6C(&qword_100099228, qword_100075928);
  v4 = sub_100011C54(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v2[4];
  sub_10000FCB4(v2, v2[3]);
  sub_10000FCF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100003458(v2);
  }

  else
  {
    sub_10000FC6C(&qword_100099138, &qword_100076A80);
    sub_100011A38(&qword_100099230);
    sub_100011E08();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100011E08();
    sub_10000FC6C(&qword_100099148, &qword_100075740);
    sub_100011AA4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = sub_100011D84();
    v9(v8);
    sub_100003458(v2);
  }

  sub_100011FBC();
}

void sub_10000FC14(uint64_t a1@<X8>)
{
  sub_10000F9B8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_10000FC48()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = v0[3];
  sub_10000F7B8();
}

uint64_t sub_10000FC6C(uint64_t *a1, uint64_t *a2)
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

void *sub_10000FCB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000FCF8()
{
  result = qword_100099130;
  if (!qword_100099130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099130);
  }

  return result;
}

uint64_t sub_10000FD4C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000FD94()
{
  result = qword_100099150;
  if (!qword_100099150)
  {
    sub_10000FD4C(&qword_100099148, &qword_100075740);
    sub_100011B50(&qword_10009A8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099150);
  }

  return result;
}

uint64_t sub_10000FE50()
{
  v1 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
  sub_100011D50();
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_10001052C(v3);
  sub_100011F44();

  v88 = sub_100024078();
  v4 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  v89 = v0;
  v5 = *(v0 + v4);
  v6 = v5;
  sub_10003ED3C(0, 0, 0);
  v93 = v6;
  result = sub_100010950(v5);
  v9 = v8;
  v11 = v10 >> 1;
  v13 = (v12 + 16 * v8 + 8);
  v95 = v10 >> 1;
  while (v11 != v9)
  {
    if (v9 >= v11)
    {
      __break(1u);
      goto LABEL_44;
    }

    v14 = *v13;
    v102 = *(v13 - 1);
    sub_100010ED0();

    v15 = String.init<A>(_:radix:uppercase:)();
    v97 = v16;
    v99 = v15;
    v17 = v14 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100010F24(isa);

    sub_100010C84();
    sub_100011EB0();
    v19._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v19);

    v20 = _s7SessionC8IdentityVMa(0);
    sub_100011F24(v20);
    v24 = v23 & 0xFFFF00000000FFFFLL | 0x65746F6D0000;
    if (v21)
    {
      v25 = 0x6C61636F6CLL;
    }

    else
    {
      v25 = v24;
    }

    if (v21)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v103 = *(v17 + v22);
    sub_100011EB0();
    v27 = String.init<A>(_:radix:uppercase:)();
    v29 = v28;
    sub_10001200C(v27);
    v30._countAndFlagsBits = v25;
    v30._object = v26;
    String.append(_:)(v30);

    sub_10001200C(v31);
    v32._countAndFlagsBits = v27;
    v32._object = v29;
    String.append(_:)(v32);

    v34 = *(&_swiftEmptyArrayStorage + 2);
    v33 = *(&_swiftEmptyArrayStorage + 3);
    if (v34 >= v33 >> 1)
    {
      v36 = sub_100011EBC(v33);
      result = sub_10003ED3C(v36, v34 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v34 + 1;
    v35 = (&_swiftEmptyArrayStorage + 32 * v34);
    v35[4] = v99;
    v35[5] = v97;
    v35[6] = 542327881;
    v35[7] = 0xE400000000000000;
    v13 += 2;
    ++v9;
    v11 = v95;
  }

  swift_unknownObjectRelease();

  v37 = sub_100024078();
  v38 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v39 = *(v89 + v38);
  v40 = *(v39 + 16);
  v41 = &_swiftEmptyArrayStorage;
  if (!v40)
  {
LABEL_36:
    v84 = sub_1000240A0(v41);
    v85 = v88;
    if (!v88[2])
    {

      v85 = 0;
    }

    v86 = *(v89 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
    if (!v37[2])
    {
    }

    if (!v84[2])
    {
    }

    return v85;
  }

  v87 = v37;

  sub_10003ED9C(0, v40, 0);
  v41 = &_swiftEmptyArrayStorage;
  result = sub_1000496B4(v39);
  v43 = result;
  v100 = v44;
  v45 = 0;
  v91 = v40;
  v92 = v39 + 64;
  v90 = v39;
  while ((v43 & 0x8000000000000000) == 0 && v43 < 1 << *(v39 + 32))
  {
    if (((*(v92 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (*(v39 + 36) != v42)
    {
      goto LABEL_46;
    }

    v94 = v42;
    v96 = v45;
    v98 = v41;
    v46 = *(*(v39 + 56) + 8 * v43);
    v47 = *(*(v39 + 48) + 8 * v43) + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;

    v48 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100010F24(v48);

    sub_100010C84();
    sub_100011EB0();
    v49._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v49);

    v50 = _s7SessionC8IdentityVMa(0);
    sub_100011F24(v50);
    v54 = v53 & 0xFFFF00000000FFFFLL | 0x65746F6D0000;
    if (v51)
    {
      v55 = 0x6C61636F6CLL;
    }

    else
    {
      v55 = v54;
    }

    if (v51)
    {
      v56 = 0xE500000000000000;
    }

    else
    {
      v56 = 0xE600000000000000;
    }

    v101 = *(v47 + v52);
    sub_100010ED0();
    sub_100011EB0();
    v57 = String.init<A>(_:radix:uppercase:)();
    v59 = v58;
    (sub_10001200C)();
    v60._countAndFlagsBits = v55;
    v60._object = v56;
    String.append(_:)(v60);

    sub_10001200C(v61);
    v62._countAndFlagsBits = v57;
    v62._object = v59;
    String.append(_:)(v62);

    v63 = *(v46 + 16);
    if (v63)
    {
      sub_10003ED5C(0, v63, 0);
      v64 = (v46 + 40);
      do
      {
        v65 = *(v64 - 1);
        v66 = *v64;

        v67 = v66;
        v68 = RapportStreamSession.description.getter();
        v70 = v69;

        v72 = *(&_swiftEmptyArrayStorage + 2);
        v71 = *(&_swiftEmptyArrayStorage + 3);
        if (v72 >= v71 >> 1)
        {
          v74 = sub_100011EBC(v71);
          sub_10003ED5C(v74, v72 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v72 + 1;
        v73 = &_swiftEmptyArrayStorage + 16 * v72;
        *(v73 + 4) = v68;
        *(v73 + 5) = v70;
        v64 += 2;
        --v63;
      }

      while (v63);

      v39 = v90;
    }

    else
    {
    }

    v41 = v98;
    v76 = v98[2];
    v75 = v98[3];
    if (v76 >= v75 >> 1)
    {
      v83 = sub_100011EBC(v75);
      sub_10003ED9C(v83, v76 + 1, 1);
      v41 = v98;
    }

    v45 = v96 + 1;
    v41[2] = v76 + 1;
    v77 = &v41[3 * v76];
    v77[4] = 542327881;
    v77[5] = 0xE400000000000000;
    v77[6] = &_swiftEmptyArrayStorage;
    v78 = sub_100046960(v43, v94, v100 & 1, v39);
    v80 = v79;
    v82 = v81;
    result = sub_100010FDC(v43, v94, v100 & 1);
    v43 = v78;
    v42 = v80;
    v100 = v82;
    if (v96 + 1 == v91)
    {

      sub_100010FDC(v78, v80, v82 & 1);
      v37 = v87;
      goto LABEL_36;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_10001052C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10003ED3C(0, v1, 0);
    v3 = &_swiftEmptyArrayStorage;
    v6 = sub_1000496B4(v2);
    v7 = 0;
    v8 = v2 + 64;
    v47 = v4;
    v48 = v1;
    v46 = v2 + 72;
    v49 = v2 + 64;
    v50 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_30;
      }

      v53 = v4;
      v51 = v5;
      v52 = v7;
      v10 = v3;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 24 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = (v11 + 40 * v6);
      v18 = *v16;
      v17 = v16[1];
      v54 = v16[2];
      v55 = v16[4];

      sub_100027DA0();
      v56 = v19;
      v57 = v20;
      v21._countAndFlagsBits = 15392;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v14;
      v22._object = v15;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 62;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      if ((v18 - 1) < 3)
      {
        v24 = v18;
      }

      else
      {
        v24 = 0;
      }

      sub_10000FE40(v24);
      if ((v17 & 2) != 0)
      {
        v25 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
      }

      else
      {
        v25 = 0;
      }

      v3 = v10;
      _StringGuts.grow(_:)(32);
      v26._countAndFlagsBits = 0x694C6D6165727453;
      v26._object = 0xEF2072656E657473;
      String.append(_:)(v26);
      sub_10000FC6C(&qword_100099168, &unk_100075750);
      _print_unlocked<A, B>(_:_:)();
      v27._countAndFlagsBits = 541869600;
      v27._object = 0xE400000000000000;
      String.append(_:)(v27);
      if (HIDWORD(v25))
      {
        goto LABEL_31;
      }

      v28 = RPStreamFlagsCopyDescription(v25);
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33._countAndFlagsBits = 0x2044495550202CLL;
      v33._object = 0xE700000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v36 = v10[2];
      v35 = v10[3];
      if (v36 >= v35 >> 1)
      {
        sub_10003ED3C((v35 > 1), v36 + 1, 1);
        v3 = v10;
      }

      v3[2] = v36 + 1;
      v37 = &v3[4 * v36];
      v37[4] = v56;
      v37[5] = v57;
      v37[6] = 0;
      v37[7] = 0xE000000000000000;
      v2 = v50;
      v38 = 1 << *(v50 + 32);
      if (v6 >= v38)
      {
        goto LABEL_32;
      }

      v8 = v49;
      v39 = *(v49 + 8 * v9);
      if ((v39 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v50 + 36) != v53)
      {
        goto LABEL_34;
      }

      v40 = v39 & (-2 << (v6 & 0x3F));
      if (v40)
      {
        v38 = __clz(__rbit64(v40)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v9 << 6;
        v42 = v9 + 1;
        v43 = (v46 + 8 * v9);
        while (v42 < (v38 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_100010FDC(v6, v53, v51 & 1);
            v38 = __clz(__rbit64(v44)) + v41;
            goto LABEL_26;
          }
        }

        sub_100010FDC(v6, v53, v51 & 1);
      }

LABEL_26:
      v5 = 0;
      v7 = v52 + 1;
      v6 = v38;
      v4 = v47;
      if (v52 + 1 == v48)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_100010950(void *a1)
{
  v2 = &_swiftEmptyArrayStorage;
  v17 = &_swiftEmptyArrayStorage;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v3 = a1;
  Count = SidecarMapTableGetCount();
  v5 = &_swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || Count > *(&_swiftEmptyArrayStorage + 3) >> 1)
  {
    if (*(&_swiftEmptyArrayStorage + 2) <= Count)
    {
      v7 = Count;
    }

    else
    {
      v7 = *(&_swiftEmptyArrayStorage + 2);
    }

    sub_100038CE8(isUniquelyReferenced_nonNull_native, v7, 0, &_swiftEmptyArrayStorage);
    v5 = v8;
  }

  v17 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = &v17;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100011004;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100011018;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BD84;
  aBlock[3] = &unk_10008DEC0;
  v11 = _Block_copy(aBlock);

  SidecarMapTableIterateObjects();

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = sub_100011004;
    v2 = v17;
LABEL_11:
    v15 = sub_100010F94(v2, 0);

    sub_100010FE8(v14);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010B70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100011020(a2, v10);
  type metadata accessor for Relay.Session(0);
  swift_dynamicCast();
  sub_1000387D0();
  v5 = *(*a3 + 16);
  result = sub_100038844(v5);
  v7 = *a3;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 16 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = v9;
  return result;
}

id sub_100010C08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 rapportStream:a3];

  return v6;
}

unint64_t sub_100010C84()
{
  result = qword_100099170;
  if (!qword_100099170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099170);
  }

  return result;
}

uint64_t sub_100010CD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100010D20()
{
  result = qword_10009AAD0;
  if (!qword_10009AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AAD0);
  }

  return result;
}

uint64_t sub_100010D74()
{
  sub_10001203C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100010DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100010DD0()
{
  result = qword_1000991B0;
  if (!qword_1000991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000991B0);
  }

  return result;
}

uint64_t sub_100010E78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100010ED0()
{
  result = qword_10009A770;
  if (!qword_10009A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A770);
  }

  return result;
}

uint64_t sub_100010F24(void *a1)
{
  v1 = a1;
  v4[0] = 0;
  v4[1] = 0;
  [v1 getUUIDBytes:v4];
  v2 = v4[0];

  return bswap32(v2);
}

uint64_t sub_100010F94(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100010FDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100010FE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011020(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000110A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011198()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001126C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100011304(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100011310(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100011324()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000BE68();
  return result;
}

uint64_t sub_10001132C()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100011358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003388(a1, a2);
  }

  return a1;
}

uint64_t sub_1000113CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100011D00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001142C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100011D00(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001151C()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1, v2, v3);
}

_OWORD *sub_100011558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100011598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000FC6C(a3, a4);
  sub_100011D00(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000115F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011668(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000FC6C(a2, a3);
  sub_100011D00(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for Client.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Client.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100011820);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_10001186C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100011878(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000118CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100011934()
{
  result = qword_100099210;
  if (!qword_100099210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099210);
  }

  return result;
}

unint64_t sub_10001198C()
{
  result = qword_100099218;
  if (!qword_100099218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099218);
  }

  return result;
}

unint64_t sub_1000119E4()
{
  result = qword_100099220;
  if (!qword_100099220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099220);
  }

  return result;
}

uint64_t sub_100011A38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011AA4()
{
  result = qword_100099238;
  if (!qword_100099238)
  {
    sub_10000FD4C(&qword_100099148, &qword_100075740);
    sub_100011B50(&unk_100099240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099238);
  }

  return result;
}

uint64_t sub_100011B50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011C88()
{

  return swift_once();
}

uint64_t sub_100011E08()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100011E5C()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100011ED4()
{

  return swift_willThrow();
}

BOOL sub_100011EEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100011F08()
{

  return swift_arrayDestroy();
}

uint64_t sub_100011F24(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 + *(result + 24)) == 0;
  return result;
}

void sub_100011F7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100011F9C(float a1)
{
  *v2 = a1;

  return sub_100014C58(v3, v1, (v4 - 88));
}

void sub_100011FD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100012024()
{

  return swift_slowAlloc();
}

uint64_t sub_100012048()
{

  return swift_slowAlloc();
}

uint64_t sub_100012060()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000992B0);
  sub_100003420(v0, qword_1000992B0);
  return Logger.init(subsystem:category:)();
}

void *sub_1000120E0()
{
  v1 = v0;
  v2 = *v0;
  *(v1 + 24) = 0;
  v3 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1[2] = v3;
  v4 = v3;
  sub_100013090(0xD000000000000011, 0x8000000100079E40, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v18 = sub_100013104;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008E408;
  v6 = _Block_copy(&v14);

  [v4 setInterruptionHandler:v6];
  _Block_release(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v18 = sub_10001313C;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100052C90;
  v17 = &unk_10008E458;
  v8 = _Block_copy(&v14);

  [v4 setInvalidationHandler:v8];
  _Block_release(v8);
  type metadata accessor for RemoteDisplayReadinessRequestHandler();
  swift_allocObject();
  v1[4] = sub_100018690();
  type metadata accessor for RemoteDisplayInitiationRequestHandler();
  swift_allocObject();
  v9 = sub_10002021C(v4);
  v10 = v4;
  sub_100013174(v9, v1);

  v11 = v1[4];

  sub_100013404(v12, v1);

  return v1;
}

void sub_100012344(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_100098B48 != -1)
  {
    sub_10001388C();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000992B0);
  oslog = Logger.logObject.getter();
  v6 = a2();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 2u);
    sub_100003534();
  }
}

uint64_t sub_100012424()
{
  [*(v0 + 16) invalidate];

  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_10001245C()
{
  sub_100012424();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_1000124B4()
{
  if (v0[3])
  {
    if (qword_100098B48 != -1)
    {
      sub_10001388C();
    }

    v1 = type metadata accessor for Logger();
    sub_100003420(v1, qword_1000992B0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Activation requested, but it's already activated.", v3, 2u);
      sub_100003534();
    }
  }

  else
  {
    v4 = v0;
    *(v0 + 24) = 1;
    if (qword_100098B48 != -1)
    {
      sub_10001388C();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000992B0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = *v4;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100014C58(v10, v11, &v24);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [v4[2] serviceType];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      aBlock = v15;
      v26 = v17;
      sub_10000FC6C(&qword_1000993A8, &qword_100075A40);
      v18 = String.init<A>(describing:)();
      v20 = sub_100014C58(v18, v19, &v24);

      *(v8 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v6, v7, "Activating a [%s] that handles requests to the [%s] service.", v8, 0x16u);
      swift_arrayDestroy();
      sub_100003534();
      sub_100003534();
    }

    v21 = v4[2];
    v29 = sub_100013070;
    v30 = v4;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100025214;
    v28 = &unk_10008E3B8;
    v22 = _Block_copy(&aBlock);

    [v21 activateWithCompletion:v22];
    _Block_release(v22);
  }
}

void sub_10001281C(uint64_t a1)
{
  if (a1)
  {
    if (qword_100098B48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003420(v1, qword_1000992B0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_errorRetain();
      sub_10000FC6C(&qword_1000993B0, &qword_100075980);
      v5 = String.init<A>(describing:)();
      v7 = sub_100014C58(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Activation failed. Error: [%s]", v3, 0xCu);
      sub_100003458(v4);

      return;
    }
  }

  else
  {
    if (qword_100098B48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003420(v8, qword_1000992B0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Activation successful.", v10, 2u);
    }
  }
}

uint64_t sub_100012A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v30 = a3;
  v31 = a8;
  v33 = a2;
  v34 = a5;
  v32 = a1;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100098B48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003420(v16, qword_1000992B0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_100014C58(v34, a6, &v35);
    _os_log_impl(&_mh_execute_header, v17, v18, "Received a [%{public}s] request", v19, 0xCu);
    sub_100003458(v20);
  }

  type metadata accessor for OSActivity();
  swift_initStackObject();
  v22 = sub_100016614("com.apple.sidecar.handle_companion_link_request", 2, v21);
  sub_100013764();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v23 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v23 & 1) == 0)
  {
    __break(1u);
  }

  v24 = a7[3];
  v25 = a7[4];
  sub_10000FCB4(a7, v24);
  v26 = swift_allocObject();
  v26[2] = v34;
  v26[3] = a6;
  v27 = v31;
  v26[4] = v30;
  v26[5] = a4;
  v26[6] = v22;
  v26[7] = v27;
  v28 = *(v25 + 16);

  v28(v32, v33, sub_1000137F0, v26, v24, v25);
}

void sub_100012DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void, void))
{
  if (qword_100098B48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003420(v12, qword_1000992B0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v20 = a2;
    v15 = swift_slowAlloc();
    v16 = a1;
    v17 = a3;
    v18 = a6;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v15 = 136446210;
    *(v15 + 4) = sub_100014C58(a4, a5, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending a response to a [%{public}s] request", v15, 0xCu);
    sub_100003458(v19);
    a6 = v18;
    a3 = v17;
    a1 = v16;

    a2 = v20;
  }

  a6(a1, a2, a3);
  OSActivity.close()();
}

uint64_t sub_100012F64(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_10001375C, v10);
}

uint64_t sub_100013078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100013090(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setServiceType:v4];
}

uint64_t sub_100013174(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v18[3] = type metadata accessor for RemoteDisplayInitiationRequestHandler();
  v18[4] = &off_10008EEB0;
  v18[0] = a1;
  v5 = qword_100098B48;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000992B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100014C58(0xD000000000000015, 0x800000010007A3B0, v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering CompanionLink request handler for requests with identifier [%s]", v9, 0xCu);
    sub_100003458(v10);
  }

  v11 = a2[2];
  v12 = String._bridgeToObjectiveC()();
  sub_100013694(v18, v17);
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000015;
  v13[3] = 0x800000010007A3B0;
  sub_1000136FC(v17, (v13 + 4));
  v13[9] = v4;
  v16[4] = sub_100013870;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100012F64;
  v16[3] = &unk_10008E548;
  v14 = _Block_copy(v16);

  [v11 registerRequestID:v12 options:0 handler:v14];
  _Block_release(v14);

  return sub_100003458(v18);
}

uint64_t sub_100013404(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v18[3] = type metadata accessor for RemoteDisplayReadinessRequestHandler();
  v18[4] = &off_10008E788;
  v18[0] = a1;
  v5 = qword_100098B48;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000992B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100014C58(0xD000000000000016, 0x800000010007A300, v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering CompanionLink request handler for requests with identifier [%s]", v9, 0xCu);
    sub_100003458(v10);
  }

  v11 = a2[2];
  v12 = String._bridgeToObjectiveC()();
  sub_100013694(v18, v17);
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000016;
  v13[3] = 0x800000010007A300;
  sub_1000136FC(v17, (v13 + 4));
  v13[9] = v4;
  v16[4] = sub_100013714;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100012F64;
  v16[3] = &unk_10008E4A8;
  v14 = _Block_copy(v16);

  [v11 registerRequestID:v12 options:0 handler:v14];
  _Block_release(v14);

  return sub_100003458(v18);
}

uint64_t sub_100013694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000136FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013724()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100013764()
{
  result = qword_1000991A0;
  if (!qword_1000991A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000991A0);
  }

  return result;
}

uint64_t sub_1000137A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000137F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  sub_100012DAC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_100013820()
{
  v1 = *(v0 + 24);

  sub_100003458((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001388C()
{

  return swift_once();
}

uint64_t sub_1000138AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000993B8);
  sub_100003420(v0, qword_1000993B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CompanionLinkDevice();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 24) = 0;
  type metadata accessor for CompanionLinkClient();
  sub_1000151CC(a3, v11);
  *(v4 + 16) = CompanionLinkClient.__allocating_init(destination:serviceType:)(v11, 0xD000000000000011, 0x8000000100079E40);

  v12 = *RapportControlFlags.AWDL.unsafeMutableAddressor();
  v13 = *RapportControlFlags.infraWiFi.unsafeMutableAddressor();
  v14 = *RapportControlFlags.BLE.unsafeMutableAddressor();
  if (!v12)
  {
    if (!v13)
    {
      v12 = 0;
      if (!v14)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((v13 & ~v12) != 0)
  {
LABEL_5:
    v12 |= v13;
  }

  if ((v14 & ~v12) != 0)
  {
LABEL_7:
    v12 |= v14;
  }

LABEL_8:
  CompanionLinkClient.controlFlags.setter(v12);

  sub_100015230(a3);
  return v4;
}

uint64_t sub_100013A70()
{
  v1 = v0;
  v2 = *(v0 + 16);

  CompanionLinkClient.cancel()();

  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return v1;
}

uint64_t sub_100013ABC()
{
  sub_100013A70();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100013B14(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  if (v2[3])
  {
    if (qword_100098B50 != -1)
    {
      sub_1000154F8();
    }

    v11 = type metadata accessor for Logger();
    sub_100003420(v11, qword_1000993B8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Already attempted to send the request.  Will not try again.", v14, 2u);
      sub_100003534();
    }

    sub_1000152D8();
    swift_allocError();
    *v15 = 0;
    a1();
  }

  else
  {
    if (qword_100098B50 != -1)
    {
      sub_1000154F8();
    }

    v17 = type metadata accessor for Logger();
    sub_100003420(v17, qword_1000993B8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = a1;
      v21 = v20;
      v22 = swift_slowAlloc();
      v46 = v22;
      *v21 = 136315906;
      v50 = v3[2];
      v51 = v22;
      v23 = type metadata accessor for CompanionLinkClient();
      v45 = v19;
      v48 = RapportMessageable.serviceType.getter(v23, &protocol witness table for CompanionLinkClient);
      v49 = v24;
      sub_10000FC6C(&qword_1000993A8, &qword_100075A40);
      v25 = String.init<A>(describing:)();
      v27 = v6;
      v28 = a2;
      v29 = sub_100014C58(v25, v26, &v51);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      v30 = CompanionLinkClient.controlFlags.getter();
      v31 = RPControlFlagsCopyDescription(v30);
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v18;
      v34 = v33;

      v35 = v32;
      a2 = v28;
      v6 = v27;
      v36 = sub_100014C58(v35, v34, &v51);

      *(v21 + 14) = v36;
      *(v21 + 22) = 2080;
      CompanionLinkClient.destinationDevice.getter(v10);
      v37 = String.init<A>(describing:)();
      v39 = sub_100014C58(v37, v38, &v51);

      *(v21 + 24) = v39;
      *(v21 + 32) = 2080;
      *(v21 + 34) = sub_100014C58(v3[4], v3[5], &v51);
      v40 = v44;
      _os_log_impl(&_mh_execute_header, v44, v45, "Activating client.  serviceType: [%s].  controlFlags: [%s].  destinationDevice: [%s]. idsDeviceIdentifierOfLocalDevice: [%s].", v21, 0x2Au);
      swift_arrayDestroy();
      sub_100003534();
      a1 = v47;
      sub_100003534();
    }

    else
    {
    }

    v41 = v3[2];
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = a1;
    v43[4] = a2;
    v43[5] = v6;

    CompanionLinkClient.activate(completion:)(sub_1000152CC, v43);
  }
}

uint64_t sub_100013F78(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (a1)
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003420(v7, qword_1000993B8);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46 = v12;
      *v10 = 138412546;
      v13 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10000FC6C(&qword_1000994D0, &unk_100075A50);
      v14 = String.init<A>(describing:)();
      v16 = sub_100014C58(v14, v15, &v46);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Client activation failed. Error: [%@].  Request: [%s]", v10, 0x16u);
      sub_10001538C(v11);

      sub_100003458(v12);
    }

    sub_1000152D8();
    v17 = swift_allocError();
    *v18 = a1;
    swift_errorRetain();
    (a3)(v17);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003420(v41, qword_1000993B8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "The request object has been deallocated.  Will not try to send the request.", v44, 2u);
    }

    sub_1000152D8();
    swift_allocError();
    *v45 = 1;
    a3();
  }

  v21 = Strong;
  sub_10000FC6C(&qword_10009AA80, &qword_100075A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000759A0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000010007A4D0;
  v23 = v21[5];
  *(inited + 48) = v21[4];
  *(inited + 56) = v23;

  v24 = Dictionary.init(dictionaryLiteral:)();
  if (qword_100098B50 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003420(v25, qword_1000993B8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_100014C58(0xD000000000000015, 0x800000010007A3B0, &v46);
    *(v28 + 12) = 2080;
    v29 = Dictionary.description.getter();
    v31 = sub_100014C58(v29, v30, &v46);

    *(v28 + 14) = v31;
    *(v28 + 22) = 2080;
    type metadata accessor for RemoteDisplayInitiationRequest();

    v32 = String.init<A>(describing:)();
    v34 = sub_100014C58(v32, v33, &v46);

    *(v28 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "The client has been activated.  Sending request with request ID: [%s].  requestBody: [%s].  Request: [%s]", v28, 0x20u);
    swift_arrayDestroy();
  }

  v46 = v21[2];

  sub_100024174(v24);
  v36 = v35;

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v21;
  v40[3] = a3;
  v40[4] = a4;
  type metadata accessor for CompanionLinkClient();

  RapportMessageable.sendRequest(id:request:destinationID:options:response:)(0xD000000000000015, 0x800000010007A3B0, v36, v37, v39, 0, sub_100015380, v40);
}

uint64_t sub_1000145F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003420(v7, qword_1000993B8);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v10 = 138412546;
      v13 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      type metadata accessor for RemoteDisplayInitiationRequest();

      v14 = String.init<A>(describing:)();
      v16 = sub_100014C58(v14, v15, &v26);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Request failed with error: [%@].  Request: [%s]", v10, 0x16u);
      sub_10001538C(v11);

      sub_100003458(v12);
    }

    a5(a3);
  }

  else
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003420(v18, qword_1000993B8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      type metadata accessor for RemoteDisplayInitiationRequest();

      v23 = String.init<A>(describing:)();
      v25 = sub_100014C58(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Remote display initiation request completed successfully.  Request: [%s]", v21, 0xCu);
      sub_100003458(v22);
    }

    return (a5)(0);
  }
}

void sub_100014938(uint64_t a1, const char *a2)
{
  v4 = v2;
  if (qword_100098B50 != -1)
  {
    sub_1000154F8();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000993B8);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100014C58(*(v4 + 32), *(v4 + 40), &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100003458(v8);
    sub_100003534();
    sub_100003534();
  }
}

uint64_t sub_100014AA8()
{
  v1 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v5._countAndFlagsBits = 91;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v13[1] = v0->_countAndFlagsBits;
  sub_10000FC6C(&qword_1000994C0, &qword_100075A38);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000025;
  v7._object = 0x800000010007A480;
  String.append(_:)(v7);
  String.append(_:)(v0[2]);
  v8._object = 0x800000010007A4B0;
  v8._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v8);
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  CompanionLinkClient.destinationDevice.getter(v4);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v14;
}

uint64_t sub_100014C58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014D1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100011020(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003458(v11);
  return v7;
}

unint64_t sub_100014D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014E1C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100014E1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100014E68(a1, a2);
  sub_100014F80(&off_10008D958);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100014E68(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100015064(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100014F80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000150D4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015064(uint64_t a1, uint64_t a2)
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

  sub_10000FC6C(&qword_1000994B0, &qword_100075A28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000150D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_1000994B0, &qword_100075A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000151CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015230(uint64_t a1)
{
  v2 = type metadata accessor for CompanionLinkDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001528C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000152D8()
{
  result = qword_1000994C8;
  if (!qword_1000994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000994C8);
  }

  return result;
}

uint64_t sub_100015334(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10001538C(uint64_t a1)
{
  v2 = sub_10000FC6C(&unk_100099AF0, &qword_100075D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000153F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100015418(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001546C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000154C8(void *result, int a2)
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

uint64_t sub_1000154F8()
{

  return swift_once();
}

uint64_t sub_100015518()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000994D8);
  sub_100003420(v0, qword_1000994D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001559C()
{
  v1 = v0;
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 16);
    v3 = *(v1 + 16);

    CompanionLinkClient.cancel()();
  }

  v4 = *(v1 + 16);

  v5 = *(v1 + 32);

  return v1;
}

uint64_t sub_1000155F4()
{
  sub_10001559C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10001564C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);

  CompanionLinkClient.localDevice.getter(a1);
}

void sub_100015694()
{
  if (*(v0 + 24) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);

    CompanionLinkClient.cancel()();

    type metadata accessor for CompanionLinkClient();
    v3 = CompanionLinkClient.__allocating_init()();
    v4 = *(v1 + 16);
    *(v1 + 16) = v3;

    *(v1 + 24) = 0;
  }

  else
  {
    if (qword_100098B58 != -1)
    {
      sub_100016428();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000994D8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "The network device detector has not been started.  Will not stop.", v7, 2u);
      sub_100003534();
    }
  }
}

void sub_1000157C0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for CompanionLinkDevice();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v9 = v8 - v7;
  v10 = sub_10000FC6C(&qword_100099608, &unk_100075BC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v31[-v12];
  v14 = RapportEndpoint.idsDeviceIdentifier.getter(v5, &protocol witness table for CompanionLinkDevice);
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(v2 + 32);
    v19 = *(v10 + 48);
    sub_1000151CC(a1, v13);
    v13[v19] = a2;
    PassthroughSubject.send(_:)();
    sub_1000163C0(v13);
  }

  else
  {
    if (qword_100098B58 != -1)
    {
      sub_100016428();
    }

    v20 = type metadata accessor for Logger();
    sub_100003420(v20, qword_1000994D8);
    sub_1000151CC(a1, v9);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v23 = 136446466;
      v31[7] = a2;
      v24 = String.init<A>(describing:)();
      v26 = sub_100014C58(v24, v25, &v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = CompanionLinkDevice.description.getter();
      v29 = v28;
      sub_100015230(v9);
      v30 = sub_100014C58(v27, v29, &v32);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "A device with a nil 'idsDeviceIdentifier' device was [%{public}s]: [%{public}s].  Ignoring.", v23, 0x16u);
      swift_arrayDestroy();
      sub_100003534();
      sub_100003534();
    }

    else
    {

      sub_100015230(v9);
    }
  }
}

uint64_t getEnumTagSinglePayload for CompanionLinkDeviceDetector.DeviceObservationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompanionLinkDeviceDetector.DeviceObservationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100015BC4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100015C00()
{
  result = qword_100099600;
  if (!qword_100099600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099600);
  }

  return result;
}

void sub_100015C54(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100011CD4();
  v8 = v7 - v6;
  if (qword_100098B58 != -1)
  {
    sub_100016428();
  }

  v9 = type metadata accessor for Logger();
  sub_100003420(v9, qword_1000994D8);
  sub_1000151CC(a1, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    sub_100015230(v8);
    goto LABEL_7;
  }

  v12 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *v12 = 136446466;
  v13 = CompanionLinkDevice.description.getter();
  v15 = v14;
  sub_100015230(v8);
  v16 = sub_100014C58(v13, v15, &v22);

  *(v12 + 4) = v16;
  *(v12 + 12) = 2082;
  if (!HIDWORD(a2))
  {
    v17 = RPDeviceChangeFlagsCopyDescription(a2);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100014C58(v18, v20, &v22);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "CompanionLink device 'changed': [%{public}s].  Flags: [%{public}s]", v12, 0x16u);
    swift_arrayDestroy();
    sub_100003534();
    sub_100003534();

LABEL_7:
    sub_1000157C0(a1, 0);
    return;
  }

  __break(1u);
}

void sub_100015E74(uint64_t a1, const char *a2, char a3)
{
  v6 = type metadata accessor for CompanionLinkDevice();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100011CD4();
  v10 = v9 - v8;
  if (qword_100098B58 != -1)
  {
    sub_100016428();
  }

  v11 = type metadata accessor for Logger();
  sub_100003420(v11, qword_1000994D8);
  sub_1000151CC(a1, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = CompanionLinkDevice.description.getter();
    v17 = a3;
    v18 = a2;
    v20 = v19;
    sub_100015230(v10);
    v21 = sub_100014C58(v16, v20, &v23);

    *(v14 + 4) = v21;
    v22 = v18;
    a3 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, v22, v14, 0xCu);
    sub_100003458(v15);
    sub_100003534();
    sub_100003534();
  }

  else
  {

    sub_100015230(v10);
  }

  sub_1000157C0(a1, a3);
}

void sub_100016048(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_100098B58 != -1)
  {
    sub_100016428();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000994D8);
  oslog = Logger.logObject.getter();
  v6 = a2();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 2u);
    sub_100003534();
  }
}

void sub_100016128(uint64_t a1)
{
  v2 = type metadata accessor for CompanionLinkDevice();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100011CD4();
  v6 = v5 - v4;
  if (qword_100098B58 != -1)
  {
    sub_100016428();
  }

  v7 = type metadata accessor for Logger();
  sub_100003420(v7, qword_1000994D8);
  sub_1000151CC(a1, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = CompanionLinkDevice.description.getter();
    v14 = v13;
    sub_100015230(v6);
    v15 = sub_100014C58(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "CompanionLink local device changed: [%{public}s]", v10, 0xCu);
    sub_100003458(v11);
    sub_100003534();
    sub_100003534();
  }

  else
  {

    sub_100015230(v6);
  }
}

uint64_t sub_1000163C0(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_100099608, &unk_100075BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016428()
{

  return swift_once();
}

uint64_t sub_100016448()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099610);
  sub_100003420(v0, qword_100099610);
  return Logger.init(subsystem:category:)();
}

void *sub_1000164C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000164F8()
{
  sub_1000164C8();

  return _swift_deallocClassInstance(v0, 41, 7);
}

Swift::Void __swiftcall OSActivity.close()()
{
  if (*(v0 + 16))
  {
    sub_100016C04();
    os_activity_scope_leave((v0 + 24));
    swift_endAccess();
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100016598()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099740);
  sub_100003420(v0, qword_100099740);
  return Logger.init(subsystem:category:)();
}

void *sub_100016614@<X0>(unint64_t a1@<X0>, char a2@<W2>, unint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0;
  v6 = sub_1000166C4(&_mh_execute_header, a1, a2, a3);
  v7 = v4[2];
  v4[2] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_100016C04();
    os_activity_scope_enter(v6, (v4 + 3));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v4;
}

os_activity_t sub_1000166C4@<X0>(void *dso@<X3>, unint64_t a2@<X0>, char a3@<W2>, unint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (a2)
    {
      if (dso)
      {
        if (qword_100098B70 != -1)
        {
          swift_once();
        }

        v6 = qword_100099758;
        v7 = dso;
        v8 = a2;
        return _os_activity_create(v7, v8, v6, OS_ACTIVITY_FLAG_DEFAULT);
      }

      if (qword_100098B68 == -1)
      {
LABEL_18:
        v11 = type metadata accessor for Logger();
        sub_100003420(v11, qword_100099740);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *description = v15;
          *v14 = 136315138;
          v16 = StaticString.description.getter();
          v18 = description;
LABEL_24:
          v20 = sub_100014C58(v16, v17, v18);

          *(v14 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v12, v13, "Failed to create OS Activity [%s].", v14, 0xCu);
          sub_100003458(v15);

          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_32:
      swift_once();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_27;
  }

  a4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_32;
  }

  a4 = a2 >> 16;
  if (a2 >> 16 > 0x10)
  {
    goto LABEL_28;
  }

  if (a2 <= 0x7F)
  {
    v9 = a2 + 1;
    goto LABEL_12;
  }

LABEL_29:
  v21 = (a2 & 0x3F) << 8;
  if (a2 >= 0x800)
  {
    v22 = (v21 | (a2 >> 6) & 0x3F) << 8;
    v23 = (a2 >> 18) + ((v22 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
    v24 = (a2 >> 12) + v22 + 8487393;
    if (a4)
    {
      v9 = v23;
    }

    else
    {
      v9 = v24;
    }
  }

  else
  {
    v9 = (a2 >> 6) + v21 + 33217;
  }

LABEL_12:
  *description = (v9 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v9) & 0x18)));
  if (dso)
  {
    if (qword_100098B70 != -1)
    {
      swift_once();
    }

    v6 = qword_100099758;
    v8 = description;
    v7 = dso;
    return _os_activity_create(v7, v8, v6, OS_ACTIVITY_FLAG_DEFAULT);
  }

  if (qword_100098B68 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003420(v19, qword_100099740);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = StaticString.description.getter();
    v18 = &v25;
    goto LABEL_24;
  }

LABEL_25:

  return 0;
}

uint64_t OSActivity.deinit()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_100098B68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_100099740);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
    }

    sub_100016C04();
    os_activity_scope_leave((v1 + 24));
    swift_endAccess();
    v6 = *(v1 + 16);
    *(v1 + 16) = 0;
    swift_unknownObjectRelease();
    v7 = *(v1 + 16);
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t OSActivity.__deallocating_deinit()
{
  OSActivity.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100016BA4()
{
  qword_100099758 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_100016C04()
{

  return swift_beginAccess();
}

void sub_100016C54(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  a1();
  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 localizedDescription];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  _StringGuts.grow(_:)(29);

  v25[0] = a4;
  v25[1] = a5;
  v12._object = 0x800000010007A6D0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v12);
  v24 = v7;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136446979;
    v16 = sub_100014C58(a4, a5, v25);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2082;
    v17 = [v24 domain];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100014C58(v18, v20, v25);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2048;
    v22 = [v24 code];

    *(v15 + 24) = v22;
    *(v15 + 32) = 2081;
    v23 = sub_100014C58(v9, v11, v25);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
    swift_arrayDestroy();
    sub_100003534();
    sub_100003534();
  }

  else
  {
  }
}

void sub_100016F18(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 localizedDescription];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_100014C58(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100014C58(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_100014C58(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      sub_100003534();
      sub_100003534();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100014C58(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_100014C58(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t sub_100017310()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000998B0);
  sub_100003420(v0, qword_1000998B0);
  return Logger.init(subsystem:category:)();
}

void sub_100017398(uint64_t a1, uint64_t a2, void (*a3)(void, void, id))
{
  if (qword_100098B78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000998B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "This platform does not support readiness requests.", v7, 2u);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10001E468(v8, v9, -999, 0, 0, 0);
  a3(0, 0, v10);
}

uint64_t sub_100017514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = sub_100011C54(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100011CD4();
  sub_100018BF4();
  v32 = type metadata accessor for DispatchQoS();
  v15 = sub_100011C54(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100011CD4();
  v22 = v21 - v20;
  v23 = v5[2];
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = v10;
  v36 = sub_100018AC8;
  v37 = v24;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v34 = v25;
  v35 = &unk_10008E890;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100018BC0();
  sub_100018AD8(v27, v28);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  sub_100018BD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  v29 = sub_100018C04();
  v30(v29);
  (*(v17 + 8))(v22, v32);
}

void sub_100017790(uint64_t a1, unint64_t a2, void (*a3)(void, void, id))
{
  if (qword_100098B98 != -1)
  {
LABEL_36:
    swift_once();
  }

  v5 = sub_100021270();
  v6 = sub_1000388A4(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v38 = v8;
    v9 = type metadata accessor for RapportRemoteDisplayDevice();
    if (RapportEndpoint.idsDeviceIdentifier.getter(v9, &protocol witness table for RapportRemoteDisplayDevice) == a1 && v10 == a2)
    {

LABEL_21:

      sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);

      v21 = sub_100058458();
      if (v21)
      {
        v22 = v21;
        if (qword_100098B78 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_100003420(v23, qword_1000998B0);
        v20 = v22;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138477827;
          *(v26 + 4) = v20;
          *v27 = v22;
          v28 = v20;
          _os_log_impl(&_mh_execute_header, v24, v25, "Successfully received a readiness ping. We should be able to start Sidecar with: [%{private}@]", v26, 0xCu);
          sub_10001538C(v27);
        }

        v29 = 0;
      }

      else
      {
        if (qword_100098B78 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100003420(v30, qword_1000998B0);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v38 = v34;
          *v33 = 136380675;
          *(v33 + 4) = sub_100014C58(a1, a2, &v38);
          _os_log_impl(&_mh_execute_header, v31, v32, "Could not convert device with an IDS identifier of [%{private}s]. Responding with Error.", v33, 0xCu);
          sub_100003458(v34);
        }

        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = sub_10001E468(v35, v36, -999, 0, 0, 0);
        v29 = v20;
      }

      a3(0, 0, v29);

      goto LABEL_33;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_21;
    }
  }

  if (qword_100098B78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003420(v13, qword_1000998B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_100014C58(a1, a2, &v38);
    _os_log_impl(&_mh_execute_header, v14, v15, "Could not find a device with an IDS identifier of [%{private}s]. Responding with Error.", v16, 0xCu);
    sub_100003458(v17);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = sub_10001E468(v18, v19, -200, 0, 0, 0);
  a3(0, 0, v20);
LABEL_33:
}

uint64_t sub_100017D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v3 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(v9 + 24);

    if (!*(v10 + 16))
    {
    }

    v11 = sub_1000391EC();
    if ((v12 & 1) == 0)
    {
    }

    v13 = *(*(v10 + 56) + 8 * v11);

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v3 + 20);
      v16 = &v7[*(v3 + 24)];
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v23 = v13;
      v18 = v13 + v17;
      swift_beginAccess();
      v19 = *(v4 + 72);
      do
      {
        sub_1000189C8(v18, v7);
        if (*&v7[v15])
        {
          v20 = *&v7[v15];
          swift_getObjectType();
          OS_dispatch_source.cancel()();
        }

        v21 = *v16;
        if (*v16)
        {
          v22 = v16[1];
          if (swift_weakLoadStrong())
          {

            sub_100017514(v24, v25, v21, v22);
            sub_100010FE8(v21);
          }
        }

        sub_100018A2C(v7);
        v18 += v19;
        --v14;
      }

      while (v14);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_10003C15C();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100018014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_100011C54(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100011CD4();
  sub_100018BF4();
  v32 = type metadata accessor for DispatchQoS();
  v13 = sub_100011C54(v32);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100011CD4();
  v20 = v19 - v18;
  v31 = *(v5 + 16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v36 = a4;
  v37 = v22;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v34 = v23;
  v35 = a5;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100018BC0();
  sub_100018AD8(v25, v26);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  sub_100018BD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  v27 = sub_100018C04();
  v28(v27);
  (*(v15 + 8))(v20, v32);
}

uint64_t sub_100018280()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_10003C15C();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10001831C()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_100018344()
{
  sub_10001831C();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000183B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000113A4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10001847C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001137C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse()
{
  result = qword_100099A08;
  if (!qword_100099A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018570()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10001863C(319, &qword_100099A18, &qword_100099A80, &qword_100075D10);
    if (v1 <= 0x3F)
    {
      sub_10001863C(319, &qword_100099A88, &unk_100099A90, qword_100075D18);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001863C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000FD4C(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100018690()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100011C54(v11);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100011CD4();
  sub_100018BF4();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100011CD4();
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100011CD4();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100018AD8(&qword_100099B00, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000FC6C(&qword_100099B08, &qword_100075D68);
  sub_100018B20(&qword_100099B10, &qword_100099B08, &qword_100075D68);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v0, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v12 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10000FC6C(&qword_100099B18, &unk_100075D70);
  *(v12 + 24) = Dictionary.init(dictionaryLiteral:)();
  return v12;
}

uint64_t sub_10001891C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018954()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100018280();
}

uint64_t sub_100018960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001897C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000189C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018A2C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018A88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100018AC8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100017790(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_100018AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018B20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018C18()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1AC8);
  sub_100003420(v0, qword_1000A1AC8);
  return Logger.init(subsystem:category:)();
}

void *sub_100018C98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = &_swiftEmptyDictionarySingleton;
  v2[4] = &_swiftEmptyDictionarySingleton;
  v2[5] = &_swiftEmptySetSingleton;
  v2[6] = a2;
  v2[7] = &_swiftEmptySetSingleton;
  return v2;
}

uint64_t sub_100018CBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 56);

  LOBYTE(a1) = sub_10001AED4(a1, v4);

  if ((a1 & 1) == 0)
  {
    if (qword_100098B80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003420(v6, qword_1000A1AC8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = *(v2 + 56);
      type metadata accessor for UUID();
      sub_10001B6E0(&unk_100099180, &type metadata accessor for UUID);

      v12 = Set.description.getter();
      v14 = v13;

      v15 = sub_100014C58(v12, v14, &v16);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "The set of connected remote display sessions has changed to [%s]", v9, 0xCu);
      sub_100003458(v10);
    }

    return sub_10001ADD8();
  }

  return result;
}

uint64_t sub_100018EB0(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  sub_100018CBC(v2);
}

uint64_t sub_100018EF0()
{
  v1 = v0;
  v2 = type metadata accessor for CompanionLinkDevice();
  v3 = sub_10001B8E8(v2);
  v30 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100011CD4();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = sub_100011C54(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  v18 = (v17 - v16);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v10);
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v18, v10);
  if (v19)
  {
    v20 = *(v1 + 24);
    v21 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v26 = 0;
    while (v24)
    {
LABEL_10:
      sub_1000151CC(*(v20 + 56) + *(v30 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v9);
      sub_1000191C8(v9, v1, &v31);
      v24 &= v24 - 1;
      sub_100015230(v9);
      if (v31)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v32;
      }
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        return v21;
      }

      v24 = *(v20 + 64 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  sub_100015230(v9);

  __break(1u);
  return result;
}

void sub_1000191C8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CompanionLinkDevice();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  sub_1000151CC(a1, v17);
  v18 = sub_100058B30(v17);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(a2 + 56);

    sub_100024F78();
    v23 = v22;

    if (v23)
    {
      v24 = 2;
    }

    else
    {
      swift_beginAccess();
      v34 = *(a2 + 32);

      v24 = sub_100020BC0(v10, v34);

      if (v24)
      {

        v24 = 1;
      }
    }

    v35 = [objc_allocWithZone(SidecarDisplaySendingDeviceSessionState) initWithDevice:v19 sessionState:v24 visualDetectability:0];

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_100098B80 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003420(v25, qword_1000A1AC8);
    sub_1000151CC(a1, v15);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = CompanionLinkDevice.description.getter();
      v32 = v31;
      sub_100015230(v15);
      v33 = sub_100014C58(v30, v32, &v37);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not create SidecarDevice for device: [%s].", v28, 0xCu);
      sub_100003458(v29);
    }

    else
    {

      sub_100015230(v15);
    }

    v35 = 0;
  }

  *a3 = v35;
}

uint64_t sub_100019560(unint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v160 = a3;
  v162 = a1;
  v4 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10001B850();
  sub_10001B864();
  __chkstk_darwin(v6);
  v153 = &v145 - v7;
  v154 = type metadata accessor for CompanionLinkDevice();
  v8 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  sub_10001B850();
  sub_10001B864();
  __chkstk_darwin(v9);
  sub_10001B864();
  __chkstk_darwin(v10);
  sub_10001B864();
  __chkstk_darwin(v11);
  v13 = &v145 - v12;
  v14 = type metadata accessor for UUID();
  v15 = sub_100011C54(v14);
  v163 = v16;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v155 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v145 - v21;
  v23 = __chkstk_darwin(v20);
  v146 = &v145 - v24;
  v25 = __chkstk_darwin(v23);
  v147 = &v145 - v26;
  __chkstk_darwin(v25);
  v28 = &v145 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = sub_100011C54(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_100011CD4();
  v37 = (v36 - v35);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v37 = static OS_dispatch_queue.main.getter();
  (*(v32 + 104))(v37, enum case for DispatchPredicate.onQueue(_:), v29);
  v38 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v37, v29);
  if (v38)
  {
    v152 = v13;
    v159 = a2;
    if (qword_100098B80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10001B874();
LABEL_3:
  v39 = type metadata accessor for Logger();
  v40 = sub_100003420(v39, qword_1000A1AC8);
  v41 = v162;
  v156 = *(v163 + 16);
  v157 = v163 + 16;
  v156(v28, v162, v14);
  v158 = v40;
  v42 = v14;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v151 = v22;
  if (v45)
  {
    v46 = sub_10001B910();
    v47 = swift_slowAlloc();
    v166 = v47;
    *v46 = 136315138;
    sub_10001B800();
    sub_10001B6E0(v48, v49);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B950();
    v50 = sub_10001B95C();
    v51(v50);
    sub_100014C58(v28, v41, &v166);
    sub_10001B944();
    v41 = v162;

    *(v46 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v43, v44, "Received a request to ask device with identifier [%s] to connect to this device and start a remote display session.", v46, 0xCu);
    sub_100003458(v47);
    sub_100003534();
    sub_100003534();
  }

  else
  {

    v52 = sub_10001B95C();
    v53(v52);
  }

  v54 = v42;
  v55 = v161;
  swift_beginAccess();
  v56 = v55[4];

  v57 = sub_100020BC0(v41, v56);

  if (v57)
  {

    v58 = v155;
    sub_10001B970();
    v59();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (sub_10001B8CC(v61))
    {
      sub_10001B910();
      v62 = sub_10001B894();
      v165 = v62;
      *v42 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v63, v64);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001B950();
      v65 = sub_10001B818();
      v66(v65);
      sub_10001B928();
      sub_10001B944();

      *(v42 + 4) = v58;
      sub_10001B830(&_mh_execute_header, v67, v68, "A connection request to device with identifier [%s] is already in-flight.  Will not issue another connection request.");
      sub_100003458(v62);
      sub_100003534();
      sub_10001B8B0();
    }

    else
    {

      v83 = sub_10001B818();
      v84(v83);
    }

    v85 = v159;
    sub_10001B2C0();
    v86 = sub_10001B990();
    *v87 = 0;
LABEL_22:
    v85(v86);
  }

  v69 = v55[2];
  v70 = v153;
  sub_10001564C(v153);
  v71 = v154;
  if (sub_1000113A4(v70, 1, v154) == 1)
  {
    sub_10001B258(v70);
    v72 = v151;
    sub_10001B970();
    v73();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (sub_10001B8CC(v75))
    {
      sub_10001B910();
      v76 = sub_10001B894();
      v165 = v76;
      *v42 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v77, v78);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001B950();
      v79 = sub_10001B818();
      v80(v79);
      sub_10001B928();
      sub_10001B944();

      *(v42 + 4) = v72;
      sub_10001B830(&_mh_execute_header, v81, v82, "Could not find local CompanionLink device.  Will not issue a connection request to device with identifier [%s].");
      sub_100003458(v76);
      sub_100003534();
      sub_10001B8B0();
    }

    else
    {

      v112 = sub_10001B818();
      v113(v112);
    }

    v85 = v159;
    sub_10001B2C0();
    v86 = sub_10001B990();
    *v114 = 1;
    goto LABEL_22;
  }

  v88 = v152;
  sub_10001B314(v70, v152);
  v89 = RapportEndpoint.idsDeviceIdentifier.getter(v71, &protocol witness table for CompanionLinkDevice);
  v91 = v90;
  v92 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v92 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v92)
  {
    v93 = v89;
    v94 = UUID.uuidString.getter();
    v95 = v41;
    v97 = v96;
    v98 = v55[3];

    v99 = v94;
    v100 = v150;
    sub_100020C2C(v99, v97, v98);

    if (sub_1000113A4(v100, 1, v71) == 1)
    {

      sub_10001B258(v100);
      v101 = v146;
      sub_10001B970();
      v102();
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (sub_10001B8CC(v104))
      {
        sub_10001B910();
        v105 = sub_10001B894();
        v165 = v105;
        *v95 = 136315138;
        sub_10001B800();
        sub_10001B6E0(v106, v107);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001B950();
        v108 = sub_10001B8F8();
        v109(v108);
        sub_10001B928();
        sub_10001B944();

        *(v95 + 4) = v101;
        sub_10001B830(&_mh_execute_header, v110, v111, "Could not find the remote CompanionLink device with identifier [%s].  Will not issue a connection request.");
        sub_100003458(v105);
        sub_100003534();
        sub_10001B8B0();
      }

      else
      {

        v140 = sub_10001B8F8();
        v141(v140);
      }

      v142 = v159;
      v143 = v152;
      sub_10001B2C0();
      sub_10001B990();
      *v144 = 3;
      v142();

      v137 = v143;
    }

    else
    {
      v127 = v148;
      sub_10001B314(v100, v148);
      v128 = v145;
      sub_1000151CC(v127, v145);
      type metadata accessor for RemoteDisplayInitiationRequest();
      swift_allocObject();
      sub_10001393C(v93, v91, v128);
      swift_beginAccess();

      v129 = v55[4];
      swift_isUniquelyReferenced_nonNull_native();
      v164 = v55[4];
      sub_10003DE08();
      v55[4] = v164;
      swift_endAccess();
      v130 = v147;
      sub_10001B970();
      v131();
      v132 = v163;
      v133 = (*(v163 + 80) + 24) & ~*(v163 + 80);
      v134 = swift_allocObject();
      *(v134 + 16) = v55;
      (*(v132 + 32))(v134 + v133, v130, v54);
      v135 = (v134 + ((v18 + v133 + 7) & 0xFFFFFFFFFFFFFFF8));
      v136 = v160;
      *v135 = v159;
      v135[1] = v136;

      sub_100013B14(sub_10001B448, v134);

      sub_10001ADD8();

      sub_100015230(v127);
      v137 = v152;
    }
  }

  else
  {

    v116 = v149;
    sub_1000151CC(v88, v149);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    v119 = v88;
    if (sub_10001B8CC(v118))
    {
      sub_10001B910();
      v120 = sub_10001B894();
      v165 = v120;
      *v88 = 136315138;
      v121 = CompanionLinkDevice.description.getter();
      v123 = v122;
      sub_100015230(v116);
      v124 = sub_100014C58(v121, v123, &v165);

      *(v88 + 4) = v124;
      sub_10001B830(&_mh_execute_header, v125, v126, "Could not gather the local device's IDS identifier.  Will not issue a connection request.  Local device: [%s]");
      sub_100003458(v120);
      sub_100003534();
      sub_10001B8B0();
    }

    else
    {

      sub_100015230(v116);
    }

    v138 = v159;
    sub_10001B2C0();
    sub_10001B990();
    *v139 = 2;
    v138();

    v137 = v119;
  }

  return sub_100015230(v137);
}