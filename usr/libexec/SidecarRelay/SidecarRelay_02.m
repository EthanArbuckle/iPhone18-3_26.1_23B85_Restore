uint64_t sub_100032708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _s7SessionC8IdentityVMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for SidecarIdentity();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E75C();
  sub_1000469E4();
  swift_beginAccess();
  if (!sub_100020BD8(v12, *(v5 + 136), sub_100039308))
  {
    swift_endAccess();
    return sub_10003E708();
  }

  swift_endAccess();
  if (Domain.isBound.getter())
  {
LABEL_3:
    sub_10003E708();
  }

  if (a5)
  {
    v18[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18[2] = v14;
    AnyHashable.init<A>(_:)();
    sub_1000209D8(v19, a5, &v20);
    sub_10001FDF0(v19);
    if (*(&v21 + 1))
    {
      if (!swift_dynamicCast())
      {
        goto LABEL_3;
      }

      Domain.bind(peer:)(v19[0]);
      if (!v15)
      {
        sub_10003E708();
      }

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      v17 = sub_100003420(v16, qword_1000A1AE8);
      __chkstk_darwin(v17);
      v18[-2] = v15;
      sub_100016F18(sub_100032A9C, 0, sub_100011C20);

      return sub_10003E708();
    }

    sub_10003E708();
  }

  else
  {
    sub_10003E708();

    v20 = 0u;
    v21 = 0u;
  }

  return sub_100048978(&v20, &qword_10009B0C0);
}

uint64_t sub_100032AB8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v2 = sub_100020CD4(v5, a1);
  sub_10001FDF0(v5);
  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_100032BA4()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  if (v1)
  {
    swift_errorRetain();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = sub_100049AD4(v5, qword_100099FC0);
    __chkstk_darwin(v6);
    sub_100011DA8();
    *(v7 - 16) = v2;
    sub_100016F18(sub_100043BC4, v4, sub_100011C20);

    v8 = v2;
  }

  else
  {
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100049AD4(v9, qword_100099FC0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100049C18();
      v12 = swift_slowAlloc();
      sub_100049A30();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446210;
      v14 = RapportRemoteDisplaySession.description.getter(v13);
      sub_100014C58(v14, v15, &v24);
      sub_10004A228();
      *(v12 + 4) = v0;
      sub_10004A1C8(&_mh_execute_header, v16, v17, "%{public}s Ended");
      sub_100003458(v13);
      sub_100011CF4();

      sub_100049950();
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_1000499C4();
    v8 = sub_10001E680(v18, v19, v20, v21, v22, v23, 1642);
  }

  swift_errorRetain();
  swift_errorRetain();
  sub_10002F800(v4, 0, 0, v8, 0);

  sub_100011DB8();
}

uint64_t sub_100032DE0(uint64_t a1)
{
  v3 = RapportRemoteDisplaySession.description.getter(a1);
  v1._countAndFlagsBits = 0x6465646E4520;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  return v3;
}

uint64_t sub_100032E2C(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v2 = sub_100003420(v1, qword_1000A1AE8);
    v3 = __chkstk_darwin(v2);
    __chkstk_darwin(v3);
    sub_100016F18(sub_100047A54, v4, sub_100011C20);
    sub_10002B60C();
    sub_10002F464(v5);
  }

  return result;
}

uint64_t sub_100032F78(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(36);

  v11 = *(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._object = 0x800000010007AFE0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x64656C6961462027;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  return 541346128;
}

uint64_t sub_10003306C(char *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&a1[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier];
  v5 = *&a1[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8];
  if (qword_100098BB0 != -1)
  {
LABEL_25:
    sub_100049734();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000A1AE8);
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    sub_10004A14C();
    v10 = swift_slowAlloc();
    sub_100049A30();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 67109378;
    *(v10 + 4) = *&v7[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v10 + 8) = 2082;
    *(v10 + 10) = sub_100014C58(v4, v5, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "PID %d: Register Service Provider '%{public}s'", v10, 0x12u);
    sub_100003458(v11);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  v28 = v4;
  sub_10002B60C();
  v3 = v12;
  v13 = sub_100037E08(v12);
  v14 = 0;
  v4 = v3 & 0xC000000000000001;
  while (v13 != v14)
  {
    if (v4)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v15 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 1)
    {

      sub_100031694(v15, v7);
    }

    ++v14;
  }

  sub_100049E28();
  swift_beginAccess();
  v16 = *(v2 + 160);
  if (*(v16 + 16))
  {
    v17 = v28;
    v18 = sub_1000391EC();
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    v17 = v28;
  }

  v31 = v21;
  swift_endAccess();
  v23 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v24 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
  {
    sub_100011EBC(v24);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v25 = v31;
  sub_100011E50();
  swift_beginAccess();
  v26 = *(v2 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v2 + 160);
  sub_10003E268(v25, v17, v5, isUniquelyReferenced_nonNull_native);
  *(v2 + 160) = v29;
  return swift_endAccess();
}

uint64_t sub_1000333C8()
{
  sub_10000FC6C(&qword_10009A800, &qword_1000769E8);
  v1 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  v2 = *(v0 + 160);
  *(v0 + 160) = v1;
}

void sub_100033444(void *a1)
{
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_1000A1AE8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100049D00();
  if (os_log_type_enabled(v6, v7))
  {
    sub_10004A14C();
    v8 = swift_slowAlloc();
    sub_100049A30();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 67109378;
    *(v8 + 4) = *&v3[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v8 + 8) = 2082;
    *(v8 + 10) = sub_100014C58(*&v3[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier], *&v3[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8], &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "PID %d: Unregister Service Provider '%{public}s'", v8, 0x12u);
    sub_100003458(v9);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100048324();
  sub_10004A140();
  swift_allocError();
  *v10 = 2;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_100049F8C(v11, v12, -101, 27, 0x800000010007B070);
  sub_10002F534(v3, v13, 1);
  sub_100031B5C(v3);
}

void sub_100033654()
{
  sub_100011FF4();
  v3 = v1;
  v4 = v0;
  v5 = sub_100049CF4();
  v6 = _s7SessionC8IdentityVMa(v5);
  v7 = sub_10001B8E8(v6);
  v77 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100011CD4();
  v11 = sub_10000FC6C(&qword_10009A948, &qword_100076AB0);
  v12 = sub_1000499EC(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100011D10();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_100049D4C();
  if (qword_100098BB0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_100003420(v19, qword_1000A1AE8);
    v20 = v0;
    v0 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v21 = sub_100049D00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      v23[1] = *&v20[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      sub_10004A10C();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      sub_100049960();
    }

    else
    {

      v0 = v20;
    }

    if (*(v4 + 22))
    {
      break;
    }

    v80 = v3;
    v79 = v17;
    *(v4 + 22) = v20;
    sub_100011D50();
    swift_beginAccess();
    v78 = v4;
    v17 = *(v4 + 15);
    v39 = *(v17 + 64);
    v38 = v17 + 64;
    v40 = *(v17 + 32);
    sub_100049970();
    v3 = v42 & v41;
    v44 = v43 + 63;
    v45 = v20;
    v46 = v44 >> 6;
    v47 = v45;
    v76 = v17;

    v4 = 0;
    v75 = v2;
    if (!v3)
    {
      goto LABEL_9;
    }

    do
    {
      v48 = v4;
LABEL_13:
      v49 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v50 = v49 | (v48 << 6);
      v51 = *(v76 + 48);
      v52 = *(v77 + 72);
      sub_100049760();
      sub_10003E75C();
      v53 = *(*(v76 + 56) + 8 * v50);
      v54 = sub_100049AB0();
      v56 = sub_10000FC6C(v54, v55);
      v57 = *(v56 + 48);
      sub_1000497D4();
      v17 = v79;
      sub_1000469E4();
      *(v79 + v57) = v53;
      v58 = sub_100049BFC();
      sub_10001137C(v58, v59, v60, v56);

      v2 = v75;
LABEL_14:
      sub_10004871C();
      v61 = sub_100049AB0();
      v63 = sub_10000FC6C(v61, v62);
      if (sub_1000113A4(v2, 1, v63) == 1)
      {

        goto LABEL_22;
      }

      v64 = *(v2 + *(v63 + 48));
      v65 = *(v64 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
      v66 = *(v64 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

      v67 = sub_100049F3C();
      v0 = v78;
      sub_100031744(v67, v68);
      if (v80)
      {

        sub_100049748();
        v37 = sub_10003E708();
        v36 = v80;
        goto LABEL_21;
      }

      sub_100049748();
      sub_10003E708();
    }

    while (v3);
LABEL_9:
    while (1)
    {
      v48 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v48 >= v46)
      {
        v69 = sub_100049AB0();
        v71 = sub_10000FC6C(v69, v70);
        v17 = v79;
        sub_10001137C(v79, 1, 1, v71);
        v3 = 0;
        goto LABEL_14;
      }

      v3 = *(v38 + 8 * v48);
      ++v4;
      if (v3)
      {
        v4 = v48;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    sub_100049734();
    swift_once();
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v36 = sub_10001E468(v30, v31, v32, v33, v34, v35);
  v37 = swift_willThrow();
LABEL_21:
  v72 = __chkstk_darwin(v37);
  __chkstk_darwin(v72);
  sub_100011DA8();
  *(v73 - 16) = v36;
  sub_100016F18(sub_1000483DC, v74, sub_100011C20);
  swift_willThrow();
LABEL_22:
  sub_100011FBC();
}

uint64_t sub_100033B44(uint64_t a1)
{
  _StringGuts.grow(_:)(45);

  v5 = *(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010007B0B0;
  v3._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v3);
  return 541346128;
}

void sub_100033BFC(void *a1)
{
  v2 = v1;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000A1AE8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = sub_100049D00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v9[1] = *&v5[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    sub_10004A10C();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_100049960();
  }

  else
  {

    v6 = v5;
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100048324();
  sub_10004A140();
  swift_allocError();
  *v16 = 3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  v19 = sub_100049F8C(v17, v18, -101, 28, 0x800000010007B090);
  v20 = *(v2 + 176);
  if (v20)
  {
    type metadata accessor for ServicePresenter();
    v21 = v5;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      sub_10004BCDC();
      v24 = *(v2 + 176);
      *(v2 + 176) = 0;
    }
  }

  v27 = v19;
  v25 = sub_100049AA4();
  sub_10002F534(v25, v26, 1);
}

void sub_100033EC4(uint64_t a1, uint64_t a2)
{
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100049AD4(v5, qword_1000A1AE8);
  __chkstk_darwin(v6);
  sub_100011DA8();
  *(v7 - 16) = a2;
  sub_100016F18(sub_100047B10, a1, sub_100011C20);
  if (*(v2 + 32))
  {
    v8 = *(v2 + 32);

    sub_100049CE8();
    sub_100032BA4();
  }
}

void sub_100033FD4()
{
  sub_10004A288();
  v1 = v0;
  v3 = v2;
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_1000499C4();
  v12 = sub_10001E674(v4, v5, v6, v7, v8, v9, v1);
  sub_100033EC4(v3, v12);
  sub_10004A29C();
}

id sub_1000340B8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

void sub_10003412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10004A288();
  a16 = v18;
  a17 = v19;
  v20 = OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener;
  sub_1000033E0(0, &unk_10009A958, NSXPCListener_ptr);
  *&v17[v20] = sub_1000340B8();
  v21 = type metadata accessor for Relay.MachService();
  a9.receiver = v17;
  a9.super_class = v21;
  v22 = objc_msgSendSuper2(&a9, "init");
  v23 = OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener;
  v24 = *&v22[OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener];
  v25 = v22;
  [v24 setDelegate:v25];
  v26 = *&v22[v23];
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v27 = v26;
  v28 = static OS_dispatch_queue.main.getter();
  [v27 _setQueue:v28];

  [*&v22[v23] resume];
  sub_10004A29C();
}

uint64_t sub_100034268(int a1, id a2)
{
  [a2 auditToken];
  if (sub_10001FDE4() && xpc_copy_entitlement_for_token())
  {
    swift_unknownObjectRelease();
    objc_allocWithZone(type metadata accessor for TestClient());
    v3 = sub_100055120(a2);
LABEL_22:
    v26 = v3;
    if (qword_100098B98 != -1)
    {
      sub_100011C88();
    }

    sub_10002FC68(v26);

    return 1;
  }

  v4 = xpc_copy_entitlement_for_token();
  if (!v4)
  {
LABEL_11:
    v13 = xpc_copy_entitlement_for_token();
    if (v13)
    {
      if (xpc_BOOL_get_value(v13))
      {
        objc_allocWithZone(type metadata accessor for ServicePresenter());
        v12 = sub_1000035F0(a2);
        goto LABEL_14;
      }

      swift_unknownObjectRelease();
    }

    objc_allocWithZone(type metadata accessor for Client());
    v3 = sub_1000035F0(a2);
    goto LABEL_22;
  }

  if (!xpc_string_get_string_ptr(v4))
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  String.init(cString:)();
  if (qword_100098BD8 != -1)
  {
    swift_once();
  }

  v5 = sub_100049BBC();
  if (sub_100025128(v5, v6, v7))
  {
    objc_allocWithZone(type metadata accessor for ServiceProvider());
    v8 = a2;
    v9 = sub_100049BBC();
    v12 = sub_100050070(v9, v10, v11);
LABEL_14:
    v14 = v12;
    if (qword_100098B98 != -1)
    {
      sub_100011C88();
    }

    sub_10002FC68(v14);

    swift_unknownObjectRelease();
    return 1;
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v21 = sub_10001E468(v15, v16, v17, v18, v19, v20);
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100049AD4(v22, qword_1000A1AE8);
  __chkstk_darwin(v23);
  sub_100011DA8();
  *(v24 - 16) = v21;
  sub_100016F18(sub_10003459C, 0, sub_10001132C);

  swift_unknownObjectRelease();
  return 0;
}

id sub_100034630(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t SidecarTransport.description.getter(uint64_t a1)
{
  v1 = 1229343063;
  v2 = 4346709;
  if (a1 != 2)
  {
    v2 = 0;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 1279547201;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100034728()
{
  result = _s7SessionC8IdentityVMa(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000348A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000348C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100034918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_10003498C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return *a1 == 0;
  }

  v7 = _s7SessionC8IdentityVMa(0);
  v8 = a1 + *(a3 + 20);

  return sub_1000113A4(v8, a2, v7);
}

void *sub_100034A1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 1)
  {
    *result = 0;
  }

  else
  {
    v7 = _s7SessionC8IdentityVMa(0);
    v8 = v4 + *(a4 + 20);

    return sub_10001137C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100034AB4()
{
  result = _s7SessionC8IdentityVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100034B44(uint64_t a1, uint64_t a2)
{
  sub_100049CF4();
  v4 = type metadata accessor for SidecarIdentity();

  return sub_1000113A4(v2, a2, v4);
}

uint64_t sub_100034B9C()
{
  sub_100049CF4();
  type metadata accessor for SidecarIdentity();
  v0 = sub_10004A0F8();

  return sub_10001137C(v0, v1, v2, v3);
}

uint64_t sub_100034BF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034C30()
{
  type metadata accessor for SidecarIdentity();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SidecarTransport(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100034CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100049CDC();
  v6 = type metadata accessor for SidecarIdentity();
  v7 = sub_10004A0CC(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1000113A4(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100034D7C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  sub_100049CF4();
  v8 = type metadata accessor for SidecarIdentity();
  result = sub_10004A0CC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_10004A0F8();

    return sub_10001137C(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100034E10()
{
  result = type metadata accessor for SidecarIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s7SessionC8IdentityV6DomainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7SessionC8IdentityV6DomainOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100034FE8);
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

unint64_t sub_100035030()
{
  result = qword_10009A690;
  if (!qword_10009A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A690);
  }

  return result;
}

unint64_t sub_100035114(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v3(255);
    sub_100049F00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000351A0()
{
  v1 = _s7SessionC8IdentityVMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for SidecarIdentity();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  RapportStreamSession.messenger.getter(v55);
  v13 = v56;
  if (!v56)
  {
    v24 = &qword_10009A888;
    v25 = v55;
LABEL_8:
    sub_100048978(v25, v24);
    goto LABEL_9;
  }

  v52 = v1;
  v53 = v0;
  v54 = v12;
  v14 = v57;
  v15 = sub_10000FCB4(v55, v56);
  v16 = *(v13 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19);
  sub_100048978(v55, &qword_10009A888);
  (*(v14 + 24))(v13, v14);
  (*(v16 + 8))(v19, v13);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 destinationDevice];
    if (v22)
    {
      v23 = v22;
      sub_100051F04(v23, v8);
      if (sub_1000113A4(v8, 1, v9) != 1)
      {
        sub_1000469E4();
        v30 = RapportStreamSession.streamID.getter();
        if (v31)
        {
          v51 = v23;
          v55[0] = 58;
          v55[1] = 0xE100000000000000;
          __chkstk_darwin(v30);
          v48 = v55;
          v32 = v58;
          v35 = sub_100038434(1, 0, sub_100047B18, (&v50 - 4), v33, v34, &v50);
          if (*(v35 + 2) && (v58 = v32, v36 = *(v35 + 4), v37 = *(v35 + 5), v39 = *(v35 + 6), v38 = *(v35 + 7), , , (v37 ^ v36) >> 14))
          {
            v50 = v36;
            v40 = sub_100047B38(v36, v37, v39, v38, 16);
            v23 = v51;
            if ((v41 & 0x100) != 0)
            {
              v43 = sub_100045A44(v50, v37, v39, v38, 16);
              v42 = v44;
            }

            else
            {
              v42 = v41;
              v43 = v40;
            }

            if ((v42 & 1) == 0)
            {
              sub_10003E75C();
              v45 = v52;
              *&v4[*(v52 + 20)] = v43;
              v4[*(v45 + 24)] = 0;
              v28 = sub_10002C8F4(v4, v21);
              sub_10003E708();
              if (v28)
              {
                sub_10003E708();

                swift_unknownObjectRelease();
                return v28;
              }
            }
          }

          else
          {

            v23 = v51;
          }
        }

        v28 = sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = 1952;
        LOBYTE(v48) = 2;
        sub_10001E468(v46, v47, -1020, 0, 0, 0);
        swift_willThrow();

        swift_unknownObjectRelease();
        sub_10003E708();
        return v28;
      }

      swift_unknownObjectRelease();
      v24 = &qword_10009A718;
      v25 = v8;
      goto LABEL_8;
    }
  }

  swift_unknownObjectRelease();
LABEL_9:
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v26 = sub_10001E674(-6714, 0xD000000000000024, 0x800000010007B020, "SidecarRelay/Relay.swift", 24, 2, 1938);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100003420(v27, qword_1000A1AE8);
  __chkstk_darwin(v28);
  v48 = v26;
  sub_100016F18(sub_10003581C, 0, sub_100011C20);
  swift_willThrow();
  return v28;
}

void sub_100035838(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10004A288();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003420(v22, qword_1000A1AE8);
  sub_100049AC8();

  osloga = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(osloga, v23))
  {
    sub_100049C18();
    v24 = swift_slowAlloc();
    sub_100049A30();
    v25 = swift_slowAlloc();
    a10 = v25;
    *v24 = 136446210;
    v26 = RapportStreamServer.description.getter();
    sub_100014C58(v26, v27, &a10);
    sub_100049AC8();

    *(v24 + 4) = v21;
    _os_log_impl(&_mh_execute_header, osloga, v23, "%{public}s Invalidated", v24, 0xCu);
    sub_100003458(v25);
    sub_100049960();

    sub_100011CF4();
  }

  sub_10004A29C();
}

void sub_10003596C()
{
  sub_100011DD0();
  v2 = v1;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1AE8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    sub_100049C18();
    v6 = swift_slowAlloc();
    sub_100049A30();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = RapportStreamSession.description.getter(v7);
    sub_100014C58(v8, v9, &v12);
    sub_10004A228();
    *(v6 + 4) = v0;
    sub_10004A1C8(&_mh_execute_header, v10, v11, "Prepare %{public}s");
    sub_100003458(v7);
    sub_100011CF4();

    sub_100049950();
  }

  sub_1000351A0();
  sub_10002A0E8(v2);

  sub_100011DB8();
}

uint64_t sub_100035B6C()
{
  sub_100011DD0();
  v2 = v1;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1AE8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    sub_100049C18();
    v6 = v2;
    v7 = swift_slowAlloc();
    sub_100049A30();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = RapportStreamSession.description.getter(v8);
    sub_100014C58(v9, v10, &v13);
    sub_100049CC4();

    *(v7 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Accept %{public}s", v7, 0xCu);
    sub_100003458(v8);
    sub_100011CF4();

    v2 = v6;
    sub_100011CF4();
  }

  sub_1000351A0();
  sub_10002A1B4();
  v2(0);
  sub_100011DB8();
}

uint64_t sub_100035E08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_100035E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919247728 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10003600C(char a1)
{
  result = 0x6C656E6E616863;
  switch(a1)
  {
    case 1:
      result = 0x746E65696C63;
      break;
    case 2:
      result = 1919247728;
      break;
    case 3:
      result = 0x65636976726573;
      break;
    case 4:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000360A8(void *a1)
{
  v4 = v1;
  v6 = sub_10000FC6C(&qword_10009A8A0, &qword_100076A58);
  sub_100011C54(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100049C0C();
  __chkstk_darwin(v11);
  sub_100049E10();
  v12 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_1000480A4();
  sub_10004A134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v4;
  sub_100049DD4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v4 + 2);
    v22 = *(v4 + 12);
    sub_100049DD4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v4[2];
    v16 = v4[3];
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v4[4];
    v18 = v4[5];
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v4[6];
    v20 = v4[7];
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_100036268()
{
  sub_100011FF4();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000FC6C(&qword_10009AB88, &qword_100077020);
  sub_100011C54(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100049C0C();
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = v2[4];
  sub_10000FCB4(v2, v2[3]);
  sub_1000480A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100003458(v2);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1000499B0();
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 1;
    sub_1000499B0();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = BYTE4(v15) & 1;
    LOBYTE(v38) = 2;
    v32 = v15;
    sub_1000499B0();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v31 = v16;
    LOBYTE(v38) = 3;
    sub_1000499B0();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v19;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = *(v7 + 8);
    v22 = v20;
    v29 = v23;
    v21(v12, v5);
    *&v34 = v14;
    v24 = v33;
    DWORD2(v34) = v32;
    BYTE12(v34) = v47;
    v25 = v30;
    *&v35 = v31;
    *(&v35 + 1) = v18;
    *&v36 = v30;
    *(&v36 + 1) = v33;
    v26 = v29;
    *&v37 = v22;
    *(&v37 + 1) = v29;
    sub_1000486DC(&v34, &v38);
    sub_100003458(v2);
    v38 = v14;
    v39 = v32;
    v40 = v47;
    v41 = v31;
    v42 = v18;
    v43 = v25;
    v44 = v24;
    v45 = v22;
    v46 = v26;
    sub_1000486AC(&v38);
    v27 = v35;
    *v4 = v34;
    v4[1] = v27;
    v28 = v37;
    v4[2] = v36;
    v4[3] = v28;
  }

  sub_100011FBC();
}

uint64_t sub_10003652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100036004();
  *a1 = result;
  return result;
}

uint64_t sub_10003657C(uint64_t a1)
{
  v2 = sub_1000480A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000365B8(uint64_t a1)
{
  v2 = sub_1000480A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000365F4@<D0>(_OWORD *a1@<X8>)
{
  sub_100036268();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_100036650()
{
  sub_100011DD0();
  v3 = v0;
  v5 = v4;
  v6 = _s7SessionC8IdentityVMa(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100011CD4();
  sub_10004998C();
  v9 = type metadata accessor for SidecarIdentity();
  v10 = sub_1000499EC(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100011CD4();
  sub_100049E10();
  v22 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity + *(v7 + 28));
  v13 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 == 0;
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_10004A0D8();
  sub_1000469E4();
  v16 = sub_100052008();
  v18 = v17;
  sub_10004971C();
  sub_10003E708();
  v20 = *(v3 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v19 = *(v3 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  v21 = *(v3 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state);

  sub_100048638(v21);
  sub_100028290(v21);
  sub_10004A080();
  sub_100048648(v21);
  *v5 = v22;
  *(v5 + 8) = v14;
  *(v5 + 12) = v15;
  *(v5 + 16) = v16;
  *(v5 + 24) = v18;
  *(v5 + 32) = v20;
  *(v5 + 40) = v19;
  *(v5 + 48) = v1;
  *(v5 + 56) = v2;
  sub_100011DB8();
}

uint64_t sub_1000367D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E65696C63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000010007B350 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265766F63736964 && a2 == 0xE900000000000079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000010007AD30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 6580592 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65746E6573657270 && a2 == 0xE900000000000072;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000021 && 0x800000010007B370 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4474726F70706172 && a2 == 0xEE00736563697665;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000010007B3A0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x5374726F70706172 && a2 == 0xEF736E6F69737365;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x800000010007AC90 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x800000010007AD10 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x676F646863746177 && a2 == 0xE800000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

Swift::Int sub_100036CAC(unsigned __int8 a1)
{
  sub_10004A240();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_100036CEC(char a1)
{
  result = 0x73746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7265766F63736964;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 6580592;
      break;
    case 5:
      result = 0x65746E6573657270;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0x4474726F70706172;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x5374726F70706172;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x736E6F6973736573;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x746361736E617274;
      break;
    case 14:
      result = 0x6E6F6973726576;
      break;
    case 15:
      result = 0x676F646863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100036F10(void *a1)
{
  v4 = v1;
  v6 = sub_10000FC6C(&qword_10009A8B0, &qword_100076A60);
  sub_100011C54(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100049C0C();
  __chkstk_darwin(v11);
  sub_100049E10();
  v12 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_1000480F8();
  sub_10004A134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = *v4;
  sub_10000FC6C(&qword_10009A8C0, &qword_100076A68);
  sub_100049290(&unk_10009A8C8);
  sub_100049874();
  if (!v2)
  {
    v13 = *(v4 + 2);
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v4[2];
    v15 = v4[3];
    sub_1000499F8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v4[4];
    sub_10000FC6C(&qword_10009A8D8, &unk_100076A70);
    sub_10004814C();
    sub_100049874();
    v16 = *(v4 + 10);
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v4 + 11);
    v33 = *(v4 + 48);
    sub_100049900();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v4 + 49);
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v4[7];
    sub_10000FC6C(&qword_100099160, &qword_100075748);
    sub_1000493D8(&qword_10009A8F0);
    sub_100049874();
    v19 = v4[8];
    v20 = v4[9];
    sub_1000499F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v4[10];
    sub_10000FC6C(&qword_100099138, &qword_100076A80);
    sub_1000481D0();
    sub_100049914();
    sub_10004A134();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v4[11];
    sub_100049914();
    sub_10004A134();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v4[12];
    sub_10000FC6C(&qword_10009A8F8, &qword_100076A88);
    sub_1000494BC();
    sub_100049874();
    v31 = v4[13];
    sub_10000FC6C(&qword_10009A908, &unk_100076A90);
    sub_10004824C();
    sub_100049874();
    v21 = *(v4 + 112);
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v4[15];
    v23 = v4[16];
    sub_1000499F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v4 + 17);
    sub_1000482D0();
    sub_100049914();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_10003735C()
{
  sub_100011FF4();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000FC6C(&qword_10009AB90, &unk_100077028);
  sub_100011C54(v5);
  v7 = *(v6 + 64);
  sub_100049C0C();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_10000FCB4(v2, v2[3]);
  sub_1000480F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_10004999C();
    sub_100003458(v2);

    if (v9)
    {

      if ((v4 & 1) == 0)
      {
LABEL_10:
        if (v5)
        {
LABEL_11:

          if ((v38 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v38)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_10000FC6C(&qword_10009A8C0, &qword_100076A68);
  sub_100049290(&unk_10009AB98);
  sub_100049844();
  v36 = v41;
  sub_100049800(1);
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(2);
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v12;
  v39 = v11;
  sub_10000FC6C(&qword_10009A8D8, &unk_100076A70);
  sub_100049354();
  sub_100049844();
  v35 = v41;
  sub_100049800(4);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(5);
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = BYTE4(v13) & 1;
  LOBYTE(v41) = 6;
  v26 = v13;
  sub_100049A04();
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000FC6C(&qword_100099160, &qword_100075748);
  sub_1000493D8(&unk_100099240);
  sub_100049844();
  v34 = v41;
  sub_100049800(8);
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v14;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100049440();
  sub_100049DF8();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v41;
  sub_100049DF8();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v41;
  sub_10000FC6C(&qword_10009A8F8, &qword_100076A88);
  sub_1000494BC();
  sub_100049844();
  v30 = v41;
  sub_10000FC6C(&qword_10009A908, &unk_100076A90);
  LOBYTE(v40[0]) = 12;
  sub_100049580();
  sub_100049844();
  v29 = v41;
  sub_100049800(13);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(14);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v15;
  v66 = 15;
  sub_100049604();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v24 & 1;
  v17 = sub_1000498D0();
  v18(v17);
  v25 = v68;
  v40[0] = v36;
  LODWORD(v40[1]) = v10;
  v40[2] = v39;
  v40[3] = v37;
  v40[4] = v35;
  v40[5] = __PAIR64__(v26, v27);
  v19 = v73;
  v20 = v67;
  LOBYTE(v40[6]) = v73;
  BYTE1(v40[6]) = v16;
  v40[7] = v34;
  v40[8] = v23;
  v40[9] = v33;
  v40[10] = v32;
  v40[11] = v31;
  v40[12] = v30;
  v40[13] = v29;
  LOBYTE(v40[14]) = v22 & 1;
  HIDWORD(v40[14]) = *&v70[3];
  *(&v40[14] + 1) = *v70;
  v40[15] = v21;
  v40[16] = v28;
  LOBYTE(v40[17]) = v67;
  *(&v40[17] + 1) = *v69;
  HIDWORD(v40[17]) = *&v69[3];
  v40[18] = v68;
  sub_100049658(v40, &v41);
  sub_100003458(v2);
  v41 = v36;
  v42 = v10;
  v43 = v39;
  v44 = v37;
  v45 = v35;
  v46 = v27;
  v47 = v26;
  v48 = v19;
  v49 = v16;
  v50 = v71;
  v51 = v72;
  v52 = v34;
  v53 = v23;
  v54 = v33;
  v55 = v32;
  v56 = v31;
  v57 = v30;
  v58 = v29;
  v59 = v22 & 1;
  *&v60[3] = *&v70[3];
  *v60 = *v70;
  v61 = v21;
  v62 = v28;
  v63 = v20;
  *v64 = *v69;
  *&v64[3] = *&v69[3];
  v65 = v25;
  sub_100010E24(&v41);
  memcpy(v4, v40, 0x98uLL);
LABEL_12:
  sub_100011FBC();
}

uint64_t sub_100037B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000367D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037BC4@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportDeviceChangeFlags.name.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037BEC(uint64_t a1)
{
  v2 = sub_1000480F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037C28(uint64_t a1)
{
  v2 = sub_1000480F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100037C64(void *a1@<X8>)
{
  sub_10003735C();
  if (!v1)
  {
    memcpy(a1, __src, 0x98uLL);
  }
}

unint64_t sub_100037CCC()
{
  result = qword_10009A6D8;
  if (!qword_10009A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A6D8);
  }

  return result;
}

unint64_t sub_100037DB0(uint64_t a1)
{
  result = sub_100035114(&unk_10009A710);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100037E08(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100037E2C()
{
  v0 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  sub_100048658();
  v8 = *&v7[*(v1 + 56)];

  v9 = sub_100052008();
  v11 = v10;
  sub_10003E708();
  sub_100048658();
  v12 = *&v5[*(v1 + 56)];

  v13 = sub_100052008();
  v15 = v14;
  sub_10003E708();
  if (v9 == v13 && v11 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_100037FC4()
{
  result = sub_100037FE8();
  qword_10009A008 = result;
  unk_10009A010 = v1;
  return result;
}

uint64_t sub_100037FE8()
{
  v0 = CFBundleGetMainBundle();
  v1 = CFBundleGetValueForInfoDictionaryKey(v0, kCFBundleVersionKey);

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10003807C(void **a1)
{
  v2 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100043858(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100040A5C(v6, &qword_10009A850, &qword_100076A20, sub_100041254, sub_100040BA8);
  *a1 = v3;
  return result;
}

Swift::Int sub_10003816C(uint64_t *a1)
{
  v2 = *(sub_10000FC6C(&qword_10009A9E0, &qword_100076B18) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100046BB4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100040A5C(v7, &qword_10009A9E0, &qword_100076B18, sub_100041B80, sub_100040DF0);
  *a1 = v3;
  return result;
}

id sub_100038258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100038314;
  v10[3] = &unk_10008F3A8;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithSubsystem:a1 category:a2 provider:v7];
  _Block_release(v7);

  return v8;
}

Class sub_100038314(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100011358(v4, v6);
  }

  return isa;
}

uint64_t sub_1000383F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

char *sub_100038434@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1000389B0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1000389B0((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = String.subscript.getter();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1000389B0(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1000389B0((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1000389B0(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000387E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10003885C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1000388A8(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100049D9C();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10000FC6C(&qword_10009AAE8, &qword_100076C18);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    sub_100049F18(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_100049AB0();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAF0, &qword_100076C20);
    sub_100049AB0();
    swift_arrayInitWithCopy();
  }
}

char *sub_1000389B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A898, &qword_100076A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038AB8(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100038F28(v9, a2, &unk_10009A860, &unk_100076A28, &qword_10009A850, &qword_100076A20);
  v11 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_10003901C(a4 + v12, v9, v10 + v12, &qword_10009A850, &qword_100076A20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A980, &qword_100076AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100038CE8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_100049D9C();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10000FC6C(&qword_10009AA18, &qword_100076B50);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    sub_100049F18(v12);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[16 * v9 + 32] <= v11 + 32)
    {
      v14 = sub_100049AB0();
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA20, &qword_100076B58);
    sub_100049AB0();
    swift_arrayInitWithCopy();
  }
}

void *sub_100038DF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009A868, &qword_100076A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009A870, &qword_100076A38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = sub_100049EF4(a1, a2, a3);
  sub_10000FC6C(v10, v11);
  v12 = sub_10000FC6C(a5, a6);
  sub_10001B8E8(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (v14)
  {
    if ((result - v16) != 0x8000000000000000 || v14 != -1)
    {
      v17[2] = a1;
      v17[3] = 2 * ((result - v16) / v14);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003901C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100049C50();
  if (v11 < v10 || (v12 = sub_10000FC6C(a4, a5), result = sub_100011D00(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    sub_10000FC6C(a4, a5);
    sub_100049BD8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_100049BD8();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000390F4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for UUID(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for UUID();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1000391C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000391EC()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  sub_100049CE8();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_100049BBC();

  return sub_1000396E8(v2, v3, v4);
}

unint64_t sub_10003925C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003979C(a1, v4);
}

unint64_t sub_1000392A0()
{
  sub_100049F48();
  v2 = *(v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v3 = Hasher._finalize()();

  return sub_100039860(v1, v3);
}

unint64_t sub_100039308(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000398C0(a1, v4);
}

unint64_t sub_1000393BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v4 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(a1 + *(v4 + 20)));
  Hasher._combine(_:)(*(a1 + *(v4 + 24)));
  v5 = Hasher._finalize()();

  return sub_100039A1C(a1, v5);
}

unint64_t sub_10003949C(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(a1 + *(v4 + 20)));
  v5 = Hasher._finalize()();

  return sub_100039BD4(a1, v5);
}

unint64_t sub_100039568(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_100039D78(a1, a2, a3, v8);
}

unint64_t sub_1000395FC(void *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10002C68C();
  v4 = Hasher._finalize()();

  return sub_100039E4C(a1, v4);
}

unint64_t sub_100039668()
{
  v1 = *(v0 + 40);
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v2);
  sub_100049AA4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v3 = sub_100049F00();

  return sub_10003A038(v3, v4);
}

unint64_t sub_1000396E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10003979C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100047A60(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10001FDF0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100039860(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000398C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidecarIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    v9 = *(v2 + 48);
    v10 = *(v5 + 72);
    sub_10003E75C();
    v11 = static UUID.== infix(_:_:)();
    sub_10003E708();
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100039A1C(uint64_t a1, uint64_t a2)
{
  v5 = _s7SessionC8IdentityVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      v14 = *(v2 + 48);
      sub_10003E75C();
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *&v9[*(v5 + 20)] == *(a1 + *(v5 + 20)))
      {
        v15 = v9[*(v5 + 24)];
        sub_10003E708();
        if (v15 == *(a1 + *(v5 + 24)))
        {
          return v11;
        }
      }

      else
      {
        sub_10003E708();
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100039BD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Relay.RapportSessionKey(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      v14 = *(v2 + 48);
      sub_10003E75C();
      if (static UUID.== infix(_:_:)())
      {
        v15 = *&v9[*(v5 + 20)];
        sub_10003E708();
        if (v15 == *(a1 + *(v5 + 20)))
        {
          return v11;
        }
      }

      else
      {
        sub_10003E708();
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100039D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100039E4C(void *a1, uint64_t a2)
{
  v23 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v5 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v22 = a1;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      v14 = *(v2 + 48);
      sub_10003E75C();
      if (*v8 == v12 && (v15 = *(v23 + 20), v16 = v8 + v15, v17 = v22 + v15, (static UUID.== infix(_:_:)() & 1) != 0) && (v18 = _s7SessionC8IdentityVMa(0), *&v16[*(v18 + 20)] == *&v17[*(v18 + 20)]))
      {
        v19 = v18;
        v20 = v16[*(v18 + 24)];
        sub_10003E708();
        if (v20 == v17[*(v19 + 24)])
        {
          return v10;
        }
      }

      else
      {
        sub_10003E708();
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10003A038(uint64_t a1, uint64_t a2)
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
    sub_100035114(&unk_10009A940);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10003A1F4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for Client();
    v9 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        v14 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003A4DC();
          v16 = v18;
        }

        v8 = *(*(v16 + 48) + 8 * v11);
        sub_10003B7D8(v11);
        *v2 = v18;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_10003A374();

  return v8;
}

uint64_t sub_10003A374()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10003B96C(v4, v3, &unk_10009A950, &unk_100076AB8, type metadata accessor for Client);
  v14 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for Client();
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_10003B7D8(v9);
      if (static NSObject.== infix(_:_:)())
      {
        *v1 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

void sub_10003A4DC()
{
  sub_10004A2B0();
  v1 = v0;
  sub_10000FC6C(v2, v3);
  v4 = *v0;
  v5 = static _SetStorage.copy(original:)();
  if (*(v4 + 16))
  {
    v6 = *(v5 + 32);
    sub_100049EA0();
    v9 = (v8 + 63) >> 6;
    if (v5 != v4 || v7 >= v4 + 56 + 8 * v9)
    {
      memmove(v7, (v4 + 56), 8 * v9);
    }

    v11 = 0;
    *(v5 + 16) = *(v4 + 16);
    v12 = *(v4 + 32);
    sub_100049EA0();
    v14 = *(v4 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        sub_100049B6C();
LABEL_17:
        v22 = v18 | (v11 << 6);
        v23 = *(*(v4 + 48) + 8 * v22);
        *(*(v5 + 48) + 8 * v22) = v23;
        v24 = v23;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        goto LABEL_19;
      }

      ++v19;
      if (*(v4 + 56 + 8 * v11))
      {
        sub_100049D7C();
        v16 = v21 & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
    sub_10004A164();
  }
}

void *sub_10003A5F8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_10003A82C()
{
  v1 = v0;
  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_10003A984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  v6 = sub_100049C74(a1, a2);
  sub_10000FC6C(v6, v7);
  sub_100049BD8();
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v4 + 16))
  {
    v31 = v3;
    v10 = 0;
    v11 = 1 << *(v4 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v20 = *(v9 + 40);
        v21 = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
        v22 = sub_10001B944();
        v23 = NSObject._rawHashValue(seed:)(v22) & ~(-1 << *(v9 + 32));
        if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        sub_100049B38();
LABEL_23:
        sub_100049AFC();
        *(v15 + v28) |= v29;
        sub_100049EC4(v30);
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      sub_100049B24();
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        if (*(v15 + 8 * v24) != -1)
        {
          sub_100049B10();
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v17 = v10;
      while (1)
      {
        v10 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v10 >= v14)
        {

          v3 = v31;
          goto LABEL_27;
        }

        ++v17;
        if (*(v4 + 56 + 8 * v10))
        {
          sub_100049D7C();
          v13 = v19 & v18;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v3 = v9;
  }
}

uint64_t sub_10003AB34(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_100035114(&unk_100099180);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10003AE4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_10003B080()
{
  sub_100011DD0();
  v3 = v0;
  v4 = *v0;
  if (*(*v0 + 24) > v1)
  {
    v5 = *(*v0 + 24);
  }

  v6 = sub_100049C74(v1, v2);
  sub_10000FC6C(v6, v7);
  sub_100049BD8();
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (!*(v4 + 16))
  {
LABEL_29:

    *v3 = v9;
    sub_100011DB8();
    return;
  }

  v10 = 0;
  v11 = (v4 + 56);
  v12 = 1 << *(v4 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v4 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 56;
  if (!v14)
  {
LABEL_9:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v15)
      {
        break;
      }

      ++v18;
      if (v11[v10])
      {
        sub_100049D7C();
        v14 = v20 & v19;
        goto LABEL_14;
      }
    }

    v30 = *(v4 + 32);
    sub_100049EA0();
    if (v31 >= 64)
    {
      sub_10003BBB8(0, (v31 + 63) >> 6, v4 + 56);
    }

    else
    {
      sub_100049C5C();
      *v11 = v32;
    }

    *(v4 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_100049B6C();
LABEL_14:
    v21 = *(*(v4 + 48) + 8 * (v17 | (v10 << 6)));
    v22 = NSObject._rawHashValue(seed:)(*(v9 + 40)) & ~(-1 << *(v9 + 32));
    if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    sub_100049B38();
LABEL_23:
    sub_100049AFC();
    *(v16 + v27) |= v28;
    sub_100049EC4(v29);
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  sub_100049B24();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v16 + 8 * v23) != -1)
    {
      sub_100049B10();
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_10003B224(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_10003BBB8(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_100035114(&unk_100099180);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003B57C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_10003BBB8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10003B7D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_10003B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = sub_100049EF4(a1, a2, a3);
    sub_10000FC6C(v6, v7);
    v8 = static _SetStorage.convert(_:capacity:)();
    v20 = v8;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v8;
      }

      a5(0);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_100049CE8();
        sub_10003B080();
      }

      v8 = v20;
      result = NSObject._rawHashValue(seed:)(*(v20 + 40));
      v10 = v20 + 56;
      v11 = -1 << *(v20 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v20 + 48) + 8 * v14) = v19;
      ++*(v20 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10003BB3C()
{
  sub_100049C50();
  NSObject._rawHashValue(seed:)(*(v2 + 40));
  v3 = *(v0 + 32);
  sub_100049C5C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

uint64_t sub_10003BBB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100076330;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_10003BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A288();
  v14 = v10;
  v15 = *v10;
  sub_1000392A0();
  if (v16)
  {
    sub_10004A270();
    sub_10004A120();
    sub_10000FC6C(&qword_10009AAD8, &qword_100076C08);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    v17 = *(*(a10 + 48) + 8 * v11);

    v18 = sub_10004A08C(*(a10 + 56));
    type metadata accessor for Relay.Session(v18);
    sub_10000FC6C(&qword_10009AAE0, &qword_100076C10);
    sub_100035114(&unk_100099190);
    sub_100049AA4();
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v14 = a10;
  }

  sub_10004A29C();
}

void sub_10003BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A1B0();
  sub_100049DE0();
  sub_1000393BC(v14);
  if (v15)
  {
    sub_10004A270();
    sub_100049DAC();
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    v16 = *(a10 + 48);
    v17 = _s7SessionC8IdentityVMa(0);
    sub_100011D00(v17);
    v19 = *(v18 + 72);
    sub_100049748();
    sub_10003E708();
    v20 = sub_10004A08C(*(a10 + 56));
    v11(v20);
    sub_100035114(&unk_10009A7B0);
    sub_100049F30();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_10004A198();
}

void sub_10003BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A1B0();
  sub_100049DE0();
  sub_100039308(v14);
  if (v15)
  {
    sub_10004A270();
    sub_100049DAC();
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    v16 = *(a10 + 48);
    v17 = type metadata accessor for SidecarIdentity();
    sub_100011D00(v17);
    v19 = *(v18 + 72);
    sub_10004971C();
    sub_10003E708();
    v20 = sub_10004A08C(*(a10 + 56));
    v11(v20);
    sub_100035114(&unk_10009A738);
    sub_100049F30();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_10004A198();
}

unint64_t sub_10003BEE8@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  result = sub_100039568(a1, a2, a3);
  if (v9)
  {
    v10 = result;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    v13 = *(*v5 + 24);
    sub_10000FC6C(&qword_10009AAC0, &qword_100076BF8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    v14 = (*(v23 + 48) + 24 * v10);
    v15 = *v14;
    v16 = v14[2];

    v17 = *(v23 + 56) + 40 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v22 = *(v17 + 24);
    sub_100010D20();
    result = _NativeDictionary._delete(at:)();
    v21 = v22;
    *v5 = v23;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
  }

  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  return result;
}

uint64_t sub_10003C008()
{
  sub_10004A1B0();
  v1 = v0;
  v2 = *v0;
  v3 = sub_100039668();
  if (v4)
  {
    v5 = v3;
    v6 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v8 = *(*v1 + 24);
    sub_10000FC6C(&qword_10009A938, &qword_100076AA8);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(v23 + 48);
    v10 = type metadata accessor for UUID();
    sub_100011D00(v10);
    (*(v11 + 8))(v9 + *(v11 + 72) * v5, v10);
    v12 = *(v23 + 56);
    v13 = _s7SessionC8IdentityVMa(0);
    sub_100011D00(v13);
    v15 = *(v14 + 72);
    sub_1000497D4();
    sub_1000469E4();
    sub_10004978C();
    sub_100035114(v16);
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v1 = v23;
    sub_100049BFC();
  }

  else
  {
    _s7SessionC8IdentityVMa(0);
    sub_100049BE8();
  }

  sub_10004A198();

  return sub_10001137C(v17, v18, v19, v20);
}

void sub_10003C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A288();
  v14 = v10;
  v15 = *v10;
  sub_100039668();
  if (v16)
  {
    sub_10004A270();
    sub_10004A120();
    sub_10000FC6C(&qword_10009A9C8, &qword_100076B00);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    sub_100049FC0();
    v17 = type metadata accessor for UUID();
    sub_100011D00(v17);
    (*(v18 + 8))(v15 + *(v18 + 72) * v11, v17);
    sub_10004A08C(*(a10 + 56));
    type metadata accessor for RemoteDisplayInitiationRequest();
    sub_10004978C();
    sub_100035114(v19);
    sub_100049AA4();
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v14 = a10;
  }

  sub_10004A29C();
}

uint64_t sub_10003C278()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000391EC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v8 = *(*v1 + 24);
  v9 = sub_100049BB0();
  sub_10000FC6C(v9, v10);
  sub_100049CAC();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v11 = *(*(v16 + 48) + 16 * v5 + 8);

  v12 = *(*(v16 + 56) + 8 * v5);
  v13 = sub_100049BBC();
  sub_10000FC6C(v13, v14);
  sub_100049AB0();
  _NativeDictionary._delete(at:)();
  *v1 = v16;
  return v12;
}

uint64_t sub_10003C360(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009AA30, &qword_100076B68);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_10003BBB8(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 4 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 4 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10003C5FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009AA50, &qword_100076B88);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v40 = v3;
  v41 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      sub_10003BBB8(0, (v39 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5 + 56) + (v19 << 6);
    if (v42)
    {
      v45 = *(v23 + 8);
      v24 = *(v23 + 12);
      v43 = *v23;
      v44 = *(v23 + 24);
      v46 = *(v23 + 40);
      v47 = *(v23 + 16);
      v49 = *(v23 + 32);
      v50 = *(v23 + 48);
      v48 = *(v23 + 56);
    }

    else
    {
      v25 = *v23;
      v26 = *(v23 + 16);
      v27 = *(v23 + 48);
      v52 = *(v23 + 32);
      v53 = v27;
      v51[0] = v25;
      v51[1] = v26;
      v49 = v52;
      v50 = v27;
      v46 = *(&v52 + 1);
      v47 = v26;
      v48 = *(&v27 + 1);
      v44 = *(&v26 + 1);
      v45 = DWORD2(v25);
      v24 = BYTE12(v25);
      v43 = v25;

      sub_1000486DC(v51, v54);
    }

    v28 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v8 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    LOBYTE(v51[0]) = v24;
    *(v15 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v8 + 48) + 16 * v32);
    *v37 = v21;
    v37[1] = v22;
    v38 = *(v8 + 56) + (v32 << 6);
    *v38 = v43;
    *(v38 + 8) = v45;
    *(v38 + 12) = v24;
    *(v38 + 16) = v47;
    *(v38 + 24) = v44;
    *(v38 + 32) = v49;
    *(v38 + 40) = v46;
    *(v38 + 48) = v50;
    *(v38 + 56) = v48;
    ++*(v8 + 16);
    v5 = v41;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v15 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10003C964(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009AA70, &qword_100076BA8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_10003BBB8(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10003CC18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009AAA0, &qword_100076BD8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_10003BBB8(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10003CEB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FC6C(&qword_10009A9F8, &qword_100076B30);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_10003BBB8(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

_OWORD *sub_10003D158()
{
  sub_10004A2B0();
  v1 = v0;
  sub_100049E34();
  v3 = v2;
  v4 = *v0;
  sub_100049C74(v2, v5);
  v6 = sub_1000391EC();
  sub_100049830(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_10000FC6C(&unk_10009A7C0, &unk_1000769B0);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    v15 = *v1;
    sub_100049BBC();
    sub_1000391EC();
    sub_100049D0C();
    if (!v17)
    {
      goto LABEL_14;
    }

    v11 = v16;
  }

  if (v12)
  {
    sub_100003458((*(*v1 + 56) + 32 * v11));
    sub_100049A98();
    sub_10004A164();

    return sub_100011558(v18, v19);
  }

  else
  {
    sub_100049CE8();
    sub_10003E620(v22, v23, v24, v3, v25);
    sub_10004A164();
  }
}

_OWORD *sub_10003D268(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10003925C(a2);
  sub_100049830(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_10000FC6C(&qword_10009A998, &unk_100076AE0);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = sub_10004A05C();
    sub_10003925C(v16);
    sub_100049D0C();
    if (!v18)
    {
      goto LABEL_12;
    }

    v12 = v17;
  }

  v19 = *v3;
  if (v13)
  {
    sub_100003458((v19[7] + 32 * v12));
    v20 = sub_100049A98();

    return sub_100011558(v20, v21);
  }

  else
  {
    sub_100047A60(a2, v23);
    return sub_10003E68C(v12, v23, a1, v19);
  }
}

uint64_t sub_10003D388()
{
  sub_10004A2B0();
  v3 = v1;
  v5 = v4;
  sub_10004A024();
  v6 = *v1;
  v7 = sub_1000392A0();
  sub_100049830(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for Relay.Session(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_10000FC6C(&qword_10009AAD8, &qword_100076C08);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v5 & 1, v6))
  {
    v14 = *v3;
    sub_1000392A0();
    sub_100049D0C();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v2;
    sub_10004A164();
  }

  else
  {
    sub_10003E7B4(v12, v0, v2, v17);
    sub_10004A164();
  }
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Relay.RapportSessionKey(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_10003949C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000FC6C(&unk_10009A7D0, &unk_1000769C0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v4;
  v21 = sub_10003949C(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v4;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v18, v11, a1, v23);
  }
}

uint64_t sub_10003D650(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s7SessionC8IdentityVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1000393BC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000FC6C(&qword_10009A7A8, &qword_1000769A0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v4;
  v21 = sub_1000393BC(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v4;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v18, v11, a1, v23);
  }
}

uint64_t sub_10003D810(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1000395FC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000FC6C(&qword_10009AAC8, &qword_100076C00);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v4;
  v21 = sub_1000395FC(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v4;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v18, v11, a1, v23);
  }
}

void sub_10003D9D0()
{
  sub_100011DD0();
  v2 = v1;
  sub_100049CDC();
  v3 = type metadata accessor for UUID();
  v4 = sub_100011C54(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100049818();
  v7 = *v1;
  v8 = sub_100039668();
  sub_100049830(v8, v9);
  if (v11)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v10;
  sub_10000FC6C(&qword_10009A938, &qword_100076AA8);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    sub_10004A05C();
    sub_100039668();
    if ((v12 & 1) != (v15 & 1))
    {
      goto LABEL_10;
    }
  }

  v16 = *v2;
  if (v12)
  {
    v17 = v16[7];
    v18 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v18);
    v20 = *(v19 + 72);
    sub_100011DB8();

    sub_100048378(v21, v22);
  }

  else
  {
    v24 = sub_10004A010();
    v25(v24);
    v26 = sub_100049BB0();
    sub_10003E7F8(v26, v27, v0, v16);
    sub_100011DB8();
  }
}

uint64_t sub_10003DB4C()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_100049C74(v8, v6);
  v14 = sub_100039568(v11, v12, v13);
  sub_100049830(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  sub_10000FC6C(&qword_10009AAC0, &qword_100076BF8);
  if (!sub_10004A178())
  {
    goto LABEL_5;
  }

  v21 = *v1;
  v22 = sub_10004A098();
  v24 = sub_100039568(v22, v23, v3);
  if ((v20 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v24;
LABEL_5:
  v26 = *v1;
  if (v20)
  {
    v27 = v26[7] + 40 * v19;
    v28 = *(v27 + 32);
    v29 = *(v9 + 16);
    *v27 = *v9;
    *(v27 + 16) = v29;
    *(v27 + 32) = *(v9 + 32);
    sub_100011DB8();
  }

  else
  {
    sub_10003E8E8(v19, v7, v5, v3, v9, v26);

    sub_100011DB8();
  }
}

void sub_10003DC84()
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v31 = v9;
  v10 = type metadata accessor for SidecarIdentity();
  v11 = sub_100011D00(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100011CD4();
  sub_100049E10();
  v14 = *v0;
  v15 = sub_100039308(v8);
  sub_100049830(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_10000FC6C(v5, v3);
  sub_100049C68();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v23))
  {
    goto LABEL_5;
  }

  v24 = sub_10004A05C();
  v25 = sub_100039308(v24);
  if ((v21 & 1) != (v26 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v25;
LABEL_5:
  v27 = *v6;
  if (v21)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v20);
    *(v28 + 8 * v20) = v31;
    sub_100011DB8();
  }

  else
  {
    sub_100049AA4();
    sub_10003E75C();
    sub_10003EA4C(v20, v1, v31, v27);
    sub_100011DB8();
  }
}

void sub_10003DE08()
{
  sub_100011DD0();
  v2 = v1;
  sub_100049CDC();
  v3 = type metadata accessor for UUID();
  v4 = sub_100011C54(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100049818();
  v7 = *v1;
  v8 = sub_100039668();
  sub_100049830(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  sub_10000FC6C(&qword_10009A9C8, &qword_100076B00);
  sub_100049C68();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    goto LABEL_5;
  }

  sub_10004A05C();
  v17 = sub_100039668();
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v17;
LABEL_5:
  v19 = *v2;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v13);
    *(v20 + 8 * v13) = v0;
    sub_100011DB8();
  }

  else
  {
    v23 = sub_10004A010();
    v24(v23);
    v25 = sub_100049BB0();
    sub_10003E94C(v25, v26, v0, v19);
    sub_100011DB8();
  }
}

void sub_10003DF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000391EC();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000FC6C(&qword_10009A988, &qword_100076AD8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000391EC();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_10003EA04(v16, a2, a3, a1, v21);
  }
}

void sub_10003E0A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s7SessionC8IdentityVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1000393BC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_10000FC6C(&qword_10009A7F0, &qword_1000769D8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v4;
  v21 = sub_1000393BC(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v4;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = a1;
  }

  else
  {
    sub_10003E75C();
    sub_10003EA4C(v18, v11, a1, v23);
  }
}

uint64_t sub_10003E268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000391EC();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000FC6C(&qword_10009A7F8, &qword_1000769E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000391EC();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_10003EA04(v16, a2, a3, a1, v21);
  }
}

uint64_t sub_10003E3A4()
{
  sub_100011DD0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  sub_100049EF4(v8, v6, v4);
  v11 = sub_1000391EC();
  sub_100049830(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_10000FC6C(&qword_10009A930, &qword_100076AA0);
  if (!sub_10004A178())
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_1000391EC();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    sub_100011DB8();
  }

  else
  {
    sub_10003EAF0(v16, v5, v3, v9, v7, v21);
    sub_100011DB8();
  }
}

uint64_t sub_10003E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v7 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(a1 + *(v7 + 20)));
  Hasher._combine(_:)(*(a1 + *(v7 + 24)));
  Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = _HashTable.nextHole(atOrAfter:)();
  *(a3 + 64 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
  v10 = *(a3 + 48);
  v11 = *(*(v7 - 8) + 72);
  result = sub_1000469E4();
  *(*(a3 + 56) + 8 * v9) = a2;
  ++*(a3 + 16);
  return result;
}

_OWORD *sub_10003E620(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011558(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10003E68C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100011558(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10003E708()
{
  v1 = sub_100049CDC();
  v3 = v2(v1);
  sub_100011D00(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10003E75C()
{
  sub_100049C50();
  v2 = v1(0);
  sub_100011D00(v2);
  v4 = *(v3 + 16);
  v5 = sub_100049A98();
  v6(v5);
  return v0;
}

unint64_t sub_10003E7B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10003E7F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  v9 = a4[7];
  v10 = *(*(_s7SessionC8IdentityVMa(0) - 8) + 72);
  result = sub_1000469E4();
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_10003E8E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v7 = a6[7] + 40 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_10003E94C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10003EA04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10003EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100049E34();
  v7 = v6;
  *(v8 + 8 * (v6 >> 6) + 64) |= 1 << v6;
  v9 = *(v8 + 48);
  v11 = v10(0);
  sub_1000499EC(v11);
  v13 = *(v12 + 72);
  result = sub_1000469E4();
  *(*(a4 + 56) + 8 * v7) = v4;
  v15 = *(a4 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v17;
  }

  return result;
}

unint64_t sub_10003EAF0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_10003EB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100038F28(*(a1 + 16), 0, &unk_10009AA98, &unk_100076BD0, &qword_10009A9E0, &qword_100076B18);
  v4 = *(sub_10000FC6C(&qword_10009A9E0, &qword_100076B18) - 8);
  v5 = sub_10004390C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_100048714();
  if (v5 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10003EC5C(void *a1, int64_t a2, char a3)
{
  result = sub_10003EDDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10003EC7C()
{
  v1 = *v0;
  sub_10003F5D0();
  *v0 = v2;
}

char *sub_10003ECBC(char *a1, int64_t a2, char a3)
{
  result = sub_10003EF0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003ECDC(char *a1, int64_t a2, char a3)
{
  result = sub_10003F024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ECFC(void *a1, int64_t a2, char a3)
{
  result = sub_10003F12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED1C(void *a1, int64_t a2, char a3)
{
  result = sub_10003F260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED3C(void *a1, int64_t a2, char a3)
{
  result = sub_10003F398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003ED5C(char *a1, int64_t a2, char a3)
{
  result = sub_10003F4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED7C(void *a1, int64_t a2, char a3)
{
  result = sub_10003F770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED9C(void *a1, int64_t a2, char a3)
{
  result = sub_10003F8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003EDBC(size_t a1, int64_t a2, char a3)
{
  result = sub_10003F9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003EDDC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AAE8, &qword_100076C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAF0, &qword_100076C20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003EF0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A9E8, &qword_100076B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003F024(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009AA28, &qword_100076B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F12C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AA40, &qword_100076B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA48, &qword_100076B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F260(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AA68, &qword_100076BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA58, &qword_100076B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F398(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AA80, &qword_100075A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA88, &qword_100076BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003F4C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009AA90, &qword_100076BC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10003F5D0()
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_100049D9C();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10000FC6C(v1, v2);
  v17 = sub_10000FC6C(v6, v4);
  sub_10001B8E8(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = sub_10000FC6C(v6, v4);
  sub_10004A0CC(v25);
  if (v10)
  {
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    sub_10003901C(v8 + v27, v15, v22 + v27, v6, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100011DB8();
}

void *sub_10003F770(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AAB0, &qword_100076BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAB8, &qword_100076BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F8A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FC6C(&qword_10009AA08, &qword_100076B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA10, &qword_100076B48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10003F9E0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000FC6C(&unk_10009A970, &qword_100076AC8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000390F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10003FB94(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 6)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA38, &qword_100076B70);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 4 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_10003C360(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1000391EC();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x800000010007B1D0;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10003FE68(uint64_t a1, char a2, uint64_t *a3)
{
  v36 = a3;
  v5 = 0;
  v30 = *(a1 + 16);
  for (i = 32; ; i += 80)
  {
    if (v30 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    v33 = __dst[3];
    v34 = __dst[4];
    v31 = __dst[1];
    v32 = __dst[2];
    v7 = __dst[0];
    sub_100048658();
    if (!*(&v7 + 1))
    {
    }

    __dst[0] = v31;
    __dst[1] = v32;
    __dst[2] = v33;
    __dst[3] = v34;
    v8 = *v36;
    v10 = sub_1000391EC();
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_20;
    }

    v14 = v9;
    if (v8[3] < v13)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA60, &qword_100076B98);
      _NativeDictionary.copy()();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *v36;
    v19[(v10 >> 6) + 8] |= 1 << v10;
    *(v19[6] + 16 * v10) = v7;
    v20 = (v19[7] + (v10 << 6));
    v21 = __dst[0];
    v22 = __dst[1];
    v23 = __dst[3];
    v20[2] = __dst[2];
    v20[3] = v23;
    *v20 = v21;
    v20[1] = v22;
    v24 = v19[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v19[2] = v26;
    ++v5;
    a2 = 1;
  }

  v15 = v36;
  sub_10003C5FC(v13, a2 & 1);
  v16 = *v15;
  v17 = sub_1000391EC();
  if ((v14 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v10 = v17;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000486AC(__dst);
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  v28._object = 0x800000010007B1D0;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v28);
  _print_unlocked<A, B>(_:_:)();
  v29._countAndFlagsBits = 39;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000401B0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1000391EC();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA78, &unk_100076BB0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v31 + 1;
    a2 = 1;
  }

  sub_10003C964(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1000391EC();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v27._object = 0x800000010007B1D0;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000404A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AAA8, &qword_100076BE0);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_10003CC18(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1000391EC();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x800000010007B1D0;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100040778(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA00, &qword_100076B38);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_10003CEB4(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1000391EC();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x800000010007B1D0;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_100040A5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v14 = _swiftEmptyArrayStorage;
      }

      else
      {
        v12 = sub_100049BB0();
        sub_10000FC6C(v12, v13);
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v14[2] = v11;
      }

      v15 = sub_100049BB0();
      v17 = sub_10000FC6C(v15, v16);
      sub_1000499EC(v17);
      v19[0] = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v19[1] = v11;
      a4(v19, v20, a1, v10);
      v14[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a5(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_100040BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v8 = *(*(v35 - 8) + 64);
  v9 = __chkstk_darwin(v35);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_100048658();
        sub_100048658();
        v24 = static Date.< infix(_:_:)();
        sub_100048978(v13, &qword_10009A850);
        result = sub_100048978(v17, &qword_10009A850);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_10004871C();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10004871C();
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100040DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v8 = *(*(v63 - 8) + 64);
  v9 = __chkstk_darwin(v63);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v62 = &v49 - v12;
  v13 = __chkstk_darwin(v11);
  v61 = &v49 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - v16;
  result = __chkstk_darwin(v15);
  v51 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v56 = -v22;
    v57 = v21;
    v24 = a1 - a3;
    v50 = v22;
    v25 = v21 + v22 * a3;
    v26 = &qword_100076B18;
    v59 = &v49 - v20;
    v60 = v17;
    while (2)
    {
      v54 = v23;
      v55 = a3;
      v52 = v25;
      v53 = v24;
      v27 = v24;
      while (1)
      {
        v64 = v27;
        v65 = v25;
        sub_100048658();
        sub_100048658();
        v28 = v61;
        sub_100048658();
        v29 = v63;
        v30 = *&v28[*(v63 + 48)];

        v31 = v26;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v33 = sub_100010F24(isa);

        v68 = 542327881;
        v69 = 0xE400000000000000;
        v70 = v33;
        v67 = sub_100010C84();
        v34._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v34);

        v35 = v68;
        v36 = v69;
        v66 = type metadata accessor for SidecarIdentity;
        sub_10003E708();
        v37 = v62;
        sub_100048658();
        v38 = *&v37[*(v29 + 48)];

        v39 = UUID._bridgeToObjectiveC()().super.isa;
        v40 = sub_100010F24(v39);

        v68 = 542327881;
        v69 = 0xE400000000000000;
        v70 = v40;
        v41._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v41);

        v43 = v68;
        v42 = v69;
        sub_10003E708();
        if (v35 == v43 && v36 == v42)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100048978(v60, &qword_10009A9E0);
        result = sub_100048978(v59, &qword_10009A9E0);
        v26 = v31;
        v46 = v64;
        v47 = v65;
        if (v45)
        {
          if (!v57)
          {
            __break(1u);
            return result;
          }

          sub_10004871C();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_10004871C();
          v23 += v56;
          v25 = v47 + v56;
          v48 = __CFADD__(v46, 1);
          v27 = v46 + 1;
          if (!v48)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_100048978(v60, &qword_10009A9E0);
      result = sub_100048978(v59, &qword_10009A9E0);
      v26 = v31;
LABEL_14:
      a3 = v55 + 1;
      v23 = v54 + v50;
      v24 = v53 - 1;
      v25 = v52 + v50;
      if (v55 + 1 != v51)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100041254(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v122 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v118 = *(v122 - 8);
  v8 = *(v118 + 64);
  v9 = __chkstk_darwin(v122);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v121 = &v106 - v12;
  v13 = __chkstk_darwin(v11);
  v124 = &v106 - v14;
  result = __chkstk_darwin(v13);
  v123 = &v106 - v16;
  v119 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_100:
    v124 = *v109;
    if (!v124)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v99 = v19 + 2;
      v100 = v19[2];
      while (v100 >= 2)
      {
        if (!*v119)
        {
          goto LABEL_139;
        }

        v101 = v19;
        v19 += 2 * v100;
        v102 = *v19;
        v103 = &v99[2 * v100];
        v104 = v103[1];
        sub_1000429EC(*v119 + *(v118 + 72) * *v19, *v119 + *(v118 + 72) * *v103, *v119 + *(v118 + 72) * v104, v124);
        if (v5)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_127;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_128;
        }

        *v19 = v102;
        v19[1] = v104;
        v105 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_129;
        }

        v100 = *v99 - 1;
        result = memmove(v103, v103 + 2, 16 * v105);
        *v99 = v100;
        v19 = v101;
      }
    }

LABEL_136:
    result = sub_100043770(v19);
    v19 = result;
    goto LABEL_102;
  }

  v106 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v110 = v19;
    if (v18 + 1 < v17)
    {
      v108 = v5;
      v22 = *v119;
      v23 = *(v118 + 72);
      v24 = v18;
      v25 = v18 + 1;
      v26 = *v119 + v23 * v21;
      v27 = v123;
      v19 = &qword_100076A20;
      v117 = v17;
      sub_100048658();
      v28 = v124;
      sub_100048658();
      LODWORD(v116) = static Date.< infix(_:_:)();
      sub_100048978(v28, &qword_10009A850);
      result = sub_100048978(v27, &qword_10009A850);
      v29 = v117;
      v107 = v24;
      v30 = v24 + 2;
      v120 = v23;
      v31 = v22 + v23 * (v24 + 2);
      while (1)
      {
        v32 = v30;
        if (v25 + 1 >= v29)
        {
          break;
        }

        ++v25;
        v33 = v123;
        v19 = &qword_100076A20;
        sub_100048658();
        v34 = v124;
        sub_100048658();
        v35 = static Date.< infix(_:_:)() & 1;
        sub_100048978(v34, &qword_10009A850);
        result = sub_100048978(v33, &qword_10009A850);
        v31 += v120;
        v26 += v120;
        v30 = v32 + 1;
        v29 = v117;
        if ((v116 & 1) != v35)
        {
          goto LABEL_9;
        }
      }

      v25 = v29;
LABEL_9:
      v5 = v108;
      if (v116)
      {
        v36 = v107;
        if (v25 < v107)
        {
          goto LABEL_133;
        }

        if (v107 >= v25)
        {
          v21 = v25;
          v19 = v110;
          v20 = v107;
          goto LABEL_32;
        }

        if (v29 >= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = v29;
        }

        v38 = v120 * (v37 - 1);
        v39 = v120 * v37;
        v40 = v107 * v120;
        v41 = v25;
        v19 = v110;
        do
        {
          if (v36 != --v41)
          {
            v42 = *v119;
            if (!*v119)
            {
              goto LABEL_140;
            }

            sub_10004871C();
            v43 = v40 < v38 || v42 + v40 >= v42 + v39;
            if (v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10004871C();
            v19 = v110;
          }

          ++v36;
          v38 -= v120;
          v39 -= v120;
          v40 += v120;
        }

        while (v36 < v41);
        v5 = v108;
        v21 = v25;
      }

      else
      {
        v21 = v25;
        v19 = v110;
      }

      v20 = v107;
    }

LABEL_32:
    v44 = v119[1];
    if (v21 < v44)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_132;
      }

      if (v21 - v20 < v106)
      {
        break;
      }
    }

LABEL_48:
    if (v21 < v20)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v117 = v21;
    if ((result & 1) == 0)
    {
      result = sub_100038BE8(0, v19[2] + 1, 1, v19);
      v19 = result;
    }

    v56 = v19[2];
    v55 = v19[3];
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_100038BE8((v55 > 1), v56 + 1, 1, v19);
      v19 = result;
    }

    v19[2] = v57;
    v58 = v19 + 4;
    v59 = &v19[2 * v56 + 4];
    v60 = v117;
    *v59 = v20;
    v59[1] = v60;
    v120 = *v109;
    if (!v120)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      while (1)
      {
        v61 = v57 - 1;
        v62 = &v58[2 * v57 - 2];
        v63 = &v19[2 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v64 = v19[4];
          v65 = v19[5];
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_68:
          if (v67)
          {
            goto LABEL_118;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_121;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_126;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v57 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v57 < 2)
        {
          goto LABEL_120;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_83:
        if (v82)
        {
          goto LABEL_123;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_125;
        }

        if (v89 < v81)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v61 - 1 >= v57)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v119)
        {
          goto LABEL_138;
        }

        v93 = v19;
        v94 = &v58[2 * v61 - 2];
        v95 = *v94;
        v19 = v61;
        v96 = &v58[2 * v61];
        v97 = v96[1];
        sub_1000429EC(*v119 + *(v118 + 72) * *v94, *v119 + *(v118 + 72) * *v96, *v119 + *(v118 + 72) * v97, v120);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_113;
        }

        v5 = v93[2];
        if (v19 > v5)
        {
          goto LABEL_114;
        }

        *v94 = v95;
        v94[1] = v97;
        if (v19 >= v5)
        {
          goto LABEL_115;
        }

        v57 = v5 - 1;
        result = memmove(v96, v96 + 2, 16 * (v5 - 1 - v19));
        v19 = v93;
        v93[2] = v5 - 1;
        v98 = v5 > 2;
        v5 = 0;
        if (!v98)
        {
          goto LABEL_97;
        }
      }

      v68 = &v58[2 * v57];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_116;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_117;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_119;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_122;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_130;
        }

        if (v66 < v92)
        {
          v61 = v57 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v119[1];
    v18 = v117;
    if (v117 >= v17)
    {
      goto LABEL_100;
    }
  }

  v45 = v20 + v106;
  if (__OFADD__(v20, v106))
  {
    goto LABEL_134;
  }

  if (v45 >= v44)
  {
    v45 = v119[1];
  }

  if (v45 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v45)
  {
    goto LABEL_48;
  }

  v107 = v20;
  v108 = v5;
  v46 = *(v118 + 72);
  v47 = *v119 + v46 * (v21 - 1);
  v48 = -v46;
  v49 = v20 - v21;
  v120 = *v119;
  v111 = v46;
  v112 = v45;
  v50 = v120 + v21 * v46;
LABEL_41:
  v116 = v47;
  v117 = v21;
  v114 = v50;
  v115 = v49;
  v51 = v50;
  while (1)
  {
    v52 = v123;
    sub_100048658();
    v53 = v124;
    sub_100048658();
    v54 = static Date.< infix(_:_:)();
    sub_100048978(v53, &qword_10009A850);
    result = sub_100048978(v52, &qword_10009A850);
    if ((v54 & 1) == 0)
    {
LABEL_46:
      v21 = v117 + 1;
      v47 = v116 + v111;
      v49 = v115 - 1;
      v50 = v114 + v111;
      if (v117 + 1 == v112)
      {
        v21 = v112;
        v20 = v107;
        v5 = v108;
        v19 = v110;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v120)
    {
      break;
    }

    sub_10004871C();
    swift_arrayInitWithTakeFrontToBack();
    sub_10004871C();
    v47 += v48;
    v51 += v48;
    v43 = __CFADD__(v49++, 1);
    if (v43)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_100041B80(uint64_t **a1, uint64_t a2, uint64_t (**a3)(), uint64_t a4)
{
  v154 = a4;
  v155 = a1;
  v5 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v165 = *(v5 - 8);
  v6 = *(v165 + 64);
  v7 = __chkstk_darwin(v5);
  v159 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v173 = &v151 - v10;
  v11 = __chkstk_darwin(v9);
  v175 = &v151 - v12;
  v13 = __chkstk_darwin(v11);
  v174 = &v151 - v14;
  v15 = __chkstk_darwin(v13);
  v176 = (&v151 - v16);
  v17 = __chkstk_darwin(v15);
  v19 = &v151 - v18;
  v20 = __chkstk_darwin(v17);
  v164 = &v151 - v21;
  v22 = __chkstk_darwin(v20);
  v163 = &v151 - v23;
  v24 = __chkstk_darwin(v22);
  v168 = &v151 - v25;
  v26 = __chkstk_darwin(v24);
  v167 = &v151 - v27;
  v28 = __chkstk_darwin(v26);
  result = __chkstk_darwin(v28);
  v166 = a3;
  v32 = a3[1];
  if (v32 < 1)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_114:
    v41 = *v155;
    if (!*v155)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v153 = &v151 - v30;
  v151 = v31;
  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v181 = v5;
  v177 = v19;
  while (1)
  {
    v35 = v33;
    v36 = v33 + 1;
    v156 = v33;
    if (v33 + 1 < v32)
    {
      v172 = v32;
      v152 = v34;
      v37 = *v166;
      v38 = *(v165 + 72);
      v34 = (*v166 + v38 * v36);
      v39 = v33;
      sub_100048658();
      v180 = v37;
      v40 = v39;
      v178 = v38;
      v41 = &qword_100076B18;
      v42 = v153;
      v43 = v151;
      sub_100048658();
      v44 = v169;
      LODWORD(v171) = sub_100037E2C();
      v169 = v44;
      if (v44)
      {
        sub_100048978(v43, &qword_10009A9E0);
        sub_100048978(v42, &qword_10009A9E0);
      }

      sub_100048978(v43, &qword_10009A9E0);
      result = sub_100048978(v42, &qword_10009A9E0);
      v45 = (v40 + 2);
      v46 = v178;
      v47 = v180 + v178 * (v40 + 2);
      v48 = v172;
      while (1)
      {
        v49 = v45;
        if (v36 + 1 >= v48)
        {
          break;
        }

        v180 = v45;
        v170 = v36;
        sub_100048658();
        sub_100048658();
        v50 = v163;
        sub_100048658();
        v51 = *&v50[*(v5 + 48)];

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v53 = sub_100010F24(isa);

        v182 = 542327881;
        v183 = 0xE400000000000000;
        v184 = v53;
        sub_100010C84();
        v54._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v54);

        v55 = v183;
        v179 = v182;
        sub_10003E708();
        v56 = v164;
        sub_100048658();
        v57 = *&v56[*(v5 + 48)];

        v58 = UUID._bridgeToObjectiveC()().super.isa;
        v59 = sub_100010F24(v58);

        v182 = 542327881;
        v183 = 0xE400000000000000;
        v184 = v59;
        v60._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v60);

        v62 = v182;
        v61 = v183;
        sub_10003E708();
        if (v179 == v62 && v55 == v61)
        {
          v64 = 0;
        }

        else
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v41 = &qword_100076B18;
        sub_100048978(v168, &qword_10009A9E0);
        result = sub_100048978(v167, &qword_10009A9E0);
        v65 = v171 ^ v64;
        v46 = v178;
        v47 += v178;
        v34 = (v34 + v178);
        v36 = v170 + 1;
        v49 = v180;
        v5 = v181;
        v45 = (v180 + 1);
        v48 = v172;
        if (v65)
        {
          goto LABEL_16;
        }
      }

      v36 = v48;
LABEL_16:
      if (v171)
      {
        v35 = v156;
        if (v36 < v156)
        {
          goto LABEL_149;
        }

        if (v156 >= v36)
        {
          v34 = v152;
          goto LABEL_39;
        }

        if (v48 >= v49)
        {
          v66 = v49;
        }

        else
        {
          v66 = v48;
        }

        v67 = v46 * (v66 - 1);
        v68 = v46 * v66;
        v69 = v156;
        v70 = v156 * v46;
        v71 = v36;
        do
        {
          if (v69 != --v36)
          {
            v72 = *v166;
            if (!*v166)
            {
              goto LABEL_154;
            }

            sub_10004871C();
            v73 = v70 < v67 || v72 + v70 >= v72 + v68;
            if (v73)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v67)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10004871C();
            v5 = v181;
            v46 = v178;
          }

          ++v69;
          v67 -= v46;
          v68 -= v46;
          v70 += v46;
        }

        while (v69 < v36);
        v34 = v152;
        v36 = v71;
      }

      else
      {
        v34 = v152;
      }

      v35 = v156;
    }

LABEL_39:
    v74 = v166[1];
    v41 = v176;
    if (v36 < v74)
    {
      if (__OFSUB__(v36, v35))
      {
        goto LABEL_146;
      }

      if (v36 - v35 < v154)
      {
        break;
      }
    }

LABEL_62:
    if (v36 < v35)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100038BE8(0, v34[2] + 1, 1, v34);
      v34 = result;
    }

    v101 = v34[2];
    v100 = v34[3];
    v102 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      result = sub_100038BE8((v100 > 1), v101 + 1, 1, v34);
      v34 = result;
    }

    v34[2] = v102;
    v41 = v34 + 4;
    v103 = &v34[2 * v101 + 4];
    *v103 = v156;
    v103[1] = v36;
    v104 = *v155;
    if (!*v155)
    {
      goto LABEL_155;
    }

    v170 = v36;
    if (v101)
    {
      while (1)
      {
        v105 = v102 - 1;
        v106 = &v41[2 * v102 - 2];
        v107 = &v34[2 * v102];
        if (v102 >= 4)
        {
          break;
        }

        if (v102 == 3)
        {
          v108 = v34[4];
          v109 = v34[5];
          v118 = __OFSUB__(v109, v108);
          v110 = v109 - v108;
          v111 = v118;
LABEL_82:
          if (v111)
          {
            goto LABEL_132;
          }

          v123 = *v107;
          v122 = v107[1];
          v124 = __OFSUB__(v122, v123);
          v125 = v122 - v123;
          v126 = v124;
          if (v124)
          {
            goto LABEL_135;
          }

          v127 = v106[1];
          v128 = v127 - *v106;
          if (__OFSUB__(v127, *v106))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v125, v128))
          {
            goto LABEL_140;
          }

          if (v125 + v128 >= v110)
          {
            if (v110 < v128)
            {
              v105 = v102 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v102 < 2)
        {
          goto LABEL_134;
        }

        v130 = *v107;
        v129 = v107[1];
        v118 = __OFSUB__(v129, v130);
        v125 = v129 - v130;
        v126 = v118;
LABEL_97:
        if (v126)
        {
          goto LABEL_137;
        }

        v132 = *v106;
        v131 = v106[1];
        v118 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v118)
        {
          goto LABEL_139;
        }

        if (v133 < v125)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v105 - 1 >= v102)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v166)
        {
          goto LABEL_152;
        }

        v137 = v34;
        v138 = &v41[2 * v105 - 2];
        v34 = *v138;
        v139 = &v41[2 * v105];
        v140 = v139[1];
        v141 = v169;
        sub_100042EA8(*v166 + *(v165 + 72) * *v138, *v166 + *(v165 + 72) * *v139, *v166 + *(v165 + 72) * v140, v104);
        v169 = v141;
        if (v141)
        {
        }

        if (v140 < v34)
        {
          goto LABEL_127;
        }

        v142 = v137[2];
        if (v105 > v142)
        {
          goto LABEL_128;
        }

        *v138 = v34;
        v138[1] = v140;
        if (v105 >= v142)
        {
          goto LABEL_129;
        }

        v102 = v142 - 1;
        result = memmove(&v41[2 * v105], v139 + 2, 16 * (v142 - 1 - v105));
        v34 = v137;
        v137[2] = v142 - 1;
        v5 = v181;
        if (v142 <= 2)
        {
          goto LABEL_111;
        }
      }

      v112 = &v41[2 * v102];
      v113 = *(v112 - 8);
      v114 = *(v112 - 7);
      v118 = __OFSUB__(v114, v113);
      v115 = v114 - v113;
      if (v118)
      {
        goto LABEL_130;
      }

      v117 = *(v112 - 6);
      v116 = *(v112 - 5);
      v118 = __OFSUB__(v116, v117);
      v110 = v116 - v117;
      v111 = v118;
      if (v118)
      {
        goto LABEL_131;
      }

      v119 = v107[1];
      v120 = v119 - *v107;
      if (__OFSUB__(v119, *v107))
      {
        goto LABEL_133;
      }

      v118 = __OFADD__(v110, v120);
      v121 = v110 + v120;
      if (v118)
      {
        goto LABEL_136;
      }

      if (v121 >= v115)
      {
        v135 = *v106;
        v134 = v106[1];
        v118 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v118)
        {
          goto LABEL_144;
        }

        if (v110 < v136)
        {
          v105 = v102 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v32 = v166[1];
    v33 = v170;
    if (v170 >= v32)
    {
      goto LABEL_114;
    }
  }

  v75 = (v35 + v154);
  if (__OFADD__(v35, v154))
  {
    goto LABEL_147;
  }

  if (v75 >= v74)
  {
    v75 = v166[1];
  }

  if (v75 < v35)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    result = sub_100043770(v34);
    v34 = result;
LABEL_116:
    v143 = v34 + 2;
    v144 = v34[2];
    while (v144 >= 2)
    {
      if (!*v166)
      {
        goto LABEL_153;
      }

      v145 = v34;
      v34 += 2 * v144;
      v146 = *v34;
      v147 = &v143[2 * v144];
      v148 = v147[1];
      v149 = v169;
      sub_100042EA8(*v166 + *(v165 + 72) * *v34, *v166 + *(v165 + 72) * *v147, *v166 + *(v165 + 72) * v148, v41);
      v169 = v149;
      if (v149)
      {
        break;
      }

      if (v148 < v146)
      {
        goto LABEL_141;
      }

      if (v144 - 2 >= *v143)
      {
        goto LABEL_142;
      }

      *v34 = v146;
      v34[1] = v148;
      v150 = *v143 - v144;
      if (*v143 < v144)
      {
        goto LABEL_143;
      }

      v144 = *v143 - 1;
      result = memmove(v147, v147 + 2, 16 * v150);
      *v143 = v144;
      v34 = v145;
    }
  }

  if (v36 == v75)
  {
    goto LABEL_62;
  }

  v152 = v34;
  v76 = *v166;
  v77 = *(v165 + 72);
  v78 = *v166 + v77 * (v36 - 1);
  v171 = -v77;
  v172 = v76;
  v79 = v35 - v36;
  v157 = v77;
  v80 = v76 + v36 * v77;
  v158 = v75;
LABEL_48:
  v170 = v36;
  v160 = v80;
  v161 = v79;
  v81 = v79;
  v162 = v78;
  while (1)
  {
    v178 = v80;
    v179 = v81;
    sub_100048658();
    sub_100048658();
    v82 = v174;
    sub_100048658();
    v83 = *&v82[*(v5 + 48)];

    v84 = UUID._bridgeToObjectiveC()().super.isa;
    v85 = sub_100010F24(v84);

    v182 = 542327881;
    v183 = 0xE400000000000000;
    v184 = v85;
    sub_100010C84();
    v86._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v86);

    v88 = v182;
    v87 = v183;
    v180 = type metadata accessor for SidecarIdentity;
    sub_10003E708();
    v89 = v175;
    sub_100048658();
    v90 = *&v89[*(v181 + 48)];

    v91 = UUID._bridgeToObjectiveC()().super.isa;
    v92 = sub_100010F24(v91);

    v182 = 542327881;
    v183 = 0xE400000000000000;
    v184 = v92;
    v93._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v93);

    v95 = v182;
    v94 = v183;
    sub_10003E708();
    if (v88 == v95 && v87 == v94)
    {

      v41 = v176;
      sub_100048978(v176, &qword_10009A9E0);
      sub_100048978(v177, &qword_10009A9E0);
LABEL_59:
      v5 = v181;
LABEL_60:
      v36 = v170 + 1;
      v78 = v162 + v157;
      v79 = v161 - 1;
      v80 = v160 + v157;
      if ((v170 + 1) == v158)
      {
        v36 = v158;
        v34 = v152;
        v35 = v156;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v176;
    sub_100048978(v176, &qword_10009A9E0);
    result = sub_100048978(v177, &qword_10009A9E0);
    if ((v97 & 1) == 0)
    {
      goto LABEL_59;
    }

    v5 = v181;
    v98 = v179;
    if (!v172)
    {
      break;
    }

    v99 = v178;
    sub_10004871C();
    swift_arrayInitWithTakeFrontToBack();
    sub_10004871C();
    v78 += v171;
    v80 = v99 + v171;
    v73 = __CFADD__(v98, 1);
    v81 = v98 + 1;
    if (v73)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}