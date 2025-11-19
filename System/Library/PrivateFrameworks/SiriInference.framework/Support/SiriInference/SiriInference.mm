uint64_t sub_100001BD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100001C38(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1000021B0(a1, a2, (a3 + 16));

  objc_autoreleasePoolPop(v6);
}

void sub_100001CA8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 eventBody]) != 0)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    objc_allocWithZone(type metadata accessor for AppIntentProcessor());
    swift_unknownObjectRetain();
    v10 = AppIntentProcessor.init(event:)();
    [a2 addOperation:v10];

    swift_beginAccess();
    v11 = *(a3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v13;
      objc_autoreleasePoolPop(v9);
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      aBlock[4] = sub_100005D18;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004DB8;
      aBlock[3] = &unk_10001CE68;
      v15 = _Block_copy(aBlock);
      v16 = v8;

      [a2 addOperationWithBlock:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1000210B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002B54(v17, qword_100021A60);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      aBlock[6] = a1;
      swift_unknownObjectRetain();
      v21 = String.init<A>(describing:)();
      v23 = sub_100004694(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v18, "cannot process AppIntent event:\nevent=%s", v19, 0xCu);
      sub_100004758(v20);
    }

    else
    {
    }
  }
}

uint64_t sub_100001FD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002014(void *a1)
{
  result = sub_100005D20(a1);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    type metadata accessor for SignalRepository();
    static SignalRepository.shared.getter();
    sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
    v5 = type metadata accessor for SignalCachingStrategyOption();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000142C0;
    v10 = (v9 + v8);
    *v10 = v3;
    v10[1] = v4;
    v11 = *(v6 + 104);
    (v11)(v10, enum case for SignalCachingStrategyOption.perAppIntentEvent(_:), v5);
    v12 = (v10 + v7);
    *v12 = 0x6E65746E49707041;
    v12[1] = 0xE900000000000074;
    v11();
    sub_100002704(v9);
    dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();
  }

  return result;
}

void sub_1000021B0(void *a1, void *a2, void *a3)
{
  if (([a1 respondsToSelector:"eventBody"] & 1) == 0)
  {
    __break(1u);
    return;
  }

  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    objc_allocWithZone(type metadata accessor for BiomeSiriUIProcessor());
    v8 = v7;
    v9 = BiomeSiriUIProcessor.init(siriUIEvent:)();
    [a2 addOperation:v9];

    swift_beginAccess();
    if (!__OFADD__(*a3, 1))
    {
      ++*a3;
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1000210C8 != -1)
  {
LABEL_10:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002B54(v10, qword_100021AA8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fail to derive proper BMSiriUI event", v13, 2u);
  }
}

uint64_t sub_1000023B0(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v21)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriRemembers25SiriRemembersXPCInterface_];
      [a2 setExportedInterface:v6];

      v7 = [objc_allocWithZone(type metadata accessor for SiriRemembersService()) init];
      [a2 setExportedObject:v7];

      [a2 resume];
      if (qword_1000210C0 != -1)
      {
        sub_100010BB0();
      }

      v8 = type metadata accessor for Logger();
      sub_100002B54(v8, qword_100021A90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      *v11 = 67240192;
      v11[1] = v3;
      sub_100002C30(&_mh_execute_header, v12, v13, "process [%{public}d] is connected to siriinferenced");
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    sub_100010B48(v24);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0();
  }

  v15 = type metadata accessor for Logger();
  sub_100002B54(v15, qword_100021A90);
  v9 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v16))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v17 = swift_slowAlloc();
  *v17 = 67240192;
  v17[1] = v3;
  sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v14 = 0;
LABEL_16:

LABEL_18:

  return v14;
}

uint64_t sub_1000026A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002704(uint64_t a1)
{
  v2 = type metadata accessor for SignalCachingStrategyOption();
  v3 = sub_100002BB8(v2);
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

  sub_1000045B0(&qword_1000212C8, &qword_100014320);
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
    sub_100005DF8();
    sub_100005D84(&qword_1000212D0, v19);
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
      sub_100005DF8();
      sub_100005D84(&qword_1000212D8, v27);
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

uint64_t sub_100002A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002A94(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_1000212B8, "B%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100002AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersService();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002B8C()
{
}

uint64_t sub_100002BCC()
{
}

uint64_t sub_100002C10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_100002C30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 8u);
}

void sub_100002CD4(uint64_t a1, uint64_t a2, void (**a3)(void, uint64_t))
{
  v30 = a3;
  v3 = type metadata accessor for UserDonator();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionStore();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Donation();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002B54(v15, qword_100021A60);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "saving donation to InteractionStore", v18, 2u);
  }

  type metadata accessor for ActivityHeartbeat();
  static ActivityHeartbeat.instance.getter();
  dispatch thunk of ActivityHeartbeat.keepAlive()();

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000031F8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  Donation.userDonator.getter();
  static InteractionStore.viewService(user:)();
  (*(v28 + 8))(v6, v3);
  Donation.donateToSiriRemembersView(_:)();
  v25 = v30;
  v30[2](v30, 1);
  sub_10000A4BC(v19, v21);
  (*(v26 + 8))(v10, v27);
  (*(v29 + 8))(v14, v11);
  _Block_release(v25);
}

unint64_t sub_1000031F8()
{
  result = qword_100021820;
  if (!qword_100021820)
  {
    type metadata accessor for Donation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021820);
  }

  return result;
}

uint64_t sub_100003264()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000032DC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000B10C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000B148(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000034D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100003520()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003558()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003594()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000035DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  __chkstk_darwin(v3);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  __chkstk_darwin(v8);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v78 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v76 = &v75 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v75 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v75 - v22;
  __chkstk_darwin(v21);
  v25 = &v75 - v24;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v75 = v20;
  v26 = sub_100002B54(v11, qword_100021A90);
  v28 = v12 + 2;
  v27 = v12[2];
  v77 = v26;
  v93 = v27;
  (v27)(v25);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "starting siriinferenced...", v31, 2u);
  }

  v33 = v12[1];
  v32 = v12 + 1;
  v92 = v33;
  v33(v25, v11);
  v34 = type metadata accessor for Signpost();
  sub_10000454C(v34, qword_1000219F8);
  v79 = v34;
  v35 = sub_100002B54(v34, qword_1000219F8);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  sub_10000A988("StartDaemon", 11, 2, qword_100021A58, v35);
  sub_100008DF0();
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v36 = sub_100002B54(v11, qword_100021A60);
  v91 = v28;
  v93(v23, v36, v11);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = sub_100004E30(v38);
  v90 = v32;
  v80 = v35;
  if (v39)
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    *v35 = 136315138;
    *(v35 + 4) = sub_100004694(0xD000000000000022, 0x8000000100014760, &aBlock);
    sub_100004DF8(&_mh_execute_header, v40, v38, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();
  }

  v92(v23, v11);
  sub_10000464C(0, &qword_1000210D0, NSXPCListener_ptr);
  qword_100021A10 = sub_1000042CC();
  v41 = &OS_xpc_object__prots;
  qword_100021A18 = [objc_allocWithZone(type metadata accessor for SiriRemembersServiceDelegate()) init];
  [qword_100021A10 setDelegate:qword_100021A18];
  [qword_100021A10 resume];
  v42 = v75;
  v93(v75, v36, v11);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (sub_100004E30(v44))
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    *v42 = 136315138;
    *(v42 + 4) = sub_100004694(0xD000000000000018, 0x8000000100014740, &aBlock);
    sub_100004DF8(&_mh_execute_header, v45, v44, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();

    v46 = v42;
    v41 = &OS_xpc_object__prots;
  }

  else
  {

    v46 = v42;
  }

  v92(v46, v11);
  qword_100021A20 = sub_1000042CC();
  qword_100021A28 = [objc_allocWithZone(type metadata accessor for SiriInferenceServiceDelegate()) v41[309].count];
  [qword_100021A20 setDelegate:qword_100021A28];
  [qword_100021A20 resume];
  v47 = v76;
  v93(v76, v36, v11);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (sub_100004E30(v49))
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    LODWORD(SiriSignalsServiceDelegate.name) = 136315138;
    *(&SiriSignalsServiceDelegate.name + 4) = sub_100004694(0xD000000000000020, 0x8000000100014790, &aBlock);
    sub_100004DF8(&_mh_execute_header, v50, v49, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();
  }

  v92(v47, v11);
  qword_100021A30 = sub_1000042CC();
  qword_100021A38 = [objc_allocWithZone(type metadata accessor for SiriSignalsServiceDelegate()) v41[309].count];
  [qword_100021A30 setDelegate:qword_100021A38];
  [qword_100021A30 resume];
  type metadata accessor for BackgroundQueue();
  v51 = static BackgroundQueue.shared.getter();
  v98 = sub_100004340;
  v99 = 0;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100004DB8;
  v97 = &unk_10001CD00;
  v52 = _Block_copy(&aBlock);
  [v51 addOperationWithBlock:v52];
  _Block_release(v52);

  v53 = SIG_IGN.getter();
  signal(15, v53);
  v54 = v78;
  v93(v78, v77, v11);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (sub_100004E30(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "starting BackgroundManager", v57, 2u);
    sub_100002B8C();
  }

  v92(v54, v11);
  v58 = qword_100021A58;
  v59 = v81;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100014280;
  v61 = StaticString.description.getter();
  v63 = v62;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = sub_1000045F8();
  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  type metadata accessor for BackgroundManager();
  swift_allocObject();
  v64 = sub_100006438(0, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v82 + 8))(v59, v83);
  qword_100021A40 = v64;
  sub_10000464C(0, &qword_1000210E8, OS_dispatch_source_ptr);
  sub_10000464C(0, &qword_1000210F0, OS_dispatch_queue_ptr);
  v65 = static OS_dispatch_queue.main.getter();
  v66 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_100021A48 = v66;
  swift_getObjectType();
  v98 = sub_100004344;
  v99 = 0;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100004DB8;
  v97 = &unk_10001CD28;
  v67 = _Block_copy(&aBlock);
  v68 = v84;
  static DispatchQoS.unspecified.getter();
  v69 = v86;
  sub_1000044C4();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v67);
  (*(v88 + 8))(v69, v89);
  (*(v85 + 8))(v68, v87);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  sub_100009020(qword_100021A40);
  static os_signpost_type_t.end.getter();
  v70 = *(v79 + 20);
  v71 = *(v80 + *(v79 + 24));
  v72 = *(v80 + v70);
  v73 = *(v80 + v70 + 8);
  v74 = *(v80 + v70 + 16);
  os_signpost(_:dso:log:name:signpostID:)();
  dispatch_main();
}

id sub_1000042CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_100004344()
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "got SIGTERM signal", v3, 2u);
  }

  type metadata accessor for BackgroundQueue();
  v4 = static BackgroundQueue.shared.getter();
  [v4 cancelAllOperations];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "cancelled BackgroundQueue ops, calling xpc_transaction_exit_clean", v7, 2u);
  }

  return _xpc_transaction_exit_clean();
}

uint64_t sub_1000044C4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100004CB0();
  sub_1000045B0(&qword_100021168, &qword_1000142A0);
  sub_100004D08();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t *sub_10000454C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000045B0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000045F8()
{
  result = qword_1000210E0;
  if (!qword_1000210E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210E0);
  }

  return result;
}

uint64_t sub_10000464C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000047A4(v11, 0, 0, 1, a1, a2);
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
    sub_1000048A4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100004758(v11);
  return v7;
}

uint64_t sub_100004758(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000047A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004900(a5, a6);
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

uint64_t sub_1000048A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100004900(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000494C(a1, a2);
  sub_100004A64(&off_10001CCD8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000494C(uint64_t a1, unint64_t a2)
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
    result = sub_100004B48(v5, 0);
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

uint64_t sub_100004A64(uint64_t result)
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

    result = sub_100004BB8(result, v8, 1, v3);
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

void *sub_100004B48(uint64_t a1, uint64_t a2)
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

  sub_1000045B0(&qword_1000210F8, &qword_100014298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100004BB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000045B0(&qword_1000210F8, &qword_100014298);
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

unint64_t sub_100004CB0()
{
  result = qword_100021160;
  if (!qword_100021160)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021160);
  }

  return result;
}

unint64_t sub_100004D08()
{
  result = qword_100021170;
  if (!qword_100021170)
  {
    sub_100004D6C(&qword_100021168, &qword_1000142A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021170);
  }

  return result;
}

uint64_t sub_100004D6C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004DC0()
{
  sub_100004758(v0);
  v2 = *(v1 - 184);
}

void sub_100004DF8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t sub_100004E14()
{

  return swift_slowAlloc();
}

BOOL sub_100004E30(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100004E48(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002B54(v6, qword_100021A60);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing BiomeMonitorAppIntent", v9, 2u);
  }

  *(v3 + 24) = a2;

  sub_100004F8C(a1);
  v11 = v10;

  v12 = *(v3 + 16);
  *(v3 + 16) = v11;

  return v3;
}

void sub_100004F8C(void *a1)
{
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100002BB8(v26);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002BA8();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100002BA8();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002B54(v13, qword_100021A60);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Registering AppIntentBiomeMonitor", v16, 2u);
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_100005E10();
  sub_100005D84(v17, v18);
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  sub_100005E28();
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = objc_allocWithZone(BMBiomeScheduler);
  v21 = sub_100005E28();
  v23 = sub_100012C18(v21, v22, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = objc_autoreleasePoolPush();
  sub_1000052C8(v23, a1, v24, &v29);
  objc_autoreleasePoolPop(v25);
  if (v28)
  {

    __break(1u);
  }

  else
  {
  }
}

void sub_1000052C8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v9 = [v8 Intent];
  swift_unknownObjectRelease();
  v10 = [v9 DSLPublisher];

  v11 = [v10 subscribeOn:a1];
  v28 = sub_100005638;
  v29 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100011DF0;
  v27 = &unk_10001CDC8;
  v12 = _Block_copy(&v24);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v28 = sub_10000200C;
  v29 = v13;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100001BD8;
  v27 = &unk_10001CE18;
  v14 = _Block_copy(&v24);
  v15 = a2;

  v16 = [v11 sinkWithCompletion:v12 receiveInput:v14];
  _Block_release(v14);
  _Block_release(v12);

  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100002B54(v17, qword_100021A60);

  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    v23 = [v18 status];
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = *(a3 + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "AppIntentBiomeMonitor status=%@ fetchedEvents=%ld", v21, 0x16u);
    sub_100002A94(v22);
  }

  else
  {
  }

  *a4 = v18;
}

void sub_100005638(void *a1)
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A60);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "BiomeMonitorAppIntent is done: %@", v5, 0xCu);
    sub_100002A94(v6);
  }
}

void sub_100005774()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100002BB8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002BA8();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100002BA8();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002B54(v13, qword_100021A60);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Deregistering AppIntentBiomeMonitor", v16, 2u);
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100005E10();
  sub_100005D84(v17, v18);
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  sub_100005E28();
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = objc_allocWithZone(BMBiomeScheduler);
  v21 = sub_100005E28();
  v23 = sub_100012C18(v21, v22, v19);
  v24 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v25 = [v24 Intent];
  swift_unknownObjectRelease();
  v26 = [v25 DSLPublisher];

  v27 = [v26 subscribeOn:v23];
  v35 = nullsub_1;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100011DF0;
  v34 = &unk_10001CD50;
  v28 = _Block_copy(&aBlock);
  v35 = nullsub_1;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100001BD8;
  v34 = &unk_10001CD78;
  v29 = _Block_copy(&aBlock);
  v30 = [v27 sinkWithCompletion:v28 receiveInput:v29];
  _Block_release(v29);
  _Block_release(v28);

  [v30 cancel];
}

uint64_t sub_100005BF0()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_100005C18()
{
  sub_100005BF0();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100005C70()
{
  result = qword_1000210F0;
  if (!qword_1000210F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000210F0);
  }

  return result;
}

unint64_t sub_100005CB4()
{
  result = qword_1000212B0;
  if (!qword_1000212B0)
  {
    sub_100004D6C(&qword_100021530, &qword_1000146E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212B0);
  }

  return result;
}

uint64_t sub_100005D20(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100005D84(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100005E34()
{
  v0 = type metadata accessor for DASActivity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - v7;
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  type metadata accessor for AppSelectionActivationFlag();
  if (static AppSelectionActivationFlag.notHomePodOrIsActive.getter())
  {
    type metadata accessor for SignalRepository();
    static SignalRepository.shared.getter();
    DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
    v11 = sub_100008768(0, 1, 1, &_swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_100008768((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    (*(v1 + 32))(&v11[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13], v10, v0);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_100008768(0, *(v11 + 2) + 1, 1, v11);
  }

  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = sub_100008768((v14 > 1), v15 + 1, 1, v11);
  }

  *(v11 + 2) = v15 + 1;
  v18 = *(v1 + 32);
  v17 = v1 + 32;
  v16 = v18;
  v19 = (*(v17 + 48) + 32) & ~*(v17 + 48);
  v20 = *(v17 + 40);
  v18(&v11[v19 + v20 * v15], v8, v0);
  DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
  v22 = *(v11 + 2);
  v21 = *(v11 + 3);
  if (v22 >= v21 >> 1)
  {
    v11 = sub_100008768((v21 > 1), v22 + 1, 1, v11);
  }

  *(v11 + 2) = v22 + 1;
  v16(&v11[v19 + v22 * v20], v5, v0);
  return v11;
}

uint64_t sub_1000061F0()
{
  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
  v0 = type metadata accessor for SignalCachingStrategyOption();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014280;
  (*(v1 + 104))(v4 + v3, enum case for SignalCachingStrategyOption.perDay(_:), v0);
  sub_100002704(v4);
  dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();
}

uint64_t sub_100006318()
{
  v0 = type metadata accessor for AudioAppSignalsSyncer.SyncTrigger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioAppSignalsSyncer();
  AudioAppSignalsSyncer.__allocating_init()();
  (*(v1 + 104))(v4, enum case for AudioAppSignalsSyncer.SyncTrigger.timer(_:), v0);
  dispatch thunk of AudioAppSignalsSyncer.syncAudioAppSignals(bypassMinSyncDuration:trigger:completion:)();

  return (*(v1 + 8))(v4, v0);
}

uint64_t *sub_100006438(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v2[3] = 0;
  v7 = dispatch_semaphore_create(1);
  v2[5] = 0xD00000000000003ELL;
  v2[6] = 0x80000001000149E0;
  *(v2 + 16) = a2;
  v8 = v2[3];
  v2[3] = a1;
  v2[4] = v7;

  if (a2)
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v9 = sub_100005E34();
  }

  v2[7] = v9;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v10 = type metadata accessor for Logger();
  sub_100008C68(v10, qword_100021A78);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = v3[7];
    type metadata accessor for DASActivity();

    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_100004694(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "BackgroundManager: created DAS Activities  %s", v13, 0xCu);
    sub_100004758(v14);
    sub_100008B78();
    sub_100002BCC();
  }

  if (a1)
  {
  }

  else
  {
    sub_100006648();
  }

  return v3;
}

void sub_100006648()
{
  v2 = *(v0 + 32);
  OS_dispatch_semaphore.wait()();
  v1 = AFPreferencesAssistantEnabled() != 0;
  sub_1000066B4(v1);
  OS_dispatch_semaphore.signal()();
}

void sub_1000066B4(char a1)
{
  v3 = v2;
  v5 = a1 & 1;
  v6 = *v3;
  v7 = sub_1000045B0(&qword_100021500, "2%");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for DASActivity();
  v12 = sub_100008C18(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  if ((*(v3 + 24) == 0) != v5)
  {
    if (a1)
    {
      if (qword_1000210B8 != -1)
      {
        sub_100008B58();
      }

      v22 = type metadata accessor for Logger();
      sub_100008C68(v22, qword_100021A78);
      v66 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (!sub_100008C30(v23))
      {
        goto LABEL_21;
      }

      *sub_100008BB0() = 0;
      v26 = "Siri is already on. skipping.";
    }

    else
    {
      if (qword_1000210B8 != -1)
      {
        sub_100008B58();
      }

      v41 = type metadata accessor for Logger();
      sub_100008C68(v41, qword_100021A78);
      v66 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (!sub_100008C30(v42))
      {
        goto LABEL_21;
      }

      *sub_100008BB0() = 0;
      v26 = "Siri is already off. skipping.";
    }

    sub_100008C98(&_mh_execute_header, v24, v25, v26);
    sub_100008B78();
LABEL_21:
    sub_100008C80();

    return;
  }

  if (a1)
  {
    if (qword_1000210B8 != -1)
    {
      sub_100008B58();
    }

    v27 = type metadata accessor for Logger();
    sub_100008C68(v27, qword_100021A78);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (sub_100004E30(v29))
    {
      *sub_100008BB0() = 0;
      sub_100008C4C(&_mh_execute_header, v30, v29, "Siri is on. Enabling background tasks...");
      sub_100002BCC();
    }

    v31 = *(v3 + 16);
    type metadata accessor for BackgroundManager.Inner();
    v32 = swift_allocObject();
    sub_100007E74(v31);
    v33 = *(v3 + 24);
    *(v3 + 24) = v32;

    sub_100007D68();
    sub_100007A54();
    v34 = *(v3 + 56);
    v35 = *(v34 + 16);
    if (v35)
    {
      v38 = *(v14 + 16);
      v37 = v14 + 16;
      v36 = v38;
      v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v40 = *(v37 + 56);
      do
      {
        v36(v21, v39, v1);
        DASActivity.registerAndSubmit()();
        (*(v37 - 8))(v21, v1);
        v39 += v40;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    if (qword_1000210B8 != -1)
    {
      sub_100008B58();
    }

    v45 = type metadata accessor for Logger();
    v65 = sub_100002B54(v45, qword_100021A78);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (sub_100004E30(v47))
    {
      v48 = sub_100008BB0();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Siri is off. Disabling background tasks and deleting data...", v48, 2u);
      sub_100008B78();
    }

    v49 = *(v3 + 24);
    if (v49 && *(v49 + 32))
    {
      type metadata accessor for RolloutsAnalyticsActivity();

      static RolloutsAnalyticsActivity.deregister(analyticsManager:)();

      v50 = *(v3 + 24);
    }

    *(v3 + 24) = 0;

    type metadata accessor for AppIntentBiomeMonitor();
    sub_100005774();
    type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
    static SiriRemembersDonationFromAppIntentsListener.stop()();
    type metadata accessor for SiriUIBiomeMonitor();
    static SiriUIBiomeMonitor.deregister()();
    v51 = *(v3 + 40);
    v52 = *(v3 + 48);
    v66 = v6;
    sub_100006C30(v51, v52);
    sub_100007D68();
    v53 = *(v3 + 56);
    v54 = *(v53 + 16);
    if (v54)
    {
      v57 = *(v14 + 16);
      v56 = v14 + 16;
      v55 = v57;
      v58 = v53 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v59 = *(v56 + 56);
      do
      {
        v55(v19, v58, v1);
        DASActivity.unregister(cancel:)(1);
        (*(v56 - 8))(v19, v1);
        v58 += v59;
        --v54;
      }

      while (v54);
    }

    type metadata accessor for BackgroundQueue();
    v60 = static BackgroundQueue.shared.getter();
    dispatch thunk of BackgroundQueue.pause()();

    v61 = v65;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    if (sub_100008BC8(v63))
    {
      v64 = sub_100008BB0();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v61, "paused operations on the BackgroundQueue, deleting SiriRemembersDB and RunTimeDataDB", v64, 2u);
      sub_100008B78();
    }

    sub_10000700C();
    static RunTimeDataDB.defaultURL.getter();
    sub_1000072A8(v10);
    sub_100008A24(v10);
  }

  sub_100008C80();
}

void sub_100006C30(uint64_t a1, unint64_t a2)
{
  LOBYTE(v25) = 1;
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v25];

  if (!v6)
  {
LABEL_8:

    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v26 = 0;
  v8 = [v4 removeItemAtPath:v7 error:&v26];

  if (v8)
  {
    v9 = qword_1000210B8;
    v10 = v26;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002B54(v11, qword_100021A78);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100004694(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Deleted at location: %{public}s", v14, 0xCu);
      sub_100004758(v15);
    }

    goto LABEL_8;
  }

  v16 = v26;
  v17 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1000210B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100002B54(v18, qword_100021A78);

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100004694(a1, a2, &v26);
    *(v21 + 12) = 2082;
    v25 = v17;
    swift_errorRetain();
    sub_1000045B0(&qword_100021508, &qword_1000143C0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100004694(v22, v23, &v26);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "could not delete at\nlocation: %{public}s\nerror: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10000700C()
{
  static InteractionStore.delete()();
  if (qword_1000210B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A78);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Succeed to delete the InteractionStore", v2, 2u);
  }
}

void sub_1000072A8(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021500, "2%");
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v42 - v8;
  __chkstk_darwin(v7);
  v11 = (v42 - v10);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v42 - v18;
  sub_100008A8C(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v11;
    v43 = *v11;
    sub_1000045B0(&qword_100021508, &qword_1000143C0);
    swift_willThrowTypedImpl();
    if (qword_1000210B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002B54(v21, qword_100021A78);
    sub_100008A8C(a1, v9);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v24 = 136446466;
      sub_100008A8C(v9, v6);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_100008A24(v9);
      v28 = sub_100004694(v25, v27, &v43);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v42[2] = v20;
      swift_errorRetain();
      sub_1000045B0(&qword_100021508, &qword_1000143C0);
      v29 = String.init<A>(describing:)();
      v31 = sub_100004694(v29, v30, &v43);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "could not delete URL\nurl=%{public}s\nerror=%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100008A24(v9);
    }
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    sub_100012CC4();
    if (qword_1000210B8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100002B54(v32, qword_100021A78);
    (*(v13 + 16))(v17, v19, v12);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      v43 = v42[0];
      *v35 = 136446210;
      sub_100008AFC();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v39 = *(v13 + 8);
      v39(v17, v12);
      v40 = sub_100004694(v36, v38, &v43);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "deleted URL %{public}s", v35, 0xCu);
      sub_100004758(v42[0]);

      v39(v19, v12);
    }

    else
    {

      v41 = *(v13 + 8);
      v41(v17, v12);
      v41(v19, v12);
    }
  }
}

void sub_100007834()
{
  if (*(v0 + 24))
  {
    type metadata accessor for BackgroundManager.Inner();
    v1 = sub_100008C0C();
    sub_100007878(v1, v2);
  }
}

void sub_100007878(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() appIntentsStream];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 name];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {

    goto LABEL_15;
  }

  sub_100008C0C();
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_15:
    sub_1000080C8();
    return;
  }

  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v12 = type metadata accessor for Logger();
  sub_100008C68(v12, qword_100021A78);

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v14 = 136446210;
    v15 = sub_100008C0C();
    *(v14 + 4) = sub_100004694(v15, v16, v17);
    _os_log_impl(&_mh_execute_header, oslog, v13, "_DKKnowledgeStorageDidTombstoneEvents noop. stream=%{public}s", v14, 0xCu);
    sub_100004758(v19);
    sub_100002BCC();
    sub_100008B78();
  }
}

void sub_100007A54()
{
  v1 = type metadata accessor for XPCActivity.RepeatInterval();
  v2 = sub_100008C18(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v9 = type metadata accessor for Logger();
  sub_100002B54(v9, qword_100021A78);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (sub_100004E30(v11))
  {
    v12 = sub_100008BB0();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "registering XPC activities", v12, 2u);
    sub_100008B78();
  }

  static XPCActivity.registerFirstBoot()();
  type metadata accessor for AppSelectionActivationFlag();
  if (static AppSelectionActivationFlag.notHomePodOrIsActive.getter())
  {
    static XPCActivity.registerDailyTaskSuccessEvaluation()();
    static XPCActivity.registerUserEngagementSignalCollection()();
    type metadata accessor for HolidaysDBUpdater();
    static HolidaysDBUpdater.metricName.getter();
    StaticString.description.getter();
    v13 = enum case for XPCActivity.RepeatInterval.everyDay(_:);
    v14 = *(v4 + 104);
    v14(v8, enum case for XPCActivity.RepeatInterval.everyDay(_:), v0);
    sub_100008BE4();

    v15 = *(v4 + 8);
    v16 = sub_100008C0C();
    v15(v16);
    type metadata accessor for ProcessUnstitchedIntents();
    static ProcessUnstitchedIntents.metricName.getter();
    StaticString.description.getter();
    v14(v8, v13, v0);
    sub_100008BE4();

    v17 = sub_100008C0C();
    v15(v17);
    static ScrubInteractionStore.register()();
    static SiriRemembersBiomeEventBackfiller.register()();
    static SiriSuggestionsBiomeEventBackFiller.register()();
    sub_100008C80();
  }

  else
  {
    v23[1] = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (sub_100008C30(v18))
    {
      *sub_100008BB0() = 0;
      sub_100008C98(&_mh_execute_header, v19, v20, "BackgroundManager: Suppressing some activities that wake the daemon on HomePod.");
      sub_100008B78();
    }

    sub_100008C80();
  }
}

uint64_t sub_100007D2C()
{
  v0 = objc_allocWithZone(type metadata accessor for ProcessUnstitchedIntents());
  swift_unknownObjectRetain();
  return ProcessUnstitchedIntents.init(activity:)();
}

uint64_t sub_100007D68()
{
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A78);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008BC8(v2))
  {
    *sub_100008BB0() = 0;
    sub_100008B90(&_mh_execute_header, v3, v4, "unregistering XPC activities");
    sub_100008B78();
  }

  type metadata accessor for ProcessUnstitchedIntents();
  static ProcessUnstitchedIntents.metricName.getter();
  StaticString.description.getter();
  static XPCActivity.unregister(name:)();

  type metadata accessor for HolidaysDBUpdater();
  static HolidaysDBUpdater.metricName.getter();
  StaticString.description.getter();
  static XPCActivity.unregister(name:)();

  v5 = static XPCActivity.unregister(name:)();

  return static SiriRemembersBiomeEventBackfiller.unregister()(v5);
}

void *sub_100007E74(char a1)
{
  v2 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A78);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v6))
  {
    v7 = sub_100008BB0();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "starting Biome monitors", v7, 2u);
    sub_100008B78();
  }

  type metadata accessor for BackgroundQueue();
  v8 = static BackgroundQueue.shared.getter();
  type metadata accessor for SiriInferenceSuggestionsBridgeProvider();
  v9 = static SiriInferenceSuggestionsBridgeProvider.instance.getter();
  type metadata accessor for AppIntentBiomeMonitor();
  swift_allocObject();
  v10 = sub_100004E48(v8, v9);
  v11 = v2[2];
  v2[2] = v10;

  type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
  static SiriRemembersDonationFromAppIntentsListener.start()();
  v12 = static BackgroundQueue.shared.getter();
  type metadata accessor for SiriUIBiomeMonitor();
  swift_allocObject();
  v13 = SiriUIBiomeMonitor.init(queue:)(v12);
  v14 = v2[3];
  v2[3] = v13;

  type metadata accessor for SiriRolloutsMonitor();
  swift_allocObject();
  v15 = sub_100010CB4();
  v16 = v2[4];
  v2[4] = v15;

  if (v2[4])
  {
    v17 = v2[4];

    v18 = static BackgroundQueue.shared.getter();
    sub_100010DB0(v18);
  }

  sub_1000080C8();
  if (a1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (sub_100004E30(v20))
    {
      *sub_100008BB0() = 0;
      sub_100008C4C(&_mh_execute_header, v21, v20, "not starting SiriSignals for testing");
      sub_100002BCC();
    }
  }

  else
  {
    sub_100008204();
  }

  v22 = static BackgroundQueue.shared.getter();
  dispatch thunk of BackgroundQueue.resume()();

  return v2;
}

void sub_1000080C8()
{
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A78);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008BC8(v2))
  {
    *sub_100008BB0() = 0;
    sub_100008B90(&_mh_execute_header, v3, v4, "queuing post-tombstone privacy-related background tasks");
    sub_100008B78();
  }

  type metadata accessor for BackgroundQueue();
  v5 = static BackgroundQueue.shared.getter();
  v6 = [objc_allocWithZone(type metadata accessor for ScrubDodMLRecords()) init];
  [v5 addOperation:v6];

  v7 = static BackgroundQueue.shared.getter();
  v8 = [objc_allocWithZone(type metadata accessor for ScrubRuntimeDataRecords()) init];
  [v7 addOperation:v8];
}

void sub_100008204()
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (sub_100008BC8(v2))
  {
    *sub_100008BB0() = 0;
    sub_100008B90(&_mh_execute_header, v3, v4, "Starting Biome Listeners for SiriSignals");
    sub_100008B78();
  }

  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.startBiomeListeners()();

  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.startAppInstallListener()();

  type metadata accessor for BackgroundQueue();
  v5 = static BackgroundQueue.shared.getter();
  v7[4] = sub_100008388;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100004DB8;
  v7[3] = &unk_10001CE90;
  v6 = _Block_copy(v7);
  [v5 addOperationWithBlock:v6];
  _Block_release(v6);
}

void sub_100008388()
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pre-warming all SiriSignals", v3, 2u);
  }

  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Done Pre-warming all SiriSignals", v5, 2u);
  }
}

void *sub_100008518()
{
  v1 = v0;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v4))
  {
    *sub_100008BB0() = 0;
    sub_100008C4C(&_mh_execute_header, v5, v4, "BackgroundManager.Inner beginning deinit");
    sub_100002BCC();
  }

  type metadata accessor for BackgroundQueue();
  v6 = static BackgroundQueue.shared.getter();
  [v6 cancelAllOperations];

  v7 = static BackgroundQueue.shared.getter();
  [v7 waitUntilAllOperationsAreFinished];

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v9))
  {
    v10 = sub_100008BB0();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "BackgroundManager.Inner finished deinit", v10, 2u);
    sub_100008B78();
  }

  v11 = v1[2];

  v12 = v1[3];

  v13 = v1[4];

  return v1;
}

uint64_t sub_100008678()
{
  sub_100008518();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000086AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t sub_1000086E4()
{
  sub_1000086AC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

char *sub_100008768(char *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_100008854(v8, v7);
  v10 = *(type metadata accessor for DASActivity() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100008950(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100008854(uint64_t a1, uint64_t a2)
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

  sub_1000045B0(&qword_100021518, &qword_1000143C8);
  v4 = *(type metadata accessor for DASActivity() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008950(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for DASActivity(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for DASActivity();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_100008A24(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021500, "2%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045B0(&qword_100021500, "2%");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008AFC()
{
  result = qword_100021510;
  if (!qword_100021510)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021510);
  }

  return result;
}

uint64_t sub_100008B58()
{

  return swift_once();
}

uint64_t sub_100008B78()
{
}

void sub_100008B90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100008BB0()
{

  return swift_slowAlloc();
}

BOOL sub_100008BC8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100008BE4()
{

  return static XPCActivity.register(name:repeatInterval:isPrivacyCritical:makeOperation:)(v1, v3, v2, 0, v0, 0);
}

BOOL sub_100008C30(os_log_type_t a1)
{
  v4 = *(v1 - 88);

  return os_log_type_enabled(v4, a1);
}

void sub_100008C4C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_100008C98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t sub_100008DF0()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002B54(v16, qword_100021A90);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v18))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v19, v20, "Sandbox: _set_user_dir_suffix returned nil");
      sub_10000A538();
    }

    v15 = 3;
LABEL_25:
    static Exit.exit(_:)(v15);
  }

  v1 = NSTemporaryDirectory();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002B54(v21, qword_100021A90);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v23))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v24, v25, "Unable to create temp directory");
      sub_10000A538();
    }

    v15 = 4;
    goto LABEL_25;
  }

  sub_100009E5C(65537);
  if (!v6 || (sub_100012DE8(), v8 = v7, , !v8))
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002B54(v10, qword_100021A90);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v12))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v13, v14, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed");
      sub_10000A538();
    }

    v15 = 1;
    goto LABEL_25;
  }
}

void sub_100009020(uint64_t a1)
{
  if (qword_1000210C0 != -1)
  {
    sub_10000A524();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100008BB0();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "registering XPC notification handlers", v5, 2u);
  }

  if (qword_1000210A0 != -1)
  {
    swift_once();
  }

  v6 = qword_100021A50;
  v15 = sub_100009F60;
  v16 = a1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v13 = sub_100001BD8;
  v14 = &unk_10001CF58;
  v7 = _Block_copy(v12);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v6, v7);
  _Block_release(v7);
  v15 = sub_100009F68;
  v16 = a1;
  v12[0] = _NSConcreteStackBlock;
  sub_100002BE8();
  v13 = v8;
  v14 = &unk_10001CF80;
  v9 = _Block_copy(v12);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v9);
  _Block_release(v9);
  v15 = sub_100009C00;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  sub_100002BE8();
  v13 = v10;
  v14 = &unk_10001CFA8;
  v11 = _Block_copy(v12);
  xpc_set_event_stream_handler("com.apple.xpc.activity", v6, v11);
  _Block_release(v11);
}

uint64_t sub_1000092A8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100005C70();
  static DispatchQoS.userInitiated.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100021A50 = result;
  return result;
}

void sub_1000094B0(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1000210C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002B54(v4, qword_100021A90);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_100004694(v1, v3, &v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "received XPC event from notifyd: %{public}s", v7, 0xCu);
      sub_100004758(v8);
    }

    if (!kAFPreferencesDidChangeDarwinNotification)
    {
      __break(1u);
      return;
    }

    if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v9)
    {

LABEL_14:

      sub_100006648();
      return;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = v1 == 0xD000000000000040 && 0x8000000100014B70 == v3;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v13, "AppSelection was activated so siriinferenced should run on the normal schedule", v14, 2u);
      }
    }

    else
    {

      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        v18 = sub_100004694(v1, v3, &v20);

        *(v16 + 4) = v18;
        _os_log_impl(&_mh_execute_header, oslog, v15, "XPC event [%s] is unhandled", v16, 0xCu);
        sub_100004758(v17);

        return;
      }
    }
  }
}

const char *sub_100009850(void *a1)
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    sub_1000045B0(&unk_100021520, &qword_100014418);
    v7 = String.init<A>(describing:)();
    v9 = sub_100004694(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "received XPC event from distnoted: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    string = xpc_dictionary_get_string(a1, "Object");
    v12 = String.init(cString:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v18 = v12 == 0xD00000000000002ELL && 0x8000000100014C70 == v14;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 == 0xD000000000000030 ? (v19 = 0x8000000100014CA0 == v14) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          type metadata accessor for SignalRepository();
          static SignalRepository.shared.getter();
          sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
          v20 = *(type metadata accessor for SignalCachingStrategyOption() - 8);
          v21 = *(v20 + 72);
          v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100014280;
          v24 = (v23 + v22);
          *v24 = v12;
          v24[1] = v14;
          (*(v20 + 104))(v23 + v22, enum case for SignalCachingStrategyOption.perSystemNotification(_:));
          sub_100002704(v23);
          dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:)();
        }
      }
    }

    if (string)
    {
      String.init(cString:)();
    }

    sub_100007834();
  }

  return result;
}

void sub_100009C00(void *a1)
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    sub_1000045B0(&unk_100021520, &qword_100014418);
    v7 = String.init<A>(describing:)();
    v9 = sub_100004694(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "received XPC event from XPC activity: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    if (String.init(cString:)() == 0xD000000000000022 && 0x8000000100014C40 == v10)
    {

      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "xpc activity is unhandled", v15, 2u);
  }
}

uint64_t sub_100009E5C(int a1)
{
  v2 = type metadata accessor for __DataStorage();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = __DataStorage.init(length:)();
  sub_10000A414(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  v5 = sub_100009FC8(&v7, a1);
  sub_10000A4BC(v7, v8);
  return v5;
}

uint64_t sub_100009EFC@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

unint64_t sub_100009F70()
{
  result = qword_1000212A8;
  if (!qword_1000212A8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212A8);
  }

  return result;
}

uint64_t sub_100009FC8(uint64_t *a1, int a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000A4BC(v4, v3);
      *a1 = xmmword_100014400;
      sub_10000A4BC(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v4)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v15 = type metadata accessor for __DataStorage();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v13 = v18;
LABEL_16:
      if (v14 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_10000A368(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_10000A4BC(v4, v3);
      v22 = v4;
      v23 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100014400;
      sub_10000A4BC(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v10 = v23;
      v11 = sub_10000A368(*(v22 + 16), *(v22 + 24), v23, a2);
      if (v2)
      {
        v12 = v23 | 0x8000000000000000;
        *a1 = v22;
LABEL_19:
        a1[1] = v12;
      }

      else
      {
        v5 = v11;
        *a1 = v22;
        a1[1] = v10 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v21, 0, 15);
      sub_100009EFC(v21, a2, &v22);
      if (!v2)
      {
        return v22;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      sub_10000A4BC(v4, v3);
      *v21 = v4;
      *&v21[8] = v3;
      v21[10] = BYTE2(v3);
      v21[11] = BYTE3(v3);
      v21[12] = BYTE4(v3);
      v21[13] = BYTE5(v3);
      v21[14] = BYTE6(v3);
      sub_100009EFC(v21, a2, &v22);
      if (!v2)
      {
        v5 = v22;
      }

      v8 = *&v21[8] | ((*&v21[12] | (v21[14] << 16)) << 32);
      *a1 = *v21;
      a1[1] = v8;
      return v5;
  }

  return v5;
}

uint64_t sub_10000A368(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100009EFC((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_10000A414(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_10000A4BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A538()
{
}

void static Exit.exit(_:)(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v1 = v1;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Exiting with reason: %d", v5, 8u);
  }

  else
  {

    v1 = v1;
  }

  _exit(v1);
}

siriinferenced::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    LOBYTE(rawValue) = 6;
  }

  return rawValue;
}

Swift::Int sub_10000A680(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A700(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

siriinferenced::ExitReason_optional sub_10000A744@<W0>(Swift::Int32 *a1@<X0>, siriinferenced::ExitReason_optional *a2@<X8>)
{
  result.value = ExitReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10000A770@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10000A7A0()
{
  result = qword_100021538;
  if (!qword_100021538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_10000A988(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Signpost();
  v11 = a5 + *(v10 + 20);
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  v12 = a4;
  OSSignpostID.init(log:)();
  *(a5 + *(v10 + 24)) = v12;
  v17 = v12;
  static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100014280;
  v14 = StaticString.description.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000045F8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
}

uint64_t sub_10000AAD8()
{
  sub_10000464C(0, &unk_1000215A8, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100021A58 = result;
  return result;
}

uint64_t Logger.asyncBackground(_:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100002BB8(v44);
  v47 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002BA8();
  v43 = v7 - v6;
  v8 = type metadata accessor for DispatchQoS();
  v9 = sub_100002BB8(v8);
  v45 = v10;
  v46 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002BA8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Logger();
  v17 = sub_100002BB8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v22 = type metadata accessor for DispatchQoS.QoSClass();
  v23 = sub_100002BB8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_100002BA8();
  v30 = v29 - v28;
  sub_10000464C(0, &qword_1000210F0, OS_dispatch_queue_ptr);
  (*(v25 + 104))(v30, enum case for DispatchQoS.QoSClass.utility(_:), v22);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v25 + 8))(v30, v22);
  (*(v19 + 16))(v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v40[1], v16);
  v32 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v33 = swift_allocObject();
  (*(v19 + 32))(v33 + v32, v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v34 = (v33 + ((v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v42;
  *v34 = v41;
  v34[1] = v35;
  aBlock[4] = sub_10000B068;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004DB8;
  aBlock[3] = &unk_10001D0A8;
  v36 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v48 = &_swiftEmptyArrayStorage;
  sub_100004CB0();
  sub_1000045B0(&qword_100021168, &qword_1000142A0);
  sub_100004D08();
  v38 = v43;
  v37 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v47 + 8))(v38, v37);
  (*(v45 + 8))(v15, v46);
}

void sub_10000AF40(uint64_t a1, uint64_t (*a2)(void))
{

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = a2();
    v8 = sub_100004694(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s", v4, 0xCu);
    sub_100004758(v5);
  }
}

void sub_10000B068()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_10000AF40(v0 + v2, v4);
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_100021598;
  if (!qword_100021598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B1BC()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    result = sub_10000464C(319, &unk_1000215A8, OS_os_log_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000B264()
{
  v0 = type metadata accessor for Logger();
  sub_10000454C(v0, qword_100021A78);
  sub_100002B54(v0, qword_100021A78);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  v1 = qword_100021A58;
  return Logger.init(_:)();
}

uint64_t sub_10000B328(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10000454C(v3, a2);
  sub_100002B54(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000B3A0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100002BB8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000EF58();
  v137 = (v8 - v9);
  sub_10000EF78();
  v11 = __chkstk_darwin(v10);
  v13 = &v126 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v126 - v15;
  __chkstk_darwin(v14);
  sub_10000F0E0();
  v134 = v17;
  v18 = sub_1000045B0(&qword_100021708, &qword_100014588);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_10000EF58();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_10000F0E0();
  v142 = v24;
  v130 = type metadata accessor for Logger();
  v25 = sub_100002BB8(v130);
  v129 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10000EFC4();
  sub_10000EF9C();
  v141 = v29;
  Logger.init(subsystem:category:)();
  v30 = [a1 matchingRecordSet];
  v131 = a1;
  v31 = [a1 recipe];
  v32 = [v31 recipeUserInfo];

  v128 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000EE8C(&qword_100021710, &type metadata accessor for UUID);
  v132 = Dictionary.init(dictionaryLiteral:)();
  v143 = v30;
  v33 = [v30 nativeRecordInfo];
  sub_1000045B0(&qword_100021668, &qword_100014518);
  v151 = v2;
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0;
  v149 = 0;
  v36 = v34[8];
  v135 = v5;
  v136 = v34;
  v37 = *(v34 + 32);
  sub_10000EF0C();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v44 = (v5 + 16);
  v147 = (v5 + 32);
  v140 = (v5 + 8);
  v45 = v16;
  *&v46 = 136315138;
  v133 = v46;
  v145 = v22;
  v146 = v13;
  v150 = v16;
  v138 = v43;
  v139 = v38;
  v144 = v44;
  while (1)
  {
    if (v41)
    {
      v47 = v35;
      goto LABEL_8;
    }

    do
    {
      v47 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v47 >= v43)
      {
        sub_1000045B0(&qword_100021718, &qword_100014590);
        sub_10000F1A4();
        sub_10000B148(v87, v88, v89, v90);
        v41 = 0;
        goto LABEL_9;
      }

      v41 = *(v38 + 8 * v47);
      ++v35;
    }

    while (!v41);
    v35 = v47;
LABEL_8:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v47 << 6);
    v51 = v135;
    v50 = v136;
    v52 = v134;
    v53 = v151;
    (*(v135 + 16))(v134, v136[6] + *(v135 + 72) * v49, v151);
    v34 = *(v50[7] + 8 * v49);
    v54 = sub_1000045B0(&qword_100021718, &qword_100014590);
    v55 = *(v54 + 48);
    v56 = *(v51 + 32);
    v22 = v145;
    v56(v145, v52, v53);
    *(v22 + v55) = v34;
    sub_10000F1B0();
    sub_10000B148(v57, v58, v59, v54);

    v13 = v146;
    v45 = v150;
LABEL_9:
    v60 = v142;
    sub_10000EC68(v22, v142, &qword_100021708, &qword_100014588);
    sub_1000045B0(&qword_100021718, &qword_100014590);
    v61 = sub_10000F158();
    if (sub_10000B10C(v61, v62, v63) == 1)
    {
      break;
    }

    v64 = *(v60 + *(v34 + 12));

    v65 = *v147;
    v66 = sub_10000F198();
    v67 = v151;
    v68(v66);
    v69 = *v144;
    (*v144)(v13, v45, v67);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v152 = 0;
    v71 = [v143 nativeRecordDataForRecordUUID:isa error:&v152];

    if (!v71)
    {
      v72 = *v140;
      v73 = v152;
      v74 = v151;
      v149 = v72;
      v72(v13, v151);
      v75 = _convertNSErrorToError(_:)();

      v148 = v75;
      swift_willThrow();
      v76 = v137;
      v69(v137, v150, v74);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        sub_10000F04C();
        v79 = swift_slowAlloc();
        sub_10000F040();
        v80 = swift_slowAlloc();
        v152 = v80;
        *v79 = v133;
        v81 = UUID.uuidString.getter();
        v83 = v82;
        v84 = v76;
        v85 = v149;
        v149(v84, v151);
        v34 = sub_100004694(v81, v83, &v152);

        *(v79 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v77, v78, "failure retrieving native record data for %s; skipping from collection", v79, 0xCu);
        sub_100004758(v80);
        sub_10000EF4C();

        sub_10000EF4C();

        v45 = v150;
        v85(v150, v151);
      }

      else
      {

        v34 = v151;
        v86 = v149;
        v149(v76, v151);
        v45 = v150;
        v86(v150, v34);
      }

      v149 = 0;
      v22 = v145;
      v13 = v146;
      v43 = v138;
      v38 = v139;
      continue;
    }

    v91 = v152;
    v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = v93;

    sub_10000EF84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = v71;
    sub_10000E920(v13);
    sub_10000F084();
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      goto LABEL_31;
    }

    v100 = v95;
    v101 = v96;
    sub_1000045B0(&qword_100021720, qword_100014598);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v99))
    {
      v13 = v146;
      v102 = sub_10000E920(v146);
      v45 = v150;
      v22 = v145;
      if ((v101 & 1) != (v103 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v102 = v100;
      v22 = v145;
      v13 = v146;
      v45 = v150;
    }

    v34 = v152;
    v132 = v152;
    if (v101)
    {
      v104 = (*(v152 + 7) + 16 * v102);
      v105 = *v104;
      v106 = v104[1];
      v107 = v148;
      *v104 = v92;
      v104[1] = v107;
      sub_10000A4BC(v105, v106);
      v34 = *v140;
      (*v140)(v13, v151);
      v108 = sub_10000F198();
      (v34)(v108);
      goto LABEL_25;
    }

    v109 = v102;
    sub_10000F064(v152 + 8 * (v102 >> 6));
    v111 = v34[6] + *(v135 + 72) * v110;
    v127 = v92;
    v112 = v151;
    v69(v111, v13, v151);
    v113 = (v34[7] + 16 * v109);
    v114 = v148;
    *v113 = v127;
    v113[1] = v114;
    v115 = *(v135 + 8);
    v115(v13, v112);
    v115(v45, v112);
    v116 = v34[2];
    v117 = __OFADD__(v116, 1);
    v118 = v116 + 1;
    if (v117)
    {
      goto LABEL_32;
    }

    v34[2] = v118;
LABEL_25:
    v43 = v138;
    v38 = v139;
  }

  v119 = v128;
  v120 = v149;
  sub_10000BE38(v128, v132);

  if (v120)
  {
    v119 = _convertErrorToNSError(_:)();
    v121 = sub_10000F184();
    [v121 v122];
  }

  else
  {
    Dictionary._bridgeToObjectiveC()();
    sub_10000F0EC();

    v123 = sub_10000F184();
    [v123 v124];
  }

  return (*(v129 + 8))(v141, v130);
}

uint64_t sub_10000BE38(uint64_t a1, uint64_t a2)
{
  v379 = a2;
  v5 = type metadata accessor for CustomSignalType();
  v6 = sub_100002BB8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000EF58();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10000F0E0();
  v369 = v15;
  v16 = sub_1000045B0(&qword_100021680, &qword_100014530);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_10000F094(&v341 - v18);
  v383 = type metadata accessor for CustomSignal();
  v19 = sub_100002BB8(v383);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000EFC4();
  sub_10000F094(v24);
  v25 = type metadata accessor for UUID();
  v26 = sub_100002BB8(v25);
  v378 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_10000EF58();
  v385 = (v30 - v31);
  sub_10000EF78();
  __chkstk_darwin(v32);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v33);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v34);
  sub_10000F000();
  v389 = v35;
  sub_10000EF78();
  __chkstk_darwin(v36);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v37);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v38);
  sub_10000F000();
  v386 = v39;
  sub_10000EF78();
  __chkstk_darwin(v40);
  sub_10000F0E0();
  v376 = v41;
  v42 = sub_1000045B0(&qword_100021688, &qword_100014538);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  sub_10000EF58();
  sub_10000EF68();
  __chkstk_darwin(v44);
  sub_10000F000();
  v388 = v45;
  sub_10000EF78();
  __chkstk_darwin(v46);
  sub_10000F000();
  v390 = v47;
  sub_10000EF78();
  __chkstk_darwin(v48);
  sub_10000F0E0();
  sub_10000F094(v49);
  v359 = type metadata accessor for Logger();
  v50 = sub_100002BB8(v359);
  v358 = v51;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_10000EFC4();
  sub_10000EF9C();
  v382 = v54;
  Logger.init(subsystem:category:)();
  sub_10000DFBC(1701667182, 0xE400000000000000, a1, &v396);
  v377 = v25;
  v356 = v2;
  v380 = v3;
  v360 = a1;
  if (!*(&v397 + 1))
  {
    sub_10000E9B8(&v396, &qword_100021690, &qword_100014540);
LABEL_10:
    v372 = sub_1000045B0(&qword_100021668, &qword_100014518);
    v368 = Dictionary.init(dictionaryLiteral:)();
    v57 = sub_10000F134();
    v59 = v57 + 64;
    v58 = *(v57 + 64);
    v60 = *(v57 + 32);
    sub_10000EF0C();
    v391 = v62 & v61;
    v64 = ((v63 + 63) >> 6);
    v386 = (v378 + 16);
    v387 = (v378 + 32);
    v373 = (v378 + 8);
    v367 = "v8@?0";

    v65 = 0;
    *&v66 = 136315138;
    v371 = v66;
    v366 = xmmword_100014280;
    v67 = v385;
    sub_10000F178();
    v69 = v388;
    v374 = v59;
    v375 = v64;
    while (1)
    {
      while (1)
      {
        v70 = v391;
        if (!v391)
        {
          v21 = v381;
          v71 = v389;
          v72 = v67;
          while (1)
          {
            v73 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              break;
            }

            if (v73 >= v64)
            {
              v84 = v25;
              sub_1000045B0(&qword_100021698, &qword_100014548);
              sub_10000F1A4();
              sub_10000B148(v137, v138, v139, v140);
              v391 = 0;
              goto LABEL_18;
            }

            v70 = *(v59 + 8 * v73);
            ++v65;
            if (v70)
            {
              v65 = v73;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_131;
        }

LABEL_17:
        v391 = (v70 - 1) & v70;
        sub_10000F0A4();
        v75 = *(v74 - 256);
        v77 = v376;
        (*(v75 + 16))(v376, v76 + *(v75 + 72) * v21, v25);
        v78 = (*(v64 + 7) + 16 * v21);
        v79 = *v78;
        v80 = v78[1];
        v81 = sub_1000045B0(&qword_100021698, &qword_100014548);
        v82 = (v384 + *(v81 + 48));
        v83 = v77;
        v84 = v25;
        (*(v75 + 32))(v384, v83, v25);
        *v82 = v79;
        v82[1] = v80;
        sub_10000F1B0();
        sub_10000B148(v85, v86, v87, v81);
        sub_10000E850(v79, v80);
        v72 = v385;
        v21 = v381;
        v69 = v388;
        v71 = v389;
LABEL_18:
        v88 = sub_10000F198();
        sub_10000EC68(v88, v89, &qword_100021688, &qword_100014538);
        sub_1000045B0(&qword_100021698, &qword_100014548);
        v90 = sub_10000F158();
        if (sub_10000B10C(v90, v91, v92) == 1)
        {
          sub_10000F134();

          sub_10000F00C();
          if (*(&v397 + 1))
          {
            sub_10000F1BC();
            v165 = swift_dynamicCast();
            v166 = v380;
            if (v165 && (v392 & 1) != 0)
            {
              v68 = sub_10000E488(v368);
              if (v166)
              {
                sub_10000EF84();
                v21 = Logger.logObject.getter();
                v167 = static os_log_type_t.error.getter();
                if (sub_100008BC8(v167))
                {
                  *sub_100008BB0() = 0;
                  sub_10000F1F4(&_mh_execute_header, v168, v169, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
                  sub_10000EF4C();
                }

                v170 = sub_10000F058(v395);
                sub_10000E250(v170, v171, v172);
                sub_10000F0EC();

LABEL_125:

                v332 = sub_10000EED4();
                v333(v332);
                return v21;
              }

LABEL_131:
              v21 = v68;
              v337 = sub_10000EED4();
              v338(v337);
              goto LABEL_134;
            }
          }

          else
          {
            sub_10000E9B8(&v396, &qword_100021690, &qword_100014540);
          }

          v173 = sub_10000F058(v395);
          sub_10000E250(v173, v174, v175);
          sub_10000F0EC();

LABEL_128:
          v334 = sub_10000EED4();
          v335(v334);
          return v21;
        }

        v93 = (v69 + dword_1000216C8);
        v95 = *v93;
        v94 = v93[1];
        v96 = *v387;
        v97 = sub_10000F128();
        v25 = v84;
        v99 = v98;
        v101 = v100;
        v102(v97);
        v103 = objc_opt_self();
        v390 = v101;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v396 = 0;
        v105 = [v103 JSONObjectWithData:isa options:0 error:&v396];

        v106 = v396;
        if (v105)
        {
          break;
        }

        v21 = v396;
        v64 = _convertNSErrorToError(_:)();

        v380 = v64;
        swift_willThrow();
        v119 = *v386;
        sub_10000F1E8();
        v120();
        sub_10000EF84();
        v121 = v25;
        v25 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10000F0C8();
        if (os_log_type_enabled(v25, v122))
        {
          sub_10000F04C();
          v21 = swift_slowAlloc();
          sub_10000F040();
          v123 = swift_slowAlloc();
          v383 = v99;
          v124 = v123;
          *v21 = sub_10000F074(v123).n128_u32[0];
          v125 = UUID.uuidString.getter();
          v127 = v126;
          v128 = v121;
          v129 = *v373;
          (*v373)(v385, v128);
          v64 = sub_100004694(v125, v127, &v396);
          sub_10000F178();

          *(v21 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v25, v106, "Unable to decode record %s, skipping", v21, 0xCu);
          sub_100004758(v124);
          v67 = v385;
          sub_10000EF4C();

          sub_10000EF4C();

          sub_10000EFD8();

          sub_10000EFF4();
          v129();
          sub_10000F0D4();
        }

        else
        {
          sub_10000A4BC(v99, v390);

          sub_10000F1C8(&v398);
          v67 = v72;
          (v21)(v72, v121);
          (v21)(v389, v121);
          sub_10000F0D4();
          v25 = v121;
        }

LABEL_34:
        v69 = v388;
        v59 = v374;
        sub_10000F14C();
      }

      v107 = v396;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000F1BC();
      v108 = swift_dynamicCast();
      v383 = v99;
      if (!v108)
      {
        break;
      }

      v109 = v392;
      if (*(v392 + 16))
      {
        v64 = v392;
        v110 = sub_10000E8A8(0x79546C616E676973, 0xEA00000000006570);
        if (v111)
        {
          sub_1000048A4(*(v109 + 56) + 32 * v110, &v396);

          sub_10000E9B8(&v396, &qword_100021690, &qword_100014540);
          v112 = *v386;
          v21 = v370;
          sub_10000F1E8();
          v113();
          sub_10000EF84();
          v114 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          sub_10000F0C8();
          if (os_log_type_enabled(v114, v115))
          {
            sub_10000F04C();
            v25 = swift_slowAlloc();
            sub_10000F040();
            v116 = swift_slowAlloc();
            *v25 = sub_10000F074(v116).n128_u32[0];
            v64 = v21;
            UUID.uuidString.getter();
            sub_10000F16C();
            v21 = v117;
            v118 = *v373;
            sub_10000F140();
            v118();
            sub_100004694(v64, v21, &v396);
            sub_10000F16C();

            *(v25 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v114, v106, "Record %s looks like a CustomSignal, skipping", v25, 0xCu);
            sub_100004758(v116);
            v67 = v385;
            sub_10000EF4C();

            sub_10000EF28();
            sub_10000EFD8();

            (v118)(v389, v25);
          }

          else
          {
            v67 = v72;
            sub_10000EFD8();

            sub_10000F1C8(&v398);
            (v21)();
            (v21)(v71, v25);
          }

LABEL_33:
          sub_10000F178();
          goto LABEL_34;
        }
      }

      v396 = 0u;
      v397 = 0u;
      sub_10000E9B8(&v396, &qword_100021690, &qword_100014540);
      sub_10000EF84();
      v141 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_10000F0C8();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = sub_100008BB0();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v106, "SiriInference dodML plugin ran succesfully", v143, 2u);
        sub_10000EF4C();
      }

      v369 = String._bridgeToObjectiveC()();
      sub_1000045B0(&qword_1000216A0, &qword_100014550);
      inited = swift_initStackObject();
      *(inited + 16) = v366;
      *(inited + 32) = 0x656D6F6374756FLL;
      *(inited + 40) = 0xE700000000000000;
      v145 = sub_10000464C(0, &qword_1000216A8, NSString_ptr);
      *(inited + 48) = NSString.init(stringLiteral:)();
      sub_10000464C(0, &qword_1000216B0, NSObject_ptr);
      sub_10000F16C();
      Dictionary.init(dictionaryLiteral:)();
      Dictionary._bridgeToObjectiveC()();
      sub_10000F16C();

      v146 = v369;
      AnalyticsSendEvent();

      v147 = UUID.uuidString.getter();
      v21 = v148;
      sub_10000F058(v395);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v396 = v71;
      v369 = v147;
      sub_10000E8A8(v147, v21);
      sub_10000F084();
      v153 = v151 + v152;
      if (__OFADD__(v151, v152))
      {
        goto LABEL_136;
      }

      v25 = v149;
      LODWORD(v368) = v150;
      sub_1000045B0(&qword_1000216B8, &qword_100014558);
      v64 = &v396;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v153))
      {
        v64 = v396;
        v154 = sub_10000E8A8(v369, v21);
        v69 = v388;
        if ((v368 & 1) != (v155 & 1))
        {
LABEL_140:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v25 = v154;
        sub_10000F14C();
      }

      else
      {
        v69 = v388;
        sub_10000F14C();
        v156 = v368;
      }

      v368 = v396;
      if (v156)
      {
        v157 = *(v396 + 56);
        v158 = *(v157 + 8 * v25);
        *(v157 + 8 * v25) = v109;
      }

      else
      {
        sub_10000F064(v396 + 8 * (v25 >> 6));
        v160 = (v159[6] + 16 * v25);
        *v160 = v369;
        v160[1] = v21;
        *(v159[7] + 8 * v25) = v109;
        v161 = v159[2];
        v162 = __OFADD__(v161, 1);
        v163 = v161 + 1;
        if (v162)
        {
          goto LABEL_137;
        }

        v159[2] = v163;
      }

      sub_10000EFF4();
      sub_10000F178();
      v67 = v72;
      sub_10000EFD8();

      sub_10000EF90(&v398);
      v68 = v164(v71, v25);
      v59 = v374;
    }

    v130 = *v386;
    sub_10000F1E8();
    v131();
    sub_10000EF84();
    v132 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_10000F0C8();
    v64 = v21;
    if (os_log_type_enabled(v132, v133))
    {
      sub_10000F04C();
      v25 = swift_slowAlloc();
      sub_10000F040();
      v21 = swift_slowAlloc();
      *v25 = sub_10000F074(v21).n128_u32[0];
      v369 = UUID.uuidString.getter();
      v135 = v134;
      v136 = *v373;
      sub_10000F140();
      v136();
      v64 = sub_100004694(v369, v135, &v396);
      v67 = v385;

      *(v25 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v132, v106, "Couldn't decode data for %s into a record, skipping", v25, 0xCu);
      sub_100004758(v21);
      sub_10000EF4C();

      sub_10000EF28();
      sub_10000EFD8();

      (v136)(v389, v25);
    }

    else
    {
      v67 = v72;
      sub_10000EFD8();

      v21 = *v373;
      (*v373)(v64, v25);
      (v21)(v71, v25);
    }

    goto LABEL_33;
  }

  sub_10000F1BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v368 = v13;
  if (v392 == 0x536F747541736D73 && v393 == 0xEB00000000646E65)
  {

    goto LABEL_57;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v56 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_57:
  v367 = v5;
  v176 = type metadata accessor for JSONDecoder();
  v177 = *(v176 + 48);
  v178 = *(v176 + 52);
  swift_allocObject();
  v384 = JSONDecoder.init()();
  sub_1000045B0(&qword_1000216C0, &qword_100014560);
  v355 = Dictionary.init(dictionaryLiteral:)();
  v179 = sub_10000F134();
  v180 = v179 + 64;
  v181 = 1 << *(v179 + 32);
  if (v181 < 64)
  {
    v182 = ~(-1 << v181);
  }

  else
  {
    v182 = -1;
  }

  v183 = v182 & *(v179 + 64);
  v370 = (v181 + 63) >> 6;
  v385 = (v378 + 16);
  v387 = (v378 + 32);
  *&v371 = v378 + 8;
  *&v366 = v21 + 32;
  isUniquelyReferenced_nonNull_native = enum case for CustomSignalType.messagesAutoSend(_:);
  v364 = v8 + 104;
  v363 = (v8 + 8);
  v362 = v21 + 8;

  v184 = 0;
  *&v185 = 136315138;
  v361 = v185;
  sub_10000F0F8();
  v187 = v386;
  v381 = v180;
LABEL_61:
  v188 = v390;
  while (1)
  {
    if (v183)
    {
      goto LABEL_67;
    }

    do
    {
      v189 = v184 + 1;
      if (__OFADD__(v184, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v189 >= v370)
      {
        v203 = v187;
        v199 = v25;
        sub_1000045B0(&qword_100021698, &qword_100014548);
        sub_10000F1A4();
        sub_10000B148(v255, v256, v257, v258);
        v391 = 0;
        goto LABEL_68;
      }

      v183 = *(v180 + 8 * v189);
      ++v184;
    }

    while (!v183);
    v184 = v189;
LABEL_67:
    v190 = (v183 - 1) & v183;
    v391 = v190;
    sub_10000F0A4();
    v192 = *(v191 - 256);
    v194 = v376;
    (*(v192 + 16))(v376, v193 + *(v192 + 72) * v188, v25);
    v195 = (*(v190 + 56) + 16 * v188);
    a1 = *v195;
    v183 = v195[1];
    v196 = sub_1000045B0(&qword_100021698, &qword_100014548);
    v188 = v390;
    v197 = (v390 + *(v196 + 48));
    v198 = *(v192 + 32);
    v199 = v25;
    v198(v390, v194, v25);
    *v197 = a1;
    v197[1] = v183;
    sub_10000F1B0();
    sub_10000B148(v200, v201, v202, v196);
    sub_10000E850(a1, v183);
    sub_10000F0F8();
    v203 = v386;
LABEL_68:
    sub_10000F14C();
    sub_10000EC68(v204, v183, &qword_100021688, &qword_100014538);
    sub_1000045B0(&qword_100021698, &qword_100014548);
    v205 = sub_10000F0EC();
    if (sub_10000B10C(v205, 1, v188) == 1)
    {
      break;
    }

    v206 = (v183 + *(v188 + 48));
    v207 = a1;
    v209 = *v206;
    v208 = v206[1];
    v25 = v199;
    (*v387)(v203, v183, v199);
    sub_10000EE8C(&dword_1000216C8, &type metadata accessor for CustomSignal);
    v210 = v373;
    v388 = v209;
    a1 = v207;
    v211 = v380;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v389 = v208;
    if (v211)
    {

      sub_10000F1A4();
      sub_10000B148(v212, v213, v214, v207);
      sub_10000E9B8(v210, &qword_100021680, &qword_100014530);
      v215 = *v385;
      v216 = v372;
      sub_10000F1E8();
      v217();
      sub_10000EF84();
      v218 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_10000F0C8();
      if (os_log_type_enabled(v218, v219))
      {
        sub_10000F04C();
        v220 = swift_slowAlloc();
        sub_10000F040();
        v221 = swift_slowAlloc();
        *v220 = sub_10000F1D4(v221).n128_u32[0];
        v222 = UUID.uuidString.getter();
        v224 = v223;
        a1 = v371;
        v225 = *v371;
        sub_10000F140();
        v225();
        v226 = sub_100004694(v222, v224, &v396);

        *(v220 + 4) = v226;
        _os_log_impl(&_mh_execute_header, v218, v199, "Unable to decode %s to CustomSignal, so not an SMS record", v220, 0xCu);
        sub_100004758(v199);
        sub_10000EF28();
        sub_10000EF4C();

        sub_10000A4BC(v388, v389);

        v187 = v386;
        v227 = sub_10000F0BC();
        (v225)(v227);
        sub_10000F0F8();
        sub_10000F0D4();
      }

      else
      {
        sub_10000A4BC(v388, v389);

        sub_10000F1C8(&v396);
        (v218)(v216, v199);
        (v218)(v203, v199);
        sub_10000F0D4();
        v187 = v203;
      }

      goto LABEL_80;
    }

    v380 = 0;
    sub_10000F1B0();
    sub_10000B148(v228, v229, v230, v207);
    sub_10000EF90(v394);
    v231(v374, v210, v207);
    a1 = v369;
    CustomSignal.signalType.getter();
    sub_10000EF90(&v393);
    v232 = v368;
    v233 = v367;
    v234(v368, isUniquelyReferenced_nonNull_native, v367);
    sub_10000EE8C(&qword_1000216D0, &type metadata accessor for CustomSignalType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v235 = v393;
    if (v396 == v392 && *(&v396 + 1) == v393)
    {
      v259 = *v363;
      v260 = sub_10000F128();
      v259(v260);
      (v259)(a1, v233);

LABEL_83:
      v261 = sub_10000464C(0, &qword_1000216D8, NSKeyedUnarchiver_ptr);
      v262 = sub_10000464C(0, &qword_1000216A8, NSString_ptr);
      sub_10000464C(0, &qword_1000216E0, NSNumber_ptr);
      v25 = CustomSignal.item.getter();
      v264 = v263;
      LOBYTE(v265) = v261;
      v266 = v380;
      v267 = static NSKeyedUnarchiver.unarchivedDictionary<A, B>(ofKeyClass:objectClass:from:)();
      if (v266)
      {

        sub_10000A4BC(v25, v264);
        sub_10000F0D4();
        sub_10000F0F8();
LABEL_86:
        sub_10000EF84();
        v268 = Logger.logObject.getter();
        v269 = static os_log_type_t.error.getter();
        sub_100008BC8(v269);
        sub_10000EFF4();
        v187 = v386;
        if (v270)
        {
          v271 = sub_100008BB0();
          *v271 = 0;
          _os_log_impl(&_mh_execute_header, v268, v265, "SiriInference dodML plugin tried to decode smsAutoSend record but failed - skipping", v271, 2u);
          sub_10000EF4C();
        }

        sub_10000A4BC(v388, v389);

        v272 = sub_10000EEF4();
        v273(v272, a1);
        sub_10000EF90(&v396);
        v274 = sub_10000F0BC();
        v186 = v275(v274);
        v188 = v390;
        v183 = v391;
        v180 = v381;
        continue;
      }

      v265 = v267;
      v380 = 0;
      sub_10000A4BC(v25, v264);
      sub_10000F0F8();
      if (!v265)
      {
        goto LABEL_86;
      }

      v352 = Dictionary.init(dictionaryLiteral:)();
      v25 = v377;
      v187 = v386;
      if ((v265 & 0xC000000000000001) != 0)
      {
        v279 = __CocoaDictionary.makeIterator()();
        v345 = 0;
        v280 = 0;
        v281 = 0;
        v346 = v279 | 0x8000000000000000;
      }

      else
      {
        v282 = -1 << *(v265 + 32);
        v280 = ~v282;
        v283 = *(v265 + 64);
        v345 = v265 + 64;
        v284 = -v282;
        if (v284 < 64)
        {
          v285 = ~(-1 << v284);
        }

        else
        {
          v285 = -1;
        }

        v281 = v285 & v283;
        v346 = v265;
      }

      v286 = 0;
      v341 = v280;
      v287 = (v280 + 64) >> 6;
      v344 = v262;
      v342 = v265;
      v288 = v346;
      v343 = v287;
      v289 = v281;
      if ((v346 & 0x8000000000000000) == 0)
      {
LABEL_97:
        v290 = v286;
        v291 = v289;
        v292 = v286;
        if (v289)
        {
LABEL_101:
          v351 = (v291 - 1) & v291;
          v293 = (v292 << 9) | (8 * __clz(__rbit64(v291)));
          v294 = *(*(v288 + 48) + v293);
          v350 = *(*(v288 + 56) + v293);
          v353 = v289;
          v354 = v294;
          v295 = v350;
          goto LABEL_104;
        }

        while (1)
        {
          v292 = v290 + 1;
          if (__OFADD__(v290, 1))
          {
            break;
          }

          if (v292 >= v287)
          {
            goto LABEL_116;
          }

          v291 = *(v345 + 8 * v292);
          ++v290;
          if (v291)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
      }

      while (1)
      {
        v292 = v286;
        v353 = v289;
        v296 = __CocoaDictionary.Iterator.next()();
        if (!v296)
        {
          break;
        }

        v298 = v297;
        v392 = v296;
        swift_dynamicCast();
        v354 = v396;
        v392 = v298;
        swift_dynamicCast();
        v295 = v396;
        v351 = v353;
LABEL_104:
        if (!v354)
        {
          break;
        }

        v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v301 = v300;
        v350 = v295;
        v349 = [v295 integerValue];
        sub_10000F058(&v380);
        v347 = swift_isUniquelyReferenced_nonNull_native();
        *&v396 = v295;
        v348 = v299;
        v353 = v301;
        sub_10000E8A8(v299, v301);
        sub_10000F084();
        v306 = v304 + v305;
        if (__OFADD__(v304, v305))
        {
          goto LABEL_138;
        }

        v25 = v302;
        v307 = v303;
        sub_1000045B0(&qword_1000216E8, &qword_100014568);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v347, v306))
        {
          v308 = sub_10000E8A8(v348, v353);
          v187 = v386;
          if ((v307 & 1) != (v309 & 1))
          {
            goto LABEL_140;
          }

          v25 = v308;
        }

        else
        {
          v187 = v386;
        }

        v310 = v354;
        if (v307)
        {

          v352 = v396;
          sub_10000F104(*(v396 + 56));
        }

        else
        {
          v311 = v396;
          sub_10000F064(v396 + 8 * (v25 >> 6));
          v312 = (v311[6] + 16 * v25);
          v313 = v353;
          *v312 = v348;
          v312[1] = v313;
          sub_10000F104(v311[7]);

          v314 = v311[2];
          v162 = __OFADD__(v314, 1);
          v315 = v314 + 1;
          if (v162)
          {
            goto LABEL_139;
          }

          v352 = v311;
          v311[2] = v315;
        }

        sub_10000EFF4();
        v288 = v346;
        v287 = v343;
        v286 = v292;
        v289 = v351;
        if ((v346 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }
      }

LABEL_116:
      sub_10000EA18();

      v316 = UUID.uuidString.getter();
      v318 = v317;
      sub_10000F058(&v383);
      v319 = swift_isUniquelyReferenced_nonNull_native();
      *&v396 = v187;
      sub_10000EA20(v352, v316, v318, v319);

      sub_10000A4BC(v388, v389);
      v320 = sub_10000EEF4();
      v321(v320, a1);
      sub_10000EF90(&v396);
      v322 = sub_10000F0BC();
      v186 = v323(v322);
      v355 = v396;
      v180 = v381;
      v183 = v391;
      goto LABEL_61;
    }

    v237 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a1 = v363;
    v238 = *v363;
    (*v363)(v232, v233);
    v239 = sub_10000F128();
    v238(v239);

    if (v237)
    {
      goto LABEL_83;
    }

    v187 = v386;
    v240 = *v385;
    v241 = v357;
    v242 = sub_10000F198();
    v243(v242);
    sub_10000EF84();
    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v244, v245))
    {
      sub_10000F04C();
      v246 = swift_slowAlloc();
      sub_10000F040();
      v247 = swift_slowAlloc();
      *v246 = sub_10000F1D4(v247).n128_u32[0];
      v248 = UUID.uuidString.getter();
      v250 = v249;
      v251 = *v371;
      sub_10000F140();
      v251();
      sub_100004694(v248, v250, &v396);
      sub_10000F0EC();

      *(v246 + 4) = v248;
      _os_log_impl(&_mh_execute_header, v244, v245, "Record %s was not an SMS auto-send record, skipping", v246, 0xCu);
      sub_100004758(v25);
      sub_10000EF28();
      v187 = v386;
      sub_10000EF4C();

      sub_10000A4BC(v388, v389);

      v252 = sub_10000EEF4();
      a1 = v383;
      v253(v252, v383);
      v254 = sub_10000F0BC();
      v186 = (v251)(v254);
    }

    else
    {
      sub_10000A4BC(v388, v389);

      sub_10000F1C8(&v396);
      v235(v241, v25);
      v276 = sub_10000EEF4();
      a1 = v383;
      v277(v276, v383);
      v278 = sub_10000F0BC();
      v186 = (v235)(v278);
    }

LABEL_80:
    v188 = v390;
    v183 = v391;
    v180 = v381;
  }

  sub_10000F134();

  sub_10000F00C();
  v324 = v380;
  if (!*(&v397 + 1))
  {
    sub_10000E9B8(&v396, &qword_100021690, &qword_100014540);
    v326 = v355;
LABEL_127:
    v21 = sub_10000E250(v326, &qword_1000216C0, &qword_100014560);

    goto LABEL_128;
  }

  sub_10000F1BC();
  v325 = swift_dynamicCast();
  v326 = v355;
  if (!v325 || (v392 & 1) == 0)
  {
    goto LABEL_127;
  }

  v327 = sub_10000E020(v355);
  v186 = sub_10000E488(v327);
  if (v324)
  {

    sub_10000EF84();
    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v329))
    {
      *sub_100008BB0() = 0;
      sub_10000F1F4(&_mh_execute_header, v330, v331, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
      sub_10000EF4C();
    }

    v21 = sub_10000E250(v326, &qword_1000216C0, &qword_100014560);

    goto LABEL_125;
  }

LABEL_133:
  v21 = v186;
  v339 = sub_10000EED4();
  v340(v339);

LABEL_134:

  return v21;
}

double sub_10000DFBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10000E8A8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000048A4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_10000E020(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000045B0(&qword_1000216F8, &qword_100014578);
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(a1 + 56) + 8 * v11);

    sub_1000045B0(&qword_1000216C0, &qword_100014560);
    sub_1000045B0(&qword_100021668, &qword_100014518);
    swift_dynamicCast();
    result = sub_10000E8A8(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = v2[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v26;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      *(v2[7] + 8 * result) = v26;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_10000E250(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_1000045B0(&qword_100021700, &qword_100014580);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  sub_10000EF0C();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  while (v9)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v31 = *(*(a1 + 56) + 8 * v16);

    sub_1000045B0(a2, a3);
    swift_dynamicCast();
    sub_10000EBA4(&v32, v34);
    sub_10000EBA4(v34, v35);
    sub_10000EBA4(v35, &v33);
    result = sub_10000E8A8(v19, v18);
    v20 = result;
    if (v21)
    {
      v22 = (v4[6] + 16 * result);
      v23 = v22[1];
      *v22 = v19;
      v22[1] = v18;

      v24 = (v4[7] + 32 * v20);
      sub_100004758(v24);
      result = sub_10000EBA4(&v33, v24);
      v13 = v14;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v4[6] + 16 * result);
      *v25 = v19;
      v25[1] = v18;
      result = sub_10000EBA4(&v33, (v4[7] + 32 * result));
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v4[2] = v28;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v4;
    }

    v9 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000E488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000045B0(&qword_100021670, &qword_100014520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100014280;
    *(inited + 32) = 0x73736572706D6F63;
    *(inited + 40) = 0xEA00000000006465;
    v3 = sub_10000E598();
    if (v1)
    {
      v5 = *(inited + 40);

      *(inited + 16) = 0;
      swift_setDeallocating();
      return sub_10000E7F0();
    }

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10000E598()
{
  v0 = objc_opt_self();
  sub_1000045B0(&qword_100021668, &qword_100014518);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v12];

  v3 = v12;
  if (v2)
  {
    v12 = 0;
    v4 = v3;
    v5 = [v2 compressedDataUsingAlgorithm:3 error:&v12];
    if (v5)
    {
      v6 = v5;
      v7 = v12;
      v8 = [v6 base64EncodedStringWithOptions:0];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v10 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10000F128();
}

id sub_10000E740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000E798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E7F0()
{
  v1 = *(v0 + 16);
  sub_1000045B0(&qword_100021678, &qword_100014528);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000E850(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000E8A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000EBB4(a1, a2, v6);
}

unint64_t sub_10000E920(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10000EE8C(&qword_100021710, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000ECD0(a1, v5);
}

uint64_t sub_10000E9B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000045B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EA20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E8A8(a2, a3);
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
  sub_1000045B0(&qword_1000216F0, &qword_100014570);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10000E8A8(a2, a3);
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
    sub_10000EB5C(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_10000EB5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_10000EBA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000EBB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000EC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000045B0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000ECD0(uint64_t a1, uint64_t a2)
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
    sub_10000EE8C(&qword_100021728, &type metadata accessor for UUID);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000EE8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EED4()
{
  v1 = *(*(v0 - 504) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 496);
  return result;
}

uint64_t sub_10000EF28()
{
  v2 = *(v0 - 320);
}

uint64_t sub_10000EFD8()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 216);

  return sub_10000A4BC(v2, v3);
}

double sub_10000F00C()
{
  v2 = *(v0 - 488);

  return sub_10000DFBC(0x73736572706D6F63, 0xEA00000000006465, v2, (v0 - 128));
}

void sub_10000F104(uint64_t a1@<X8>)
{
  *(a1 + 8 * v1) = *(v2 - 576);
  v4 = *(v2 - 568);
}

void sub_10000F1F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000F214()
{
  v0 = type metadata accessor for CoreAnalyticsMetric();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002B54(v5, qword_100021A90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "running accuracyLogging on daemon", v8, 2u);
  }

  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  sub_100010680();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000A4BC(v12, v14);
  CoreAnalyticsMetric.fullyQualifiedEventName.getter();
  v15 = String._bridgeToObjectiveC()();

  CoreAnalyticsMetric.eventPayload()();
  sub_1000106D8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return (*(v1 + 8))(v4, v0);
}

void sub_10000F550(uint64_t a1, void (**a2)(void))
{
  type metadata accessor for BackgroundQueue();
  v3 = static BackgroundQueue.shared.getter();
  [v3 waitUntilAllOperationsAreFinished];

  a2[2](a2);

  _Block_release(a2);
}

uint64_t sub_10000F61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  sub_10000B148(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;

  sub_10000FAB4(0, 0, v15, &unk_1000145D8, v17);
}

uint64_t sub_10000F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_10000F810, 0, 0);
}

uint64_t sub_10000F810()
{
  v1 = v0[4];
  type metadata accessor for SearchTermAppsRanker();
  v0[11] = static SearchTermAppsRanker.shared.getter();
  v2 = *(&async function pointer to dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:) + 1);
  v9 = (&async function pointer to dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:) + async function pointer to dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10000F8F8;
  v4 = v0[10];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v4, v6, v7, v1 & ~(v1 >> 63), v1 < 1, v5);
}

uint64_t sub_10000F8F8()
{
  sub_100010754();
  sub_100010760();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_100010728();
  *v5 = v4;
  *(v7 + 104) = v6;

  return (_swift_task_switch)(sub_10000FA08, 0, 0);
}

uint64_t sub_10000FA08()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v0 + 48))(*(v0 + 104), v1);

  (*(v2 + 8))(v1, v4);

  sub_100010748();

  return v5();
}

uint64_t sub_10000FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100010304(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10000B10C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10000E9B8(v12, &qword_100021758, &qword_1000145C8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000E9B8(a3, &qword_100021758, &qword_1000145C8);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E9B8(a3, &qword_100021758, &qword_1000145C8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_10000FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = UUID._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, v5);
}

uint64_t sub_10000FEF8()
{
  type metadata accessor for SearchTermAppsRankerDataCollector();
  static SearchTermAppsRankerDataCollector.shared.getter();
  dispatch thunk of SearchTermAppsRankerDataCollector.appSelectedForSearchTerm(rankEventId:selectedAppBundleId:numberOfAppsShown:)();
}

id sub_100010090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceService();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000100E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010140(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  v12 = sub_100010738(v11);
  *v12 = v13;
  v12[1] = sub_100010224;

  return sub_10000F740(a1, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100010224()
{
  sub_100010754();
  sub_100010760();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010728();
  *v4 = v3;

  sub_100010748();

  return v5();
}

uint64_t sub_100010304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010374(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001046C;

  return v7(a1);
}

uint64_t sub_10001046C()
{
  sub_100010754();
  sub_100010760();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010728();
  *v4 = v3;

  sub_100010748();

  return v5();
}

uint64_t sub_100010550()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100010738(v3);
  *v4 = v5;
  v6 = sub_100002C10(v4);

  return v7(v6);
}

uint64_t sub_1000105E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100010738(v3);
  *v4 = v5;
  v6 = sub_100002C10(v4);

  return v7(v6);
}

unint64_t sub_100010680()
{
  result = qword_100021760;
  if (!qword_100021760)
  {
    type metadata accessor for CoreAnalyticsMetric();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021760);
  }

  return result;
}

unint64_t sub_1000106D8()
{
  result = qword_1000216B0;
  if (!qword_1000216B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000216B0);
  }

  return result;
}

uint64_t sub_100010748()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001076C(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v21)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriInference25SiriInferenceXPCInterface_];
      [a2 setExportedInterface:v6];

      v7 = [objc_allocWithZone(type metadata accessor for SiriInferenceService()) init];
      [a2 setExportedObject:v7];

      [a2 resume];
      if (qword_1000210C0 != -1)
      {
        sub_100010BB0();
      }

      v8 = type metadata accessor for Logger();
      sub_100002B54(v8, qword_100021A90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      *v11 = 67240192;
      v11[1] = v3;
      sub_100002C30(&_mh_execute_header, v12, v13, "process [%{public}d] is connected to siriinferenced");
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    sub_100010B48(v24);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0();
  }

  v15 = type metadata accessor for Logger();
  sub_100002B54(v15, qword_100021A90);
  v9 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v16))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v17 = swift_slowAlloc();
  *v17 = 67240192;
  v17[1] = v3;
  sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v14 = 0;
LABEL_16:

LABEL_18:

  return v14;
}

id sub_100010A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceServiceDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100010AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010B48(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021690, &qword_100014540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010BB0()
{

  return swift_once();
}

id sub_100010BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100010C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersServiceDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100010C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100010CB4()
{
  v1 = v0;
  if (qword_1000210B0 != -1)
  {
    sub_100010F90();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initializing SiriRolloutsMonitor", v5, 2u);
  }

  v6 = type metadata accessor for ExperimentationAnalyticsManager();
  v7 = [objc_allocWithZone(v6) init];
  v1[5] = v6;
  v1[6] = &protocol witness table for ExperimentationAnalyticsManager;
  v1[2] = v7;
  return v1;
}

void sub_100010DB0(void *a1)
{
  v2 = v1;
  if (qword_1000210B0 != -1)
  {
    sub_100010F90();
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering SiriRolloutsMonitor activity", v7, 2u);
  }

  sub_100010F2C(v2 + 16, v10);
  v8 = objc_allocWithZone(type metadata accessor for RolloutsAnalyticsActivity());
  v9 = RolloutsAnalyticsActivity.init(analyticsManager:)();
  [a1 addOperation:v9];
}

uint64_t sub_100010ED0()
{
  sub_100004758((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100010F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010F90()
{

  return swift_once();
}

uint64_t sub_100010FB0(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v27)
    {
      if (qword_1000210B8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100002B54(v6, qword_100021A78);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "made the connection", v9, 2u);
      }

      v10 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP11SiriSignals23SiriSignalsXPCInterface_];
      [a2 setExportedInterface:v10];

      v11 = [objc_allocWithZone(type metadata accessor for SiriSignalsService()) init];
      [a2 setExportedObject:v11];

      [a2 resume];
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "resumed the connection", v14, 2u);
      }

      if (qword_1000210C0 != -1)
      {
        sub_100010BB0();
      }

      sub_100002B54(v6, qword_100021A90);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        v20 = 1;
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      *v17 = 67240192;
      v17[1] = v3;
      sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is connected to siriinferenced");
      v20 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    sub_100010B48(v30);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0();
  }

  v21 = type metadata accessor for Logger();
  sub_100002B54(v21, qword_100021A90);
  v15 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v15, v22))
  {
    v20 = 0;
    goto LABEL_24;
  }

  v23 = swift_slowAlloc();
  *v23 = 67240192;
  v23[1] = v3;
  sub_100002C30(&_mh_execute_header, v24, v25, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v20 = 0;
LABEL_22:

LABEL_24:

  return v20;
}

id sub_10001140C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsServiceDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100011464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000114BC()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  v5 = qword_100021A58;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100014280;
  v7 = StaticString.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000045F8();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100011DE0();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  sub_100011700();
  static os_signpost_type_t.end.getter();
  sub_100011DE0();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_100011700()
{
  v25 = type metadata accessor for DispatchTimeInterval();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v25);
  v3 = (v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for DispatchTime();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v24);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v23[1] = sub_100002B54(v11, qword_100021A90);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "calling suggestions service bridge...", v14, 2u);
  }

  type metadata accessor for SiriInferenceSuggestionsBridgeProvider();
  static SiriInferenceSuggestionsBridgeProvider.instance.getter();
  v15 = dispatch_semaphore_create(0);
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  static SiriInferenceSuggestionsBridgeProvider.getAsync(_:callback:)();

  static DispatchTime.now()();
  *v3 = 20;
  v17 = v25;
  (*(v0 + 104))(v3, enum case for DispatchTimeInterval.seconds(_:), v25);
  + infix(_:_:)();
  (*(v0 + 8))(v3, v17);
  v18 = *(v4 + 8);
  v19 = v24;
  v18(v8, v24);
  OS_dispatch_semaphore.wait(timeout:)();
  v18(v10, v19);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "The suggestions bridge did not return within 20 seconds. Carrying on anyway", v22, 2u);
    }
  }
}

uint64_t sub_100011AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return (_swift_task_switch)(sub_100011AD0, 0, 0);
}

uint64_t sub_100011AD0()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_100011D9C(v1, v1[3]);
  dispatch thunk of SiriInferenceSuggestionsBridge.startSiriSuggestionsService()();
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002B54(v3, qword_100021A90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "successfully called suggestions service bridge", v6, 2u);
  }

  v7 = v0[3];

  OS_dispatch_semaphore.signal()();
  v8 = v0[1];

  return v8();
}

uint64_t sub_100011C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011CA8;

  return sub_100011AB0(a1, v4);
}

uint64_t sub_100011CA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_100011D9C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100011DF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void static SiriUIBiomeMonitor.deregister()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100002BB8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002BA8();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100002BA8();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002B54(v13, qword_100021A60);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Deregistering SiriUIBiomeMonitor", v16, 2u);
    sub_10000EF4C();
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  sub_100012CB8();
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = objc_allocWithZone(BMBiomeScheduler);
  v19 = sub_100012CB8();
  v21 = sub_100012C18(v19, v20, v17);
  v22 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v23 = [v22 UI];
  swift_unknownObjectRelease();
  v24 = [v23 DSLPublisher];

  v25 = [v24 subscribeOn:v21];
  v33 = nullsub_1;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100011DF0;
  v32 = &unk_10001D198;
  v26 = _Block_copy(&aBlock);
  v33 = nullsub_1;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100001BD8;
  v32 = &unk_10001D1C0;
  v27 = _Block_copy(&aBlock);
  v28 = [v25 sinkWithCompletion:v26 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v26);

  [v28 cancel];
}

uint64_t SiriUIBiomeMonitor.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  SiriUIBiomeMonitor.init(queue:)(a1);
  return v2;
}

uint64_t SiriUIBiomeMonitor.init(queue:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Initializing SiriUIBiomeMonitor", v7, 2u);
    sub_10000EF4C();
  }

  v8 = sub_1000123F0(a1);
  v9 = *(v2 + 16);
  *(v2 + 16) = v8;

  return v2;
}

id sub_1000123F0(void *a1)
{
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100002BB8(v44);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002BA8();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100002BA8();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100002B54(v45, qword_100021A60);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Registering SiriUIBiomeMonitor", v15, 2u);
    sub_10000EF4C();
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  sub_100012CB8();
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = objc_allocWithZone(BMBiomeScheduler);
  v18 = sub_100012CB8();
  v20 = sub_100012C18(v18, v19, v16);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v23 = [v22 UI];
  swift_unknownObjectRelease();
  v24 = [v23 DSLPublisher];

  v25 = [v24 subscribeOn:v20];
  v54 = sub_100012A84;
  v55 = 0;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100011DF0;
  v53 = &unk_10001D210;
  v26 = _Block_copy(&aBlock);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v21;
  v54 = sub_100001CA0;
  v55 = v27;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100001BD8;
  v53 = &unk_10001D260;
  v28 = _Block_copy(&aBlock);
  v29 = a1;

  v30 = [v25 sinkWithCompletion:v26 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v26);

  if (qword_1000210C8 != -1)
  {
    swift_once();
  }

  sub_100002B54(v45, qword_100021AA8);
  swift_retain_n();
  v31 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v48 = v20;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v34 = 136315650;
    v36 = [v31 debugDescription];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_100004694(v37, v39, &v49);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2112;
    v41 = [v31 status];
    *(v34 + 14) = v41;
    *v35 = v41;
    *(v34 + 22) = 2048;
    swift_beginAccess();
    v42 = *(v21 + 16);

    *(v34 + 24) = v42;

    _os_log_impl(&_mh_execute_header, v32, v33, "Biome: Created Sink: %s, Sink Status: %@, Fetched Event Count: %ld", v34, 0x20u);
    sub_100002A94(v35);
    sub_10000EF4C();

    sub_100004758(v46);
    sub_10000EF4C();

    sub_10000EF4C();
  }

  else
  {
  }

  return v31;
}

void sub_100012A84(void *a1)
{
  if (qword_1000210C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021AA8);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Biome: BiomeClientDaemon Completion: %@", v5, 0xCu);
    sub_100002A94(v6);
  }
}

uint64_t SiriUIBiomeMonitor.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100012C18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

void sub_100012CC4()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  if (v2)
  {
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v9 = 0;
    v6 = [v0 removeItemAtURL:v4 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100012DE8()
{
  v0 = String.utf8CString.getter();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = String.init(cString:)();

  return v2;
}