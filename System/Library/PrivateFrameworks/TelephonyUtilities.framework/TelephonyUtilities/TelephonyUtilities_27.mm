void sub_1003FE2B0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = qword_1006A0B30;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Playing audio", v9, 2u);
    }

    v10 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
    v15 = v5;
    v11 = v10;
    sub_1003C4830(a1, 1u, 0, 1);

    [v15 play];
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA610);
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v15, v13, "Audio player is nil, cannot play!", v14, 2u);
    }
  }
}

void sub_1003FE4C0(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor) | ((*(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 4) | (*(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 6) << 16)) << 32);
  if ((v3 & 0xFF000000000000) != 0x3000000000000)
  {
    v5 = HIWORD(v3);
    if (v5 == 2)
    {
      v22 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer;
      v23 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer);
      if (!v23)
      {
        return;
      }

      sub_1003FE870();
      v24 = a1;
      v25 = v23;
      v26 = sub_100018324();

      if ((v26 & 1) == 0)
      {
        return;
      }

      v27 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v28 = *(v2 + v22);
      v29 = v28;
      v30 = v27;
      sub_1003C4478(v28);

      v11 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AE8 != -1)
      {
        v34 = v11;
        swift_once();
        v11 = v34;
      }

      v12 = &qword_1006BA4B8;
    }

    else if (v5 == 1)
    {
      v13 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer;
      v14 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
      if (!v14)
      {
        return;
      }

      sub_1003FE870();
      v15 = a1;
      v16 = v14;
      v17 = sub_100018324();

      if ((v17 & 1) == 0)
      {
        return;
      }

      v18 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v19 = *(v2 + v13);
      v20 = v19;
      v21 = v18;
      sub_1003C4478(v19);

      v11 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AE0 != -1)
      {
        v33 = v11;
        swift_once();
        v11 = v33;
      }

      v12 = &qword_1006BA4B0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v6 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v7 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
      v9 = v8;
      v10 = v7;
      sub_1003C4478(v8);

      v11 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AD8 != -1)
      {
        v32 = v11;
        swift_once();
        v11 = v32;
      }

      v12 = &qword_1006BA4A8;
    }

    v31 = v11;
    [v11 postNotificationName:*v12 object:0];
  }
}

unint64_t sub_1003FE870()
{
  result = qword_1006A9E90;
  if (!qword_1006A9E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A9E90);
  }

  return result;
}

uint64_t sub_1003FE8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13callservicesd21ProtectedAppsObserver_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1003FE900()
{
  *&v0[OBJC_IVAR____TtC13callservicesd21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, "init");
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 "subjectMonitorRegistry")];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

void sub_1003FE9EC(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  v3 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
    }

    else
    {

      ++v3;
    }
  }

  v6 = sub_10000B6F4(_swiftEmptyArrayStorage);
  if (v6)
  {
    v7 = v6;
    sub_100008804(v6);
    if (v7 < 0)
    {
      goto LABEL_31;
    }

    v8 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = _swiftEmptyArrayStorage[v8 + 4];
      }

      v10 = v9;
      v11 = [v9 bundleIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10039A2E0(v15 > 1, v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v7 != v8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10042898C();

    sub_100006048();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100006048();
  }
}

id sub_1003FECE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003FED74()
{
  sub_100005EF4();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100007FEC(v16);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  sub_100007FDC();
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  sub_100007FDC();
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  objc_allocWithZone(v0);
  sub_1003FF268();
  sub_100005EDC();
}

void sub_1003FEFA8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 500;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  *(v1 + 50) = *(a1 + 26);
  v5 = *(a1 + 8);
  v23 = *a1;
  v6 = *(a1 + 32);

  sub_1003429D0(a1, v24);
  v7 = [v6 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v9;
  v22 = v8;

  v10 = sub_1002C89F0(v6);
  v12 = v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 41);
  v16 = *(a1 + 40);
  v17 = objc_allocWithZone(AFSiriIncomingCall);
  v18 = v14;

  v19 = sub_1004001C8(v23, v5, v22, v21, v10, v12, v13, v14, v15, v16);
  v20 = [objc_allocWithZone(AFSiriAnnounceIncomingCallRequest) initWithIncomingCall:v19];

  if (v20)
  {
    sub_1004002FC(a1);
    *(v2 + 72) = v20;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003FF0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100056350;
    v5[3] = &unk_10062ED40;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 performRequestWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_1003FF1BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v0;
}

uint64_t sub_1003FF20C()
{
  sub_1003FF1BC();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void sub_1003FF268()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v39 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v16);
  v37 = v18;
  v38 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = &v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor];
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 26) = 0u;
  v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable] = 0;
  v26 = OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_userConfiguration;
  *&v1[v26] = [objc_allocWithZone(TUUserConfiguration) init];
  *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue] = v5;
  *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_voiceOverObserver] = v3;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  v27 = v5;
  v36 = v3;
  v28 = objc_msgSendSuper2(&v41, "init");
  v29 = *&v28[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_userConfiguration];
  v30 = v28;
  [v29 addDelegate:v30 queue:v27];
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v40[4] = sub_100400350;
  v40[5] = v31;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  sub_10000A600();
  v40[2] = v32;
  v40[3] = &unk_10062EE80;
  v33 = _Block_copy(v40);
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v34, v35);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v39 + 8))(v15, v7);
  (*(v37 + 8))(v24, v38);

  sub_100005EDC();
}

void sub_1003FF5F8(uint64_t a1, int a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = sub_100004778();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a2)
  {
LABEL_4:
    v13 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

LABEL_5:
  v14 = (a1 != 0) & (a2 ^ 1);
  *(v2 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable) = v14;
  if (v14 == 1)
  {
    v15 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_1003FF818()
{
  sub_100005EF4();
  v2 = v1;
  v28 = *(v1 + 8);
  v29 = *v1;
  v3 = *(v1 + 24);
  v27 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *(v15 - v14) = v17;
  (*(v10 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v16, v7);
  if (v17)
  {
    if (v6)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v20 = v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor;
    v21 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor);
    v22 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 8);
    v23 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 16);
    v24 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 24);
    v25 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 32);
    *v20 = v29;
    *(v20 + 8) = v28;
    *(v20 + 16) = v27;
    *(v20 + 24) = v3;
    *(v20 + 32) = v4;
    v26 = *(v20 + 40);
    *(v20 + 40) = v19 & 0xFFFE | v5 & 1;
    sub_10005081C(v21, v22, v23, v24, v25);
    type metadata accessor for SiriCallAnnouncementRequest();
    swift_allocObject();
    sub_1003429D0(v2, v30);
    sub_1003429D0(v2, v30);
    sub_1003FEFA8(v2);
    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003FF9C8(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1004002F0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062EDE0;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v19);
}

uint64_t sub_1003FFCFC(void *a1)
{
  v1 = [a1 announceCalls];

  return sub_1003FFD2C(v1);
}

uint64_t sub_1003FFD2C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1004001C0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062ED90;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v19);
}

id sub_1004001C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10)
{
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  LOBYTE(v20) = a10 & 1;
  v18 = [v10 initWithCallUUID:v14 callProviderIdentifier:v15 callProviderBundleID:v16 callerContactIdentifiers:v17.super.isa handle:a8 isVideo:a9 & 1 isCallerIDBlocked:v20];

  return v18;
}

BOOL sub_100400358(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x10000000000) != 0)
  {
    return (a1 & 0x10000000000) != 0;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    if ((a1 & 0x100000000) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a1 & 0x100000000) != 0;
}

uint64_t sub_10040038C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v28[0]);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (*(a3 + 8))(a2, a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  *(v25 + 32) = v3;
  *(v25 + 40) = a1;
  aBlock[4] = sub_100400BB8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062F048;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v28[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v10 + 8))(v15, v7);
  (*(v18 + 8))(v23, v28[0]);
}

uint64_t sub_100400614(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 5);
  if (*(a2 + 5))
  {
    if ((*(a1 + 5) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_3:
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v14 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (!v14)
      {
        goto LABEL_43;
      }

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_43;
    }

    v22 = *(a2 + 40);
    v23 = *(a2 + 48);
    if (*(a1 + 40) == 1)
    {
      if (v22 == 1)
      {
LABEL_34:
        if (*(a1 + 50) != *(a2 + 50) || ((*(a1 + 51) ^ *(a2 + 51)) & 1) != 0 || ((*(a1 + 52) ^ *(a2 + 52)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || ((*(a1 + 54) ^ *(a2 + 54)) & 1) != 0 || ((*(a1 + 55) ^ *(a2 + 55)) & 1) != 0 || ((*(a1 + 58) ^ *(a2 + 58)) & 1) != 0 || ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || ((*(a1 + 53) ^ *(a2 + 53)) & 1) != 0)
        {
          goto LABEL_43;
        }

        v37 = *(a1 + 72);
        if (v37)
        {
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
        }

        if (*(a2 + 72))
        {
          objc_opt_self();
          v38 = swift_dynamicCastObjCClass();
          if (v38)
          {
            swift_unknownObjectRetain();
          }
        }

        else
        {
          v38 = 0;
        }

        if (v37)
        {
          if (!v38)
          {
            goto LABEL_43;
          }

          sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
          v39 = static NSObject.== infix(_:_:)();

          if ((v39 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v38)
        {

          goto LABEL_43;
        }

        if (((*(a1 + 145) ^ *(a2 + 145)) & 1) == 0 && ((*(a1 + 57) ^ *(a2 + 57)) & 1) == 0)
        {
          v21 = *(a2 + 152);
          if (*(a1 + 152))
          {
            if (!*(a2 + 152))
            {
              return v21 & 1;
            }
          }

          else
          {
            if (*(a1 + 148) != *(a2 + 148))
            {
              v21 = 1;
            }

            if (v21)
            {
              goto LABEL_43;
            }
          }

          v21 = *(a1 + 153) ^ *(a2 + 153) ^ 1;
          return v21 & 1;
        }

LABEL_43:
        v21 = 0;
        return v21 & 1;
      }
    }

    else if (v22 != 1)
    {
      if ((sub_1003277B8(*(a1 + 24) & 0xFFFFFFFF00000001, *(a1 + 32), *(a1 + 40), *(a1 + 48) & 0x101, *(a2 + 24) & 0xFFFFFFFF00000001, *(a2 + 32), *(a2 + 40)) & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    v24 = sub_10000EB74();
    sub_1002F145C(v24, v25, v26);
    v27 = sub_10000E828();
    sub_1002F145C(v27, v28, v29);
    v30 = sub_10000EB74();
    sub_1002F1470(v30, v31, v32);
    v33 = sub_10000E828();
    sub_1002F1470(v33, v34, v35);
    goto LABEL_43;
  }

  if (*(a1 + 5))
  {
    goto LABEL_43;
  }

  v13 = *(a1 + 4);
  if (*(a2 + 4))
  {
    if ((*(a1 + 4) & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  v21 = 0;
  if ((*(a1 + 4) & 1) == 0 && *a1 == *a2)
  {
    goto LABEL_3;
  }

  return v21 & 1;
}

void sub_1004009B8(void *a1, Swift::Bool a2)
{
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(a2).super.super.isa;
  [a1 handleAudioSessionActivationStateChangedTo:isa];
}

uint64_t getEnumTagSinglePayload for AudioInterruptionDescriptor.ProviderType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioInterruptionDescriptor.ProviderType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_100400A8C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 5) = v2;
  return result;
}

uint64_t sub_100400AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100400B38()
{
  v1 = [v0 queue];

  return v1;
}

void sub_100400BB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1004009B8(*(v0 + 32), *(v0 + 40));
}

id sub_100400BCC()
{
  ObjectType = swift_getObjectType();
  v2 = BlastDoorInstanceTypeKnownSender;
  v3 = type metadata accessor for MessagesBlastDoorInterface();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = MessagesBlastDoorInterface.init(with:)();
  v7 = &v0[OBJC_IVAR___CSDSecureImageTranscoder_blastDoor];
  v7[3] = v3;
  v7[4] = &off_10062F070;
  *v7 = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100400C8C()
{
  sub_100006810();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = *(*(sub_10026D814(&qword_1006A5310, &qword_10057D580) - 8) + 64);
  v1[22] = sub_100005E9C();
  v5 = type metadata accessor for URL();
  v1[23] = v5;
  sub_100005EB4(v5);
  v1[24] = v6;
  v1[25] = *(v7 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100400DBC()
{
  v33 = v0;
  v1 = v0[28];
  sub_1004018F8();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[23];
  v5 = v0[24];
  v6 = type metadata accessor for Logger();
  v0[29] = sub_10000AF9C(v6, qword_1006BA568);
  v7 = *(v5 + 16);
  v0[30] = v7;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  if (v10)
  {
    v12 = v0[26];
    v14 = v0[23];
    v13 = v0[24];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v15 = 136315138;
    v7(v12, v11, v14);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_10002741C(v16, v18, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to generate preview of image after writing to URL: %s", v15, 0xCu);
    sub_100009B7C(v31);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
    v21 = v0[23];
    v22 = v0[24];

    v19 = *(v22 + 8);
    v19(v11, v21);
  }

  v0[32] = v19;
  v23 = v0[28];
  v24 = v0[19];
  v25 = v0[20];
  Data.write(to:options:)();
  v26 = *sub_100009B14((v0[21] + OBJC_IVAR___CSDSecureImageTranscoder_blastDoor), *(v0[21] + OBJC_IVAR___CSDSecureImageTranscoder_blastDoor + 24));
  v27 = swift_task_alloc();
  v0[33] = v27;
  *v27 = v0;
  v27[1] = sub_10040118C;
  v28 = v0[28];
  sub_100011274();

  return sub_100402ED4();
}

uint64_t sub_10040118C()
{
  sub_100006810();
  v2 = *v1;
  v13 = *v1;
  v13[10] = v1;
  v13[11] = v3;
  v13[12] = v4;
  v13[13] = v0;
  v5 = v2[33];
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1004012C4()
{
  v1 = *(v0 + 224);
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  *(v0 + 144) = 0;
  v6 = [v2 removeItemAtURL:v4 error:v0 + 144];

  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v9 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 216);
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  v15 = *(v0 + 192) + 8;
  (*(v0 + 256))(*(v0 + 224), *(v0 + 184));

  v16 = *(v0 + 8);

  return v16(v11, v10);
}

void sub_10040144C()
{
  if (!_TUIsInternalInstall())
  {
    v16 = *(v0 + 224);
    v17 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    *(v0 + 120) = 0;
    v21 = [v17 removeItemAtURL:v19 error:v0 + 120];

    v14 = *(v0 + 120);
    if (!v21)
    {
LABEL_6:
      v15 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_9:
      v23 = *(v0 + 272);
      swift_willThrow();
      goto LABEL_12;
    }

LABEL_8:
    v22 = v14;
    goto LABEL_9;
  }

  v1 = [objc_opt_self() tu_defaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2 withDefault:0];

  if (v3)
  {
    v4 = *(v0 + 232);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      sub_100005F40();
    }

    v8 = *(v0 + 224);

    v9 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    *(v0 + 136) = 0;
    v13 = [v9 removeItemAtURL:v11 error:v0 + 136];

    v14 = *(v0 + 136);
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v24 = objc_opt_self();
  v25 = String._bridgeToObjectiveC()();
  v26 = sub_1004038B8(v25, 0xD000000000000018, 0x8000000100575EF0, 0xD000000000000058, 0x8000000100575F10, 0x52206120656C6946, 0xEC00000072616461, 0x7373696D736944, 0xE700000000000000, 0, v24);

  if (!v26)
  {
    __break(1u);
    return;
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);
  v46 = *(v0 + 200);
  v32 = *(v0 + 184);
  v33 = *(v0 + 192);
  v34 = *(v0 + 176);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0((v0 + 48), (v0 + 16));
  sub_100006AF0(0, &unk_1006A6758, IMUserNotification_ptr);
  swift_dynamicCast();
  v35 = *(v0 + 128);
  [v35 setUsesNotificationCenter:0];
  v36 = type metadata accessor for TaskPriority();
  sub_10000AF74(v34, 1, 1, v36);
  v28(v31, v30, v32);
  v37 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = v35;
  *(v38 + 5) = v27;
  (*(v33 + 32))(&v38[v37], v31, v32);
  v39 = v35;
  swift_errorRetain();
  sub_100463218();

  swift_willThrow();

LABEL_12:
  v40 = *(v0 + 272);
  v41 = *(v0 + 256);
  v43 = *(v0 + 216);
  v42 = *(v0 + 224);
  sub_10000EB88();
  v44(v42);

  sub_100009EF4();

  v45();
}

uint64_t sub_1004018F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100403538();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v5, v0);
  URL.appendingPathComponent(_:)();

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_100401A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  v7 = *(*(sub_10026D814(&unk_1006A52C0, &unk_10057D930) - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[42] = v8;
  v9 = *(v8 - 8);
  v6[43] = v9;
  v10 = *(v9 + 64) + 15;
  v6[44] = swift_task_alloc();
  v11 = type metadata accessor for URLComponents();
  v6[45] = v11;
  v12 = *(v11 - 8);
  v6[46] = v12;
  v13 = *(v12 + 64) + 15;
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_100401C18, 0, 0);
}

uint64_t sub_100401C18()
{
  v1 = v0[38];
  sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
  v2 = static IMUserNotificationCenter.shared.getter();
  v0[48] = v2;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_100401D98;
  v3 = swift_continuation_init();
  v0[25] = sub_10026D814(&qword_1006AAE50, &qword_100586B38);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100344674;
  v0[21] = &unk_10062F0D0;
  v0[22] = v3;
  [v2 addUserNotification:v1 listener:0 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100401D98()
{
  sub_100006810();
  v7 = *v0;
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1004025B4()
{
  sub_100006810();
  v1 = *v0;
  *(*v0 + 416) = *(*v0 + 112);
  sub_100007BBC();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1004026E8()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 296);

  v10 = *(v0 + 376);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);

  sub_100009EF4();

  return v13();
}

void sub_100402808()
{
  v1 = v0[52];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
  v9 = v0[43];
  v13 = v0[51];
  v14 = v0[41];
  swift_willThrow();

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);

  sub_100009EF4();
  v10 = v0[52];
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100402918(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10046A8DC(v5, v6);
  }

  else
  {
    if (a2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_10005F998(v5, v8);
  }
}

uint64_t sub_100402A54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100402B30;

  return sub_100400C8C();
}

uint64_t sub_100402B30(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;
  sub_100008060();
  *v9 = v8;
  v10 = v7[6];
  v11 = v7[2];
  v12 = *v3;
  *v9 = *v3;

  sub_100049B14(v7[4], v7[5]);
  if (v4)
  {
    v13 = _convertErrorToNSError(_:)();

    isa = 0;
    v15 = v13;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100049B14(a1, a2);
    v13 = 0;
    v15 = isa;
  }

  v16 = v8[3];
  (v16)[2](v16, isa, v13);

  _Block_release(v16);
  v17 = v12[1];

  return v17();
}

uint64_t sub_100402D3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100402DF0;

  return sub_100402A54(v2, v3, v4);
}

uint64_t sub_100402DF0()
{
  sub_100006810();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100008060();
  *v3 = v2;

  sub_100009EF4();

  return v4();
}

uint64_t sub_100402ED4()
{
  sub_100006810();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for Image.Encoding();
  v1[5] = v3;
  sub_100005EB4(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_100005E9C();
  v7 = *(*(sub_10026D814(&qword_1006AAE60, &qword_100586B48) - 8) + 64);
  v1[8] = sub_100005E9C();
  v8 = type metadata accessor for Image();
  v1[9] = v8;
  sub_100005EB4(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_100005E9C();
  v12 = type metadata accessor for URL();
  v1[12] = v12;
  sub_100005EB4(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v16, v17, v18);
}

void sub_100403044()
{
  v1 = v0[3];
  v2 = v0[4];
  v9 = dispatch thunk of MessagesBlastDoorInterface.generateImagePreview(for:maxPixelDimension:scale:)();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v13 = v0[3];
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA568);
  (*(v11 + 16))(v10, v13, v12);
  v15 = v9;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v22 = 136315394;
    sub_10039FAF0();
    v23 = v15;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v19 + 8))(v20, v21);
    v27 = v24;
    v15 = v23;
    v28 = sub_10002741C(v27, v26, v57);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v0[2] = v23;
    type metadata accessor for _ObjCPreviewImageWrapper();
    v29 = v23;
    v30 = String.init<A>(reflecting:)();
    v32 = sub_10002741C(v30, v31, v57);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Generated preview from file: %s with result: %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    (*(v19 + 8))(v20, v21);
  }

  v33 = dispatch thunk of _ObjCPreviewImageWrapper.image.getter();
  v34 = _ObjCImageWrapper.cgImage.getter();

  if (v34)
  {
    v35 = v0[11];
    v37 = v0[7];
    v36 = v0[8];
    v39 = v0[5];
    v38 = v0[6];
    type metadata accessor for CGImage(0);
    v57[3] = v40;
    v57[4] = &protocol witness table for CGImageRef;
    v57[0] = v34;
    sub_10000AF74(v36, 1, 1, v39);
    v41 = v34;
    Image.init(provider:maxPixelDimension:enforcedEncoding:)();
    ATXEncodingConfiguration.init(preTwiddled:lzfseCompression:)();
    (*(v38 + 104))(v37, enum case for Image.Encoding.atx(_:), v39);
    Image.data(using:)();
    v46 = v0[10];
    v47 = v0[11];
    v54 = v0[9];
    v55 = v0[14];
    v56 = v0[8];
    v48 = v0[6];
    v49 = v0[7];
    v50 = v0[5];

    (*(v48 + 8))(v49, v50);
    (*(v46 + 8))(v47, v54);

    v51 = v0[1];
    sub_10000C638();

    __asm { BRAA            X3, X16 }
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Recevied empty image result from BlastDoor", v44, 2u);
    sub_100005F40();
  }

  sub_100403B40();
  swift_allocError();
  *v45 = 0;
  swift_willThrow();

  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  sub_100009EF4();
  sub_10000C638();

  __asm { BRAA            X1, X16 }
}

void sub_100403538()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:)();
  (*(v1 + 8))(v5, v0);
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v24 = 0;
  LODWORD(v5) = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v24];

  v11 = v24;
  if (v5)
  {

    v12 = v11;
  }

  else
  {
    v23[1] = v24;
    v13 = v24;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006BA568);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v23[2] = v14;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v20 = String.init<A>(reflecting:)();
      v22 = sub_10002741C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error creating temporary images directory: %s", v18, 0xCu);
      sub_100009B7C(v19);
    }

    else
    {
    }
  }
}

id sub_1004038B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [a11 userNotificationWithIdentifier:a1 title:v12 message:v13 defaultButton:v14 alternateButton:v15 otherButton:a10];

  return v16;
}

uint64_t sub_1004039CC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100402DF0;

  return sub_100401A94(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100403AD0(void *a1)
{
  v2 = [a1 productBuildVersion];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100403B40()
{
  result = qword_1006AAE68;
  if (!qword_1006AAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlastDoorError(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlastDoorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100403C38(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100403C68()
{
  v1 = OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController;
  if (!*(v0 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController))
  {
    v2 = [objc_allocWithZone(TUMomentsController) initWithQueue:*(v0 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_queue)];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      [v4 addDelegate:v0];
    }
  }

  v5 = *(v0 + v1);
  v6 = v5;
  return v5;
}

id sub_100403D00(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_avcStopTimeout] = 0x4014000000000000;
  v3 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate + v1;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue] = 0;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout] = 0;
  v4 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  v5 = type metadata accessor for UUID();
  sub_10000AF74(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_queue] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RecordingProvider();
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100403DEC(void *a1)
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v23[0] = v7;
    *v6 = 136315138;
    v23[6] = v3;
    type metadata accessor for AudioCallRecordingSession();
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, v23);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Prewarming recording %s", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100009ED0();

    sub_100009ED0();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v18 = sub_100405FE4(v3, v13);

    v19 = sub_100403C68();
    if (v19)
    {
      v20 = v19;
      v23[4] = sub_100404164;
      v23[5] = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      sub_100035BE0();
      v23[2] = v21;
      v23[3] = &unk_10062F648;
      v22 = _Block_copy(v23);
      [v20 prewarmMediaRequest:v18 completion:v22];

      _Block_release(v22);
      return;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10000A648(v14))
    {
      sub_100017E10();
      v15 = swift_slowAlloc();
      sub_100008944(v15);
      sub_100008A90(&_mh_execute_header, v16, v17, "Recording session does not have a call! not able to prewarm recording");
      sub_100009ED0();
    }
  }
}

void sub_100404164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA640);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10002741C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error prewarming call recording session %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_100404328(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for UUID();
    v14 = 1;
  }

  sub_10000AF74(v10, v14, 1, v13);

  v15 = a3;
  v12(v10, a3);

  return sub_100009A04(v10, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_100404438()
{
  sub_100005EF4();
  v3 = type metadata accessor for URL();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007BAC();
  v12 = v10 - v11;
  __chkstk_darwin(v13, v14);
  v16 = v51 - v15;
  v17 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v18 = sub_100007BF0(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v22, v23);
  sub_100007A54();
  sub_10029FC2C();
  v24 = *(v1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(v1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;

  sub_10003A220(v0, v2, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v2, 1, v3) == 1)
  {
    sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000075F0(v25, qword_1006BA640);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    v28 = sub_10000BAF0();
    if (os_log_type_enabled(v28, v29))
    {
      sub_100017E10();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Directory URL doesn't exist for recording session! cannot clean up from prewarming", v30, 2u);
      sub_100009ED0();
    }

    goto LABEL_13;
  }

  (*(v6 + 32))(v16, v2, v3);
  URL.path.getter();
  v31 = objc_allocWithZone(CSDSandboxExtensionDirectory);
  v32 = sub_10040A024();
  v33 = [objc_opt_self() defaultManager];
  v34 = [v32 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v38 = *(v6 + 8);
  v38(v12, v3);
  v51[0] = 0;
  v39 = [v33 removeItemAtURL:v37 error:v51];

  if (v39)
  {
    v40 = v51[0];

    v38(v16, v3);
  }

  else
  {
    v41 = v51[0];
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v38(v16, v3);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000075F0(v43, qword_1006BA640);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v44))
    {

LABEL_13:

      goto LABEL_14;
    }

    v45 = sub_100005274();
    v46 = sub_100005E84();
    v51[0] = v46;
    *v45 = 136315138;
    v50 = v42;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, v51);

    *(v45 + 4) = v49;
    sub_100021FC8(&_mh_execute_header, v26, v44, "Issue deleting item while cleaning up from prewarm %s");
    sub_100009B7C(v46);
    sub_10000EA64();

    sub_100009ED0();
  }

LABEL_14:
  sub_100009A04(v0, &unk_1006A52C0, &unk_10057D930);
  sub_100005EDC();
}

void sub_100404928()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v15);
  v56 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v24);
  v26 = *(v25 + 64);
  sub_100006688();
  __chkstk_darwin(v27, v28);
  sub_10000C4C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v45 = sub_100405FE4(v4, v30);

    v46 = [v45 sandboxURL];
    v47 = [v46 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = type metadata accessor for URL();
    sub_10000AF74(v1, 0, 1, v48);
    v49 = OBJC_IVAR___CSDAudioCallRecordingSession_baseRecordingURL;
    swift_beginAccess();
    sub_1000432B0(v1, v4 + v49, &unk_1006A52C0, &unk_10057D930);
    swift_endAccess();
    v50 = v30;
    sub_1004051D8();

    v51 = sub_100403C68();
    if (v51)
    {
      v52 = v51;
      sub_100006890();
      v53 = swift_allocObject();
      *(v53 + 16) = v2;
      v61 = sub_10040A348;
      v62 = v53;
      v57 = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100404328;
      v60 = &unk_10062F5D0;
      v54 = _Block_copy(&v57);
      v55 = v2;

      [v52 startMediaRequest:v45 completion:v54];

      _Block_release(v54);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000075F0(v31, qword_1006BA640);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = sub_10000BAF0();
    if (os_log_type_enabled(v34, v35))
    {
      sub_100017E10();
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Recording session does not have a call! not able to start recording", v36, 2u);
      sub_10000EA64();
    }

    v37 = *&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v37)
    {
      sub_100006890();
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      v61 = sub_10040A338;
      v62 = v38;
      sub_100009FE4();
      v58 = 1107296256;
      sub_10000A600();
      v59 = v39;
      v60 = &unk_10062F530;
      v40 = _Block_copy(&v57);
      v41 = v2;
      v42 = v37;
      static DispatchQoS.unspecified.getter();
      sub_10000A438();
      sub_10000F108(v43, v44);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_1000060D4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_10040A5D8();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v8 + 8))(v14, v5);
      (*(v56 + 8))(v23, v15);
    }
  }

  sub_100005EDC();
}

uint64_t sub_100405058(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v14[-1] - v5;
  v7 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v7 + a1, v15, &qword_1006AAF50, &unk_100584CC0);
  if (!v16)
  {
    return sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v15, v14);
  sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
  v8 = sub_100009B14(v14, v14[3]);
  v9 = type metadata accessor for UUID();
  sub_10000AF74(v6, 1, 1, v9);
  sub_10040A22C();
  v10 = swift_allocError();
  v11 = *v8;
  sub_1003E801C(v6, v10);

  sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v14);
}

void sub_1004051D8()
{
  sub_100005EF4();
  v132 = v2;
  sub_10000691C();
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = sub_100007FEC(v3);
  v126 = v5;
  v127 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v125 = (v10 - v9);
  sub_10000D414();
  v130 = type metadata accessor for URL();
  v11 = sub_100007FEC(v130);
  v128 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v16, v17);
  v124 = &v122 - v18;
  sub_100006838();
  __chkstk_darwin(v19, v20);
  sub_10000C1C4();
  v134 = v21;
  sub_10000D414();
  v22 = type metadata accessor for Date();
  v23 = sub_100007BF0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  sub_100007FDC();
  v27 = type metadata accessor for RecordingMetadata();
  v28 = sub_100007FEC(v27);
  v131 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28, v32);
  sub_100007FDC();
  v133 = v34 - v33;
  sub_100432E00(v0);
  v129 = v1;
  if (!v35)
  {
    v54 = [v0 localSenderIdentity];
    if (!v54 || (v55 = v54, v56 = [v54 handle], v55, !v56) || (sub_1004450C8(v56), !v57))
    {
      v58 = [v0 localSenderIdentity];
      if (v58 && (v59 = v58, v60 = [v58 handle], v59, v60))
      {
        v61 = [v60 value];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
      }
    }
  }

  v36 = [v0 handle];
  if (v36)
  {
    sub_1004450C8(v36);
    if (v37)
    {
      sub_1000089CC();
LABEL_7:
      v41 = [v132 localeIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static Date.now.getter();
      RecordingMetadata.init(locale:startTimeStamp:localHandle:remoteHandle:)();
      if (qword_1006A0B40 != -1)
      {
        sub_1000087BC();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000AF9C(v42, qword_1006BA640);
      v43 = v0;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = sub_100005274();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v43;
        v48 = v43;
        sub_100021FC8(&_mh_execute_header, v44, v45, "Writing metadata of call: %@");
        sub_100009A04(v47, &unk_1006A2630, &qword_10057CB40);
        sub_100009ED0();

        sub_100009ED0();
      }

      v49 = type metadata accessor for JSONEncoder();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      sub_10000F108(&qword_1006AAF80, &type metadata accessor for RecordingMetadata);
      sub_100016FF8();
      v52 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v53 = v134;
      v123 = v27;
      v62 = v52;
      v64 = v63;

      v65 = [v132 sandboxURL];
      v66 = [v65 URL];

      v67 = v124;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v136, "metadata.json");
      HIWORD(v136[0]) = -4864;
      v69 = v125;
      v68 = v126;
      v70 = v127;
      (*(v126 + 104))(v125, enum case for URL.DirectoryHint.inferFromPath(_:), v127);
      sub_10001E364();
      URL.appending<A>(component:directoryHint:)();
      (*(v68 + 8))(v69, v70);
      v71 = v128;
      v72 = v130;
      v126 = *(v128 + 8);
      (v126)(v67, v130);
      v125 = objc_opt_self();
      v73 = [v125 defaultManager];
      URL.relativePath.getter();
      String._bridgeToObjectiveC()();
      sub_100007738();
      v127 = v62;
      v132 = v64;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v75 = [v73 createFileAtPath:v53 contents:isa attributes:0];

      v76 = v72;
      v77 = v134;

      v78 = v129;
      (*(v71 + 16))(v129, v77, v72);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v82 = sub_100005E84();
        v135 = swift_slowAlloc();
        *v82 = 136315650;
        v83 = URL.relativePath.getter();
        v85 = v84;
        v86 = sub_100006C30();
        v87 = v126;
        (v126)(v86);
        v88 = sub_10002741C(v83, v85, &v135);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2080;
        v89 = [v125 defaultManager];
        v90 = [v89 currentDirectoryPath];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        *&v136[0] = v91;
        *(&v136[0] + 1) = v93;
        v94 = String.init<A>(reflecting:)();
        sub_10002741C(v94, v95, &v135);
        sub_100007738();
        *(v82 + 14) = v90;
        *(v82 + 22) = 2080;
        LOBYTE(v136[0]) = v75;
        v96 = String.init<A>(reflecting:)();
        sub_10002741C(v96, v97, &v135);
        sub_100007738();
        *(v82 + 24) = v90;
        _os_log_impl(&_mh_execute_header, v79, v80, "Creating a directory of %s at %s, success: %s", v82, 0x20u);
        swift_arrayDestroy();
        sub_100009ED0();

        sub_100009ED0();

        sub_100049B14(v127, v132);

        v87(v134, v130);
      }

      else
      {
        sub_100049B14(v127, v132);

        v118 = v126;
        (v126)(v78, v76);
        v118(v77, v76);
      }

      sub_10001AC74();
      v119(v133, v123);
      goto LABEL_27;
    }
  }

  v38 = [v0 handle];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000089CC();

    goto LABEL_7;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_10000AF9C(v98, qword_1006BA640);
  v99 = v0;
  v134 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v100))
  {
    v101 = sub_100005E84();
    *&v136[0] = swift_slowAlloc();
    *v101 = 136315650;
    v102 = sub_100432E00(v99);
    sub_10001E478(v102, v103);
    sub_1000089CC();

    v104 = sub_100006C30();
    v107 = sub_10002741C(v104, v105, v106);

    *(v101 + 4) = v107;
    *(v101 + 12) = 2080;
    v108 = [v99 localSenderIdentity];
    sub_10029159C(v108);
    sub_1000089CC();

    v109 = sub_100006C30();
    v112 = sub_10002741C(v109, v110, v111);

    *(v101 + 14) = v112;
    *(v101 + 22) = 2080;
    v113 = [v99 handle];
    v114 = sub_1002915B0(v113);
    v116 = v115;

    v117 = sub_10002741C(v114, v116, v136);

    *(v101 + 24) = v117;
    _os_log_impl(&_mh_execute_header, v134, v100, "Not writing metadata because one of these is nil local member handle value: %s local sender identity %s remote handle: %s", v101, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_27:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

uint64_t sub_100405D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v6 + a1, v12, &qword_1006AAF50, &unk_100584CC0);
  if (!v13)
  {
    return sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v12, v11);
  sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  v7 = sub_100009B14(v11, v11[3]);
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v10 = *v7;
  sub_1003E801C(a2, v8);

  return sub_100009B7C(v11);
}

uint64_t sub_100405E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v15[-1] - v7;
  v9 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v9 + a1, v16, &qword_1006AAF50, &unk_100584CC0);
  if (!v17)
  {
    return sub_100009A04(v16, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v16, v15);
  sub_100009A04(v16, &qword_1006AAF50, &unk_100584CC0);
  v10 = sub_100009B14(v15, v15[3]);
  v11 = type metadata accessor for UUID();
  sub_10000AF74(v8, 1, 1, v11);
  v12 = *v10;
  sub_1003E801C(v8, a2);
  sub_100009A04(v8, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v15);
}

_WORD *sub_100405FE4(uint64_t a1, void *a2)
{
  v66 = a2;
  sub_10000691C();
  v4 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v4);
  v69 = v6;
  v70 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007BAC();
  v67 = v10 - v11;
  sub_100006838();
  __chkstk_darwin(v12, v13);
  sub_10000C1C4();
  v68 = v14;
  sub_10000D414();
  v15 = type metadata accessor for URL();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007BAC();
  v24 = v22 - v23;
  __chkstk_darwin(v25, v26);
  v28 = &v62 - v27;
  v29 = &unk_1006A52C0;
  v30 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v31 = sub_100007BF0(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v35, v36);
  sub_100007A54();
  sub_10029FC2C();
  sub_10003A220(v2, v3, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v3, 1, v15) == 1)
  {
    sub_100009A04(v3, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006BA640);
    v38 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v39 = sub_10000BAF0();
    if (os_log_type_enabled(v39, v40))
    {
      sub_100017E10();
      v29 = swift_slowAlloc();
      *v29 = 0;
      sub_1000079AC();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      sub_10000EA64();
    }

    sub_10040A22C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v18 + 32))(v28, v3, v15);
    URL.path.getter();
    v29 = v46;
    v47 = objc_allocWithZone(CSDSandboxExtensionDirectory);
    v48 = v71;
    v49 = sub_10040A024();
    if (!v48)
    {
      v51 = v49;
      sub_100006AF0(0, &qword_1006AAF60, TUSandboxExtendedURL_ptr);
      v71 = 0;
      v52 = [v51 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = sub_1004064CC(v24, 1);
      sub_100006AF0(0, &qword_1006AAF68, TUMomentsMediaRecordRequest_ptr);
      v54 = v66;
      v66 = v53;
      v62 = sub_100406570(v54, v66);
      v55 = v67;
      static Locale.current.getter();
      v65 = v18;
      v63 = v51;
      v56 = v68;
      LanguageManager.mappedASRLocale(for:useCase:)();
      v64 = v28;
      v57 = *(v69 + 8);
      v58 = v55;
      v59 = v70;
      v57(v58, v70);
      LanguageManager.languageIdentifier(for:)();
      v60 = v56;
      v29 = v62;
      v57(v60, v59);
      v61 = String._bridgeToObjectiveC()();

      [v29 setLocaleIdentifier:v61];

      (*(v65 + 8))(v64, v15);
      sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
      return v29;
    }

    (*(v18 + 8))(v28, v15);
  }

  sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
  return v29;
}

id sub_1004064CC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 withExtensionType:a2];

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_100406570(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCall:a1 URL:a2];

  return v4;
}

void sub_1004065CC(void *a1)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = sub_100007FEC(v4);
  v120 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v119 = v11 - v10;
  sub_10000D414();
  v118 = type metadata accessor for DispatchTime();
  v12 = sub_100007FEC(v118);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007BAC();
  v115 = v18 - v19;
  sub_100006838();
  __chkstk_darwin(v20, v21);
  sub_10000C1C4();
  v124 = v22;
  sub_10000D414();
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v24 = sub_100007FEC(v23);
  v116 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24, v28);
  sub_100007FDC();
  v31 = v30 - v29;
  v32 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v32);
  v34 = *(v33 + 64);
  sub_100006688();
  __chkstk_darwin(v35, v36);
  v123 = &v112 - v37;
  sub_10000D414();
  v38 = type metadata accessor for UUID();
  v39 = sub_100007FEC(v38);
  v126 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39, v43);
  sub_100008DE4();
  v114 = v44;
  v113 = v45;
  __chkstk_darwin(v46, v47);
  sub_100007A54();
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v122 = v1;
  v48 = type metadata accessor for Logger();
  sub_1000075F0(v48, qword_1006BA640);
  v49 = a1;
  v121 = v2;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();

  v52 = os_log_type_enabled(v50, v51);
  v117 = v14;
  if (v52)
  {
    v53 = sub_100005274();
    v112 = v4;
    v54 = v53;
    v55 = sub_100005E84();
    aBlock = v55;
    *v54 = 136315138;
    v134 = v49;
    type metadata accessor for AudioCallRecordingSession();
    v56 = v49;
    v57 = String.init<A>(reflecting:)();
    v59 = sub_10002741C(v57, v58, &aBlock);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Asked to end recording for %s", v54, 0xCu);
    sub_100009B7C(v55);
    sub_100009ED0();

    v4 = v112;
    sub_100009ED0();
  }

  v60 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298();
  v61 = v49 + v60;
  v62 = v123;
  sub_10003A220(v61, v123, &unk_1006A3DD0, &unk_10057C9D0);
  v63 = sub_100015468(v62, 1, v38);
  v64 = v126;
  v65 = v124;
  if (v63 == 1)
  {
    sub_100009A04(v62, &unk_1006A3DD0, &unk_10057C9D0);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (sub_10000A648(v67))
    {
      sub_100017E10();
      v68 = swift_slowAlloc();
      sub_100008944(v68);
      sub_100008A90(&_mh_execute_header, v69, v70, "No message UUID! Ending recording anyways");
      sub_100009ED0();
    }

    v71 = v125;
    v72 = *&v125[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v72)
    {
      sub_100006890();
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      v132 = sub_10040A280;
      v133 = v73;
      sub_1000173AC();
      v129 = 1107296256;
      sub_10000A600();
      v130 = v74;
      v131 = &unk_10062F440;
      v75 = _Block_copy(&aBlock);
      v76 = v71;
      v77 = v23;
      v78 = v72;
      v79 = v119;
      static DispatchQoS.unspecified.getter();
      v127 = _swiftEmptyArrayStorage;
      sub_10000A438();
      sub_10000F108(v80, v81);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_10000FC84();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v75);

      sub_10003DC28(&v135);
      v82(v31, v77);
      (*(v120 + 8))(v79, v4);
    }
  }

  else
  {
    v83 = *(v126 + 32);
    v123 = v126 + 32;
    v121 = v83;
    v83(v122, v62, v38);
    sub_100006890();
    v84 = swift_allocObject();
    v85 = v125;
    *(v84 + 16) = v125;
    v132 = sub_10040A29C;
    v133 = v84;
    sub_1000173AC();
    v129 = 1107296256;
    v130 = sub_100004CEC;
    v131 = &unk_10062F490;
    _Block_copy(&aBlock);
    v127 = _swiftEmptyArrayStorage;
    sub_10000A438();
    sub_10000F108(v86, v87);
    v88 = v85;
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000FC84();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v89 = type metadata accessor for DispatchWorkItem();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    v92 = DispatchWorkItem.init(flags:block:)();

    v93 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout;
    v94 = *&v88[OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout];
    *&v88[OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout] = v92;

    v95 = *&v88[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v95)
    {
      v96 = v95;
      v97 = v115;
      static DispatchTime.now()();
      + infix(_:_:)();
      v98 = *(v117 + 8);
      v99 = v118;
      v98(v97, v118);
      if (!*&v88[v93])
      {
        __break(1u);
        return;
      }

      v100 = *&v88[v93];

      sub_100007764();
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      v98(v65, v99);
    }

    v101 = sub_100403C68();
    v102 = v122;
    if (v101)
    {
      v103 = v101;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v105 = v114;
      (*(v64 + 16))(v114, v102, v38);
      v106 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v107 = (v113 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v121(v108 + v106, v105, v38);
      *(v108 + v107) = v88;
      v132 = sub_10040A2A4;
      v133 = v108;
      sub_1000173AC();
      v129 = 1107296256;
      sub_100007DFC();
      v130 = v109;
      v131 = &unk_10062F4E0;
      v110 = _Block_copy(&aBlock);
      v111 = v88;

      [v103 endMediaRequestWithUUID:isa completion:v110];
      _Block_release(v110);
    }

    (*(v64 + 8))(v102, v38);
  }
}

uint64_t sub_100406E88()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "timeout reached for ending recording", v3, 2u);
  }

  sub_10040A22C();
  swift_allocError();
  sub_100408FF8();
}

void sub_100406FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v51 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = __chkstk_darwin(v4, v7);
  v50 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v46 - v12;
  __chkstk_darwin(v11, v14);
  v16 = v46 - v15;
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000AF9C(v17, qword_1006BA640);
  v19 = v5[2];
  v47 = a2;
  v19(v16, a2, v4);
  swift_errorRetain();
  v46[1] = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v48 = v5;
  v46[0] = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v23 = 136315394;
    v19(v13, v16, v4);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    v27 = v5[1];
    v27(v16, v4);
    v28 = sub_10002741C(v24, v26, &v52);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = sub_1002910C8(v51);
    v31 = sub_10002741C(v29, v30, &v52);

    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Recording with message uuid %s ended with error %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = v5[1];
    v27(v16, v4);
  }

  v32 = v50;
  if (v51)
  {
    v33 = v27;
    (v46[0])(v50, v47, v4);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v32;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52 = v39;
      *v37 = 138412546;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      *(v37 + 12) = 2080;
      sub_10000F108(&qword_1006A25E0, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v4;
      v44 = v43;
      v33(v36, v42);
      v45 = sub_10002741C(v41, v44, &v52);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error while peforming end media request %@ with UUID: %s", v37, 0x16u);
      sub_100009A04(v38, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v39);
    }

    else
    {

      v33(v32, v4);
    }

    swift_errorRetain();
    sub_100408FF8();
  }
}

void sub_1004074AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v21;
  a20 = v22;
  v260 = v20;
  sub_10000691C();
  v248 = type metadata accessor for DispatchWorkItemFlags();
  v23 = sub_100007FEC(v248);
  v247 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23, v27);
  sub_100007FDC();
  v244 = v29 - v28;
  sub_10000D414();
  v246 = type metadata accessor for DispatchQoS();
  v30 = sub_100007FEC(v246);
  v245 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30, v34);
  sub_100007FDC();
  v243 = v36 - v35;
  sub_10000D414();
  v237 = type metadata accessor for Locale();
  v37 = sub_100007FEC(v237);
  v236 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37, v41);
  sub_100007BAC();
  v234 = v42 - v43;
  sub_100006838();
  __chkstk_darwin(v44, v45);
  sub_10000C1C4();
  v235 = v46;
  sub_10000D414();
  v47 = type metadata accessor for URL();
  v48 = sub_100007FEC(v47);
  v256 = v49;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48, v52);
  sub_100007BAC();
  v55 = v53 - v54;
  v58 = __chkstk_darwin(v56, v57);
  v60 = v233 - v59;
  __chkstk_darwin(v58, v61);
  v63 = v233 - v62;
  v242 = type metadata accessor for URL.DirectoryHint();
  v64 = sub_100007FEC(v242);
  v241 = v65;
  v67 = *(v66 + 64);
  __chkstk_darwin(v64, v68);
  sub_100007FDC();
  v240 = v70 - v69;
  v71 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v72 = sub_100007BF0(v71);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72, v75);
  sub_100007BAC();
  v253 = (v76 - v77);
  sub_100006838();
  __chkstk_darwin(v78, v79);
  v252 = v233 - v80;
  sub_100006838();
  __chkstk_darwin(v81, v82);
  sub_10000C1C4();
  v259 = v83;
  v84 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v85 = sub_100007BF0(v84);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85, v88);
  sub_100007BAC();
  v251 = (v89 - v90);
  sub_100006838();
  __chkstk_darwin(v91, v92);
  sub_10000C1C4();
  v257 = v93;
  sub_10000D414();
  v94 = type metadata accessor for UUID();
  v95 = sub_100007FEC(v94);
  v261 = v96;
  v98 = *(v97 + 64);
  __chkstk_darwin(v95, v99);
  sub_100008DE4();
  v250 = v100;
  v249 = v101;
  __chkstk_darwin(v102, v103);
  v105 = v233 - v104;
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  v107 = sub_10000AF9C(v106, qword_1006BA640);
  v108 = v20;
  v258 = v107;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.info.getter();

  v111 = os_log_type_enabled(v109, v110);
  v254 = v63;
  v255 = v47;
  v238 = v55;
  v239 = v60;
  if (v111)
  {
    v112 = sub_100005274();
    v113 = sub_100005E84();
    v263 = v113;
    *v112 = 136315138;
    v269 = v108;
    type metadata accessor for AudioCallRecordingSession();
    v114 = v108;
    v115 = String.init<A>(reflecting:)();
    v117 = v105;
    v118 = sub_10002741C(v115, v116, &v263);

    *(v112 + 4) = v118;
    v105 = v117;
    v120 = v259;
    v119 = v260;
    _os_log_impl(&_mh_execute_header, v109, v110, "Update tokens for %s", v112, 0xCu);
    sub_100009B7C(v113);
    sub_100009ED0();

    sub_10000EA64();
  }

  else
  {

    v120 = v259;
    v119 = v260;
  }

  v121 = v257;
  v122 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298();
  sub_10003A220(&v108[v122], v121, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v121, 1, v94) != 1)
  {
    v128 = v108;
    v129 = *(v261 + 32);
    v129(v105, v121, v94);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v233[0] = Strong;
      v131 = *(v261 + 16);
      v132 = v251;
      v133 = sub_100016FF8();
      v257 = v134;
      (v134)(v133);
      sub_10000AF74(v132, 0, 1, v94);
      v135 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
      swift_beginAccess();
      v136 = v132;
      v137 = v120;
      sub_1000432B0(v136, &v119[v135], &unk_1006A3DD0, &unk_10057C9D0);
      swift_endAccess();
      v138 = sub_100403C68();
      v139 = v105;
      v140 = v94;
      if (v138)
      {
        v141 = v138;
        v142 = v108;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v144 = v250;
        v257(v250, v139, v140);
        v145 = (*(v261 + 80) + 16) & ~*(v261 + 80);
        v146 = swift_allocObject();
        v129((v146 + v145), v144, v140);
        v267 = sub_10040A1A8;
        v268 = v146;
        sub_1000152E4();
        v264 = 1107296256;
        sub_100007DFC();
        v265 = v147;
        v266 = &unk_10062F3A0;
        v148 = _Block_copy(&v263);

        [v141 endMediaRequestWithUUID:isa completion:v148];
        _Block_release(v148);

        v128 = v142;
        v137 = v259;
      }

      v233[1] = v139;
      v257 = v140;
      v149 = v252;
      sub_10029FC2C();
      v150 = v255;
      if (sub_100015468(v149, 1, v255) == 1)
      {
        sub_100009A04(v149, &unk_1006A52C0, &unk_10057D930);
        sub_1000053AC();
        v152 = v256;
      }

      else
      {
        v262 = *(*&v128[OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs] + 16);
        sub_10040A154();
        v263 = BinaryInteger.description.getter();
        v264 = v162;
        v163 = v241;
        v164 = v240;
        v165 = v242;
        (*(v241 + 104))(v240, enum case for URL.DirectoryHint.inferFromPath(_:), v242);
        sub_10001E364();
        URL.appending<A>(path:directoryHint:)();
        (*(v163 + 8))(v164, v165);

        v152 = v256;
        (*(v256 + 8))(v149, v150);
        sub_1000053AC();
      }

      v166 = v260;
      v167 = v253;
      sub_10000AF74(v137, v151, 1, v150);
      sub_10003A220(v137, v167, &unk_1006A52C0, &unk_10057D930);
      if (sub_100015468(v167, 1, v150) == 1)
      {
        sub_100009A04(v167, &unk_1006A52C0, &unk_10057D930);
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.error.getter();
        if (sub_10000A648(v169))
        {
          sub_100017E10();
          v170 = swift_slowAlloc();
          sub_100008944(v170);
          sub_100008A90(&_mh_execute_header, v171, v172, "Unable to create a sandbox directory while updating recording tokens. Treating recording as ended");
          sub_100009ED0();
        }

        v173 = *&v166[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
        if (v173)
        {
          sub_100006890();
          v174 = swift_allocObject();
          *(v174 + 16) = v166;
          v267 = sub_10040A0F8;
          v268 = v174;
          sub_1000152E4();
          v264 = 1107296256;
          sub_10000A600();
          v265 = v175;
          v266 = &unk_10062F2B0;
          v176 = _Block_copy(&v263);
          v177 = v166;
          v178 = v173;
          v179 = v243;
          static DispatchQoS.unspecified.getter();
          v262 = _swiftEmptyArrayStorage;
          sub_10000A438();
          sub_10000F108(v180, v181);
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_1000057D0();
          v182 = v244;
          v183 = v248;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_10040A5D8();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v176);
          sub_1000186A0();

          sub_10003DC28(&a14);
          v185(v182, v183);
          sub_10003DC28(&a12);
          v186(v179, v246);
          sub_100009A04(v137, &unk_1006A52C0, &unk_10057D930);
          sub_10001AC74();
          v188(v140, v257);

          goto LABEL_35;
        }

        sub_1000186A0();

        v190 = v137;
      }

      else
      {
        v140 = v254;
        (*(v152 + 32))(v254, v167, v150);
        URL.path.getter();
        v187 = objc_allocWithZone(CSDSandboxExtensionDirectory);
        v191 = sub_10040A024();
        sub_100006AF0(0, &qword_1006AAF60, TUSandboxExtendedURL_ptr);
        v253 = v191;
        v192 = [v191 URL];
        v193 = v239;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v194 = sub_1004064CC(v193, 1);
        v195 = sub_100006AF0(0, &qword_1006AAF68, TUMomentsMediaRecordRequest_ptr);
        sub_1000186A0();
        v197 = v196;
        v198 = v194;
        v251 = v197;
        v252 = v198;
        v249 = v195;
        v199 = sub_100406570(v197, v198);
        v200 = v234;
        static Locale.current.getter();
        v201 = v235;
        LanguageManager.mappedASRLocale(for:useCase:)();
        v202 = *(v236 + 8);
        v203 = v200;
        v204 = v237;
        v202(v203, v237);
        LanguageManager.languageIdentifier(for:)();
        v202(v201, v204);
        v205 = String._bridgeToObjectiveC()();
        v206 = v256;

        [v199 setLocaleIdentifier:v205];

        v207 = *(v206 + 16);
        v208 = v238;
        v209 = sub_100016FF8();
        v207(v209);
        v210 = v199;
        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.info.getter();

        v213 = os_log_type_enabled(v211, v212);
        v250 = v210;
        if (v213)
        {
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v262 = v210;
          v263 = v215;
          *v214 = 136315394;
          v216 = v210;
          v217 = String.init<A>(reflecting:)();
          v219 = sub_10002741C(v217, v218, &v263);

          *(v214 + 4) = v219;
          *(v214 + 12) = 2080;
          (v207)(v239, v208, v255);
          v220 = String.init<A>(reflecting:)();
          v140 = v221;
          v222 = *(v256 + 8);
          v222(v208, v255);
          v223 = sub_10002741C(v220, v140, &v263);
          sub_1000053AC();

          *(v214 + 14) = v223;
          _os_log_impl(&_mh_execute_header, v211, v212, "Starting media request for update tokens %s to directory %s", v214, 0x16u);
          swift_arrayDestroy();
          v150 = v255;
          sub_100009ED0();

          sub_100009ED0();

          v224 = v259;
        }

        else
        {

          v222 = *(v206 + 8);
          v222(v208, v150);
          v224 = v259;
          sub_1000053AC();
        }

        v225 = v260;
        v226 = sub_100403C68();
        if (v226)
        {
          v227 = v226;
          sub_100006890();
          v228 = swift_allocObject();
          *(v228 + 16) = v225;
          v267 = sub_10040A114;
          v268 = v228;
          sub_1000152E4();
          v264 = 1107296256;
          sub_100035BE0();
          v265 = v229;
          v266 = &unk_10062F350;
          v230 = _Block_copy(&v263);
          v231 = v225;

          v232 = v250;
          [v227 startMediaRequest:v250 completion:v230];
          _Block_release(v230);
        }

        else
        {
        }

        v222(v254, v150);
        v190 = v224;
      }

      sub_100009A04(v190, &unk_1006A52C0, &unk_10057D930);
      sub_10001AC74();
      v160 = v140;
      v161 = v257;
    }

    else
    {
      v153 = v94;
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      if (sub_10000A648(v155))
      {
        sub_100017E10();
        v156 = swift_slowAlloc();
        sub_100008944(v156);
        sub_100008A90(&_mh_execute_header, v157, v158, "No current call for recording session, cannot update tokens");
        sub_100009ED0();
      }

      sub_10001AC74();
      v160 = v105;
      v161 = v153;
    }

    v159(v160, v161);
    goto LABEL_35;
  }

  sub_100009A04(v121, &unk_1006A3DD0, &unk_10057C9D0);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();
  if (sub_10000A648(v124))
  {
    sub_100017E10();
    v125 = swift_slowAlloc();
    sub_100008944(v125);
    sub_100008A90(&_mh_execute_header, v126, v127, "No current messageUUID, cannot update tokens");
    sub_100009ED0();
  }

LABEL_35:
  sub_100005EDC();
}

void sub_100408824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA640);
    (*(v5 + 16))(v9, a2, v4);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138412546;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2080;
      sub_10000F108(&qword_1006A25E0, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v9, v4);
      v19 = sub_10002741C(v16, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error while peforming end media request (due to token update) %@ with UUID: %s", v13, 0x16u);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v20);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_100408B1C()
{
  sub_100005EF4();
  v44 = v1;
  v45 = v2;
  v43[1] = v3;
  v5 = v4;
  v46 = v6;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_100007FEC(v9);
  v48 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v47 = sub_100007CD8();
  v15 = sub_100007FEC(v47);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  sub_10000C4C4();
  v21 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v22 = sub_100005EB4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  v29 = v43 - v28;
  v30 = *&v5[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
  if (v30)
  {
    sub_10003A220(v8, v29, &unk_1006A3DD0, &unk_10057C9D0);
    v31 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v32 = (v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v5;
    sub_100286068(v29, v33 + v31);
    *(v33 + v32) = v46;
    v50[4] = v44;
    v50[5] = v33;
    sub_100009FE4();
    v50[1] = 1107296256;
    sub_10000A600();
    v50[2] = v34;
    v50[3] = v45;
    v35 = _Block_copy(v50);
    v36 = v30;
    v37 = v5;
    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
    sub_10000A438();
    sub_10000F108(v38, v39);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000F310();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    v40 = *(v48 + 8);
    v41 = sub_100007764();
    v42(v41);
    (*(v17 + 8))(v0, v47);
  }

  sub_100005EDC();
}

uint64_t sub_100408DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v11 + a1, v19, &qword_1006AAF50, &unk_100584CC0);
  if (!v20)
  {
    return sub_100009A04(v19, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v19, v18);
  sub_100009A04(v19, &qword_1006AAF50, &unk_100584CC0);
  v12 = sub_100009B14(v18, v18[3]);
  v13 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  swift_beginAccess();
  sub_10003A220(a1 + v13, v10, &unk_1006A3DD0, &unk_10057C9D0);
  if (a3)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  v16 = *v12;
  sub_1003E7BBC(v10, a2, v14);

  sub_100009A04(v10, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v18);
}

uint64_t sub_100408FA0()
{
  sub_10040A22C();
  swift_allocError();
  sub_100408FF8();
}

void sub_100408FF8()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v9 = sub_100007CD8();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000C4C4();
  v16 = *&v0[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
  if (v16)
  {
    sub_100006890();
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    v27[4] = sub_10040A0F0;
    v27[5] = v17;
    sub_100009FE4();
    v27[1] = 1107296256;
    sub_10000A600();
    v27[2] = v18;
    v27[3] = &unk_10062F260;
    v19 = _Block_copy(v27);
    v20 = v16;
    v21 = v0;
    static DispatchQoS.unspecified.getter();
    sub_10000A438();
    sub_10000F108(v22, v23);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000F310();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    v24 = *(v5 + 8);
    v25 = sub_100007764();
    v26(v25);
    (*(v12 + 8))(v1, v9);
  }

  sub_100005EDC();
}

void sub_100409208(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v17[-1] - v5;
  v7 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout))
  {
    v8 = *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout);

    dispatch thunk of DispatchWorkItem.cancel()();

    v9 = *(a1 + v7);
  }

  *(a1 + v7) = 0;

  v10 = type metadata accessor for UUID();
  sub_10000AF74(v6, 1, 1, v10);
  v11 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  swift_beginAccess();
  sub_1000432B0(v6, a1 + v11, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v12 + a1, v18, &qword_1006AAF50, &unk_100584CC0);
  if (v19)
  {
    sub_100009AB0(v18, v17);
    sub_100009A04(v18, &qword_1006AAF50, &unk_100584CC0);
    v13 = sub_100009B14(v17, v17[3]);
    sub_10000AF74(v6, 1, 1, v10);
    v14 = *v13;
    sub_1003E856C();
    sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009B7C(v17);
  }

  else
  {
    sub_100009A04(v18, &qword_1006AAF50, &unk_100584CC0);
  }

  v15 = *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;
}

id sub_100409444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordingProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RecordingProvider()
{
  result = qword_1006AAED8;
  if (!qword_1006AAED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004095A8()
{
  v0 = type metadata accessor for LanguageManager();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100296D6C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004096A4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for UUID();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007BAC();
  v64 = (v18 - v19);
  sub_100006838();
  __chkstk_darwin(v20, v21);
  v66 = &v61 - v22;
  sub_100006838();
  __chkstk_darwin(v23, v24);
  v26 = &v61 - v25;
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000075F0(v27, qword_1006BA640);
  v28 = v3;
  v63 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v65 = v28;
  if (v31)
  {
    v32 = sub_100005274();
    v62 = v14;
    v33 = v32;
    v34 = sub_100005E84();
    v67 = v28;
    v68 = v34;
    *v33 = 136315138;
    sub_100006AF0(0, &qword_1006AAF58, TUMomentsRawVideoMessageDescriptor_ptr);
    v35 = v28;
    v36 = String.init<A>(reflecting:)();
    v38 = sub_10002741C(v36, v37, &v68);

    *(v33 + 4) = v38;
    v1 = v0;
    sub_100021FC8(&_mh_execute_header, v29, v30, "Moments controller reported that recording is finished %s");
    sub_100009B7C(v34);
    sub_100009ED0();

    v14 = v62;
    sub_100009ED0();
  }

  v39 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  sub_100005298();
  sub_10003A220(v1 + v39, v10, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v10, 1, v11) == 1)
  {
    sub_100009A04(v10, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_11:
    sub_100408FF8();
    goto LABEL_14;
  }

  (*(v14 + 32))(v26, v10, v11);
  v40 = [v65 uuid];
  v41 = v66;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v40) = static UUID.== infix(_:_:)();
  v42 = *(v14 + 8);
  v42(v41, v11);
  if ((v40 & 1) == 0)
  {
    v42(v26, v11);
    goto LABEL_11;
  }

  v43 = *(v14 + 16);
  v44 = v64;
  v43(v64, v26, v11);
  v45 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v46 = sub_10000BAF0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_100005274();
    v65 = v26;
    v49 = v48;
    v50 = sub_100005E84();
    v67 = v50;
    *v49 = 136315138;
    v43(v66, v44, v11);
    String.init<A>(reflecting:)();
    v42(v44, v11);
    v51 = sub_100006C30();
    v54 = sub_10002741C(v51, v52, v53);

    *(v49 + 4) = v54;
    sub_1000079AC();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    sub_100009B7C(v50);
    sub_100009ED0();

    sub_10000EA64();

    v60 = v65;
  }

  else
  {

    v42(v44, v11);
    v60 = v26;
  }

  v42(v60, v11);
LABEL_14:
  sub_100005EDC();
}

void sub_100409BB0()
{
  sub_100005EF4();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v10 = sub_100007CD8();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  sub_10000C4C4();
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000075F0(v17, qword_1006BA640);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  v20 = sub_10000BAF0();
  if (os_log_type_enabled(v20, v21))
  {
    sub_100017E10();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Moments controller server died, ending recording if necessary", v22, 2u);
    sub_100009ED0();
  }

  if (*&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController])
  {
    v23 = *&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v23)
    {
      sub_100006890();
      v24 = swift_allocObject();
      *(v24 + 16) = v2;
      v34[4] = sub_10040A5B4;
      v34[5] = v24;
      sub_100009FE4();
      v34[1] = 1107296256;
      sub_10000A600();
      v34[2] = v25;
      v34[3] = &unk_10062F210;
      v26 = _Block_copy(v34);
      v27 = v23;
      v28 = v2;
      static DispatchQoS.unspecified.getter();
      sub_10000A438();
      sub_10000F108(v29, v30);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_10000F310();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100008AB0();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      v31 = *(v6 + 8);
      v32 = sub_100007764();
      v33(v32);
      (*(v13 + 8))(v1, v10);
    }
  }

  sub_100005EDC();
}

void sub_100409E6C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  v8 = &v14[-1] - v7;
  v9 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  sub_100005298();
  sub_10003A220(v9 + a1, v15, &qword_1006AAF50, &unk_100584CC0);
  if (v16)
  {
    sub_100009AB0(v15, v14);
    sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
    sub_100009B14(v14, v14[3]);
    sub_10000691C();
    v10 = type metadata accessor for UUID();
    sub_10000AF74(v8, 1, 1, v10);
    v11 = *v9;
    sub_1003E856C();
    sub_100009A04(v8, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009B7C(v14);
  }

  else
  {
    sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
  }

  v12 = *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;
}

id sub_10040A024()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithName:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10040A154()
{
  result = qword_1006AAF70;
  if (!qword_1006AAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF70);
  }

  return result;
}

void sub_10040A1A8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_100408824(a1, v5);
}

unint64_t sub_10040A22C()
{
  result = qword_1006AAF78;
  if (!qword_1006AAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF78);
  }

  return result;
}

void sub_10040A2A4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100406FA0(a1, v1 + v8, v9);
}

uint64_t sub_10040A388()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for UUID();
  if (!sub_100015468(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10040A4AC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v8, v1 + v7, v9);
}

double sub_10040A5E8@<D0>(uint64_t a1@<X8>)
{
  v30 = 0uLL;
  v32 = 0uLL;
  v31 = _swiftEmptyDictionarySingleton;
  v2 = objc_opt_self();
  v3 = [v2 tu_defaults];
  v4 = sub_10000F848();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v30 = v6;
    *(&v30 + 1) = v8;
  }

  v9 = [v2 tu_defaults];
  v10 = sub_100015304();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v24 = v28;
  v25 = v29;
  if (*(&v29 + 1))
  {
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    if (swift_dynamicCast())
    {
      v12 = v27;
    }

    else
    {
      v12 = Dictionary.init(dictionaryLiteral:)();
    }

    v31 = v12;
  }

  else
  {
    sub_10004975C(&v24);
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    v24 = v30;
    v25 = __PAIR128__(v32, v31);
    v26 = *(&v32 + 1);

    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "initialized Defaults: %s", v16, 0xCu);
    sub_100009B7C(v17);
    sub_100005F40();
    sub_100005F40();
  }

  swift_beginAccess();
  sub_10040A914();
  swift_endAccess();
  v21 = v31;
  result = *&v30;
  v23 = v32;
  *a1 = v30;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  return result;
}

void sub_10040A914()
{
  v1 = type metadata accessor for SHA256();
  v2 = sub_100007FEC(v1);
  v67 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v10, v15);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for URL();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v30 = Data.init(contentsOf:options:)();
  v62 = v0;
  v63 = v12;
  v35 = *(v24 + 8);
  v64 = v9;
  v36 = v30;
  v38 = v37;
  v35(v29, v21);
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100290AC4(v36, v38);
  sub_1003FD638(v36, v38);
  v60 = v38;
  v61 = v36;
  sub_100049B14(v36, v38);
  dispatch thunk of HashFunction.finalize()();
  (v67[1])(v8, v1);
  v39 = v63;
  (*(v63 + 16))(v66, v20, v64);
  sub_1003FD6D4(&unk_1006AAA60, &type metadata accessor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  v40 = v69;
  v67 = v68;
  v41 = v68[2];
  v42 = _swiftEmptyArrayStorage;
  if (v69 == v41)
  {
LABEL_6:
    (*(v39 + 8))(v20, v64);

    v68 = v42;
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100296FEC();
    v43 = BidirectionalCollection<>.joined(separator:)();
    v45 = v44;
    sub_100049B14(v61, v60);

    v46 = v62;
    v47 = *(v62 + 32);

    *(v46 + 24) = v43;
    *(v46 + 32) = v45;
  }

  else
  {
    v66 = (v67 + 4);
    v65 = xmmword_10057D690;
    v48 = v69;
    while ((v40 & 0x8000000000000000) == 0)
    {
      if (v48 >= v67[2])
      {
        goto LABEL_17;
      }

      v49 = v66[v48];
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v50 = swift_allocObject();
      *(v50 + 16) = v65;
      *(v50 + 56) = &type metadata for UInt8;
      *(v50 + 64) = &protocol witness table for UInt8;
      *(v50 + 32) = v49;
      v51 = String.init(format:_:)();
      v53 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = v42[2];
        sub_100017840();
        v42 = v57;
      }

      v54 = v42[2];
      if (v54 >= v42[3] >> 1)
      {
        sub_100017840();
        v42 = v58;
      }

      ++v48;
      v42[2] = v54 + 1;
      v55 = &v42[2 * v54];
      v55[4] = v51;
      v55[5] = v53;
      if (v41 == v48)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    sub_1000080B0();
    v31 = type metadata accessor for Logger();
    sub_10000AF9C(v31, qword_1006BA5F8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "couldn't read contents of toneURL", v34, 2u);
      sub_100005F40();
    }
  }
}

void sub_10040AEA8()
{
  v1 = objc_opt_self();
  v2 = [v1 tu_defaults];
  if (v0[1])
  {
    v3 = *v0;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10000F848();
  [v2 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
  v6 = [v1 tu_defaults];
  v7 = v0[2];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = sub_100015304();
  [v6 setObject:isa forKey:v9];
}

uint64_t sub_10040AFD0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[2];

  v8 = sub_1002CB47C(a1, a2, v7);
  if (v6)
  {
    if (v9)
    {
      if (v5 != v8 || v6 != v9)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v11 ^ 1;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:

    v12 = 1;
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *(v16 + 10) = sub_10000AAD8(1.5047e-36, v20);
    sub_100018350(&_mh_execute_header, v17, v18, "Beep changed=%{BOOL}d for %s");
    sub_100009B7C(v20);
    sub_100005F40();
    sub_100005F40();
  }

  return v12 & 1;
}

uint64_t sub_10040B180(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  if (v4)
  {
    if (*v2 == a1 && v4 == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *(v10 + 10) = sub_10000AAD8(1.5047e-36, v14);
    sub_100018350(&_mh_execute_header, v11, v12, "Siri utterance changed=%{BOOL}d for: %s");
    sub_100009B7C(v14);
    sub_100005F40();
    sub_100005F40();
  }

  return v6 & 1;
}

void sub_10040B2D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  *v2 = a1;
  *(v2 + 8) = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_10040AEA8();
}

uint64_t sub_10040B338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565724769726973 && a2 == 0xEC000000676E6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000100576110 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6365684370656562 && a2 == 0xEC0000006D75736BLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10040B460(char a1)
{
  if (!a1)
  {
    return 0x6565724769726973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6365684370656562;
}

uint64_t sub_10040B4CC(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006AAFA0, &qword_100586D40);
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_10040BAA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v16 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v21 = v3[2];
    v20[15] = 1;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    sub_10040BAFC(&qword_1006AAFA8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[3];
    v18 = v3[4];
    v20[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_10040B69C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10026D814(&qword_1006AAF88, &qword_100586D38);
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  v13 = v23 - v12;
  v14 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_10040BAA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009B7C(a1);
  }

  v26 = 0;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  v25 = 1;
  sub_10040BAFC(&qword_1006AAF98);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23[0] = v23[1];
  v24 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v13;
  v21 = v20;
  (*(v8 + 8))(v19, v5);
  result = sub_100009B7C(a1);
  *a2 = v15;
  a2[1] = v17;
  a2[2] = v23[0];
  a2[3] = v18;
  a2[4] = v21;
  return result;
}

uint64_t sub_10040B8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10040B338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10040B90C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10040B458();
  *a1 = result;
  return result;
}

uint64_t sub_10040B934(uint64_t a1)
{
  v2 = sub_10040BAA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040B970(uint64_t a1)
{
  v2 = sub_10040BAA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10040B9AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10040B69C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10040BA10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10040BA50(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10040BAA8()
{
  result = qword_1006AAF90;
  if (!qword_1006AAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF90);
  }

  return result;
}

uint64_t sub_10040BAFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(&qword_1006A2BE0, &unk_10057E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GreetingsChecksums.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10040BC48()
{
  result = qword_1006AAFB0;
  if (!qword_1006AAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFB0);
  }

  return result;
}

unint64_t sub_10040BCA0()
{
  result = qword_1006AAFB8;
  if (!qword_1006AAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFB8);
  }

  return result;
}

unint64_t sub_10040BCF8()
{
  result = qword_1006AAFC0;
  if (!qword_1006AAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFC0);
  }

  return result;
}

void sub_10040BD4C(uint64_t a1, uint64_t a2)
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

id sub_10040BDB0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t (*sub_10040BE24(void *a1))()
{
  v3 = sub_1002FDF84(0x40uLL);
  *a1 = v3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  sub_100007FEC(v4);
  v3[5] = v5;
  v7 = sub_1002FDF84(*(v6 + 64));
  v8 = sub_100008C50(v7);
  v9(v8);
  v3[7] = sub_1004106E8(v3, v1);
  return sub_1004136E8;
}

uint64_t (*sub_10040BF00(void *a1))()
{
  v3 = sub_1002FDF84(0x40uLL);
  *a1 = v3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  sub_100007FEC(v4);
  v3[5] = v5;
  v7 = sub_1002FDF84(*(v6 + 64));
  v8 = sub_100008C50(v7);
  v9(v8);
  v3[7] = sub_100410804(v3, v1);
  return sub_10040BFDC;
}

void sub_10040BFE0(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = sub_10000FF30();
  v7(v6);
  (*(v5 + 8))(v3, v4);
  free(v3);

  free(v1);
}

void (*sub_10040C054(void *a1, char a2))(uint64_t a1)
{
  v4 = sub_1002FDF84(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1004109B8(v4, a2 & 1);
  return sub_10040C0B8;
}

void sub_10040C0B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = sub_10000FF30();
  v4(v3);

  free(v1);
}

uint64_t sub_10040C104(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

void sub_10040C164()
{
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_1004125F4();
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v0 setNotificationCategories:isa];
}

void sub_10040C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  sub_10040C1FC(a1, a2, a3);
}

void sub_10040C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1004582CC;
    v6[3] = &unk_10062FB00;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 addNotificationRequest:a1 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_10040C2CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    a5 = 0;
  }

  sub_10040C2D8(a1, a2, a3, a4, a5);
}

void sub_10040C2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v10 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1004582CC;
    v11[3] = &unk_10062FAD8;
    a4 = _Block_copy(v11);
  }

  [v6 replaceContentForRequestWithIdentifier:v10 replacementContent:a3 completionHandler:a4];
  _Block_release(a4);
}

void sub_10040C3BC()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 removeDeliveredNotificationsWithIdentifiers:isa];
}

void sub_10040C410(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter);
  v2 = *(a1 + OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 16);
  v6 = swift_unknownObjectRetain();
  v5(v6, ObjectType, v2);
  (*(v2 + 32))(ObjectType, v2);
  v8 = *(v1 + OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter);
  v7 = *(v1 + OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter + 8);
  v9 = swift_getObjectType();
  v10 = *(v7 + 16);
  v11 = swift_unknownObjectRetain();
  v10(v11, v9, v7);
  (*(v7 + 32))(v9, v7);
  sub_10040CF74();
  sub_10026D814(&qword_1006AB130, &qword_100586EE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = 0;
  *(inited + 40) = &_swiftEmptySetSingleton;
  *(inited + 48) = 1;
  *(inited + 56) = &_swiftEmptySetSingleton;
  sub_10026D814(&qword_1006AB138, &qword_100586EF0);
  sub_1004124BC();
  v115 = Dictionary.init(dictionaryLiteral:)();
  v13 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);
  v104 = v1;
  if (v15)
  {
    v16 = OBJC_IVAR___CSDUserNotificationController_providersByIdentifier;

    v17 = 32;
    v102 = v14;
    v103 = v16;
    while (1)
    {
      v112 = *(v14 + v17);
      v18 = swift_getObjectType();
      v19 = *(*(&v112 + 1) + 16);
      swift_unknownObjectRetain();
      v20 = v19(v18, *(&v112 + 1));
      v21 = sub_10040D7F4(v20 & 1);
      v107 = v22;
      v108 = v19;
      v110 = v15;
      v111 = v17;
      v109 = v21;
      if (v19(v18, *(&v112 + 1)))
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_6;
      }

      v26 = TUPreferredFaceTimeBundleIdentifier();
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v28;
      v106 = v27;

LABEL_8:
      v29 = (*(*(&v112 + 1) + 8))(v18, *(&v112 + 1));
      v31 = v30;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v32 = *(v1 + v103);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v1 + v103);
      v34 = v114;
      *(v1 + v103) = 0x8000000000000000;
      v35 = sub_100005208();
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v40 = v35;
      v41 = v36;
      sub_10026D814(&unk_1006AB148, &qword_100586EF8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        v42 = sub_100005208();
        v1 = v104;
        if ((v41 & 1) != (v43 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v40 = v42;
      }

      else
      {
        v1 = v104;
      }

      v44 = v114;
      if (v41)
      {
        v45 = v114[7];
        v46 = *(v45 + 16 * v40);
        *(v45 + 16 * v40) = v112;

        swift_unknownObjectRelease();
      }

      else
      {
        v114[(v40 >> 6) + 8] |= 1 << v40;
        v47 = (v44[6] + 16 * v40);
        *v47 = v29;
        v47[1] = v31;
        *(v44[7] + 16 * v40) = v112;
        v48 = v44[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_44;
        }

        v44[2] = v50;
      }

      v51 = *(v1 + v103);
      *(v1 + v103) = v44;

      swift_endAccess();
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = v106;
      v53[4] = v105;
      v53[5] = v109;
      v53[6] = v107;
      v54 = *(*(&v112 + 1) + 56);

      swift_unknownObjectRetain();
      v54(sub_100412510, v53, v18, *(&v112 + 1));

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v109;
      v56[4] = v107;
      v57 = *(*(&v112 + 1) + 104);
      swift_unknownObjectRetain();

      v57(sub_100412520, v56, v18, *(&v112 + 1));

      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v112;
      v60 = *(*(&v112 + 1) + 128);
      swift_unknownObjectRetain();

      v60(sub_10041252C, v59, v18, *(&v112 + 1));

      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      v62[2] = v61;
      v62[3] = v109;
      v62[4] = v107;
      v63 = *(*(&v112 + 1) + 80);
      swift_unknownObjectRetain();

      v63(sub_100412578, v62, v18, *(&v112 + 1));

      v64 = v108(v18, *(&v112 + 1));
      v65 = sub_10040C054(v113, v64 & 1);
      if (*v66)
      {
        v67 = (*(*(&v112 + 1) + 24))(v18, *(&v112 + 1));
        sub_10040F0E0(v67);
      }

      (v65)(v113, 0);
      v14 = v102;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v17 = v111 + 16;
      v15 = v110 - 1;
      if (v110 == 1)
      {

        goto LABEL_21;
      }
    }

LABEL_6:
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v25;
    v106 = v24;
    goto LABEL_8;
  }

LABEL_21:
  v68 = *(v1 + OBJC_IVAR___CSDUserNotificationController_badgeManager);
  BadgeManager.startObservingForStoreBadgeCountUpdate()();
  if (qword_1006A0B70 != -1)
  {
LABEL_45:
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000AF9C(v69, qword_1006BA6D0);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "Looking to merge badge count data", v72, 2u);
  }

  BadgeManager.mergeBadgeCountData(_:)(1);
  v73 = 0;
  v74 = v115;
  v76 = v115 + 64;
  v75 = *(v115 + 64);
  v77 = 1 << *(v115 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v75;
  v80 = (v77 + 63) >> 6;
  if ((v78 & v75) != 0)
  {
    while (1)
    {
      v81 = v73;
LABEL_32:
      v82 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v83 = v82 | (v81 << 6);
      v84 = *(*(v74 + 48) + v83);
      v85 = *(*(v74 + 56) + 8 * v83);

      sub_10040D7F4(v84);
      v87 = v86;
      v88 = swift_getObjectType();
      (*(v87 + 40))(v85, v88, v87);
      swift_unknownObjectRelease();

      sub_10040E188();
      if (!v79)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
LABEL_28:
    v81 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v81 >= v80)
    {
      break;
    }

    v79 = *(v76 + 8 * v81);
    ++v73;
    if (v79)
    {
      v73 = v81;
      goto LABEL_32;
    }
  }

  if ([objc_opt_self() isFaceTimePhotosXPCServiceEnabled])
  {
    v89 = *(v104 + OBJC_IVAR___CSDUserNotificationController_clientManager);
    if (v89)
    {
      v90 = v89;
      [v90 setRequiredConnectionCapability:@"modify-usernotifications"];
      v91 = [objc_opt_self() userNotificationProviderServerXPCInterface];
      [v90 setExportedInterface:v91];

      [v90 setExportedObject:v104];
      v92 = String._bridgeToObjectiveC()();
      [v90 startListeningOnMachServiceWithName:v92];

      v93 = v90;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v96 = 138412290;
        *(v96 + 4) = v93;
        *v97 = v89;
        v98 = v93;
        _os_log_impl(&_mh_execute_header, v94, v95, "Started broadcasting User notifications mach service with %@", v96, 0xCu);
        sub_100009A04(v97, &unk_1006A2630, &qword_10057CB40);

        v93 = v94;
        v94 = v98;
      }
    }
  }

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "Loaded user notification controller", v101, 2u);
  }
}

void sub_10040CF74()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  v77 = sub_10000AF9C(v19, qword_1006BA6D0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Updating providers", v22, 2u);
  }

  v74 = v10;
  v75 = v7;

  v23 = [objc_allocWithZone(CHManager) init];
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v24 = swift_allocObject();
  v80 = xmmword_10057D690;
  *(v24 + 16) = xmmword_10057D690;
  *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v24 + 40) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v80;
  *(v26 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 40) = v27;
  v28 = TUPreferredFaceTimeBundleIdentifier();
  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v29 = [objc_opt_self() tu_contactStoreConfigurationForBundleIdentifier:v28];

  [v29 setIncludeLocalContacts:1];
  v30 = objc_allocWithZone(CNContactStore);
  v76 = v29;
  v78 = [v30 initWithConfiguration:v29];
  sub_10026D814(&qword_1006AB190, &unk_100583400);
  inited = swift_initStackObject();
  *(inited + 16) = v80;
  *&v80 = type metadata accessor for CallHistoryNotificationProvider();
  v32 = objc_allocWithZone(v80);
  v33 = v18;
  v34 = v23;
  v79 = v34;

  *(inited + 32) = sub_100411878(v33, v34, &off_100620CA8, v24, 0, v32);
  *(inited + 40) = &off_10062B148;
  v35 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  sub_100414424(inited);
  swift_endAccess();
  v36 = objc_opt_self();
  v37 = v33;
  v38 = [v36 defaultCenter];
  v39 = objc_allocWithZone(type metadata accessor for CallRecordingNotificationProvider());
  v40 = sub_1003AB91C(v37, v38);
  swift_beginAccess();
  sub_100461ABC();
  v41 = *(*(v1 + v35) + 16);
  sub_100461BC0(v41);
  v42 = *(v1 + v35);
  *(v42 + 16) = v41 + 1;
  v43 = v42 + 16 * v41;
  *(v43 + 32) = v40;
  *(v43 + 40) = &off_10062BDA0;
  *(v1 + v35) = v42;
  swift_endAccess();
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10057E830;
  v45 = v37;
  v46 = v78;
  *(v44 + 32) = sub_100411518(v45, v46);
  *(v44 + 40) = &off_100624CB8;
  v47 = v46;
  v48 = [v36 defaultCenter];
  v49 = objc_allocWithZone(type metadata accessor for FaceTimeNotificationProvider());
  v50 = v45;
  *(v44 + 48) = sub_100411600(v50, v47, v48, v49);
  *(v44 + 56) = &off_100625D68;
  v51 = objc_allocWithZone(v80);
  v52 = v79;

  *(v44 + 64) = sub_100411878(v50, v52, &off_100620CD8, v26, 1, v51);
  *(v44 + 72) = &off_10062B148;
  swift_beginAccess();
  sub_100414424(v44);
  swift_endAccess();
  v53 = [objc_opt_self() sharedInstance];
  if (v53)
  {
    v54 = v53;

    v55 = [v54 deviceType];

    if (v55 != 4 || [*(v1 + OBJC_IVAR___CSDUserNotificationController_featureFlags) voicemailInboxOnIPadEnabled])
    {
      v56 = type metadata accessor for Date();
      v57 = v74;
      sub_10000AF74(v74, 1, 1, v56);
      v58 = v75;
      sub_10000AF74(v75, 1, 1, v56);
      v59 = objc_allocWithZone(VMVoicemailManager);
      v60 = v50;
      v61 = [v59 init];
      v62 = objc_allocWithZone(TUFeatureFlags);
      v63 = v61;
      v64 = [v62 init];
      v65 = [objc_opt_self() tu_defaults];
      v66 = objc_allocWithZone(type metadata accessor for VoicemailNotificationProvider());
      v67 = sub_10041266C(v60, v63, v64, v65, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, v57, v58, v66);

      swift_beginAccess();
      sub_100461ABC();
      v68 = *(*(v1 + v35) + 16);
      sub_100461BC0(v68);
      v69 = *(v1 + v35);
      *(v69 + 16) = v68 + 1;
      v70 = v69 + 16 * v68;
      *(v70 + 32) = v67;
      *(v70 + 40) = &off_10062FC08;
      *(v1 + v35) = v69;
      swift_endAccess();
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Updated providers", v73, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10040D7F4(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = &OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter;
    if ((a1 & 1) == 0)
    {
      v12 = &OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter;
    }

    v13 = (v1 + *v12);
    v14 = *v13;
    v15 = v13[1];
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040D934()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___CSDUserNotificationController_callFilterController);
    v3 = sub_1002E23D4(v2);

    if (v3)
    {
      sub_10040DAAC();

      goto LABEL_9;
    }
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA6D0);
  v3 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, v5, "Not posting notification since it is restricted by the call filter", v6, 2u);
  }

LABEL_9:
}

void sub_10040DAAC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v13 - v12) = v15;
  (*(v8 + 104))(v13 - v12, enum case for DispatchPredicate.onQueue(_:), v5);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v14, v5);
  if (v15)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6D0);
  v18 = v4;
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v24 = v18;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v25 = String.init<A>(reflecting:)();
    v27 = sub_10002741C(v25, v26, &v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Adding notification request %@ to %s", v21, 0x16u);
    sub_100009A04(v22, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v23);
    sub_100005F40();
    sub_100005F40();
  }

  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  *(v29 + 16) = v18;
  (*(v2 + 48))(v18, sub_100412664, v29, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040DD94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10040DE1C();
  }
}

void sub_10040DE1C()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v15 - v14) = v17;
  (*(v10 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v16, v7);
  if (v17)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA6D0);

  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_10002741C(v6, v4, &v29);
    *(v22 + 12) = 2080;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, &v29);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "Removing notification with identifier %s from %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  ObjectType = swift_getObjectType();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10057D690;
  *(v27 + 32) = v6;
  *(v27 + 40) = v4;
  v28 = *(v2 + 80);

  v28(v27, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040E0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    ObjectType = swift_getObjectType();
    (*(a3 + 16))(ObjectType, a3);
    sub_10040E188();
  }
}

void sub_10040E188()
{
  sub_100005EF4();
  v2 = v1;
  v141 = sub_10026D814(&unk_1006A7AC0, &qword_100586F00);
  v3 = sub_100007FEC(v141);
  v140 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007BAC();
  v139 = v8 - v9;
  __chkstk_darwin(v10, v11);
  v142 = &v138 - v12;
  v161 = type metadata accessor for BadgeCountCategory();
  v13 = sub_100007FEC(v161);
  v144 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007BAC();
  v138 = v18 - v19;
  __chkstk_darwin(v20, v21);
  v145 = &v138 - v22;
  v153 = sub_10026D814(&qword_1006AB158, &unk_100586F08);
  v23 = sub_100008070(v153);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v152 = &v138 - v27;
  v28 = sub_10026D814(&qword_1006AB160, &qword_100584570);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v30);
  sub_100007BAC();
  v33 = v31 - v32;
  v36 = __chkstk_darwin(v34, v35);
  v38 = &v138 - v37;
  v40 = __chkstk_darwin(v36, v39);
  v156 = &v138 - v41;
  __chkstk_darwin(v40, v42);
  v160 = (&v138 - v43);
  v44 = type metadata accessor for DispatchPredicate();
  v45 = sub_100007FEC(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45, v50);
  sub_100007FDC();
  v53 = v52 - v51;
  v54 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v52 - v51) = v54;
  (*(v47 + 104))(v52 - v51, enum case for DispatchPredicate.onQueue(_:), v44);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  (*(v47 + 8))(v53, v44);
  if ((v54 & 1) == 0)
  {
    goto LABEL_65;
  }

  v147 = v38;
  v157 = v33;
  v56 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  v143 = v0;
  v155 = v56;
  v57 = *(v0 + v56);
  v158 = *(v57 + 16);
  v58 = (v2 & 1) == 0;
  if (v2)
  {
    v59 = 0x656E6F6850;
  }

  else
  {
    v59 = 0x656D695465636146;
  }

  if (v58)
  {
    v60 = 0xE800000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  v61 = 0;
  v159 = _swiftEmptyArrayStorage;
  while (v158 != v61)
  {
    if (v61 >= *(v57 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      sub_10000860C();
      goto LABEL_57;
    }

    v162 = *(v57 + 16 * v61 + 32);
    ObjectType = swift_getObjectType();
    v63 = *(&v162 + 1);
    v64 = *(*(&v162 + 1) + 16);
    swift_unknownObjectRetain();
    v65 = v64(ObjectType, v63);
    v66 = (v65 & 1) == 0;
    if (v65)
    {
      v67 = 0x656E6F6850;
    }

    else
    {
      v67 = 0x656D695465636146;
    }

    if (v66)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    if (v67 == v59 && v33 == v60)
    {

LABEL_24:
      v70 = v159;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A440(0, v70[2] + 1, 1);
        v70 = v163;
      }

      v73 = v70[2];
      v72 = v70[3];
      v33 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        sub_10039A440((v72 > 1), v73 + 1, 1);
        v70 = v163;
      }

      ++v61;
      v70[2] = v33;
      v159 = v70;
      *&v70[2 * v73 + 4] = v162;
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      ++v61;
    }
  }

  v155 = *(*(v143 + v155) + 16);
  v151 = enum case for BadgeCountCategory.legacyVoicemails(_:);
  v150 = (v144 + 104);
  v146 = (v144 + 32);
  v148 = (v144 + 8);
  v74 = 0;

  v75 = (v158 + 40);
  v76 = &qword_1006AB160;
  v77 = v152;
  while (1)
  {
    if (v155 == v74)
    {

      v33 = 0;
      v154 = 0;
      goto LABEL_45;
    }

    if (v74 >= *(v158 + 16))
    {
      goto LABEL_64;
    }

    v78 = v76;
    *&v162 = v75;
    v33 = *(v75 - 1);
    v79 = *v75;
    v80 = swift_getObjectType();
    v81 = *(v79 + 40);
    swift_unknownObjectRetain();
    v154 = v79;
    v82 = v79;
    v76 = v78;
    v81(v80, v82);
    v84 = v160;
    v83 = v161;
    v85 = v156;
    (*v150)(v156, v151, v161);
    sub_10000AF74(v85, 0, 1, v83);
    v86 = *(v153 + 48);
    sub_100343100(v84, v77, v78, &qword_100584570);
    sub_100343100(v85, v77 + v86, v78, &qword_100584570);
    sub_100007E10(v77);
    if (v58)
    {
      break;
    }

    v149 = v33;
    v94 = v147;
    sub_100343100(v77, v147, v78, &qword_100584570);
    sub_100007E10(v77 + v86);
    if (v95)
    {
      sub_1000112D0();
      sub_100009A04(v96, v97, v98);
      sub_1000112D0();
      sub_100009A04(v99, v100, v101);
      (*v148)(v94, v83);
      v33 = v149;
      v93 = v77;
LABEL_40:
      sub_100009A04(v93, &qword_1006AB158, &unk_100586F08);
      goto LABEL_42;
    }

    v102 = v145;
    (*v146)(v145, v77 + v86, v83);
    sub_10000F150(&unk_1006AB168, &type metadata accessor for BadgeCountCategory);
    v103 = dispatch thunk of static Equatable.== infix(_:_:)();
    v104 = *v148;
    (*v148)(v102, v83);
    sub_100009A04(v156, v78, &qword_100584570);
    sub_100009A04(v160, v78, &qword_100584570);
    v104(v94, v83);
    v76 = v78;
    sub_100009A04(v77, v78, &qword_100584570);
    v33 = v149;
    if (v103)
    {
      goto LABEL_44;
    }

LABEL_42:
    swift_unknownObjectRelease();
    v75 = (v162 + 16);
    ++v74;
  }

  sub_1000112D0();
  sub_100009A04(v87, v88, v89);
  sub_1000112D0();
  sub_100009A04(v90, v91, v92);
  sub_100007E10(v77 + v86);
  v93 = v77;
  if (!v58)
  {
    goto LABEL_40;
  }

  sub_100009A04(v77, &qword_1006AB160, &qword_100584570);
LABEL_44:

LABEL_45:
  v105 = 0;
  v106 = v159;
  v107 = v159[2];
  v160 = (v144 + 16);
  v108 = v159 + 5;
  *&v162 = _swiftEmptyArrayStorage;
  v158 = (v159 + 5);
LABEL_46:
  v109 = &v108[2 * v105];
  while (v107 != v105)
  {
    if (v105 >= v106[2])
    {
      goto LABEL_63;
    }

    v110 = *(v109 - 1);
    v111 = *v109;
    v112 = swift_getObjectType();
    v113 = *(v111 + 40);
    swift_unknownObjectRetain();
    v114 = v157;
    v113(v112, v111);
    if (sub_100015468(v114, 1, v161) != 1)
    {
      v115 = v138;
      v116 = v161;
      (*v146)(v138, v114, v161);
      v117 = *(v141 + 48);
      v118 = v139;
      (*v160)(v139, v115, v116);
      v119 = (*(v111 + 32))(v112, v111);
      swift_unknownObjectRelease();
      (*v148)(v115, v116);
      *(v118 + v117) = v119;
      sub_100412584(v118, v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470A70(0, *(v162 + 16) + 1, 1, v162);
        *&v162 = v123;
      }

      v121 = *(v162 + 16);
      v120 = *(v162 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_100470A70(v120 > 1, v121 + 1, 1, v162);
        *&v162 = v124;
      }

      ++v105;
      v122 = v162;
      *(v162 + 16) = v121 + 1;
      sub_100412584(v142, v122 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v121);
      v108 = v158;
      v106 = v159;
      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    sub_100009A04(v114, &qword_1006AB160, &qword_100584570);
    v109 += 2;
    ++v105;
    v106 = v159;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_66;
  }

LABEL_57:
  v125 = type metadata accessor for Logger();
  sub_10000AF9C(v125, qword_1006BA6D0);
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();
  v128 = os_log_type_enabled(v126, v127);
  v129 = v143;
  if (v128)
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&_mh_execute_header, v126, v127, "We have a voicemail provider, so setting isAmbiguous", v130, 2u);
    sub_100005F40();
  }

  v131 = *(v129 + OBJC_IVAR___CSDUserNotificationController_badgeManager);
  if (v33)
  {
    v132 = swift_getObjectType();
    v133 = v154;
    v134 = *(v154 + 32);
    swift_unknownObjectRetain();
    v134(v132, v133);
    swift_unknownObjectRelease();
  }

  v135 = sub_10000FF30();
  BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(v135, v136, v137);
  swift_unknownObjectRelease();

  sub_100005EDC();
}

void sub_10040ED48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10040EDD8();
  }
}

void sub_10040EDD8()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v17 - v16) = v19;
  (*(v12 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v9);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v18, v9);
  if (v19)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA6D0);

  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_10002741C(v8, v6, &v31);
    *(v24 + 12) = 2080;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v25 = String.init<A>(reflecting:)();
    v27 = sub_10002741C(v25, v26, &v31);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Replacing notification with identifier %s from %s", v24, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  *(v29 + 16) = v8;
  *(v29 + 24) = v6;
  v30 = *(v2 + 56);

  v30(v8, v6, v4, sub_10041265C, v29, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040F0E0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
    sub_1004125F4();
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100022DDC();
      return;
    }

    while (1)
    {
      sub_10039634C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10040F2C0()
{
  sub_100005EF4();
  v27 = v0;
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100007FEC(v25);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v11 = sub_100008070(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100007FDC();
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  sub_100007FDC();
  sub_100006AF0(0, &unk_1006A6340, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000F150(&unk_1006AB110, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10026D814(&qword_1006A6350, &qword_100586EE0);
  sub_1000112D0();
  sub_100018040(v18, v19, v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v25);
  v21 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = TUPreferredFaceTimeBundleIdentifier();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getObjectType();
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  v23 = sub_10040BDB0();
  v24 = sub_10040BDB0();
  sub_100411FFC(v23, v24, _swiftEmptyArrayStorage, v27, v21, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}

id sub_10040F5DC()
{
  ObjectType = swift_getObjectType();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6D0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deallocating %@", v6, 0xCu);
    sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_10040F804(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA6D0);
    v9 = a2;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [v9 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10002741C(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Successfully posted notification with identifier: %s", v11, 0xCu);
      sub_100009B7C(v12);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error while posting notification: %@", v4, 0xCu);
    sub_100009A04(v5, &unk_1006A2630, &qword_10057CB40);

LABEL_10:

    return;
  }
}

void sub_10040FAF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10002741C(a2, a3, &v15);
      _os_log_impl(&_mh_execute_header, oslog, v11, "Successfully replaced notification with identifier: %s", v12, 0xCu);
      sub_100009B7C(v13);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA6D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Error while replacing notification: %@", v5, 0xCu);
    sub_100009A04(v6, &unk_1006A2630, &qword_10057CB40);

LABEL_10:

    return;
  }
}

void sub_10040FE14()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v31 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v31);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v30 = *&v0[OBJC_IVAR___CSDUserNotificationController_queue];
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = v0;
  v26[4] = v4;
  v26[5] = v2;
  v32[4] = sub_1004106DC;
  v32[5] = v26;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_100004CEC;
  v32[3] = &unk_10062F880;
  v27 = _Block_copy(v32);
  v28 = v6;
  v29 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v10 + 8))(v16, v7);
  (*(v19 + 8))(v25, v31);

  sub_100005EDC();
}

uint64_t sub_1004100B4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA6D0);
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
    _os_log_impl(&_mh_execute_header, v8, v9, "Received response %@", v10, 0xCu);
    sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
  }

  v13 = [v7 notification];
  v14 = [v13 request];

  v15 = [v14 content];
  v16 = sub_1004114A8(v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = OBJC_IVAR___CSDUserNotificationController_providersByIdentifier;
    swift_beginAccess();
    if (sub_1002CBBB8(v18, v19, *(a2 + v20)))
    {
      v22 = v21;
      swift_endAccess();

      ObjectType = swift_getObjectType();
      v31[3] = sub_100006AF0(0, &qword_1006AB108, UNNotificationResponse_ptr);
      v31[4] = &off_1006253B8;
      v31[0] = v7;
      v24 = *(v22 + 144);
      v25 = v7;
      v24(v31, ObjectType, v22);
      swift_unknownObjectRelease();
      v26 = sub_100009B7C(v31);
      return a3(v26);
    }

    swift_endAccess();
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not find notification provider for action", v29, 2u);
  }

  return a3(v26);
}

void sub_100410478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a4 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      objc_allocWithZone(type metadata accessor for MomentsNotification());

      v18 = sub_100388A5C(a1, a2, a3);
      v19 = [objc_opt_self() defaultCenter];
      [v19 postNotificationName:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:v18];

      a5[2](a5, 0);
      _Block_release(a5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1004106E8(void *a1, uint64_t a2))()
{
  v5 = sub_1002FDF84(0x68uLL);
  *a1 = v5;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = sub_1002FDF84(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_10041144C(v5);
  v5[12] = sub_100410AA4(v5 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1004136EC;
}

uint64_t (*sub_100410804(void *a1, uint64_t a2))()
{
  v5 = sub_1002FDF84(0x68uLL);
  *a1 = v5;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = sub_1002FDF84(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_100411474(v5);
  v5[12] = sub_100410D70(v5 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_100410920;
}

void sub_100410924(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = sub_10000FF30();
  v2(v6);
  free(v3);

  free(v1);
}

void (*sub_1004109B8(void *a1, char a2))(uint64_t a1)
{
  v5 = sub_1002FDF84(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10041144C(v5);
  v5[9] = sub_100411260((v5 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_100410A48;
}

void sub_100410A48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_10000FF30();
  v2(v3);

  free(v1);
}

void (*sub_100410AA4(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_1002FDF84(0x40uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = type metadata accessor for UUID();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v8[5] = sub_1002FDF84(*(v10 + 64));
  v11 = *v3;
  sub_100021E24();
  *(v8 + 56) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_10026D814(&qword_1006A4AC0, &qword_10057FB38);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    v19 = *v4;
    sub_100021E24();
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[6] = v17;
  if (v18)
  {
    v22 = *(*(*v4 + 56) + 8 * v17);
  }

  else
  {
    v22 = 0;
  }

  *v8 = v22;
  return sub_100410C30;
}

void sub_100410C30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(*(v4 + 56) + 8 * v5) = v2;
    }

    else
    {
      v14 = v1[5];
      (*(v1[4] + 16))(v14, v1[1], v1[3]);
      sub_1003283CC(v5, v14, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = v1[3];
    v8 = v1[2];
    sub_100035BF4(v1[4]);
    v11(v9 + v10 * v6, v7);
    sub_10026D814(&qword_1006A7628, &qword_100582D70);
    sub_100010588();
    sub_10000F150(v12, v13);
    _NativeDictionary._delete(at:)();
  }

  v15 = v1[5];
  v16 = *v1;

  free(v15);

  free(v1);
}

void (*sub_100410D70(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = sub_1002FDF84(0x78uLL);
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v8 = type metadata accessor for UUID();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v7[4] = sub_1002FDF84(*(v9 + 64));
  v10 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v7[5] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[6] = v11;
  v13 = *(v11 + 64);
  v7[7] = sub_1002FDF84(v13);
  v7[8] = sub_1002FDF84(v13);
  v7[9] = sub_1002FDF84(v13);
  v14 = *(*(sub_10026D814(&unk_1006A7600, &unk_100584E50) - 8) + 64);
  v7[10] = sub_1002FDF84(v14);
  v7[11] = sub_1002FDF84(v14);
  v15 = sub_1002FDF84(v14);
  v7[12] = v15;
  v16 = *v3;
  sub_100021E24();
  *(v7 + 112) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v17;
  v23 = v18;
  sub_10026D814(&qword_1006A6FB8, &unk_100582780);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v21))
  {
    v24 = *v4;
    sub_100021E24();
    if ((v23 & 1) == (v26 & 1))
    {
      v22 = v25;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[13] = v22;
  if (v23)
  {
    sub_10032DE84(*(*v4 + 56) + *(v12 + 72) * v22, v15);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  sub_10000AF74(v15, v27, 1, v10);
  return sub_100411010;
}

void sub_100411010(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = v2[5];
  if (a2)
  {
    v5 = v2[10];
    sub_100343100(v3, v5, &unk_1006A7600, &unk_100584E50);
    v6 = sub_100015468(v5, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[10];
    if (v6 != 1)
    {
      v9 = v2[1];
      sub_10032DE84(v8, v2[8]);
      v10 = *v9;
      v11 = v2[13];
      v12 = v2[8];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v13 = v2[7];
        v14 = v2[4];
        (*(v2[3] + 16))(v14, *v2, v2[2]);
        sub_10032DE84(v12, v13);
        sub_100327DF0(v11, v14, v13, v10);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = v2[11];
    sub_100343100(v3, v15, &unk_1006A7600, &unk_100584E50);
    v16 = sub_100015468(v15, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[11];
    if (v16 != 1)
    {
      v26 = v2[1];
      sub_10032DE84(v8, v2[9]);
      v10 = *v26;
      v11 = v2[13];
      v12 = v2[9];
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10032DE84(v12, *(v10 + 56) + *(v2[6] + 72) * v11);
      goto LABEL_10;
    }
  }

  sub_100009A04(v8, &unk_1006A7600, &unk_100584E50);
  if (v7)
  {
    v17 = v2[13];
    v18 = v2[5];
    v19 = v2[2];
    v20 = v2[1];
    sub_100035BF4(v2[3]);
    v23(v21 + v22 * v17, v19);
    sub_100010588();
    sub_10000F150(v24, v25);
    _NativeDictionary._delete(at:)();
  }

LABEL_10:
  v27 = v2[11];
  v28 = v2[12];
  v30 = v2[9];
  v29 = v2[10];
  v32 = v2[7];
  v31 = v2[8];
  v33 = v2[4];
  sub_100009A04(v28, &unk_1006A7600, &unk_100584E50);
  free(v28);
  free(v27);
  free(v29);
  free(v30);
  free(v31);
  free(v32);
  free(v33);

  free(v2);
}

void (*sub_100411260(uint64_t a1, char a2, char a3))(uint64_t a1)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1002DA960(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v9;
  v15 = v10;
  sub_10026D814(&qword_1006AB180, &qword_100586F18);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    v16 = *v4;
    v17 = sub_1002DA960(a2 & 1);
    if ((v15 & 1) == (v18 & 1))
    {
      v14 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v14;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_100411378;
}

void sub_100411378(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 25);
  if (*a1)
  {
    v3 = **(a1 + 8);
    if (*(a1 + 25))
    {
      *(*(v3 + 56) + 8 * *(a1 + 16)) = v1;
    }

    else
    {
      v6 = *(a1 + 24) & 1;
      v7 = *(a1 + 16);

      sub_100327FA8(v7, v6, v1, v3);
    }
  }

  else if (*(a1 + 25))
  {
    v4 = *(a1 + 16);
    v5 = **(a1 + 8);
    sub_10026D814(&qword_1006AB138, &qword_100586EF0);
    sub_1004124BC();

    _NativeDictionary._delete(at:)();
  }
}

uint64_t (*sub_10041144C(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004136D8;
}

uint64_t (*sub_100411474(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10041149C;
}

uint64_t sub_1004114A8(void *a1)
{
  v2 = [a1 notificationProviderIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *sub_100411518(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(TUConversationManager) init];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(type metadata accessor for ConversationInvitationResolver()) init];
    v8 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
    v9 = objc_allocWithZone(type metadata accessor for GroupFaceTimeNotificationProvider());
    return sub_10041311C(a1, a2, v4, v6, v7, v8, 0, 0, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100411600(void *a1, void *a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_updateBadgeValue];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_badgeCategory;
  v11 = type metadata accessor for BadgeCountCategory();
  sub_10000AF74(&a4[v10], 1, 1, v11);
  v12 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  *v12 = 0;
  v12[1] = 0;
  a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType] = 0;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_categories] = v13;
  v14 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_replace];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification];
  *v16 = 0;
  v16[1] = 0;
  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_queue] = a1;
  v17 = objc_allocWithZone(TUContactsDataProvider);
  v18 = a1;
  v19 = [v17 initWithContactsDataSource:a2];

  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_contactsDataProvider] = v19;
  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationCenter] = a3;
  v20 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_localizeHandleName];
  *v20 = sub_1002FA204;
  v20[1] = 0;
  v28.receiver = a4;
  v28.super_class = ObjectType;
  v21 = a3;
  v22 = objc_msgSendSuper2(&v28, "init");
  [v21 addObserver:v22 selector:"handlePendingMessageDidReceiveInviteNotification:" name:@"CSDIDSPendingMessageDidReceiveInviteNotification" object:{0, v28.receiver, v28.super_class}];
  v23 = v22;
  [v21 addObserver:v23 selector:"handlePendingMessageDidReceiveCancelNotification:" name:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0];

  v24 = &v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  v25 = *&v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  v26 = *&v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL + 8];
  *v24 = sub_1002CC498;
  v24[1] = 0;
  sub_1000051F8(v25);

  return v23;
}

char *sub_100411878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v65 = a3;
  v66 = a4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[3] = sub_100006AF0(0, &qword_1006AB1B0, CHManager_ptr);
  v74[4] = &off_10062B090;
  v74[0] = a2;
  v20 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager;
  *&a6[v20] = [objc_allocWithZone(CHCallInteractionManager) init];
  v21 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
  *&a6[v21] = [objc_allocWithZone(TUCallProviderManager) init];
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers] = &_swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider;
  *&a6[v22] = [objc_allocWithZone(TUConfigurationProvider) init];
  v23 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_mostRecentCallDate;
  v24 = type metadata accessor for Date();
  sub_10000AF74(&a6[v23], 1, 1, v24);
  v25 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore];
  v26 = [objc_opt_self() storeWithOptions:3];
  v25[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v25[4] = &off_100622F18;
  *v25 = v26;
  v27 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier];
  *v27 = 0xD00000000000002CLL;
  v27[1] = 0x800000010056FE90;
  v28 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  *v28 = 0;
  v28[1] = 0;
  v29 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
  *v29 = 0;
  v29[1] = 0;
  v30 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  *v30 = 0;
  v30[1] = 0;
  v31 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
  *v31 = 0;
  v31[1] = 0;
  v32 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_replace];
  *v32 = 0;
  v32[1] = 0;
  v33 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_removeNotification];
  *v33 = 0;
  v33[1] = 0;
  v34 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  *v34 = 0;
  v34[1] = 0;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue] = a1;
  sub_100009AB0(v74, &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource]);
  a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType] = a5 & 1;
  v35 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v36 = a1;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_inCallServiceProcessObserver] = sub_1002F344C(&off_100620C78, v36);
  v37 = v66;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedMediaTypes] = v65;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedProviders] = v37;
  v38 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportsDisplayingFaceTimeAudioCalls];
  *v38 = sub_10038A974;
  v38[1] = 0;
  v39 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL];
  *v39 = sub_10038A9A0;
  v39[1] = 0;
  v40 = *v29;
  v41 = v29[1];
  *v29 = sub_10038AC70;
  v29[1] = 0;
  sub_1000051F8(v40);
  v42 = [objc_allocWithZone(TUFeatureFlags) init];
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags] = v42;
  v73.receiver = a6;
  v73.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v73, "init");
  v44 = *&v43[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager];
  v45 = v43;
  [v44 addDelegate:v45 queue:v36];
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  aBlock[4] = sub_1004136B4;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062FA88;
  v47 = _Block_copy(aBlock);
  v48 = v45;
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v70 + 8))(v14, v10);
  (*(v68 + 8))(v19, v69);

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = &v48[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  v51 = *&v48[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  v52 = *&v48[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall + 8];
  *v50 = sub_1004136BC;
  v50[1] = v49;
  v53 = v48;

  sub_1000051F8(v51);

  v54 = [objc_opt_self() defaultCenter];
  [v54 addObserver:v53 selector:"handleCallHistoryDatabaseChangedWithNotification:" name:kCallHistoryDatabaseChangedNotification object:0];

  sub_100009B7C(v74);
  v55 = &v53[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  v56 = *&v53[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  v57 = *&v53[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles + 8];
  *v55 = sub_100392CEC;
  v55[1] = 0;
  sub_1000051F8(v56);
  v58 = *&v53[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_inCallServiceProcessObserver];

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v60 = &v58[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  v61 = *&v58[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  v62 = *&v58[OBJC_IVAR___CSDProcessObserver_processStateChanged + 8];
  *v60 = sub_1004136C4;
  v60[1] = v59;

  sub_1000051F8(v61);

  return v53;
}

id sub_100411FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR___CSDUserNotificationController_providersByIdentifier] = _swiftEmptyDictionarySingleton;
  v22 = OBJC_IVAR___CSDUserNotificationController_featureFlags;
  v23 = [objc_allocWithZone(TUFeatureFlags) init];
  *&a6[v22] = v23;
  *&a6[OBJC_IVAR___CSDUserNotificationController_callFilterController] = a4;
  v24 = &a6[OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter];
  *v24 = a1;
  *(v24 + 1) = &off_10062F7D0;
  v25 = &a6[OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter];
  *v25 = a2;
  *(v25 + 1) = &off_10062F7D0;
  *&a6[OBJC_IVAR___CSDUserNotificationController_providers] = a3;
  *&a6[OBJC_IVAR___CSDUserNotificationController_queue] = a5;
  type metadata accessor for BadgeManager();
  v26 = a5;
  v27 = v23;
  v41 = a4;
  *&a6[OBJC_IVAR___CSDUserNotificationController_badgeManager] = BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA6D0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Creating XPC endpoint for User notifications", v31, 2u);
  }

  v32 = [objc_allocWithZone(CSDClientManager) initWithSerialQueue:v26];
  *&a6[OBJC_IVAR___CSDUserNotificationController_clientManager] = v32;
  v48.receiver = a6;
  v48.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v48, "init");
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  aBlock[4] = sub_1004124B4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062F8D0;
  v35 = _Block_copy(aBlock);
  v36 = v33;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v37 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v44 + 8))(v16, v37);
  (*(v42 + 8))(v21, v43);

  return v36;
}

unint64_t sub_1004124BC()
{
  result = qword_1006AB140;
  if (!qword_1006AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB140);
  }

  return result;
}

void sub_100412510()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_10040D934();
}

void sub_100412520()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10040DD94();
}

uint64_t sub_100412538()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100412578()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10040ED48();
}

uint64_t sub_100412584(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7AC0, &qword_100586F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004125F4()
{
  result = qword_1006AB178;
  if (!qword_1006AB178)
  {
    sub_100006AF0(255, &unk_1006A7A00, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB178);
  }

  return result;
}

char *sub_10041266C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v84 = a8;
  v85 = a7;
  v79 = a6;
  v78 = a5;
  v82 = a4;
  v83 = a3;
  ObjectType = swift_getObjectType();
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v75, v12);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v14 = *(v71 + 64);
  __chkstk_darwin(v73, v15);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v80 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v70 - v24;
  __chkstk_darwin(v23, v26);
  v77 = &v70 - v27;
  v89[3] = sub_100006AF0(0, &qword_1006AB198, VMVoicemailManager_ptr);
  v89[4] = &off_10062FBA0;
  v89[0] = a2;
  v28 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore;
  v29 = [objc_opt_self() sharedInstance];
  v30 = [v29 contactStore];

  *&a9[v28] = v30;
  v31 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers] = &_swiftEmptySetSingleton;
  v32 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers] = &_swiftEmptySetSingleton;
  v33 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  v34 = type metadata accessor for Date();
  sub_10000AF74(&a9[v33], 1, 1, v34);
  v76 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
  sub_10000AF74(&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate], 1, 1, v34);
  v35 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  type metadata accessor for UUID();
  sub_10026D814(&unk_1006AB1A0, &unk_100586F30);
  sub_10000F150(&qword_1006A3BE0, &type metadata accessor for UUID);
  *&a9[v35] = Dictionary.init(dictionaryLiteral:)();
  a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType] = 1;
  v36 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add];
  *v36 = 0;
  v36[1] = 0;
  v37 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace];
  *v37 = 0;
  v37[1] = 0;
  v38 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification];
  *v38 = 0;
  v38[1] = 0;
  v39 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue];
  *v39 = 0;
  v39[1] = 0;
  v40 = a1;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue] = a1;
  sub_100009AB0(v89, &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource]);
  v41 = v83;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags] = v83;
  v42 = v82;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_userDefaults] = v82;
  v43 = objc_allocWithZone(CoreTelephonyClient);
  v44 = v40;
  v83 = v41;
  v45 = v42;
  v46 = [v43 initWithQueue:v44];
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient] = v46;
  swift_beginAccess();
  v47 = *&a9[v31];
  *&a9[v31] = v78;

  swift_beginAccess();
  v48 = *&a9[v32];
  *&a9[v32] = v79;

  sub_100343100(v85, v25, &qword_1006A3C70, &unk_10057EA80);
  v49 = sub_100015468(v25, 1, v34);
  v82 = v45;
  if (v49 == 1)
  {
    v50 = v77;
    sub_1002C8CEC(v77);
    if (sub_100015468(v25, 1, v34) != 1)
    {
      sub_100009A04(v25, &qword_1006A3C70, &unk_10057EA80);
    }
  }

  else
  {
    v50 = v77;
    (*(*(v34 - 8) + 32))(v77, v25, v34);
    sub_10000AF74(v50, 0, 1, v34);
  }

  swift_beginAccess();
  sub_1003B3734(v50, &a9[v33]);
  swift_endAccess();
  v51 = v76;
  swift_beginAccess();
  v52 = v84;
  sub_1004130A4(v84, &a9[v51]);
  swift_endAccess();
  v53 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_localizeVoicemailName];
  *v53 = sub_100415EA4;
  v53[1] = 0;
  v54 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_callbackVoicemail];
  *v54 = sub_100416018;
  v54[1] = 0;
  v55 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_openURL];
  *v55 = sub_1002CC498;
  v55[1] = 0;
  v88.receiver = a9;
  v88.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v88, "init");
  [*&v56[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient] setDelegate:v56];
  v57 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  swift_beginAccess();
  v58 = v80;
  sub_100343100(&v56[v57], v80, &qword_1006A3C70, &unk_10057EA80);
  LODWORD(v57) = sub_100015468(v58, 1, v34);
  sub_100009A04(v58, &qword_1006A3C70, &unk_10057EA80);
  if (v57 == 1)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    aBlock[4] = sub_100413114;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062FA38;
    v60 = _Block_copy(aBlock);
    v61 = v56;
    v62 = v70;
    static DispatchQoS.unspecified.getter();
    v86 = _swiftEmptyArrayStorage;
    sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v63 = v72;
    v64 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);
    (*(v74 + 8))(v63, v64);
    (*(v71 + 8))(v62, v73);
  }

  v65 = objc_opt_self();
  v66 = [v65 defaultCenter];
  [v66 addObserver:v56 selector:"voicemailsChangedWithNotification:" name:VMVoicemailVoicemailsChangedNotification object:0];

  v67 = [v65 defaultCenter];
  [v67 addObserver:v56 selector:"onlineStatusChangedWithNotification:" name:VMVoicemailOnlineStatusChangedNotification object:0];

  v68 = [v65 defaultCenter];
  [v68 addObserver:v56 selector:"subscriptionStateChangedWithNotification:" name:VMVoicemailSubscriptionStateStatusChangedNotification object:0];

  sub_100009A04(v52, &qword_1006A3C70, &unk_10057EA80);
  sub_100009A04(v85, &qword_1006A3C70, &unk_10057EA80);
  sub_100009B7C(v89);
  return v56;
}

uint64_t sub_1004130A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_10041311C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags;
  *&a9[v15] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID] = _swiftEmptyDictionarySingleton;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID] = _swiftEmptyDictionarySingleton;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID] = _swiftEmptyDictionarySingleton;
  v16 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter;
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  *&a9[v16] = sub_10040BDB0();
  v17 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification];
  *v17 = sub_1002CBE50;
  v17[1] = 0;
  a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen] = 0;
  v18 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL];
  *v19 = 0;
  v19[1] = 0;
  a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType] = 0;
  v20 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_categories;
  *&a9[v20] = sub_1002CED8C();
  v21 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add];
  *v21 = 0;
  v21[1] = 0;
  v22 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace];
  *v22 = 0;
  v22[1] = 0;
  v23 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification];
  *v23 = 0;
  v23[1] = 0;
  v24 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_updateBadgeValue];
  *v24 = 0;
  v24[1] = 0;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue] = a1;
  v25 = objc_allocWithZone(TUContactsDataProvider);
  v60 = a1;
  v26 = [v25 initWithContactsDataSource:a2];

  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider] = v26;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_displayStringProvider] = v26;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager] = a3;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_ftNetworkSupport] = a4;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver] = a5;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag] = a6;
  if (a7)
  {
    v27 = v17[1];
    *v17 = a7;
    v17[1] = a8;
    v28 = v26;
    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = a6;
    sub_1000115CC(a7);
  }

  else
  {
    v33 = v26;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
  }

  v38 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName];
  *v38 = sub_1002CBEE4;
  v38[1] = 0;
  v39 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName];
  *v39 = sub_1002CBF38;
  v39[1] = 0;
  v40 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation];
  *v40 = sub_1002CBFDC;
  v40[1] = 0;
  v63.receiver = a9;
  v63.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v63, "init", ObjectType);
  v42 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager;
  v43 = *&v41[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager];
  v44 = v41;
  [v43 addDelegate:v44 queue:v60];
  [*&v41[v42] registerWithCompletionHandler:0];
  v45 = objc_opt_self();
  v46 = [v45 defaultCenter];
  [v46 addObserver:v44 selector:"momentsStartedRemoteCapture:" name:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:0];

  v47 = [v45 defaultCenter];
  [v47 addObserver:v44 selector:"handlePendingMessageDidReceiveInviteNotification:" name:@"CSDGroupIDSPendingMessageDidReceiveInviteNotification" object:0];

  v48 = CFNotificationCenterGetDarwinNotifyCenter();
  v49 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v48, v44, sub_1002CC3B0, v49, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v50 = CFNotificationCenterGetDarwinNotifyCenter();
  v51 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v50, v44, sub_1002CC3DC, v51, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_1000051F8(a7);
  v52 = &v44[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  v53 = *&v44[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  v54 = *&v44[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL + 8];
  *v52 = sub_1002CC498;
  v52[1] = 0;
  sub_1000051F8(v53);
  v55 = &v44[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL];
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  *v55 = sub_1002CC4E0;
  v55[1] = 0;
  sub_1000051F8(v56);

  return v44;
}

void sub_100413728(unint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v33 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v9;
  v11 = v4;
  v12 = v9;
  if (v4)
  {
LABEL_12:
    v34 = (v11 - 1) & v11;
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);
    v16 = v14;
    if (!v15)
    {
LABEL_42:
      sub_100022DDC();
      return;
    }

    while (1)
    {
      v17 = *a2;
      if (*a2 >> 62)
      {
        if (v17 < 0)
        {
          v29 = *a2;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_22;
        }
      }

      else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v31 = v15;

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v18 = *(v17 + 32);
        v19 = v15;
        v20 = v18;
      }

      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        goto LABEL_42;
      }

LABEL_22:
      v22 = *a2;
      if (*a2 >> 62)
      {
        if (v22 < 0)
        {
          v30 = *a2;
        }

        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
LABEL_24:
          v24 = v23 - 1;
          if (__OFSUB__(v23, 1))
          {
            goto LABEL_45;
          }

          if ((v22 & 0xC000000000000001) != 0)
          {
            v32 = v15;

            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v25 = *(v22 + 8 * v24 + 32);
            v26 = v15;
            v27 = v25;
          }

          sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
          v28 = static NSObject.== infix(_:_:)();

          if (v28)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_24;
        }
      }

      v9 = v12;
      v5 = v33;
      v4 = v34;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        v15 = v36;
        sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
        swift_dynamicCast();
        v16 = v36;
        v12 = v9;
        v34 = v4;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_42;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_42;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_100413AD4(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  v9 = sub_10001E558(a1);
  v10 = sub_10000B6F4(*v1);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10042043C(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1002F6800(&v26, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v8);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_100022DDC();
    *v7 = v2;
    return result;
  }

LABEL_10:
  v3 = *(v3 + 16);
  v4 = v26;
  v5 = v27;
  v6 = v29;
  v24 = v28;
  v8 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_7;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    result = swift_dynamicCast();
    v18 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
    v17 = v29;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v26 + 48) + ((v17 << 9) | (8 * v19)));
    result = v18;
  }

  else
  {
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v8 = *(v27 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_20;
      }
    }

    v18 = 0;
    v8 = 0;
  }

  v29 = v6;
  v30 = v8;
LABEL_22:
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v20 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 >= v20)
    {
      *(v23 + 16) = v3;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v3++) = v18;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_41;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    result = swift_dynamicCast();
    v18 = v25;
LABEL_37:
    if (!v18)
    {
LABEL_41:
      *(v23 + 16) = v3;
      goto LABEL_7;
    }
  }

  if (v8)
  {
LABEL_33:
    v22 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v4 + 48) + ((v6 << 9) | (8 * v22)));
    result = v18;
LABEL_34:
    v26 = v4;
    v27 = v5;
    v28 = v24;
    v29 = v6;
    v30 = v8;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v18 = 0;
      v8 = 0;
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v21);
    ++v6;
    if (v8)
    {
      v6 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100413E64(uint64_t a1)
{
  result = sub_100018370(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1004204DC(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100413F94(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10042043C(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100414080(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_10000B6F4(*v1);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10042043C(v9);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_1002F6DCC();
  if (v11 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v2 + 16);
    v8 = __OFADD__(v12, v11);
    v13 = v12 + v11;
    if (v8)
    {
      __break(1u);
LABEL_13:
      v16 = (v2 + 64) >> 6;
      while (1)
      {
        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_34;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v10 + 8 * v17);
        ++v6;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v6 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v13;
  }

  v5 = v24;
  if (v11 != v10)
  {
LABEL_7:
    sub_100022DDC();
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v10 = v25;
  v2 = v26;
  v6 = v27;
  if (!v28)
  {
    goto LABEL_13;
  }

  v14 = (v28 - 1) & v28;
  v15 = __clz(__rbit64(v28)) | (v27 << 6);
  v16 = (v26 + 64) >> 6;
LABEL_18:
  v19 = *(*(v5 + 56) + 8 * v15);

LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = *v1;
  v22 = *v1 & 0xFFFFFFFFFFFFFF8;
  v23 = *(v22 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v23)
    {
      *(v22 + 16) = v4;
      goto LABEL_19;
    }

    *(v22 + 32 + 8 * v4++) = v19;
    if (!v14)
    {
      break;
    }

    v20 = v6;
LABEL_29:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v5 + 56) + ((v20 << 9) | (8 * v21)));
  }

  while (1)
  {
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      *(v22 + 16) = v4;
      goto LABEL_7;
    }

    v14 = *(v10 + 8 * v20);
    ++v6;
    if (v14)
    {
      v6 = v20;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100414368(uint64_t a1)
{
  v4 = sub_100018370(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1004204DC(v4, 1, sub_100017840);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_1000163D8();
  if (v9 != v5)
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
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10041444C(uint64_t a1)
{
  v6 = sub_100018370(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10000D76C(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_1000163D8();
  if (v12 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10026D814(v5, v4);
  sub_10000C2B0();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v13 = *(v9 + 16);
  v8 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v8)
  {
    *(v9 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1004144F8(uint64_t a1)
{
  v6 = sub_100018370(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10000D76C(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_1000163D8();
  if (v12 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10026D814(v5, v4);
  sub_10000C2B0();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v13 = *(v9 + 16);
  v8 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v8)
  {
    *(v9 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1004145A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    for (i = (result + 40); v2; --v2)
    {
      v5 = *(i - 1);
      v4 = *i;

      sub_100428F00();

      i += 2;
    }
  }

  return result;
}

uint64_t sub_100414624(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = *v3++;
        result = sub_100429564(v4);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1004146EC()
{
  sub_100005EF4();
  v1 = sub_10039BD94(v0, &selRef_callbackDestinationID);
  if (v2 || (v1 = sub_10039BD94(v0, &selRef_senderDestinationID), v3))
  {
    v4 = v1;
    v5 = [objc_allocWithZone(TUCallProviderManager) init];
    v6 = [v5 telephonyProvider];
    v7 = [objc_allocWithZone(TUDialRequest) initWithProvider:v6];

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v8 = sub_100389560(2, v4);
    [v7 setHandle:v8];
    [v7 setOriginatingUIType:41];
    v9 = [objc_allocWithZone(TUContactsDataProvider) init];
    v10 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:v8];
    v11 = [v9 executeFetchRequest:v10];
    v12 = [v11 contacts];
    sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_10000B6F4(v13))
    {
      sub_10039C390(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = [v15 identifier];

      if (v16)
      {
        goto LABEL_10;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

LABEL_10:
    [v7 setContactIdentifier:v16];
  }

  sub_100005EDC();
}

uint64_t sub_100414964()
{
  v1 = [v0 transcript];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 confidenceRating] < 2)
  {

    return 0;
  }

  v3 = [v2 transcriptionString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100414B74(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

uint64_t sub_100414C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v18[-1] - v7;
  v9 = sub_100414E34(1);
  sub_1002E9780(v9, v18);

  v10 = v19;
  if (v19)
  {
    v11 = v20;
    v9 = sub_100009B14(v18, v19);
    (*(v11 + 32))(v10, v11);
    type metadata accessor for Date();
    sub_10000667C();
    sub_100007C20();
    sub_10000AF74(v12, v13, v14, v9);
    sub_100009B7C(v18);
    if (sub_100015468(v8, 1, v9) != 1)
    {
      return (*(*(v9 - 1) + 32))(a1, v8, v9);
    }
  }

  else
  {
    sub_100009A04(v18, &qword_1006AB398, &qword_1005870C0);
    type metadata accessor for Date();
    v16 = sub_10000667C();
    sub_10000AF74(v16, 1, 1, v9);
  }

  Date.init()();
  type metadata accessor for Date();
  result = sub_100015468(v8, 1, v9);
  if (result != 1)
  {
    return sub_100009A04(v8, &qword_1006A3C70, &unk_10057EA80);
  }

  return result;
}

void *sub_100414E34(uint64_t a1)
{
  v16 = 0;
  v2 = [v1 messagesForMailboxType:1 limit:a1 offset:0 error:&v16];
  v3 = v16;
  if (v2)
  {
    v4 = v2;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    sub_1002F4104();
    v7 = v6;
  }

  else
  {
    v8 = v16;
    sub_10000667C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
      sub_10000860C();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA6D0);
    sub_10000667C();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100005274();
      v13 = sub_10000777C();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Retrieving voicemail messages failed with error %@", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100005F40();
    }

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_10041502C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100009B14(a1, v2);
  v4 = [v1 dataForVoicemailWithIdentifier:{(*(v3 + 40))(v2, v3)}];
  if (v4)
  {
    v5 = v4;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

void sub_1004150C4()
{
  sub_100005EF4();
  v2 = v1;
  *&v36[0] = 0;
  v3 = [v0 messagesForMailboxType:1 read:0 limit:-1 offset:0 error:v36];
  v4 = *&v36[0];
  if (v3)
  {
    v5 = v3;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;

    sub_1002F4104();
    v8 = v7;
  }

  else
  {
    v9 = *&v36[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
LABEL_20:
      sub_10000860C();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100005274();
      v14 = sub_10000777C();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Retrieving inbox voicemail messages failed with error %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100005F40();
    }

    v8 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = v8[2];
  v18 = (v8 + 4);
  v19 = _swiftEmptyArrayStorage;
  v31 = v2;
  while (v17 != v16)
  {
    if (v16 >= v8[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100009AB0(v18, v36);
    if (v2(v36))
    {
      sub_10002F0C8(v36, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v19[2];
        sub_10039A460();
        v19 = v32;
      }

      v22 = v19[2];
      if (v22 >= v19[3] >> 1)
      {
        sub_10039A460();
      }

      v23 = v34;
      v24 = v35;
      v25 = sub_10001BDB8(v33, v34);
      v26 = *(*(v23 - 8) + 64);
      __chkstk_darwin(v25, v25);
      sub_100007FDC();
      v29 = v28 - v27;
      (*(v30 + 16))(v28 - v27);
      sub_1002F705C(v22, v29, &v32, v23, v24);
      sub_100009B7C(v33);
      v2 = v31;
      v19 = v32;
    }

    else
    {
      sub_100009B7C(v36);
    }

    v18 += 40;
    ++v16;
  }

  sub_100005EDC();
}

double sub_10041546C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  while (v5 != 24)
  {
    v7 = sub_100415538(*(&off_100620D00 + v5 + 32), v2, a1);
    if (v7[2])
    {
      sub_1002E9780(v7, v9);

      sub_100009A04(a2, &qword_1006AB398, &qword_1005870C0);
      result = *v9;
      v8 = v9[1];
      *a2 = v9[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v10;
      return result;
    }

    v5 += 8;
  }

  return result;
}

void *sub_100415538(uint64_t a1, id a2, uint64_t a3)
{
  *&v39 = 0;
  v4 = [a2 messagesForMailboxType:a1 limit:-1 offset:0 error:&v39];
  v5 = v39;
  if (v4)
  {
    v6 = v4;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v5;

    sub_1002F4104();
    v9 = v8;

    v34 = 0;
  }

  else
  {
    v10 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
LABEL_20:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA6D0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Retrieving voicemail messages failed with error %@", v14, 0xCu);
      sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    }

    v34 = 0;
    v9 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v18 = v9[2];
  v19 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  while (v18 != v17)
  {
    if (v17 >= v9[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100009AB0(v19, &v39);
    v21 = v40;
    v22 = v41;
    sub_100009B14(&v39, v40);
    if ((*(v22 + 40))(v21, v22) == a3)
    {
      sub_10002F0C8(&v39, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = v20[2];
        sub_10039A460();
        v20 = v35;
      }

      v25 = v20[2];
      if (v25 >= v20[3] >> 1)
      {
        sub_10039A460();
      }

      v26 = v37;
      v27 = v38;
      v28 = sub_10001BDB8(v36, v37);
      v29 = *(*(v26 - 8) + 64);
      __chkstk_darwin(v28, v28);
      v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      sub_1002F705C(v25, v31, &v35, v26, v27);
      sub_100009B7C(v36);
      v20 = v35;
    }

    else
    {
      sub_100009B7C(&v39);
    }

    v19 += 40;
    ++v17;
  }

  return v20;
}

void sub_10041593C()
{
  v3[4] = sub_1004159F8;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100415A48;
  v3[3] = &unk_10062FFE8;
  v1 = _Block_copy(v3);
  v2 = [v0 countOfVoicemailsPassingTest:v1];
  _Block_release(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

uint64_t sub_1004159F8(void *a1)
{
  if ([a1 mailboxType] == 1)
  {
    return [a1 isRead] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100415A48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_100415AA0(uint64_t a1)
{
  sub_100009AB0(a1, v4);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v1 trashVoicemail:v3];
  }
}

uint64_t sub_100415CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BadgeCountCategory.legacyVoicemails(_:);
  v3 = type metadata accessor for BadgeCountCategory();
  sub_100008070(v3);
  (*(v4 + 104))(a1, v2, v3);
  sub_100007C20();

  return sub_10000AF74(v5, v6, v7, v3);
}

uint64_t sub_100415D3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB270 = result;
  *algn_1006AB278 = v1;
  return result;
}

uint64_t sub_100415D6C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB280 = result;
  *algn_1006AB288 = v1;
  return result;
}

uint64_t sub_100415D9C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB290 = result;
  *algn_1006AB298 = v1;
  return result;
}

uint64_t sub_100415DCC(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100620D38, v3);
  sub_10000667C();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_100415E1C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 contactStore];

  v2 = [objc_allocWithZone(TUContactsDataProvider) initWithContactsDataSource:v1];
  qword_1006AB2A0 = v2;
}

id sub_100415EA4(void *a1)
{
  v1 = a1[4];
  sub_100009B14(a1, a1[3]);
  v2 = *(v1 + 48);
  v3 = sub_10000667C();
  v4(v3, v1);
  if (v5)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_100006B30();
    v6 = sub_1002FC028();
    v7 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:v6];
    if (qword_1006A0BF8 != -1)
    {
      swift_once();
    }

    v8 = [qword_1006AB2A0 executeFetchRequest:v7];
    v9 = [v8 localizedName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  else
  {

    return sub_10031E958(0x4E574F4E4B4E55, 0xE700000000000000);
  }
}

uint64_t sub_100416018(void *a1)
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for URL();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = a1[3];
  v25 = a1[4];
  sub_100009B14(a1, v24);
  v26 = (*(v25 + 88))(v24, v25);
  if (!v26)
  {
    sub_10000C87C(v13);
    return sub_100009A04(v13, &unk_1006A52C0, &unk_10057D930);
  }

  v27 = v26;
  v28 = [v26 URL];

  if (v28)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_10000AF74(v9, v29, 1, v14);
  sub_100421108(v9, v13, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v13, 1, v14) == 1)
  {
    return sub_100009A04(v13, &unk_1006A52C0, &unk_10057D930);
  }

  (*(v17 + 32))(v23, v13, v14);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  TUOpenURL();

  v34 = *(v17 + 8);
  v35 = sub_100007764();
  return v36(v35);
}

void sub_100416268()
{
  sub_100005EF4();
  v2 = v0;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = sub_100007BF0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_10000C4C4();
  v8 = type metadata accessor for Date();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = v26 - v25;
  v28 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *(v26 - v25) = v28;
  (*(v21 + 104))(v26 - v25, enum case for DispatchPredicate.onQueue(_:), v18);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v31 = *(v21 + 8);
  v30 = v21 + 8;
  v31(v27, v18);
  if (v28)
  {
    v32 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
    v33 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
    sub_100009B14(&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v32);
    (*(v33 + 40))(v32, v33);
    v34 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_userDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v36 = String._bridgeToObjectiveC()();
    [v34 setObject:isa forKey:v36];

    (*(v11 + 16))(v1, v17, v8);
    sub_100007C20();
    sub_10000AF74(v37, v38, v39, v8);
    v30 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
    swift_beginAccess();
    sub_1003B3734(v1, &v2[v30]);
    swift_endAccess();
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C();
LABEL_3:
  v40 = type metadata accessor for Logger();
  sub_10000AF9C(v40, qword_1006BA6D0);
  v41 = v2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v51 = v11;
    v45 = sub_10000777C();
    v52 = swift_slowAlloc();
    *v44 = 136315394;
    sub_100270E18(&v2[v30], v1);
    sub_100291548(v1);
    sub_100009A04(v1, &qword_1006A3C70, &unk_10057EA80);
    v46 = sub_100007764();
    v49 = sub_10002741C(v46, v47, v48);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    v50 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "Most recent voicemail date is now %s for notification provider %@", v44, 0x16u);
    sub_100009A04(v45, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v52);
    sub_100005F40();
    sub_100005F40();

    (*(v51 + 8))(v17, v8);
  }

  else
  {

    (*(v11 + 8))(v17, v8);
  }

  sub_100005EDC();
}