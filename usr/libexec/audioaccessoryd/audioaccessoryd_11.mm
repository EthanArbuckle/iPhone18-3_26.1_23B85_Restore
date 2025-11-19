uint64_t sub_100194504(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1001CF2F0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for BTDeferredRecord();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100194630@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A70 != -1)
    {
      swift_once();
    }

    v7 = sub_1000EE91C(v2, qword_100300D60);
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_100190284(v6);

    (*(v3 + 8))(v6, v2);
    if (v8[2])
    {
      v9 = type metadata accessor for LegacyMagicPairingSettingsRecords();
      v10 = *(v9 - 8);
      sub_1001CC14C(v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1, type metadata accessor for LegacyMagicPairingSettingsRecords);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    else
    {

      v14 = type metadata accessor for LegacyMagicPairingSettingsRecords();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v12 = type metadata accessor for LegacyMagicPairingSettingsRecords();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_10019493C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79D8 != -1)
    {
      swift_once();
    }

    v7 = sub_1000EE91C(v2, qword_100300B50);
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_10018D540(v6);

    (*(v3 + 8))(v6, v2);
    v17 = v8;

    sub_1001C5AAC(&v17);

    v9 = v17;
    if (v17[2])
    {
      v10 = type metadata accessor for SoundProfileRecord();
      v11 = *(v10 - 8);
      sub_1001CC14C(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), a1, type metadata accessor for SoundProfileRecord);

      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    else
    {

      v15 = type metadata accessor for SoundProfileRecord();
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v13 = type metadata accessor for SoundProfileRecord();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

void *sub_100194C84()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for AudioAccessoryFeatures;
  v10[4] = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(v10);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      swift_once();
    }

    v6 = sub_1000EE91C(v0, qword_100300D88);
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_10018E14C(v4, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v7 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  return v7;
}

void *sub_100194EB4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for AudioAccessoryFeatures;
  v10[4] = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(v10);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1000EE91C(v0, qword_100300B10);
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_10018E14C(v4, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v7 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  return v7;
}

uint64_t sub_1001950E4(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1001CDDB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C11B0;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v20 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v6, v20);
  (*(v24 + 8))(v10, v25);
}

void sub_10019549C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_1000F8E78(v13), (v6 & 1) == 0))
  {

    sub_1000FA8F4(v13);
LABEL_13:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_14;
  }

  sub_100162534(*(v4 + 56) + 32 * v5, &v14);
  sub_1000FA8F4(v13);

  if (!*(&v15 + 1))
  {
LABEL_14:
    sub_1000EEE6C(&v14, &unk_1002F9C10, &qword_100228390);
    return;
  }

  v7 = sub_1000FA784(0, &qword_1002F9E90, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v8 = v13[0];
    static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    *(v9 + 56) = v7;
    *(v9 + 64) = sub_1001CB38C(&qword_1002F9E98, &qword_1002F9E90, NSNumber_ptr);
    *(v9 + 32) = v8;
    v10 = v8;
    os_log(_:dso:log:_:_:)();

    v11 = [v10 BOOLValue];
    v12 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp);
    *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp) = v11;
    if (v12 != 1)
    {
      if (v11)
      {
        sub_100195ABC();
      }
    }
  }
}

uint64_t sub_1001956D0(uint64_t a1)
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

uint64_t sub_1001957C4()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_1001630C8(v0 + 24);
  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v6 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices);

  return v0;
}

uint64_t sub_100195930()
{
  sub_1001957C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceStore()
{
  result = qword_1002F9870;
  if (!qword_1002F9870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001959DC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100195ABC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100226100;
  v16 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);
  if (v16)
  {
    v17 = [v16 date];
    v35 = v10;
    v18 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = objc_opt_self();
    v34 = v14;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = [v19 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    (*(v11 + 8))(v34, v35);
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000EE954();
  v25 = 0x8000000100271890;
  v26 = 0xD000000000000010;
  if (v24)
  {
    v26 = v22;
    v25 = v24;
  }

  *(v15 + 32) = v26;
  *(v15 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  v27 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001CC02C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0FF8;
  v29 = _Block_copy(aBlock);
  v30 = v27;

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v31 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v38 + 8))(v5, v31);
  (*(v36 + 8))(v9, v37);
}

void sub_100195FE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer;
    if (*(Strong + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer))
    {
    }

    else
    {
      v2 = Strong;
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v3 = swift_allocObject();
      swift_weakInit();
      v4 = objc_allocWithZone(BTXPCTimer);

      v5 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1001CC034;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147160;
      aBlock[3] = &unk_1002C1020;
      v6 = _Block_copy(aBlock);
      v7 = [v4 initWithName:v5 timeInterval:1 gracePeriod:705 priority:v6 options:300.0 block:60.0];

      _Block_release(v6);

      v8 = *(v2 + v1);
      *(v2 + v1) = v7;
    }
  }
}

uint64_t sub_1001961F0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v21 = v8;
    v22 = v7;
    v23 = v3;
    v24 = v2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    *(v14 + 56) = sub_1000FA784(0, &qword_1002F9E18, off_1002B5590);
    *(v14 + 64) = sub_1001CB38C(&unk_1002F9E20, &qword_1002F9E18, off_1002B5590);
    *(v14 + 32) = a1;
    v15 = a1;
    os_log(_:dso:log:_:_:)();

    v16 = *(v13 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001CC03C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C1048;
    v18 = _Block_copy(aBlock);
    v19 = v16;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v20 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v23 + 8))(v6, v20);
    (*(v21 + 8))(v11, v22);
  }

  return result;
}

void sub_10019660C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001966F4();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);

    [v1 invalidate];
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);
    *(v2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) = 0;
  }
}

uint64_t sub_1001966F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  v6 = *(v14 + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001CBC78;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0DA0;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v14 + 8))(v8, v15);
}

uint64_t sub_1001969E8()
{
  v0 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v318 - v2;
  v4 = type metadata accessor for SoundProfileRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v322 = &v318 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for MagicPairingSettingsRecord();
  v373 = *(v348 - 8);
  v8 = *(v373 + 64);
  __chkstk_darwin(v348);
  v354 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v372 = &v318 - v11;
  v374 = type metadata accessor for DeviceSupportInformationRecord();
  v12 = *(v374 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v374);
  v15 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v375 = &v318 - v17;
  v18 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v334 = &v318 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v326 = &v318 - v22;
  __chkstk_darwin(v23);
  v329 = &v318 - v24;
  __chkstk_darwin(v25);
  v337 = &v318 - v26;
  __chkstk_darwin(v27);
  v342 = &v318 - v28;
  __chkstk_darwin(v29);
  v345 = &v318 - v30;
  v376 = type metadata accessor for DeviceRecord();
  v366 = *(v376 - 8);
  v31 = *(v366 + 64);
  __chkstk_darwin(v376);
  v33 = &v318 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v377 = &v318 - v35;
  v368 = type metadata accessor for URL();
  v338 = *(v368 - 8);
  v36 = *(v338 + 64);
  __chkstk_darwin(v368);
  v333 = &v318 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v332 = &v318 - v39;
  __chkstk_darwin(v40);
  v325 = &v318 - v41;
  __chkstk_darwin(v42);
  v324 = &v318 - v43;
  __chkstk_darwin(v44);
  v328 = &v318 - v45;
  __chkstk_darwin(v46);
  v327 = &v318 - v47;
  __chkstk_darwin(v48);
  v336 = &v318 - v49;
  __chkstk_darwin(v50);
  v335 = &v318 - v51;
  __chkstk_darwin(v52);
  v341 = &v318 - v53;
  __chkstk_darwin(v54);
  v340 = &v318 - v55;
  __chkstk_darwin(v56);
  v344 = &v318 - v57;
  __chkstk_darwin(v58);
  v343 = &v318 - v59;
  __chkstk_darwin(v60);
  v359 = &v318 - v61;
  v347 = type metadata accessor for BTDeferredRecord();
  v357 = *(v347 - 8);
  v62 = *(v357 + 64);
  __chkstk_darwin(v347);
  v364 = &v318 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v362 = &v318 - v64;
  __chkstk_darwin(v65);
  v67 = &v318 - v66;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v69 = result;
  v367 = v62;
  v356 = v33;
  v370 = v12;
  v355 = v15;
  v319 = v5;
  v320 = v4;
  v321 = v3;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    v70 = qword_100300E38;
    v361 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v71 = swift_allocObject();
    v360 = xmmword_100226100;
    *(v71 + 16) = xmmword_100226100;
    v72 = sub_10019391C();
    v371 = v69;
    *(v71 + 56) = sub_1000EE870(&qword_1002F9E00, &qword_100229AA8);
    *(v71 + 64) = sub_1000FA0E0(&qword_1002F9E08, &qword_1002F9E00, &qword_100229AA8);
    *(v71 + 32) = v72;
    v369 = v70;
    os_log(_:dso:log:_:_:)();

    v73 = sub_10019391C();
    v74 = *(v73 + 16);
    v75 = v347;
    v76 = v364;
    if (v74)
    {
      v351 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator;
      v77 = *(v357 + 80);
      v346 = v73;
      v78 = v73 + ((v77 + 32) & ~v77);
      v365 = *(v357 + 72);
      v358 = v77;
      v353 = (v77 + 16) & ~v77;
      v352 = &v367[v353 + 7] & 0xFFFFFFFFFFFFFFF8;
      v363 = 0x80000001002671C0;
      v350 = "debugDescription";
      v349 = CKCurrentUserDefaultName;
      v79 = v370;
      while (1)
      {
        sub_1001CC14C(v78, v67, type metadata accessor for BTDeferredRecord);
        if (*v67)
        {
          break;
        }

        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v85)
        {
          goto LABEL_10;
        }

LABEL_6:
        sub_1001CC1B4(v67, type metadata accessor for BTDeferredRecord);
        v78 += v365;
        if (!--v74)
        {

          goto LABEL_16;
        }
      }

LABEL_10:
      static os_log_type_t.default.getter();
      v86 = swift_allocObject();
      *(v86 + 16) = v360;
      v367 = v74;
      v87 = v75;
      v88 = v362;
      sub_1001CC14C(v67, v362, type metadata accessor for BTDeferredRecord);
      v89 = v67;
      v90 = String.init<A>(describing:)();
      v92 = v91;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = sub_1000EE954();
      *(v86 + 32) = v90;
      *(v86 + 40) = v92;
      os_log(_:dso:log:_:_:)();

      v93 = v371;
      v94 = sub_100193560();
      v95 = v89 + *(v87 + 24);
      UUID.uuidString.getter();
      v96 = objc_allocWithZone(CKRecordID);
      v97 = String._bridgeToObjectiveC()();

      v98 = [v96 initWithRecordName:v97];

      sub_1001CC14C(v89, v88, type metadata accessor for BTDeferredRecord);
      v99 = v352;
      v100 = swift_allocObject();
      v101 = v88;
      v75 = v87;
      v74 = v367;
      sub_1001CC214(v101, v100 + v353, type metadata accessor for BTDeferredRecord);
      *(v100 + v99) = v93;
      v102 = swift_allocObject();
      *(v102 + 16) = v94;
      *(v102 + 24) = v98;
      *(v102 + 32) = sub_1001CBD04;
      *(v102 + 40) = v100;
      *(v102 + 48) = 0;
      v76 = v364;

      swift_unknownObjectRetain();
      v103 = v98;

      sub_100153CF4(sub_1001CE26C, v102);

      v79 = v370;
      swift_unknownObjectRelease();

      v67 = v89;

      if (*(v89 + 8) == 0xD000000000000012 && v363 == *(v89 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v80._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80._object = v81;
        v82._countAndFlagsBits = 0xD000000000000010;
        v82._object = (v350 | 0x8000000000000000);
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v82, v80).super.isa;
        v84 = *(v351 + v371);
        swift_unknownObjectRetain();
        sub_100158CC4(&off_1002BBC88, isa, 0, 0, 0, 0);
        swift_unknownObjectRelease();

        sub_1001CB31C(&unk_1002BBCA8);
      }

      goto LABEL_6;
    }

    v79 = v370;
LABEL_16:
    v67 = sub_10019391C();
    v69 = v354;
    v104 = v366;
    v353 = *(v67 + 2);
    if (v353)
    {
      v367 = objc_opt_self();
      v105 = 0;
      v106 = 0;
      v352 = &v67[(*(v357 + 80) + 32) & ~*(v357 + 80)];
      v358 = (v338 + 16);
      v365 = (v338 + 8);
      v346 = 0x80000001002671E0;
      v351 = (v338 + 48);
      v349 = (v338 + 32);
      v323 = 0x800000010026EAC0;
      v331 = 0x8000000100267B10;
      v350 = v67;
LABEL_21:
      if (v105 >= *(v67 + 2))
      {
        goto LABEL_182;
      }

      sub_1001CC14C(v352 + *(v357 + 72) * v105, v76, type metadata accessor for BTDeferredRecord);
      if ([v367 isFirstUnlocked])
      {
        v363 = v106;
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v107 = v368;
        v108 = sub_1000EE91C(v368, qword_100300AF0);
        v109 = v359;
        (*v358)(v359, v108, v107);
        v110 = sub_10018B20C(v109);

        (*v365)(v109, v107);
        v106 = v363;
      }

      else
      {
        static os_log_type_t.error.getter();
        v110 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }

      v111 = 0;
      v363 = v105 + 1;
      v112 = v110[2];
      while (1)
      {
        if (v112 == v111)
        {

          v79 = *(v76 + 8);
          if (v79 != 0x6552656369766544 || *(v76 + 16) != 0xEC00000064726F63)
          {
            v122 = *(v76 + 8);
            v123 = *(v76 + 16);
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v79 = v370;
              v104 = v366;
              goto LABEL_45;
            }
          }

          static os_log_type_t.default.getter();
          v124 = swift_allocObject();
          *(v124 + 16) = v360;
          sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
          v125 = String.init<A>(describing:)();
          v127 = v126;
          *(v124 + 56) = &type metadata for String;
          *(v124 + 64) = sub_1000EE954();
          *(v124 + 32) = v125;
          *(v124 + 40) = v127;
          os_log(_:dso:log:_:_:)();

          v128 = sub_100192340();
          v129 = v76 + *(v75 + 28);
          v69 = *v129;
          v130 = *(v129 + 8);
          v131 = v345;
          URL.init(string:)();
          if ((*v351)(v131, 1, v368) != 1)
          {
            v132 = v344;
            v133 = v368;
            (*v349)(v344, v131, v368);
            v134 = v343;
            URL.appendingPathComponent(_:)();
            v135 = *v365;
            v136 = (*v365)(v132, v133);
            v137 = *(v128 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
            __chkstk_darwin(v136);
            *(&v318 - 4) = v128;
            *(&v318 - 3) = v69;
            *(&v318 - 2) = v130;
            *(&v318 - 1) = v134;
            goto LABEL_18;
          }

          __break(1u);
          goto LABEL_222;
        }

        v69 = v377;
        if (v111 >= v110[2])
        {
          break;
        }

        sub_1001CC14C(v110 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v111, v377, type metadata accessor for DeviceRecord);
        v113 = &v69[*(v376 + 24)];
        v114 = *v113;
        v115 = *(v113 + 1);
        v116 = (v76 + *(v75 + 28));
        if (v114 == *v116 && v115 == v116[1])
        {
          sub_1001CC1B4(v69, type metadata accessor for DeviceRecord);
LABEL_44:

LABEL_45:
          if ([v367 isFirstUnlocked])
          {
            sub_100192340();
            if (qword_1002F7A68 != -1)
            {
              swift_once();
            }

            v138 = v368;
            v139 = sub_1000EE91C(v368, qword_100300D48);
            v140 = v359;
            (*v358)(v359, v139, v138);
            v141 = sub_10018BDC8(v140);

            (*v365)(v140, v138);
          }

          else
          {
            static os_log_type_t.error.getter();
            v141 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)();
          }

          v142 = 0;
          v143 = v141[2];
          while (2)
          {
            if (v143 == v142)
            {

              v79 = *(v76 + 16);
              if (*(v76 + 8) != 0xD00000000000001ELL || v346 != v79)
              {
                v153 = *(v76 + 8);
                v154 = *(v76 + 16);
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v104 = v366;
                  goto LABEL_68;
                }
              }

              static os_log_type_t.default.getter();
              v155 = swift_allocObject();
              *(v155 + 16) = v360;
              sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
              v156 = String.init<A>(describing:)();
              v158 = v157;
              *(v155 + 56) = &type metadata for String;
              *(v155 + 64) = sub_1000EE954();
              *(v155 + 32) = v156;
              *(v155 + 40) = v158;
              os_log(_:dso:log:_:_:)();

              v159 = sub_100192340();
              v160 = v76 + *(v75 + 28);
              v69 = *v160;
              v161 = *(v160 + 8);
              v162 = v342;
              URL.init(string:)();
              if ((*v351)(v162, 1, v368) != 1)
              {
                v163 = v341;
                v133 = v368;
                (*v349)(v341, v162, v368);
                v134 = v340;
                URL.appendingPathComponent(_:)();
                v135 = *v365;
                v164 = (*v365)(v163, v133);
                v165 = *(v159 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
                __chkstk_darwin(v164);
                *(&v318 - 4) = v159;
                *(&v318 - 3) = v69;
                *(&v318 - 2) = v161;
                *(&v318 - 1) = v134;
LABEL_18:
                OS_dispatch_queue.sync<A>(execute:)();

                v135(v134, v133);
                v79 = v370;
                v104 = v366;
                v75 = v347;
LABEL_19:
                v76 = v364;
                v67 = v350;
                goto LABEL_20;
              }

LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:

              sub_1001CC1B4(v76, type metadata accessor for DeviceRecord);
              __break(1u);
LABEL_228:

              sub_1001CC1B4(v79, type metadata accessor for DeviceSupportInformationRecord);
              __break(1u);
LABEL_229:

              result = sub_1001CC1B4(v69, type metadata accessor for MagicPairingSettingsRecord);
              __break(1u);
              return result;
            }

            v69 = v375;
            if (v142 >= v141[2])
            {
              goto LABEL_177;
            }

            sub_1001CC14C(v141 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v142, v375, type metadata accessor for DeviceSupportInformationRecord);
            v144 = &v69[*(v374 + 24)];
            v145 = *v144;
            v146 = *(v144 + 1);
            v147 = (v76 + *(v75 + 28));
            if (v145 != *v147 || v146 != v147[1])
            {
              ++v142;
              v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v150 = v69;
              v151 = v149;
              sub_1001CC1B4(v150, type metadata accessor for DeviceSupportInformationRecord);
              if (v151)
              {
                goto LABEL_67;
              }

              continue;
            }

            break;
          }

          sub_1001CC1B4(v69, type metadata accessor for DeviceSupportInformationRecord);
LABEL_67:

LABEL_68:
          v166 = [v367 isFirstUnlocked];
          v167 = v348;
          if (v166)
          {
            sub_100192340();
            if (qword_1002F7A00 != -1)
            {
              swift_once();
            }

            v168 = v368;
            v169 = sub_1000EE91C(v368, qword_100300BA8);
            v170 = v359;
            (*v358)(v359, v169, v168);
            v171 = sub_10018C984(v170);

            (*v365)(v170, v168);
          }

          else
          {
            static os_log_type_t.error.getter();
            v171 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)();
          }

          v172 = 0;
          v173 = v171[2];
          while (2)
          {
            if (v173 == v172)
            {

              v79 = *(v76 + 8);
              v182 = *(v76 + 16);
              if (v79 != 0x746553636967614DLL || v182 != 0xED000073676E6974)
              {
                v184 = *(v76 + 8);
                v185 = *(v76 + 16);
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v104 = v366;
                  goto LABEL_91;
                }
              }

              v339 = v182;
              static os_log_type_t.default.getter();
              v186 = swift_allocObject();
              *(v186 + 16) = v360;
              sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
              v187 = String.init<A>(describing:)();
              v189 = v188;
              *(v186 + 56) = &type metadata for String;
              *(v186 + 64) = sub_1000EE954();
              *(v186 + 32) = v187;
              *(v186 + 40) = v189;
              os_log(_:dso:log:_:_:)();

              v190 = sub_100192340();
              v191 = v76 + *(v75 + 28);
              v69 = *v191;
              v192 = *(v191 + 8);
              v193 = v337;
              URL.init(string:)();
              if ((*v351)(v193, 1, v368) == 1)
              {
                goto LABEL_223;
              }

              v194 = v336;
              v195 = v368;
              (*v349)(v336, v193, v368);
              v196 = v335;
              URL.appendingPathComponent(_:)();
              v339 = *v365;
              v197 = (v339)(v194, v195);
              v198 = *(v190 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
              __chkstk_darwin(v197);
              *(&v318 - 4) = v190;
              *(&v318 - 3) = v69;
              *(&v318 - 2) = v192;
              *(&v318 - 1) = v196;
              OS_dispatch_queue.sync<A>(execute:)();

              v199 = v196;
              v200 = v195;
              goto LABEL_119;
            }

            v69 = v372;
            if (v172 >= v171[2])
            {
              goto LABEL_178;
            }

            sub_1001CC14C(v171 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v172, v372, type metadata accessor for MagicPairingSettingsRecord);
            v174 = &v69[*(v167 + 24)];
            v175 = *v174;
            v176 = *(v174 + 1);
            v177 = (v76 + *(v75 + 28));
            if (v175 != *v177 || v176 != v177[1])
            {
              ++v172;
              v179 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v180 = v69;
              v181 = v179;
              sub_1001CC1B4(v180, type metadata accessor for MagicPairingSettingsRecord);
              if (v181)
              {
                goto LABEL_90;
              }

              continue;
            }

            break;
          }

          sub_1001CC1B4(v69, type metadata accessor for MagicPairingSettingsRecord);
LABEL_90:

LABEL_91:
          v379 = &type metadata for AudioAccessoryFeatures;
          v201 = sub_1000F1874();
          v380 = v201;
          v202 = isFeatureEnabled(_:)();
          sub_1000EF824(&v378);
          if (v202)
          {
            v203 = sub_100194C84();
            __chkstk_darwin(v203);
            *(&v318 - 2) = v76;
            v204 = sub_10017CF20(sub_1001CBCDC, (&v318 - 4), v203);

            if ((v204 & 1) == 0)
            {
              v245 = *(v76 + 8);
              v246 = *(v76 + 16);
              if (v245 != 0x6563697665444141 || v246 != 0xEE0064726F636552)
              {
                v247 = *(v76 + 8);
                v248 = *(v76 + 16);
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v104 = v366;
                  goto LABEL_93;
                }
              }

              v330 = v246;
              v339 = v245;
              static os_log_type_t.default.getter();
              v249 = swift_allocObject();
              *(v249 + 16) = v360;
              sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
              v250 = String.init<A>(describing:)();
              v79 = v251;
              *(v249 + 56) = &type metadata for String;
              *(v249 + 64) = sub_1000EE954();
              *(v249 + 32) = v250;
              *(v249 + 40) = v79;
              os_log(_:dso:log:_:_:)();

              v252 = sub_100192340();
              v253 = v76 + *(v75 + 28);
              v69 = *v253;
              v254 = *(v253 + 8);
              v255 = v329;
              URL.init(string:)();
              if ((*v351)(v255, 1, v368) == 1)
              {
                goto LABEL_225;
              }

              v256 = v328;
              v220 = v368;
              (*v349)(v328, v255, v368);
              v221 = v327;
              URL.appendingPathComponent(_:)();
              v339 = *v365;
              v257 = (v339)(v256, v220);
              v258 = *(v252 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
              __chkstk_darwin(v257);
              *(&v318 - 4) = v252;
              *(&v318 - 3) = v69;
              *(&v318 - 2) = v254;
              *(&v318 - 1) = v221;
LABEL_117:
              OS_dispatch_queue.sync<A>(execute:)();

              v199 = v221;
LABEL_118:
              v200 = v220;
LABEL_119:
              v339(v199, v200);
              v79 = v370;
              v104 = v366;
              goto LABEL_19;
            }
          }

LABEL_93:
          v379 = &type metadata for AudioAccessoryFeatures;
          v380 = v201;
          v205 = isFeatureEnabled(_:)();
          sub_1000EF824(&v378);
          if (v205)
          {
            v206 = sub_100194EB4();
            __chkstk_darwin(v206);
            *(&v318 - 2) = v76;
            v207 = sub_10017CF20(sub_1001CBCB4, (&v318 - 4), v206);

            v79 = v370;
            if ((v207 & 1) == 0)
            {
              v208 = *(v76 + 8);
              v209 = *(v76 + 16);
              if (v208 == 0xD000000000000011 && v323 == v209 || (v210 = *(v76 + 8), v211 = *(v76 + 16), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
                v330 = v209;
                v339 = v208;
                static os_log_type_t.default.getter();
                v212 = swift_allocObject();
                *(v212 + 16) = v360;
                sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
                v213 = String.init<A>(describing:)();
                v79 = v214;
                *(v212 + 56) = &type metadata for String;
                *(v212 + 64) = sub_1000EE954();
                *(v212 + 32) = v213;
                *(v212 + 40) = v79;
                os_log(_:dso:log:_:_:)();

                v215 = sub_100192340();
                v216 = v76 + *(v75 + 28);
                v69 = *v216;
                v217 = *(v216 + 8);
                v218 = v326;
                URL.init(string:)();
                if ((*v351)(v218, 1, v368) == 1)
                {
                  goto LABEL_226;
                }

                v219 = v325;
                v220 = v368;
                (*v349)(v325, v218, v368);
                v221 = v324;
                URL.appendingPathComponent(_:)();
                v339 = *v365;
                v222 = (v339)(v219, v220);
                v223 = *(v215 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
                __chkstk_darwin(v222);
                *(&v318 - 4) = v215;
                *(&v318 - 3) = v69;
                *(&v318 - 2) = v217;
                *(&v318 - 1) = v221;
                goto LABEL_117;
              }

              v104 = v366;
            }
          }

          else
          {
            v79 = v370;
          }

          if ([v367 isFirstUnlocked])
          {
            sub_100192340();
            if (qword_1002F7A60 != -1)
            {
              swift_once();
            }

            v224 = v368;
            v225 = sub_1000EE91C(v368, qword_100300C40);
            v226 = v359;
            (*v358)(v359, v225, v224);
            v227 = sub_10018E14C(v226, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

            v228 = (*v365)(v226, v224);
          }

          else
          {
            static os_log_type_t.error.getter();
            v227 = _swiftEmptyArrayStorage;
            v228 = os_log(_:dso:log:_:_:)();
          }

          __chkstk_darwin(v228);
          *(&v318 - 2) = v76;
          v229 = sub_10017CF20(sub_1001CBC80, (&v318 - 4), v227);

          if ((v229 & 1) == 0)
          {
            v230 = *(v76 + 8);
            v231 = *(v76 + 16);
            if (v230 == 0xD000000000000013 && v331 == v231 || (v232 = *(v76 + 8), v233 = *(v76 + 16), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
              v330 = v231;
              v339 = v230;
              static os_log_type_t.default.getter();
              v234 = swift_allocObject();
              *(v234 + 16) = v360;
              sub_1001CC14C(v76, v362, type metadata accessor for BTDeferredRecord);
              v235 = String.init<A>(describing:)();
              v79 = v236;
              *(v234 + 56) = &type metadata for String;
              *(v234 + 64) = sub_1000EE954();
              *(v234 + 32) = v235;
              *(v234 + 40) = v79;
              os_log(_:dso:log:_:_:)();

              v237 = sub_100192340();
              v238 = v76 + *(v75 + 28);
              v69 = *v238;
              v239 = *(v238 + 8);
              v240 = v334;
              URL.init(string:)();
              if ((*v351)(v240, 1, v368) == 1)
              {
                goto LABEL_224;
              }

              v241 = v333;
              v220 = v368;
              (*v349)(v333, v240, v368);
              v242 = v332;
              URL.appendingPathComponent(_:)();
              v339 = *v365;
              v243 = (v339)(v241, v220);
              v244 = *(v237 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
              __chkstk_darwin(v243);
              *(&v318 - 4) = v237;
              *(&v318 - 3) = v69;
              *(&v318 - 2) = v239;
              *(&v318 - 1) = v242;
              OS_dispatch_queue.sync<A>(execute:)();

              v199 = v242;
              goto LABEL_118;
            }

            v104 = v366;
          }

LABEL_20:
          sub_1001CC1B4(v76, type metadata accessor for BTDeferredRecord);
          v105 = v363;
          v69 = v354;
          if (v363 == v353)
          {

            goto LABEL_128;
          }

          goto LABEL_21;
        }

        ++v111;
        v118 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v119 = v69;
        v120 = v118;
        sub_1001CC1B4(v119, type metadata accessor for DeviceRecord);
        if (v120)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v106 = 0;
LABEL_128:
    v377 = objc_opt_self();
    v259 = [v377 isFirstUnlocked];
    v67 = v371;
    if (v259)
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v260 = v368;
      v261 = sub_1000EE91C(v368, qword_100300AF0);
      v262 = v338;
      v263 = v359;
      (*(v338 + 16))(v359, v261, v260);
      v264 = sub_10018B20C(v263);

      (*(v262 + 8))(v263, v260);
      v265 = v264[2];
      if (v265)
      {
LABEL_134:
        v266 = 0;
        while (v266 < v264[2])
        {
          v76 = v356;
          sub_1001CC14C(v264 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v266, v356, type metadata accessor for DeviceRecord);
          sub_10019A080(v76, v67);
          if (v106)
          {
            goto LABEL_227;
          }

          ++v266;
          sub_1001CC1B4(v76, type metadata accessor for DeviceRecord);
          v104 = v366;
          if (v265 == v266)
          {
            goto LABEL_138;
          }
        }

        goto LABEL_179;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      v264 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      v265 = _swiftEmptyArrayStorage[2];
      if (v265)
      {
        goto LABEL_134;
      }
    }

LABEL_138:

    if ([v377 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v267 = v368;
      v268 = sub_1000EE91C(v368, qword_100300D48);
      v269 = v338;
      v270 = v359;
      (*(v338 + 16))(v359, v268, v267);
      v271 = sub_10018BDC8(v270);

      (*(v269 + 8))(v270, v267);
      v272 = v271[2];
      if (v272)
      {
LABEL_144:
        v273 = 0;
        while (v273 < v271[2])
        {
          v274 = v271 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v273;
          v79 = v355;
          sub_1001CC14C(v274, v355, type metadata accessor for DeviceSupportInformationRecord);
          sub_1001A0974(v79, v67);
          if (v106)
          {
            goto LABEL_228;
          }

          ++v273;
          sub_1001CC1B4(v79, type metadata accessor for DeviceSupportInformationRecord);
          v79 = v370;
          if (v272 == v273)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_180;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      v271 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      v272 = _swiftEmptyArrayStorage[2];
      if (v272)
      {
        goto LABEL_144;
      }
    }

LABEL_148:

    if ([v377 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v275 = v368;
      v276 = sub_1000EE91C(v368, qword_100300BA8);
      v277 = v338;
      v278 = v359;
      (*(v338 + 16))(v359, v276, v275);
      v279 = sub_10018C984(v278);

      (*(v277 + 8))(v278, v275);
      v280 = v279[2];
      if (v280)
      {
LABEL_154:
        v281 = 0;
        while (v281 < v279[2])
        {
          sub_1001CC14C(v279 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v281, v69, type metadata accessor for MagicPairingSettingsRecord);
          sub_1001A0F08(v69, v67);
          if (v106)
          {
            goto LABEL_229;
          }

          ++v281;
          sub_1001CC1B4(v69, type metadata accessor for MagicPairingSettingsRecord);
          if (v280 == v281)
          {
            goto LABEL_158;
          }
        }

        goto LABEL_181;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      v279 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      v280 = _swiftEmptyArrayStorage[2];
      if (v280)
      {
        goto LABEL_154;
      }
    }

LABEL_158:

    v69 = v321;
    sub_10019493C(v321);
    if ((*(v319 + 48))(v69, 1, v320) == 1)
    {
      sub_1000EEE6C(v69, &qword_1002F84F8, &unk_1002299F0);
    }

    else
    {
      v282 = v322;
      sub_1001CC214(v69, v322, type metadata accessor for SoundProfileRecord);
      v283 = objc_autoreleasePoolPush();
      v284 = sub_100169D38(*v282, *(v282 + 8));
      if (!v284)
      {
        v284 = sub_1000F82C4(v282).super.isa;
      }

      v285 = v284;
      v378 = v284;
      sub_1000FD23C(&v378);
      objc_autoreleasePoolPop(v283);
      v286 = [v285 recordChangeTag];
      if (v286)
      {
        v287 = v286;

        sub_1001CC1B4(v282, type metadata accessor for SoundProfileRecord);
      }

      else
      {
        static os_log_type_t.default.getter();
        v288 = swift_allocObject();
        *(v288 + 16) = v360;
        v289 = sub_1000FAF14();
        v291 = v290;
        *(v288 + 56) = &type metadata for String;
        *(v288 + 64) = sub_1000EE954();
        *(v288 + 32) = v289;
        *(v288 + 40) = v291;
        os_log(_:dso:log:_:_:)();

        sub_100193560();
        v292 = swift_allocObject();
        swift_weakInit();

        sub_100154534(v285, 0, sub_1001CBCA8, v292);

        swift_unknownObjectRelease();

        sub_1001CC1B4(v282, type metadata accessor for SoundProfileRecord);
      }
    }

    v379 = &type metadata for AudioAccessoryFeatures;
    v380 = sub_1000F1874();
    v293 = isFeatureEnabled(_:)();
    sub_1000EF824(&v378);
    if ((v293 & 1) == 0)
    {
      goto LABEL_201;
    }

    v294 = sub_100194C84();
    v295 = v294;
    if (!(v294 >> 62))
    {
      v296 = *((v294 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v296)
      {
        break;
      }

      goto LABEL_168;
    }

    v296 = _CocoaArrayWrapper.endIndex.getter();
    if (!v296)
    {
      break;
    }

LABEL_168:
    v297 = 0;
    while (1)
    {
      if ((v295 & 0xC000000000000001) != 0)
      {
        v298 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v297 >= *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_184;
        }

        v298 = *(v295 + 8 * v297 + 32);
      }

      v299 = v298;
      v300 = v297 + 1;
      if (__OFADD__(v297, 1))
      {
        break;
      }

      v378 = v298;
      sub_1001A29D4(&v378, v371);

      ++v297;
      if (v300 == v296)
      {
        goto LABEL_187;
      }
    }

LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    swift_once();
  }

LABEL_187:

  v301 = sub_100194EB4();
  v302 = v301;
  if (v301 >> 62)
  {
    goto LABEL_199;
  }

  for (i = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v304 = 0;
    while (1)
    {
      if ((v302 & 0xC000000000000001) != 0)
      {
        v305 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v304 >= *((v302 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v305 = *(v302 + 8 * v304 + 32);
      }

      v306 = v305;
      v307 = v304 + 1;
      if (__OFADD__(v304, 1))
      {
        break;
      }

      v378 = v305;
      sub_1001A2FB4(&v378, v371);

      ++v304;
      if (v307 == i)
      {
        goto LABEL_200;
      }
    }

    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    ;
  }

LABEL_200:

  v67 = v371;
LABEL_201:
  if ([v377 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v308 = v368;
    v309 = sub_1000EE91C(v368, qword_100300C40);
    v310 = v338;
    v311 = v359;
    (*(v338 + 16))(v359, v309, v308);
    v312 = sub_10018E14C(v311, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v310 + 8))(v311, v308);
  }

  else
  {
    static os_log_type_t.error.getter();
    v312 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  if (v312 >> 62)
  {
    goto LABEL_218;
  }

  for (j = *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v314 = 0;
    while (1)
    {
      if ((v312 & 0xC000000000000001) != 0)
      {
        v315 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v314 >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_217;
        }

        v315 = *(v312 + 8 * v314 + 32);
      }

      v316 = v315;
      v317 = v314 + 1;
      if (__OFADD__(v314, 1))
      {
        break;
      }

      v378 = v315;
      sub_1001A3594(&v378, v67);

      ++v314;
      if (v317 == j)
      {
        goto LABEL_219;
      }
    }

    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    ;
  }

LABEL_219:
}

uint64_t sub_100199AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v47 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226C80;
    sub_1001CC14C(a2, v7, type metadata accessor for BTDeferredRecord);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_1000EE954();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v48 = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v25 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v28 = sub_100192340();
    v29 = v4;
    v30 = v28;
    v47[1] = v29;
    v31 = a2 + *(v29 + 24);
    v47[0] = UUID.uuidString.getter();
    v33 = v32;
    URL.init(string:)();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v34 = *(a2 + 8);
      v35 = *(a2 + 16);
      URL.appendingPathComponent(_:)();
      v36 = *(v13 + 8);
      v37 = v36(v16, v12);
      v38 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
      __chkstk_darwin(v37);
      v39 = v47[0];
      v47[-4] = v30;
      v47[-3] = v39;
      v47[0] = a2;
      v47[-2] = v33;
      v47[-1] = v19;
      OS_dispatch_queue.sync<A>(execute:)();

      v36(v19, v12);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100226C80;
      sub_1001CC14C(v47[0], v7, type metadata accessor for BTDeferredRecord);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      *(v40 + 56) = &type metadata for String;
      v44 = sub_1000EE954();
      *(v40 + 64) = v44;
      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      v48 = 0;
      sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
      v45 = String.init<A>(describing:)();
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v44;
      *(v40 + 72) = v45;
      *(v40 + 80) = v46;
      os_log(_:dso:log:_:_:)();
    }
  }

  return result;
}

uint64_t sub_10019A004(void *a1, uint64_t a2, void *a3)
{
  v3 = (*a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for BTDeferredRecord() + 28));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10019A080(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v20 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F8490(a1).super.isa;
  }

  v22 = isa;
  v55 = isa;
  sub_1000EC524(&v55);
  objc_autoreleasePoolPop(v20);
  v23 = [v22 recordChangeTag];
  v54 = v22;
  if (!v23)
  {
    goto LABEL_13;
  }

  v51 = v9;

  v24 = type metadata accessor for DeviceRecord();
  (*(v11 + 16))(v19, a1 + *(v24 + 48), v10);
  v25 = [v22 modificationDate];
  if (v25)
  {
    v26 = v52;
    v27 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v11 + 32);
    v29 = v19;
    v30 = v16;
    v31 = v51;
    v28(v51, v26, v10);
    (*(v11 + 56))(v31, 0, 1, v10);
    v32 = v30;
    v33 = v31;
    v16 = v30;
    v19 = v29;
    v28(v32, v33, v10);
  }

  else
  {
    v34 = *(v11 + 56);
    v34(v51, 1, 1, v10);
    v35 = [v22 creationDate];
    if (v35)
    {
      v50 = v34;
      v36 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v6;
      v38 = *(v11 + 32);
      v38(v37, v52, v10);
      v50(v37, 0, 1, v10);
      v38(v16, v37, v10);
      v39 = *(v11 + 48);
    }

    else
    {
      v34(v6, 1, 1, v10);
      static Date.now.getter();
      v40 = v6;
      v39 = *(v11 + 48);
      if (v39(v40, 1, v10) != 1)
      {
        sub_1000EEE6C(v40, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v41 = v51;
    if (v39(v51, 1, v10) != 1)
    {
      sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v42 = static Date.> infix(_:_:)();
  v43 = *(v11 + 8);
  v43(v16, v10);
  v43(v19, v10);
  v44 = v54;
  if (v42)
  {
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100226100;
    v46 = sub_1000EA6CC();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000EE954();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    os_log(_:dso:log:_:_:)();

    sub_100193560();
    v49 = swift_allocObject();
    swift_weakInit();

    v44 = v54;
    sub_100154534(v54, 0, sub_1001CBF74, v49);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10019A610(void *a1, uint64_t a2, int a3)
{
  LODWORD(v800) = a3;
  *&v796 = a2;
  v5 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v742 = &v735[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v751 = &v735[-v9];
  __chkstk_darwin(v10);
  v743 = &v735[-v11];
  __chkstk_darwin(v12);
  v763 = &v735[-v13];
  v768 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v765 = *(v768 - 8);
  v14 = *(v765 + 64);
  __chkstk_darwin(v768);
  v741 = &v735[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v746 = &v735[-v17];
  __chkstk_darwin(v18);
  v753 = &v735[-v19];
  __chkstk_darwin(v20);
  v22 = &v735[-v21];
  v23 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v787 = &v735[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v788 = &v735[-v27];
  v28 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v749 = &v735[-v30];
  v754 = type metadata accessor for MagicPairingSettingsRecord();
  v748 = *(v754 - 8);
  v31 = *(v748 + 64);
  __chkstk_darwin(v754);
  v750 = &v735[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v752 = &v735[-v34];
  __chkstk_darwin(v35);
  v744 = &v735[-v36];
  __chkstk_darwin(v37);
  v745 = &v735[-v38];
  v39 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v755 = &v735[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v760 = &v735[-v43];
  v764 = type metadata accessor for DeviceSupportInformationRecord();
  v761 = *(v764 - 8);
  v44 = *(v761 + 64);
  __chkstk_darwin(v764);
  v758 = &v735[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v747 = &v735[-v47];
  __chkstk_darwin(v48);
  v759 = &v735[-v49];
  __chkstk_darwin(v50);
  v756 = &v735[-v51];
  __chkstk_darwin(v52);
  v757 = &v735[-v53];
  v54 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v771 = &v735[-v56];
  v778 = type metadata accessor for DeviceRecord();
  v770 = *(v778 - 1);
  v57 = *(v770 + 64);
  __chkstk_darwin(v778);
  v774 = &v735[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v59);
  v777 = &v735[-v60];
  __chkstk_darwin(v61);
  v766 = &v735[-v62];
  __chkstk_darwin(v63);
  v767 = &v735[-v64];
  v65 = type metadata accessor for Date();
  v799 = *(v65 - 8);
  v66 = v799[8];
  __chkstk_darwin(v65);
  v68 = &v735[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v69);
  v71 = &v735[-v70];
  __chkstk_darwin(v72);
  v776 = &v735[-v73];
  __chkstk_darwin(v74);
  *&v794 = &v735[-v75];
  __chkstk_darwin(v76);
  v773 = &v735[-v77];
  __chkstk_darwin(v78);
  v786 = &v735[-v79];
  __chkstk_darwin(v80);
  v782 = &v735[-v81];
  __chkstk_darwin(v82);
  v795 = &v735[-v83];
  v84 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v85 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84 - 8);
  v775 = &v735[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v87);
  v784 = &v735[-v88];
  __chkstk_darwin(v89);
  v793 = &v735[-v90];
  __chkstk_darwin(v91);
  v791 = &v735[-v92];
  __chkstk_darwin(v93);
  v772 = &v735[-v94];
  __chkstk_darwin(v95);
  v781 = &v735[-v96];
  __chkstk_darwin(v97);
  v779 = &v735[-v98];
  __chkstk_darwin(v99);
  v780 = &v735[-v100];
  v101 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v102 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101 - 8);
  v790 = &v735[-v103];
  v104 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v105 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104 - 8);
  v789 = &v735[-v106];
  v798 = type metadata accessor for UUID();
  v797 = *(v798 - 1);
  v107 = v797[8];
  __chkstk_darwin(v798);
  v792 = &v735[-((v108 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v109);
  v785 = &v735[-v110];
  v111 = type metadata accessor for DispatchPredicate();
  v112 = *(v111 - 1);
  v113 = *(v112 + 64);
  v114 = __chkstk_darwin(v111);
  v116 = &v735[-((v115 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v807 = v3;
  v117 = *(v3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  *v116 = v117;
  (*(v112 + 104))(v116, enum case for DispatchPredicate.onQueue(_:), v111, v114);
  v118 = v117;
  v119 = _dispatchPreconditionTest(_:)();
  v121 = *(v112 + 8);
  v120 = v112 + 8;
  v121(v116, v111);
  if ((v119 & 1) == 0)
  {
    __break(1u);
    goto LABEL_245;
  }

  v122 = [a1 encryptedValues];
  v123 = String._bridgeToObjectiveC()();
  v124 = [v122 objectForKeyedSubscript:v123];
  swift_unknownObjectRelease();

  v801 = v65;
  v783 = v68;
  v762 = v22;
  if (v124 && (*&v813 = v124, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v126 = *(&v816 + 1);
    v125 = v816;
  }

  else
  {
    v127 = [a1 recordID];
    v128 = [v127 recordName];

    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v129;
  }

  sub_100193560();
  type metadata accessor for CloudCoordinator();
  v130 = sub_10015A5B8();
  swift_unknownObjectRelease();
  if ((v130 & 1) == 0)
  {
    LODWORD(v808) = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_100226C80;
    *(v140 + 56) = &type metadata for String;
    v141 = sub_1000EE954();
    *(v140 + 64) = v141;
    *(v140 + 32) = v125;
    *(v140 + 40) = v126;

    v142 = a1;
    v143 = [v142 description];
    v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v125;
    v147 = v146;

    *(v140 + 96) = &type metadata for String;
    *(v140 + 104) = v141;
    *(v140 + 72) = v144;
    *(v140 + 80) = v147;
    os_log(_:dso:log:_:_:)();

    v148 = v807;
    v149 = v145;
    v150 = v126;
    goto LABEL_130;
  }

  v803 = v125;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v805 = qword_100300E38;
  v804 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1002290E0;
  v132 = CKRecord.recordType.getter();
  v134 = v133;
  *(v131 + 56) = &type metadata for String;
  v806 = sub_1000EE954();
  *(v131 + 64) = v806;
  *(v131 + 32) = v132;
  *(v131 + 40) = v134;
  v135 = [a1 modifiedByDevice];
  v737 = v71;
  if (v135)
  {
    v136 = v135;
    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;
  }

  else
  {
    v139 = 0xE200000000000000;
    v137 = 15932;
  }

  v151 = &type metadata for String;
  v152 = v806;
  *(v131 + 96) = &type metadata for String;
  *(v131 + 104) = v152;
  *(v131 + 72) = v137;
  *(v131 + 80) = v139;
  *(v131 + 136) = &type metadata for String;
  *(v131 + 144) = v152;
  *(v131 + 112) = v803;
  *(v131 + 120) = v126;

  v153 = a1;
  v154 = [v153 description];
  v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v156;

  *(v131 + 176) = &type metadata for String;
  *(v131 + 184) = v152;
  *(v131 + 152) = v155;
  *(v131 + 160) = v157;
  *(v131 + 216) = &type metadata for Bool;
  *(v131 + 224) = &protocol witness table for Bool;
  LODWORD(v154) = v800 & 1;
  *(v131 + 192) = v154;
  os_log(_:dso:log:_:_:)();

  v158 = IsAppleInternalBuild();
  v802 = v126;
  v736 = v154;
  if (v158)
  {
    v159 = static os_log_type_t.default.getter();
  }

  else
  {
    v159 = static os_log_type_t.debug.getter();
  }

  v740 = v159;
  v160 = swift_allocObject();
  v769 = xmmword_100226C80;
  *(v160 + 16) = xmmword_100226C80;
  v161 = [v153 recordID];
  v162 = [v161 recordName];

  v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v165 = v164;

  v166 = v806;
  *(v160 + 56) = &type metadata for String;
  *(v160 + 64) = v166;
  *(v160 + 32) = v163;
  *(v160 + 40) = v165;
  v808 = v153;
  v167 = [v153 encryptedValues];
  v168 = [v167 allKeys];
  swift_unknownObjectRelease();
  v169 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v170 = 0;
  v739 = 0;
  v171 = _swiftEmptyArrayStorage;
  *&v816 = _swiftEmptyArrayStorage;
  v172 = *(v169 + 16);
  v173 = v169 + 40;
  v738 = v169 + 40;
LABEL_19:
  v174 = (v173 + 16 * v170);
  while (1)
  {
    if (v172 == v170)
    {

      sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
      v178 = Array.description.getter();
      v180 = v179;

      v22 = &type metadata for String;
      v181 = v806;
      *(v160 + 96) = &type metadata for String;
      *(v160 + 104) = v181;
      *(v160 + 72) = v178;
      *(v160 + 80) = v180;
      os_log(_:dso:log:_:_:)();

      v818 = 0;
      v816 = 0u;
      v817 = 0u;
      v182 = v808;
      v183 = CKRecord.recordType.getter();
      v184 = v803;
      sub_1001BEBB4(v803, v802, v183, v185, &v810);

      if (v811)
      {
LABEL_27:
        sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
        sub_1001CB640(&v810, &v813);
        sub_1001CB640(&v813, &v816);
        goto LABEL_40;
      }

      sub_1000EEE6C(&v810, &qword_1002F9D98, &qword_100229A58);
      v186 = v789;
      UUID.init(uuidString:)();
      v187 = v797;
      v188 = v798;
      if ((v797[6])(v186, 1, v798) == 1)
      {
        sub_1000EEE6C(v186, &qword_1002F8000, &unk_1002262C0);
        v189 = v790;
      }

      else
      {
        v190 = v785;
        (v187[4])(v785, v186, v188);
        v191 = CKRecord.recordType.getter();
        sub_1001BD42C(v190, v191, v192, &v810);

        (v797[1])(v190, v798);
        v189 = v790;
        if (v811)
        {
          goto LABEL_27;
        }

        sub_1000EEE6C(&v810, &qword_1002F9D98, &qword_100229A58);
      }

      if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002671C0 == v193)
      {
      }

      else
      {
        v194 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v194 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      sub_10019493C(v189);
      v195 = type metadata accessor for SoundProfileRecord();
      if ((*(*(v195 - 8) + 48))(v189, 1, v195) == 1)
      {
        sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
        sub_1000EEE6C(v189, &qword_1002F84F8, &unk_1002299F0);
        v813 = 0u;
        v814 = 0u;
        v815 = 0;
      }

      else
      {
        *(&v814 + 1) = v195;
        v815 = sub_1001C4BB4(&unk_1002F9CA0, type metadata accessor for SoundProfileRecord);
        v196 = sub_100133584(&v813);
        sub_1001CC214(v189, v196, type metadata accessor for SoundProfileRecord);
        sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
      }

      v816 = v813;
      v817 = v814;
      v818 = v815;
LABEL_40:
      sub_1000FAAFC(&v816, &v810, &qword_1002F9D98, &qword_100229A58);
      if (v811)
      {
        sub_1001CB640(&v810, &v813);
        if (IsAppleInternalBuild())
        {
          static os_log_type_t.default.getter();
        }

        else
        {
          static os_log_type_t.debug.getter();
        }

        v211 = swift_allocObject();
        *(v211 + 16) = v769;
        v212 = *(&v814 + 1);
        v213 = v815;
        sub_1000EF78C(&v813, *(&v814 + 1));
        v214 = (*(v213 + 56))(v212, v213);
        v215 = [v214 recordID];

        v216 = [v215 recordName];
        v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v219 = v218;

        v220 = v806;
        *(v211 + 56) = &type metadata for String;
        *(v211 + 64) = v220;
        *(v211 + 32) = v217;
        *(v211 + 40) = v219;
        v221 = *(&v814 + 1);
        v222 = v815;
        sub_1000EF78C(&v813, *(&v814 + 1));
        v223 = (*(v222 + 56))(v221, v222);
        v224 = [v223 encryptedValues];

        v225 = [v224 allKeys];
        swift_unknownObjectRelease();
        v226 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v227);
        *&v735[-16] = &v813;
        v228 = v739;
        sub_1001400F0(sub_1001CB658, &v735[-32], v226);
        v790 = v228;

        v229 = Array.description.getter();
        v231 = v230;

        *(v211 + 96) = &type metadata for String;
        *(v211 + 104) = v220;
        *(v211 + 72) = v229;
        *(v211 + 80) = v231;
        os_log(_:dso:log:_:_:)();

        v232 = *(&v814 + 1);
        v233 = v815;
        sub_1000EF78C(&v813, *(&v814 + 1));
        v234 = v792;
        (*(*(v233 + 8) + 32))(v232);
        v235 = UUID.uuidString.getter();
        v237 = v236;
        (v797[1])(v234, v798);
        v238 = v808;
        v239 = [v808 recordID];
        v240 = [v239 recordName];

        v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v243 = v242;

        if (v235 == v241 && v237 == v243)
        {

          v244 = v801;
          v245 = v799;
          v151 = v794;
          v246 = v793;
        }

        else
        {
          v247 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v244 = v801;
          v245 = v799;
          v151 = v794;
          v246 = v793;
          if ((v247 & 1) == 0)
          {
            v272 = [v238 creationDate];
            if (v272)
            {
              v273 = v779;
              v274 = v272;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v275 = 0;
              v276 = v781;
              v277 = v780;
            }

            else
            {
              v275 = 1;
              v276 = v781;
              v277 = v780;
              v273 = v779;
            }

            v798 = v245[7];
            (v798)(v273, v275, 1, v244);
            sub_1000EED5C(v273, v277);
            v797 = v245[6];
            if ((v797)(v277, 1, v244))
            {
              sub_1000EEE6C(v277, &qword_1002F7EF0, &unk_100226C90);
              v330 = 0.0;
            }

            else
            {
              v331 = v795;
              (v245[2])(v795, v277, v244);
              sub_1000EEE6C(v277, &qword_1002F7EF0, &unk_100226C90);
              Date.timeIntervalSince1970.getter();
              v330 = v332;
              (v245[1])(v331, v244);
            }

            v333 = *(&v814 + 1);
            v334 = v815;
            sub_1000EF78C(&v813, *(&v814 + 1));
            v335 = (*(v334 + 56))(v333, v334);
            v336 = [v335 creationDate];

            if (v336)
            {
              v337 = v795;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v338 = v245[4];
              v338(v276, v337, v244);
              (v798)(v276, 0, 1, v244);
              v339 = v782;
              v338(v782, v276, v244);
            }

            else
            {
              (v798)(v276, 1, 1, v244);
              v340 = *(&v814 + 1);
              v341 = v815;
              sub_1000EF78C(&v813, *(&v814 + 1));
              v342 = *(v341 + 40);
              v343 = v341;
              v339 = v782;
              v342(v340, v343);
              if ((v797)(v276, 1, v244) != 1)
              {
                sub_1000EEE6C(v276, &qword_1002F7EF0, &unk_100226C90);
              }
            }

            Date.timeIntervalSince1970.getter();
            v345 = v344;
            v346 = v245[1];
            v346(v339, v244);
            v347 = [objc_allocWithZone(NSNumber) initWithDouble:v330 - v345];
            v348 = String._bridgeToObjectiveC()();
            sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
            v349 = swift_allocObject();
            v794 = xmmword_100226100;
            *(v349 + 16) = xmmword_100226100;
            *(v349 + 32) = 0xD000000000000016;
            *(v349 + 40) = 0x8000000100270340;
            *(v349 + 48) = v347;
            v350 = v347;
            sub_1000F9D9C(v349);
            swift_setDeallocating();
            sub_1000EEE6C(v349 + 32, &qword_1002F9380, &unk_100229A70);
            swift_deallocClassInstance();
            sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            CUMetricsLog();

            v352 = [v808 creationDate];
            if (v352)
            {
              v353 = v352;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v354 = *(&v814 + 1);
              v355 = v815;
              sub_1000EF78C(&v813, *(&v814 + 1));
              v356 = (*(v355 + 56))(v354, v355);
              v357 = [v356 creationDate];

              if (v357)
              {
                v358 = v795;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v359 = v799[4];
                v360 = v772;
                v361 = v801;
                v359(v772, v358, v801);
                (v798)(v360, 0, 1, v361);
                v362 = v773;
                v359(v773, v360, v361);
                v363 = v807;
              }

              else
              {
                v432 = v772;
                v433 = v801;
                (v798)(v772, 1, 1, v801);
                v434 = *(&v814 + 1);
                v435 = v815;
                sub_1000EF78C(&v813, *(&v814 + 1));
                v436 = *(v435 + 40);
                v362 = v773;
                v437 = v435;
                v361 = v433;
                v436(v434, v437);
                v438 = (v797)(v432, 1, v433);
                v363 = v807;
                if (v438 != 1)
                {
                  sub_1000EEE6C(v432, &qword_1002F7EF0, &unk_100226C90);
                }
              }

              v439 = v786;
              v440 = static Date.> infix(_:_:)();
              v346(v362, v361);
              v22 = &type metadata for String;
              if (v440)
              {
                static os_log_type_t.error.getter();
                v441 = swift_allocObject();
                *(v441 + 16) = v794;
                sub_1001CB674(&v813, &v810);
                sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                v442 = String.init<A>(describing:)();
                v443 = v806;
                *(v441 + 56) = &type metadata for String;
                *(v441 + 64) = v443;
                *(v441 + 32) = v442;
                *(v441 + 40) = v444;
                os_log(_:dso:log:_:_:)();

                sub_100195ABC(v445);

                v346(v439, v361);
                sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
                sub_1000EF824(&v813);
                v148 = v363;
                goto LABEL_168;
              }

              v346(v439, v361);

              v296 = v803;
LABEL_104:
              static os_log_type_t.default.getter();
              v364 = swift_allocObject();
              *(v364 + 16) = v769;
              v365 = v806;
              *(v364 + 56) = &type metadata for String;
              *(v364 + 64) = v365;
              *(v364 + 32) = v296;
              *(v364 + 40) = v802;

              v366 = v808;
              v367 = [v366 description];
              v368 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v370 = v369;

              *(v364 + 96) = &type metadata for String;
              *(v364 + 104) = v365;
              *(v364 + 72) = v368;
              *(v364 + 80) = v370;
              os_log(_:dso:log:_:_:)();

              v372 = CKRecord.recordType.getter();
              v373 = v371;
              if (v372 == 0x654B72657473614DLL && v371 == 0xE900000000000079)
              {

                v210 = v803;
                goto LABEL_109;
              }

              v374 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v210 = v803;
              if (v374)
              {

LABEL_109:
                v280 = v808;
                v375 = v366;
                v376 = v788;
                v377 = v790;
                sub_1001003DC(v375, v788);
                if (!v377)
                {
                  sub_1001C3C4C(v376, v800 & 1);
                  sub_1001CC1B4(v376, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v279 = v801;
LABEL_119:
                  sub_1000EF824(&v813);
                  goto LABEL_120;
                }

LABEL_118:
                static os_log_type_t.error.getter();
                v380 = swift_allocObject();
                *(v380 + 16) = xmmword_1002289A0;
                v381 = v806;
                *(v380 + 56) = &type metadata for String;
                *(v380 + 64) = v381;
                *(v380 + 32) = v210;
                *(v380 + 40) = v802;

                v382 = v366;
                v383 = [v382 description];
                v384 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v386 = v385;

                *(v380 + 96) = &type metadata for String;
                *(v380 + 104) = v381;
                *(v380 + 72) = v384;
                *(v380 + 80) = v386;
                *&v810 = v377;
                swift_errorRetain();
                sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
                v387 = String.init<A>(describing:)();
                *(v380 + 136) = &type metadata for String;
                *(v380 + 144) = v381;
                *(v380 + 112) = v387;
                *(v380 + 120) = v388;
                os_log(_:dso:log:_:_:)();

                v279 = v801;
                v280 = v808;
                goto LABEL_119;
              }

              v120 = v803;
              if (v372 == 0x6552656369766544 && v373 == 0xEC00000064726F63)
              {

                v68 = v777;
                goto LABEL_116;
              }

              v378 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v68 = v777;
              if (v378)
              {

LABEL_116:
                v379 = v366;
                v377 = v790;
                sub_1000EBA44(v379, v68);
                if (v377)
                {
LABEL_117:
                  v210 = v120;
                  goto LABEL_118;
                }

                v446 = v763;
                sub_100194630(v763);
                if ((*(v765 + 48))(v446, 1, v768) == 1)
                {
                  sub_1000EEE6C(v446, &qword_1002F9D90, &qword_100227B30);
                  v279 = v801;
                  v280 = v808;
LABEL_251:
                  sub_1001C232C(v68, v800 & 1);
                  v608 = type metadata accessor for DeviceRecord;
LABEL_252:
                  sub_1001CC1B4(v68, v608);
                  v210 = v120;
                  goto LABEL_119;
                }

                v496 = v762;
                sub_1001CC214(v446, v762, type metadata accessor for LegacyMagicPairingSettingsRecords);
                v497 = sub_10013B008();
                v498 = sub_10017D434(v497, v68, type metadata accessor for DeviceRecord);

                v279 = v801;
                v280 = v808;
                if (!v498)
                {
                  sub_1001CC1B4(v496, type metadata accessor for LegacyMagicPairingSettingsRecords);
                  goto LABEL_251;
                }

                v499 = [v498 name];
                if (v499)
                {
                  v500 = v499;
                  v501 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v503 = v502;

                  v504 = (v68 + v778[7]);
                  if (v501 == *v504 && v503 == v504[1])
                  {

LABEL_206:
                    sub_1001CC1B4(v762, type metadata accessor for LegacyMagicPairingSettingsRecords);

                    goto LABEL_251;
                  }

                  v523 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v523)
                  {
                    goto LABEL_206;
                  }
                }

                v524 = v778;
                v525 = (v68 + v778[6]);
                v526 = *v525;
                v527 = v525[1];
                v528 = objc_allocWithZone(BTCloudDevice);
                v793 = v526;
                v792 = v527;
                v529 = String._bridgeToObjectiveC()();
                v798 = [v528 initWithBluetoothAddress:v529];

                static os_log_type_t.default.getter();
                v530 = swift_allocObject();
                v794 = xmmword_1002289A0;
                *(v530 + 16) = xmmword_1002289A0;
                v531 = v806;
                *(v530 + 56) = &type metadata for String;
                *(v530 + 64) = v531;
                v532 = v802;
                *(v530 + 32) = v120;
                *(v530 + 40) = v532;

                v533 = v498;
                v534 = [v533 description];
                v535 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v537 = v536;

                *(v530 + 96) = &type metadata for String;
                *(v530 + 104) = v531;
                *(v530 + 72) = v535;
                *(v530 + 80) = v537;
                v538 = sub_1000EA6CC();
                *(v530 + 136) = &type metadata for String;
                *(v530 + 144) = v531;
                *(v530 + 112) = v538;
                *(v530 + 120) = v539;
                os_log(_:dso:log:_:_:)();
                v68 = v777;

                v540 = *(v768 + 28);
                v541 = v524[12];
                sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date);
                v542 = dispatch thunk of static Comparable.< infix(_:_:)();
                v797 = v533;
                if ((v542 & 1) == 0)
                {
                  v582 = [v533 name];
                  [v798 setNickname:v582];

                  static os_log_type_t.default.getter();
                  v583 = swift_allocObject();
                  *(v583 + 16) = v794;
                  *(v583 + 56) = &type metadata for String;
                  *(v583 + 64) = v531;
                  v584 = v803;
                  *(v583 + 32) = v803;
                  *(v583 + 40) = v532;

                  v585 = [v533 name];
                  v120 = v584;
                  if (v585)
                  {
                    v586 = v585;
                    v587 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v589 = v588;
                  }

                  else
                  {
                    v587 = 0;
                    v589 = 0;
                  }

                  v280 = v808;
                  *&v810 = v587;
                  *(&v810 + 1) = v589;
                  sub_1000EE870(&qword_1002F94C0, qword_100227A98);
                  v602 = String.init<A>(describing:)();
                  v22 = &type metadata for String;
                  v603 = v806;
                  *(v583 + 96) = &type metadata for String;
                  *(v583 + 104) = v603;
                  *(v583 + 72) = v602;
                  *(v583 + 80) = v604;
                  v605 = (v68 + v778[7]);
                  v607 = *v605;
                  v606 = v605[1];
                  *(v583 + 136) = &type metadata for String;
                  *(v583 + 144) = v603;
                  *(v583 + 112) = v607;
                  *(v583 + 120) = v606;

                  os_log(_:dso:log:_:_:)();

                  v547 = v798;
                  goto LABEL_250;
                }

                v543 = (v68 + v524[10]);
                v544 = *v543;
                v545 = v543[1];

                v546 = sub_10011EDEC(v544, v545);
                v120 = v803;
                v280 = v808;
                v22 = &type metadata for String;
                v547 = v798;
                if (v548)
                {
                  goto LABEL_250;
                }

                v549 = v546;
                v550 = [v797 name];
                if (!v550)
                {
                  goto LABEL_250;
                }

                v551 = v550;
                v552 = v280;
                v553 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v555 = v554;

                v556 = HIBYTE(v555) & 0xF;
                v557 = v553 & 0xFFFFFFFFFFFFLL;
                v280 = v552;
                v558 = (v555 & 0x2000000000000000) == 0;
                v68 = v777;
                v120 = v803;
                if (v558)
                {
                  v556 = v557;
                }

                if (!v556)
                {
                  goto LABEL_250;
                }

                v559 = [objc_opt_self() getProductNameFromProductID:v549];
                v560 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v561 = v68;
                v563 = v562;

                v564 = (v561 + v778[7]);
                v565 = *v564;
                v566 = v564[1];
                if (v560 == *v564 && v563 == v566)
                {

                  v120 = v803;
                }

                else
                {
                  v656 = *v564;
                  v657 = v564[1];
                  v658 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v120 = v803;
                  v68 = v777;
                  if ((v658 & 1) == 0)
                  {
LABEL_250:
                    sub_1000ECB0C(v547);

                    sub_1001CC1B4(v762, type metadata accessor for LegacyMagicPairingSettingsRecords);
                    v279 = v801;
                    goto LABEL_251;
                  }
                }

                v791 = v565;
                LODWORD(v790) = static os_log_type_t.default.getter();
                v659 = swift_allocObject();
                *(v659 + 16) = v794;
                v660 = v806;
                *(v659 + 56) = &type metadata for String;
                *(v659 + 64) = v660;
                *(v659 + 32) = v120;
                *(v659 + 40) = v802;

                v661 = v797;
                v662 = [v797 name];
                if (v662)
                {
                  v663 = v662;
                  v664 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v666 = v665;
                }

                else
                {
                  v664 = 0;
                  v666 = 0;
                }

                *&v810 = v664;
                *(&v810 + 1) = v666;
                sub_1000EE870(&qword_1002F94C0, qword_100227A98);
                v672 = String.init<A>(describing:)();
                v673 = v806;
                *(v659 + 96) = &type metadata for String;
                *(v659 + 104) = v673;
                *(v659 + 72) = v672;
                *(v659 + 80) = v674;
                *(v659 + 136) = &type metadata for String;
                *(v659 + 144) = v673;
                *(v659 + 112) = v791;
                *(v659 + 120) = v566;

                os_log(_:dso:log:_:_:)();

                v675 = objc_allocWithZone(BTCloudDevice);
                v676 = String._bridgeToObjectiveC()();
                v677 = [v675 initWithBluetoothAddress:v676];

                v678 = [v661 name];
                [v677 setNickname:v678];

                v120 = v803;
                v280 = v808;
                v68 = v777;
                goto LABEL_250;
              }

              if (v372 == 0xD00000000000001ELL && 0x80000001002671E0 == v373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v451 = v366;
                v452 = v759;
                v377 = v790;
                sub_1001352B4(v451, v759);
                if (!v377)
                {
                  sub_1001CB674(&v813, &v810);
                  sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                  v453 = v755;
                  v454 = v764;
                  v455 = swift_dynamicCast();
                  v456 = *(v761 + 56);
                  v210 = v120;
                  if (v455)
                  {
                    v456(v453, 0, 1, v454);
                    v457 = v747;
                    sub_1001CC214(v453, v747, type metadata accessor for DeviceSupportInformationRecord);
                    v458 = sub_100109B20();
                    sub_100136BD0(v458);

                    sub_1001CC1B4(v457, type metadata accessor for DeviceSupportInformationRecord);
                  }

                  else
                  {
                    v456(v453, 1, 1, v454);
                    sub_1000EEE6C(v453, &qword_1002F8510, &unk_100227B50);
                  }

                  v279 = v801;
                  v280 = v808;
                  sub_1001C27B8(v452, v800 & 1);
                  sub_1001CC1B4(v452, type metadata accessor for DeviceSupportInformationRecord);
                  goto LABEL_119;
                }

                goto LABEL_117;
              }

              v279 = v801;
              if (v372 == 0x746553636967614DLL && v373 == 0xED000073676E6974)
              {

                v116 = v753;
                v68 = v752;
                goto LABEL_197;
              }

              v513 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v116 = v753;
              v68 = v752;
              if (v513)
              {

LABEL_197:
                v119 = v366;
                v377 = v790;
                sub_100119610(v119, v68);
                if (v377)
                {
                  goto LABEL_117;
                }

                v111 = v743;
                sub_100194630(v743);
                if ((*(v765 + 48))(v111, 1, v768) == 1)
                {
                  sub_1000EEE6C(v111, &qword_1002F9D90, &qword_100227B30);
                  v279 = v801;
LABEL_283:
                  v280 = v808;
                  sub_1001C2C44(v68, v800 & 1);
                  v608 = type metadata accessor for MagicPairingSettingsRecord;
                  goto LABEL_252;
                }

LABEL_245:
                sub_1001CC214(v111, v116, type metadata accessor for LegacyMagicPairingSettingsRecords);
                v598 = sub_10013B008();
                v599 = sub_10017D434(v598, v68, type metadata accessor for MagicPairingSettingsRecord);

                v279 = v801;
                if (v599)
                {
                  v600 = *(v768 + 28);
                  v601 = *(v754 + 120);
                  sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date);
                  if (dispatch thunk of static Comparable.< infix(_:_:)())
                  {
                    sub_1001CC1B4(v116, type metadata accessor for LegacyMagicPairingSettingsRecords);

                    goto LABEL_283;
                  }

                  LODWORD(v798) = static os_log_type_t.default.getter();
                  v644 = swift_allocObject();
                  *(v644 + 16) = xmmword_1002289A0;
                  v645 = v806;
                  *(v644 + 56) = v22;
                  *(v644 + 64) = v645;
                  *(v644 + 32) = v120;
                  *(v644 + 40) = v802;

                  v646 = v119;
                  v647 = [v646 description];
                  v648 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v650 = v649;

                  *(v644 + 96) = v22;
                  *(v644 + 104) = v645;
                  *(v644 + 72) = v648;
                  *(v644 + 80) = v650;
                  v651 = v599;
                  v68 = v752;
                  v652 = [v651 description];
                  v653 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v655 = v654;

                  *(v644 + 136) = v22;
                  *(v644 + 144) = v645;
                  *(v644 + 112) = v653;
                  *(v644 + 120) = v655;
                  v279 = v801;
                  os_log(_:dso:log:_:_:)();

                  sub_10011BD3C(v651);

                  v638 = v753;
                }

                else
                {
                  v638 = v116;
                }

                sub_1001CC1B4(v638, type metadata accessor for LegacyMagicPairingSettingsRecords);
                goto LABEL_283;
              }

              if (v372 == 0xD000000000000012 && 0x80000001002671C0 == v373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_1001A1688(v366, v800 & 1);
                v280 = v808;
                v210 = v120;
                goto LABEL_119;
              }

              if (v372 == 0x6563697665444141 && v373 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v811 = &type metadata for AudioAccessoryFeatures;
                v812 = sub_1000F1874();
                v632 = isFeatureEnabled(_:)();
                sub_1000EF824(&v810);
                if (v632)
                {
                  v633 = objc_allocWithZone(type metadata accessor for AADeviceRecord());
                  v634 = v366;
                  v377 = v790;
                  v635 = sub_100164730(v634);
                  if (!v377)
                  {
                    v636 = v635;
                    sub_1001C30D4(v635, v800 & 1);
LABEL_331:

                    v210 = v803;
LABEL_332:
                    v279 = v801;
                    v280 = v808;
                    goto LABEL_119;
                  }

                  goto LABEL_329;
                }
              }

              else
              {
                if ((v372 != 0xD000000000000011 || 0x800000010026EAC0 != v373) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  if (v372 == 0xD000000000000013 && 0x8000000100267B10 == v373)
                  {
                  }

                  else
                  {
                    v713 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v713 & 1) == 0)
                    {
                      static os_log_type_t.error.getter();
                      v721 = swift_allocObject();
                      *(v721 + 16) = v769;
                      v722 = v806;
                      *(v721 + 56) = &type metadata for String;
                      *(v721 + 64) = v722;
                      v210 = v803;
                      *(v721 + 32) = v803;
                      *(v721 + 40) = v802;

                      v723 = v366;
                      v724 = [v723 description];
                      v725 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v727 = v726;

                      *(v721 + 96) = &type metadata for String;
                      *(v721 + 104) = v722;
                      *(v721 + 72) = v725;
                      *(v721 + 80) = v727;
                      os_log(_:dso:log:_:_:)();

                      goto LABEL_332;
                    }
                  }

                  goto LABEL_328;
                }
              }

              v811 = &type metadata for AudioAccessoryFeatures;
              v812 = sub_1000F1874();
              v679 = isFeatureEnabled(_:)();
              sub_1000EF824(&v810);
              if (v679)
              {
                v680 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord());
                v681 = v366;
                v377 = v790;
                v682 = sub_1000F3E30(v681);
                if (!v377)
                {
                  v636 = v682;
                  sub_1001C34AC(v682, v800 & 1);
                  goto LABEL_331;
                }

LABEL_329:
                v210 = v803;
                goto LABEL_118;
              }

LABEL_328:
              v714 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord());
              v715 = v366;
              v377 = v790;
              v716 = sub_100129F78(v715);
              if (!v377)
              {
                v636 = v716;
                sub_1001C387C(v716, v800 & 1);
                goto LABEL_331;
              }

              goto LABEL_329;
            }

            goto LABEL_102;
          }
        }

        v248 = [v238 modificationDate];
        if (v248)
        {
          v249 = v795;
          v250 = v248;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v251 = v245[4];
          v251(v246, v249, v244);
          v172 = v245[7];
          v172(v246, 0, 1, v244);
          v252 = v791;
          v251(v791, v246, v244);
          v172(v252, 0, 1, v244);
          v253 = v245[6];
          v254 = v253(v252, 1, v244);
        }

        else
        {
          v172 = v245[7];
          v268 = 1;
          v172(v246, 1, 1, v244);
          v269 = [v238 creationDate];
          v252 = v791;
          v270 = v784;
          if (v269)
          {
            v271 = v269;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v268 = 0;
          }

          v172(v270, v268, 1, v244);
          sub_1000EED5C(v270, v252);
          v253 = v245[6];
          if (v253(v246, 1, v244) != 1)
          {
            sub_1000EEE6C(v246, &qword_1002F7EF0, &unk_100226C90);
          }

          v254 = v253(v252, 1, v244);
        }

        v296 = v803;
        if (v254 == 1)
        {
          sub_1000EEE6C(v252, &qword_1002F7EF0, &unk_100226C90);
LABEL_103:
          v22 = &type metadata for String;
          goto LABEL_104;
        }

        v793 = v253;
        v297 = v245[4];
        v798 = v245 + 4;
        v797 = v297;
        (v297)(v151, v252, v244);
        v298 = *(&v814 + 1);
        v299 = v815;
        sub_1000EF78C(&v813, *(&v814 + 1));
        v300 = v795;
        (*(v299 + 40))(v298, v299);
        LOBYTE(v298) = static Date.> infix(_:_:)();
        v301 = v245[1];
        v301(v300, v244);
        if (v298)
        {
          v800 = v301;
          static os_log_type_t.error.getter();
          v302 = swift_allocObject();
          v796 = xmmword_100226100;
          *(v302 + 16) = xmmword_100226100;
          sub_1001CB674(&v813, &v810);
          sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
          v303 = String.init<A>(describing:)();
          v304 = v806;
          *(v302 + 56) = &type metadata for String;
          *(v302 + 64) = v304;
          *(v302 + 32) = v303;
          *(v302 + 40) = v305;
          os_log(_:dso:log:_:_:)();

          v307 = CKRecord.recordType.getter();
          v308 = v306;
          if (v307 == 0x6552656369766544 && v306 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v153 = v801;
            sub_1001CB674(&v813, &v810);
            v171 = v771;
            v309 = v778;
            v310 = swift_dynamicCast();
            v311 = *(v770 + 56);
            if ((v310 & 1) == 0)
            {
              v311(v171, 1, 1, v309);
              v430 = &qword_1002F8520;
              v431 = &unk_100227B60;
              goto LABEL_132;
            }

            v311(v171, 0, 1, v309);
            v312 = v171;
            v313 = v767;
            sub_1001CC214(v312, v767, type metadata accessor for DeviceRecord);
            v314 = v808;
            v315 = v766;
            v316 = v790;
            sub_1000EBA44(v314, v766);
            if (v316)
            {
              v317 = type metadata accessor for DeviceRecord;
LABEL_85:
              v318 = v317;
              v319 = v313;
LABEL_86:
              sub_1001CC1B4(v319, v318);
LABEL_87:
              LODWORD(v792) = static os_log_type_t.error.getter();
              v320 = swift_allocObject();
              *(v320 + 16) = xmmword_1002289A0;
              v321 = v806;
              *(v320 + 56) = &type metadata for String;
              *(v320 + 64) = v321;
              *(v320 + 32) = v803;
              *(v320 + 40) = v802;

              v322 = v808;
              v323 = [v322 description];
              v324 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v326 = v325;

              *(v320 + 96) = &type metadata for String;
              *(v320 + 104) = v321;
              *(v320 + 72) = v324;
              *(v320 + 80) = v326;
              *&v810 = v316;
              swift_errorRetain();
              sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
              v327 = String.init<A>(describing:)();
              *(v320 + 136) = &type metadata for String;
              *(v320 + 144) = v321;
              *(v320 + 112) = v327;
              *(v320 + 120) = v328;
              os_log(_:dso:log:_:_:)();

LABEL_88:
              v153 = v801;
              v151 = v794;
              goto LABEL_163;
            }

            v471 = v313;
            v472 = sub_100106284();
            sub_1000ECB0C(v472);

            sub_1001C232C(v315, 0);
            v473 = type metadata accessor for DeviceRecord;
LABEL_161:
            v474 = v473;
            sub_1001CC1B4(v315, v473);
            v475 = v471;
            goto LABEL_162;
          }

          v153 = v801;
          if (v307 == 0xD00000000000001ELL && 0x80000001002671E0 == v308 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_1001CB674(&v813, &v810);
            v171 = v760;
            v167 = v764;
            v447 = swift_dynamicCast();
            v174 = *(v761 + 56);
            if ((v447 & 1) == 0)
            {
              goto LABEL_175;
            }

            (v174)(v171, 0, 1, v167);
            v448 = v757;
            sub_1001CC214(v171, v757, type metadata accessor for DeviceSupportInformationRecord);
            v449 = v808;
            v450 = v756;
            v316 = v790;
            sub_1001352B4(v449, v756);
            if (v316)
            {
              v318 = type metadata accessor for DeviceSupportInformationRecord;
              v319 = v448;
              goto LABEL_86;
            }

            v512 = sub_100109B20();
            sub_100136BD0(v512);

            sub_1001C27B8(v450, 0);
            v474 = type metadata accessor for DeviceSupportInformationRecord;
            sub_1001CC1B4(v450, type metadata accessor for DeviceSupportInformationRecord);
            v475 = v448;
LABEL_162:
            v329 = sub_1001CC1B4(v475, v474);
            goto LABEL_163;
          }

          if (v307 == 0x746553636967614DLL && v308 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_1001CB674(&v813, &v810);
            v171 = v749;
            v505 = v754;
            v506 = swift_dynamicCast();
            v507 = *(v748 + 56);
            if ((v506 & 1) == 0)
            {
              v507(v171, 1, 1, v505);
              v430 = &unk_1002F9C30;
              v431 = &qword_1002299A0;
              goto LABEL_132;
            }

            v507(v171, 0, 1, v505);
            v508 = v171;
            v313 = v745;
            sub_1001CC214(v508, v745, type metadata accessor for MagicPairingSettingsRecord);
            v509 = v808;
            v315 = v744;
            v316 = v790;
            sub_100119610(v509, v744);
            if (v316)
            {
              v317 = type metadata accessor for MagicPairingSettingsRecord;
              goto LABEL_85;
            }

            v471 = v313;
            v597 = sub_10010CFB8();
            sub_10011BD3C(v597);

            sub_1001C2C44(v315, 0);
            v473 = type metadata accessor for MagicPairingSettingsRecord;
            goto LABEL_161;
          }

          if (v307 == 0x6563697665444141 && v308 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v811 = &type metadata for AudioAccessoryFeatures;
            v812 = sub_1000F1874();
            v590 = isFeatureEnabled(_:)();
            sub_1000EF824(&v810);
            if (v590)
            {
              sub_1001CB674(&v813, &v810);
              v591 = type metadata accessor for AADeviceRecord();
              v329 = swift_dynamicCast();
              if ((v329 & 1) == 0)
              {
                goto LABEL_163;
              }

              v592 = v809;
              v593 = objc_allocWithZone(v591);
              v594 = v808;
              v316 = v790;
              v595 = sub_100164730(v594);
              if (!v316)
              {
                v596 = v595;
                sub_1001681DC(v592);
                sub_1001C30D4(v596, 0);

                goto LABEL_163;
              }

LABEL_317:

              goto LABEL_87;
            }
          }

          else
          {
            if ((v307 != 0xD000000000000011 || 0x800000010026EAC0 != v308) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v307 == 0xD000000000000013 && 0x8000000100267B10 == v308)
              {

                v153 = v801;
                v151 = v794;
              }

              else
              {
                v704 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v153 = v801;
                v151 = v794;
                if ((v704 & 1) == 0)
                {
                  static os_log_type_t.error.getter();
                  v709 = swift_allocObject();
                  *(v709 + 16) = v769;
                  v710 = v806;
                  *(v709 + 56) = &type metadata for String;
                  *(v709 + 64) = v710;
                  *(v709 + 32) = v803;
                  *(v709 + 40) = v802;

                  v711 = CKRecord.recordType.getter();
                  *(v709 + 96) = &type metadata for String;
                  *(v709 + 104) = v710;
                  *(v709 + 72) = v711;
                  *(v709 + 80) = v712;
                  os_log(_:dso:log:_:_:)();

                  goto LABEL_163;
                }
              }

              goto LABEL_315;
            }
          }

          v811 = &type metadata for AudioAccessoryFeatures;
          v812 = sub_1000F1874();
          v626 = isFeatureEnabled(_:)();
          sub_1000EF824(&v810);
          if (v626)
          {
            sub_1001CB674(&v813, &v810);
            v627 = type metadata accessor for AAProxCardsRecord();
            v329 = swift_dynamicCast();
            if ((v329 & 1) == 0)
            {
              goto LABEL_163;
            }

            v592 = v809;
            v628 = objc_allocWithZone(v627);
            v629 = v808;
            v316 = v790;
            v630 = sub_1000F3E30(v629);
            if (v316)
            {
              goto LABEL_317;
            }

            v631 = v630;
            sub_1000F75E4(v592);
            sub_1001C34AC(v631, 0);
LABEL_319:

            goto LABEL_88;
          }

LABEL_315:
          sub_1001CB674(&v813, &v810);
          v705 = type metadata accessor for HMDeviceCloudRecord();
          v329 = swift_dynamicCast();
          if ((v329 & 1) == 0)
          {
            goto LABEL_163;
          }

          v592 = v809;
          v706 = objc_allocWithZone(v705);
          v707 = v808;
          v316 = v790;
          v708 = sub_100129F78(v707);
          if (v316)
          {
            goto LABEL_317;
          }

          v631 = v708;
          sub_100130AB8(v592);
          sub_1001C387C(v631, 0);
          goto LABEL_319;
        }

        v301(v151, v244);
LABEL_102:
        v296 = v803;
        goto LABEL_103;
      }

      sub_1000EEE6C(&v810, &qword_1002F9D98, &qword_100229A58);
      static os_log_type_t.default.getter();
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_1002289D0;
      v198 = CKRecord.recordType.getter();
      v199 = v806;
      *(v197 + 56) = &type metadata for String;
      *(v197 + 64) = v199;
      *(v197 + 32) = v198;
      *(v197 + 40) = v200;
      *(v197 + 96) = &type metadata for String;
      *(v197 + 104) = v199;
      v201 = v802;
      *(v197 + 72) = v184;
      *(v197 + 80) = v201;

      v202 = v182;
      v203 = [v202 description];
      v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v206 = v205;

      *(v197 + 136) = &type metadata for String;
      *(v197 + 144) = v199;
      *(v197 + 112) = v204;
      *(v197 + 120) = v206;
      *(v197 + 176) = &type metadata for Bool;
      *(v197 + 184) = &protocol witness table for Bool;
      *(v197 + 152) = v736;
      os_log(_:dso:log:_:_:)();

      v208 = CKRecord.recordType.getter();
      v209 = v207;
      if (v208 == 0x654B72657473614DLL && v207 == 0xE900000000000079)
      {

        v210 = v803;
LABEL_55:
        v256 = v202;
        v257 = v787;
        v258 = v739;
        sub_1001003DC(v256, v787);
        if (v258)
        {
LABEL_56:
          static os_log_type_t.error.getter();
          v259 = swift_allocObject();
          *(v259 + 16) = xmmword_1002289A0;
          v260 = v806;
          *(v259 + 56) = &type metadata for String;
          *(v259 + 64) = v260;
          *(v259 + 32) = v210;
          *(v259 + 40) = v802;

          v261 = v202;
          v262 = [v261 description];
          v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v265 = v264;

          *(v259 + 96) = &type metadata for String;
          *(v259 + 104) = v260;
          *(v259 + 72) = v263;
          *(v259 + 80) = v265;
          *&v813 = v258;
          swift_errorRetain();
          sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
          v266 = String.init<A>(describing:)();
          *(v259 + 136) = &type metadata for String;
          *(v259 + 144) = v260;
          *(v259 + 112) = v266;
          *(v259 + 120) = v267;
          os_log(_:dso:log:_:_:)();

LABEL_63:
          v279 = v801;
          v280 = v808;
          goto LABEL_120;
        }

        sub_1001C3C4C(v257, v800 & 1);
        v278 = type metadata accessor for LegacyAccountMagicKeysRecord;
LABEL_62:
        sub_1001CC1B4(v257, v278);
        goto LABEL_63;
      }

      v255 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v210 = v803;
      if (v255)
      {

        goto LABEL_55;
      }

      if (v208 == 0x6552656369766544 && v209 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v281 = v202;
        v282 = v774;
        v258 = v739;
        sub_1000EBA44(v281, v774);
        if (v258)
        {
          goto LABEL_56;
        }

        v283 = (v282 + v778[6]);
        if (*v283 == 0xD000000000000011 && 0x8000000100267AA0 == v283[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          static os_log_type_t.error.getter();
          v284 = swift_allocObject();
          *(v284 + 16) = xmmword_1002289A0;
          v285 = v806;
          *(v284 + 56) = &type metadata for String;
          *(v284 + 64) = v285;
          v286 = v802;
          *(v284 + 32) = v210;
          *(v284 + 40) = v286;

          v287 = [v281 recordID];
          v288 = [v287 recordName];

          v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v291 = v290;

          *(v284 + 96) = &type metadata for String;
          *(v284 + 104) = v285;
          *(v284 + 72) = v289;
          *(v284 + 80) = v291;
          v292 = CKRecord.recordType.getter();
          *(v284 + 136) = &type metadata for String;
          *(v284 + 144) = v285;
          *(v284 + 112) = v292;
          *(v284 + 120) = v293;
          os_log(_:dso:log:_:_:)();

          sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
          v294 = type metadata accessor for DeviceRecord;
          v295 = v774;
          goto LABEL_72;
        }

        v510 = v751;
        sub_100194630(v751);
        if ((*(v765 + 48))(v510, 1, v768) == 1)
        {
          sub_1000EEE6C(v510, &qword_1002F9D90, &qword_100227B30);
          v279 = v801;
LABEL_187:
          v280 = v808;
LABEL_256:
          v612 = v774;
          sub_1001C232C(v774, v800 & 1);
          sub_1001CC1B4(v612, type metadata accessor for DeviceRecord);
          goto LABEL_120;
        }

        v514 = v746;
        sub_1001CC214(v510, v746, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v515 = sub_10013B008();
        v516 = sub_10017D434(v515, v774, type metadata accessor for DeviceRecord);

        v279 = v801;
        v280 = v808;
        if (!v516)
        {
          sub_1001CC1B4(v514, type metadata accessor for LegacyMagicPairingSettingsRecords);
          goto LABEL_256;
        }

        v517 = [v516 name];
        if (v517)
        {
          v518 = v517;
          v519 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v521 = v520;

          v522 = (v774 + v778[7]);
          if (v519 == *v522 && v521 == v522[1])
          {

            v279 = v801;
            goto LABEL_255;
          }

          v609 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v279 = v801;
          if (v609)
          {
            goto LABEL_255;
          }
        }

        v610 = *(v768 + 28);
        v611 = v778[12];
        sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date);
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          static os_log_type_t.default.getter();
          v613 = swift_allocObject();
          *(v613 + 16) = xmmword_1002289A0;
          v614 = v806;
          *(v613 + 56) = &type metadata for String;
          *(v613 + 64) = v614;
          *(v613 + 32) = v210;
          *(v613 + 40) = v802;

          v615 = v516;
          v616 = [v615 description];
          v617 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v619 = v618;

          *(v613 + 96) = &type metadata for String;
          *(v613 + 104) = v614;
          *(v613 + 72) = v617;
          *(v613 + 80) = v619;
          v210 = v803;
          v620 = sub_1000EA6CC();
          *(v613 + 136) = &type metadata for String;
          *(v613 + 144) = v614;
          *(v613 + 112) = v620;
          *(v613 + 120) = v621;
          os_log(_:dso:log:_:_:)();
          v279 = v801;

          v622 = objc_allocWithZone(BTCloudDevice);
          v623 = String._bridgeToObjectiveC()();
          v624 = [v622 initWithBluetoothAddress:v623];

          v625 = [v615 name];
          [v624 setNickname:v625];

          sub_1000ECB0C(v624);
          sub_1001CC1B4(v746, type metadata accessor for LegacyMagicPairingSettingsRecords);
          goto LABEL_187;
        }

LABEL_255:
        sub_1001CC1B4(v514, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v280 = v808;
        goto LABEL_256;
      }

      if (v208 == 0xD00000000000001ELL && 0x80000001002671E0 == v209 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v459 = v202;
        v257 = v758;
        v258 = v739;
        sub_1001352B4(v459, v758);
        if (v258)
        {
          goto LABEL_56;
        }

        v460 = (v257 + *(v764 + 24));
        if ((*v460 != 0xD000000000000011 || 0x8000000100267AA0 != v460[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_1001C27B8(v257, v800 & 1);
          v278 = type metadata accessor for DeviceSupportInformationRecord;
          goto LABEL_62;
        }

        LODWORD(v808) = static os_log_type_t.error.getter();
        v461 = swift_allocObject();
        *(v461 + 16) = xmmword_1002289A0;
        v462 = v806;
        *(v461 + 56) = &type metadata for String;
        *(v461 + 64) = v462;
        v286 = v802;
        *(v461 + 32) = v210;
        *(v461 + 40) = v286;

        v463 = v257;
        v464 = [v459 recordID];
        v465 = [v464 recordName];

        v466 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v468 = v467;

        *(v461 + 96) = &type metadata for String;
        *(v461 + 104) = v462;
        *(v461 + 72) = v466;
        *(v461 + 80) = v468;
        v469 = CKRecord.recordType.getter();
        *(v461 + 136) = &type metadata for String;
        *(v461 + 144) = v462;
        *(v461 + 112) = v469;
        *(v461 + 120) = v470;
        os_log(_:dso:log:_:_:)();

        sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
        v294 = type metadata accessor for DeviceSupportInformationRecord;
        v295 = v463;
LABEL_72:
        sub_1001CC1B4(v295, v294);
        v148 = v807;
        v149 = v210;
        v150 = v286;
        goto LABEL_130;
      }

      if (v208 == 0x746553636967614DLL && v209 == 0xED000073676E6974)
      {

        v279 = v801;
        v280 = v808;
        v511 = v750;
LABEL_218:
        v568 = v202;
        v258 = v739;
        sub_100119610(v568, v511);
        if (v258)
        {
          goto LABEL_56;
        }

        v569 = (v511 + *(v754 + 24));
        if (*v569 == 0xD000000000000011 && 0x8000000100267AA0 == v569[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          LODWORD(v808) = static os_log_type_t.error.getter();
          v570 = swift_allocObject();
          *(v570 + 16) = xmmword_1002289A0;
          v571 = v806;
          *(v570 + 56) = &type metadata for String;
          *(v570 + 64) = v571;
          v572 = v803;
          v573 = v802;
          *(v570 + 32) = v803;
          *(v570 + 40) = v573;

          v574 = [v568 recordID];
          v575 = v511;
          v576 = [v574 recordName];

          v577 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v579 = v578;

          *(v570 + 96) = &type metadata for String;
          *(v570 + 104) = v571;
          *(v570 + 72) = v577;
          *(v570 + 80) = v579;
          v580 = CKRecord.recordType.getter();
          *(v570 + 136) = &type metadata for String;
          *(v570 + 144) = v571;
          *(v570 + 112) = v580;
          *(v570 + 120) = v581;
          os_log(_:dso:log:_:_:)();

          sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
          sub_1001CC1B4(v575, type metadata accessor for MagicPairingSettingsRecord);
          v148 = v807;
          v149 = v572;
          v150 = v573;
          goto LABEL_130;
        }

        v637 = v742;
        sub_100194630(v742);
        if ((*(v765 + 48))(v637, 1, v768) == 1)
        {
          sub_1000EEE6C(v637, &qword_1002F9D90, &qword_100227B30);
        }

        else
        {
          v667 = v741;
          sub_1001CC214(v637, v741, type metadata accessor for LegacyMagicPairingSettingsRecords);
          v668 = sub_10013B008();
          v669 = sub_10017D434(v668, v511, type metadata accessor for MagicPairingSettingsRecord);

          if (v669)
          {
            v670 = *(v768 + 28);
            v671 = *(v754 + 120);
            sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date);
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              sub_1001CC1B4(v741, type metadata accessor for LegacyMagicPairingSettingsRecords);

              v279 = v801;
              v280 = v808;
              v511 = v750;
            }

            else
            {
              LODWORD(v798) = static os_log_type_t.default.getter();
              v687 = swift_allocObject();
              *(v687 + 16) = xmmword_1002289A0;
              v688 = v806;
              *(v687 + 56) = &type metadata for String;
              *(v687 + 64) = v688;
              *(v687 + 32) = v803;
              *(v687 + 40) = v802;

              v689 = v568;
              v690 = [v689 description];
              v691 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v693 = v692;

              *(v687 + 96) = &type metadata for String;
              *(v687 + 104) = v688;
              *(v687 + 72) = v691;
              *(v687 + 80) = v693;
              v694 = v669;
              v695 = [v694 description];
              v696 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v698 = v697;

              *(v687 + 136) = &type metadata for String;
              *(v687 + 144) = v688;
              *(v687 + 112) = v696;
              *(v687 + 120) = v698;
              os_log(_:dso:log:_:_:)();

              v511 = v750;
              sub_10011BD3C(v694);

              sub_1001CC1B4(v741, type metadata accessor for LegacyMagicPairingSettingsRecords);
              v279 = v801;
              v280 = v808;
            }
          }

          else
          {
            sub_1001CC1B4(v667, type metadata accessor for LegacyMagicPairingSettingsRecords);
          }
        }

        v699 = v800;
        sub_1001C2C44(v511, v800 & 1);
        if (v699)
        {
          static os_log_type_t.default.getter();
          v700 = swift_allocObject();
          *(v700 + 16) = xmmword_100226100;
          v701 = *v569;
          v702 = v569[1];
          v703 = v806;
          *(v700 + 56) = &type metadata for String;
          *(v700 + 64) = v703;
          *(v700 + 32) = v701;
          *(v700 + 40) = v702;
          swift_bridgeObjectRetain_n();
          os_log(_:dso:log:_:_:)();

          swift_beginAccess();
          sub_1001C51E8(&v810, v701, v702);
          swift_endAccess();
        }

        sub_1001CC1B4(v511, type metadata accessor for MagicPairingSettingsRecord);
        v210 = v803;
LABEL_120:
        v389 = [v280 creationDate];
        if (v389)
        {
          v390 = v737;
          v391 = v389;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          if (v800)
          {
            v392 = [v280 modificationDate];
            if (v392)
            {
              v393 = v783;
              v394 = v392;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001C4BB4(&unk_1002F9600, &type metadata accessor for Date);
              v395 = v737;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                v800 = String._bridgeToObjectiveC()();
                sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
                v412 = swift_allocObject();
                *(v412 + 16) = xmmword_100229100;
                *(v412 + 32) = 0x726F727245;
                *(v412 + 40) = 0xE500000000000000;
                v413 = objc_allocWithZone(NSString);
                v414 = String._bridgeToObjectiveC()();
                v415 = [v413 initWithString:v414];

                *(v412 + 48) = v415;
                *(v412 + 56) = 0x6D69547473726946;
                *(v412 + 64) = 0xE900000000000065;
                *(v412 + 72) = [objc_allocWithZone(NSNumber) initWithBool:0];
                *(v412 + 80) = 0x795464726F636552;
                *(v412 + 88) = 0xEA00000000006570;
                CKRecord.recordType.getter();
                v416 = objc_allocWithZone(NSString);
                v417 = String._bridgeToObjectiveC()();

                v418 = [v416 initWithString:v417];

                *(v412 + 96) = v418;
                *(v412 + 104) = 0x73736563637553;
                *(v412 + 112) = 0xE700000000000000;
                *(v412 + 120) = [objc_allocWithZone(NSNumber) initWithBool:1];
                strcpy((v412 + 128), "SyncDuration");
                *(v412 + 141) = 0;
                *(v412 + 142) = -5120;
                Date.timeIntervalSince(_:)();
                *(v412 + 144) = [objc_allocWithZone(NSNumber) initWithDouble:v419];
                strcpy((v412 + 152), "UploadDuration");
                *(v412 + 167) = -18;
                *(v412 + 168) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
                strcpy((v412 + 176), "UserInitiated");
                *(v412 + 190) = -4864;
                v420 = objc_allocWithZone(NSNumber);
                v421 = v803;
                *(v412 + 192) = [v420 initWithBool:0];
                sub_1000F9D9C(v412);
                swift_setDeallocating();
                sub_1000EE870(&qword_1002F9380, &unk_100229A70);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
                v422 = Dictionary._bridgeToObjectiveC()().super.isa;

                v423 = v800;
                CUMetricsLog();

                v409 = v799[1];
                v424 = v393;
                v210 = v421;
                v410 = v801;
                v409(v424, v801);
                v411 = v395;
                goto LABEL_128;
              }

              (v799[1])(v393, v279);
            }

            v396 = v795;
            static Date.now.getter();
            v800 = String._bridgeToObjectiveC()();
            sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
            v397 = swift_allocObject();
            *(v397 + 16) = xmmword_100229100;
            *(v397 + 32) = 0x726F727245;
            *(v397 + 40) = 0xE500000000000000;
            v398 = objc_allocWithZone(NSString);
            v399 = String._bridgeToObjectiveC()();
            v400 = [v398 initWithString:v399];

            *(v397 + 48) = v400;
            *(v397 + 56) = 0x6D69547473726946;
            *(v397 + 64) = 0xE900000000000065;
            *(v397 + 72) = [objc_allocWithZone(NSNumber) initWithBool:1];
            *(v397 + 80) = 0x795464726F636552;
            *(v397 + 88) = 0xEA00000000006570;
            CKRecord.recordType.getter();
            v401 = objc_allocWithZone(NSString);
            v402 = String._bridgeToObjectiveC()();

            v403 = [v401 initWithString:v402];

            *(v397 + 96) = v403;
            *(v397 + 104) = 0x73736563637553;
            *(v397 + 112) = 0xE700000000000000;
            *(v397 + 120) = [objc_allocWithZone(NSNumber) initWithBool:1];
            strcpy((v397 + 128), "SyncDuration");
            *(v397 + 141) = 0;
            *(v397 + 142) = -5120;
            v404 = v737;
            Date.timeIntervalSince(_:)();
            *(v397 + 144) = [objc_allocWithZone(NSNumber) initWithDouble:v405];
            strcpy((v397 + 152), "UploadDuration");
            *(v397 + 167) = -18;
            *(v397 + 168) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
            strcpy((v397 + 176), "UserInitiated");
            *(v397 + 190) = -4864;
            v406 = objc_allocWithZone(NSNumber);
            v210 = v803;
            *(v397 + 192) = [v406 initWithBool:0];
            sub_1000F9D9C(v397);
            swift_setDeallocating();
            sub_1000EE870(&qword_1002F9380, &unk_100229A70);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
            v407 = Dictionary._bridgeToObjectiveC()().super.isa;

            v408 = v800;
            CUMetricsLog();

            v409 = v799[1];
            v410 = v801;
            v409(v396, v801);
            v411 = v404;
LABEL_128:
            v409(v411, v410);
            v22 = &type metadata for String;
            goto LABEL_129;
          }

          (v799[1])(v390, v279);
        }

LABEL_129:
        static os_log_type_t.default.getter();
        v425 = swift_allocObject();
        *(v425 + 16) = xmmword_100226100;
        sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
        v426 = Array.description.getter();
        v427 = v806;
        *(v425 + 56) = v22;
        *(v425 + 64) = v427;
        *(v425 + 32) = v426;
        *(v425 + 40) = v428;
        os_log(_:dso:log:_:_:)();

        sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
        v148 = v807;
        v149 = v210;
        v150 = v802;
        goto LABEL_130;
      }

      v567 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v279 = v801;
      v280 = v808;
      v511 = v750;
      if (v567)
      {

        goto LABEL_218;
      }

      if (v208 == 0xD000000000000012 && 0x80000001002671C0 == v209 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1001A1688(v202, v800 & 1);
        goto LABEL_120;
      }

      if (v208 == 0x6563697665444141 && v209 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        *(&v814 + 1) = &type metadata for AudioAccessoryFeatures;
        v815 = sub_1000F1874();
        v639 = isFeatureEnabled(_:)();
        sub_1000EF824(&v813);
        if (v639)
        {
          v640 = objc_allocWithZone(type metadata accessor for AADeviceRecord());
          v641 = v202;
          v258 = v739;
          v642 = sub_100164730(v641);
          if (!v258)
          {
            v643 = v642;
            sub_1001C30D4(v642, v800 & 1);
LABEL_337:

            v210 = v803;
LABEL_338:
            v279 = v801;
            v280 = v808;
            goto LABEL_120;
          }

          goto LABEL_335;
        }
      }

      else
      {
        if ((v208 != 0xD000000000000011 || 0x800000010026EAC0 != v209) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v208 == 0xD000000000000013 && 0x8000000100267B10 == v209)
          {
          }

          else
          {
            v717 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v717 & 1) == 0)
            {
              static os_log_type_t.error.getter();
              v728 = swift_allocObject();
              *(v728 + 16) = v769;
              v729 = v806;
              *(v728 + 56) = &type metadata for String;
              *(v728 + 64) = v729;
              v210 = v803;
              *(v728 + 32) = v803;
              *(v728 + 40) = v802;

              v730 = v202;
              v731 = [v730 description];
              v732 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v734 = v733;

              *(v728 + 96) = &type metadata for String;
              *(v728 + 104) = v729;
              *(v728 + 72) = v732;
              *(v728 + 80) = v734;
              os_log(_:dso:log:_:_:)();

              goto LABEL_338;
            }
          }

          goto LABEL_334;
        }
      }

      *(&v814 + 1) = &type metadata for AudioAccessoryFeatures;
      v815 = sub_1000F1874();
      v683 = isFeatureEnabled(_:)();
      sub_1000EF824(&v813);
      if (v683)
      {
        v684 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord());
        v685 = v202;
        v258 = v739;
        v686 = sub_1000F3E30(v685);
        if (!v258)
        {
          v643 = v686;
          sub_1001C34AC(v686, v800 & 1);
          goto LABEL_337;
        }

LABEL_335:
        v210 = v803;
        goto LABEL_56;
      }

LABEL_334:
      v718 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord());
      v719 = v202;
      v258 = v739;
      v720 = sub_100129F78(v719);
      if (!v258)
      {
        v643 = v720;
        sub_1001C387C(v720, v800 & 1);
        goto LABEL_337;
      }

      goto LABEL_335;
    }

    if (v170 >= *(v169 + 16))
    {
      break;
    }

    ++v170;
    v175 = (v174 + 2);
    v176 = *(v174 - 1);
    v153 = *v174;

    v177 = [v808 encryptedValues];
    v151 = String._bridgeToObjectiveC()();
    v167 = [v177 objectForKeyedSubscript:v151];

    swift_unknownObjectRelease();
    v174 = v175;
    if (v167)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v153 = *((v816 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v153 >= *((v816 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v171 = v816;
      v173 = v738;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_175:
  (v174)(v171, 1, 1, v167);
  v430 = &qword_1002F8510;
  v431 = &unk_100227B50;
LABEL_132:
  v329 = sub_1000EEE6C(v171, v430, v431);
LABEL_163:
  sub_100195ABC(v329);
  v476 = *(&v814 + 1);
  v477 = v815;
  sub_1000EF78C(&v813, *(&v814 + 1));
  v478 = (*(v477 + 56))(v476, v477);
  v479 = [v478 creationDate];

  if (v479)
  {
    v480 = v795;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v481 = v775;
    v482 = v797;
    (v797)(v775, v480, v153);
    v172(v481, 0, 1, v153);
    v483 = v776;
    (v482)(v776, v481, v153);
  }

  else
  {
    v484 = v775;
    v172(v775, 1, 1, v153);
    v485 = *(&v814 + 1);
    v486 = v815;
    sub_1000EF78C(&v813, *(&v814 + 1));
    v483 = v776;
    (*(v486 + 40))(v485, v486);
    if (v793(v484, 1, v153) != 1)
    {
      sub_1000EEE6C(v484, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  Date.timeIntervalSince1970.getter();
  v488 = v487;
  v489 = v800;
  (v800)(v483, v153);
  Date.timeIntervalSince1970.getter();
  v491 = [objc_allocWithZone(NSNumber) initWithDouble:v488 - v490];
  v492 = String._bridgeToObjectiveC()();
  sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
  v493 = swift_allocObject();
  *(v493 + 16) = v796;
  *(v493 + 32) = 0xD00000000000001ALL;
  *(v493 + 40) = 0x8000000100270580;
  *(v493 + 48) = v491;
  v494 = v491;
  sub_1000F9D9C(v493);
  swift_setDeallocating();
  sub_1000EEE6C(v493 + 32, &qword_1002F9380, &unk_100229A70);
  swift_deallocClassInstance();
  sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
  v495 = Dictionary._bridgeToObjectiveC()().super.isa;

  CUMetricsLog();

  v489(v151, v153);
  sub_1000EEE6C(&v816, &qword_1002F9D98, &qword_100229A58);
  sub_1000EF824(&v813);
  v148 = v807;
LABEL_168:
  v149 = v803;
  v150 = v802;
LABEL_130:
  sub_1001C1FE8(v148, v149, v150);
}

void sub_1001A0974(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v21 = objc_autoreleasePoolPush();
  v52 = a1;
  sub_100135EE0(a1, &v53);
  v51 = v2;
  if (v2)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v21);
    v22 = v53;
    v23 = [(objc_class *)v53 recordChangeTag];
    if (!v23)
    {
      goto LABEL_12;
    }

    v49 = a2;

    v24 = type metadata accessor for DeviceSupportInformationRecord();
    (*(v11 + 16))(v20, v52 + *(v24 + 64), v10);
    v25 = [(objc_class *)v22 modificationDate];
    if (v25)
    {
      v26 = v25;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = *(v11 + 32);
      v28 = v50;
      v27(v50, v14, v10);
      (*(v11 + 56))(v28, 0, 1, v10);
      v27(v17, v28, v10);
    }

    else
    {
      v29 = *(v11 + 56);
      v30 = v50;
      v29(v50, 1, 1, v10);
      v31 = [(objc_class *)v22 creationDate];
      if (v31)
      {
        v47 = v29;
        v32 = v31;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = v48;
        v34 = v14;
        v35 = *(v11 + 32);
        v35(v48, v34, v10);
        v47(v33, 0, 1, v10);
        v36 = v33;
        v30 = v50;
        v35(v17, v36, v10);
        v37 = *(v11 + 48);
      }

      else
      {
        v38 = v48;
        v29(v48, 1, 1, v10);
        v39 = v38;
        static Date.now.getter();
        v37 = *(v11 + 48);
        if (v37(v39, 1, v10) != 1)
        {
          sub_1000EEE6C(v39, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if (v37(v30, 1, v10) != 1)
      {
        sub_1000EEE6C(v30, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v40 = static Date.> infix(_:_:)();
    v41 = *(v11 + 8);
    v41(v17, v10);
    v41(v20, v10);
    if (v40)
    {
LABEL_12:
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100226100;
      v43 = sub_100133818();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1000EE954();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:_:_:)();

      sub_100193560();
      v46 = swift_allocObject();
      swift_weakInit();

      sub_100154534(v22, 0, sub_1001CBF00, v46);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1001A0F08(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for MagicPairingSettingsRecord();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v47 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v22 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v24 = isa;
  v54 = isa;
  v53 = a1;
  sub_10011A7B0(&v54);
  objc_autoreleasePoolPop(v22);
  v25 = [v24 recordChangeTag];
  if (!v25)
  {
    goto LABEL_13;
  }

  (*(v12 + 16))(v21, v53 + *(v3 + 120), v11);
  v26 = [v24 modificationDate];
  if (v26)
  {
    v27 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v12 + 32);
    v29 = v52;
    v28(v52, v15, v11);
    (*(v12 + 56))(v29, 0, 1, v11);
    v28(v18, v29, v11);
  }

  else
  {
    v30 = *(v12 + 56);
    v30(v52, 1, 1, v11);
    v31 = [v24 creationDate];
    if (v31)
    {
      v48 = v30;
      v32 = v31;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v49;
      v34 = v15;
      v35 = *(v12 + 32);
      v35(v49, v34, v11);
      v48(v33, 0, 1, v11);
      v35(v18, v33, v11);
      v36 = *(v12 + 48);
    }

    else
    {
      v37 = v49;
      v30(v49, 1, 1, v11);
      static Date.now.getter();
      v36 = *(v12 + 48);
      if (v36(v37, 1, v11) != 1)
      {
        sub_1000EEE6C(v37, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v38 = v52;
    if (v36(v52, 1, v11) != 1)
    {
      sub_1000EEE6C(v38, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v39 = static Date.> infix(_:_:)();
  v40 = *(v12 + 8);
  v40(v18, v11);
  v40(v21, v11);
  if (v39)
  {
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100226100;
    v42 = v50;
    sub_1001CC14C(v53, v50, type metadata accessor for MagicPairingSettingsRecord);
    v43 = sub_100116308();
    v45 = v44;
    sub_1001CC1B4(v42, type metadata accessor for MagicPairingSettingsRecord);
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_1000EE954();
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    os_log(_:dso:log:_:_:)();

    sub_100193560();
    v46 = swift_allocObject();
    swift_weakInit();

    sub_100154534(v24, 0, sub_1001CBE8C, v46);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001A151C(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100226100;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_1000EE954();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      sub_1001A1688(a1, 0);
    }
  }

  return result;
}

void sub_1001A1688(void *a1, int a2)
{
  LODWORD(v133) = a2;
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v141 = v120 - v6;
  v140 = type metadata accessor for BTDeferredRecord();
  v145 = *(v140 - 8);
  v7 = *(v145 + 64);
  __chkstk_darwin(v140);
  v132 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v143 = (v120 - v10);
  __chkstk_darwin(v11);
  v136 = v120 - v12;
  v131 = type metadata accessor for DispatchWorkItemFlags();
  v130 = *(v131 - 1);
  v13 = v130[8];
  __chkstk_darwin(v131);
  v128 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DispatchQoS();
  v127 = *(v129 - 8);
  v15 = *(v127 + 64);
  __chkstk_darwin(v129);
  v126 = v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SoundProfileRecord();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v135 = (v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for URL();
  v146 = *(v20 - 8);
  v21 = v146[8];
  __chkstk_darwin(v20);
  v139 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v138 = v120 - v24;
  __chkstk_darwin(v25);
  v27 = v120 - v26;
  __chkstk_darwin(v28);
  v30 = v120 - v29;
  __chkstk_darwin(v31);
  v33 = v120 - v32;
  __chkstk_darwin(v34);
  v36 = v120 - v35;
  __chkstk_darwin(v37);
  v137 = v120 - v38;
  __chkstk_darwin(v39);
  v41 = v120 - v40;
  __chkstk_darwin(v42);
  v144 = v120 - v43;
  v44 = CKRecord.recordType.getter();
  v147 = 0x80000001002671C0;
  if (v44 == 0xD000000000000012 && 0x80000001002671C0 == v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      return;
    }
  }

  v142 = v2;
  v47 = [a1 valueStore];
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if (v149)
  {
    sub_1000EE870(&unk_1002F9D70, &qword_100229A40);
    sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
    if (swift_dynamicCast())
    {
      v48 = v152;
      v49 = [v152 fileURL];
      if (v49)
      {
        v122 = v48;
        v50 = v49;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = v146[4];
        v124 = v146 + 4;
        v123 = v51;
        v51(v144, v41, v20);
        v52 = IsAppleInternalBuild();
        v134 = v20;
        if (v52 && (v53 = [objc_opt_self() standardUserDefaults], v54 = String._bridgeToObjectiveC()(), v55 = objc_msgSend(v53, "BOOLForKey:", v54), v53, v54, (v55 & 1) != 0))
        {
          if (qword_1002F79E0 != -1)
          {
            swift_once();
          }

          v56 = sub_1000EE91C(v20, qword_100300B68);
          v57 = v20;
          v58 = v146;
          v121 = v146[2];
          v121(v36, v56, v57);
          URL.path.getter();
          v125 = v58[1];
          v125(v36, v57);
          v59 = v142;
          v60 = v137;
          URL.appendingPathComponent(_:isDirectory:)();
        }

        else
        {
          v120[1] = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
          if (qword_1002F79E0 != -1)
          {
            swift_once();
          }

          v61 = sub_1000EE91C(v20, qword_100300B68);
          v62 = v146;
          v121 = v146[2];
          v121(v30, v61, v134);
          v63 = [a1 recordID];
          v64 = [v63 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          URL.appendingPathComponent(_:)();

          v65 = v134;
          v66 = v62[1];
          v66(v30, v134);
          URL.appendingPathExtension(_:)();
          v66(v33, v65);
          URL.path.getter();
          v125 = v66;
          v66(v36, v65);
          v59 = v142;
          v60 = v137;
          URL.appendingPathComponent(_:)();
        }

        if (!IsAppleInternalBuild() || (v67 = [objc_opt_self() standardUserDefaults], v68 = String._bridgeToObjectiveC()(), v69 = objc_msgSend(v67, "BOOLForKey:", v68), v67, v68, (v69 & 1) == 0))
        {
          v70 = sub_100192340();
          v71 = *(v70 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
          __chkstk_darwin(v70);
          v72 = v144;
          v120[-2] = v60;
          v120[-1] = v72;
          OS_dispatch_queue.sync<A>(execute:)();
        }

        v121(v27, v60, v134);
        v73 = a1;
        v74 = v135;
        sub_1000FCD2C(v73, v27, v135);
        v75 = sub_100192340();
        v76 = *(v75 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
        __chkstk_darwin(v75);
        v120[-2] = v77;
        v120[-1] = v74;
        OS_dispatch_queue.sync<A>(execute:)();

        static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_100226100;
        v83 = sub_1000FAF14();
        v85 = v84;
        *(v82 + 56) = &type metadata for String;
        *(v82 + 64) = sub_1000EE954();
        *(v82 + 32) = v83;
        *(v82 + 40) = v85;
        os_log(_:dso:log:_:_:)();

        if (v133)
        {
          sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
          v86 = static OS_dispatch_queue.main.getter();
          v150 = sub_1001CE10C;
          v151 = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001742E0;
          v149 = &unk_1002C0760;
          v87 = _Block_copy(aBlock);
          v88 = v126;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
          sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
          v89 = v128;
          v90 = v131;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v87);

          (v130[1])(v89, v90);
          (*(v127 + 8))(v88, v129);
        }

        v91 = sub_10019391C();
        v92 = v91;
        v93 = v136;
        if (*(v91 + 16))
        {
          v94 = *(v91 + 16);
          v95 = 0;
          v96 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v95 >= *(v92 + 16))
            {
              __break(1u);
              goto LABEL_53;
            }

            v97 = (*(v145 + 80) + 32) & ~*(v145 + 80);
            v98 = *(v145 + 72);
            sub_1001CC14C(v92 + v97 + v98 * v95, v93, type metadata accessor for BTDeferredRecord);
            v99 = *(v93 + 8) == 0xD000000000000012 && v147 == *(v93 + 16);
            if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (*v93 == 1)
              {

LABEL_40:
                sub_1001CC214(v93, v143, type metadata accessor for BTDeferredRecord);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v96;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1001C4EBC(0, v96[2] + 1, 1);
                  v96 = aBlock[0];
                }

                v103 = v96[2];
                v102 = v96[3];
                if (v103 >= v102 >> 1)
                {
                  sub_1001C4EBC(v102 > 1, v103 + 1, 1);
                  v96 = aBlock[0];
                }

                v96[2] = v103 + 1;
                sub_1001CC214(v143, v96 + v97 + v103 * v98, type metadata accessor for BTDeferredRecord);
                v59 = v142;
                v93 = v136;
                goto LABEL_30;
              }

              v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v100)
              {
                goto LABEL_40;
              }
            }

            sub_1001CC1B4(v93, type metadata accessor for BTDeferredRecord);
LABEL_30:
            if (v94 == ++v95)
            {
              goto LABEL_46;
            }
          }
        }

        v96 = &_swiftEmptyArrayStorage;
LABEL_46:

        v104 = v132;
        v105 = v134;
        v136 = v96[2];
        if (v136)
        {
          v106 = 0;
          v133 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
          v131 = (v146 + 6);
          v129 = (v146 + 1);
          v130 = v96;
          while (v106 < v96[2])
          {
            sub_1001CC14C(v96 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v106, v104, type metadata accessor for BTDeferredRecord);
            v107 = *(v59 + v133);
            v108 = *(v140 + 24);

            v109 = UUID.uuidString.getter();
            v111 = v110;
            v112 = v141;
            URL.init(string:)();
            if ((*v131)(v112, 1, v105) == 1)
            {
              __break(1u);
              return;
            }

            ++v106;
            v113 = v139;
            v123(v139, v112, v105);
            v114 = v138;
            URL.appendingPathComponent(_:)();
            v115 = v125;
            v116 = (v125)(v113, v134);
            v143 = v120;
            v117 = *(v107 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
            __chkstk_darwin(v116);
            v120[-4] = v107;
            v120[-3] = v109;
            v120[-2] = v111;
            v120[-1] = v114;
            OS_dispatch_queue.sync<A>(execute:)();

            sub_1001CC1B4(v104, type metadata accessor for BTDeferredRecord);

            v118 = v114;
            v105 = v134;
            v115(v118, v134);
            v59 = v142;
            v96 = v130;
            if (v136 == v106)
            {
              goto LABEL_51;
            }
          }

LABEL_53:
          __break(1u);
          swift_once();
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_100226100;
          aBlock[0] = 0;
          swift_errorRetain();
          sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
          v79 = String.init<A>(describing:)();
          v81 = v80;
          *(v78 + 56) = &type metadata for String;
          *(v78 + 64) = sub_1000EE954();
          *(v78 + 32) = v79;
          *(v78 + 40) = v81;
          os_log(_:dso:log:_:_:)();
        }

        else
        {
LABEL_51:

          sub_1001CC1B4(v135, type metadata accessor for SoundProfileRecord);
          v119 = v125;
          v125(v137, v105);
          v119(v144, v105);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000EEE6C(aBlock, &qword_1002F8058, &unk_100227110);
  }
}

void sub_1001A29D4(void **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = *a1;
  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v20[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v20[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F89F4().super.isa;
  }

  v57 = isa;
  v23 = isa;
  sub_1001675F4(&v57);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 recordChangeTag];
  v58 = v23;
  if (!v24)
  {
    goto LABEL_13;
  }

  v54 = v9;

  v25 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v11 + 16))(v19, &v20[v25], v10);
  v26 = [v23 modificationDate];
  if (v26)
  {
    v27 = v55;
    v28 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v11 + 32);
    v30 = v19;
    v31 = v16;
    v32 = v54;
    v29(v54, v27, v10);
    (*(v11 + 56))(v32, 0, 1, v10);
    v33 = v31;
    v34 = v32;
    v16 = v31;
    v19 = v30;
    v29(v33, v34, v10);
  }

  else
  {
    v35 = *(v11 + 56);
    v35(v54, 1, 1, v10);
    v36 = [v23 creationDate];
    if (v36)
    {
      v53 = v35;
      v37 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v6;
      v39 = *(v11 + 32);
      v39(v38, v55, v10);
      v53(v38, 0, 1, v10);
      v39(v16, v38, v10);
      v40 = *(v11 + 48);
    }

    else
    {
      v35(v6, 1, 1, v10);
      static Date.now.getter();
      v41 = v6;
      v40 = *(v11 + 48);
      if (v40(v41, 1, v10) != 1)
      {
        sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v42 = v54;
    if (v40(v54, 1, v10) != 1)
    {
      sub_1000EEE6C(v42, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v43 = static Date.> infix(_:_:)();
  v44 = *(v11 + 8);
  v44(v16, v10);
  v44(v19, v10);
  v45 = v58;
  if (v43)
  {
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v20;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v45 = v58;
    sub_100154534(v58, 0, sub_1001CBDA4, v52);
    swift_unknownObjectRelease();
  }
}

void sub_1001A2FB4(void **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = *a1;
  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v20[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v20[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F882C().super.isa;
  }

  v57 = isa;
  v23 = isa;
  sub_1000F6FF4(&v57);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 recordChangeTag];
  v58 = v23;
  if (!v24)
  {
    goto LABEL_13;
  }

  v54 = v9;

  v25 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v11 + 16))(v19, &v20[v25], v10);
  v26 = [v23 modificationDate];
  if (v26)
  {
    v27 = v55;
    v28 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v11 + 32);
    v30 = v19;
    v31 = v16;
    v32 = v54;
    v29(v54, v27, v10);
    (*(v11 + 56))(v32, 0, 1, v10);
    v33 = v31;
    v34 = v32;
    v16 = v31;
    v19 = v30;
    v29(v33, v34, v10);
  }

  else
  {
    v35 = *(v11 + 56);
    v35(v54, 1, 1, v10);
    v36 = [v23 creationDate];
    if (v36)
    {
      v53 = v35;
      v37 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v6;
      v39 = *(v11 + 32);
      v39(v38, v55, v10);
      v53(v38, 0, 1, v10);
      v39(v16, v38, v10);
      v40 = *(v11 + 48);
    }

    else
    {
      v35(v6, 1, 1, v10);
      static Date.now.getter();
      v41 = v6;
      v40 = *(v11 + 48);
      if (v40(v41, 1, v10) != 1)
      {
        sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v42 = v54;
    if (v40(v54, 1, v10) != 1)
    {
      sub_1000EEE6C(v42, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v43 = static Date.> infix(_:_:)();
  v44 = *(v11 + 8);
  v44(v16, v10);
  v44(v19, v10);
  v45 = v58;
  if (v43)
  {
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v20;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v45 = v58;
    sub_100154534(v58, 0, sub_1001CBD30, v52);
    swift_unknownObjectRelease();
  }
}

void sub_1001A3594(void **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = *a1;
  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v20[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v20[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F8660().super.isa;
  }

  v57 = isa;
  v23 = isa;
  sub_10012F138(&v57);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 recordChangeTag];
  v58 = v23;
  if (!v24)
  {
    goto LABEL_13;
  }

  v54 = v9;

  v25 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v11 + 16))(v19, &v20[v25], v10);
  v26 = [v23 modificationDate];
  if (v26)
  {
    v27 = v55;
    v28 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v11 + 32);
    v30 = v19;
    v31 = v16;
    v32 = v54;
    v29(v54, v27, v10);
    (*(v11 + 56))(v32, 0, 1, v10);
    v33 = v31;
    v34 = v32;
    v16 = v31;
    v19 = v30;
    v29(v33, v34, v10);
  }

  else
  {
    v35 = *(v11 + 56);
    v35(v54, 1, 1, v10);
    v36 = [v23 creationDate];
    if (v36)
    {
      v53 = v35;
      v37 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v6;
      v39 = *(v11 + 32);
      v39(v38, v55, v10);
      v53(v38, 0, 1, v10);
      v39(v16, v38, v10);
      v40 = *(v11 + 48);
    }

    else
    {
      v35(v6, 1, 1, v10);
      static Date.now.getter();
      v41 = v6;
      v40 = *(v11 + 48);
      if (v40(v41, 1, v10) != 1)
      {
        sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v42 = v54;
    if (v40(v54, 1, v10) != 1)
    {
      sub_1000EEE6C(v42, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v43 = static Date.> infix(_:_:)();
  v44 = *(v11 + 8);
  v44(v16, v10);
  v44(v19, v10);
  v45 = v58;
  if (v43)
  {
LABEL_13:
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v20;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v45 = v58;
    sub_100154534(v58, 0, sub_1001CBE18, v52);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001A3B74(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v28 = *(v15 - 8);
  v29 = v15;
  v16 = *(v28 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = v11;
    v20 = *(result + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v21 = result;
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    v23 = a2 & 1;
    *(v22 + 24) = v23;
    *(v22 + 32) = v21;
    aBlock[4] = a5;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = a6;
    v24 = _Block_copy(aBlock);
    v25 = v20;
    sub_1001CB634(a1, v23);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v27 + 8))(v14, v10);
    (*(v28 + 8))(v18, v29);
  }

  return result;
}

uint64_t sub_1001A3E94(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_10019A610(a1, _swiftEmptyArrayStorage, 0);
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226100;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000EE954();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1001A3FE0(void *a1)
{
  v2 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  sub_100192464(v22 - v12);
  LODWORD(v2) = (*(v3 + 48))(v13, 1, v2);
  sub_1000EEE6C(v13, &qword_1002F8500, &qword_100227B38);
  if (v2 == 1)
  {
    sub_1001003DC(a1, v6);
    v14 = sub_100192340();
    v15 = *(v14 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v14);
    v22[-2] = v16;
    v22[-1] = v6;
    OS_dispatch_queue.sync<A>(execute:)();

    return sub_1001CC1B4(v6, type metadata accessor for LegacyAccountMagicKeysRecord);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226100;
    sub_100192464(v10);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000EE954();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1001A43D0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100192464(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000EEE6C(v8, &qword_1002F8500, &qword_100227B38);
  }

  sub_1001CC214(v8, v13, type metadata accessor for LegacyAccountMagicKeysRecord);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v15 = sub_100192340();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  if (qword_1002F79E8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000EE91C(v0, qword_100300B80);
  v20 = (*(v1 + 16))(v4, v19, v0);
  v21 = *(v15 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v20);
  *&v22[-32] = v15;
  *&v22[-24] = v16;
  *&v22[-16] = v18;
  *&v22[-8] = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1001CC1B4(v13, type metadata accessor for LegacyAccountMagicKeysRecord);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1001A4748(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v153 = a3;
  v154 = a2;
  v140 = type metadata accessor for UUID();
  v152 = *(v140 - 8);
  v5 = *(v152 + 64);
  __chkstk_darwin(v140);
  v151 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v149 = &v139 - v13;
  __chkstk_darwin(v14);
  v16 = &v139 - v15;
  v146 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v17 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v145 = &v139 - v18;
  v19 = type metadata accessor for DeviceRecord();
  v147 = *(v19 - 8);
  v148 = v19;
  v20 = *(v147 + 64);
  __chkstk_darwin(v19);
  v155 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v139 = &v139 - v23;
  __chkstk_darwin(v24);
  v141 = v3;
  v142 = &v139 - v25;
  v26 = sub_100192340();
  v150 = a1;
  v27 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000EE91C(v7, qword_100300AF0);
  (*(v8 + 16))(v16, v30, v7);
  v31 = objc_autoreleasePoolPush();
  v144 = v16;
  v32 = v31;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v33 = v149;
  v143 = v29;
  URL.appendingPathComponent(_:)();
  v34 = *(v8 + 8);
  v34(v11, v7);
  objc_autoreleasePoolPop(v32);
  v35 = objc_autoreleasePoolPush();
  v36 = *(v26 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v35);
  *(&v139 - 2) = v33;
  *(&v139 - 1) = v26;
  v37 = v145;
  v38 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v35);
  v34(v33, v7);

  v34(v144, v7);
  v39 = v148;
  v40 = &qword_100226000;
  if ((*(v147 + 48))(v37, 1, v148) == 1)
  {
    v149 = 0;
    sub_1000EEE6C(v37, &qword_1002F8520, &unk_100227B60);
    static os_log_type_t.default.getter();
    v41 = v150;
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100226100;
    v43 = v41;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_1000EE954();
    *(v42 + 32) = v45;
    *(v42 + 40) = v47;
    os_log(_:dso:log:_:_:)();

    v48 = v43;
    v49 = v151;
    UUID.init()();
    v50 = v155;
    *v155 = xmmword_100227DA0;
    v51 = v140;
    (*(v152 + 16))(&v50[v39[5]], v49, v140);
    v52 = [v48 bluetoothAddress];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = &v50[v39[6]];
    *v56 = v53;
    v56[1] = v55;
    v57 = [v48 nickname];
    if (v57)
    {
      v58 = v57;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0xE000000000000000;
    }

    v90 = v141;
    v88 = v142;
    v91 = v39;
    v92 = &v155[v39[7]];
    *v92 = v59;
    v92[1] = v61;
    v93 = [v48 modelNumber];
    if (v93)
    {
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      v91 = v39;
    }

    else
    {
      v95 = 0;
      v97 = 0xE000000000000000;
    }

    v98 = &v155[v91[8]];
    *v98 = v95;
    v98[1] = v97;
    v99 = [v48 manufacturer];
    if (v99)
    {
      v100 = v99;
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v91 = v39;
    }

    else
    {
      v101 = 0;
      v103 = 0xE000000000000000;
    }

    v104 = &v155[v91[9]];
    *v104 = v101;
    v104[1] = v103;
    v105 = [v48 productID];
    if (v105)
    {
      v106 = v105;
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;

      v91 = v39;
    }

    else
    {
      v107 = 0;
      v109 = 0xE000000000000000;
    }

    v110 = &v155[v91[10]];
    *v110 = v107;
    v110[1] = v109;
    v111 = [v48 vendorID];
    if (v111)
    {
      v112 = v111;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v91 = v39;
    }

    else
    {
      v113 = 0;
      v115 = 0xE000000000000000;
    }

    v116 = v91[11];
    v117 = v91;
    v118 = v155;
    v119 = &v155[v116];
    *v119 = v113;
    v119[1] = v115;
    v120 = v118 + v117[12];
    static Date.now.getter();

    (*(v152 + 8))(v151, v51);
    v89 = sub_1001CC214(v118, v88, type metadata accessor for DeviceRecord);
    v38 = v149;
LABEL_32:
    v121 = *(v90 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v122 = *(v121 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v89);
    *(&v139 - 2) = v121;
    *(&v139 - 1) = v88;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v38)
    {

      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v123 = swift_allocObject();
      *(v123 + 16) = *(v40 + 16);
      v156[0] = v38;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v124 = String.init<A>(describing:)();
      v126 = v125;
      *(v123 + 56) = &type metadata for String;
      *(v123 + 64) = sub_1000EE954();
      *(v123 + 32) = v124;
      *(v123 + 40) = v126;
      os_log(_:dso:log:_:_:)();

      sub_1001266E0();
      v127 = swift_allocError();
      *v128 = v38 | 0x4000000000000000;
      swift_errorRetain();
      v154(v127);
    }

    else
    {

      v154(0);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v129 = swift_allocObject();
      *(v129 + 16) = *(v40 + 16);
      v130 = sub_1000EA6CC(v129);
      v132 = v131;
      *(v129 + 56) = &type metadata for String;
      *(v129 + 64) = sub_1000EE954();
      *(v129 + 32) = v130;
      *(v129 + 40) = v132;
      os_log(_:dso:log:_:_:)();

      v133 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*v88, *(v88 + 8));
      if (!isa)
      {
        isa = sub_1000F8490(v88).super.isa;
      }

      v156[0] = isa;
      v135 = isa;
      sub_1000EC524(v156);
      objc_autoreleasePoolPop(v133);
      sub_100193560();
      v136 = swift_allocObject();
      *(v136 + 16) = v90;
      *(v136 + 24) = v135;

      v137 = v135;
      sub_100154534(v137, 1, sub_1001CBBCC, v136);

      swift_unknownObjectRelease();
    }

    v62 = v88;
    return sub_1001CC1B4(v62, type metadata accessor for DeviceRecord);
  }

  v62 = v139;
  sub_1001CC214(v37, v139, type metadata accessor for DeviceRecord);
  v63 = v150;
  if (sub_1000ECFA8(v150))
  {
    goto LABEL_15;
  }

  v64 = objc_autoreleasePoolPush();
  v65 = sub_100169D38(*v62, *(v62 + 8));
  if (!v65)
  {
    v65 = sub_1000F8490(v62).super.isa;
  }

  v156[0] = v65;
  v66 = v65;
  sub_1000EC524(v156);
  objc_autoreleasePoolPop(v64);
  v67 = [v66 recordChangeTag];

  if (!v67)
  {
LABEL_15:
    LODWORD(v155) = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_100226C80;
    v79 = sub_1000EA6CC(v78);
    v81 = v80;
    *(v78 + 56) = &type metadata for String;
    v82 = sub_1000EE954();
    *(v78 + 64) = v82;
    *(v78 + 32) = v79;
    *(v78 + 40) = v81;
    v83 = v63;
    v84 = [v83 description];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    *(v78 + 96) = &type metadata for String;
    *(v78 + 104) = v82;
    *(v78 + 72) = v85;
    *(v78 + 80) = v87;
    os_log(_:dso:log:_:_:)();

    v88 = v142;
    sub_1001CC14C(v62, v142, type metadata accessor for DeviceRecord);
    sub_1000ECB0C(v83);
    v89 = sub_1001CC1B4(v62, type metadata accessor for DeviceRecord);
    v90 = v141;
    v40 = &qword_100226000;
    goto LABEL_32;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100226C80;
  v69 = sub_1000EA6CC(v68);
  v71 = v70;
  *(v68 + 56) = &type metadata for String;
  v72 = sub_1000EE954();
  *(v68 + 64) = v72;
  *(v68 + 32) = v69;
  *(v68 + 40) = v71;
  v73 = v63;
  v74 = [v73 description];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  *(v68 + 96) = &type metadata for String;
  *(v68 + 104) = v72;
  *(v68 + 72) = v75;
  *(v68 + 80) = v77;
  os_log(_:dso:log:_:_:)();

  v154(0);
  return sub_1001CC1B4(v62, type metadata accessor for DeviceRecord);
}

void sub_1001A55A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v121 = a6;
  v122 = a5;
  v100 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v10 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v103 = &v98 - v11;
  v102 = type metadata accessor for MagicPairingSettingsRecord();
  v101 = *(v102 - 8);
  v12 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v14 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v98 - v15;
  v107 = type metadata accessor for DeviceSupportInformationRecord();
  v106 = *(v107 - 8);
  v16 = *(v106 + 64);
  __chkstk_darwin(v107);
  v104 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v119 = *(v18 - 8);
  v120 = v18;
  v19 = *(v119 + 64);
  __chkstk_darwin(v18);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v118 = &v98 - v22;
  __chkstk_darwin(v23);
  v125 = &v98 - v24;
  v113 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v25 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v116 = &v98 - v26;
  v27 = type metadata accessor for DeviceRecord();
  v114 = *(v27 - 8);
  v115 = v27;
  v28 = *(v114 + 64);
  __chkstk_darwin(v27);
  v109 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v30 = qword_100300E38;
  v110 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v31 = swift_allocObject();
  v98 = xmmword_100226C80;
  *(v31 + 16) = xmmword_100226C80;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_1000EE954();
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  v111 = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = a1;
  v124 = a1;
  *(v31 + 80) = a2;

  v123 = a2;

  v112 = v30;
  os_log(_:dso:log:_:_:)();

  if (a3 == 0x6552656369766544 && a4 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v34 = v120;
    sub_1000EE91C(v120, qword_100300AF0);
    v35 = v119;
    (*(v119 + 16))();
    v36 = objc_autoreleasePoolPush();
    URL.path.getter();
    v37 = v117;
    URL.appendingPathComponent(_:)();

    v38 = v118;
    URL.appendingPathComponent(_:)();
    v39 = *(v35 + 8);
    v39(v37, v34);
    objc_autoreleasePoolPop(v36);
    v40 = objc_autoreleasePoolPush();
    v41 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v40);
    *(&v98 - 2) = v38;
    *(&v98 - 1) = v33;
    v42 = v116;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v40);
    v39(v38, v34);

    v39(v125, v34);
    if ((*(v114 + 48))(v42, 1, v115) == 1)
    {
      sub_1000EEE6C(v42, &qword_1002F8520, &unk_100227B60);
      static os_log_type_t.error.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100226100;
      v44 = v111;
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v44;
      *(v43 + 32) = v124;
      *(v43 + 40) = v123;

LABEL_19:
      os_log(_:dso:log:_:_:)();
LABEL_20:

      (v122)(0);
      return;
    }

    v45 = v42;
    v46 = v109;
    sub_1001CC214(v45, v109, type metadata accessor for DeviceRecord);
    sub_1001A68A8(v46, v122, v121);
    v47 = type metadata accessor for DeviceRecord;
    goto LABEL_11;
  }

  if (a3 == 0xD00000000000001ELL && 0x80000001002671E0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v48 = sub_100192340();
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v49 = v120;
    sub_1000EE91C(v120, qword_100300D48);
    v50 = v119;
    (*(v119 + 16))();
    v51 = objc_autoreleasePoolPush();
    URL.path.getter();
    v52 = v117;
    URL.appendingPathComponent(_:)();

    v53 = v118;
    URL.appendingPathComponent(_:)();
    v54 = *(v50 + 8);
    v54(v52, v49);
    objc_autoreleasePoolPop(v51);
    v55 = objc_autoreleasePoolPush();
    v56 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v55);
    *(&v98 - 2) = v53;
    *(&v98 - 1) = v48;
    v57 = v108;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v55);
    v54(v53, v49);

    v54(v125, v49);
    if ((*(v106 + 48))(v57, 1, v107) == 1)
    {
      sub_1000EEE6C(v57, &qword_1002F8510, &unk_100227B50);
      static os_log_type_t.error.getter();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100226100;
      v59 = v111;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = v59;
      *(v58 + 32) = v124;
      *(v58 + 40) = v123;

      goto LABEL_19;
    }

    v60 = v57;
    v46 = v104;
    sub_1001CC214(v60, v104, type metadata accessor for DeviceSupportInformationRecord);
    sub_1001AF584(v46, v122, v121);
    v47 = type metadata accessor for DeviceSupportInformationRecord;
LABEL_11:
    sub_1001CC1B4(v46, v47);
    return;
  }

  v61 = v123;
  if (a3 == 0x746553636967614DLL && a4 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v62 = sub_100192340();
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v63 = v120;
    sub_1000EE91C(v120, qword_100300BA8);
    v64 = v119;
    (*(v119 + 16))();
    v65 = objc_autoreleasePoolPush();
    URL.path.getter();
    v66 = v117;
    URL.appendingPathComponent(_:)();

    v67 = v118;
    URL.appendingPathComponent(_:)();
    v68 = *(v64 + 8);
    v68(v66, v63);
    objc_autoreleasePoolPop(v65);
    v69 = objc_autoreleasePoolPush();
    v70 = *(v62 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v69);
    *(&v98 - 2) = v67;
    *(&v98 - 1) = v62;
    v71 = v103;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v69);
    v68(v67, v63);

    v68(v125, v63);
    if ((*(v101 + 48))(v71, 1, v102) == 1)
    {
      sub_1000EEE6C(v71, &unk_1002F9C30, &qword_1002299A0);
      static os_log_type_t.error.getter();
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100226100;
      v73 = v111;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = v73;
      *(v72 + 32) = v124;
      *(v72 + 40) = v123;

      goto LABEL_19;
    }

    v74 = v71;
    v46 = v99;
    sub_1001CC214(v74, v99, type metadata accessor for MagicPairingSettingsRecord);
    sub_1001B8D28(v46, 0, v122, v121);
    v47 = type metadata accessor for MagicPairingSettingsRecord;
    goto LABEL_11;
  }

  v75 = v61;
  if (a3 == 0x6563697665444141 && a4 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v127 = &type metadata for AudioAccessoryFeatures;
    v128 = sub_1000F1874();
    v76 = isFeatureEnabled(_:)();
    sub_1000EF824(v126);
    v77 = v124;
    if (v76)
    {
      sub_100192340();
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v78 = v120;
      v79 = sub_1000EE91C(v120, qword_100300D88);
      v80 = v119;
      v81 = v125;
      (*(v119 + 16))(v125, v79, v78);
      v82 = sub_10018ACBC(v77, v75, v81, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

      (*(v80 + 8))(v81, v78);
      if (v82)
      {
        sub_1001B1288(v82, v122, v121);

        return;
      }

LABEL_55:
      static os_log_type_t.error.getter();
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_100226100;
      v95 = v111;
      *(v94 + 56) = &type metadata for String;
      *(v94 + 64) = v95;
      *(v94 + 32) = v77;
      *(v94 + 40) = v75;

      goto LABEL_19;
    }
  }

  else
  {
    v77 = v124;
    if ((a3 != 0xD000000000000011 || 0x800000010026EAC0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((a3 != 0xD000000000000013 || 0x8000000100267B10 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        static os_log_type_t.error.getter();
        v96 = swift_allocObject();
        *(v96 + 16) = v98;
        v97 = v111;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = v97;
        *(v96 + 32) = a3;
        *(v96 + 40) = a4;
        *(v96 + 96) = &type metadata for String;
        *(v96 + 104) = v97;
        *(v96 + 72) = v77;
        *(v96 + 80) = v75;

        os_log(_:dso:log:_:_:)();
        goto LABEL_20;
      }

      goto LABEL_51;
    }
  }

  v127 = &type metadata for AudioAccessoryFeatures;
  v128 = sub_1000F1874();
  v83 = isFeatureEnabled(_:)();
  sub_1000EF824(v126);
  if ((v83 & 1) == 0)
  {
LABEL_51:
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v89 = v120;
    v90 = sub_1000EE91C(v120, qword_100300C40);
    v91 = v119;
    v92 = v125;
    (*(v119 + 16))(v125, v90, v89);
    v93 = sub_10018ACBC(v77, v75, v92, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

    (*(v91 + 8))(v92, v89);
    if (!v93)
    {
      goto LABEL_55;
    }

    sub_1001B4538(v93, v122, v121);

    return;
  }

  sub_100192340();
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v84 = v120;
  v85 = sub_1000EE91C(v120, qword_100300B10);
  v86 = v119;
  v87 = v125;
  (*(v119 + 16))(v125, v85, v84);
  v88 = sub_10018ACBC(v77, v75, v87, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

  (*(v86 + 8))(v87, v84);
  if (!v88)
  {
    goto LABEL_55;
  }

  sub_1001B2C5C(v88, v122, v121);
}

uint64_t sub_1001A68A8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v119 = a3;
  v120 = a2;
  v101 = type metadata accessor for Date();
  v100 = *(v101 - 8);
  v6 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for BTDeferredRecord();
  v8 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v103 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v112 = *(v10 - 8);
  v113 = v10;
  v11 = *(v112 + 64);
  __chkstk_darwin(v10);
  v110 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = &v94 - v14;
  __chkstk_darwin(v15);
  v17 = &v94 - v16;
  v114 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v18 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v116 = &v94 - v19;
  v20 = type metadata accessor for DeviceRecord();
  v117 = *(v20 - 8);
  v21 = *(v117 + 64);
  __chkstk_darwin(v20);
  v95 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v22;
  __chkstk_darwin(v23);
  v102 = &v94 - v24;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v25 = qword_100300E38;
  v105 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  v104 = xmmword_100226100;
  *(v26 + 16) = xmmword_100226100;
  v27 = sub_1000EA6CC();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v106 = sub_1000EE954();
  *(v26 + 64) = v106;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v107 = v25;
  os_log(_:dso:log:_:_:)();

  v108 = v4;
  v30 = sub_100192340();
  v31 = *(v20 + 24);
  v118 = a1;
  v32 = (a1 + v31);
  v111 = v20;
  v33 = *v32;
  v34 = v32[1];
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v35 = v113;
  v36 = sub_1000EE91C(v113, qword_100300AF0);
  v37 = v112;
  v38 = *(v112 + 16);
  v109 = v17;
  v38(v17, v36, v35);
  v39 = objc_autoreleasePoolPush();
  URL.path.getter();
  v40 = v110;
  URL.appendingPathComponent(_:)();

  v41 = v30;
  v42 = v115;
  v97 = v33;
  v96 = v34;
  URL.appendingPathComponent(_:)();
  v43 = *(v37 + 8);
  v43(v40, v35);
  objc_autoreleasePoolPop(v39);
  v44 = objc_autoreleasePoolPush();
  v45 = *(v41 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v44);
  *(&v94 - 2) = v42;
  *(&v94 - 1) = v41;
  v46 = v116;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v44);
  v43(v42, v35);

  v43(v109, v35);
  v47 = v117;
  v48 = v111;
  if ((*(v117 + 48))(v46, 1, v111) == 1)
  {
    sub_1000EEE6C(v46, &qword_1002F8520, &unk_100227B60);
    static os_log_type_t.error.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = v104;
    v50 = sub_1000EA6CC();
    v51 = v106;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = v51;
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;
    os_log(_:dso:log:_:_:)();

    return v120(0);
  }

  else
  {
    v54 = v48;
    v55 = v102;
    sub_1001CC214(v46, v102, type metadata accessor for DeviceRecord);
    v56 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v55, *(v55 + 8));
    if (!isa)
    {
      isa = sub_1000F8490(v55).super.isa;
    }

    v58 = v103;
    v121[0] = isa;
    v59 = isa;
    sub_1000EC524(v121);
    objc_autoreleasePoolPop(v56);
    v60 = [v59 recordID];

    v61 = objc_autoreleasePoolPush();
    v62 = sub_100169D38(*v55, *(v55 + 8));
    if (!v62)
    {
      v62 = sub_1000F8490(v55).super.isa;
    }

    v121[0] = v62;
    v63 = v62;
    sub_1000EC524(v121);
    objc_autoreleasePoolPop(v61);
    v64 = CKRecord.recordType.getter();
    v66 = v65;

    v67 = v108;
    sub_1001A73C4(v60, v64, v66, 0);

    v68 = *(v54 + 20);
    v69 = v99;
    v70 = *(v99 + 24);
    v71 = type metadata accessor for UUID();
    (*(*(v71 - 8) + 16))(v58 + v70, v118 + v68, v71);
    v72 = v96;

    v73 = v98;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v75 = v74;
    (*(v100 + 8))(v73, v101);
    *v58 = 1;
    strcpy((v58 + 8), "DeviceRecord");
    *(v58 + 21) = 0;
    *(v58 + 22) = -5120;
    v76 = (v58 + v69[7]);
    *v76 = v97;
    v76[1] = v72;
    *(v58 + v69[8]) = v75;
    *(v58 + v69[9]) = xmmword_1002298C0;
    v77 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v67, v58);
    objc_autoreleasePoolPop(v77);
    sub_100193560();
    type metadata accessor for CloudCoordinator();
    LOBYTE(v77) = sub_10015A5D0();
    swift_unknownObjectRelease();
    if (v77)
    {
      v78 = *(v67 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v79 = objc_autoreleasePoolPush();
      v80 = sub_100169D38(*v55, *(v55 + 8));
      if (!v80)
      {
        v80 = sub_1000F8490(v55).super.isa;
      }

      v121[0] = v80;
      v81 = v80;
      sub_1000EC524(v121);
      objc_autoreleasePoolPop(v79);
      v82 = [v81 recordID];

      v83 = swift_allocObject();
      swift_weakInit();
      v84 = v95;
      sub_1001CC14C(v55, v95, type metadata accessor for DeviceRecord);
      v85 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v86 = (v94 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      sub_1001CC214(v84, v87 + v85, type metadata accessor for DeviceRecord);
      *(v87 + v86) = v83;
      v88 = swift_allocObject();
      *(v88 + 16) = v78;
      *(v88 + 24) = v82;
      *(v88 + 32) = sub_1001CBBA0;
      *(v88 + 40) = v87;
      *(v88 + 48) = 1;
      swift_unknownObjectRetain();

      v89 = v82;

      sub_100153CF4(sub_1001CE26C, v88);

      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.error.getter();
      v90 = swift_allocObject();
      *(v90 + 16) = v104;
      v91 = sub_1000EA6CC();
      v92 = v106;
      *(v90 + 56) = &type metadata for String;
      *(v90 + 64) = v92;
      *(v90 + 32) = v91;
      *(v90 + 40) = v93;
      os_log(_:dso:log:_:_:)();
    }

    v120(0);
    sub_1001CC1B4(v58, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v55, type metadata accessor for DeviceRecord);
  }
}

uint64_t sub_1001A73C4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v278) = a4;
  v275 = a3;
  v277 = a1;
  v240 = type metadata accessor for DispatchWorkItemFlags();
  v239 = *(v240 - 8);
  v5 = *(v239 + 64);
  __chkstk_darwin(v240);
  v237 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for DispatchQoS();
  v236 = *(v238 - 8);
  v7 = *(v236 + 64);
  __chkstk_darwin(v238);
  v235 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v249 = &v234 - v11;
  v248 = type metadata accessor for SoundProfileRecord();
  v247 = *(v248 - 8);
  v12 = *(v247 + 64);
  __chkstk_darwin(v248);
  v246 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v255 = &v234 - v16;
  v254 = type metadata accessor for MagicPairingSettingsRecord();
  v253 = *(v254 - 8);
  v17 = *(v253 + 64);
  __chkstk_darwin(v254);
  v252 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v261 = &v234 - v21;
  v260 = type metadata accessor for DeviceSupportInformationRecord();
  v259 = *(v260 - 8);
  v22 = *(v259 + 64);
  __chkstk_darwin(v260);
  v258 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for URL();
  v264 = *(v265 - 8);
  v24 = *(v264 + 64);
  __chkstk_darwin(v265);
  v263 = &v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v269 = &v234 - v28;
  v29 = type metadata accessor for DeviceRecord();
  v267 = *(v29 - 8);
  v268 = v29;
  v30 = *(v267 + 64);
  __chkstk_darwin(v29);
  v262 = &v234 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v244 = &v234 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v243 = &v234 - v36;
  __chkstk_darwin(v37);
  v245 = &v234 - v38;
  __chkstk_darwin(v39);
  v251 = &v234 - v40;
  __chkstk_darwin(v41);
  v257 = &v234 - v42;
  __chkstk_darwin(v43);
  v45 = &v234 - v44;
  __chkstk_darwin(v46);
  v48 = &v234 - v47;
  v276 = type metadata accessor for UUID();
  v274 = *(v276 - 8);
  v49 = *(v274 + 64);
  __chkstk_darwin(v276);
  v242 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v234 = &v234 - v52;
  __chkstk_darwin(v53);
  v241 = &v234 - v54;
  __chkstk_darwin(v55);
  v250 = &v234 - v56;
  __chkstk_darwin(v57);
  v256 = &v234 - v58;
  __chkstk_darwin(v59);
  v266 = &v234 - v60;
  __chkstk_darwin(v61);
  v270 = &v234 - v62;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v63 = qword_100300E38;
  v271 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1002289A0;
  *(v64 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  *(v64 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
  v65 = v277;
  *(v64 + 32) = v277;
  *(v64 + 96) = &type metadata for String;
  v272 = sub_1000EE954();
  *(v64 + 104) = v272;
  v66 = v275;
  *(v64 + 72) = a2;
  *(v64 + 80) = v66;
  *(v64 + 136) = &type metadata for Bool;
  *(v64 + 144) = &protocol witness table for Bool;
  *(v64 + 112) = v278 & 1;
  v277 = v65;

  v273 = v63;
  os_log(_:dso:log:_:_:)();

  v67 = a2;
  if (a2 == 0x6552656369766544 && v66 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v68 = v277;
    v69 = [v277 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v70 = v274;
    v71 = v276;
    if ((*(v274 + 48))(v48, 1, v276) == 1)
    {
      sub_1000EEE6C(v48, &qword_1002F8000, &unk_1002262C0);
      static os_log_type_t.error.getter();
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100226100;
      v73 = [v68 recordName];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = v272;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = v77;
      *(v72 + 32) = v74;
      *(v72 + 40) = v76;
LABEL_31:
      os_log(_:dso:log:_:_:)();
    }

    v78 = v270;
    (*(v70 + 32))(v270, v48, v71);
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v79 = v265;
      v80 = sub_1000EE91C(v265, qword_100300AF0);
      v81 = v264;
      v82 = v263;
      (*(v264 + 16))(v263, v80, v79);
      v83 = sub_10018B20C(v82);

      v84 = (*(v81 + 8))(v82, v79);
    }

    else
    {
      static os_log_type_t.error.getter();
      v83 = &_swiftEmptyArrayStorage;
      v84 = os_log(_:dso:log:_:_:)();
    }

    __chkstk_darwin(v84);
    *(&v234 - 2) = v78;
    v96 = v269;
    sub_10017D118(sub_1001CB4D8, v83, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, v269);

    if ((*(v267 + 48))(v96, 1, v268) == 1)
    {
      sub_1000EEE6C(v96, &qword_1002F8520, &unk_100227B60);
      static os_log_type_t.error.getter();
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100226100;
      v98 = [v277 recordName];
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = v272;
      *(v97 + 56) = &type metadata for String;
      *(v97 + 64) = v102;
      *(v97 + 32) = v99;
      *(v97 + 40) = v101;
      v78 = v270;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v103 = v262;
      sub_1001CC214(v96, v262, type metadata accessor for DeviceRecord);
      sub_1001A9E6C(v103, v278 & 1);
      sub_1001CC1B4(v103, type metadata accessor for DeviceRecord);
    }

    return (*(v70 + 8))(v78, v71);
  }

  v85 = v276;
  if ((a2 != 0xD00000000000001ELL || 0x80000001002671E0 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v113 = v277;
    if (v67 == 0x746553636967614DLL && v66 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v114 = [v113 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = v257;
      UUID.init(uuidString:)();

      v116 = v274;
      if ((*(v274 + 48))(v115, 1, v85) != 1)
      {
        v130 = v256;
        (*(v116 + 32))(v256, v115, v85);
        if ([objc_opt_self() isFirstUnlocked])
        {
          v131 = v85;
          sub_100192340();
          if (qword_1002F7A00 != -1)
          {
            swift_once();
          }

          v132 = v265;
          v133 = sub_1000EE91C(v265, qword_100300BA8);
          v134 = v264;
          v135 = v263;
          (*(v264 + 16))(v263, v133, v132);
          v136 = sub_10018C984(v135);

          v137 = (*(v134 + 8))(v135, v132);
          v85 = v131;
          v130 = v256;
        }

        else
        {
          static os_log_type_t.error.getter();
          v136 = &_swiftEmptyArrayStorage;
          v137 = os_log(_:dso:log:_:_:)();
        }

        __chkstk_darwin(v137);
        *(&v234 - 2) = v130;
        v140 = v255;
        sub_10017D118(sub_1001CE118, v136, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v255);

        if ((*(v253 + 48))(v140, 1, v254) == 1)
        {
          sub_1000EEE6C(v140, &unk_1002F9C30, &qword_1002299A0);
          static os_log_type_t.error.getter();
          v141 = swift_allocObject();
          *(v141 + 16) = xmmword_100226100;
          v142 = [v113 recordName];
          v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v144;

          v146 = v272;
          *(v141 + 56) = &type metadata for String;
          *(v141 + 64) = v146;
          *(v141 + 32) = v143;
          *(v141 + 40) = v145;
          os_log(_:dso:log:_:_:)();
        }

        else
        {
          v147 = v252;
          sub_1001CC214(v140, v252, type metadata accessor for MagicPairingSettingsRecord);
          sub_1001AB070(v147, v278 & 1);
          sub_1001CC1B4(v147, type metadata accessor for MagicPairingSettingsRecord);
        }

        return (*(v116 + 8))(v130, v85);
      }

LABEL_30:
      sub_1000EEE6C(v115, &qword_1002F8000, &unk_1002262C0);
      static os_log_type_t.error.getter();
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_100226100;
      v118 = [v113 recordName];
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v122 = v272;
      *(v117 + 56) = &type metadata for String;
      *(v117 + 64) = v122;
      *(v117 + 32) = v119;
      *(v117 + 40) = v121;
      goto LABEL_31;
    }

    if (v67 == 0xD000000000000012 && 0x80000001002671C0 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v138 = [v113 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = v251;
      UUID.init(uuidString:)();

      v139 = v274;
      if ((*(v274 + 48))(v115, 1, v85) == 1)
      {
        goto LABEL_30;
      }

      v148 = v250;
      (*(v139 + 32))(v250, v115, v85);
      v149 = v249;
      sub_10019493C(v249);
      v150 = v248;
      if ((*(v247 + 48))(v149, 1, v248) == 1)
      {
        v151 = v272;
        sub_1000EEE6C(v149, &qword_1002F84F8, &unk_1002299F0);
      }

      else
      {
        v159 = v149;
        v160 = v246;
        sub_1001CC214(v159, v246, type metadata accessor for SoundProfileRecord);
        v161 = *(v150 + 20);
        if (static UUID.== infix(_:_:)())
        {
          sub_1001AB944(v160, 0);
          if (v278)
          {
            sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
            v162 = static OS_dispatch_queue.main.getter();
            v281 = sub_1001CE10C;
            v282 = 0;
            v278 = v162;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001742E0;
            v280 = &unk_1002C0710;
            v163 = _Block_copy(aBlock);
            v164 = v235;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = &_swiftEmptyArrayStorage;
            sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
            v165 = v237;
            v166 = v240;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v167 = v278;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v163);

            (*(v239 + 8))(v165, v166);
            (*(v236 + 8))(v164, v238);
            v168 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
            OS_dispatch_queue.sync<A>(execute:)();
            sub_1001CC1B4(v246, type metadata accessor for SoundProfileRecord);
            (*(v139 + 8))(v250, v85);
          }

          sub_1001CC1B4(v160, type metadata accessor for SoundProfileRecord);
          return (*(v139 + 8))(v148, v85);
        }

        v151 = v272;
        sub_1001CC1B4(v160, type metadata accessor for SoundProfileRecord);
      }

      static os_log_type_t.error.getter();
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_100226100;
      v170 = [v277 recordName];
      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;

      *(v169 + 56) = &type metadata for String;
      *(v169 + 64) = v151;
      *(v169 + 32) = v171;
      *(v169 + 40) = v173;
      os_log(_:dso:log:_:_:)();

      return (*(v139 + 8))(v148, v85);
    }

    if (v67 == 0x6563697665444141 && v66 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v280 = &type metadata for AudioAccessoryFeatures;
      v152 = sub_1000F1874();
      v281 = v152;
      v153 = isFeatureEnabled(_:)();
      sub_1000EF824(aBlock);
      if (v153)
      {
        v154 = v272;
        v155 = v277;
        v156 = [v277 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v157 = v245;
        UUID.init(uuidString:)();

        v158 = v274;
        if ((*(v274 + 48))(v157, 1, v85) == 1)
        {
          goto LABEL_70;
        }

        v182 = v241;
        (*(v158 + 32))(v241, v157, v85);
        v280 = &type metadata for AudioAccessoryFeatures;
        v281 = v152;
        v183 = isFeatureEnabled(_:)();
        v184 = sub_1000EF824(aBlock);
        if (v183)
        {
          v185 = [objc_opt_self() isFirstUnlocked];
          v186 = v278;
          if (v185)
          {
            sub_100192340();
            if (qword_1002F7AB8 != -1)
            {
              swift_once();
            }

            v187 = v265;
            v188 = sub_1000EE91C(v265, qword_100300D88);
            v189 = v264;
            v190 = v263;
            (*(v264 + 16))(v263, v188, v187);
            v191 = sub_10018E14C(v190, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

            v184 = (*(v189 + 8))(v190, v187);
            v85 = v276;
            v182 = v241;
          }

          else
          {
            static os_log_type_t.error.getter();
            v191 = &_swiftEmptyArrayStorage;
            v184 = os_log(_:dso:log:_:_:)();
          }
        }

        else
        {
          v191 = &_swiftEmptyArrayStorage;
          v186 = v278;
        }

        __chkstk_darwin(v184);
        *(&v234 - 2) = v182;
        v225 = sub_10017D320(sub_1001CB464, (&v234 - 4), v191);

        if (v225)
        {
          sub_1001AC244(v225, v186 & 1);

          return (*(v158 + 8))(v182, v85);
        }

        goto LABEL_105;
      }
    }

    else if ((v67 != 0xD000000000000011 || 0x800000010026EAC0 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((v67 != 0xD000000000000013 || 0x8000000100267B10 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        static os_log_type_t.error.getter();
        v232 = swift_allocObject();
        *(v232 + 16) = xmmword_100226100;
        v233 = v272;
        *(v232 + 56) = &type metadata for String;
        *(v232 + 64) = v233;
        *(v232 + 32) = v67;
        *(v232 + 40) = v66;

        os_log(_:dso:log:_:_:)();
      }

      goto LABEL_87;
    }

    v280 = &type metadata for AudioAccessoryFeatures;
    v174 = sub_1000F1874();
    v281 = v174;
    v175 = isFeatureEnabled(_:)();
    sub_1000EF824(aBlock);
    if (v175)
    {
      v154 = v272;
      v155 = v277;
      v176 = [v277 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v157 = v243;
      UUID.init(uuidString:)();

      v158 = v274;
      if ((*(v274 + 48))(v157, 1, v85) == 1)
      {
LABEL_70:
        sub_1000EEE6C(v157, &qword_1002F8000, &unk_1002262C0);
        static os_log_type_t.error.getter();
        v177 = swift_allocObject();
        *(v177 + 16) = xmmword_100226100;
        v178 = [v155 recordName];
        v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = v180;

        *(v177 + 56) = &type metadata for String;
        *(v177 + 64) = v154;
        *(v177 + 32) = v179;
        *(v177 + 40) = v181;
        goto LABEL_31;
      }

      v182 = v234;
      (*(v158 + 32))(v234, v157, v85);
      v280 = &type metadata for AudioAccessoryFeatures;
      v281 = v174;
      v192 = isFeatureEnabled(_:)();
      v193 = sub_1000EF824(aBlock);
      if (v192)
      {
        v194 = [objc_opt_self() isFirstUnlocked];
        v195 = v278;
        if (v194)
        {
          sub_100192340();
          if (qword_1002F79D0 != -1)
          {
            swift_once();
          }

          v196 = v265;
          v197 = sub_1000EE91C(v265, qword_100300B10);
          v198 = v264;
          v199 = v263;
          (*(v264 + 16))(v263, v197, v196);
          v200 = sub_10018E14C(v199, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

          v193 = (*(v198 + 8))(v199, v196);
          v85 = v276;
          v182 = v234;
        }

        else
        {
          static os_log_type_t.error.getter();
          v200 = &_swiftEmptyArrayStorage;
          v193 = os_log(_:dso:log:_:_:)();
        }
      }

      else
      {
        v200 = &_swiftEmptyArrayStorage;
        v195 = v278;
      }

      __chkstk_darwin(v193);
      *(&v234 - 2) = v182;
      v226 = sub_10017D320(sub_1001CB420, (&v234 - 4), v200);

      if (v226)
      {
        sub_1001ACB04(v226, v195 & 1);

        return (*(v158 + 8))(v182, v85);
      }

LABEL_105:
      static os_log_type_t.error.getter();
      v227 = swift_allocObject();
      *(v227 + 16) = xmmword_100226100;
      v228 = [v277 recordName];
      v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v231 = v230;

      *(v227 + 56) = &type metadata for String;
      *(v227 + 64) = v154;
      *(v227 + 32) = v229;
      *(v227 + 40) = v231;
      os_log(_:dso:log:_:_:)();

      return (*(v158 + 8))(v182, v85);
    }

LABEL_87:
    v201 = v277;
    v202 = [v277 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = v244;
    UUID.init(uuidString:)();

    v204 = v274;
    if ((*(v274 + 48))(v203, 1, v85) == 1)
    {
      sub_1000EEE6C(v203, &qword_1002F8000, &unk_1002262C0);
      static os_log_type_t.error.getter();
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_100226100;
      v206 = [v201 recordName];
      v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v208;

      v210 = v272;
      *(v205 + 56) = &type metadata for String;
      *(v205 + 64) = v210;
      *(v205 + 32) = v207;
      *(v205 + 40) = v209;
      goto LABEL_31;
    }

    v211 = v242;
    (*(v204 + 32))(v242, v203, v85);
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v212 = v265;
      v213 = sub_1000EE91C(v265, qword_100300C40);
      v214 = v264;
      v215 = v263;
      (*(v264 + 16))(v263, v213, v212);
      v216 = sub_10018E14C(v215, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      v217 = (*(v214 + 8))(v215, v212);
      v211 = v242;
    }

    else
    {
      static os_log_type_t.error.getter();
      v216 = &_swiftEmptyArrayStorage;
      v217 = os_log(_:dso:log:_:_:)();
    }

    __chkstk_darwin(v217);
    *(&v234 - 2) = v211;
    v218 = sub_10017D320(sub_1001CB3DC, (&v234 - 4), v216);

    if (v218)
    {
      sub_1001AD3A0(v218, v278 & 1);
    }

    else
    {
      static os_log_type_t.error.getter();
      v219 = swift_allocObject();
      *(v219 + 16) = xmmword_100226100;
      v220 = [v201 recordName];
      v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v223 = v222;

      v224 = v272;
      *(v219 + 56) = &type metadata for String;
      *(v219 + 64) = v224;
      *(v219 + 32) = v221;
      *(v219 + 40) = v223;
      os_log(_:dso:log:_:_:)();
    }

    return (*(v204 + 8))(v211, v85);
  }

  v86 = v272;
  v87 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  v88 = v277;
  v89 = [v277 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v90 = v274;
  if ((*(v274 + 48))(v45, 1, v85) == 1)
  {
    sub_1000EEE6C(v45, &qword_1002F8000, &unk_1002262C0);
    static os_log_type_t.error.getter();
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100226100;
    v92 = [v88 recordName];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = v86;
    *(v91 + 32) = v93;
    *(v91 + 40) = v95;
    goto LABEL_31;
  }

  (*(v90 + 32))(v266, v45, v85);
  if ([objc_opt_self() isFirstUnlocked])
  {
    v105 = v85;
    sub_100192340();
    v106 = v278;
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v107 = v265;
    v108 = sub_1000EE91C(v265, qword_100300D48);
    v109 = v264;
    v110 = v263;
    (*(v264 + 16))(v263, v108, v107);
    v111 = sub_10018BDC8(v110);

    v112 = (*(v109 + 8))(v110, v107);
    v85 = v105;
    v87 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  }

  else
  {
    static os_log_type_t.error.getter();
    v111 = &_swiftEmptyArrayStorage;
    v112 = os_log(_:dso:log:_:_:)();
    v106 = v278;
  }

  __chkstk_darwin(v112);
  *(&v234 - 2) = v266;
  v123 = v261;
  sub_10017D118(sub_1001CB4A8, v111, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, v261);

  if ((*(v259 + 48))(v123, 1, v260) == 1)
  {
    sub_1000EEE6C(v123, &qword_1002F8510, &unk_100227B50);
    static os_log_type_t.error.getter();
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_100226100;
    v125 = [v88 v87[381]];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    *(v124 + 56) = &type metadata for String;
    *(v124 + 64) = v86;
    *(v124 + 32) = v126;
    *(v124 + 40) = v128;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v129 = v258;
    sub_1001CC214(v123, v258, type metadata accessor for DeviceSupportInformationRecord);
    sub_1001AA79C(v129, v106 & 1);
    sub_1001CC1B4(v129, type metadata accessor for DeviceSupportInformationRecord);
  }

  return (*(v90 + 8))(v266, v85);
}

uint64_t sub_1001A9C24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000EE954();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = sub_1000EA6CC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001A9E6C(a2, 0);
    }
  }

  return result;
}

uint64_t sub_1001A9E6C(uint64_t a1, int a2)
{
  v78 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v75 = &v65 - v5;
  v6 = type metadata accessor for URL();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v65 - v10;
  __chkstk_darwin(v11);
  v73 = &v65 - v12;
  v76 = type metadata accessor for DeviceRecord();
  v65 = *(v76 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v76);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E38;
  v70 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002289A0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v17 + 64) = v18;
  strcpy((v17 + 32), "DeviceRecord");
  *(v17 + 45) = 0;
  *(v17 + 46) = -5120;
  *(v17 + 96) = &type metadata for Bool;
  *(v17 + 104) = &protocol witness table for Bool;
  v67 = v78 & 1;
  *(v17 + 72) = v78 & 1;
  sub_1001CC14C(a1, v15, type metadata accessor for DeviceRecord);
  v19 = String.init<A>(describing:)();
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  v69 = v18;
  *(v17 + 112) = v19;
  *(v17 + 120) = v20;
  v68 = v16;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F8490(a1).super.isa;
  }

  v80[0] = isa;
  v23 = isa;
  sub_1000EC524(v80);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  v27 = v74;
  if (v26 && (v79 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v29 = v80[0];
    v28 = v80[1];
  }

  else
  {
    v30 = a1 + *(v76 + 20);
    v29 = UUID.uuidString.getter();
    v28 = v31;
  }

  v66 = a1;
  v32 = v77;
  v33 = sub_100192340();
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000EE91C(v6, qword_100300AF0);
  v35 = v73;
  v36 = (*(v27 + 16))(v73, v34, v6);
  v37 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v36);
  *(&v65 - 4) = v33;
  *(&v65 - 3) = v29;
  *(&v65 - 2) = v28;
  *(&v65 - 1) = v35;
  OS_dispatch_queue.sync<A>(execute:)();

  v38 = *(v27 + 8);
  v38(v35, v6);
  v39 = *(v32 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v40 = v75;
  URL.init(string:)();
  result = (*(v27 + 48))(v40, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v42 = *(v27 + 32);
    v43 = v71;
    v42(v71, v40, v6);
    v44 = v72;
    URL.appendingPathComponent(_:)();
    v45 = (v38)(v43, v6);
    v46 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v45);
    *(&v65 - 4) = v39;
    *(&v65 - 3) = v29;
    v76 = v29;
    *(&v65 - 2) = v28;
    *(&v65 - 1) = v44;
    OS_dispatch_queue.sync<A>(execute:)();

    v38(v44, v6);
    v47 = v77;
    v48 = v78;
    if ((v78 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&unk_1002F9CE0, &qword_100229A08);
      v49 = *(v65 + 72);
      v50 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100226100;
      sub_1001CC14C(v66, v51 + v50, type metadata accessor for DeviceRecord);
      sub_100181FF0(v51, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100226C80;
      v53 = v69;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v53;
      v54 = v76;
      *(v52 + 32) = v76;
      *(v52 + 40) = v28;
      *(v52 + 96) = &type metadata for Bool;
      *(v52 + 104) = &protocol witness table for Bool;
      *(v52 + 72) = v67;

      os_log(_:dso:log:_:_:)();

      if (v48)
      {
        v55 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v56 = *(v47 + v55);

        v57 = sub_10017D5B4(v54, v28, v56);

        if (v57)
        {
          swift_beginAccess();
          v58 = sub_1001C9F04(v54, v28);
          v60 = v59;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_100226100;
          v62 = v69;
          *(v61 + 56) = &type metadata for String;
          *(v61 + 64) = v62;
          v63 = 0x3E6C6C754E3CLL;
          if (v60)
          {
            v63 = v58;
          }

          v64 = 0xE600000000000000;
          if (v60)
          {
            v64 = v60;
          }

          *(v61 + 32) = v63;
          *(v61 + 40) = v64;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v54, v28, v48 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AA79C(uint64_t a1, int a2)
{
  v77 = a1;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v76 = &v66 - v5;
  v6 = type metadata accessor for URL();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v66 - v10;
  __chkstk_darwin(v11);
  v75 = &v66 - v12;
  v13 = type metadata accessor for DeviceSupportInformationRecord();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v17 = qword_100300E38;
  v68 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002289A0;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_1000EE954();
  *(v18 + 64) = v19;
  *(v18 + 32) = 0xD00000000000001ELL;
  *(v18 + 40) = 0x80000001002671E0;
  v78 = 0x80000001002671E0;
  *(v18 + 96) = &type metadata for Bool;
  *(v18 + 104) = &protocol witness table for Bool;
  v73 = a2;
  v67 = a2 & 1;
  *(v18 + 72) = a2 & 1;
  v20 = v77;
  sub_1001CC14C(v77, v16, type metadata accessor for DeviceSupportInformationRecord);
  v21 = String.init<A>(describing:)();
  *(v18 + 136) = &type metadata for String;
  *(v18 + 144) = v19;
  v69 = v19;
  *(v18 + 112) = v21;
  *(v18 + 120) = v22;
  v70 = v17;
  os_log(_:dso:log:_:_:)();

  v23 = objc_autoreleasePoolPush();
  sub_100135EE0(v20, v81);
  objc_autoreleasePoolPop(v23);
  v24 = v81[0];
  v25 = [(objc_class *)v81[0] encryptedValues];

  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];
  swift_unknownObjectRelease();

  v28 = v74;
  if (v27 && (v80 = v27, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v30 = v81[0];
    v29 = v81[1];
  }

  else
  {
    v30 = UUID.uuidString.getter();
    v29 = v31;
  }

  v32 = v79;
  v33 = sub_100192340();
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v34 = sub_1000EE91C(v6, qword_100300D48);
  v35 = v75;
  v36 = (*(v28 + 16))(v75, v34, v6);
  v37 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v36);
  *(&v66 - 4) = v33;
  *(&v66 - 3) = v30;
  *(&v66 - 2) = v29;
  *(&v66 - 1) = v35;
  OS_dispatch_queue.sync<A>(execute:)();

  v38 = *(v28 + 8);
  v38(v35, v6);
  v39 = v29;
  v40 = v30;
  v41 = *(v32 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v42 = v76;
  URL.init(string:)();
  result = (*(v28 + 48))(v42, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = v71;
    (*(v28 + 32))(v71, v42, v6);
    v45 = v72;
    URL.appendingPathComponent(_:)();
    v46 = (v38)(v44, v6);
    v47 = *(v41 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v46);
    *(&v66 - 4) = v41;
    *(&v66 - 3) = v40;
    v76 = v40;
    *(&v66 - 2) = v39;
    *(&v66 - 1) = v45;
    OS_dispatch_queue.sync<A>(execute:)();

    v38(v45, v6);
    v48 = v79;
    v49 = v73;
    if ((v73 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9CD8, &qword_100229A00);
      v50 = *(v66 + 72);
      v51 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100226100;
      sub_1001CC14C(v77, v52 + v51, type metadata accessor for DeviceSupportInformationRecord);
      sub_10017F63C(v52);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100226C80;
      v54 = v69;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v54;
      v55 = v76;
      *(v53 + 32) = v76;
      *(v53 + 40) = v39;
      *(v53 + 96) = &type metadata for Bool;
      *(v53 + 104) = &protocol witness table for Bool;
      *(v53 + 72) = v67;

      os_log(_:dso:log:_:_:)();

      if (v49)
      {
        v56 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v57 = *(v48 + v56);

        v58 = sub_10017D5B4(v55, v39, v57);

        if (v58)
        {
          swift_beginAccess();
          v59 = sub_1001C9F04(v55, v39);
          v61 = v60;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_100226100;
          v63 = v69;
          *(v62 + 56) = &type metadata for String;
          *(v62 + 64) = v63;
          v64 = 0x3E6C6C754E3CLL;
          if (v61)
          {
            v64 = v59;
          }

          v65 = 0xE600000000000000;
          if (v61)
          {
            v65 = v61;
          }

          *(v62 + 32) = v64;
          *(v62 + 40) = v65;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v55, v39, v49 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AB070(uint64_t a1, int a2)
{
  v78 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v75 = &v65 - v5;
  v72 = type metadata accessor for URL();
  v74 = *(v72 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v72);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v65 - v9;
  __chkstk_darwin(v10);
  v73 = &v65 - v11;
  v12 = type metadata accessor for MagicPairingSettingsRecord();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E38;
  v70 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002289A0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v17 + 64) = v18;
  strcpy((v17 + 32), "MagicSettings");
  *(v17 + 46) = -4864;
  *(v17 + 96) = &type metadata for Bool;
  *(v17 + 104) = &protocol witness table for Bool;
  v68 = v78 & 1;
  *(v17 + 72) = v78 & 1;
  sub_1001CC14C(a1, v15, type metadata accessor for MagicPairingSettingsRecord);
  v19 = String.init<A>(describing:)();
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  v76 = v18;
  *(v17 + 112) = v19;
  *(v17 + 120) = v20;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(a1 + *(v12 + 20)), *(a1 + *(v12 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v80[0] = isa;
  v23 = isa;
  sub_10011A7B0(v80);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  v27 = v74;
  v71 = v16;
  if (v26 && (v79 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v72;
    v30 = v80[0];
    v29 = v80[1];
  }

  else
  {
    v28 = v72;
    v30 = UUID.uuidString.getter();
  }

  v31 = v29;
  v66 = a1;
  v32 = v77;
  v33 = sub_100192340();
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v34 = sub_1000EE91C(v28, qword_100300BA8);
  v35 = v73;
  v36 = (*(v27 + 16))(v73, v34, v28);
  v37 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v36);
  *(&v65 - 4) = v33;
  *(&v65 - 3) = v30;
  v72 = v31;
  *(&v65 - 2) = v31;
  *(&v65 - 1) = v35;
  OS_dispatch_queue.sync<A>(execute:)();

  v38 = *(v27 + 8);
  v38(v35, v28);
  v39 = *(v32 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v40 = v75;
  URL.init(string:)();
  result = (*(v27 + 48))(v40, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v42 = v67;
    (*(v27 + 32))(v67, v40, v28);
    v43 = v69;
    URL.appendingPathComponent(_:)();
    v44 = (v38)(v42, v28);
    v45 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v44);
    *(&v65 - 4) = v39;
    *(&v65 - 3) = v30;
    v75 = v30;
    v46 = v72;
    *(&v65 - 2) = v72;
    *(&v65 - 1) = v43;
    OS_dispatch_queue.sync<A>(execute:)();

    v38(v43, v28);
    v47 = v77;
    v48 = v78;
    if ((v78 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&unk_1002F9CF0, &unk_100229A10);
      v49 = *(v65 + 72);
      v50 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100226100;
      sub_1001CC14C(v66, v51 + v50, type metadata accessor for MagicPairingSettingsRecord);
      sub_10017EEAC(v51);

      swift_unknownObjectRelease();
    }

    static os_log_type_t.default.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100226C80;
    v54 = v75;
    v53 = v76;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 64) = v53;
    *(v52 + 32) = v54;
    *(v52 + 40) = v46;
    *(v52 + 96) = &type metadata for Bool;
    *(v52 + 104) = &protocol witness table for Bool;
    *(v52 + 72) = v68;

    os_log(_:dso:log:_:_:)();

    if (v48)
    {
      v55 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
      swift_beginAccess();
      v56 = *(v47 + v55);

      v57 = sub_10017D5B4(v54, v46, v56);

      if (v57)
      {
        swift_beginAccess();
        v58 = sub_1001C9F04(v54, v46);
        v60 = v59;
        swift_endAccess();
        static os_log_type_t.default.getter();
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_100226100;
        v62 = v76;
        *(v61 + 56) = &type metadata for String;
        *(v61 + 64) = v62;
        v63 = 0x3E6C6C754E3CLL;
        if (v60)
        {
          v63 = v58;
        }

        v64 = 0xE600000000000000;
        if (v60)
        {
          v64 = v60;
        }

        *(v61 + 32) = v63;
        *(v61 + 40) = v64;
        os_log(_:dso:log:_:_:)();
      }
    }

    sub_1001C40D4(v54, v46, v48 & 1);
  }

  return result;
}

uint64_t sub_1001AB944(uint64_t a1, int a2)
{
  v82 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v78 = &v67 - v5;
  v6 = type metadata accessor for URL();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v6);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = &v67 - v10;
  __chkstk_darwin(v11);
  v77 = &v67 - v12;
  v79 = type metadata accessor for SoundProfileRecord();
  v68 = *(v79 - 8);
  v13 = *(v68 + 64);
  __chkstk_darwin(v79);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E38;
  v71 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002289A0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v17 + 64) = v18;
  *(v17 + 32) = 0xD000000000000012;
  *(v17 + 40) = 0x80000001002671C0;
  v80 = 0x80000001002671C0;
  *(v17 + 96) = &type metadata for Bool;
  *(v17 + 104) = &protocol witness table for Bool;
  v70 = v82 & 1;
  *(v17 + 72) = v82 & 1;
  sub_1001CC14C(a1, v15, type metadata accessor for SoundProfileRecord);
  v19 = String.init<A>(describing:)();
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  v72 = v18;
  *(v17 + 112) = v19;
  *(v17 + 120) = v20;
  v73 = v16;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F82C4(a1).super.isa;
  }

  v84[0] = isa;
  v23 = isa;
  sub_1000FD23C(v84);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  v27 = v76;
  v69 = a1;
  if (v26 && (v83 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v29 = v84[0];
    v28 = v84[1];
  }

  else
  {
    v30 = a1 + *(v79 + 20);
    v29 = UUID.uuidString.getter();
    v28 = v31;
  }

  v32 = v81;
  v33 = sub_100192340();
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000EE91C(v6, qword_100300B50);
  v35 = v77;
  v36 = (*(v27 + 16))(v77, v34, v6);
  v37 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v36);
  *(&v67 - 4) = v33;
  *(&v67 - 3) = v29;
  *(&v67 - 2) = v28;
  *(&v67 - 1) = v35;
  OS_dispatch_queue.sync<A>(execute:)();

  v38 = *(v27 + 8);
  v38(v35, v6);
  v39 = v28;
  v40 = v29;
  v41 = *(v32 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v42 = v78;
  URL.init(string:)();
  result = (*(v27 + 48))(v42, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = v74;
    (*(v27 + 32))(v74, v42, v6);
    v45 = v75;
    URL.appendingPathComponent(_:)();
    v46 = (v38)(v44, v6);
    v47 = *(v41 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v46);
    *(&v67 - 4) = v41;
    *(&v67 - 3) = v40;
    v79 = v40;
    *(&v67 - 2) = v39;
    *(&v67 - 1) = v45;
    OS_dispatch_queue.sync<A>(execute:)();

    v38(v45, v6);
    v48 = v81;
    v49 = v82;
    v50 = v39;
    if ((v82 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9D58, &unk_100229A30);
      v51 = *(v68 + 72);
      v52 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100226100;
      sub_1001CC14C(v69, v53 + v52, type metadata accessor for SoundProfileRecord);
      sub_10017E918(v53);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100226C80;
      v55 = v72;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v55;
      v56 = v79;
      *(v54 + 32) = v79;
      *(v54 + 40) = v50;
      *(v54 + 96) = &type metadata for Bool;
      *(v54 + 104) = &protocol witness table for Bool;
      *(v54 + 72) = v70;

      os_log(_:dso:log:_:_:)();

      if (v49)
      {
        v57 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v58 = *(v48 + v57);

        v59 = sub_10017D5B4(v56, v50, v58);

        if (v59)
        {
          swift_beginAccess();
          v60 = sub_1001C9F04(v56, v50);
          v62 = v61;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_100226100;
          v64 = v72;
          *(v63 + 56) = &type metadata for String;
          *(v63 + 64) = v64;
          v65 = 0x3E6C6C754E3CLL;
          if (v62)
          {
            v65 = v60;
          }

          v66 = 0xE600000000000000;
          if (v62)
          {
            v66 = v62;
          }

          *(v63 + 32) = v65;
          *(v63 + 40) = v66;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v56, v50, v49 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AC244(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v74 = &v64 - v6;
  v7 = type metadata accessor for URL();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v64 - v11;
  __chkstk_darwin(v12);
  v73 = &v64 - v13;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v67 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  strcpy((v15 + 32), "AADeviceRecord");
  *(v15 + 47) = -18;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v71 = a2;
  v65 = a2 & 1;
  *(v15 + 72) = a2 & 1;
  v77[0] = a1;
  type metadata accessor for AADeviceRecord();
  v17 = a1;
  v18 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v66 = v16;
  *(v15 + 112) = v18;
  *(v15 + 120) = v19;
  v68 = v14;
  os_log(_:dso:log:_:_:)();

  v20 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v17[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v17[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F89F4().super.isa;
  }

  v22 = v72;
  v77[0] = isa;
  v23 = isa;
  sub_1001675F4(v77);
  objc_autoreleasePoolPop(v20);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  v64 = v17;
  if (v26 && (v76 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v77[0];
    v28 = v77[1];
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v28 = v29;
  }

  v30 = v75;
  v31 = sub_100192340();
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EE91C(v7, qword_100300D88);
  v33 = v73;
  v34 = (*(v22 + 16))(v73, v32, v7);
  v35 = *(v31 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v34);
  *(&v64 - 4) = v31;
  *(&v64 - 3) = v27;
  *(&v64 - 2) = v28;
  *(&v64 - 1) = v33;
  OS_dispatch_queue.sync<A>(execute:)();

  v36 = *(v22 + 8);
  v36(v33, v7);
  v37 = v28;
  v38 = v27;
  v39 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v40 = v74;
  URL.init(string:)();
  result = (*(v22 + 48))(v40, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v42 = v69;
    (*(v22 + 32))(v69, v40, v7);
    v43 = v70;
    URL.appendingPathComponent(_:)();
    v44 = (v36)(v42, v7);
    v45 = *&v39[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
    __chkstk_darwin(v44);
    *(&v64 - 4) = v39;
    *(&v64 - 3) = v38;
    v74 = v38;
    *(&v64 - 2) = v37;
    *(&v64 - 1) = v43;
    OS_dispatch_queue.sync<A>(execute:)();

    v36(v43, v7);
    v46 = v75;
    v47 = v71;
    if ((v71 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1002290F0;
      v49 = v64;
      *(v48 + 32) = v64;
      v50 = v49;
      sub_10018150C(v48, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100226C80;
      v52 = v66;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = v52;
      v53 = v74;
      *(v51 + 32) = v74;
      *(v51 + 40) = v37;
      *(v51 + 96) = &type metadata for Bool;
      *(v51 + 104) = &protocol witness table for Bool;
      *(v51 + 72) = v65;

      os_log(_:dso:log:_:_:)();

      if (v47)
      {
        v54 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v55 = *(v46 + v54);

        v56 = sub_10017D5B4(v53, v37, v55);

        if (v56)
        {
          swift_beginAccess();
          v57 = sub_1001C9F04(v53, v37);
          v59 = v58;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_100226100;
          v61 = v66;
          *(v60 + 56) = &type metadata for String;
          *(v60 + 64) = v61;
          v62 = 0x3E6C6C754E3CLL;
          if (v59)
          {
            v62 = v57;
          }

          v63 = 0xE600000000000000;
          if (v59)
          {
            v63 = v59;
          }

          *(v60 + 32) = v62;
          *(v60 + 40) = v63;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v53, v37, v47 & 1);
    }
  }

  return result;
}

uint64_t sub_1001ACB04(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v71 = &v62 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v62 - v12;
  __chkstk_darwin(v13);
  v70 = &v62 - v14;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v15 = qword_100300E38;
  v65 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002289A0;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_1000EE954();
  *(v16 + 64) = v17;
  *(v16 + 32) = 0xD000000000000011;
  *(v16 + 40) = 0x800000010026EAC0;
  v72 = 0x800000010026EAC0;
  *(v16 + 96) = &type metadata for Bool;
  *(v16 + 104) = &protocol witness table for Bool;
  v69 = a2;
  v63 = a2 & 1;
  *(v16 + 72) = a2 & 1;
  v75[0] = a1;
  type metadata accessor for AAProxCardsRecord();
  v18 = a1;
  v19 = String.init<A>(describing:)();
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  v64 = v17;
  *(v16 + 112) = v19;
  *(v16 + 120) = v20;
  v66 = v15;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v18[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v18[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F882C().super.isa;
  }

  v75[0] = isa;
  v23 = isa;
  sub_1000F6FF4(v75);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  if (v26 && (v74 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v75[0];
    v27 = v75[1];
  }

  else
  {
    v28 = UUID.uuidString.getter();
    v27 = v29;
  }

  v62 = v18;
  v30 = v73;
  v31 = sub_100192340();
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EE91C(v7, qword_100300B10);
  v33 = v70;
  v34 = (*(v8 + 16))(v70, v32, v7);
  v35 = *(v31 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v34);
  *(&v62 - 4) = v31;
  *(&v62 - 3) = v28;
  *(&v62 - 2) = v27;
  *(&v62 - 1) = v33;
  OS_dispatch_queue.sync<A>(execute:)();

  v36 = *(v8 + 8);
  v36(v33, v7);
  v37 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v38 = v71;
  URL.init(string:)();
  result = (*(v8 + 48))(v38, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v67;
    (*(v8 + 32))(v67, v38, v7);
    v41 = v68;
    URL.appendingPathComponent(_:)();
    v42 = (v36)(v40, v7);
    v43 = *&v37[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
    __chkstk_darwin(v42);
    *(&v62 - 4) = v37;
    *(&v62 - 3) = v28;
    v71 = v28;
    *(&v62 - 2) = v27;
    *(&v62 - 1) = v41;
    OS_dispatch_queue.sync<A>(execute:)();

    v36(v41, v7);
    v44 = v69;
    if ((v69 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002290F0;
      v46 = v62;
      *(v45 + 32) = v62;
      v47 = v46;
      sub_100180998(v45, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100226C80;
      v49 = v64;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v49;
      v50 = v71;
      *(v48 + 32) = v71;
      *(v48 + 40) = v27;
      *(v48 + 96) = &type metadata for Bool;
      *(v48 + 104) = &protocol witness table for Bool;
      *(v48 + 72) = v63;

      os_log(_:dso:log:_:_:)();

      v51 = v73;
      if (v44)
      {
        v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v53 = *(v51 + v52);

        v54 = sub_10017D5B4(v50, v27, v53);

        if (v54)
        {
          swift_beginAccess();
          v55 = sub_1001C9F04(v50, v27);
          v57 = v56;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100226100;
          v59 = v64;
          *(v58 + 56) = &type metadata for String;
          *(v58 + 64) = v59;
          v60 = 0x3E6C6C754E3CLL;
          if (v57)
          {
            v60 = v55;
          }

          v61 = 0xE600000000000000;
          if (v57)
          {
            v61 = v57;
          }

          *(v58 + 32) = v60;
          *(v58 + 40) = v61;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v50, v27, v44 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AD3A0(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v71 = &v62 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v62 - v12;
  __chkstk_darwin(v13);
  v70 = &v62 - v14;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v15 = qword_100300E38;
  v65 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002289A0;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_1000EE954();
  *(v16 + 64) = v17;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = 0x8000000100267B10;
  v72 = 0x8000000100267B10;
  *(v16 + 96) = &type metadata for Bool;
  *(v16 + 104) = &protocol witness table for Bool;
  v69 = a2;
  v63 = a2 & 1;
  *(v16 + 72) = a2 & 1;
  v75[0] = a1;
  type metadata accessor for HMDeviceCloudRecord();
  v18 = a1;
  v19 = String.init<A>(describing:)();
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  v64 = v17;
  *(v16 + 112) = v19;
  *(v16 + 120) = v20;
  v66 = v15;
  os_log(_:dso:log:_:_:)();

  v21 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v18[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v18[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F8660().super.isa;
  }

  v75[0] = isa;
  v23 = isa;
  sub_10012F138(v75);
  objc_autoreleasePoolPop(v21);
  v24 = [v23 encryptedValues];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKeyedSubscript:v25];
  swift_unknownObjectRelease();

  if (v26 && (v74 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v75[0];
    v27 = v75[1];
  }

  else
  {
    v28 = UUID.uuidString.getter();
    v27 = v29;
  }

  v62 = v18;
  v30 = v73;
  v31 = sub_100192340();
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EE91C(v7, qword_100300C40);
  v33 = v70;
  v34 = (*(v8 + 16))(v70, v32, v7);
  v35 = *(v31 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v34);
  *(&v62 - 4) = v31;
  *(&v62 - 3) = v28;
  *(&v62 - 2) = v27;
  *(&v62 - 1) = v33;
  OS_dispatch_queue.sync<A>(execute:)();

  v36 = *(v8 + 8);
  v36(v33, v7);
  v37 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v38 = v71;
  URL.init(string:)();
  result = (*(v8 + 48))(v38, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v67;
    (*(v8 + 32))(v67, v38, v7);
    v41 = v68;
    URL.appendingPathComponent(_:)();
    v42 = (v36)(v40, v7);
    v43 = *&v37[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
    __chkstk_darwin(v42);
    *(&v62 - 4) = v37;
    *(&v62 - 3) = v28;
    v71 = v28;
    *(&v62 - 2) = v27;
    *(&v62 - 1) = v41;
    OS_dispatch_queue.sync<A>(execute:)();

    v36(v41, v7);
    v44 = v69;
    if ((v69 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002290F0;
      v46 = v62;
      *(v45 + 32) = v62;
      v47 = v46;
      sub_10017FDB0(v45, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_, sub_100172070);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      static os_log_type_t.default.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100226C80;
      v49 = v64;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v49;
      v50 = v71;
      *(v48 + 32) = v71;
      *(v48 + 40) = v27;
      *(v48 + 96) = &type metadata for Bool;
      *(v48 + 104) = &protocol witness table for Bool;
      *(v48 + 72) = v63;

      os_log(_:dso:log:_:_:)();

      v51 = v73;
      if (v44)
      {
        v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v53 = *(v51 + v52);

        v54 = sub_10017D5B4(v50, v27, v53);

        if (v54)
        {
          swift_beginAccess();
          v55 = sub_1001C9F04(v50, v27);
          v57 = v56;
          swift_endAccess();
          static os_log_type_t.default.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100226100;
          v59 = v64;
          *(v58 + 56) = &type metadata for String;
          *(v58 + 64) = v59;
          v60 = 0x3E6C6C754E3CLL;
          if (v57)
          {
            v60 = v55;
          }

          v61 = 0xE600000000000000;
          if (v57)
          {
            v61 = v57;
          }

          *(v58 + 32) = v60;
          *(v58 + 40) = v61;
          os_log(_:dso:log:_:_:)();
        }
      }

      sub_1001C40D4(v50, v27, v44 & 1);
    }
  }

  return result;
}

uint64_t sub_1001ADC50(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v101 = a3;
  v102 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v89 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = (&v89 - v14);
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  v96 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v18 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v95 = &v89 - v19;
  v20 = type metadata accessor for DeviceSupportInformationRecord();
  v97 = *(v20 - 8);
  v98 = v20;
  v21 = *(v97 + 64);
  __chkstk_darwin(v20);
  v90 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v91 = v3;
  v92 = &v89 - v24;
  v25 = sub_100192340();
  v100 = a1;
  v26 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v29 = sub_1000EE91C(v8, qword_100300D48);
  (*(v9 + 16))(v17, v29, v8);
  v30 = objc_autoreleasePoolPush();
  v94 = v17;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v31 = v99;
  v93 = v28;
  URL.appendingPathComponent(_:)();
  v32 = *(v9 + 8);
  v32(v12, v8);
  objc_autoreleasePoolPop(v30);
  v33 = objc_autoreleasePoolPush();
  v34 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v33);
  *(&v89 - 2) = v31;
  *(&v89 - 1) = v25;
  v35 = v95;
  v36 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v33);
  v32(v31, v8);

  v32(v94, v8);
  if ((*(v97 + 48))(v35, 1, v98) == 1)
  {
    sub_1000EEE6C(v35, &qword_1002F8510, &unk_100227B50);
    static os_log_type_t.default.getter();
    v37 = v100;
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100226100;
    v39 = v37;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000EE954();
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    os_log(_:dso:log:_:_:)();

    v44 = v39;
    v45 = v89;
    UUID.init()();
    v46 = v92;
    v47 = sub_10013403C(v45, v44, v92);
LABEL_15:
    v75 = v91;
    v76 = *(v91 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v77 = *&v76[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
    __chkstk_darwin(v47);
    *(&v89 - 2) = v76;
    *(&v89 - 1) = v46;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v36)
    {

      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100226100;
      v103[0] = v36;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v79 = String.init<A>(describing:)();
      v81 = v80;
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_1000EE954();
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      os_log(_:dso:log:_:_:)();

      sub_1001266E0();
      v82 = swift_allocError();
      *v83 = v36 | 0x4000000000000000;
      swift_errorRetain();
      v102(v82);
    }

    else
    {

      v102(0);
      v84 = objc_autoreleasePoolPush();
      sub_100135EE0(v46, v103);
      objc_autoreleasePoolPop(v84);
      v85 = v103[0];
      sub_100193560();
      v86 = swift_allocObject();
      *(v86 + 16) = v75;
      *(v86 + 24) = v85;

      v87 = v85;
      sub_100154534(v87, 1, sub_1001CBB40, v86);

      swift_unknownObjectRelease();
    }

    v63 = v46;
    return sub_1001CC1B4(v63, type metadata accessor for DeviceSupportInformationRecord);
  }

  v48 = v90;
  sub_1001CC214(v35, v90, type metadata accessor for DeviceSupportInformationRecord);
  v49 = v100;
  if ((sub_100137850(v100) & 1) != 0 || (v50 = objc_autoreleasePoolPush(), sub_100135EE0(v48, v103), objc_autoreleasePoolPop(v50), v51 = v103[0], v52 = [(objc_class *)v103[0] recordChangeTag], v51, !v52))
  {
    v99 = 0;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100226C80;
    v65 = sub_100133818();
    v66 = v48;
    v68 = v67;
    *(v64 + 56) = &type metadata for String;
    v69 = sub_1000EE954();
    *(v64 + 64) = v69;
    *(v64 + 32) = v65;
    *(v64 + 40) = v68;
    v70 = v49;
    v71 = [v70 description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    *(v64 + 96) = &type metadata for String;
    *(v64 + 104) = v69;
    *(v64 + 72) = v72;
    *(v64 + 80) = v74;
    os_log(_:dso:log:_:_:)();

    v46 = v92;
    sub_1001CC14C(v66, v92, type metadata accessor for DeviceSupportInformationRecord);
    sub_100136BD0(v70);
    v47 = sub_1001CC1B4(v66, type metadata accessor for DeviceSupportInformationRecord);
    v36 = v99;
    goto LABEL_15;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100226C80;
  v54 = sub_100133818();
  v56 = v55;
  *(v53 + 56) = &type metadata for String;
  v57 = sub_1000EE954();
  *(v53 + 64) = v57;
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  v58 = v49;
  v59 = [v58 description];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v57;
  *(v53 + 72) = v60;
  *(v53 + 80) = v62;
  os_log(_:dso:log:_:_:)();

  v102(0);
  v63 = v90;
  return sub_1001CC1B4(v63, type metadata accessor for DeviceSupportInformationRecord);
}

uint64_t sub_1001AE714(uint64_t a1, uint64_t a2)
{
  v115 = type metadata accessor for Date();
  v114 = *(v115 - 8);
  v4 = *(v114 + 64);
  __chkstk_darwin(v115);
  v112 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for BTDeferredRecord();
  v6 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v119 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v111 - 8);
  v8 = *(v110 + 64);
  __chkstk_darwin(v111);
  v108 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  v10 = *(v107 + 64);
  __chkstk_darwin(v109);
  v106 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v129 = *(v12 - 8);
  v13 = *(v129 + 64);
  __chkstk_darwin(v12);
  v126 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v128 = v105 - v16;
  __chkstk_darwin(v17);
  v19 = v105 - v18;
  v127 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v20 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v130 = v105 - v21;
  v22 = type metadata accessor for DeviceSupportInformationRecord();
  v132 = *(v22 - 8);
  v23 = *(v132 + 64);
  __chkstk_darwin(v22);
  v121 = v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v24;
  __chkstk_darwin(v25);
  v27 = v105 - v26;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v118 = v27;
  v28 = qword_100300E38;
  v117 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  v122 = xmmword_100226100;
  *(v29 + 16) = xmmword_100226100;
  v30 = sub_100133818();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v116 = sub_1000EE954();
  *(v29 + 64) = v116;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v105[1] = v28;
  os_log(_:dso:log:_:_:)();

  v131 = a2;
  v33 = sub_100192340();
  v34 = *(v22 + 24);
  v123 = a1;
  v35 = (a1 + v34);
  v125 = v22;
  v36 = *v35;
  v37 = v35[1];
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v38 = sub_1000EE91C(v12, qword_100300D48);
  v39 = v129;
  v40 = *(v129 + 16);
  v124 = v19;
  v40(v19, v38, v12);
  v41 = objc_autoreleasePoolPush();
  URL.path.getter();
  v42 = v126;
  URL.appendingPathComponent(_:)();

  v43 = v33;
  v44 = v128;
  URL.appendingPathComponent(_:)();
  v45 = *(v39 + 8);
  v45(v42, v12);
  objc_autoreleasePoolPop(v41);
  v46 = objc_autoreleasePoolPush();
  v47 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v46);
  v105[-2] = v44;
  v105[-1] = v43;
  v48 = v130;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v46);
  v45(v44, v12);

  v45(v124, v12);
  v49 = v132;
  v50 = v125;
  if ((*(v132 + 48))(v48, 1, v125) == 1)
  {
    sub_1000EEE6C(v48, &qword_1002F8510, &unk_100227B50);
    v51 = *(v131 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v52 = v121;
    sub_1001CC14C(v123, v121, type metadata accessor for DeviceSupportInformationRecord);
    v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v54 = (v120 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_1001CC214(v52, v55 + v53, type metadata accessor for DeviceSupportInformationRecord);
    v56 = (v55 + v54);
    *v56 = sub_10010AE84;
    v56[1] = 0;
    aBlock[4] = sub_1001CE114;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C10E8;
    v57 = _Block_copy(aBlock);
    v58 = v51;
    v59 = v106;
    static DispatchQoS.unspecified.getter();
    v133 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v60 = v108;
    v61 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);

    (*(v110 + 8))(v60, v61);
    (*(v107 + 8))(v59, v109);
  }

  else
  {
    v63 = v48;
    v64 = v118;
    sub_1001CC214(v63, v118, type metadata accessor for DeviceSupportInformationRecord);
    v65 = objc_autoreleasePoolPush();
    sub_100135EE0(v64, aBlock);
    objc_autoreleasePoolPop(v65);
    v66 = aBlock[0];
    v67 = [(objc_class *)aBlock[0] recordID];

    v68 = objc_autoreleasePoolPush();
    sub_100135EE0(v64, aBlock);
    objc_autoreleasePoolPop(v68);
    v69 = v50;
    v70 = aBlock[0];
    v71 = CKRecord.recordType.getter();
    v73 = v72;

    v74 = v131;
    sub_1001A73C4(v67, v71, v73, 0);

    v75 = v113;
    v76 = *(v113 + 24);
    v77 = type metadata accessor for UUID();
    v78 = v119;
    (*(*(v77 - 8) + 16))(&v119[v76], v64, v77);
    v79 = (v64 + *(v69 + 24));
    v81 = *v79;
    v80 = v79[1];

    v82 = v112;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v84 = v83;
    (*(v114 + 8))(v82, v115);
    *v78 = 1;
    *(v78 + 8) = 0xD00000000000001ELL;
    *(v78 + 16) = 0x80000001002671E0;
    v85 = (v78 + v75[7]);
    *v85 = v81;
    v85[1] = v80;
    *(v78 + v75[8]) = v84;
    *(v78 + v75[9]) = xmmword_1002298C0;
    v86 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v74, v78);
    objc_autoreleasePoolPop(v86);
    sub_100193560();
    type metadata accessor for CloudCoordinator();
    LOBYTE(v86) = sub_10015A5D0();
    swift_unknownObjectRelease();
    if (v86)
    {
      v87 = *(v74 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v88 = objc_autoreleasePoolPush();
      sub_100135EE0(v64, aBlock);
      objc_autoreleasePoolPop(v88);
      v89 = aBlock[0];
      v90 = [(objc_class *)aBlock[0] recordID];

      v91 = swift_allocObject();
      swift_weakInit();
      v92 = v121;
      sub_1001CC14C(v64, v121, type metadata accessor for DeviceSupportInformationRecord);
      v93 = (*(v132 + 80) + 16) & ~*(v132 + 80);
      v94 = (v120 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      sub_1001CC214(v92, v95 + v93, type metadata accessor for DeviceSupportInformationRecord);
      *(v95 + v94) = v91;
      v96 = swift_allocObject();
      *(v96 + 16) = v87;
      *(v96 + 24) = v90;
      *(v96 + 32) = sub_1001CE208;
      *(v96 + 40) = v95;
      *(v96 + 48) = 1;
      swift_unknownObjectRetain();

      v97 = v90;

      sub_100153CF4(sub_1001CE26C, v96);

      swift_unknownObjectRelease();

      v98 = v116;
    }

    else
    {
      static os_log_type_t.error.getter();
      v99 = swift_allocObject();
      *(v99 + 16) = v122;
      v100 = sub_100133818();
      v98 = v116;
      *(v99 + 56) = &type metadata for String;
      *(v99 + 64) = v98;
      *(v99 + 32) = v100;
      *(v99 + 40) = v101;
      os_log(_:dso:log:_:_:)();
    }

    static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v102 = swift_allocObject();
    *(v102 + 16) = v122;
    aBlock[0] = 0;
    sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
    v103 = String.init<A>(describing:)();
    *(v102 + 56) = &type metadata for String;
    *(v102 + 64) = v98;
    *(v102 + 32) = v103;
    *(v102 + 40) = v104;
    os_log(_:dso:log:_:_:)();

    sub_1001CC1B4(v78, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v64, type metadata accessor for DeviceSupportInformationRecord);
  }
}