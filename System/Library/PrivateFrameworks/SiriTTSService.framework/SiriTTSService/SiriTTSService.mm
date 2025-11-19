uint64_t sub_1000016D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000016E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000016F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000017A8(void *a1)
{
  v45 = type metadata accessor for Entitlements();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v45);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received new connection, %@", v16, 0xCu);
    sub_100001E9C(v17, &qword_1000353F8, &qword_100027B40);
  }

  (*(v9 + 8))(v12, v8);
  v19 = objc_opt_self();
  v20 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL____TtP14SiriTTSService14DaemonProtocol_];
  v21 = static DaemonXPCAllowedTypeSets.CancellableRequestsTypes.getter();
  sub_100001EFC(v21);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v20 setClasses:isa forSelector:"cancelWithRequest:" argumentIndex:0 ofReply:0];

  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100027E40;
  v24 = sub_1000228D4(0, &qword_100035B70, NSArray_ptr);
  *(v23 + 56) = sub_10000AEF4(&qword_100035B78, &qword_100028010);
  *(v23 + 32) = v24;
  v25 = type metadata accessor for SynthesisVoice();
  *(v23 + 88) = sub_10000AEF4(&qword_100035B80, &qword_100028018);
  *(v23 + 64) = v25;
  sub_1000228D4(0, &qword_100035B88, NSSet_ptr);
  v26 = NSSet.init(arrayLiteral:)();
  sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
  sub_1000022D8();
  v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100001EFC(v27);

  v28 = Set._bridgeToObjectiveC()().super.isa;

  [v20 setClasses:v28 forSelector:"subscribeWithVoices:clientId:accessoryId:reply:" argumentIndex:0 ofReply:0];

  [v13 setExportedInterface:v20];
  v29 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL____TtP14SiriTTSService22DaemonDelegateProtocol_];
  [v13 setRemoteObjectInterface:v29];
  v30 = v13;
  Entitlements.init(connection:)();
  v50 = sub_100005568;
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100005500;
  v49 = &unk_100031F60;
  v31 = _Block_copy(&aBlock);
  v32 = [v30 remoteObjectProxyWithErrorHandler:v31];
  _Block_release(v31);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000AEF4(&unk_100035A40, &unk_100027F40);
  swift_dynamicCast();
  v33 = v45;
  v34 = v44;
  (*(v2 + 16))(v44, v7, v45);
  v35 = objc_allocWithZone(type metadata accessor for DaemonXPCHandler(0));
  v36 = swift_unknownObjectRetain();
  v37 = sub_100002340(v36, v34);
  swift_unknownObjectRelease();
  [v30 setExportedObject:v37];
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = v37;
  v50 = sub_100002F38;
  v51 = v38;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100002B68;
  v49 = &unk_100031FB0;
  v39 = _Block_copy(&aBlock);
  v40 = v30;
  v41 = v37;

  [v40 setInvalidationHandler:v39];
  _Block_release(v39);
  [v40 resume];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v7, v33);
  return 1;
}

uint64_t sub_100001E5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000AEF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100001EFC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_10000AEF4(&qword_100035BA0, &qword_100028020);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
  sub_1000022D8();
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100002278();

      return v3;
    }

    *&v27 = v16;
    sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000022A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000022D8()
{
  result = qword_100035B98;
  if (!qword_100035B98)
  {
    sub_1000228D4(255, &qword_100035B90, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B98);
  }

  return result;
}

id sub_100002340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession] = 0;
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate] = a1;
  type metadata accessor for Preferences();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_preferences] = static Preferences.shared.getter();
  v5 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_entitlements;
  v6 = type metadata accessor for Entitlements();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v3[v5], a2, v6);
  v8 = type metadata accessor for TTSAssetUAFAssetProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider] = TTSAssetUAFAssetProvider.init()();
  v11 = type metadata accessor for TrialAssetProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_trialAssetProvider] = TrialAssetProvider.init()();
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService] = qword_100035D38;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for DaemonXPCHandler(0);

  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v7 + 8))(a2, v6);
  return v14;
}

void sub_100002584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.listVoices(_:)();
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_trialAssetProvider);
    v5 = dispatch thunk of TrialAssetProvider.listVoices(_:)();
    sub_100003A24(v5, sub_100019048);
    v6 = type metadata accessor for PreinstalledVoiceProvider();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    PreinstalledVoiceProvider.init()();
    v9 = dispatch thunk of PreinstalledVoiceProvider.listVoices(_:)();

    sub_100003A24(v9, sub_100019048);
  }

  type metadata accessor for SynthesisVoice();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100002770()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_100002D7C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A10;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_100002A74()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100002ABC()
{
  result = qword_1000353F0;
  if (!qword_1000353F0)
  {
    sub_10000B094(&qword_1000351A0, &unk_100027BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353F0);
  }

  return result;
}

uint64_t sub_100002B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002B68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(a1 + 24);
  v8 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v9 = v8;
  if (a3)
  {
    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = a4;
      v11 = 0;
      a4 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (dispatch thunk of SynthesisVoiceSubscription.clientId.getter() == a2 && v16 == a3)
        {
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v11;
        if (v15 == i)
        {
          a4 = v19;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:

    v9 = _swiftEmptyArrayStorage;
  }

  a4(v9);
}

void (*sub_100002D8C(void *a1))(char *, void)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "XPC connection invalidated, %@", v10, 0xCu);
    sub_100001E9C(v11, &qword_1000353F8, &qword_100027B40);
  }

  (*(v3 + 8))(v6, v2);
  return sub_100002F40();
}

void (*sub_100002F40())(char *, void)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  static Logger.service.getter();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalidate DaemonXPCHandler, %@", v12, 0xCu);
    sub_100001E9C(v13, &qword_1000353F8, &qword_100027B40);
  }

  v16 = *(v2 + 8);
  v15 = v2 + 8;
  v42 = v16;
  v16(v8, v1);
  v17 = *&v9[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  if (qword_1000351B0 != -1)
  {
    swift_once();
  }

  v18 = qword_100035298;
  [qword_100035298 lock];
  if (qword_1000351A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = off_100035290;

  __chkstk_darwin([v18 unlock]);
  *(&v39 - 2) = v17;
  v20 = sub_10000343C(v19, sub_100003A1C);

  if (v20 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v22 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_16;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  for (i = 0; i != v22; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v20 + 8 * i + 32);
    }

    v25 = v24;
    [v24 cancel];
  }

LABEL_16:

  v26 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession;
  if (!*&v9[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession])
  {
    return result;
  }

  type metadata accessor for EngineCachingService();
  static EngineCachingService.shared.getter();
  result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
  v28 = *v27 - 1;
  if (__OFSUB__(*v27, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v41 = v15;
  *v27 = v28;
  result(v43, 0);

  static Logger.service.getter();
  v29 = v6;
  v30 = v9;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v1;
    v35 = v34;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2048;
    v36 = v30;
    static EngineCachingService.shared.getter();
    v37 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

    *(v33 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "DaemonXPCHandler %@ invalidated, total active session count: %ld", v33, 0x16u);
    sub_100001E9C(v35, &qword_1000353F8, &qword_100027B40);
    v1 = v40;
  }

  v42(v29, v1);
  v38 = *&v9[v26];
  *&v9[v26] = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000343C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v40 = v7;
  v37 = v3;
  v38 = result;
  while (v6)
  {
LABEL_10:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);

    v17 = a2(v15, v14, v16);

    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v10 >> 62;
    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v19;
    v21 = __OFADD__(result, v19);
    v22 = result + v19;
    if (v21)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v20)
      {
LABEL_22:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v24 = *(v23 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = result;
      v23 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v20)
    {
      goto LABEL_22;
    }

    v23 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v43 = v10;
LABEL_24:
    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    if (v18)
    {
      v28 = v23;
      result = _CocoaArrayWrapper.endIndex.getter();
      v23 = v28;
      v27 = result;
    }

    else
    {
      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (v27)
    {
      if (((v26 >> 1) - v25) < v45)
      {
        goto LABEL_43;
      }

      v42 = v9;
      v29 = v23 + 8 * v25 + 32;
      v39 = v23;
      if (v18)
      {
        if (v27 < 1)
        {
          goto LABEL_45;
        }

        sub_10000675C(&qword_100035A88, &qword_100035A80, &qword_100027F70);
        v30 = 0;
        do
        {
          sub_10000AEF4(&qword_100035A80, &qword_100027F70);
          v31 = sub_100019390(v44, v30, v17);
          v33 = v27;
          v34 = *v32;
          (v31)(v44, 0);
          *(v29 + 8 * v30) = v34;
          v27 = v33;
          ++v30;
        }

        while (v33 != v30);
      }

      else
      {
        type metadata accessor for TaskOperation();
        swift_arrayInitWithCopy();
      }

      v3 = v37;
      v2 = v38;
      v7 = v40;
      v10 = v43;
      v9 = v42;
      if (v45 >= 1)
      {
        v35 = *(v39 + 16);
        v21 = __OFADD__(v35, v45);
        v36 = v35 + v45;
        if (v21)
        {
          goto LABEL_44;
        }

        *(v39 + 16) = v36;
      }
    }

    else
    {

      v7 = v40;
      v10 = v43;
      if (v45 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_1000037C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  [v4 lock];
  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = v5;
    v7 = TaskOperation.delegate.getter();
    swift_unknownObjectRelease();
    if (v7 == a1)
    {
      v8 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_beginAccess();
  v9 = *(v2 + 24);
  if (v9 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v18 = v4;
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = TaskOperation.delegate.getter();
      swift_unknownObjectRelease();
      if (v15 == a1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v14 == i)
      {
        v4 = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  sub_100003BBC(_swiftEmptyArrayStorage);
  [v4 unlock];
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100003A24(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100003B1C(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100003B1C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100003CF0(void *a1, uint64_t a2)
{
  v61 = a1;
  v57[0] = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v59 = *(v57[0] - 8);
  v3 = *(v59 + 64);
  v4 = __chkstk_darwin(v57[0]);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v57 - v6;
  v8 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v9 = type metadata accessor for RequestPreprocessAction();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  swift_retain_n();
  v12 = RequestPreprocessAction.init(pool:)();
  v64 = v9;
  v65 = &protocol witness table for RequestPreprocessAction;
  v63 = v12;
  v13 = *(v8 + 48);
  v14 = *(v8 + 52);
  swift_allocObject();
  v15 = WorkflowNode.init(action:)();
  v16 = type metadata accessor for RequestParsingAction();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = RequestParsingAction.init(pool:)();
  v64 = v16;
  v65 = &protocol witness table for RequestParsingAction;
  v63 = v19;
  v20 = *(v8 + 48);
  v21 = *(v8 + 52);
  swift_allocObject();
  v22 = WorkflowNode.init(action:)();
  v23 = type metadata accessor for VoiceSelectionAction();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = VoiceSelectionAction.init(pool:)();
  v64 = v23;
  v65 = &protocol witness table for VoiceSelectionAction;
  v63 = v26;
  v27 = *(v8 + 48);
  v28 = *(v8 + 52);
  swift_allocObject();
  v29 = WorkflowNode.init(action:)();
  v30 = type metadata accessor for SynthesisPrewarmAction();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = SynthesisPrewarmAction.init(pool:)();
  v64 = v30;
  v65 = &protocol witness table for SynthesisPrewarmAction;
  v63 = v33;
  v34 = *(v8 + 48);
  v35 = *(v8 + 52);
  swift_allocObject();
  v36 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100027E00;
  *(v37 + 32) = v15;
  *(v37 + 40) = v22;
  *(v37 + 48) = v29;
  *(v37 + 56) = v36;
  v57[2] = v15;

  v60 = v22;

  v57[1] = v29;

  v38 = v57[0];
  v62 = v7;
  DirectedAcyclicGraph.chain(nodes:)(v37);

  type metadata accessor for SynthesisRequest();
  v39 = v61;
  SynthesizingRequestProtocol.privacySensitive.getter();
  SynthesizingRequestProtocol.privacySensitive.setter();
  v40 = sub_100019520();
  if (v40)
  {
    if (sub_10001992C(v39, v40, a2))
    {
      v41 = v38;
      v42 = type metadata accessor for OspreyTTSPrewarmAction();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = OspreyTTSPrewarmAction.init(pool:)();
      v64 = v42;
      v65 = &protocol witness table for OspreyTTSPrewarmAction;
      v63 = v45;
      v46 = *(v8 + 48);
      v47 = *(v8 + 52);
      swift_allocObject();
      v48 = WorkflowNode.init(action:)();
      v63 = v60;
      v66 = v48;
      v38 = v41;
      DirectedAcyclicGraph.connect(fromNode:toNode:)();
    }
  }

  SynthesizingRequestProtocol.privacySensitive.setter();
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  v49 = v57[3];
  dispatch thunk of ObjectPool.find<A>()();
  if (v49)
  {
  }

  v50 = v59;
  v51 = v62;
  (*(v59 + 16))(v58, v62, v38);
  v52 = type metadata accessor for Workflow();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = Workflow.init(graph:notification:errorHandlers:)();
  (*(v50 + 8))(v51, v38);

  return v55;
}

uint64_t sub_1000041F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000430C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004418(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004474(v11);
  return v7;
}

unint64_t sub_10000430C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005DC0(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t sub_100004418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004474(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000044C0(void *a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for UUID();
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v90 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v97 = &v88 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v12 - 1);
  v96 = v12;
  v13 = *(v95 + 64);
  __chkstk_darwin(v12);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v91 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = swift_allocObject();
  *(v101 + 16) = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v99 = v6;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v100 = a2;
    v89 = a3;
    v31 = v30;
    *&aBlock = v30;
    *v29 = 136446210;
    v32 = [v25 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v20;
    v34 = v25;
    v36 = v35;

    v37 = sub_100004240(v33, v36, &aBlock);
    v25 = v34;

    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Received #PrewarmRequest %{public}s", v29, 0xCu);
    sub_100004474(v31);
    a2 = v100;

    (*(v21 + 8))(v24, v88);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  v38 = type metadata accessor for ObjectPool();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = ObjectPool.init()();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v42 = type metadata accessor for TTSAssetUAFAssetProvider();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v45 = type metadata accessor for TrialAssetProvider();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v48 = type metadata accessor for LocalAssetProvider();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v51 = type metadata accessor for VocalizerCustomVoiceProvider();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v54 = type metadata accessor for PreinstalledVoiceProvider();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v57 = type metadata accessor for BuiltInVoiceProvider();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v60 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v60, v61, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v62 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v62;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v63 = sub_100003CF0(v25, v41);

  v89 = v25;
  v100 = a2;
  v64 = swift_allocObject();
  *(v64 + 16) = _swiftEmptyArrayStorage;

  v65 = os_transaction_create();
  if (v65)
  {
    v66 = v65;
    ObjectType = swift_getObjectType();
    *&aBlock = v66;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 16) = _swiftEmptyArrayStorage;
    v68 = _swiftEmptyArrayStorage;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_10000663C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      *(v64 + 16) = v68;
    }

    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_10000663C((v69 > 1), v70 + 1, 1, v68);
      *(v64 + 16) = v68;
    }

    swift_unknownObjectRelease();
    *(v68 + 2) = v70 + 1;
    sub_10000674C(&aBlock, &v68[32 * v70 + 32]);
    *(v64 + 16) = v68;
  }

  if (static MobileGestalt.isWatchOS.getter())
  {
    v71 = 0;
  }

  else
  {
    sub_1000228D4(0, &qword_100035B30, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000041F8(&qword_100035CF0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10000AEF4(&unk_100035B40, &qword_100027980);
    sub_10000675C(&qword_100035D00, &unk_100035B40, &qword_100027980);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v95 + 104))(v94, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
    v71 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v72 = v71;
  }

  v73 = v89;
  v74 = *(v100 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  objc_allocWithZone(type metadata accessor for TaskOperation());
  v73;
  swift_unknownObjectRetain();
  v96 = v62;
  v100 = v63;
  v75 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v76 = swift_allocObject();
  v77 = v101;
  v76[2] = sub_100022B24;
  v76[3] = v77;
  v76[4] = v75;
  v76[5] = v64;
  v105 = sub_1000071D8;
  v106 = v76;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v103 = sub_100002B68;
  ObjectType = &unk_100031F38;
  v78 = _Block_copy(&aBlock);
  v79 = v75;

  sub_1000067AC(sub_1000071D8);

  [v79 setCompletionBlock:v78];
  _Block_release(v78);

  v80 = v97;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v82 = v98;
  v81 = v99;
  if ((*(v98 + 48))(v80, 1, v99))
  {
    sub_100001E9C(v80, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v83 = v90;
    (*(v82 + 16))(v90, v80, v81);
    sub_100001E9C(v80, &qword_100035810, &qword_100027D68);
    v84 = UUID.uuidString.getter();
    v86 = v85;
    (*(v82 + 8))(v83, v81);
    sub_100007504(v84, v86);
  }

  sub_100007914(v79);
}

uint64_t sub_1000050F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100005134(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1000051EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for OspreyServerConfig();
  v7 = swift_allocObject();
  type metadata accessor for CKKnowledgeStore();
  v8 = dispatch thunk of static CKKnowledgeStore.userDefaultsKnowledgeStore()();
  v7[3] = a2;
  v7[4] = v8;
  v7[2] = a1;
  v9 = type metadata accessor for OspreyBuiltInConfig();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = OspreyBuiltInConfig.init()();
  sub_10000AEF4(&qword_100035B20, &qword_100027FE8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100027E40;
  *(v13 + 56) = v6;
  v14 = sub_1000041F8(&qword_100035B28, type metadata accessor for OspreyServerConfig);
  *(v13 + 32) = v7;
  *(v13 + 96) = v9;
  *(v13 + 104) = &protocol witness table for OspreyBuiltInConfig;
  *(v13 + 64) = v14;
  *(v13 + 72) = v12;
  v15 = type metadata accessor for OspreyChainedConfigs();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = OspreyChainedConfigs.init(configs:)();
  a3[3] = v15;
  a3[4] = &protocol witness table for OspreyChainedConfigs;

  *a3 = v18;
  return result;
}

void *sub_10000535C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000053A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000053B8()
{
  v1 = *(v0 + 32);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v9[0] = v6;
      sub_10001301C();
      v4 = StringProtocol.components<A>(separatedBy:)();

      return v4;
    }
  }

  else
  {
    sub_1000099A4(v9);
  }

  return 0;
}

void sub_100005500(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100005568()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100004240(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC connection error from Daemon to Framework, error: %s", v7, 0xCu);
    sub_100004474(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_100005734()
{
  v0 = type metadata accessor for Logger();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  aBlock[4] = sub_100005B4C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031DA8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v28 pingWithReply:v18];
  _Block_release(v18);
  static DispatchTime.now()();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v3);
  + infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  v20 = *(v9 + 8);
  v20(v13, v8);
  OS_dispatch_semaphore.wait(timeout:)();
  v20(v15, v8);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
  }

  else
  {
    v21 = v25;
    static Logger.service.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get reply from client in time.", v24, 2u);
    }

    else
    {
    }

    (*(v26 + 8))(v21, v27);
  }
}

uint64_t sub_100005B14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005B70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    [a1 updateState:0];
  }

  v12 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v12);

  v13 = *(a3 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate);
  sub_100005734();
  v14 = dispatch thunk of TaskOperation.error.getter();
  a4();

  swift_beginAccess();
  v15 = *(a7 + 16);
  *(a7 + 16) = _swiftEmptyArrayStorage;

  if ((a9 & 1) == 0)
  {
    return sandbox_extension_release();
  }

  return result;
}

void *sub_100005C90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100005E0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005E0C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100005DC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005C90(a1, a2);
  sub_100005E80(&off_1000314A0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100005E0C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000AEF4(&unk_100035CE0, &qword_100027970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100005E80(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000B0DC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100005F6C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSError.TTSErrorCode();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  v6 = __chkstk_darwin(v4);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v60 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v60 - v15;
  static Logger.service.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v10;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting task: %@)", v21, 0xCu);
    sub_100006568(v22);

    v10 = v20;
  }

  v26 = *(v10 + 8);
  v25 = v10 + 8;
  v24 = v26;
  v26(v16, v9);
  [v17 start];
  static Logger.service.getter();
  v27 = v17;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v68 = a2;
  if (v30)
  {
    v61 = v24;
    v62 = v25;
    v63 = v9;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v69 = v33;
    *v31 = 138412546;
    *(v31 + 4) = v27;
    *v32 = v27;
    *(v31 + 12) = 2080;
    v34 = v27;
    v35 = dispatch thunk of TaskOperation.error.getter();
    if (v35)
    {
      v36 = v35;
      v37 = [v35 localizedDescription];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v40 = 0xE700000000000000;
      v38 = 0x73736563637573;
    }

    v41 = sub_100004240(v38, v40, &v69);

    *(v31 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Task finished: %@, error: %s", v31, 0x16u);
    sub_100006568(v32);

    sub_100004474(v33);

    v61(v14, v63);
  }

  else
  {

    v24(v14, v9);
  }

  v42 = dispatch thunk of TaskOperation.error.getter();
  v43 = v42;
  v45 = v66;
  v44 = v67;
  if (v42)
  {
    v46 = [v42 code];
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v45 + 104);
  v48 = v65;
  v47(v65, enum case for TTSError.TTSErrorCode.waitDequeueTimeout(_:), v44);
  v49 = TTSError.TTSErrorCode.rawValue.getter();
  v50 = *(v45 + 8);
  v50(v48, v44);
  if (v43 && v46 == v49)
  {
    sub_10000B9B4(0x5353545469726953, 0xEE00656369767265, 0x676E61486B736154, 0xE800000000000000, 0x6473747469726973, 0xE800000000000000);
  }

  else
  {
    v51 = dispatch thunk of TaskOperation.error.getter();
    v52 = v51;
    if (v51)
    {
      v53 = [v51 code];
    }

    else
    {
      v53 = 0;
    }

    v54 = v64;
    v47(v64, enum case for TTSError.TTSErrorCode.synthesisIssueBNNSInference(_:), v44);
    v55 = TTSError.TTSErrorCode.rawValue.getter();
    v50(v54, v44);
    if (v52 && v53 == v55)
    {
      sub_10000BECC(0x5353545469726953, 0xEE00656369767265, 0xD000000000000016, 0x8000000100029170, 0x6473747469726973, 0xE800000000000000);
    }
  }

  v56 = v68;
  v57 = *(v68 + 40);
  [v57 lock];
  v58 = *(v56 + 32);
  *(v56 + 32) = 0;

  return sub_1000067BC([v57 unlock]);
}

uint64_t sub_100006568(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_1000353F8, &qword_100027B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000065D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *sub_10000663C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035A70, &unk_100027F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_10000674C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000675C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B094(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1000067BC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[5];
  [v13 lock];
  swift_beginAccess();
  v14 = v0[3];
  if (v14 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return [v13 unlock];
    }
  }

  else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return [v13 unlock];
  }

  v55 = v9;
  v56 = v4;
  if ((v14 & 0xC000000000000001) != 0)
  {

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v14 + 32);
  }

  v15 = v2[4];
  v57 = v13;
  if (v15)
  {
    v16 = v15;
    v17 = TaskOperation.request.getter();
    v59 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v54 = v17;
      v18 = TaskOperation.request.getter();
      v58 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
      v19 = swift_dynamicCastObjCProtocolConditional();

      if (v19)
      {
        swift_getObjectType();
        if (AudibleRequestProtocol.immediate.getter())
        {
          [v16 cancel];
        }

        goto LABEL_21;
      }

      [v16 cancel];
      v22 = TaskOperation.queue.getter();
      if (!v22)
      {
LABEL_21:

LABEL_38:
        goto LABEL_39;
      }

      v23 = v22;
      v24 = TaskOperation.queue.getter();
      if (v24)
      {
        v53 = v24;
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v65 = sub_10000DC58;
        v66 = v25;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_100002B68;
        v64 = &unk_100031840;
        v26 = _Block_copy(&aBlock);
        v27 = v23;
        static DispatchQoS.unspecified.getter();
        v60 = _swiftEmptyArrayStorage;
        sub_100007488();
        sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
        sub_100002ABC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v53;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v26);
LABEL_36:
        (*(v56 + 8))(v7, v3);
        (v55[1])(v12, v8);

        goto LABEL_39;
      }

      sub_10000AEF4(&qword_1000353D8, &qword_100027B38);
      v29 = *(v56 + 72);
      v30 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100027AE0;
      static DispatchWorkItemFlags.detached.getter();
      aBlock = v31;
      sub_100007488();
      sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
      sub_100002ABC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = swift_allocObject();
      *(v32 + 16) = v23;
      v65 = sub_10000DC18;
      v66 = v32;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_100002B68;
      v64 = &unk_1000317F0;
      _Block_copy(&aBlock);
      v33 = type metadata accessor for DispatchWorkItem();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = v23;
      DispatchWorkItem.init(flags:block:)();

      v37 = v2[2];
      OS_dispatch_queue.async(execute:)();
    }

    else
    {
    }

LABEL_39:
    v13 = v57;
    return [v13 unlock];
  }

  result = swift_beginAccess();
  v14 = v2[3];
  v1 = v14 >> 62;
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_27:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_13:
      if ((v14 & 0xC000000000000001) == 0)
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v21 = *(v14 + 32);
        if (!v1)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

LABEL_31:
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v1)
      {
LABEL_16:
        result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_33;
      }

LABEL_32:
      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
      if (result)
      {
        sub_1000072A8(0, 1);
        swift_endAccess();

        v38 = v2[4];
        v2[4] = v9;
        v39 = v9;

        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v2;
        v16 = v39;

        v41 = TaskOperation.queue.getter();
        if (!v41)
        {
          sub_10000AEF4(&qword_1000353D8, &qword_100027B38);
          v45 = *(v56 + 72);
          v46 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_100027AE0;
          static DispatchWorkItemFlags.detached.getter();
          aBlock = v47;
          sub_100007488();
          sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
          sub_100002ABC();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v65 = sub_1000071D0;
          v66 = v40;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_100002B68;
          v64 = &unk_100031750;
          _Block_copy(&aBlock);
          v48 = type metadata accessor for DispatchWorkItem();
          v49 = *(v48 + 48);
          v50 = *(v48 + 52);
          swift_allocObject();

          DispatchWorkItem.init(flags:block:)();

          v51 = v2[2];
          OS_dispatch_queue.async(execute:)();

          goto LABEL_38;
        }

        v42 = v41;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1000071D0;
        *(v43 + 24) = v40;
        v65 = sub_1000071A8;
        v66 = v43;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_100002B68;
        v64 = &unk_1000317A0;
        v44 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v60 = _swiftEmptyArrayStorage;
        sub_100007488();
        sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
        sub_100002ABC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v44);

        goto LABEL_36;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1000070F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000716C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000071A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000071DC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = dispatch thunk of TaskOperation.error.getter();
  a1();

  swift_beginAccess();
  v7 = *(a4 + 16);
  *(a4 + 16) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000072A8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1000072A4(result);

  return sub_100007380(v4, v2, 0);
}

uint64_t sub_100007380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TaskOperation();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100007488()
{
  result = qword_1000353E0;
  if (!qword_1000353E0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353E0);
  }

  return result;
}

unint64_t sub_100007504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000351B0 != -1)
  {
    swift_once();
  }

  v9 = qword_100035298;
  [qword_100035298 lock];
  if (qword_1000351A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_100035290;
  if (*(off_100035290 + 2))
  {
    v11 = sub_1000077E4(a1, a2);
    if (v12)
    {
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
LABEL_11:

      [v9 unlock];
      return v13;
    }
  }

  swift_endAccess();
  type metadata accessor for TaskQueue();
  v14 = swift_allocObject();
  v14[3] = _swiftEmptyArrayStorage;
  v14[4] = 0;
  v15 = objc_allocWithZone(NSRecursiveLock);

  v14[5] = [v15 init];
  sub_10000B048();
  static OS_dispatch_queue.synthesisQoS.getter();
  static OS_dispatch_queue.platformSynthesisPriority.getter();
  v16 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)();
  (*(v5 + 8))(v8, v4);
  v14[2] = v16;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = off_100035290;
  off_100035290 = 0x8000000000000000;
  sub_10000CFF8(v14, a1, a2, isUniquelyReferenced_nonNull_native);

  v18 = v22;
  off_100035290 = v22;
  result = swift_endAccess();
  if (v18[2])
  {
    result = sub_1000077E4(a1, a2);
    if (v20)
    {
      v13 = *(v18[7] + 8 * result);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000077E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000785C(a1, a2, v6);
}

unint64_t sub_10000785C(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_100007914(unint64_t i)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  static Logger.service.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v42 = i;
  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Will enqueue task", v15, 2u);
    i = v42;
  }

  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v40 = v17;
  v17(v11, v4);
  v18 = *(v2 + 40);
  [v18 lock];
  v19 = TaskOperation.request.getter();
  v44 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  v20 = swift_dynamicCastObjCProtocolConditional();

  v41 = v18;
  if (!v20)
  {
    swift_beginAccess();
    v29 = i;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

  swift_beginAccess();
  v21 = *(v2 + 24);
  v38[1] = v16;
  v39 = v4;
  if (v21 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      while (!__OFSUB__(i--, 1))
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v23 = *(v21 + 32 + 8 * i);
        }

        v24 = v23;
        v25 = TaskOperation.request.getter();

        v43 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
        if (swift_dynamicCastObjCProtocolConditional())
        {

          v21 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        if (!i)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_30;
    }

LABEL_16:

    i = -1;
    v21 = 0;
    if (!__OFADD__(-1, 1))
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_17:
  swift_beginAccess();
  v26 = *(v2 + 24);
  if (v26 >> 62)
  {
    if (v26 < 0)
    {
      v37 = *(v2 + 24);
    }

    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v39;
  if (v27 < v21)
  {
    __break(1u);
  }

  else if ((v21 & 0x8000000000000000) == 0)
  {
    v28 = v42;
    sub_10000DB2C(v21, v21, v28);
    swift_endAccess();

    i = v42;
    goto LABEL_24;
  }

  __break(1u);
LABEL_39:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_23:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_24:
  static Logger.service.getter();
  v30 = i;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "Enqueued task: %@", v33, 0xCu);
    sub_100006568(v34);
  }

  v40(v9, v4);
  sub_1000067BC();
  return [v41 unlock];
}

uint64_t sub_100007DC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100007E04(void *a1, char *a2, const void *a3)
{
  v175 = a2;
  v5 = type metadata accessor for UUID();
  v167 = *(v5 - 8);
  v168 = v5;
  v6 = *(v167 + 64);
  __chkstk_darwin(v5);
  v163 = v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v166 = v157 - v10;
  v11 = type metadata accessor for Logger();
  v172 = *(v11 - 1);
  v173 = v11;
  v12 = v172[8];
  v13 = __chkstk_darwin(v11);
  v164 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v165 = v157 - v16;
  __chkstk_darwin(v15);
  v171 = v157 - v17;
  v18 = type metadata accessor for OSSignpostID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v157 - v24;
  v170 = type metadata accessor for OSSignposter();
  v26 = *(v170 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v170);
  v29 = v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = swift_allocObject();
  *(v174 + 16) = a3;
  v169 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    v162 = v18;
    v33 = a1;
    v34 = v32;
    *v32 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v35, "TTS enqueue speech task", "", v34, 2u);
    a1 = v33;
    v18 = v162;
  }

  (*(v19 + 16))(v23, v25, v18);
  v36 = type metadata accessor for OSSignpostIntervalState();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v25, v18);
  (*(v26 + 8))(v29, v170);
  v40 = v171;
  static Logger.service.getter();
  v41 = a1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136446210;
    v46 = v39;
    v47 = [v41 description];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = sub_100004240(v48, v50, &aBlock);

    *(v44 + 4) = v51;
    v39 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "Received #SpeechRequest %{public}s", v44, 0xCu);
    sub_100004474(v45);
  }

  (v172[1])(v40, v173);
  v52 = type metadata accessor for ObjectPool();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = ObjectPool.init()();
  v56 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v56;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v57 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for InlineStreamingStorage();
  *&aBlock = static InlineStreamingStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v58 = type metadata accessor for TTSAssetUAFAssetProvider();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v61 = type metadata accessor for TrialAssetProvider();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v64 = type metadata accessor for LocalAssetProvider();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v67 = type metadata accessor for VocalizerCustomVoiceProvider();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v70 = type metadata accessor for PreinstalledVoiceProvider();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v73 = type metadata accessor for BuiltInVoiceProvider();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v76 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v76, v77, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  v78 = type metadata accessor for SiriSynthesisProfile();
  v79 = swift_allocObject();
  *(v79 + 28) = 0;
  *(v79 + 32) = 1;
  *(v79 + 16) = 0x4014000000000000;
  *(v79 + 24) = 0;
  sub_1000228D4(0, &qword_100035B30, OS_dispatch_queue_ptr);
  v80 = static OS_dispatch_queue.appSynthesisPriority(request:)();
  *(v79 + 28) = v80;
  *(v79 + 32) = BYTE4(v80) & 1;
  *(&v177 + 1) = v78;
  v178 = sub_1000041F8(&qword_100035AC8, type metadata accessor for SiriSynthesisProfile);
  *&aBlock = v79;

  sub_10000AEF4(&qword_100035AD0, &qword_100027FA0);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for CacheStorage();
  v81 = static CacheStorage.sharedSynthesisCache.getter();
  if (v81)
  {
    *&aBlock = v81;
    dispatch thunk of ObjectPool.inject<A>(object:)();
  }

  type metadata accessor for PreinstalledAudioStorage();
  *&aBlock = static PreinstalledAudioStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v82 = sub_1000149D4(v41, v55);

  v157[4] = v79;
  v159 = v39;
  v83 = *&v175[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v162 = type metadata accessor for DelegateHandler();
  v84 = *(v162 + 48);
  v85 = *(v162 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v86 = v41;
  v169 = v82;

  v87 = v56;
  v157[1] = v83;
  v161 = v86;
  v170 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v88 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v177 = 0u;
  v178 = 0;
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = v87;
  v92 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v93 = type metadata accessor for SignpostHandler();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();
  v96 = v91;
  v97 = SignpostHandler.init(notificationCenter:)();
  v158 = type metadata accessor for SiriAnalyticsHandler();
  v98 = v96;
  v99 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v157[3] = v57;
  v100 = v99;
  v101 = type metadata accessor for AudioHandler();
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  v160 = v98;
  v104 = AudioHandler.init(notificationCenter:)();
  v105 = swift_allocObject();
  v171 = v105;
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_100027950;
  *(v106 + 32) = v170;
  *(v106 + 56) = v162;
  *(v106 + 64) = v92;
  *(v106 + 88) = v88;
  *(v106 + 96) = v97;
  *(v106 + 120) = v93;
  *(v106 + 128) = v100;
  *(v106 + 184) = v101;
  *(v106 + 152) = v158;
  *(v106 + 160) = v104;
  *(v105 + 16) = v106;

  v158 = v92;

  v157[5] = v97;

  v157[2] = v100;

  v162 = v104;

  v107 = os_transaction_create();
  v108 = v165;
  if (v107)
  {
    v109 = v107;
    *(&v177 + 1) = swift_getObjectType();
    *&aBlock = v109;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v171 + 2) = v106;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v106 = sub_10000663C(0, *(v106 + 16) + 1, 1, v106);
      *(v171 + 2) = v106;
    }

    v112 = *(v106 + 16);
    v111 = *(v106 + 24);
    if (v112 >= v111 >> 1)
    {
      v106 = sub_10000663C((v111 > 1), v112 + 1, 1, v106);
      *(v171 + 2) = v106;
    }

    swift_unknownObjectRelease();
    *(v106 + 16) = v112 + 1;
    sub_10000674C(&aBlock, (v106 + 32 * v112 + 32));
    *(v171 + 2) = v106;
  }

  static InternalSettings.shared.getter();
  v113 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  v115 = v172;
  v114 = v173;
  v116 = v161;
  if (v113 != 2 && (v113 & 1) != 0)
  {
    v117 = type metadata accessor for DiagnosticService();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();
    v120 = v160;
    v121 = DiagnosticService.init(notification:)();
    *(&v177 + 1) = v117;
    *&aBlock = v121;
    v122 = v171;
    v123 = *(v171 + 2);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *(v122 + 2) = v123;
    if ((v124 & 1) == 0)
    {
      v123 = sub_10000663C(0, *(v123 + 2) + 1, 1, v123);
      *(v171 + 2) = v123;
    }

    v126 = *(v123 + 2);
    v125 = *(v123 + 3);
    if (v126 >= v125 >> 1)
    {
      v123 = sub_10000663C((v125 > 1), v126 + 1, 1, v123);
    }

    *(v123 + 2) = v126 + 1;
    sub_10000674C(&aBlock, &v123[32 * v126 + 32]);
    *(v171 + 2) = v123;
  }

  dispatch thunk of BaseRequest.sandboxToken.getter();
  v128 = v127;
  if (v127)
  {
    static Logger.service.getter();
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "Consuming sandbox token", v131, 2u);
      v116 = v161;
    }

    v132 = v115[1];
    v132(v108, v114);
    String.utf8CString.getter();

    v128 = sandbox_extension_consume();

    if (v128 != -1)
    {
      v133 = 0;
      goto LABEL_29;
    }

    static Logger.service.getter();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v134, v135, "Unable to consume sandbox extension", v136, 2u);
    }

    v132(v164, v114);
    v128 = 0;
  }

  v133 = 1;
LABEL_29:
  v137 = [objc_allocWithZone(ResourceHint) initWithResourceType:10 andState:1];
  v165 = v137;
  v138 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v172 = v116;
  v139 = v160;

  v140 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v141 = swift_allocObject();
  *(v141 + 16) = v137;
  *(v141 + 24) = v139;
  v143 = v174;
  v142 = v175;
  *(v141 + 32) = v175;
  *(v141 + 40) = sub_100022B24;
  *(v141 + 48) = v143;
  *(v141 + 56) = v140;
  *(v141 + 64) = v171;
  *(v141 + 72) = v128;
  *(v141 + 80) = v133;
  v178 = sub_100005C58;
  v179 = v141;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v177 = sub_100002B68;
  *(&v177 + 1) = &unk_100031E20;
  v144 = _Block_copy(&aBlock);
  v145 = v140;
  v173 = v139;
  v146 = v145;
  v147 = v165;
  v148 = v142;

  sub_1000067AC(sub_100005C58);

  [v146 setCompletionBlock:v144];
  _Block_release(v144);

  v149 = v166;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v151 = v167;
  v150 = v168;
  if ((*(v167 + 48))(v149, 1, v168))
  {
    sub_100001E9C(v149, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
    sub_100007914(v146);
  }

  else
  {
    v152 = v163;
    (*(v151 + 16))(v163, v149, v150);
    sub_100001E9C(v149, &qword_100035810, &qword_100027D68);
    v153 = UUID.uuidString.getter();
    v155 = v154;
    (*(v151 + 8))(v152, v150);
    sub_100007504(v153, v155);

    sub_100007914(v146);
  }

  sub_100016838(v159, "TTS enqueue speech task");
}

uint64_t sub_1000090C4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100009128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AEF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000091B0()
{
  v0 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v1 = type metadata accessor for RequestPreprocessAction();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  swift_retain_n();
  RequestPreprocessAction.init(pool:)();
  v4 = *(v0 + 48);
  v5 = *(v0 + 52);
  swift_allocObject();
  v6 = WorkflowNode.init(action:)();
  v7 = type metadata accessor for RequestParsingAction();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  RequestParsingAction.init(pool:)();
  v10 = *(v0 + 48);
  v11 = *(v0 + 52);
  swift_allocObject();
  v62 = WorkflowNode.init(action:)();
  v12 = type metadata accessor for VoiceSelectionAction();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  VoiceSelectionAction.init(pool:)();
  v15 = *(v0 + 48);
  v16 = *(v0 + 52);
  swift_allocObject();
  v61 = WorkflowNode.init(action:)();
  v17 = type metadata accessor for CacheReadingAction();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  CacheReadingAction.init(pool:)();
  v20 = *(v0 + 48);
  v21 = *(v0 + 52);
  swift_allocObject();
  v60 = WorkflowNode.init(action:)();
  HasAudioCondition = type metadata accessor for HasAudioCondition();
  v23 = *(HasAudioCondition + 48);
  v24 = *(HasAudioCondition + 52);
  swift_allocObject();
  HasAudioCondition.init()();
  v25 = *(v0 + 48);
  v26 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(condition:)();
  v27 = type metadata accessor for SynthesisEngineSelectionAction();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  SynthesisEngineSelectionAction.init(pool:)();
  v30 = *(v0 + 48);
  v31 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(action:)();
  v32 = type metadata accessor for DeviceSynthesisAction();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  DeviceSynthesisAction.init(pool:)();
  v35 = *(v0 + 48);
  v36 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(action:)();
  v37 = type metadata accessor for SynthesisBufferingAction();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  SynthesisBufferingAction.init(pool:)();
  v40 = *(v0 + 48);
  v41 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(action:)();
  IsNaturalVoiceCondition = type metadata accessor for IsNaturalVoiceCondition();
  v43 = *(IsNaturalVoiceCondition + 48);
  v44 = *(IsNaturalVoiceCondition + 52);
  swift_allocObject();
  IsNaturalVoiceCondition.init(pool:)();
  v45 = *(v0 + 48);
  v46 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(condition:)();
  v47 = type metadata accessor for OpusEncodingAction();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  OpusEncodingAction.init(pool:)();
  v50 = *(v0 + 48);
  v51 = *(v0 + 52);
  swift_allocObject();
  WorkflowNode.init(action:)();
  v52 = type metadata accessor for PassThroughAction();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  PassThroughAction.init()();
  v55 = *(v0 + 48);
  v56 = *(v0 + 52);
  swift_allocObject();
  v57 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100027E00;
  *(v58 + 32) = v6;
  *(v58 + 40) = v62;
  *(v58 + 48) = v61;
  *(v58 + 56) = v60;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v58);

  DirectedAcyclicGraph.connect(fromNode:toNode:)();

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();

  return v57;
}

void *sub_1000097CC(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100017988(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002262C(v9, v6);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_100017988((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_1000041F8(&qword_100035AE0, type metadata accessor for WorkflowFactory.TTSErrorHandler);
      v13 = sub_100022690(&v15);
      sub_10002262C(v6, v13);
      v8[2] = v12 + 1;
      sub_1000053A0(&v15, &v8[5 * v12 + 4]);
      sub_1000226F4(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1000099A4(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_1000358F8, &qword_100027DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009A0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100009AB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100009B34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009B6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009BAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009BE4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009C2C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  if (v0[10])
  {
    v7 = v0[11];
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100009C9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009CD4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100009D44()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100009E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100009F48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009F88()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100009FD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v3 - 8);
  v145 = v3;
  v4 = *(v144 + 64);
  __chkstk_darwin(v3);
  v142 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  v6 = *(v141 + 64);
  __chkstk_darwin(v143);
  v140 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v135 = *(v8 - 8);
  v136 = v8;
  v9 = *(v135 + 64);
  __chkstk_darwin(v8);
  v134 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v138 = *(v11 - 8);
  v139 = v11;
  v12 = *(v138 + 64);
  v13 = __chkstk_darwin(v11);
  v133 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v126 - v15;
  v132 = type metadata accessor for DispatchQoS.QoSClass();
  v131 = *(v132 - 8);
  v16 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v127 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v126 - v22;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v129 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v146 = &v126 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v126 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v126 - v35;
  __chkstk_darwin(v34);
  v38 = &v126 - v37;
  static Logger.service.getter();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "sirittsd starting...", v41, 2u);
  }

  v42 = *(v25 + 8);
  v42(v38, v24);
  static Logger.service.getter();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "sirittsd entering sandbox...", v45, 2u);
  }

  v42(v36, v24);
  sub_1000256FC();
  static Logger.service.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Getting group container access...", v48, 2u);
  }

  v42(v33, v24);
  sub_10000AF3C(v18, qword_100035D08);
  v49 = sub_10000AFA0(v18, qword_100035D08);
  v50 = [objc_opt_self() defaultManager];
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 containerURLForSecurityApplicationGroupIdentifier:v51];

  v147 = v24;
  v128 = v42;
  if (v52)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v146;
  v55 = type metadata accessor for URL();
  v56 = *(v55 - 8);
  (*(v56 + 56))(v23, v53, 1, v55);
  sub_10000AFD8(v23, v49);
  static Logger.service.getter();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = v49;
    v62 = v127;
    sub_10000B1D0(v61, v127);
    if ((*(v56 + 48))(v62, 1, v55) == 1)
    {
      sub_10000B240(v62);
      object = 0xE400000000000000;
      countAndFlagsBits = 1819047278;
    }

    else
    {
      v66 = URL.path(percentEncoded:)(1);
      object = v66._object;
      (*(v56 + 8))(v62, v55);
      countAndFlagsBits = v66._countAndFlagsBits;
    }

    v67 = sub_100004240(countAndFlagsBits, object, aBlock);

    *(v59 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v57, v58, "Group container URL: %s", v59, 0xCu);
    sub_100004474(v60);

    v65 = v146;
  }

  else
  {

    v65 = v54;
  }

  v68 = v128;
  v128(v65, v147);
  qword_100035D20 = [objc_allocWithZone(type metadata accessor for DaemonXPCListener()) init];
  (*((swift_isaMask & *qword_100035D20) + 0x58))();
  v69 = v129;
  static Logger.service.getter();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "sirittsd is ready to serve...", v72, 2u);
  }

  v68(v69, v147);
  sub_10000AEF4(&qword_100035198, &qword_100027968);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100027950;
  updated = Activity.voiceUpdateActivity.unsafeMutableAddressor();
  v75 = *(updated + 3);
  v76 = *(updated + 8);
  *(v73 + 32) = *updated;
  *(v73 + 40) = v76;
  *(v73 + 56) = v75;

  v77 = Activity.cleanUpActivity.unsafeMutableAddressor();
  v78 = *(v77 + 3);
  v79 = *(v77 + 8);
  *(v73 + 64) = *v77;
  *(v73 + 72) = v79;
  *(v73 + 88) = v78;

  v80 = Activity.weeklyVoiceUpdateActivity.unsafeMutableAddressor();
  v81 = *(v80 + 3);
  v82 = *(v80 + 8);
  *(v73 + 96) = *v80;
  *(v73 + 104) = v82;
  *(v73 + 120) = v81;

  v83 = Activity.neuralCompiling.unsafeMutableAddressor();
  v84 = *(v83 + 3);
  v85 = *(v83 + 8);
  *(v73 + 128) = *v83;
  *(v73 + 136) = v85;
  *(v73 + 152) = v84;

  v86 = Activity.postInstall.unsafeMutableAddressor();
  v87 = *(v86 + 3);
  v88 = *(v86 + 8);
  *(v73 + 160) = *v86;
  *(v73 + 168) = v88;
  *(v73 + 184) = v87;
  qword_100035D28 = v73;

  v89 = *(v73 + 32);
  v90 = *(v73 + 40);
  v91 = *(v73 + 48);
  v92 = *(v73 + 56);

  Activity.checkIn()();

  v93 = *(v73 + 64);
  v94 = *(v73 + 72);
  v95 = *(v73 + 80);
  v96 = *(v73 + 88);

  Activity.checkIn()();

  v97 = *(v73 + 96);
  v98 = *(v73 + 104);
  v99 = *(v73 + 112);
  v100 = *(v73 + 120);

  Activity.checkIn()();

  v101 = *(v73 + 128);
  v102 = *(v73 + 136);
  v103 = *(v73 + 144);
  v104 = *(v73 + 152);

  Activity.checkIn()();

  v105 = *(v73 + 160);
  v106 = *(v73 + 168);
  v107 = *(v73 + 176);
  v108 = *(v73 + 184);

  Activity.checkIn()();

  type metadata accessor for TTSAssetUAFAssetProvider();
  static TTSAssetUAFAssetProvider.startSirittsdObserver()();
  type metadata accessor for BackgroundLoader();
  swift_allocObject();
  qword_100035D30 = BackgroundLoader.init()();
  sub_10000B048();
  v109 = v131;
  v110 = v130;
  v111 = v132;
  (*(v131 + 104))(v130, enum case for DispatchQoS.QoSClass.background(_:), v132);
  v147 = static OS_dispatch_queue.global(qos:)();
  (*(v109 + 8))(v110, v111);
  v112 = v133;
  static DispatchTime.now()();
  v114 = v134;
  v113 = v135;
  *v134 = 5;
  v115 = v136;
  (*(v113 + 104))(v114, enum case for DispatchTimeInterval.seconds(_:), v136);
  v116 = v137;
  + infix(_:_:)();
  (*(v113 + 8))(v114, v115);
  v117 = v139;
  v118 = *(v138 + 8);
  v118(v112, v139);
  aBlock[4] = sub_10000AEAC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_1000314C8;
  v119 = _Block_copy(aBlock);
  v120 = v140;
  static DispatchQoS.unspecified.getter();
  v148 = _swiftEmptyArrayStorage;
  sub_100007488();
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  v121 = v142;
  v122 = v145;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v123 = v147;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v119);

  (*(v144 + 8))(v121, v122);
  (*(v141 + 8))(v120, v143);
  v118(v116, v117);
  v124 = [objc_opt_self() currentRunLoop];
  [v124 run];

  return 0;
}

uint64_t sub_10000AEF4(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_10000AF3C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000AFA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B048()
{
  result = qword_100035B30;
  if (!qword_100035B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035B30);
  }

  return result;
}

uint64_t sub_10000B094(uint64_t *a1, uint64_t *a2)
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

char *sub_10000B0DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035CE0, &qword_100027970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_10000B1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B240(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10000B2C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B334()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000B388(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v23[1] = a5;
    v24 = a4;
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100004240(a2, a3, &v25);
    *(v17 + 12) = 2080;
    if (!a1)
    {
      sub_10000D598(_swiftEmptyArrayStorage);
    }

    v18 = Dictionary.description.getter();
    v20 = v19;

    v21 = sub_100004240(v18, v20, &v25);

    *(v17 + 14) = v21;
    swift_arrayDestroy();

    (*(v11 + 8))(v14, v10);
    return v24(0);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    return a4(0);
  }
}

uint64_t sub_10000B610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t variable initialization expression of BackgroundLoader.backgroundQueue()
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
  sub_10000B048();
  static DispatchQoS.background.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10000B8A0();
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000B8F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10000B8A0()
{
  result = qword_100035CF0;
  if (!qword_100035CF0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CF0);
  }

  return result;
}

unint64_t sub_10000B8F8()
{
  result = qword_100035D00;
  if (!qword_100035D00)
  {
    sub_10000B094(&unk_100035B40, &qword_100027980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D00);
  }

  return result;
}

void type metadata accessor for AFPowerContextOption()
{
  if (!qword_1000351D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000351D0);
    }
  }
}

void sub_10000B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Logger();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  v10 = __chkstk_darwin(v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v34 - v12;
  v13 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 signatureWithDomain:v14 type:v15 subType:v16 detectedProcess:v17 triggerThresholdValues:v18];

  if (!v19 || (aBlock[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), v19, !aBlock[0]))
  {
    static Logger.service.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to create DiagnosticReporter signature", v32, 2u);
    }

    (*(v36 + 8))(v34, v37);
    sub_10000BE6C();
    swift_allocError();
    *v33 = 0;
    [objc_opt_self() sleepForTimeInterval:1.0];
    exit(0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = Array._bridgeToObjectiveC()().super.isa;
  sub_10000D598(_swiftEmptyArrayStorage);
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = sub_10000C6D8;
  v23[5] = 0;
  aBlock[4] = sub_10000BEC0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B610;
  aBlock[3] = &unk_100031610;
  v24 = _Block_copy(aBlock);

  v25 = [v13 snapshotWithSignature:isa delay:v21 events:v22 payload:0 actions:v24 reply:0.0];
  _Block_release(v24);

  if (v25)
  {
  }

  else
  {
    v26 = v35;
    static Logger.service.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to trigger DiagnosticReport", v29, 2u);
    }

    (*(v36 + 8))(v26, v37);
  }
}

unint64_t sub_10000BE6C()
{
  result = qword_1000351D8;
  if (!qword_1000351D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000351D8);
  }

  return result;
}

void sub_10000BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Logger();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v34 - v13;
  v14 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v14 signatureWithDomain:v15 type:v16 subType:v17 detectedProcess:v18 triggerThresholdValues:v19];

  if (!v20 || (aBlock[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), v20, !aBlock[0]))
  {
    static Logger.service.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to create DiagnosticReporter signature", v33, 2u);
    }

    (*(v36 + 8))(v12, v37);
    goto LABEL_10;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = Array._bridgeToObjectiveC()().super.isa;
  sub_10000D598(_swiftEmptyArrayStorage);
  v23 = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = nullsub_1;
  v24[5] = 0;
  aBlock[4] = sub_10000C550;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B610;
  aBlock[3] = &unk_100031660;
  v25 = _Block_copy(aBlock);

  v26 = [v14 snapshotWithSignature:isa delay:v22 events:v23 payload:0 actions:v25 reply:0.0];
  _Block_release(v25);

  if (v26)
  {
LABEL_10:

    return;
  }

  v27 = v35;
  static Logger.service.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unable to trigger DiagnosticReport", v30, 2u);
  }

  (*(v36 + 8))(v27, v37);
}

uint64_t sub_10000C33C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for AutoBugCapture.DiagnosticReporterError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutoBugCapture.DiagnosticReporterError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C4F8()
{
  result = qword_1000351E0;
  if (!qword_1000351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000351E0);
  }

  return result;
}

void *sub_10000C58C()
{
  result = sub_10000D6D4(_swiftEmptyArrayStorage);
  off_100035290 = result;
  return result;
}

id sub_10000C5B4()
{
  result = [objc_allocWithZone(NSRecursiveLock) init];
  qword_100035298 = result;
  return result;
}

uint64_t sub_10000C610(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000C5E8;
  v6[3] = a3;
  v4 = _Block_copy(v6);

  dispatch_sync(a1, v4);
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10000C708(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  [v4 lock];
  v5 = *(v1 + 32);
  if (v5 && (v6 = v5, v7 = TaskOperation.request.getter(), v6, v8 = dispatch thunk of BaseRequest.requestCreatedTime.getter(), v7, v8 == a1))
  {
    v9 = *(v2 + 32);
    v10 = v9;
    [v4 unlock];
  }

  else
  {
    swift_beginAccess();
    v11 = *(v2 + 24);
    v20 = v4;
    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v9 = v14;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = TaskOperation.request.getter();
        v17 = dispatch thunk of BaseRequest.requestCreatedTime.getter();

        if (v17 == a1)
        {

          goto LABEL_18;
        }

        ++v13;
        if (v15 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_16:

    v9 = 0;
LABEL_18:
    [v20 unlock];
  }

  return v9;
}

uint64_t sub_10000C8B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10000C924(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000C9AC(a1, v4);
}

unint64_t sub_10000C968(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10000CA74(a1, v4);
}

unint64_t sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000DC98(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000DCF4(v8);
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

unint64_t sub_10000CA74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000CAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000CD88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000CFF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000077E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000CAE0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000077E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000D2CC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_10000D174(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10000C968(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10000CD88(v14, a3 & 1);
      v18 = *v4;
      result = sub_10000C968(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_10000AEF4(&qword_100035410, &unk_100027B58);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10000D43C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

void *sub_10000D2CC()
{
  v1 = v0;
  sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000D43C()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_10000D598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_100035400, &qword_100027B48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009128(v4, v13, &qword_100035408, &qword_100027B50);
      result = sub_10000C924(v13);
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
      result = sub_10000674C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000D6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000077E4(v5, v6);
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

unint64_t sub_10000D7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_1000353C8, &qword_100027B28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009128(v4, &v13, &qword_1000353D0, &qword_100027B30);
      v5 = v13;
      v6 = v14;
      result = sub_1000077E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000674C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10000D908(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10000C968(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_10000C968(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000DA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TaskOperation();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10000DB2C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1000072A4(result);

  return sub_10000DA10(v6, v5, 1, v3);
}

id sub_10000DD8C()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  qword_100035520 = result;
  return result;
}

uint64_t BackgroundLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  BackgroundLoader.init()();
  return v0;
}

uint64_t BackgroundLoader.init()()
{
  v1 = v0;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000B048();
  v16[0] = "tClient";
  v16[1] = v10;
  static DispatchQoS.background.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000ED84(&qword_100035CF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000EDCC(&qword_100035D00, &unk_100035B40, &qword_100027980);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  v11 = [objc_opt_self() defaultCenter];
  v12 = static NSNotificationName.voiceAssetChanged.getter();
  swift_allocObject();
  swift_weakInit();

  v13 = NSNotificationCenter.addObserver(event:callback:)();

  v14 = *(v1 + 24);
  *(v1 + 24) = v13;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10000E0E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BackgroundLoader.loadMainSiriVoice()();
  }

  return result;
}

uint64_t BackgroundLoader.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BackgroundLoader.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

Swift::Void __swiftcall BackgroundLoader.loadMainSiriVoice()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  v4 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v52 - v16;
  __chkstk_darwin(v15);
  v19 = &v52 - v18;
  v20 = [objc_opt_self() sharedPreferences];
  v21 = [v20 outputVoice];

  if (v21)
  {
    v22 = [v21 languageCode];
    if (v22)
    {
      v53 = v1;
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = [v21 name];
      if (v24)
      {
        v25 = v24;
        v52 = v0;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (static Features.lowInactiveMemory.getter())
        {

          static Logger.service.getter();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "Skip loading Siri voice in background due to low inactive memory requirement", v28, 2u);
          }

          (*(v7 + 8))(v19, v6);
        }

        else
        {
          v35 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
          v36 = SynthesisVoice.init(language:name:)();
          objc_allocWithZone(type metadata accessor for SynthesisRequest());
          v37 = v36;
          v38 = SynthesisRequest.init(text:voice:)();
          static Logger.service.getter();
          v39 = v37;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = 138412290;
            *(v42 + 4) = v39;
            *v43 = v39;
            v44 = v39;
            _os_log_impl(&_mh_execute_header, v40, v41, "Loading Siri voice %@ in sirittsd", v42, 0xCu);
            sub_100006568(v43);
          }

          (*(v7 + 8))(v17, v6);
          v58 = *(v58 + 16);
          v45 = swift_allocObject();
          *(v45 + 16) = v38;
          *(v45 + 24) = v39;
          aBlock[4] = sub_10000ED7C;
          aBlock[5] = v45;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100002B68;
          aBlock[3] = &unk_100031918;
          v46 = _Block_copy(aBlock);
          v47 = v39;
          v48 = v38;
          v49 = v54;
          static DispatchQoS.unspecified.getter();
          v59 = _swiftEmptyArrayStorage;
          sub_10000ED84(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
          sub_10000EDCC(&qword_1000353F0, &qword_1000351A0, &unk_100027BE0);
          v50 = v56;
          v51 = v52;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v46);
          (*(v53 + 8))(v50, v51);
          (*(v55 + 8))(v49, v57);
        }

        return;
      }
    }

    static Logger.service.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Can't get current Siri voice, skip background voice loading", v34, 2u);
    }

    (*(v7 + 8))(v14, v6);
  }

  else
  {
    static Logger.service.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Can't get current Siri voice, skip background voice loading", v31, 2u);
    }

    (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_10000E9E8(uint64_t a1, void *a2)
{
  if (qword_1000351B8 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of DaemonSession.prewarm(request:didFinish:)();
}

uint64_t sub_10000EAA0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (a1)
  {
    swift_errorRetain();
    static Logger.service.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_100004240(v16, v17, &v27);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error prewarming in sirittsd, %s", v14, 0xCu);
      sub_100004474(v15);
    }

    else
    {
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    static Logger.service.getter();
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Loaded Siri voice %@ in sirittsd", v22, 0xCu);
      sub_100006568(v23);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_10000ED84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EDCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B094(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AFPowerContextOption.description.getter(uint64_t a1)
{
  v1 = 0x64696F7661;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x64656375646572;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x7274736E6F636E75;
  }
}

uint64_t sub_10000EECC()
{
  v1 = *v0;
  v2 = 0x64696F7661;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x64656375646572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x7274736E6F636E75;
  }
}

uint64_t sub_10000EF5C()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return result;
}

uint64_t sub_10000EF6C()
{
  type metadata accessor for SubscriptionService();
  swift_allocObject();
  result = sub_10000EFA8();
  qword_100035D38 = result;
  return result;
}

uint64_t sub_10000EFA8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_10000B048();
  static DispatchQoS.default.getter();
  v15[1] = 0;
  sub_100002B20(&qword_1000357F8, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 128) = &_swiftEmptyArrayStorage;
  *(v0 + 136) = [objc_allocWithZone(NSLock) init];
  type metadata accessor for Preferences();
  *(v0 + 24) = static Preferences.shared.getter();
  v8 = type metadata accessor for TTSAssetUAFAssetProvider();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 112) = TTSAssetUAFAssetProvider.init()();
  v11 = type metadata accessor for TrialAssetProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 120) = TrialAssetProvider.init()();
  return v0;
}

uint64_t sub_10000F240(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a7;
  v74 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TTSError.TTSErrorCode();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v25 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    (*(v21 + 104))(v24, enum case for TTSError.TTSErrorCode.unknown(_:), v20);
    type metadata accessor for TTSError();
    sub_100002B20(&qword_100035818, &type metadata accessor for TTSError);
    swift_allocError();
    TTSError.init(code:description:)();
    return swift_willThrow();
  }

  v63 = v11;
  if (a5)
  {
    v26 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v26 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
      v64 = swift_allocBox();
      v39 = v38;
      v40 = type metadata accessor for UUID();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      a4 = 0;
LABEL_15:
      v41 = v74;
      if (v74 >> 62)
      {
        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42)
      {
        aBlock = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v42 < 0)
        {
          __break(1u);
          goto LABEL_31;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v43 = 0;
          do
          {
            v44 = v43 + 1;
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            objc_allocWithZone(type metadata accessor for SynthesisVoiceSubscription());

            SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v45 = aBlock[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v43 = v44;
          }

          while (v42 != v44);
        }

        else
        {
          v47 = (v41 + 32);
          v48 = type metadata accessor for SynthesisVoiceSubscription();
          do
          {
            v49 = *v47++;
            v50 = objc_allocWithZone(v48);

            v51 = v49;
            SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v52 = aBlock[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v41 = v74;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v42;
          }

          while (v42);
        }

        v46 = aBlock;
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      v53 = v73;
      v74 = *(v73 + 16);
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = a2;
      v54[4] = a3;
      v54[5] = a4;
      v54[6] = 0;
      v54[7] = v46;
      v54[8] = v64;
      v54[9] = v41;
      v56 = v66;
      v55 = v67;
      v54[10] = v66;
      v54[11] = v55;
      v79 = sub_100012958;
      v80 = v54;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100002B68;
      v78 = &unk_100031AD8;
      v57 = _Block_copy(&aBlock);

      sub_1000067AC(v56);
      v58 = v68;
      static DispatchQoS.unspecified.getter();
      v81 = _swiftEmptyArrayStorage;
      sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
      sub_100002ABC();
      v59 = v70;
      v60 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);
      (*(v72 + 8))(v59, v60);
      (*(v69 + 8))(v58, v71);
    }
  }

  v62 = v24;
  v65 = a5;
  v64 = swift_allocBox();
  v28 = v27;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v28, 1, 1, v29);
  if (!v65)
  {
    goto LABEL_15;
  }

  UUID.init(uuidString:)();
  v31 = (*(v30 + 48))(v19, 1, v29);
  sub_100001E9C(v19, &qword_100035810, &qword_100027D68);
  if (v31 != 1)
  {
    sub_100009128(v73 + 32, &aBlock, &qword_100035800, &unk_100027D50);
    if (!v78)
    {
      sub_100001E9C(&aBlock, &qword_100035800, &unk_100027D50);
      goto LABEL_12;
    }

LABEL_31:
    abort();
  }

LABEL_12:
  (*(v21 + 104))(v62, enum case for TTSError.TTSErrorCode.unknown(_:), v20);
  aBlock = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v32._object = 0x8000000100029440;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = a2;
  v33._object = a3;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000038;
  v34._object = 0x8000000100029460;
  String.append(_:)(v34);
  v35._countAndFlagsBits = a4;
  v35._object = v65;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 39;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  type metadata accessor for TTSError();
  sub_100002B20(&qword_100035818, &type metadata accessor for TTSError);
  swift_allocError();
  TTSError.init(code:description:)();
  swift_willThrow();
}

uint64_t sub_10000FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v89 = a8;
  v95 = a3;
  v97 = a2;
  v14 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v86 = &v85 - v16;
  v85 = swift_projectBox();
  v87 = a1;
  v88 = *(a1 + 24);
  v17 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v18 = v17;
  v102[0] = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v17; v19; i = v18)
  {
    v101 = a6;
    v20 = 0;
    v21 = v18 & 0xC000000000000001;
    v18 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v21)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_26;
        }

        v22 = *(i + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (dispatch thunk of SynthesisVoiceSubscription.clientId.getter() == v97 && v25 == v95)
      {
      }

      else
      {
        a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a6 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v26 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
      if (a5)
      {
        if (v27)
        {
          if (v26 == a4 && v27 == a5)
          {

            goto LABEL_7;
          }

          a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a6)
          {
LABEL_22:

            goto LABEL_7;
          }
        }
      }

      else
      {
        if (!v27)
        {
          goto LABEL_22;
        }
      }

LABEL_6:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a6 = *(v102[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_7:
      ++v20;
      if (v24 == v19)
      {
        v28 = v102[0];
        v18 = i;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_29:
  v104 = v28;

  sub_100013250(v29);
  v103 = v18;

  v30 = dispatch thunk of Preferences.previousVoiceSubscriptions.getter();
  v92 = v30;
  if (v30 >> 62)
  {
    goto LABEL_76;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v18;
  if (v31)
  {
LABEL_31:
    v33 = 0;
    v94 = v92 & 0xC000000000000001;
    v91 = v92 & 0xFFFFFFFFFFFFFF8;
    v90 = v92 + 32;
    v32 = v18;
    v93 = v31;
    do
    {
      while (1)
      {
        if (v94)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v91 + 16))
          {
            goto LABEL_75;
          }

          v34 = *(v90 + 8 * v33);
        }

        v35 = v34;
        v36 = __OFADD__(v33, 1);
        v37 = v33 + 1;
        if (v36)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          v31 = _CocoaArrayWrapper.endIndex.getter();
          v32 = v18;
          if (!v31)
          {
            goto LABEL_77;
          }

          goto LABEL_31;
        }

        v96 = v37;
        if (!(v32 >> 62))
        {
          break;
        }

        v38 = _CocoaArrayWrapper.endIndex.getter();
        if (v38)
        {
          goto LABEL_41;
        }

LABEL_68:
        v62 = v35;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = i;
        v33 = v96;
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v63 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v32 = v103;
        if (v33 == v93)
        {
          goto LABEL_77;
        }
      }

      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_68;
      }

LABEL_41:
      v39 = 0;
      v100 = v32 & 0xFFFFFFFFFFFFFF8;
      v101 = v32 & 0xC000000000000001;
      v99 = v32;
      while (1)
      {
        if (v101)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v100 + 16))
          {
            goto LABEL_73;
          }

          v40 = *(v32 + 8 * v39 + 32);
        }

        v41 = v40;
        v18 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v42 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
        v44 = v43;
        v45 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
        if (v44)
        {
          if (!v46)
          {
            goto LABEL_42;
          }

          if (v42 == v45 && v44 == v46)
          {
          }

          else
          {
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v47 & 1) == 0)
            {

              goto LABEL_43;
            }
          }
        }

        else if (v46)
        {
LABEL_42:

          goto LABEL_43;
        }

        v48 = dispatch thunk of SynthesisVoiceSubscription.clientId.getter();
        v50 = v49;
        if (v48 == dispatch thunk of SynthesisVoiceSubscription.clientId.getter() && v50 == v51)
        {
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v52 & 1) == 0)
          {

            v32 = v99;
            goto LABEL_43;
          }
        }

        v53 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
        v54 = dispatch thunk of SynthesisVoice.language.getter();
        v56 = v55;

        v57 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
        v58 = dispatch thunk of SynthesisVoice.language.getter();
        v60 = v59;

        if (v54 == v58 && v56 == v60)
        {

          v18 = i;
          v32 = v99;
          goto LABEL_33;
        }

        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v32 = v99;
        if (v61)
        {
          break;
        }

LABEL_43:
        ++v39;
        if (v18 == v38)
        {
          goto LABEL_68;
        }
      }

      v18 = i;
LABEL_33:
      v33 = v96;
    }

    while (v96 != v93);
  }

LABEL_77:

  dispatch thunk of Preferences.previousVoiceSubscriptions.setter();

  dispatch thunk of Preferences.voiceSubscriptions.setter();
  v64 = v85;
  swift_beginAccess();
  v65 = v64;
  v66 = v86;
  sub_100009128(v65, v86, &qword_100035810, &qword_100027D68);
  v67 = type metadata accessor for UUID();
  if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
  {

    sub_100001E9C(v66, &qword_100035810, &qword_100027D68);
    return sub_100010478(a9, a10);
  }

  sub_100001E9C(v66, &qword_100035810, &qword_100027D68);
  if ((v97 != 0xD00000000000001BLL || 0x80000001000294D0 != v95) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_102;
  }

  v68 = v89;
  v99 = v32;
  if (!(v89 >> 62))
  {
    v69 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_84;
    }

LABEL_102:

    return sub_100010478(a9, a10);
  }

LABEL_101:
  v81 = v68;
  v82 = _CocoaArrayWrapper.endIndex.getter();
  v68 = v81;
  v69 = v82;
  if (!v82)
  {
    goto LABEL_102;
  }

LABEL_84:
  v70 = 0;
  v71 = v68 & 0xC000000000000001;
  v72 = v68 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v71)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v70 >= *(v72 + 16))
      {
        goto LABEL_100;
      }

      v73 = *(v68 + 8 * v70 + 32);
    }

    v74 = v73;
    v75 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v76 = dispatch thunk of SynthesisVoice.name.getter();
    if (v77)
    {
      v78 = v76;
      v79 = v77;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        break;
      }
    }

    ++v70;
    v68 = v89;
    if (v75 == v69)
    {
      goto LABEL_102;
    }
  }

  sub_100009128(v87 + 72, v102, &qword_100035820, &unk_100027D70);
  if (v102[3])
  {
    dispatch thunk of SynthesisVoice.language.getter();
    dispatch thunk of SynthesisVoice.name.getter();
    if (!v84)
    {
      __break(1u);
    }

    abort();
  }

  sub_100001E9C(v102, &qword_100035820, &unk_100027D70);
  return sub_100010478(a9, a10);
}

uint64_t sub_100010478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v3 + 16);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_10001294C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A88;
  v17 = _Block_copy(aBlock);

  sub_1000067AC(a1);
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

uint64_t sub_100010734(unint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 24);
  v4 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v5 = v4;
  v13 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = v2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v1 = v8;
      v2 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      if (sub_1000108F0(&v12))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = v13[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v2 == i)
      {
        v2 = v11;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if (*(v2 + 112))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.subscribeVoices(_:completion:)();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000108F0(void **a1)
{
  v2 = type metadata accessor for Logger();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  type metadata accessor for TTSAsset();
  v7 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
  dispatch thunk of SynthesisVoice.language.getter();

  v8 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();

  static TTSAsset.brand(forLanguage:name:)();

  v9 = VoiceBrand.rawValue.getter();
  if (v9 != VoiceBrand.rawValue.getter())
  {
    return 1;
  }

  dispatch thunk of SynthesisVoiceSubscription.clientId.getter();
  v10 = static WorkoutConfig.isClientAllowed(_:)();

  if (v10)
  {
    return 1;
  }

  static Logger.service.getter();
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Ignoring disallowed subscription %@", v15, 0xCu);
    sub_100001E9C(v16, &qword_1000353F8, &qword_100027B40);
  }

  (*(v19 + 8))(v5, v2);
  return 0;
}

uint64_t sub_100010B60()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  aBlock[4] = sub_1000128CC;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A38;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_100010DE4(unint64_t a1)
{
  v155 = 0;
  v161 = type metadata accessor for Logger();
  v3 = *(v161 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v161);
  v151 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v148 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v148 - v11;
  v13 = __chkstk_darwin(v10);
  v157 = &v148 - v14;
  __chkstk_darwin(v13);
  v16 = &v148 - v15;
  static Logger.service.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Running subscription clean up", v19, 2u);
  }

  v159 = *(v3 + 8);
  v160 = v3 + 8;
  v159(v16, v161);
  if (*(a1 + 112))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.cleanupTemporarySubscriptions()();
  }

  sub_100009128(a1 + 32, &v163, &qword_100035800, &unk_100027D50);
  v20 = v155;
  *&v153 = a1;
  v149 = v9;
  v150 = v12;
  if (v164)
  {
    sub_1000053A0(&v163, v162);
    v158 = *(a1 + 24);
    v21 = dispatch thunk of Preferences.voiceSubscriptions.getter();
    v22 = v21;
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v25 = v22 & 0xC000000000000001;
    v26 = _swiftEmptyArrayStorage;
    while (v24 != v20)
    {
      if (v25)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v23 + 16))
        {
          goto LABEL_102;
        }

        v27 = *(v22 + 8 * v20 + 32);
      }

      v1 = v27;
      a1 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_101;
      }

      v28 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
      v30 = v29;

      ++v20;
      if (v30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100017684(0, *(v26 + 2) + 1, 1, v26);
        }

        v1 = *(v26 + 2);
        v31 = *(v26 + 3);
        if (v1 >= v31 >> 1)
        {
          v26 = sub_100017684((v31 > 1), v1 + 1, 1, v26);
        }

        *(v26 + 2) = v1 + 1;
        v32 = &v26[16 * v1];
        *(v32 + 4) = v28;
        *(v32 + 5) = v30;
        v20 = a1;
      }
    }

    v33 = sub_10001B620(v26);

    __chkstk_darwin(v34);
    *(&v148 - 2) = v162;
    v20 = v155;
    v35 = sub_1000121E8(sub_10001292C, (&v148 - 4), v33);
    v37 = v35;
    a1 = 0;
    v25 = v35 + 56;
    v38 = 1 << *(v35 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v1 = v39 & *(v35 + 56);
    v40 = (v38 + 63) >> 6;
    *&v36 = 136315138;
    v154 = v36;
    v41 = v157;
    v155 = v20;
    v156 = v35;
    while (v1)
    {
LABEL_30:
      v43 = (*(v37 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v1)))));
      v45 = *v43;
      v44 = v43[1];

      static Logger.service.getter();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v163 = v49;
        *v48 = v154;
        *(v48 + 4) = sub_100004240(v45, v44, &v163);
        _os_log_impl(&_mh_execute_header, v46, v47, "Clearing auto-downloaded asset preferences for accessory %s", v48, 0xCu);
        sub_100004474(v49);
        v41 = v157;

        v37 = v156;
      }

      v159(v41, v161);
      v1 &= v1 - 1;
      dispatch thunk of Preferences.clearSubscriptions(accessoryId:)();

      v20 = v155;
    }

    while (1)
    {
      v42 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        sub_100004474(v162);
        a1 = v153;
        goto LABEL_34;
      }

      v1 = *(v25 + 8 * v42);
      ++a1;
      if (v1)
      {
        a1 = v42;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }

  else
  {
    sub_100001E9C(&v163, &qword_100035800, &unk_100027D50);
LABEL_34:
    v50 = *(a1 + 24);
    v51 = dispatch thunk of Preferences.voiceSubscriptions.getter();
    v1 = v51;
    v25 = v51 >> 62;
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }
  }

  v52 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:
  v53 = _swiftEmptyArrayStorage;
  if (v52)
  {
    v162[0] = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v52 < 0)
    {
      __break(1u);
      goto LABEL_157;
    }

    v55 = v20;
    v56 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v1 + 8 * v56 + 32);
      }

      v58 = v57;
      ++v56;
      dispatch thunk of SynthesisVoiceSubscription.voice.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v59 = *(v162[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v52 != v56);
    v53 = v162[0];
    v20 = v55;
  }

  v148 = v53 >> 62;
  if (v53 >> 62)
  {
    v103 = v53;
    v104 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v103;
    v60 = v104;
  }

  else
  {
    v60 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v158 = v53;
  v156 = v1;
  v155 = v20;
  if (!v60)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v61 = v53;
  v162[0] = _swiftEmptyArrayStorage;
  result = sub_100017968(0, v60 & ~(v60 >> 63), 0);
  if (v60 < 0)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v62 = 0;
  v20 = v162[0];
  v63 = v61;
  v64 = v61 & 0xC000000000000001;
  do
  {
    if (v64)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v65 = *(v63 + 8 * v62 + 32);
    }

    v66 = v65;
    v67 = dispatch thunk of SynthesisVoice.language.getter();
    v69 = v68;

    v162[0] = v20;
    v71 = *(v20 + 16);
    v70 = *(v20 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_100017968((v70 > 1), v71 + 1, 1);
      v20 = v162[0];
    }

    ++v62;
    *(v20 + 16) = v71 + 1;
    v72 = v20 + 16 * v71;
    *(v72 + 32) = v67;
    *(v72 + 40) = v69;
    v63 = v158;
    v1 = v156;
  }

  while (v60 != v62);
  a1 = v153;
LABEL_57:
  v73 = sub_10001B620(v20);

  if (v25)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v75 = result;
  }

  else
  {
    v75 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v150;
  if (!v75)
  {
    goto LABEL_70;
  }

  if (v75 < 1)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v77 = 0;
  *&v154 = v1 & 0xC000000000000001;
  *&v74 = 138543362;
  v152 = v74;
  do
  {
    if (v154)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v82 = *(v1 + 8 * v77 + 32);
    }

    v83 = v82;
    static Logger.service.getter();
    v84 = v83;
    v85 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v20))
    {
      v78 = v76;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = v152;
      *(v79 + 4) = v84;
      *v80 = v84;
      v81 = v84;
      _os_log_impl(&_mh_execute_header, v85, v20, "Subscription %{public}@", v79, 0xCu);
      sub_100001E9C(v80, &qword_1000353F8, &qword_100027B40);
      a1 = v153;

      v76 = v78;
      v1 = v156;
    }

    else
    {
      v81 = v85;
      v85 = v84;
    }

    ++v77;

    v159(v76, v161);
  }

  while (v75 != v77);
LABEL_70:

  v162[0] = _swiftEmptyArrayStorage;
  v86 = v158;
  v87 = v158 & 0xFFFFFFFFFFFFFF8;
  if (v148)
  {
    v88 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v88 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = _swiftEmptyArrayStorage;
  if (v88)
  {
    v25 = 0;
    v89 = v86 & 0xC000000000000001;
    *&v154 = _swiftEmptyArrayStorage;
    do
    {
      v90 = v25;
      while (1)
      {
        if (v89)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v90 >= *(v87 + 16))
          {
            goto LABEL_100;
          }

          v91 = *(v158 + 8 * v90 + 32);
        }

        v20 = v91;
        v25 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_99;
        }

        v92 = *(a1 + 120);
        if (dispatch thunk of TrialAssetProvider.findVoice(_:)())
        {
          break;
        }

        ++v90;
        if (v25 == v88)
        {
          goto LABEL_89;
        }
      }

      VoiceAsset.voice.getter();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v162[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      *&v154 = v162[0];
    }

    while (v25 != v88);
  }

  else
  {
    *&v154 = _swiftEmptyArrayStorage;
  }

LABEL_89:

  v158 = *(a1 + 120);
  v93 = dispatch thunk of TrialAssetProvider.listVoiceAssets(_:)();
  v94 = v93;
  if (v93 >> 62)
  {
    v95 = _CocoaArrayWrapper.endIndex.getter();
    v96 = v149;
    v97 = v154;
    if (v95)
    {
LABEL_91:
      v162[0] = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v95 & 0x8000000000000000) == 0)
      {
        v98 = 0;
        do
        {
          if ((v94 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v100 = *(v94 + 8 * v98 + 32);
          }

          ++v98;
          VoiceAsset.voice.getter();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v99 = *(v162[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v95 != v98);

        v102 = v162[0];
        v97 = v154;
        goto LABEL_107;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }
  }

  else
  {
    v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v96 = v149;
    v97 = v154;
    if (v95)
    {
      goto LABEL_91;
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_107:
  v105 = v155;
  if (v102 >> 62)
  {
    goto LABEL_153;
  }

  v106 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_109:
  v157 = v73;
  if (v106)
  {
    if (v106 >= 1)
    {
      v107 = 0;
      v108 = v102 & 0xC000000000000001;
      *&v101 = 138543362;
      v153 = v101;
      v156 = v102 & 0xC000000000000001;
      do
      {
        if (v108)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v109 = *(v102 + 8 * v107 + 32);
        }

        v110 = v109;
        v162[0] = v109;
        __chkstk_darwin(v109);
        *(&v148 - 2) = v162;
        if ((sub_100013280(sub_1000128D4, (&v148 - 4), v97) & 1) == 0)
        {
          v155 = v105;
          static Logger.service.getter();
          v111 = v110;
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = v106;
            v116 = v102;
            v117 = v96;
            v118 = swift_slowAlloc();
            *v114 = v153;
            *(v114 + 4) = v111;
            *v118 = v111;
            v119 = v111;
            _os_log_impl(&_mh_execute_header, v112, v113, "Remove not-in-use voice %{public}@", v114, 0xCu);
            sub_100001E9C(v118, &qword_1000353F8, &qword_100027B40);
            v96 = v117;
            v102 = v116;
            v106 = v115;

            v97 = v154;
          }

          v159(v96, v161);
          dispatch thunk of TrialAssetProvider.removeVoices(_:)();
          v105 = v155;
          v108 = v156;
          v73 = v157;
        }

        ++v107;
      }

      while (v106 != v107);
      goto LABEL_120;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_120:
  v155 = v105;

  v120 = dispatch thunk of TrialAssetProvider.listResources()();
  v121 = v120;
  if (v120 >> 62)
  {
    v122 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v122 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v122)
  {
    v162[0] = _swiftEmptyArrayStorage;
    result = sub_100017968(0, v122 & ~(v122 >> 63), 0);
    if ((v122 & 0x8000000000000000) == 0)
    {
      v123 = 0;
      v124 = v162[0];
      do
      {
        if ((v121 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v125 = *(v121 + 8 * v123 + 32);
        }

        v126 = ResourceAsset.resource.getter();
        v96 = dispatch thunk of SynthesisResource.language.getter();
        v128 = v127;

        v162[0] = v124;
        v130 = v124[2];
        v129 = v124[3];
        if (v130 >= v129 >> 1)
        {
          sub_100017968((v129 > 1), v130 + 1, 1);
          v124 = v162[0];
        }

        ++v123;
        v124[2] = v130 + 1;
        v131 = &v124[2 * v130];
        v131[4] = v96;
        v131[5] = v128;
        v73 = v157;
      }

      while (v122 != v123);

      goto LABEL_133;
    }

LABEL_161:
    __break(1u);
    return result;
  }

  v124 = _swiftEmptyArrayStorage;
LABEL_133:
  v133 = v124[2];
  v105 = v151;
  if (v133)
  {
    v102 = 0;
    v156 = (v124 + 4);
    v97 = v73 + 56;
    *&v132 = 136446210;
    v154 = v132;
    do
    {
      if (v102 >= v124[2])
      {
        __break(1u);
LABEL_153:
        result = _CocoaArrayWrapper.endIndex.getter();
        v106 = result;
        goto LABEL_109;
      }

      v134 = (v156 + 16 * v102);
      v96 = *v134;
      v135 = v134[1];
      if (*(v73 + 16))
      {
        v136 = *(v73 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v137 = Hasher._finalize()();
        v138 = -1 << *(v73 + 32);
        v139 = v137 & ~v138;
        if ((*(v97 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139))
        {
          v140 = ~v138;
          do
          {
            v141 = (*(v73 + 48) + 16 * v139);
            v142 = *v141 == v96 && v141[1] == v135;
            if (v142 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_136;
            }

            v139 = (v139 + 1) & v140;
          }

          while (((*(v97 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) != 0);
        }
      }

      else
      {
      }

      static Logger.service.getter();

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = v133;
        v147 = swift_slowAlloc();
        v162[0] = v147;
        *v145 = v154;
        *(v145 + 4) = sub_100004240(v96, v135, v162);
        _os_log_impl(&_mh_execute_header, v143, v144, "Remove not-in-use resource of language %{public}s", v145, 0xCu);
        sub_100004474(v147);
        v133 = v146;
        v73 = v157;

        v105 = v151;
      }

      v159(v105, v161);
      dispatch thunk of TrialAssetProvider.removeResource(language:)();
LABEL_136:
      ++v102;
    }

    while (v102 != v133);
  }
}

BOOL sub_100011F58(uint64_t *a1)
{
  v2 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = *a1;
  v7 = a1[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    UUID.init(uuidString:)();
    v9 = type metadata accessor for UUID();
    v10 = (*(*(v9 - 8) + 48))(v5, 1, v9);
    sub_100001E9C(v5, &qword_100035810, &qword_100027D68);
    if (v10 != 1)
    {
      abort();
    }
  }

  return v8 != 0;
}

uint64_t sub_100012064()
{
  sub_100001E9C(v0 + 32, &qword_100035800, &unk_100027D50);
  sub_100001E9C(v0 + 72, &qword_100035820, &unk_100027D70);
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  return v0;
}

uint64_t sub_1000120DC()
{
  sub_100012064();

  return _swift_deallocClassInstance(v0, 144, 7);
}

__n128 sub_100012134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100012190(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000121E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v31 = a1;
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v32 = v3;
    v29 = &v26;
    __chkstk_darwin(a1);
    v28 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v30 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;

      v3 = v32;
      v20 = v31(v33);
      v32 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1000126A8(v28, v27, v30, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1000126A8(v28, v27, v30, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_100012618(v24, v6, v4, v31);

  if (!v3)
  {
    return v25;
  }

  return result;
}

uint64_t sub_1000124A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1000126A8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100012618(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000124A4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000126A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000128D4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for SynthesisVoice();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_10001294C()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_100010734(v0[2]);
}

uint64_t sub_1000129A8()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      static String.Encoding.utf8.getter();
      v9 = String.data(using:allowLossyConversion:)();
      v11 = v10;

      (*(v2 + 8))(v5, v1);
      if (v11 >> 60 != 15)
      {
        v12 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v19 = 0;
        v14 = [v12 JSONObjectWithData:isa options:0 error:&v19];

        v15 = v19;
        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          sub_1000131E8(v9, v11);
          swift_unknownObjectRelease();
          sub_10000AEF4(&qword_100035908, &qword_100027DE8);
          if (swift_dynamicCast())
          {
            return v19;
          }
        }

        else
        {
          v17 = v15;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_1000131E8(v9, v11);
        }
      }
    }
  }

  else
  {
    sub_1000099A4(v21);
  }

  return 0;
}

double sub_100012C68@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1000129A8();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (*(v1 + 24))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x746C7561666564;
  }

  v7 = *(v3 + 16);

  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = sub_1000077E4(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  sub_100004418(*(v4 + 56) + 32 * v8, a1);

  return result;
}

uint64_t sub_100012D54()
{
  sub_100012C68(&v4);
  if (!v5)
  {
    sub_1000099A4(&v4);
    return 0;
  }

  sub_10000674C(&v4, v6);
  sub_100004418(v6, &v4);
  if (!swift_dynamicCast())
  {
    sub_100004474(v6);
    if (swift_dynamicCast())
    {
      v0 = v2;
      sub_100004474(&v4);
      return v0;
    }

    sub_100004474(&v4);
    return 0;
  }

  sub_100013070(v2, v3);

  sub_100004474(v6);
  v0 = 0;
  sub_100004474(&v4);
  return v0;
}

uint64_t sub_100012E90()
{
  sub_100012C68(&v4);
  if (!v5)
  {
    sub_1000099A4(&v4);
    return 0;
  }

  sub_10000674C(&v4, v6);
  sub_100004418(v6, &v4);
  if (!swift_dynamicCast())
  {
    sub_100004474(v6);
    if (swift_dynamicCast())
    {
      v0 = v2;
      sub_100004474(&v4);
      return v0;
    }

    sub_100004474(&v4);
    return 0;
  }

  sub_100013070(v2, v3);

  sub_100004474(v6);
  v0 = 0;
  sub_100004474(&v4);
  return v0;
}

unint64_t sub_10001301C()
{
  result = qword_100035900;
  if (!qword_100035900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035900);
  }

  return result;
}

BOOL sub_100013070(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_100013168@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1000131E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000131FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000131FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100013280(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

BOOL sub_1000133A8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for TTSError.TTSErrorCode() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1000041F8(&unk_100035C60, &type metadata accessor for TTSError.TTSErrorCode);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

BOOL sub_1000134B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  Hasher.init(_seed:)();
  v4 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    v10 = SynthesisVoice.VoiceType.rawValue.getter();
    v11 = v10 == SynthesisVoice.VoiceType.rawValue.getter();
    result = v11;
    if (v11)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

id DaemonXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DaemonXPCListener.init()()
{
  static Constants.MachServiceName.getter();
  v1 = objc_allocWithZone(NSXPCListener);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithMachServiceName:v2];

  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] = v3;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DaemonXPCListener();
  v4 = objc_msgSendSuper2(&v6, "init");
  [*&v4[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] setDelegate:v4];
  return v4;
}

id DaemonXPCListener.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener;
  [*&v0[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] setDelegate:0];
  [*&v0[v1] invalidate];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DaemonXPCListener();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_100013888(uint64_t a1)
{
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035C58, &qword_1000280A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for TTSError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  swift_errorRetain();
  sub_10000AEF4(&qword_100035A90, &qword_100027F78);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    v19 = *(v1 + *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) + 20));
    TTSError.code.getter();
    v20 = sub_1000133A8(v7, v19);
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v18(v11, 1, 1, v12);
    sub_100001E9C(v11, &qword_100035C58, &qword_1000280A0);
    return 0;
  }

  return v20;
}

uint64_t sub_100013B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100013BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v8 = type metadata accessor for RequestPreprocessAction();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();
  RequestPreprocessAction.init(pool:)();
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v13 = WorkflowNode.init(action:)();
  v14 = type metadata accessor for RequestParsingAction();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  RequestParsingAction.init(pool:)();
  v17 = *(v7 + 48);
  v18 = *(v7 + 52);
  swift_allocObject();
  v19 = WorkflowNode.init(action:)();
  v20 = a3(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  a4(a2);
  v23 = *(v7 + 48);
  v24 = *(v7 + 52);
  swift_allocObject();
  v25 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100027DF0;
  *(v26 + 32) = v13;
  *(v26 + 40) = v19;
  *(v26 + 48) = v25;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v26);

  return v25;
}

uint64_t sub_100013DDC()
{
  v0 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v1 = type metadata accessor for RequestParsingAction();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  swift_retain_n();
  RequestParsingAction.init(pool:)();
  v4 = *(v0 + 48);
  v5 = *(v0 + 52);
  swift_allocObject();
  v6 = WorkflowNode.init(action:)();
  v7 = type metadata accessor for InlineStreamingAction();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  InlineStreamingAction.init(pool:)();
  v10 = *(v0 + 48);
  v11 = *(v0 + 52);
  swift_allocObject();
  v12 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100027E10;
  *(v13 + 32) = v6;
  *(v13 + 40) = v12;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v13);

  return v12;
}

uint64_t sub_100013F94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v33 - v7;
  v9 = sub_1000091B0();
  if (a1)
  {
    v10 = type metadata accessor for AudioPlaybackAction();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();

    v13 = AudioPlaybackAction.init(pool:)();
    v38 = v10;
    v39 = &protocol witness table for AudioPlaybackAction;
    v37 = v13;
    v14 = type metadata accessor for WorkflowNode();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v36 = WorkflowNode.init(action:)();
    v37 = v9;

    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v17 = type metadata accessor for AudioDumpAction();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = AudioDumpAction.init(pool:)();
  dispatch thunk of AudioDumpAction.diagnosticTag.setter();
  v38 = v17;
  v39 = &protocol witness table for AudioDumpAction;
  v37 = v20;
  v21 = type metadata accessor for WorkflowNode();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v35 = WorkflowNode.init(action:)();
  v36 = v35;
  v37 = v9;
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  (*(v5 + 16))(a2, v8, v4);
  sub_10000AEF4(&qword_100035B00, &qword_100027FC8);
  v24 = type metadata accessor for TTSError.TTSErrorCode();
  v33[1] = v9;
  v34 = a2;
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33[0] = v8;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100027E20;
  v30 = v29 + v28;
  v31 = *(v26 + 104);
  v31(v30, enum case for TTSError.TTSErrorCode.inlineStreamTimeout(_:), v25);
  v31(v30 + v27, enum case for TTSError.TTSErrorCode.ospreyNetworkTimeout(_:), v25);
  v31(v30 + 2 * v27, enum case for TTSError.TTSErrorCode.ospreyInvalidAudioFormat(_:), v25);

  (*(v5 + 8))(v33[0], v4);
  result = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  *(v34 + *(result + 20)) = v29;
  return result;
}

uint64_t sub_100014318@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v80) = a1;
  v86 = a2;
  v79 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v82 = *(v79 - 8);
  v2 = *(v82 + 64);
  __chkstk_darwin(v79);
  v84 = v78 - v3;
  v4 = type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v5 = type metadata accessor for RetryTextModificationAction();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  swift_retain_n();
  v8 = RetryTextModificationAction.init(pool:)();
  v89 = v5;
  v90 = &protocol witness table for RetryTextModificationAction;
  v88 = v8;
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v85 = WorkflowNode.init(action:)();
  v11 = type metadata accessor for RequestPreprocessAction();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = RequestPreprocessAction.init(pool:)();
  v89 = v11;
  v90 = &protocol witness table for RequestPreprocessAction;
  v88 = v14;
  v15 = *(v4 + 48);
  v16 = *(v4 + 52);
  swift_allocObject();
  v17 = WorkflowNode.init(action:)();
  v18 = type metadata accessor for RequestParsingAction();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = RequestParsingAction.init(pool:)();
  v89 = v18;
  v90 = &protocol witness table for RequestParsingAction;
  v88 = v21;
  v22 = *(v4 + 48);
  v23 = *(v4 + 52);
  swift_allocObject();
  v24 = WorkflowNode.init(action:)();
  v25 = type metadata accessor for VoiceSelectionAction();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = VoiceSelectionAction.init(pool:)();
  v89 = v25;
  v90 = &protocol witness table for VoiceSelectionAction;
  v88 = v28;
  v29 = *(v4 + 48);
  v30 = *(v4 + 52);
  swift_allocObject();
  v31 = WorkflowNode.init(action:)();
  v32 = type metadata accessor for SynthesisEngineSelectionAction();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = SynthesisEngineSelectionAction.init(pool:)();
  v89 = v32;
  v90 = &protocol witness table for SynthesisEngineSelectionAction;
  v88 = v35;
  v36 = *(v4 + 48);
  v37 = *(v4 + 52);
  swift_allocObject();
  v38 = WorkflowNode.init(action:)();
  v39 = type metadata accessor for DeviceSynthesisAction();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = DeviceSynthesisAction.init(pool:)();
  v89 = v39;
  v90 = &protocol witness table for DeviceSynthesisAction;
  v88 = v42;
  v43 = *(v4 + 48);
  v44 = *(v4 + 52);
  swift_allocObject();
  v45 = WorkflowNode.init(action:)();
  v46 = type metadata accessor for SynthesisBufferingAction();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = SynthesisBufferingAction.init(pool:)();
  v89 = v46;
  v90 = &protocol witness table for SynthesisBufferingAction;
  v88 = v49;
  v50 = *(v4 + 48);
  v51 = *(v4 + 52);
  swift_allocObject();
  v52 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100027E30;
  *(v53 + 32) = v85;
  *(v53 + 40) = v17;
  *(v53 + 48) = v24;
  *(v53 + 56) = v31;
  *(v53 + 64) = v38;
  *(v53 + 72) = v45;
  *(v53 + 80) = v52;

  v83 = v17;

  v81 = v24;

  v78[3] = v31;

  v78[2] = v38;

  v78[1] = v45;

  v54 = v79;
  v55 = v84;
  DirectedAcyclicGraph.chain(nodes:)(v53);

  if (v80)
  {
    v56 = type metadata accessor for AudioPlaybackAction();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v59 = AudioPlaybackAction.init(pool:)();
    v89 = v56;
    v90 = &protocol witness table for AudioPlaybackAction;
    v88 = v59;
    v60 = *(v4 + 48);
    v61 = *(v4 + 52);
    swift_allocObject();
    v87 = WorkflowNode.init(action:)();
    v88 = v52;
    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v62 = type metadata accessor for AudioDumpAction();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = AudioDumpAction.init(pool:)();
  dispatch thunk of AudioDumpAction.diagnosticTag.setter();
  v89 = v62;
  v90 = &protocol witness table for AudioDumpAction;
  v88 = v65;
  v66 = *(v4 + 48);
  v67 = *(v4 + 52);
  swift_allocObject();

  v87 = WorkflowNode.init(action:)();
  v88 = v52;
  v80 = v52;
  v68 = v54;
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  v69 = v82;
  (*(v82 + 16))(v86, v55, v54);
  sub_10000AEF4(&qword_100035B00, &qword_100027FC8);
  v70 = type metadata accessor for TTSError.TTSErrorCode();
  v71 = *(v70 - 8);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100027E40;
  v75 = v74 + v73;
  v76 = *(v71 + 104);
  v76(v75, enum case for TTSError.TTSErrorCode.inlineStreamNetworkStall(_:), v70);
  v76(v75 + v72, enum case for TTSError.TTSErrorCode.ospreyNetworkStall(_:), v70);

  (*(v69 + 8))(v84, v68);
  result = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  *(v86 + *(result + 20)) = v74;
  return result;
}

uint64_t sub_1000149D4(void *a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_10000AEF4(&qword_100035AD8, &qword_100027FA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v77 = &v73 - v8;
  __chkstk_darwin(v7);
  v78 = &v73 - v9;
  v75 = type metadata accessor for OSSignpostID();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v75);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v74 = type metadata accessor for OSSignposter();
  v17 = *(v74 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v74);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    v73 = a1;
    v24 = v23;
    *v23 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v25, "TTS build synthesis/speech workflow", "", v24, 2u);
    a1 = v73;
  }

  v26 = v75;
  (*(v10 + 16))(v14, v16, v75);
  v27 = type metadata accessor for OSSignpostIntervalState();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v73 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v16, v26);
  (*(v17 + 8))(v20, v74);
  v30 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v31 = *(v30 - 8);
  v32 = v78;
  (*(v31 + 56))(v78, 1, 1, v30);
  v87 = 0;
  v86 = _swiftEmptyArrayStorage;
  type metadata accessor for InternalSettings();
  v33 = v80;
  swift_retain_n();
  v34 = v76;
  dispatch thunk of ObjectPool.find<A>()();
  if (v34)
  {

    v35 = static InternalSettings.shared.getter();
    v76 = 0;
  }

  else
  {
    v76 = 0;
    v35 = v82;
  }

  v36 = v79;
  v37 = v77;
  v75 = v35;
  v38 = sub_1000151F8(v77, v35, v33, a1, &v86, &v87);
  sub_1000225BC(v37, v32);
  v85 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v39 = type metadata accessor for AudioPlaybackAction();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = AudioPlaybackAction.init(pool:)();
    v83 = v39;
    v84 = &protocol witness table for AudioPlaybackAction;
    v82 = v42;
    v43 = type metadata accessor for WorkflowNode();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    result = WorkflowNode.init(action:)();
    if (!v38)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v81 = result;
    v82 = v38;
    result = (*(v31 + 48))(v32, 1, v30);
    if (result == 1)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v47 = type metadata accessor for AudioDumpAction();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = AudioDumpAction.init(pool:)();
  v83 = v47;
  v84 = &protocol witness table for AudioDumpAction;
  v82 = v50;
  v51 = type metadata accessor for WorkflowNode();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  result = WorkflowNode.init(action:)();
  if (!v38)
  {
    __break(1u);
    goto LABEL_22;
  }

  v81 = result;
  v82 = v38;
  v77 = result;
  v54 = *(v31 + 48);
  result = v54(v32, 1, v30);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  if (v87 != 1)
  {

LABEL_17:
    sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
    v68 = v76;
    dispatch thunk of ObjectPool.find<A>()();
    if (v68)
    {
    }

    sub_100009128(v32, v36, &qword_100035AD8, &qword_100027FA8);
    result = v54(v36, 1, v30);
    if (result != 1)
    {
      sub_1000097CC(v86);

      v69 = type metadata accessor for Workflow();
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      swift_allocObject();
      v72 = Workflow.init(graph:notification:errorHandlers:)();

      sub_100001E9C(v32, &qword_100035AD8, &qword_100027FA8);
      sub_100016838(v73, "TTS build synthesis/speech workflow");

      return v72;
    }

    goto LABEL_23;
  }

  v55 = type metadata accessor for SynthesisCacheWritingAction();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = SynthesisCacheWritingAction.init(pool:)();
  v83 = v55;
  v84 = &protocol witness table for SynthesisCacheWritingAction;
  v82 = v58;
  v59 = *(v51 + 48);
  v60 = *(v51 + 52);
  swift_allocObject();
  v74 = WorkflowNode.init(action:)();
  v61 = type metadata accessor for OpusEncodingAction();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = OpusEncodingAction.init(pool:)();
  v83 = v61;
  v84 = &protocol witness table for OpusEncodingAction;
  v82 = v64;
  v65 = *(v51 + 48);
  v66 = *(v51 + 52);
  swift_allocObject();
  v67 = WorkflowNode.init(action:)();
  v81 = v67;
  v82 = v38;
  result = v54(v32, 1, v30);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  v81 = v74;
  v82 = v67;
  result = v54(v32, 1, v30);
  if (result != 1)
  {
    DirectedAcyclicGraph.connect(fromNode:toNode:)();

    v36 = v79;
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}