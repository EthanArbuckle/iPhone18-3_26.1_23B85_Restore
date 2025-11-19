uint64_t sub_100333FBC()
{
  sub_100006810();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100334048;

  return sub_100334440();
}

uint64_t sub_100334048()
{
  sub_100006810();
  v2 = v1;
  sub_100005F18();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  sub_1000276C4();

  return v7(v2);
}

uint64_t sub_1003341B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100334258;

  return sub_100333FBC();
}

uint64_t sub_100334258()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v3)[2](v3, isa);

  _Block_release(v3);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100334440()
{
  sub_10000C698();
  v1[30] = v0;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v1[31] = v3;
  v1[32] = v5;

  return _swift_task_switch(sub_1003344D8, v3, v5);
}

uint64_t sub_1003344D8()
{
  sub_1000066BC();
  v1 = *(v0[30] + 120);
  sub_1003314CC(v0 + 23);
  v2 = v0[27];
  sub_100009B14(v0 + 23, v0[26]);
  sub_1000083C0();
  v4 = *(v3 + 64);
  sub_100005E9C();
  sub_100335638();
  v5();
  v0[21] = sub_10000B960();
  v0[22] = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C(v0 + 18);
  sub_100007624();
  dispatch thunk of Sequence.makeIterator()();

  sub_100009B7C(v0 + 23);
  v6 = v0[22];
  sub_10001BDB8((v0 + 18), v0[21]);
  sub_100007624();
  dispatch thunk of IteratorProtocol.next()();
  v7 = v0[28];
  v0[33] = v7;
  if (v7)
  {
    v0[2] = v0;
    v0[7] = v0 + 29;
    sub_10000FA44();
    v8 = sub_10026D814(&qword_1006A5DD0, &qword_100580B38);
    sub_100015A90(v8);
    v0[11] = 1107296256;
    sub_1000162A8(&unk_100627C10);
    [v7 activeActivitySessionContainersWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = v0[30];
    sub_100009B7C(v0 + 18);
    atomic_store(0, (v9 + 192));
    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B7F8(_swiftEmptyArrayStorage);
      v11 = v10;
    }

    else
    {
      v11 = &_swiftEmptySetSingleton;
    }

    v12 = v0[1];

    return v12(0, v11);
  }
}

uint64_t sub_100334724()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *(v4 + 248);

  return _swift_task_switch(sub_100334820, v6, v5);
}

uint64_t sub_100334820()
{
  sub_1000066BC();
  v1 = v0[29];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[29];
    }

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v1 + 16);
  }

  v4 = v0[33];
  if (v3)
  {
    atomic_store(1u, (v0[30] + 192));
    v5 = [v4 providerType];
    swift_unknownObjectRelease();
    sub_100009B7C(v0 + 18);
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = v0[22];
  sub_10001BDB8((v0 + 18), v0[21]);
  v9 = dispatch thunk of IteratorProtocol.next()();
  v10 = v0[28];
  v0[33] = v10;
  if (!v10)
  {
    v12 = v0[30];
    sub_100009B7C(v0 + 18);
    atomic_store(0, (v12 + 192));
    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B7F8(_swiftEmptyArrayStorage);
      v1 = v13;
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v1 = &_swiftEmptySetSingleton;
    }

LABEL_8:
    v6 = v0[1];

    return v6(v5, v1);
  }

  v0[2] = v0;
  v0[7] = v0 + 29;
  sub_10000FA44(v9);
  v11 = sub_10026D814(&qword_1006A5DD0, &qword_100580B38);
  sub_100015A90(v11);
  v0[11] = 1107296256;
  sub_1000162A8(&unk_100627C10);
  [v10 activeActivitySessionContainersWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100334A24(uint64_t a1)
{
  v1 = *sub_100009B14((a1 + 32), *(a1 + 56));
  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_100060550(v1, v2);
}

void sub_100334AC4()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100334B14()
{
  v1 = *(v0 + 120);

  sub_100060500(v0 + 144);
  sub_100060500(v0 + 152);
  sub_1003353A4(v0 + 168);
  v2 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100334B64()
{
  sub_100334B14();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100334BDC()
{
  sub_1000099A4(v0 + 24, &qword_1006A5DC8, &qword_100580B30);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100334C58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100334C98(uint64_t result, int a2, int a3)
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

uint64_t sub_100334CE4()
{
  sub_100335350();
  v1 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

unint64_t sub_100334D28()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v19 = 0xD00000000000001CLL;
  v20 = 0x800000010056BE00;
  v8 = [v0 activity];
  v9 = [v8 activityIdentifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3D4449555520;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15 = [v1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100335040(&qword_1006A25E0, 255, &type metadata accessor for UUID);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  (*(v3 + 8))(v7, v2);
  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v19;
}

uint64_t sub_100334F3C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A5CD0);
  sub_10000AF9C(v0, qword_1006A5CD0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100334FBC()
{
  result = qword_1006A5DE0;
  if (!qword_1006A5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5DE0);
  }

  return result;
}

uint64_t sub_100335040(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100335090()
{
  sub_10000C698();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100008A48(v4);
  *v5 = v6;
  v5[1] = sub_100035FE0;

  return sub_100331E88();
}

uint64_t type metadata accessor for CompositeActivitySessionContainerProviderError()
{
  result = qword_1006A5ED8;
  if (!qword_1006A5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100335188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1003351F0()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_100035FE4;

  return sub_1003341B0(v1, v2);
}

uint64_t sub_100335294()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;
  v9 = sub_100007624();

  return v10(v9);
}

unint64_t sub_100335350()
{
  result = qword_1006A5E60;
  if (!qword_1006A5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5E60);
  }

  return result;
}

uint64_t sub_1003353FC()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t initializeBufferWithCopyOfBuffer for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1003354C8()
{
  result = qword_1006A5F08;
  if (!qword_1006A5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F08);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CompositeActivitySessionContainerProvider.ObserverUpdateRequest.Source(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10033554C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100335568(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_10033559C()
{
  result = qword_1006A5F10;
  if (!qword_1006A5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F10);
  }

  return result;
}

uint64_t sub_10033560C()
{
  result = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  return result;
}

void sub_10033561C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10033567C()
{

  return swift_arrayDestroy();
}

void sub_10033569C()
{
  sub_100005EF4();
  v22 = v1;
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100007FEC(v20);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  sub_100007FDC();
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  sub_100007FDC();
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_subscriptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_observer] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_session] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_eligibleObserver] = 0;
  v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] = 0;
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording] = &_swiftEmptySetSingleton;
  sub_1002A8914();
  static DispatchQoS.userInitiated.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000EF18(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v17, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags] = v22;
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v18 = v22;
  v19 = objc_msgSendSuper2(&v23, "init");
  PodcastRecordingActivityManager.startObservingSessions()();

  sub_100005EDC();
}

Swift::Void __swiftcall PodcastRecordingActivityManager.startObservingSessions()()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  if ([*(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled])
  {
    v28 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
    v27 = v4;
    v29 = v11;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30[4] = sub_100335C3C;
    v30[5] = v21;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v30[2] = v22;
    v30[3] = &unk_100627E60;
    v23 = _Block_copy(v30);

    static DispatchQoS.unspecified.getter();
    sub_100015208();
    sub_10000EF18(v24, v25);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10001000C(v26, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v27 + 8))(v10, v1);
    (*(v14 + 8))(v20, v29);
  }

  sub_100005EDC();
}

void sub_100335C6C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5FA0, &qword_100580F10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v16)
  {
    v17 = OBJC_IVAR___CSDPodcastRecordingActivityManager_observer;
    if (!*(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_observer))
    {
      if ([*(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled])
      {
        sub_10033A858();
        v18 = v15;
        GroupSessionObserver.init(for:queue:)();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10001000C(&qword_1006A5FB0, &qword_1006A5FA0, &qword_100580F10);
        v19 = Publisher<>.sink(receiveValue:)();

        (*(v3 + 8))(v7, v2);
        v20 = *(v1 + v17);
        *(v1 + v17) = v19;

        v21 = sub_100004778();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100335FB8()
{
  sub_10033603C();
  swift_allocError();
  swift_willThrow();
  sub_100009EF4();

  return v0();
}

unint64_t sub_10033603C()
{
  result = qword_1006A5F28;
  if (!qword_1006A5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F28);
  }

  return result;
}

void sub_1003360B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_session])
    {
      v2 = *&Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_session];

      sub_100336134();
    }

    else
    {
    }
  }
}

void sub_100336134()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v3, v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v12);
  v14 = &v40[-v13];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *(v23 - v22) = v25;
  (*(v18 + 104))(v23 - v22, enum case for DispatchPredicate.onQueue(_:), v15);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v24, v15);
  if (v25)
  {
    if ([*(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_featureFlags) enhancedCallRecordingEnabled])
    {
      v27 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v28 = sub_100009F00();
      *(v28 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      (*(v5 + 16))(v11, v14, v2);
      v29 = String.init<A>(reflecting:)();
      v31 = v30;
      (*(v5 + 8))(v14, v2);
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100009D88();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v32 = [objc_opt_self() defaultCenter];
      v33 = String._bridgeToObjectiveC()();
      [v32 postNotificationName:v33 object:0];

      GroupSession.end()();
      v34 = OBJC_IVAR___CSDPodcastRecordingActivityManager_subscriptions;
      swift_beginAccess();
      v35 = *(v1 + v34);
      *(v1 + v34) = &_swiftEmptySetSingleton;

      v36 = OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording;
      swift_beginAccess();
      v37 = *(v1 + v36);
      *(v1 + v36) = &_swiftEmptySetSingleton;

      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity) = 0;
      v38 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_session);
      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_session) = 0;

      v39 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger);
      *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger) = 0;
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003364B4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v31 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v30 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v30);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v29 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32[4] = v4;
  v32[5] = v23;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v32[2] = v24;
  v32[3] = v2;
  v25 = _Block_copy(v32);

  static DispatchQoS.unspecified.getter();
  sub_100015208();
  sub_10000EF18(v26, v27);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v28, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v31 + 8))(v13, v5);
  (*(v16 + 8))(v22, v30);

  sub_100005EDC();
}

void sub_100336714()
{
  v0 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = v59 - v3;
  v5 = type metadata accessor for UUID();
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  v8 = __chkstk_darwin(v5, v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = v59 - v12;
  v14 = type metadata accessor for Participant();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v66 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v23 = v59 - v22;
  __chkstk_darwin(v21, v24);
  v26 = v59 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] = 1;
    if (*&Strong[OBJC_IVAR___CSDPodcastRecordingActivityManager_session])
    {
      v59[0] = v4;

      GroupSession.localParticipant.getter();
      v61 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v29 = swift_allocObject();
      v64 = v15;
      v67 = v14;
      v30 = v29;
      *(v29 + 16) = xmmword_10057D6A0;
      v31 = *(v64 + 16);
      v59[1] = v64 + 16;
      v60 = v31;
      v31(v23, v26, v14);
      v32 = String.init<A>(reflecting:)();
      v34 = v33;
      v30[7] = &type metadata for String;
      v35 = sub_100009D88();
      v30[8] = v35;
      v30[4] = v32;
      v30[5] = v34;
      GroupSession.id.getter();
      v36 = v65;
      (*(v65 + 16))(v10, v13, v5);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      v40 = *(v36 + 8);
      v41 = v5;
      v42 = v26;
      v62 = v26;
      v40(v13, v41);
      v30[12] = &type metadata for String;
      v30[13] = v35;
      v30[9] = v37;
      v30[10] = v39;
      static os_log_type_t.default.getter();
      v43 = v61;
      os_log(_:dso:log:type:_:)();

      v44 = v67;
      v45 = v64;

      v46 = v60;
      v60(v66, v42, v44);
      swift_beginAccess();
      sub_1003966D8();
      swift_endAccess();
      v48 = *(v45 + 8);
      v45 += 8;
      v47 = v48;
      v48(v23, v44);
      v49 = v63;
      v50 = GroupSession.activeParticipants.getter();
      sub_10026D814(&qword_1006A6000, &qword_100580F40);
      v51 = *(v45 + 64);
      v52 = (*(v45 + 72) + 32) & ~*(v45 + 72);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10057D690;
      v46(v53 + v52, v62, v44);
      sub_1002F2494();
      v55 = sub_1003BEE88(v54, v50);

      if (*(v55 + 16))
      {
        v56 = type metadata accessor for TaskPriority();
        sub_10000AF74(v59[0], 1, 1, v56);
        v57 = swift_allocObject();
        v57[2] = 0;
        v57[3] = 0;
        v57[4] = v28;
        v57[5] = v55;
        v57[6] = v49;

        v58 = v28;
        sub_1002762F0();

        sub_1003373D0();

        v47(v62, v44);
      }

      else
      {
        v47(v62, v44);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100336C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v10 = type metadata accessor for Participants();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = type metadata accessor for RecordResponseMessage();
  v6[12] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100336DEC, 0, 0);
}

uint64_t sub_100336DEC()
{
  sub_1000066BC();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);
  UUID.init()();
  *(v1 + *(v3 + 20)) = 1;
  v5 = sub_100004778();
  *(v0 + 120) = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v6 = sub_100009F00();
  *(v6 + 16) = xmmword_10057D690;
  sub_10033AA94(v1, v2);
  sub_100008B88();
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100009D88();
  *(v0 + 128) = v10;
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  static os_log_type_t.default.getter();
  sub_100015D80();

  v11 = *(v4 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger);
  *(v0 + 136) = v11;
  if (!v11)
  {
    sub_10033AAF8(*(v0 + 112));
    sub_100035AF8();

    sub_100009EF4();
    sub_100017D5C();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 72);
  **(v0 + 88) = *(v0 + 24);
  (*(v12 + 104))();
  v14 = async function pointer to GroupSessionMessenger.send<A>(_:to:)[1];

  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  sub_1000181EC();
  sub_10000EF18(v16, v14);
  sub_1000171B4(&qword_1006A5FF0);
  *v15 = v0;
  v15[1] = sub_10033703C;
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  sub_100017D5C();

  return GroupSessionMessenger.send<A>(_:to:)();
}

uint64_t sub_10033703C()
{
  sub_1000066BC();
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v9 + 152) = v0;

  v10 = *(v5 + 8);
  v11 = sub_100008B88();
  v12(v11);

  if (v0)
  {
    v13 = sub_100337248;
  }

  else
  {
    v13 = sub_1003371C0;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1003371C0()
{
  sub_10033AAF8(*(v0 + 112));
  sub_100035AF8();

  sub_100009EF4();

  return v1();
}

uint64_t sub_100337248()
{
  v15 = v0[19];
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_10033AAF8(v0[14]);
  v8 = sub_100004778();
  static os_log_type_t.fault.getter();
  v9 = sub_100009F00();
  *(v9 + 16) = xmmword_10057D690;
  GroupSession.id.getter();
  (*(v5 + 16))(v4, v3, v6);
  v10 = String.init<A>(reflecting:)();
  v12 = v11;
  (*(v5 + 8))(v3, v6);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v2;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:type:_:)();

  sub_100035AF8();

  sub_100009EF4();

  return v13();
}

void sub_1003373D0()
{
  v1 = v0;
  v102 = type metadata accessor for UUID();
  v2 = *(v102 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v102, v4);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v86 - v9;
  v12 = __chkstk_darwin(v8, v11);
  v99 = &v86 - v13;
  __chkstk_darwin(v12, v14);
  v101 = &v86 - v15;
  v100 = type metadata accessor for Participant();
  v16 = *(v100 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v100, v18);
  v94 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v95 = &v86 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = (&v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v28 = v29;
  (*(v24 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v23);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v28, v23);
  if ((v31 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v32 = *(v1 + OBJC_IVAR___CSDPodcastRecordingActivityManager_session);
  if (v32)
  {
    v89 = v10;

    v98 = sub_100004778();
    v88 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10057D6A0;
    v104 = GroupSession.activeParticipants.getter();
    sub_10026D814(&qword_1006A6008, &qword_100580F58);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    v37 = sub_100009D88();
    *(v33 + 64) = v37;
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v38 = OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording;
    swift_beginAccess();
    v91 = v38;
    v92 = v1;
    v103 = *(v1 + v38);

    v39 = String.init<A>(reflecting:)();
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v37;
    v87 = v37;
    *(v33 + 72) = v39;
    *(v33 + 80) = v40;
    static os_log_type_t.default.getter();
    v41 = v98;
    os_log(_:dso:log:type:_:)();

    v90 = v32;
    v42 = GroupSession.activeParticipants.getter();
    v43 = v42;
    v44 = v42 + 56;
    v45 = 1 << *(v42 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v42 + 56);
    v48 = (v45 + 63) >> 6;
    v97 = v16 + 8;
    v98 = (v16 + 16);
    v96 = v2 + 32;

    v49 = 0;
    v50 = _swiftEmptyArrayStorage;
    if (v47)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v51 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v51);
      ++v49;
      if (v47)
      {
        v49 = v51;
        do
        {
LABEL_10:
          v52 = v95;
          v53 = v100;
          (*(v16 + 16))(v95, *(v43 + 48) + *(v16 + 72) * (__clz(__rbit64(v47)) | (v49 << 6)), v100);
          Participant.id.getter();
          (*(v16 + 8))(v52, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100470054(0, v50[2] + 1, 1, v50);
            v50 = v56;
          }

          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            sub_100470054(v54 > 1, v55 + 1, 1, v50);
            v50 = v57;
          }

          v47 &= v47 - 1;
          v50[2] = v55 + 1;
          (*(v2 + 32))(v50 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v55, v101, v102);
        }

        while (v47);
      }
    }

    sub_1002F2348();
    v101 = v58;
    v59 = *(v92 + v91);
    v60 = 1 << *(v59 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v59 + 56);
    v63 = (v60 + 63) >> 6;
    v64 = *(v92 + v91);
    swift_bridgeObjectRetain_n();
    v65 = 0;
    v66 = _swiftEmptyArrayStorage;
    if (v62)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v67 >= v63)
      {

        sub_1002F2348();
        sub_1002F55DC();
        v75 = v74;

        if (v75)
        {
          v76 = sub_100004778();
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_10057D690;
          v78 = v89;
          GroupSession.id.getter();
          v79 = v102;
          (*(v2 + 16))(v93, v78, v102);
          v80 = String.init<A>(reflecting:)();
          v82 = v81;
          (*(v2 + 8))(v78, v79);
          v83 = v87;
          *(v77 + 56) = &type metadata for String;
          *(v77 + 64) = v83;
          *(v77 + 32) = v80;
          *(v77 + 40) = v82;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v84 = [objc_opt_self() defaultCenter];
          v85 = String._bridgeToObjectiveC()();
          [v84 postNotificationName:v85 object:0];
        }

        else
        {
        }

        return;
      }

      v62 = *(v59 + 56 + 8 * v67);
      ++v65;
      if (v62)
      {
        v65 = v67;
        do
        {
LABEL_23:
          v68 = v94;
          v69 = v100;
          (*(v16 + 16))(v94, *(v59 + 48) + *(v16 + 72) * (__clz(__rbit64(v62)) | (v65 << 6)), v100);
          Participant.id.getter();
          (*(v16 + 8))(v68, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100470054(0, v66[2] + 1, 1, v66);
            v66 = v72;
          }

          v71 = v66[2];
          v70 = v66[3];
          if (v71 >= v70 >> 1)
          {
            sub_100470054(v70 > 1, v71 + 1, 1, v66);
            v66 = v73;
          }

          v62 &= v62 - 1;
          v66[2] = v71 + 1;
          (*(v2 + 32))(v66 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v71, v99, v102);
        }

        while (v62);
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

void sub_100337C68(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100337CC4(v1);
  }
}

uint64_t sub_100337CC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5FB8, &qword_100580F18);
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v4, v6);
  v58 = &v53 - v7;
  v8 = sub_10026D814(&qword_1006A5FC0, &qword_100580F20);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  __chkstk_darwin(v8, v10);
  v55 = &v53 - v11;
  v54 = sub_10026D814(&qword_1006A5FC8, &qword_100580F28);
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v54, v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR___CSDPodcastRecordingActivityManager_queue];
  *v22 = v23;
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v22, v17);
  if (v25)
  {
    v27 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10057D6A0;
    v60 = a1;

    sub_10026D814(&qword_1006A5FD0, &unk_100580F30);
    v29 = String.init<A>(reflecting:)();
    v31 = v30;
    v53 = v4;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_100009D88();
    *(v28 + 64) = v32;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    GroupSession.activity.getter();
    v33 = String.init<A>(reflecting:)();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v33;
    *(v28 + 80) = v34;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    GroupSession.$state.getter();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = a1;
    sub_10001000C(&qword_1006A5FD8, &qword_1006A5FC8, &qword_100580F28);

    v37 = v54;
    Publisher<>.sink(receiveValue:)();

    (*(v12 + 8))(v16, v37);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v38 = v55;
    GroupSession.$activeParticipants.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = v2;
    *(v39 + 24) = a1;
    sub_10001000C(&qword_1006A5FE0, &qword_1006A5FC0, &qword_100580F20);

    v40 = v2;
    v41 = v57;
    Publisher<>.sink(receiveValue:)();

    (*(v56 + 8))(v38, v41);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v42 = type metadata accessor for GroupSessionMessenger();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();

    v45 = GroupSessionMessenger.init<A>(session:)();
    type metadata accessor for RecordResponseMessage();
    sub_10000EF18(&qword_1006A5FE8, type metadata accessor for RecordResponseMessage);
    sub_10000EF18(&qword_1006A5FF0, type metadata accessor for RecordResponseMessage);
    v46 = v58;
    GroupSessionMessenger.receive<A>(_:)();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = a1;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_10033A8FC;
    *(v49 + 24) = v48;
    sub_10001000C(&qword_1006A5FF8, &qword_1006A5FB8, &qword_100580F18);

    v50 = v53;
    Publisher<>.sink(receiveValue:)();

    (*(v59 + 8))(v46, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    GroupSession.join()();
    v51 = *&v40[OBJC_IVAR___CSDPodcastRecordingActivityManager_session];
    *&v40[OBJC_IVAR___CSDPodcastRecordingActivityManager_session] = a1;

    v52 = *&v40[OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger];
    *&v40[OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger] = v45;

    if (v40[OBJC_IVAR___CSDPodcastRecordingActivityManager_acceptedPodcastRecordingActivity] == 1)
    {
      sub_1003364B4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003384A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100338518(a1, a3);
  }
}

uint64_t sub_100338518(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = type metadata accessor for UUID();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v69 - v10;
  v12 = sub_10026D814(&qword_1006A6020, &qword_100580F78);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = (&v69 - v19);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v2;
  v27 = *(v2 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v26, v21);
  if (v27)
  {
    v30 = *(v13 + 16);
    v30(v20, a1, v12);
    v31 = (*(v13 + 88))(v20, v12);
    if (v31 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v13 + 96))(v20, v12);
      v32 = *v20;
      v33 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10057D6A0;
      GroupSession.id.getter();
      v36 = v74;
      v35 = v75;
      (*(v74 + 16))(v76, v11, v75);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      (*(v36 + 8))(v11, v35);
      *(v34 + 56) = &type metadata for String;
      v40 = sub_100009D88();
      *(v34 + 64) = v40;
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      v78 = v32;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v41 = String.init<A>(reflecting:)();
      *(v34 + 96) = &type metadata for String;
      *(v34 + 104) = v40;
      *(v34 + 72) = v41;
      *(v34 + 80) = v42;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_10033A394();
    }

    v43 = v31;
    if (v31 == enum case for GroupSession.State.waiting<A>(_:))
    {
      v44 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      v47 = v74;
      v46 = v75;
      (*(v74 + 16))(v76, v11, v75);
      v48 = String.init<A>(reflecting:)();
      v50 = v49;
      (*(v47 + 8))(v11, v46);
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100009D88();
      *(v45 + 32) = v48;
      *(v45 + 40) = v50;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v51 = enum case for GroupSession.State.joined<A>(_:);
    v71 = sub_100004778();
    if (v43 == v51)
    {
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      v54 = v74;
      v53 = v75;
      (*(v74 + 16))(v76, v11, v75);
      v55 = String.init<A>(reflecting:)();
      v57 = v56;
      (*(v54 + 8))(v11, v53);
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_100009D88();
      *(v52 + 32) = v55;
      *(v52 + 40) = v57;
      static os_log_type_t.default.getter();
      v58 = v71;
      os_log(_:dso:log:type:_:)();
    }

    v70 = static os_log_type_t.fault.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_10057D6A0;
    GroupSession.id.getter();
    v60 = v74;
    v61 = v75;
    v62 = *(v74 + 16);
    v69 = a1;
    v62(v76, v11, v75);
    v76 = String.init<A>(reflecting:)();
    v64 = v63;
    (*(v60 + 8))(v11, v61);
    *(v59 + 56) = &type metadata for String;
    v65 = sub_100009D88();
    *(v59 + 64) = v65;
    *(v59 + 32) = v76;
    *(v59 + 40) = v64;
    v30(v72, v69, v12);
    v66 = String.init<A>(reflecting:)();
    *(v59 + 96) = &type metadata for String;
    *(v59 + 104) = v65;
    *(v59 + 72) = v66;
    *(v59 + 80) = v67;
    v68 = v71;
    os_log(_:dso:log:type:_:)();

    sub_10033A394();
    return (*(v13 + 8))(v20, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100338CBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v33 - v16;

  v19 = sub_10033AC94(v18, a2);
  v20 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057D6A0;
  GroupSession.id.getter();
  (*(v9 + 16))(v14, v17, v8);
  v22 = String.init<A>(reflecting:)();
  v24 = v23;
  (*(v9 + 8))(v17, v8);
  *(v21 + 56) = &type metadata for String;
  v25 = sub_100009D88();
  *(v21 + 64) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v35 = v19;

  sub_10026D814(&qword_1006A6008, &qword_100580F58);
  v26 = String.init<A>(reflecting:)();
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v27;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (!v19[2])
  {
  }

  v28 = type metadata accessor for TaskPriority();
  sub_10000AF74(v7, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v34;
  v29[4] = v34;
  v29[5] = a2;
  v29[6] = v19;

  v31 = v30;
  sub_1002762F0();

  return GroupSession.isLocallyInitiated.getter();
}

uint64_t sub_100338FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v14 - 8) + 16))(v11, a2, v14);
    sub_10000AF74(v11, 0, 1, v14);
    sub_1003390F8(a1, v11, a4);

    return sub_1000099A4(v11, &qword_1006A6018, &qword_100582860);
  }

  return result;
}

uint64_t sub_1003390F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a3;
  v117 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v117 - 8);
  v5 = *(v116 + 64);
  __chkstk_darwin(v117, v6);
  v114 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  v8 = *(v113 + 64);
  __chkstk_darwin(v115, v9);
  v112 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v126 = *(v11 - 8);
  v12 = v126[8];
  v14 = __chkstk_darwin(v11, v13);
  v130 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v131 = &v105 - v17;
  v18 = type metadata accessor for Participant();
  v124 = *(v18 - 8);
  v19 = *(v124 + 64);
  v21 = __chkstk_darwin(v18, v20);
  v108 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v106 = &v105 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v109 = &v105 - v28;
  __chkstk_darwin(v27, v29);
  v31 = &v105 - v30;
  v32 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v33 = *(*(v32 - 8) + 64);
  v35 = __chkstk_darwin(v32 - 8, v34);
  v119 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v39 = &v105 - v38;
  v40 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8, v42);
  v44 = &v105 - v43;
  v45 = type metadata accessor for RecordResponseMessage();
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45, v47);
  v49 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100004778();
  v122 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10057E830;
  v128 = a1;
  sub_10033AA94(a1, v49);
  v123 = v49;
  v127 = v45;
  v51 = String.init<A>(reflecting:)();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v129 = sub_100009D88();
  *(v50 + 64) = v129;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  v120 = a2;
  sub_10033AB54(a2, v39);
  v54 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v55 = sub_100015468(v39, 1, v54);
  v110 = v18;
  v107 = v31;
  v118 = v54;
  v56 = v126;
  if (v55 == 1)
  {
    sub_1000099A4(v39, &qword_1006A6018, &qword_100582860);
    v57 = 1;
  }

  else
  {
    GroupSessionMessenger.MessageContext.source.getter();
    (*(*(v54 - 8) + 8))(v39, v54);
    Participant.id.getter();
    (*(v124 + 8))(v31, v18);
    v57 = 0;
  }

  sub_10000AF74(v44, v57, 1, v11);
  v58 = sub_1002910A0();
  v60 = v59;
  sub_1000099A4(v44, &unk_1006A3DD0, &unk_10057C9D0);
  v61 = v129;
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v61;
  *(v50 + 72) = v58;
  *(v50 + 80) = v60;
  v62 = v131;
  GroupSession.id.getter();
  v63 = v56;
  v64 = v56[2];
  v65 = v130;
  v126 = v64;
  (v64)(v130, v62, v11);
  v66 = String.init<A>(reflecting:)();
  v68 = v67;
  v121 = v63[1];
  v121(v62, v11);
  *(v50 + 136) = &type metadata for String;
  *(v50 + 144) = v61;
  *(v50 + 112) = v66;
  *(v50 + 120) = v68;
  static os_log_type_t.default.getter();
  v69 = v125;
  os_log(_:dso:log:type:_:)();

  v70 = v128;
  if (*(v128 + *(v127 + 20)) != 1)
  {
    v125 = sub_100004778();
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_10057D6A0;
    sub_10033AA94(v70, v123);
    v85 = String.init<A>(reflecting:)();
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = v61;
    *(v84 + 32) = v85;
    *(v84 + 40) = v86;
    GroupSession.id.getter();
    (v126)(v65, v62, v11);
    v87 = String.init<A>(reflecting:)();
    v89 = v88;
    v121(v62, v11);
    *(v84 + 96) = &type metadata for String;
    *(v84 + 104) = v61;
    *(v84 + 72) = v87;
    *(v84 + 80) = v89;
    static os_log_type_t.default.getter();
    v90 = v125;
    os_log(_:dso:log:type:_:)();
  }

  v71 = v126;
  v72 = v11;
  v73 = v119;
  sub_10033AB54(v120, v119);
  v74 = v118;
  if (sub_100015468(v73, 1, v118) == 1)
  {
    sub_1000099A4(v73, &qword_1006A6018, &qword_100582860);
    v75 = sub_100004778();
    LODWORD(v125) = static os_log_type_t.fault.getter();
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_10057D6A0;
    sub_10033AA94(v70, v123);
    v77 = String.init<A>(reflecting:)();
    v78 = v129;
    *(v76 + 56) = &type metadata for String;
    *(v76 + 64) = v78;
    *(v76 + 32) = v77;
    *(v76 + 40) = v79;
    v80 = v131;
    GroupSession.id.getter();
    v71(v130, v80, v72);
    v81 = String.init<A>(reflecting:)();
    v83 = v82;
    v121(v80, v72);
    *(v76 + 96) = &type metadata for String;
    *(v76 + 104) = v78;
    *(v76 + 72) = v81;
    *(v76 + 80) = v83;
    os_log(_:dso:log:type:_:)();
  }

  v92 = v106;
  GroupSessionMessenger.MessageContext.source.getter();
  (*(*(v74 - 8) + 8))(v73, v74);
  v93 = v124;
  v94 = v109;
  v95 = v110;
  (*(v124 + 32))(v109, v92, v110);
  (*(v93 + 16))(v108, v94, v95);
  v96 = v111;
  swift_beginAccess();
  v97 = v107;
  sub_1003966D8();
  swift_endAccess();
  v98 = *(v93 + 8);
  v98(v97, v95);
  v98(v94, v95);
  v99 = *(v96 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10033ABC4;
  aBlock[5] = v100;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628050;
  v101 = _Block_copy(aBlock);

  v102 = v112;
  static DispatchQoS.unspecified.getter();
  v133 = _swiftEmptyArrayStorage;
  sub_10000EF18(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v103 = v114;
  v104 = v117;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v101);
  (*(v116 + 8))(v103, v104);
  (*(v113 + 8))(v102, v115);
}

void sub_100339CF4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_100339D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for Participants();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for RecordResponseMessage();
  v6[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v12 = type metadata accessor for Participant();
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v14 = *(v13 + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_100339EAC, 0, 0);
}

uint64_t sub_100339EAC()
{
  sub_1000066BC();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v6 = OBJC_IVAR___CSDPodcastRecordingActivityManager_participantsAcceptedRecording;
  swift_beginAccess();
  v7 = *(v5 + v6);

  GroupSession.localParticipant.getter();
  sub_10042282C();
  LOBYTE(v4) = v8;

  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v28 = v0[16];
    v29 = v0[12];
    v30 = v0[13];
    v31 = v0[10];

    sub_100009EF4();
    sub_100017D5C();

    __asm { BRAA            X1, X16 }
  }

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[5];
  UUID.init()();
  *(v9 + *(v11 + 20)) = 1;
  v13 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = sub_100009F00();
  *(v14 + 16) = xmmword_10057D690;
  sub_10033AA94(v9, v10);
  sub_100008B88();
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009D88();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  static os_log_type_t.default.getter();
  sub_100015D80();

  v18 = *(v12 + OBJC_IVAR___CSDPodcastRecordingActivityManager_messenger);
  v0[17] = v18;
  if (!v18)
  {
    sub_10033AAF8(v0[13]);
    goto LABEL_7;
  }

  v19 = v0[9];
  v20 = v0[8];
  *v0[10] = v0[7];
  (*(v19 + 104))();
  v21 = async function pointer to GroupSessionMessenger.send<A>(_:to:)[1];

  v22 = swift_task_alloc();
  v0[18] = v22;
  sub_1000181EC();
  sub_10000EF18(v23, v21);
  sub_1000171B4(&qword_1006A5FF0);
  *v22 = v0;
  v22[1] = sub_10033A164;
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[11];
  sub_100017D5C();

  return GroupSessionMessenger.send<A>(_:to:)();
}

uint64_t sub_10033A164()
{
  sub_1000066BC();
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  sub_100008060();
  *v5 = v4;

  v6 = v2[17];
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[8];
  if (v0)
  {

    v10 = *(v8 + 8);
    v11 = sub_100008B88();
    v12(v11);
  }

  else
  {
    v13 = *(v8 + 8);
    v14 = sub_100008B88();
    v15(v14);
  }

  sub_100017D5C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10033A308()
{
  sub_10033AAF8(v0[13]);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];

  sub_100009EF4();

  return v5();
}

void sub_10033A394()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + OBJC_IVAR___CSDPodcastRecordingActivityManager_queue);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    v19 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10057D690;
    GroupSession.id.getter();
    (*(v2 + 16))(v7, v10, v1);
    v21 = String.init<A>(reflecting:)();
    v23 = v22;
    (*(v2 + 8))(v10, v1);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100009D88();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100336134();
  }

  else
  {
    __break(1u);
  }
}

_BYTE *storeEnumTagSinglePayload for PodcastRecordingActivityManagerErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10033A804()
{
  result = qword_1006A5F98;
  if (!qword_1006A5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5F98);
  }

  return result;
}

unint64_t sub_10033A858()
{
  result = qword_1006A5FA8;
  if (!qword_1006A5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5FA8);
  }

  return result;
}

uint64_t sub_10033A8C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_1000081EC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10033A914()
{
  sub_1000066BC();
  sub_100007D34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000E740(v1);
  sub_100017D5C();

  return sub_100336C84(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10033A9AC()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100008060();
  *v3 = v2;

  sub_100009EF4();

  return v4();
}

uint64_t sub_10033AA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordResponseMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033AAF8(uint64_t a1)
{
  v2 = type metadata accessor for RecordResponseMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10033ABF4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = sub_10033B2C4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10033AC94(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v61 = type metadata accessor for UUID();
  v6 = *(v61 - 8);
  v7 = *(v6 + 8);
  v9 = __chkstk_darwin(v61, v8);
  v60 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v59 = v45 - v12;
  v58 = type metadata accessor for Participant();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v58, v15);
  v57 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v56 = v45 - v19;
  v20 = *(a1 + 32);
  v21 = v20 & 0x3F;
  v22 = ((1 << v20) + 63) >> 6;
  v23 = 8 * v22;
  v63 = a2;

  if (v21 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v47 = v3;
    v45[1] = v45;
    __chkstk_darwin(v24, v25);
    v46 = v22;
    v48 = (v45 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v22, v48);
    v22 = 0;
    v62 = a1;
    v27 = *(a1 + 7);
    a1 = (a1 + 56);
    v26 = v27;
    v51 = a1;
    v28 = 1 << *(a1 - 24);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v26;
    v49 = 0;
    v50 = (v28 + 63) >> 6;
    v64 = v13;
    v54 = v13 + 8;
    v55 = v13 + 16;
    v53 = (v6 + 8);
    while (v30)
    {
      v67 = (v30 - 1) & v30;
      v31 = __clz(__rbit64(v30)) | (v22 << 6);
      v32 = v64;
LABEL_12:
      v35 = *(v62 + 6);
      v36 = *(v32 + 72);
      v52 = v31;
      v6 = v56;
      v13 = v58;
      (*(v32 + 16))(v56, v35 + v36 * v31, v58);
      v3 = v59;
      Participant.id.getter();
      v37 = v57;
      GroupSession.localParticipant.getter();
      v38 = v60;
      Participant.id.getter();
      v66 = *(v32 + 8);
      v66(v37, v13);
      sub_10000EF18(&qword_1006A2620, &type metadata accessor for UUID);
      v23 = v61;
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      a1 = *v53;
      (*v53)(v38, v23);
      a1(v3, v23);
      v66(v6, v13);
      v30 = v67;
      if ((v65 & 1) == 0)
      {
        *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1003EB370(v48, v46, v49, v62);
          v41 = v40;

          return v41;
        }
      }
    }

    v33 = v22;
    v32 = v64;
    while (1)
    {
      v22 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v22 >= v50)
      {
        goto LABEL_16;
      }

      v34 = *(v51 + v22);
      ++v33;
      if (v34)
      {
        v67 = (v34 - 1) & v34;
        v31 = __clz(__rbit64(v34)) | (v22 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v43 = swift_slowAlloc();
  v44 = v63;

  v41 = sub_10033ABF4(v43, v22, a1, v44);

  return v41;
}

uint64_t sub_10033B1BC(void (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();

  a1(*(v2 + 40));
  a2(*(v2 + 48));

  return _swift_deallocObject(v2, 56, 7);
}

uint64_t sub_10033B22C()
{
  sub_1000066BC();
  sub_100007D34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000E740(v1);
  sub_100017D5C();

  return sub_100339D50(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10033B2C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v60 = a4;
  v44 = a1;
  v58 = type metadata accessor for UUID();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v58, v7);
  v57 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v56 = &v43 - v11;
  v55 = type metadata accessor for Participant();
  v12 = *(*(v55 - 8) + 64);
  v14 = __chkstk_darwin(v55, v13);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14, v16);
  v52 = &v43 - v19;
  v20 = 0;
  v59 = a3;
  v21 = *(a3 + 56);
  v47 = a3 + 56;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v45 = 0;
  v46 = (v22 + 63) >> 6;
  v54 = v18;
  v50 = v18 + 8;
  v51 = v18 + 16;
  v49 = (v5 + 8);
  v25 = v52;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v63 = (v24 - 1) & v24;
LABEL_11:
    v29 = v26 | (v20 << 6);
    v30 = *(v59 + 48);
    v31 = v54;
    v32 = v55;
    v33 = *(v54 + 72);
    v48 = v29;
    (*(v54 + 16))(v25, v30 + v33 * v29, v55);
    v34 = v56;
    Participant.id.getter();
    v35 = v53;
    GroupSession.localParticipant.getter();
    v36 = v57;
    Participant.id.getter();
    v62 = *(v31 + 8);
    v62(v35, v32);
    sub_10000EF18(&qword_1006A2620, &type metadata accessor for UUID);
    v37 = v58;
    v61 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *v49;
    (*v49)(v36, v37);
    v38(v34, v37);
    result = (v62)(v25, v32);
    v24 = v63;
    if ((v61 & 1) == 0)
    {
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
LABEL_15:
        v40 = v59;

        sub_1003EB370(v44, v43, v45, v40);
        v42 = v41;

        return v42;
      }
    }
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v46)
    {
      goto LABEL_15;
    }

    v28 = *(v47 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v63 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033B6B8()
{
  sub_10033B710();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10033B710()
{
  if (!qword_1006A60A8)
  {
    v0 = type metadata accessor for SoundDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A60A8);
    }
  }
}

unint64_t sub_10033B75C()
{
  result = qword_1006A60D0;
  if (!qword_1006A60D0)
  {
    type metadata accessor for SoundDescriptorAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A60D0);
  }

  return result;
}

BOOL sub_10033B7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v19 - v11;
  sub_100049EF4(a2, &v19 - v11);
  v13 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v14 = sub_100015468(v12, 2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    sub_10033BF00(v12, type metadata accessor for SoundDescriptor);
    v15 = 3;
  }

  sub_100049EF4(a1, v9);
  v16 = sub_100015468(v9, 2, v13);
  if (v16)
  {
    v17 = v16;
    if (v16 != 1)
    {
      v17 = 2;
    }
  }

  else
  {
    sub_10033BF00(v9, type metadata accessor for SoundDescriptor);
    v17 = 3;
  }

  return v15 >= v17;
}

uint64_t sub_10033B91C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  if (v2 < v3)
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }

  if (v2 == v3)
  {
    return *a2 >= *a1;
  }

  return sub_10000F4A8();
}

uint64_t sub_10033B94C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  if (v2 < v3)
  {
    return sub_10000F4A8();
  }

  if (v2 == v3)
  {
    return *a2 < *a1;
  }

  return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
}

BOOL sub_10033B97C(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SoundDescriptorAction();
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000A1BC();
  v13 = __chkstk_darwin(v11, v12);
  sub_100010344(v13, v14, v15, v16, v17, v18, v19, v20, v30);
  v21 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (sub_1000171DC(v21))
  {
    sub_10000A870();
    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }
  }

  else
  {
    sub_10033BF00(v3, type metadata accessor for SoundDescriptor);
    v25 = 3;
  }

  sub_100049EF4(a1, v2);
  if (sub_100015468(v2, 2, a2))
  {
    sub_10000A870();
    if (!v24)
    {
      v26 = v27;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v2, v28);
    v26 = 3;
  }

  return v25 < v26;
}

uint64_t sub_10033BA88(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }

  if (v2 == v3)
  {
    return *a1 >= *a2;
  }

  return sub_10000F4A8();
}

BOOL sub_10033BAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v19 - v11;
  sub_100049EF4(a1, &v19 - v11);
  v13 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v14 = sub_100015468(v12, 2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    sub_10033BF00(v12, type metadata accessor for SoundDescriptor);
    v15 = 3;
  }

  sub_100049EF4(a2, v9);
  v16 = sub_100015468(v9, 2, v13);
  if (v16)
  {
    v17 = v16;
    if (v16 != 1)
    {
      v17 = 2;
    }
  }

  else
  {
    sub_10033BF00(v9, type metadata accessor for SoundDescriptor);
    v17 = 3;
  }

  return v15 >= v17;
}

uint64_t sub_10033BC20(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SoundDescriptor();
  v6 = sub_100007BF0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000A1BC();
  __chkstk_darwin(v10, v11);
  v13 = &v29 - v12;
  v14 = sub_10026D814(qword_1006A60D8, &qword_100581008);
  v15 = sub_100007BF0(v14);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v29 - v20;
  v22 = *(v19 + 56);
  sub_100049EF4(a1, &v29 - v20);
  sub_100049EF4(a2, &v21[v22]);
  v23 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v24 = sub_100015468(&v21[v22], 2, v23);
  v25 = sub_100015468(v21, 2, v23);
  if (!v24)
  {
    if (!v25)
    {
      sub_10033BF60(v21, v13);
      sub_10033BF60(&v21[v22], v2);
      v27 = sub_10039FCF8(v13, v2);
      sub_10033BF00(v2, type metadata accessor for SoundDescriptor);
      sub_10033BF00(v13, type metadata accessor for SoundDescriptor);
      return v27 & 1;
    }

    sub_1000084E0();
    sub_10033BF00(&v21[v22], v26);
    goto LABEL_9;
  }

  if (v24 == 1)
  {
    if (v25 != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v25 != 2)
  {
LABEL_9:
    sub_10033BF00(v21, type metadata accessor for SoundDescriptorAction);
    v27 = 0;
    return v27 & 1;
  }

  v27 = 1;
  return v27 & 1;
}

BOOL sub_10033BE00(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SoundDescriptorAction();
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000A1BC();
  v13 = __chkstk_darwin(v11, v12);
  sub_100010344(v13, v14, v15, v16, v17, v18, v19, v20, v31);
  v21 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (sub_1000171DC(v21))
  {
    sub_10000A870();
    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v3, v26);
    v25 = 3;
  }

  sub_100049EF4(a2, v2);
  if (sub_100015468(v2, 2, a1))
  {
    sub_10000A870();
    if (!v24)
    {
      v27 = v28;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v2, v29);
    v27 = 3;
  }

  return v25 < v27;
}

uint64_t sub_10033BF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033BF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10033BFC4()
{
  result = sub_100004778();
  qword_1006BA380 = result;
  return result;
}

void *sub_10033C090(uint64_t a1)
{
  v1[2] = a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v1[3] = sub_1003427E8;
  v1[4] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v1[5] = sub_100342818;
  v1[6] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  v1[7] = sub_100342848;
  v1[8] = v4;
  v5 = swift_allocObject();
  swift_weakInit();
  v1[9] = sub_100342878;
  v1[10] = v5;
  return v1;
}

void *sub_10033C198(uint64_t a1)
{
  v1[2] = a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v1[3] = sub_100342880;
  v1[4] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v1[5] = sub_1003428B0;
  v1[6] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  v1[7] = sub_1003428E0;
  v1[8] = v4;
  v5 = swift_allocObject();
  swift_weakInit();
  v1[9] = sub_100342910;
  v1[10] = v5;
  return v1;
}

uint64_t sub_10033C2A0()
{
  sub_100010368();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_1000113B8();
    v0(v2);
  }

  return result;
}

uint64_t sub_10033C2F0()
{
  sub_100010368();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_1000113B8();
    v0(v2);
  }

  return result;
}

uint64_t sub_10033C340(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void *sub_10033C3A0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    memcpy(__dst, (Strong + 40), sizeof(__dst));
    sub_100343100(__dst, __src, &unk_1006A41A0, &qword_10057EFE0);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_1002BA0C4(__src);
  }

  return memcpy(a1, __src, 0xA8uLL);
}

void *sub_10033C458@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    memcpy(__dst, (Strong + 80), sizeof(__dst));
    sub_100343100(__dst, __src, &unk_1006A41A0, &qword_10057EFE0);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_1002BA0C4(__src);
  }

  return memcpy(a1, __src, 0xA8uLL);
}

Swift::Int sub_10033C510()
{
  v0 = String.count.getter();
  v1 = Substring.distance(from:to:)();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    String.reserveCapacity(_:)(result);
    sub_100343160();
    String.append<A>(contentsOf:)();
    String.append<A>(contentsOf:)();
    return 0;
  }

  return result;
}

void *sub_10033C5F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B6F4(a2);
  v4 = *(a1 + 16);
  v5 = __OFADD__(v3, v4);
  result = (v3 + v4);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_100420420(result);

    sub_100414080(v7);

    sub_100414054(v8);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10033C67C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v3[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 24) = *a1;
  *(v18 + 16) = v3;
  *(v18 + 40) = v19;
  *(v18 + 50) = *(a1 + 26);
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  aBlock[4] = sub_1003429C0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628400;
  v20 = _Block_copy(aBlock);
  v21 = v3;
  sub_1003429D0(a1, &v25);
  sub_1000115CC(a2);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v8 + 8))(v12, v7);
  (*(v13 + 8))(v17, v24);
}

void sub_10033C978(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v11, v13);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for DispatchTime();
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21, v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v24, v27);
  v31 = &v54 - v30;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable) == 1)
  {
    v57 = v29;
    v58 = v28;
    v59 = v11;
    v32 = sub_10033D018();
    v65 = sub_100004778();
    if ((v32 & 1) == 0)
    {
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10057D690;
      v35 = a2[1];
      aBlock = *a2;
      *v67 = v35;
      *&v67[10] = *(a2 + 26);
      sub_1003429D0(a2, &v68);
      v36 = String.init<A>(reflecting:)();
      v55 = v6;
      v37 = v36;
      v56 = v7;
      v39 = v38;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_100009D88();
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_1003FF818();
      v41 = v40;
      v43 = v42;
      static DispatchTime.now()();
      ObjectType = swift_getObjectType();
      *v20 = (*(v43 + 8))(ObjectType, v43);
      (*(v16 + 104))(v20, enum case for DispatchTimeInterval.milliseconds(_:), v15);
      + infix(_:_:)();
      (*(v16 + 8))(v20, v15);
      v65 = *(v57 + 8);
      v45 = v26;
      v46 = v58;
      (v65)(v45, v58);
      v57 = *(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
      v47 = swift_allocObject();
      v47[2] = v41;
      v47[3] = v43;
      v49 = v60;
      v48 = v61;
      v47[4] = v60;
      v47[5] = v48;
      *&v67[16] = sub_100342A2C;
      *&v67[24] = v47;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v67 = sub_100004CEC;
      *&v67[8] = &unk_100628450;
      v50 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      sub_1000115CC(v49);
      v51 = v62;
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      v52 = v64;
      v53 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v50);
      swift_unknownObjectRelease();
      (*(v56 + 8))(v52, v53);
      (*(v63 + 8))(v51, v59);
      (v65)(v31, v46);

      return;
    }

    static os_log_type_t.default.getter();
  }

  else
  {
    v65 = sub_100004778();
    static os_log_type_t.default.getter();
  }

  os_log(_:dso:log:type:_:)();
  v33 = v65;
}

uint64_t sub_10033D018()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 8) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10033D148()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12[1] = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10033D3A0(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v27, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D690;
  (*(v13 + 16))(v17, v26, v12);
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100009D88();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v23 = *(v1 + 16);
  aBlock[4] = sub_1003427E0;
  v31 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628270;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v28 + 8))(v6, v2);
  (*(v7 + 8))(v11, v27);
}

uint64_t sub_10033D77C()
{
  sub_100010368();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_1000113B8();
    v0(v2);
  }

  return result;
}

uint64_t sub_10033D7CC(uint64_t a1)
{
  v28 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33, v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v34, v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v12 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v14 = *(v9 + 16);
  v14(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100009D88();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v18 = v29;
  v19 = *(v29 + 16);
  v14(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1003427B4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628248;
  v22 = _Block_copy(aBlock);

  v23 = v30;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v24 = v31;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v23, v34);
}

uint64_t sub_10033DC34()
{
  swift_beginAccess();
  v1 = sub_100343100(v0 + 152, v37, &unk_1006A2D10, &unk_10057D940);
  sub_100015DA0(v1, v2, v3, v4, v5, v6, v7, v8, v32);
  if (v36)
  {
    sub_10003EBF0(&v35, v34);
    sub_10033DDF8(v34, v0);
    sub_100009B7C(v34);
  }

  sub_100009A5C(v37, &unk_1006A2D10, &unk_10057D940);
  swift_beginAccess();
  v9 = sub_100343100(v0 + 184, v37, &unk_1006A2D10, &unk_10057D940);
  sub_100015DA0(v9, v10, v11, v12, v13, v14, v15, v16, v33);
  if (v36)
  {
    sub_10003EBF0(&v35, v34);
    sub_10033DDF8(v34, v0);
    sub_100009B7C(v34);
  }

  sub_100009A5C(v37, &unk_1006A2D10, &unk_10057D940);

  v17 = *(v0 + 24);
  swift_unknownObjectRelease();
  v18 = *(v0 + 32);

  v19 = *(v0 + 40);
  swift_unknownObjectRelease();
  v20 = *(v0 + 48);
  swift_unknownObjectRelease();
  v21 = *(v0 + 56);
  swift_unknownObjectRelease();
  v22 = *(v0 + 64);
  swift_unknownObjectRelease();
  v23 = *(v0 + 72);
  swift_unknownObjectRelease();
  v24 = *(v0 + 80);
  swift_unknownObjectRelease();
  v25 = *(v0 + 88);
  swift_unknownObjectRelease();
  v26 = *(v0 + 96);
  swift_unknownObjectRelease();

  v27 = *(v0 + 112);

  v28 = *(v0 + 120);

  v29 = *(v0 + 128);
  swift_unknownObjectRelease();
  v30 = *(v0 + 144);

  sub_100009A5C(v0 + 152, &unk_1006A2D10, &unk_10057D940);
  sub_100009A5C(v0 + 184, &unk_1006A2D10, &unk_10057D940);
  return v0;
}

uint64_t sub_10033DDF8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  sub_100009B14(a1, a1[3]);
  [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
  return swift_unknownObjectRelease();
}

uint64_t sub_10033DE5C()
{
  sub_10033DC34();

  return _swift_deallocClassInstance(v0, 216, 7);
}

uint64_t sub_10033DEA8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[2];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = v1[6];
    sub_10004CC80();
    v12 = v1[4];
    sub_100340B34(1);
    v13 = v1[5];
    sub_10004DF98();
    v14 = v1[7];
    sub_10004CDCC();
    v15 = v1[8];
    sub_10004D0B4();
    v16 = v1[9];
    sub_10004D518();
    v17 = v1[10];
    sub_10004D6F8();
    v18 = v1[11];
    sub_10004D990();
    v19 = v1[12];
    sub_10004D8F8();
    swift_beginAccess();
    v20 = v1[15];
    v1[15] = &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033E02C(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[2];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = a1[14];
    a1[14] = 0;

    v12 = a1[3];
    return sub_1000166CC(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033E150(uint64_t a1, uint64_t a2)
{
  v3 = __chkstk_darwin(a1, a2);
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v146 = *v7;
  v10 = v7[2];
  memcpy(__dst, v7 + 3, sizeof(__dst));
  memcpy(__src, v9, sizeof(__src));
  v11 = sub_100341E84(v9);
  v12 = &unk_10057D000;
  if (!v11)
  {
    goto LABEL_10;
  }

  v13 = v11;
  memcpy(v131, __src, sizeof(v131));
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  memcpy(v130, v131, 0xA8uLL);
  memcpy(&v130[10] + 8, v8, 0xA8uLL);
  memcpy(v132, v131, sizeof(v132));
  v119 = v13;
  if (sub_100043014(v132) != 1)
  {
    memcpy(v141, &v130[10] + 8, sizeof(v141));
    if (sub_100043014(v141) != 1)
    {
      memcpy(v139, &v130[10] + 8, sizeof(v139));
      memcpy(v129, &v130[10] + 8, 0xA8uLL);
      memcpy(v144, v130, sizeof(v144));
      sub_100042F60(v9, v140);
      sub_100343100(v8, v140, &unk_1006A41A0, &qword_10057EFE0);
      v14 = sub_100400614(v144, v129);
      sub_100009A5C(v139, &unk_1006A41A0, &qword_10057EFE0);
      memcpy(v140, v130, sizeof(v140));
      sub_100009A5C(v140, &unk_1006A41A0, &qword_10057EFE0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_6:
    memcpy(v129, v130, sizeof(v129));
    sub_100042F60(v9, v144);
    sub_100343100(v8, v144, &unk_1006A41A0, &qword_10057EFE0);
    sub_100009A5C(v129, &qword_1006A61B8, &qword_100581178);
    goto LABEL_11;
  }

  memcpy(v129, &v130[10] + 8, 0xA8uLL);
  if (sub_100043014(v129) != 1)
  {
    goto LABEL_6;
  }

  memcpy(v144, v130, sizeof(v144));
  sub_100042F60(v9, v141);
  sub_100343100(v8, v141, &unk_1006A41A0, &qword_10057EFE0);
  sub_100009A5C(v144, &unk_1006A41A0, &qword_10057EFE0);
LABEL_8:
  if ((v6 & 1) == 0)
  {

LABEL_10:
    v15 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057D690;
    memcpy(v130, v9, 0xA8uLL);
    sub_100042F60(v9, v141);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100009D88();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

LABEL_11:
  if (*(v9 + 144))
  {
    v20 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057D690;
    v22 = *(v9 + 136);
    v23 = sub_10001E478(*(v9 + 128), v22);
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100009D88();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v22)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    [objc_opt_self() setCurrentAttributionKey:0 andApp:v26];

    v13 = v119;
    v12 = &unk_10057D000;
  }

  memcpy(v140, v8, sizeof(v140));
  v120 = v10;
  if (sub_100043014(v140) == 1 || (memcpy(v141, v140, sizeof(v141)), v130[0] = v146, *&v130[1] = v10, memcpy(&v130[1] + 8, __dst, 0x90uLL), sub_100042F60(v130, v139), v27 = sub_100341E84(v141), sub_100009A5C(v8, &unk_1006A41A0, &qword_10057EFE0), !v27))
  {
    sub_1002BA0C4(v128);
    v31 = 0;
  }

  else
  {
    v28 = *(v27 + 9);
    v29 = *(v27 + 10);
    v30 = swift_retain_n();
    v28(v139, v30);
    v31 = v27;

    memcpy(v128, v139, sizeof(v128));
  }

  memcpy(v130, v128, 0xA8uLL);
  v32 = *(v13 + 32);
  (*(v13 + 24))(v9);
  memcpy(v127, v128, sizeof(v127));
  v33 = sub_100043014(v127);
  if (v33 != 1)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

      v13 = v119;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v13 = v119;
      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v40 = *(v13 + 80);
    (*(v13 + 72))(v133, v33);
    memcpy(v139, v133, sizeof(v139));
    v33 = sub_100043014(v139);
    if (v33 != 1)
    {
      if ((v139[0] & 0x10000000000) != 0 && (v139[6] & 0x100000000000000) != 0)
      {
        v41 = [*(v4 + 32) conversationManager];
        v42 = [v41 activeConversations];

        sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
        sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
        v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = sub_1002E8D04(v43);

        if (v44)
        {
          v13 = v119;
          if ([v44 state] == 3)
          {
            v114 = v44;
            v115 = v31;
            v45 = [v44 activitySessions];
            sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
            sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
            v46 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v46 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              __CocoaSet.makeIterator()();
              Set.Iterator.init(_cocoa:)();
              v47 = v133[21];
              v48 = v133[22];
              v49 = v133[23];
              v50 = v133[24];
              v51 = v133[25];
            }

            else
            {
              v102 = -1 << *(v46 + 32);
              v48 = v46 + 56;
              v49 = ~v102;
              v103 = -v102;
              if (v103 < 64)
              {
                v104 = ~(-1 << v103);
              }

              else
              {
                v104 = -1;
              }

              v51 = v104 & *(v46 + 56);

              v50 = 0;
              v47 = v46;
            }

            v105 = (v49 + 64) >> 6;
            v118 = v47;
            if (v47 < 0)
            {
              goto LABEL_109;
            }

LABEL_104:
            v106 = v50;
            v107 = v51;
            v108 = v50;
            if (!v51)
            {
              while (1)
              {
                v108 = v106 + 1;
                if (__OFADD__(v106, 1))
                {
                  break;
                }

                if (v108 >= v105)
                {
                  goto LABEL_119;
                }

                v107 = *(v48 + 8 * v108);
                ++v106;
                if (v107)
                {
                  goto LABEL_108;
                }
              }

              __break(1u);
LABEL_121:
              __break(1u);
              return;
            }

LABEL_108:
            v109 = (v107 - 1) & v107;
            v110 = *(*(v47 + 48) + ((v108 << 9) | (8 * __clz(__rbit64(v107)))));
            while (v110)
            {
              v112 = [v110 clientAudioSessionID];
              if (v112)
              {
                v113 = v112;
                if ([v110 state] == 1)
                {
                  [*(v4 + 24) triggerEndInterruptionForAudioSessionID:v113];
                }
              }

              else
              {
                v113 = v110;
              }

              v50 = v108;
              v51 = v109;
              v47 = v118;
              if ((v118 & 0x8000000000000000) == 0)
              {
                goto LABEL_104;
              }

LABEL_109:
              v111 = __CocoaSet.Iterator.next()();
              if (!v111)
              {
                break;
              }

              v137[0] = v111;
              swift_dynamicCast();
              v110 = v138[0];
              v108 = v50;
              v109 = v51;
            }

LABEL_119:
            sub_100022DDC();

            sub_100009A5C(v133, &unk_1006A41A0, &qword_10057EFE0);

            v13 = v119;
            v31 = v115;
            v12 = &unk_10057D000;
          }

          else
          {
            sub_100009A5C(v133, &unk_1006A41A0, &qword_10057EFE0);
          }
        }

        else
        {
          v33 = sub_100009A5C(v133, &unk_1006A41A0, &qword_10057EFE0);
          v13 = v119;
        }
      }

      else
      {
        v33 = sub_100009A5C(v133, &unk_1006A41A0, &qword_10057EFE0);
      }
    }
  }

LABEL_36:
  v52 = *(v13 + 80);
  (*(v13 + 72))(v134, v33);

  v53 = sub_100341F00(v130, v31, v134, v13);

  sub_100009A5C(v134, &unk_1006A41A0, &qword_10057EFE0);

  if (*(v9 + 50) != 1)
  {
    if (v53 && (v58 = *(v13 + 80), (*(v13 + 72))(v137, v54), memcpy(v138, v137, sizeof(v138)), sub_100043014(v138) != 1) && (*v136 = *&v138[9], sub_100343100(v136, v135, &unk_1006A61C0, &unk_100581180), sub_100009A5C(v137, &unk_1006A41A0, &qword_10057EFE0), *v136))
    {
      v59 = *&v136[8];
      ObjectType = swift_getObjectType();
      sub_10040038C(0, ObjectType, v59);

      sub_100009A5C(v128, &unk_1006A41A0, &qword_10057EFE0);
      v61 = &unk_1006A61C0;
      v62 = &unk_100581180;
      v63 = v136;
    }

    else
    {

      v61 = &unk_1006A41A0;
      v62 = &qword_10057EFE0;
      v63 = v128;
    }

    sub_100009A5C(v63, v61, v62);

    return;
  }

  if (v53)
  {
    v55 = *(v13 + 80);
    (*(v13 + 72))(v135, v54);
    memcpy(v138, v135, sizeof(v138));
    if (sub_100043014(v138) != 1)
    {
      v142 = *&v138[9];
      sub_100343100(&v142, v137, &unk_1006A61C0, &unk_100581180);
      sub_100009A5C(v135, &unk_1006A41A0, &qword_10057EFE0);
      if (v142)
      {
        v56 = *(&v142 + 1);
        v57 = swift_getObjectType();
        sub_10040038C(1, v57, v56);
        sub_100009A5C(&v142, &unk_1006A61C0, &unk_100581180);
      }
    }

    goto LABEL_48;
  }

  memcpy(v138, v8, sizeof(v138));
  if (sub_100043014(v138) != 1)
  {
    *&v142 = v138[1];
    v135[0] = *(v9 + 8);
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;
    if (v89 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v91 == v92)
    {
      sub_10004B628();
      sub_10004B628();

      sub_100045B00(v135, type metadata accessor for Category);
      sub_100045B00(&v142, type metadata accessor for Category);
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10004B628();
      sub_10004B628();

      sub_100045B00(v135, type metadata accessor for Category);
      sub_100045B00(&v142, type metadata accessor for Category);
      if ((v94 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v95 = *(v9 + 16);
    if (v120)
    {
      if (v95)
      {
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
        {

          goto LABEL_49;
        }

        v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v101)
        {
          goto LABEL_49;
        }
      }
    }

    else if (!v95)
    {
      goto LABEL_49;
    }
  }

LABEL_48:
  sub_1003420A0(v13);
LABEL_49:
  swift_beginAccess();
  v64 = *(v4 + 48);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10057CA80;
  *(v65 + 32) = *(v4 + 40);

  v66 = sub_10033C5F4(v64, v65);

  swift_setDeallocating();
  sub_1002F5CC8();
  v67 = sub_100274238(v66);
  v68 = sub_10000B6F4(v67);
  if (v68)
  {
    v69 = v68;
    if (v68 >= 1)
    {
      v70 = 0;
      v121 = v67 & 0xC000000000000001;
      v117 = v12[105];
      v71 = &unk_1006A41A0;
      v72 = &qword_10057EFE0;
      v116 = v67;
      while (1)
      {
        if (v121)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(v67 + 8 * v70 + 32);
        }

        if (*(v13 + 16) == v73)
        {
LABEL_73:

          goto LABEL_75;
        }

        v74 = v69;
        v75 = v72;
        v76 = v71;
        v77 = *v73;
        sub_100342920(v73);

        v78 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v79 = swift_allocObject();
        *(v79 + 16) = v117;
        v124[0] = v73;
        type metadata accessor for AVAudioSessionInterruptionProvider();

        v80 = String.init<A>(reflecting:)();
        v82 = v81;
        *(v79 + 56) = &type metadata for String;
        *(v79 + 64) = sub_100009D88();
        *(v79 + 32) = v80;
        *(v79 + 40) = v82;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_1002F04D8(0);
        memmove(v125, v73 + 10, 0xA8uLL);
        if (sub_100043014(v125) == 1)
        {
          v83 = 0;
          v13 = v119;
          v71 = v76;
        }

        else
        {
          v83 = v126;
          v71 = v76;
          if (v126)
          {
            swift_unknownObjectRetain();
          }

          v13 = v119;
        }

        v72 = v75;
        v84 = *(v13 + 80);
        (*(v13 + 72))(v136);
        memcpy(v137, v136, sizeof(v137));
        v69 = v74;
        if (sub_100043014(v137) == 1)
        {
          break;
        }

        v143 = *&v137[9];
        sub_100343100(&v143, v124, &unk_1006A61C0, &unk_100581180);
        sub_100009A5C(v136, v71, v72);
        v85 = v143;
        v67 = v116;
        if (!v83)
        {
          if (!v143)
          {
LABEL_74:

            goto LABEL_75;
          }

          goto LABEL_69;
        }

        if (!v143)
        {
          goto LABEL_69;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v83 == v85)
        {
          goto LABEL_74;
        }

LABEL_70:
        memcpy(v123, v73 + 10, sizeof(v123));
        sub_100343100(v123, v122, v71, v72);

        memcpy(v124, v123, sizeof(v124));
        if (sub_100043014(v124) == 1)
        {
          goto LABEL_73;
        }

        v86 = v124[9];
        v87 = v124[10];
        swift_unknownObjectRetain();
        sub_100009A5C(v123, v71, v72);
        if (!v86)
        {
          goto LABEL_73;
        }

        v88 = swift_getObjectType();
        sub_10040038C(0, v88, v87);

        swift_unknownObjectRelease();
LABEL_75:
        if (v69 == ++v70)
        {

          goto LABEL_78;
        }
      }

      v67 = v116;
      if (!v83)
      {
        goto LABEL_74;
      }

LABEL_69:
      swift_unknownObjectRelease();
      goto LABEL_70;
    }

    goto LABEL_121;
  }

LABEL_78:

  sub_100009A5C(v128, &unk_1006A41A0, &qword_10057EFE0);
}

void sub_10033F394()
{
  v0 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_10033F45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8, v7);
  v8 = *(a1 + 56);
  sub_10004B628();
  v9 = (v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_10004A200();
  *(v10 + v9) = a1;

  sub_10042FC64(a2, sub_100342FB8, v10);
}

uint64_t sub_10033F5B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioDescriptor();
  sub_100343100(a2 + *(v13 + 20), v7, &unk_1006A2B60, &qword_100581170);
  if (sub_100015468(v7, 1, v8) == 1)
  {
    return sub_100009A5C(v7, &unk_1006A2B60, &qword_100581170);
  }

  sub_10004A200();
  v15 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D690;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100009D88();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10033F7D4(v12);
  return sub_100045B00(v12, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
}

uint64_t sub_10033F7D4(uint64_t a1)
{
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30, v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v31, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v13 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009D88();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v18 = v27;
  v19 = *(v27 + 16);
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v10 + 32))(v21 + v20, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1003416DC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628180;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v23 = v28;
  v24 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v23, v24);
  (*(v29 + 8))(v8, v31);
}

uint64_t sub_10033FC0C(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AudioDescriptor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8, v11);
  v12 = *(a1 + 64);
  sub_10004B628();
  v13 = (v10 + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_10004A200();
  *(v14 + v13) = a1;

  sub_10039E228(a2, a3, a4);
}

uint64_t sub_10033FD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = __chkstk_darwin(v4, v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v39 - v11;
  v13 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AudioDescriptor();
  sub_100343100(a1 + *(v23 + 20), v17, &unk_1006A2B60, &qword_100581170);
  if (sub_100015468(v17, 1, v18) == 1)
  {
    return sub_100009A5C(v17, &unk_1006A2B60, &qword_100581170);
  }

  v42 = a2;
  sub_10004A200();
  v25 = v5[2];
  v41 = v22;
  v25(v12, v22, v4);
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000AF9C(v26, qword_1006BA628);
  v27 = v43;
  v25(v43, v12, v4);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v39 = v12;
    v40 = v4;
    v31 = v30;
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315138;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    v36 = v5[1];
    v36(v27, v40);
    v37 = sub_10002741C(v33, v35, &v44);

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Haptic playback completed and we had a deferred end descriptor, so expediting end interruption for call with UUID %s", v31, 0xCu);
    sub_100009B7C(v32);

    v12 = v39;
    v4 = v40;
  }

  else
  {

    v36 = v5[1];
    v36(v27, v4);
  }

  v38 = v41;
  sub_10033F7D4(v12);
  v36(v12, v4);
  return sub_100045B00(v38, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
}

uint64_t sub_10034015C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = swift_allocObject();
  swift_weakInit();

  sub_1003A0748(sub_100342AA8, v2);
}

uint64_t sub_1003401DC(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v23 = *(result + 16);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = v17;
    aBlock[4] = sub_100342AB0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100628568;
    v19 = _Block_copy(aBlock);
    v22 = v10;
    v20 = v19;
    sub_100342ABC(a1);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v5 + 8))(v9, v4);
    (*(v24 + 8))(v14, v22);
  }

  return result;
}

void sub_100340524(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    if (*(*(a3 + 72) + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor))
    {

      v5 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_100342AD0(a1);
    }

    else
    {

      v4 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      a1();

      sub_100342AD0(a1);
    }
  }
}

uint64_t sub_1003406FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = *(v0 + 32);
    return sub_10034080C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10034080C()
{
  v0 = sub_10034183C();
  result = sub_10000B6F4(v0);
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      ++v3;
      v5 = *(v4 + 64);
      (*(v4 + 56))();
    }

    while (v2 != v3);
  }
}

uint64_t sub_1003408BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v22 - v12;
  if (*(a1 + 112))
  {
    v14 = *(a1 + 112);

    v15 = sub_100010B20();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    dispatch thunk of DispatchWorkItem.perform()();
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
    v17 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10057D690;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100009D88();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    (*(v5 + 16))(v10, a2, v4);
    swift_beginAccess();
    sub_10039653C();
    swift_endAccess();
    return (*(v5 + 8))(v13, v4);
  }
}

uint64_t sub_100340B34(uint64_t a1)
{
  v2 = sub_10034183C();
  result = sub_10000B6F4(v2);
  if (!result)
  {

LABEL_16:
    swift_beginAccess();
    sub_10026D814(&qword_1006A61F8, &unk_1005811B0);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  v4 = result;
  if (result >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = *(v6 + 80);
      (*(v6 + 72))(__src);
      memcpy(__dst, __src, 0xA8uLL);
      if (sub_100043014(__dst) == 1)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v8 = __dst[9];
        v9 = __dst[10];
        swift_unknownObjectRetain();
        sub_100009A5C(__src, &unk_1006A41A0, &qword_10057EFE0);
      }

      v10 = *(v6 + 48);
      (*(v6 + 40))(a1);
      if (v8)
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_10040038C(0, ObjectType, v9);

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100340CF4(uint64_t a1)
{
  sub_1003406FC();
  v2 = *(a1 + 24);
  return sub_1000166CC(1);
}

uint64_t sub_100340D24(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    v9 = 0u;
    v10 = 0u;
    return sub_100009A5C(&v9, &unk_1006A2D10, &unk_10057D940);
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100006600(v8, v4);

  sub_100006780(v8);
  if (!*(&v10 + 1))
  {
    return sub_100009A5C(&v9, &unk_1006A2D10, &unk_10057D940);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (!v8[0])
    {
      v6 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v7 = *(a2 + 24);
      return sub_1000166CC(1);
    }
  }

  return result;
}

id sub_100340E58(void *a1)
{
  type metadata accessor for SiriCallAnnouncementProvider();
  v52 = a1;
  sub_1003FED74();
  v3 = v2;
  v4 = [objc_allocWithZone(type metadata accessor for DisclosureProvider()) init];
  v5 = [objc_allocWithZone(type metadata accessor for CallTranslationDisclosureProvider()) init];
  type metadata accessor for AudioResolver();
  v55 = sub_1003DFEB8();
  type metadata accessor for AudioInterruptionProviderFactory();
  v6 = swift_allocObject();
  v7 = [objc_opt_self() sharedAudioSystemController];
  v8 = [objc_opt_self() sharedInstance];
  sub_10026D814(&qword_1006A6198, &qword_100581158);
  swift_allocObject();
  v53 = sub_100341708(v6, v7, v8);
  type metadata accessor for RingtoneProvider();
  swift_allocObject();
  v9 = v3;
  v10 = sub_10034F0E0();
  v11 = type metadata accessor for SoundProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v54 = sub_10042FBFC();
  type metadata accessor for HapticProvider();
  swift_allocObject();
  sub_10039E218();
  v15 = v14;
  v41 = [objc_allocWithZone(type metadata accessor for HoldMusicProvider()) init];
  type metadata accessor for DiscoveryModeProvider();
  v40 = swift_allocObject();
  v16 = objc_opt_self();
  v49 = v4;
  v46 = v5;
  v39 = [v16 defaultCenter];
  v36 = sub_10033D148();
  v44 = [objc_allocWithZone(TUFeatureFlags) init];
  sub_10026D814(&qword_1006A61A0, &qword_100581160);
  v17 = swift_allocObject();
  *(v17 + 112) = 0;
  *(v17 + 120) = &_swiftEmptySetSingleton;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 176) = 0u;
  *(v17 + 192) = 0u;
  *(v17 + 208) = 0;
  *(v17 + 16) = v36;
  *(v17 + 24) = v55;
  *(v17 + 128) = v44;
  *(v17 + 136) = sub_100050890;
  *(v17 + 32) = v53;
  *(v17 + 40) = v9;
  *(v17 + 48) = v10;
  *(v17 + 56) = v54;
  *(v17 + 64) = v15;
  *(v17 + 72) = v41;
  *(v17 + 80) = v49;
  *(v17 + 88) = v46;
  *(v17 + 96) = v40;
  *(v17 + 104) = v39;
  sub_100006890();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = &v55[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler];
  v37 = *&v55[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8];
  v38 = *&v55[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler];
  *v19 = sub_100047314;
  v19[1] = v18;
  v43 = v9;
  v48 = v49;
  v47 = v46;
  v50 = v36;

  v45 = v44;

  v42 = v41;

  v20 = v39;

  sub_1000051F8(v38);
  v21 = objc_opt_self();
  v22 = [v21 mainQueue];
  sub_100006890();
  v23 = swift_allocObject();
  swift_weakInit();
  v61 = sub_1003426E4;
  v62 = v23;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1000165EC;
  ObjectType = &unk_1006281D0;
  v24 = _Block_copy(&aBlock);

  v25 = sub_100035B14();
  v27 = [v25 v26];
  _Block_release(v24);

  ObjectType = swift_getObjectType();
  aBlock = v27;
  swift_beginAccess();
  sub_100342714(&aBlock, v17 + 152);
  swift_endAccess();
  v28 = [v21 mainQueue];
  sub_100006890();
  v29 = swift_allocObject();
  swift_weakInit();

  v61 = sub_100342784;
  v62 = v29;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1000165EC;
  ObjectType = &unk_1006281F8;
  v30 = _Block_copy(&aBlock);

  v31 = sub_100035B14();
  v33 = [v31 v32];
  _Block_release(v30);

  ObjectType = swift_getObjectType();

  aBlock = v33;

  swift_beginAccess();
  sub_100342714(&aBlock, v17 + 184);
  swift_endAccess();
  *&v51[OBJC_IVAR___CSDAudioController_audioController] = v17;
  v56.receiver = v51;
  v56.super_class = type metadata accessor for CSDAudioController();
  v34 = objc_msgSendSuper2(&v56, "init");

  return v34;
}

id sub_100341674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDAudioController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100341708(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v4[6] = _swiftEmptyDictionarySingleton;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;

  v7 = a2;
  v8 = a3;
  v9 = sub_1002B9F2C();

  v4[5] = v9;
  v10 = v4[2];
  v11 = objc_allocWithZone(TUFeatureFlags);

  v12 = [v11 init];
  type metadata accessor for AVAudioClientInterruptionProvider();
  v13 = swift_allocObject();
  sub_1002BA0C4(__src);
  memcpy(v13 + 5, __src, 0xA8uLL);
  v13[2] = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v13[3] = sub_1003430F8;
  v13[4] = v14;
  swift_unknownObjectRetain();

  v4[7] = v13;
  return v4;
}

void *sub_10034183C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  type metadata accessor for AnyAudioInterruptionProvider();
  swift_allocObject();

  sub_10033C198(v3);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_29:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_beginAccess();
  v4 = *(*(v1 + 48) + 16);
  if (v4)
  {
    v28 = v1;
    v30 = *(v1 + 48);

    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = sub_1000057CC(v30);
    v7 = v30;
    v8 = v5;
    v10 = v9;
    v1 = 0;
    v11 = v30 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v7 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v11 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (*(v7 + 36) != v10)
        {
          goto LABEL_25;
        }

        v29 = v6;
        v13 = *(*(v7 + 56) + 8 * v8);
        swift_allocObject();

        sub_10033C198(v14);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = v30;
        v16 = 1 << *(v30 + 32);
        if (v8 >= v16)
        {
          goto LABEL_26;
        }

        v17 = *(v11 + 8 * v12);
        if ((v17 & (1 << v8)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v30 + 36) != v10)
        {
          goto LABEL_28;
        }

        v18 = v17 & (-2 << (v8 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v12 << 6;
          v20 = v12 + 1;
          v21 = (v30 + 72 + 8 * v12);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_100010000(v8, v10, v29 & 1);
              v7 = v30;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_17;
            }
          }

          sub_100010000(v8, v10, v29 & 1);
          v7 = v30;
        }

LABEL_17:
        if (++v1 == v4)
        {
          goto LABEL_20;
        }

        v6 = 0;
        v10 = *(v7 + 36);
        v8 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:

    v1 = v28;
  }

  v24 = sub_10027420C(_swiftEmptyArrayStorage);
  sub_100413F68(v24);
  v25 = *(v1 + 56);
  swift_allocObject();

  sub_10033C090(v26);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

unsigned int *sub_100341BA8(unsigned int *result)
{
  if ((*(result + 5) & 1) == 0)
  {
    v2 = v1;
    if (result[1])
    {
      v3 = *(v1 + 40);
    }

    else
    {
      v4 = *result;
      swift_beginAccess();
      v5 = *(v1 + 48);
      if (!*(v5 + 16) || (v6 = sub_100007558(v4), (v7 & 1) == 0))
      {
        swift_endAccess();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10057D690;
        *(v8 + 56) = &type metadata for UInt32;
        *(v8 + 64) = &protocol witness table for UInt32;
        *(v8 + 32) = v4;
        sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
        v9 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v10 = *(v2 + 16);
        v11 = sub_1002B9FF0(v4);
        if (v11)
        {
          v3 = v11;

          v12 = sub_100010B20();
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_10057D690;
          sub_10026D814(&unk_1006A61E0, &qword_100581198);
          v14 = Optional.debugDescription.getter();
          v16 = v15;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 64) = sub_100009D88();
          *(v13 + 32) = v14;
          *(v13 + 40) = v16;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          swift_beginAccess();
          v17 = *(v2 + 48);
          swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v2 + 48);
          sub_100379850();
          *(v2 + 48) = v20;
          swift_endAccess();
        }

        else
        {
          v18 = sub_100010B20();
          static os_log_type_t.error.getter();
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10057D690;
          *(v19 + 56) = &type metadata for UInt32;
          *(v19 + 64) = &protocol witness table for UInt32;
          *(v19 + 32) = v4;
          os_log(_:dso:log:type:_:)();

          return 0;
        }

        return v3;
      }

      v3 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
    }

    return v3;
  }

  __break(1u);
  return result;
}

unsigned int *sub_100341E84(uint64_t a1)
{
  if (*(a1 + 5))
  {
    v2 = *(v1 + 56);
    type metadata accessor for AnyAudioInterruptionProvider();
    swift_allocObject();

    return sub_10033C090(v3);
  }

  else
  {
    result = sub_100341BA8(a1);
    if (result)
    {
      v5 = result;
      type metadata accessor for AnyAudioInterruptionProvider();
      swift_allocObject();
      return sub_10033C198(v5);
    }
  }

  return result;
}

BOOL sub_100341F00(void *__src, uint64_t a2, const void *a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_100043014(__dst);
  v9 = __dst[50];
  memcpy(v23, a3, sizeof(v23));
  v10 = sub_100043014(v23);
  v11 = v10 == 1;
  if (v10 == 1)
  {
    if (v8 != 1)
    {
      v11 = 0;
    }
  }

  else if (v8 != 1)
  {
    v11 = ((v9 ^ v23[50]) & 1) == 0;
  }

  memcpy(v22, __src, sizeof(v22));
  v12 = sub_100043014(v22);
  v13 = v22[9];
  memcpy(v21, a3, sizeof(v21));
  v14 = sub_100043014(v21);
  v15 = v21[9];
  if (v14 == 1)
  {
    v15 = 0;
  }

  if (v12 == 1 || !v13)
  {
    v16 = v15 == 0;
  }

  else if (v15)
  {
    v16 = v13 == v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if (a2)
  {
    v18 = *(a2 + 16);
    swift_unknownObjectRetain();
    if (!a4)
    {
      if (!v18)
      {
        return (v11 & v17 & 1) == 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!a4)
    {
      return (v11 & v17 & 1) == 0;
    }

    v18 = 0;
  }

  v19 = *(a4 + 16);
  swift_unknownObjectRetain();
  if (!v18)
  {
    if (!v19)
    {
      return (v11 & v17 & 1) == 0;
    }

    goto LABEL_31;
  }

  if (!v19)
  {
LABEL_31:
    swift_unknownObjectRelease();
    return 1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = v18 != v19;
  if ((v11 & v17 & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1003420A0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 80);
  (*(a1 + 72))(v29, v12);
  memcpy(v30, v29, 0xA8uLL);
  result = sub_100043014(v30);
  if (result != 1)
  {
    if (v30[9])
    {
      v26 = v8;
      v17 = v30[10];
      ObjectType = swift_getObjectType();
      v24 = v3;
      v25 = v9;
      v19 = ObjectType;
      v20 = *(v17 + 8);
      swift_unknownObjectRetain();
      v21 = v20(v19, v17);
      swift_unknownObjectRelease();
      v28[4] = sub_100342968;
      v28[5] = a1;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 1107296256;
      v28[2] = sub_100004CEC;
      v28[3] = &unk_100628360;
      v22 = _Block_copy(v28);

      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      sub_100009A5C(v29, &unk_1006A41A0, &qword_10057EFE0);
      (*(v24 + 8))(v7, v2);
      (*(v25 + 8))(v14, v26);
    }

    else
    {
      return sub_100009A5C(v29, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  return result;
}

void sub_1003423FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v2 = sub_100342970(v1);
  if (v2 && (v3 = sub_100342670(v2), v4))
  {
    v5 = v3;
    v6 = v4;
    sub_10026D814(&unk_1006A61D0, &qword_100581190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    isa = Dictionary.init(dictionaryLiteral:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    isa = 0;
  }

  v10 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;
  type metadata accessor for Name(0);
  v12 = @"CSDCallAudioInterruptionPropertiesChangedNotification";
  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  *(v11 + 56) = &type metadata for String;
  v16 = sub_100009D88();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v17 = sub_100291468(isa);
  v19 = v18;

  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v20 = [objc_opt_self() defaultCenter];
  if (isa)
  {
    sub_10003F8F8(isa);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v20 postNotificationName:v12 object:0 userInfo:isa];
}

uint64_t sub_100342670(void *a1)
{
  Class = object_getClass(a1);
  if (Class != _TtC13callservicesd33AVAudioClientInterruptionProvider || a1 == 0)
  {
    if (Class != _TtC13callservicesd34AVAudioSessionInterruptionProvider || a1 == 0)
    {
      return 0;
    }

    v6 = &off_10061C7C8;
  }

  else
  {
    v6 = off_10061C7C0;
  }

  v7 = *v6;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100342714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100342920(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100342970(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100342ABC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100342AD0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100342AE4()
{
  v1 = *(*(type metadata accessor for AudioDescriptor() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  return sub_10033FC0C(v2, v5, v3, v4);
}

uint64_t sub_100342B7C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = a1(0);
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v8, v9);
}

uint64_t sub_100342C1C()
{
  v1 = type metadata accessor for SoundDescriptor();
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for AudioDescriptor() - 8);
  v7 = *(v0 + 16);
  v8 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10033F45C(v7, v0 + v3);
}

uint64_t sub_100342CE4()
{
  v2 = type metadata accessor for AudioDescriptor();
  sub_10000A880(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v0 + v5);

  if (*(v0 + v5 + 40) != 1)
  {
  }

  v9 = *(v8 + 9);
  swift_unknownObjectRelease();
  v10 = *(v8 + 17);

  v11 = *(v8 + 20);
  swift_unknownObjectRelease();
  v12 = v2[5];
  v13 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  if (!sub_100015468(&v8[v12], 1, v13))
  {
    v14 = type metadata accessor for UUID();
    sub_1000080D0(v14);
    (*(v15 + 8))(&v8[v12]);
  }

  v16 = &v8[v2[6]];
  if (*(v16 + 1))
  {

    v17 = *(v16 + 2);
  }

  v18 = &v8[v2[7]];
  v19 = type metadata accessor for RingtoneDescriptor();
  if (!sub_1000171FC(v19))
  {
    v20 = *(v18 + 1);

    v21 = *(v1 + 20);
    v22 = type metadata accessor for URL();
    if (!sub_100015FB0(&v18[v21]))
    {
      sub_10000F49C(v22);
      (*(v23 + 8))(&v18[v21], v22);
    }

    v24 = *&v18[*(v1 + 24) + 8];
  }

  v25 = &v8[v2[8]];
  v26 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v25, 2, v26))
  {

    v27 = *(type metadata accessor for SoundDescriptor() + 32);
    v28 = type metadata accessor for UUID();
    if (!sub_10000FDEC(v25 + v27))
    {
      sub_10000F49C(v28);
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

  v30 = &v8[v2[9]];
  v31 = *(v30 + 1);
  if (v31)
  {
  }

  v32 = &v8[v2[12]];
  v33 = type metadata accessor for CallTranslationDisclosureDescriptor();
  if (!sub_100018204(v33))
  {

    v34 = sub_1000162C0();
    sub_1000080D0(v34);
    (*(v35 + 8))(&v30[v32]);
  }

  v36 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v36);

  return _swift_deallocObject(v0, v36 + 8, v4 | 7);
}

uint64_t sub_100342FB8(uint64_t a1)
{
  v3 = type metadata accessor for AudioDescriptor();
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10033F5B8(a1, v1 + v8);
}

uint64_t sub_100343078(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_100343100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  sub_100008070(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100343160()
{
  result = qword_1006A6200[0];
  if (!qword_1006A6200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006A6200);
  }

  return result;
}

uint64_t sub_1003431B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1003431F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100343204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1003432B0(uint64_t a1, void *a2)
{
  v3 = sub_100009B14((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_10046A8DC(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_100343320()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A6290);
  v1 = sub_10000AF9C(v0, qword_1006A6290);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003433E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    default:
      if (a4 < 4)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

unint64_t sub_100343480(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1003436E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = 0x100000000000000;
  if (a1[7])
  {
    v12 = 0x100000000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000000000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000000000;
  }

  v13 = v3 == 0;
  v18 = &_mh_execute_header;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = &_mh_execute_header;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_100049F58(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

uint64_t sub_100343780()
{
  v1 = 0x100000000000000;
  if (!v0[7])
  {
    v1 = 0;
  }

  v2 = 0x1000000000000;
  if (!v0[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v0[5])
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if (!v0[4])
  {
    v4 = 0;
  }

  return sub_100343520(v4 | *v0 | v3 | v2 | v1);
}

uint64_t sub_100343804()
{
  sub_100006810();
  v1[35] = v0;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v2, v3, v4);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[36] = v5;
  v1[37] = v6;
  v7 = sub_100286804();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100343898()
{
  sub_100007648();
  v1 = v0[35];
  v2 = *(v1 + 104);
  v0[38] = v2;
  if (v2)
  {
    sub_100009EF4();
    v11 = v3;
    v5 = v4;

    return v11(v5);
  }

  else
  {
    v7 = [objc_opt_self() telephonyWithSharePlayProvider];
    v0[39] = v7;
    v8 = *(v1 + 56);
    v0[40] = v8;
    v9 = [v7 identifier];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v0[41] = v9;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100343A6C;
    v10 = swift_continuation_init();
    v0[33] = sub_10026D814(&qword_1006A6320, &qword_1005814D0);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100344674;
    v0[29] = &unk_1006288B0;
    v0[30] = v10;
    [v8 conversationProviderForIdentifier:v9 completionHandler:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100343A6C()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *(v4 + 288);

  return _swift_task_switch(sub_100343B68, v6, v5);
}

uint64_t sub_100343B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v26;
  a22 = v27;
  sub_10001E404();
  a20 = v22;
  v28 = *(v22 + 272);

  if (v28)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v29 = *(v22 + 312);
    v30 = type metadata accessor for Logger();
    sub_1000075F0(v30, qword_1006A6290);
    v31 = v29;
    v32 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v33 = sub_10000F96C();
    v34 = *(v22 + 312);
    if (v33)
    {
      sub_100005274();
      v35 = sub_10000681C();
      a11 = v35;
      *v23 = 136315138;
      v36 = [v34 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000C130();

      v37 = sub_10002741C(v24, v25, &a11);

      *(v23 + 4) = v37;
      sub_10000E4D4(&_mh_execute_header, v38, v39, "[CSDConversationCallCoordinationManager] Found existing TUConversationProvider with service-name: %s");
      sub_100009B7C(v35);
      sub_100005F64();
      sub_100006868();
    }

    else
    {
    }

    v59 = *(v22 + 280);
    v60 = *(v59 + 104);
    *(v59 + 104) = v28;
    v61 = v28;

    v62 = *(v22 + 304);
    v75 = sub_100009EF4();
    v76 = v63;
    v65 = v64;
    sub_100015AB0();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, v75, v76, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v40 = *(v22 + 312);
    v41 = type metadata accessor for Logger();
    *(v22 + 336) = sub_1000075F0(v41, qword_1006A6290);
    v42 = v40;
    v43 = Logger.logObject.getter();
    LOBYTE(v40) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v40))
    {
      v44 = *(v22 + 312);
      v45 = sub_100005274();
      v46 = swift_slowAlloc();
      a11 = v46;
      *v45 = 136315138;
      v47 = [v44 identifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10002741C(v48, v50, &a11);

      *(v45 + 4) = v51;
      sub_10000B940(&_mh_execute_header, v52, v53, "[CSDConversationCallCoordinationManager] Attempting to register TUConversationProvider with service-name: %s");
      sub_100009B7C(v46);
      sub_100006868();
      sub_100005F40();
    }

    v54 = *(v22 + 320);
    v55 = [*(v22 + 312) providerConfiguration];
    *(v22 + 344) = v55;
    *(v22 + 80) = v22;
    *(v22 + 120) = v22 + 272;
    *(v22 + 88) = sub_100343F0C;
    v56 = swift_continuation_init();
    *(v22 + 264) = sub_10026D814(&qword_1006A6328, &unk_1005814D8);
    *(v22 + 208) = _NSConcreteStackBlock;
    *(v22 + 216) = 1107296256;
    *(v22 + 224) = sub_100331818;
    *(v22 + 232) = &unk_1006288D8;
    *(v22 + 240) = v56;
    [v54 registerConversationProviderForConfiguration:v55 completionHandler:v22 + 208];
    sub_100015AB0();

    return _swift_continuation_await(v57);
  }
}

uint64_t sub_100343F0C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 352) = v4;
  v5 = v3[37];
  v6 = v3[36];
  if (v4)
  {
    v7 = sub_100344418;
  }

  else
  {
    v7 = sub_100344030;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100344030()
{
  sub_1000066BC();
  v1 = v0[39];
  v0[45] = v0[34];
  v2 = [v1 identifier];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();
    sub_10000667C();
  }

  v0[46] = v2;
  v3 = v0[40];
  v0[18] = v0;
  v0[19] = sub_100344188;
  v4 = swift_continuation_init();
  v0[33] = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1003432B0;
  v0[29] = &unk_100628900;
  v0[30] = v4;
  [v3 registerForCallbacksForProvider:v2 completionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_100344188()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[22];
  *(v1 + 376) = v4;
  v5 = v3[37];
  v6 = v3[36];
  if (v4)
  {
    v7 = sub_100344540;
  }

  else
  {
    v7 = sub_1003442AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1003442AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v26;
  a22 = v27;
  sub_10001E404();
  a20 = v22;
  v28 = *(v22 + 336);
  v29 = *(v22 + 312);

  v30 = v29;
  v31 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v32 = sub_10000F96C();
  v33 = *(v22 + 344);
  v34 = *(v22 + 312);
  if (v32)
  {
    sub_100005274();
    v35 = sub_10000681C();
    a11 = v35;
    *v23 = 136315138;
    v36 = [v34 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C130();

    v37 = sub_10002741C(v24, v25, &a11);

    *(v23 + 4) = v37;
    sub_10000E4D4(&_mh_execute_header, v38, v39, "[CSDConversationCallCoordinationManager] Successfully registered TUConversationProvider with service-name: %s");
    sub_100009B7C(v35);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
  }

  v40 = *(v22 + 360);
  v41 = *(v22 + 280);
  v42 = *(v41 + 104);
  *(v41 + 104) = v40;
  v43 = v40;

  v44 = *(v22 + 360);
  v45 = *(v22 + 304);
  v58 = sub_100009EF4();
  v59 = v46;
  v48 = v47;
  sub_100015AB0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, a11, a12, a13, a14);
}

uint64_t sub_100344418()
{
  sub_1000066BC();
  v1 = v0[44];
  swift_willThrow();
  v2 = v0[44];
  v3 = v0[42];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v5 = sub_100005274();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    sub_10000E4D4(&_mh_execute_header, v8, v9, "[CSDConversationCallCoordinationManager] Failed to register TUConversationProvider due to error: %@");
    sub_1000099A4(v6, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  v10 = v0[43];
  v11 = v0[39];

  swift_willThrow();
  sub_100009EF4();

  return v12();
}

uint64_t sub_100344540()
{
  sub_1000066BC();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[47];
  v5 = v0[42];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v7 = sub_100005274();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_10000E4D4(&_mh_execute_header, v10, v11, "[CSDConversationCallCoordinationManager] Failed to register TUConversationProvider due to error: %@");
    sub_1000099A4(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  v12 = v0[43];
  v13 = v0[39];

  swift_willThrow();
  sub_100009EF4();

  return v14();
}

uint64_t sub_100344674(uint64_t a1, void *a2)
{
  v3 = *sub_100009B14((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10046A8C4(v3, a2);
}

void sub_1003446C0()
{
  sub_100005298();
  v1 = *(v0 + 112);

  sub_1002F25F0();
}

BOOL sub_100344774(uint64_t a1)
{
  v2 = a1 + *(sub_10026D814(&qword_1006A47F0, &qword_10057F840) + 48);
  v3 = *v2;
  v4 = *(v2 + 5);
  v5 = *(v2 + 6);
  *(v2 + 7);
  v6 = &_mh_execute_header;
  if (!*(v2 + 4))
  {
    LODWORD(v6) = 0;
  }

  return sub_100344768(a1, v6 | v3);
}

uint64_t sub_100344818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v22 - v11;
  sub_10034B1D4(a1, &v22 - v11);
  v13 = *(v4 + 56);
  LODWORD(v4) = *&v12[v13];
  v14 = v12[v13 + 4];
  v15 = v12[v13 + 5];
  v16 = v12[v13 + 6];
  v17 = v12[v13 + 7];
  v18 = &v9[v13];
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 32))(v9, v12, v19);
  *v18 = v4;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  (*(v20 + 16))(v23, v9, v19);
  return sub_1000099A4(v9, &qword_1006A47F0, &qword_10057F840);
}

uint64_t sub_1003449A0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 136);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  sub_100021E24();
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = *(v8 + OBJC_IVAR___CSDConversationCallCoordinator_placeholderContainer);

LABEL_6:
  *a2 = v9;
  return result;
}

uint64_t sub_100344A58()
{
  sub_100006810();
  *(v1 + 16) = v0;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v2, v3, v4);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v5 = sub_10000FC24();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100344AE8()
{
  sub_100006810();
  v1 = *(v0 + 16);
  sub_1003446C0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100344BC4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100344C6C;

  return sub_100344A58();
}

uint64_t sub_100344C6C()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_1002F93D0(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000BB1C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v3)[2](v3, isa);

  _Block_release(v3);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100344E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  type metadata accessor for ConversationCallCoordinationManager();
  v12 = swift_allocObject();
  v13 = a6;
  v14 = v12;
  sub_100345000(a1, a2, a3, a4, v13, a5, sub_100344ED4, 0);
  sub_10000667C();
  swift_getObjectType();
  sub_10034B558();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_100344ED4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SharePlayAvailabilityHelper();
  v5 = a1;
  v10 = v4;
  v11 = &protocol witness table for SharePlayAvailabilityHelper;
  *&v9 = SharePlayAvailabilityHelper.__allocating_init()();
  v6 = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  result = sub_10002F0C8(&v9, v7 + 24);
  a2[3] = v6;
  a2[4] = &off_10062D498;
  *a2 = v7;
  return result;
}

id sub_100345000(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000083C0();
  v48 = v14;
  v49 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v47 = v19 - v18;
  v20 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  sub_100007FDC();
  v23 = type metadata accessor for DispatchQoS();
  v24 = sub_100007BF0(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  sub_100007FDC();
  *(v8 + 16) = 2;
  v28 = type metadata accessor for OperationManager();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v8 + 24) = OperationManager.init()();
  swift_unknownObjectWeakInit();
  *(v8 + 104) = 0;
  type metadata accessor for UUID();
  sub_1000084F8();
  sub_10003D434(v31, 255, v32);
  sub_10000BB1C();
  *(v8 + 112) = Dictionary.init(dictionaryLiteral:)();
  sub_10000BB1C();
  *(v8 + 120) = Dictionary.init(dictionaryLiteral:)();
  *(v8 + 128) = &_swiftEmptySetSingleton;
  type metadata accessor for ConversationCallCoordinator(0);
  sub_10000BB1C();
  v33 = a5;
  *(v8 + 136) = Dictionary.init(dictionaryLiteral:)();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 80) = a4;
  objc_opt_self();
  sub_10000D35C();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    swift_unknownObjectRetain();

    v36 = a5;
  }

  else
  {
    sub_100006AF0(0, &unk_1006A6340, OS_dispatch_queue_serial_ptr);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v55 = _swiftEmptyArrayStorage;
    sub_10003D434(&unk_1006AB110, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
    sub_10026D814(&qword_1006A6350, &qword_100586EE0);
    sub_10034B2F8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v49);
    v33 = a5;
    v35 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v8 + 32) = v35;
  *(v8 + 88) = a6;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  swift_unknownObjectWeakAssign();
  v37 = objc_allocWithZone(TUConversationProviderManager);
  v38 = v35;
  swift_unknownObjectRetain();

  v9[7] = [v37 init];
  v54.receiver = v9;
  v54.super_class = type metadata accessor for ConversationCallCoordinationManager();
  v39 = objc_msgSendSuper2(&v54, "init");
  v40 = qword_1006A0AA8;
  v41 = v39;
  if (v40 != -1)
  {
    sub_10000A1D8();
  }

  v42 = type metadata accessor for Logger();
  sub_1000075F0(v42, qword_1006A6290);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "[CSDConversationCallCoordinationManager] Initialized Conversation Call Coordinator Manager", v45, 2u);
    sub_100006868();
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v41;
}

uint64_t sub_1003454B8()
{
  sub_100006810();
  v1 = *(v0 + 336);
  sub_1003A1B00(2);
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  sub_100015FC8(v2);

  return sub_100347960();
}

uint64_t sub_10034554C()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *(v0 + 344);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;

  sub_100008DAC();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v7, v6);
}

uint64_t sub_100345658()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *(v0 + 360);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;

  sub_100008DAC();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v7, v6);
}

uint64_t sub_100345764()
{
  sub_100006810();
  v1 = v0[46];
  sub_10027F624();
  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_1003457C4, v2, v3);
}

uint64_t sub_1003457C4()
{
  sub_1000066BC();
  v1 = *(v0 + 368);

  v2 = sub_100010078();
  v3(v2);
  sub_100035E24();

  sub_100009EF4();

  return v4();
}

uint64_t sub_100345870()
{
  sub_100006810();
  v1 = *(v0 + 376);
  sub_1003A1B00(1);
  v2 = swift_task_alloc();
  *(v0 + 384) = v2;
  *v2 = v0;
  sub_100015FC8(v2);

  return sub_1003465E4();
}

uint64_t sub_100345900()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *(v0 + 384);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;

  sub_100008DAC();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100345A0C, v7, v6);
}

uint64_t sub_100345A0C()
{
  sub_1000066BC();
  v0 = sub_100010078();
  v1(v0);
  sub_100035E24();

  sub_100009EF4();

  return v2();
}

uint64_t sub_100345AB0()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *(v0 + 392);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;

  sub_100008DAC();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v7, v6);
}

uint64_t sub_100345BBC()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *(v0 + 400);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;

  sub_100008DAC();
  v6 = *(v5 + 328);
  v7 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v7, v6);
}

uint64_t sub_100345CC8()
{
  sub_100006810();
  v1 = v0[51];
  sub_10027F194();
  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_100345D28, v2, v3);
}

uint64_t sub_100345D28()
{
  sub_1000066BC();
  v1 = *(v0 + 408);

  v2 = sub_100010078();
  v3(v2);
  sub_100035E24();

  sub_100009EF4();

  return v4();
}

uint64_t sub_100345DD4()
{
  sub_100006810();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for DispatchPredicate();
  v1[8] = v4;
  sub_100005EB4(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_100005E9C();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v8, v9, v10);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[11] = v11;
  v1[12] = v12;
  v13 = sub_100286804();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100345EB8()
{
  sub_10000C698();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v0[7] + 32);
  *v1 = v4;
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v5 = v4;
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  v6 = *(v2 + 8);
  v7 = sub_100005ED0();
  result = v8(v7);
  if (v4)
  {
    v11 = v0[6];
    v10 = v0[7];
    sub_100005298();
    sub_10034B57C();
    v12 = sub_100005ED0();
    v14 = sub_10004A1E8(v12, v13);
    v0[13] = v14;

    if (v14)
    {
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = sub_10034602C;
      v16 = v0[6];
      sub_10000795C(v0[5]);

      return sub_10027C1B4();
    }

    else
    {
      type metadata accessor for ActivitySessionCreationRequestResult();
      sub_1002F16C4();
      v17 = v0[10];

      v18 = sub_10028686C();

      return v19(v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10034602C()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  sub_100008060();
  *v10 = v9;
  v5[15] = v0;

  if (v0)
  {
    v11 = v5[11];
    v12 = v5[12];
    v13 = sub_1003461A4;
  }

  else
  {
    v5[16] = v3;
    v11 = v5[11];
    v12 = v5[12];
    v13 = sub_100346140;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_100346140()
{
  sub_100006810();
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[10];

  v4 = sub_10028686C();

  return v5(v4);
}

uint64_t sub_1003461A4()
{
  sub_100006810();
  v1 = v0[13];
  v2 = v0[10];

  sub_100009EF4();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1003462A8(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = type metadata accessor for UUID();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;

  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_1003463EC;

  return sub_100345DD4();
}

uint64_t sub_1003463EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v12 = v10;
  v14 = v13;
  v15 = *v11;
  v16 = *v11;
  sub_100008060();
  *v17 = v16;
  v18 = v15[8];
  v19 = *v11;
  *v17 = *v11;

  v20 = v15[7];
  v21 = v15[3];
  v22 = v15[2];
  (*(v15[5] + 8))(v15[6], v15[4]);

  if (v12)
  {
    v23 = _convertErrorToNSError(_:)();

    (v20)[2](v20, 0, v23);

    _Block_release(v20);
  }

  else
  {
    (v20)[2](v20, v14, 0);
    _Block_release(v20);
  }

  v24 = v16[6];

  v25 = v19[1];
  sub_10001AB70();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1003465E4()
{
  sub_100006810();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  v1[25] = sub_100005E9C();
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v6);
  v8 = *(v7 + 64);
  v1[26] = sub_100015418();
  v1[27] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v1[28] = v9;
  sub_100005EB4(v9);
  v1[29] = v10;
  v1[30] = *(v11 + 64);
  v1[31] = sub_100015418();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v12, v13, v14);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[36] = v15;
  v1[37] = v16;
  v17 = sub_100286804();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100346760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v23;
  a22 = v24;
  sub_10001E404();
  a20 = v22;
  v25 = *(v22 + 216);
  v26 = *(v22 + 224);
  [*(v22 + 184) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  v27 = sub_10000EA40();
  if (v30)
  {
    __break(1u);
    return _swift_task_switch(v27, v28, v29);
  }

  v31 = *(v22 + 280);
  v32 = *(v22 + 224);
  v33 = *(v22 + 232);
  v34 = *(v22 + 216);
  v35 = *(v22 + 192);
  v36 = *(v33 + 32);
  *(v22 + 304) = v36;
  *(v22 + 312) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v36(v31, v34, v32);
  sub_100005298();
  sub_10034B57C();
  v37 = sub_100005ED0();
  sub_10004A1E8(v37, v38);
  sub_10000667C();

  if (!v31)
  {
    v54 = *(v22 + 184);
    v55 = sub_1003D0EC4();
    *(v22 + 320) = v55;
    if (v55)
    {
      v56 = v55;
      v57 = [*(v22 + 184) handle];
      *(v22 + 328) = v57;
      if (v57)
      {
        *(v22 + 336) = *(*(v22 + 192) + 48);
        sub_100015AB0();

        return _swift_task_switch(v27, v28, v29);
      }
    }

    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v68 = *(v22 + 280);
    v69 = *(v22 + 248);
    v70 = *(v22 + 224);
    v71 = *(v22 + 232);
    v72 = type metadata accessor for Logger();
    sub_10000AF9C(v72, qword_1006A6290);
    v73 = sub_10000F6DC();
    v74(v73);
    v75 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10003DBD0();
    v77 = os_log_type_enabled(v75, v76);
    v78 = *(v22 + 280);
    v79 = *(v22 + 248);
    v81 = *(v22 + 224);
    v80 = *(v22 + 232);
    if (v77)
    {
      sub_100005274();
      a10 = v78;
      a9 = sub_100021F34();
      a11 = a9;
      *v78 = 136315138;
      sub_1000084F8();
      sub_10003D434(v82, 255, v83);
      sub_100051630();
      sub_10002F75C();
      v84 = *(v80 + 8);
      v85 = sub_10000BA34();
      v86 = v84(v85);
      sub_10003EB64(v86, v87);
      sub_10000771C();

      *(v78 + 4) = v79;
      sub_10000FA74();
      _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
      sub_10000E764();
      sub_1000079DC();

      (v84)(v78, v81);
    }

    else
    {

      v93 = *(v80 + 8);
      v94 = sub_10000BA34();
      v93(v94);
      (v93)(v78, v81);
    }

    goto LABEL_13;
  }

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8();
  }

  v39 = *(v22 + 184);
  v40 = type metadata accessor for Logger();
  sub_1000075F0(v40, qword_1006A6290);
  v41 = v39;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v22 + 280);
  v47 = *(v22 + 224);
  v46 = *(v22 + 232);
  if (v44)
  {
    v48 = *(v22 + 184);
    a10 = *(v22 + 280);
    v49 = sub_100007C08();
    a11 = sub_100007630();
    *v49 = 136315394;
    *(v49 + 4) = sub_10002741C(0xD000000000000030, 0x800000010056D2F0, &a11);
    *(v49 + 12) = 2080;
    v50 = [v48 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002F75C();

    v53 = sub_10003EB64(v51, v52);

    *(v49 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "[CSDConversationCallCoordinationManager] Bad API usage – %s called for existing call with callUUID: %s", v49, 0x16u);
    swift_arrayDestroy();
    sub_1000079DC();
    sub_100005F64();

    (*(v46 + 8))(a10, v47);
  }

  else
  {

    (*(v46 + 8))(v45, v47);
  }

LABEL_13:
  sub_10000D470();

  sub_100009EF4();
  sub_100015AB0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100346BD8()
{
  sub_100006810();
  v1 = *(v0 + 336);
  sub_1003A1CFC(*(v0 + 328), *(v0 + 320));
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);

  return _swift_task_switch(sub_100346C3C, v2, v3);
}

uint64_t sub_100346C3C()
{
  sub_100006810();
  v1 = v0[24];
  v2 = *(v1 + 72);
  (*(v1 + 64))(v0[23]);
  v3 = *sub_100009B14(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_100346CE8;

  return sub_1003D10BC();
}

uint64_t sub_100346CE8()
{
  sub_100006810();
  sub_10000D68C();
  sub_100007BC8();
  *v3 = v2;
  v4 = *(v0 + 344);
  v5 = *v1;
  sub_100007BC8();
  *v6 = v5;
  *(v8 + 408) = v7;

  sub_100008DAC();
  v10 = *(v9 + 296);
  v11 = *(v0 + 288);

  return _swift_task_switch(sub_100346DFC, v11, v10);
}

uint64_t sub_100346DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v24;
  a22 = v25;
  sub_10001E404();
  a20 = v22;
  if (*(v22 + 408) == 1)
  {
    v26 = swift_task_alloc();
    *(v22 + 352) = v26;
    *v26 = v22;
    v26[1] = sub_1003470D0;
    v27 = *(v22 + 192);
    sub_100015AB0();

    return sub_100343804();
  }

  else
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v30 = *(v22 + 280);
    v31 = *(v22 + 256);
    v32 = *(v22 + 224);
    v33 = *(v22 + 232);
    v34 = type metadata accessor for Logger();
    sub_10000AF9C(v34, qword_1006A6290);
    v35 = sub_10000F6DC();
    v36(v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = sub_10000BA5C(v38);
    v40 = *(v22 + 256);
    v41 = *(v22 + 224);
    v42 = *(v22 + 232);
    if (v39)
    {
      sub_100005274();
      a10 = sub_10000681C();
      a11 = a10;
      *v23 = 136315138;
      sub_1000084F8();
      sub_10003D434(v43, 255, v44);
      sub_10000D35C();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      HIDWORD(a9) = v32;
      v47 = v46;
      v48 = *(v42 + 8);
      v49 = sub_100006B3C();
      v48(v49);
      v50 = sub_10002741C(v45, v47, &a11);

      *(v23 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v37, BYTE4(a9), "[CSDConversationCallCoordinationManager] Not adding CallCoordinator because the callee(s) has no SharePlay capable endpoint, callUUID: %s", v23, 0xCu);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v48 = *(v42 + 8);
      v51 = sub_100006B3C();
      v48(v51);
    }

    v53 = *(v22 + 320);
    v52 = *(v22 + 328);
    v54 = *(v22 + 280);
    v55 = *(v22 + 224);
    v56 = *(v22 + 192);
    sub_100008D34();
    v57 = *(v56 + 120);
    swift_isUniquelyReferenced_nonNull_native();
    a11 = *(v56 + 120);
    sub_100379BB4();
    *(v56 + 120) = a11;
    swift_endAccess();

    v58 = sub_100007624();
    v48(v58);
    sub_100009B7C((v22 + 16));
    sub_10000D470();

    sub_100009EF4();
    sub_100015AB0();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1003470D0()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 352);
  *v4 = *v1;
  v3[45] = v7;

  if (v0)
  {

    v8 = v3[36];
    v9 = v3[37];
    v10 = sub_1003477B4;
  }

  else
  {
    v8 = v3[36];
    v9 = v3[37];
    v10 = sub_1003471EC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1003471EC()
{
  v28 = *(v0 + 304);
  v29 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v25 = v2;
  v26 = v1;
  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v30 = *(v0 + 208);
  v31 = *(v0 + 360);
  v7 = *(v0 + 192);
  v27 = *(v0 + 184);
  v8 = swift_allocObject();
  *(v0 + 368) = v8;
  swift_weakInit();
  v9 = *(v5 + 16);
  v9(v2, v1, v6);
  sub_100009AB0(v0 + 16, v0 + 56);
  v10 = sub_10000BA34();
  (v9)(v10);
  sub_100009AB0(v0 + 56, v0 + 96);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 376) = v14;
  *(v14 + 16) = v8;
  v28(v14 + v11, v25, v6);
  *(v14 + v12) = v27;
  sub_10002F0C8((v0 + 56), v14 + v13);
  *(v14 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v9(v30, v26, v6);
  v15 = 1;
  sub_10000AF74(v30, 0, 1, v6);
  v16 = v27;

  v17 = v31;
  v18 = [v16 dateConnected];
  if (v18)
  {
    v19 = v18;
    v20 = *(v0 + 200);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  v21 = *(v0 + 336);
  v22 = *(v0 + 200);
  v23 = type metadata accessor for Date();
  sub_10000AF74(v22, v15, 1, v23);

  return _swift_task_switch(sub_10034742C, v21, 0);
}

uint64_t sub_10034742C()
{
  sub_10000C698();
  v1 = *(v0 + 336);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_1003A39E4(*(v0 + 328), v2, v3, &unk_1005814A0, *(v0 + 376));

  sub_1000099A4(v3, &qword_1006A3C70, &unk_10057EA80);
  sub_1000099A4(v2, &unk_1006A3DD0, &unk_10057C9D0);
  v4 = *sub_100009B14((v0 + 96), *(v0 + 120));
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v5[1] = sub_100347550;
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 264);
  v9 = *(v0 + 184);
  v10 = sub_10000795C(*(v0 + 280));

  return sub_10034A134(v10, v11, v12, v13, v14, v4, v15);
}

uint64_t sub_100347550()
{
  sub_10000F984();
  sub_100007648();
  sub_10000D68C();
  sub_100008060();
  *v2 = v0;
  v3 = v0[48];
  v4 = v0[46];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[28];
  *v2 = *v1;

  v8 = *(v6 + 8);
  v0[49] = v8;
  v0[50] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  sub_100009B7C(v0 + 12);
  sub_100008DAC();
  v10 = *(v9 + 296);
  v11 = v0[36];
  sub_10001AB70();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1003476E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v12 = *(v10 + 392);
  v11 = *(v10 + 400);
  v13 = *(v10 + 376);
  v14 = *(v10 + 360);
  v15 = *(v10 + 320);
  v16 = *(v10 + 280);
  v17 = *(v10 + 224);

  v18 = sub_100007624();
  v12(v18);
  sub_100009B7C((v10 + 16));
  sub_10000D470();

  sub_100009EF4();
  sub_10001AB70();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1003477B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v11 = *(v10 + 320);
  v12 = *(v10 + 280);
  v13 = *(v10 + 224);
  v14 = *(v10 + 232);

  v15 = *(v14 + 8);
  v16 = sub_100005ED0();
  v17(v16);
  sub_100009B7C((v10 + 16));
  sub_10000D470();

  sub_100009EF4();
  sub_10001AB70();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_100347878(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = *sub_100009B14(a6, a6[3]);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100035FE4;

  return sub_10034A134(a1, a2 & 0x1FF, a3, a4, a5, v14, a7);
}

uint64_t sub_100347960()
{
  sub_100006810();
  *(v1 + 345) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v0;
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  *(v1 + 104) = sub_100005E9C();
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v7);
  v9 = *(v8 + 64);
  *(v1 + 112) = sub_100005E9C();
  v10 = type metadata accessor for UUID();
  *(v1 + 120) = v10;
  sub_100005EB4(v10);
  *(v1 + 128) = v11;
  *(v1 + 136) = *(v12 + 64);
  *(v1 + 144) = sub_100015418();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  *(v1 + 224) = sub_10003D434(v13, v14, v15);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 232) = v16;
  *(v1 + 240) = v17;
  v18 = sub_100286804();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100347B18()
{
  v153 = v0;
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = [*(v0 + 88) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  v5 = sub_10000EA40();
  if (v8)
  {
    __break(1u);
    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v146 = *(*(v0 + 128) + 32);
    v146(*(v0 + 216), *(v0 + 112), *(v0 + 120));
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8();
    }

    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = type metadata accessor for Logger();
    v14 = sub_10000AF9C(v13, qword_1006A6290);
    *(v0 + 248) = v14;
    v15 = *(v11 + 16);
    *(v0 + 256) = v15;
    *(v0 + 264) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v10, v9, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 208);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    if (v18)
    {
      v147 = v17;
      v22 = *(v0 + 345);
      v1 = sub_100007C08();
      v152 = sub_100007630();
      *v1 = 136315394;
      *(v0 + 344) = v22;
      v23 = String.init<A>(reflecting:)();
      v149 = v15;
      v25 = sub_10002741C(v23, v24, &v152);

      *(v1 + 4) = v25;
      *(v1 + 12) = 2080;
      sub_1000084F8();
      sub_10003D434(v26, 255, v27);
      v28 = v14;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v20 + 8);
      v33 = sub_10034B570();
      v32(v33);
      v34 = v29;
      v14 = v28;
      sub_10002741C(v34, v31, &v152);
      sub_10000771C();
      v15 = v149;

      *(v1 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v16, v147, "[CSDConversationCallCoordinationManager] removeCallCoordinator(), reason: %s, callUUID: %s", v1, 0x16u);
      swift_arrayDestroy();
      sub_100007CBC();
      sub_100005F64();
    }

    else
    {

      v32 = *(v20 + 8);
      v35 = sub_10034B570();
      v32(v35);
    }

    *(v0 + 272) = v32;
    v36 = *(v0 + 216);
    v37 = *(v0 + 96);
    sub_100005298();
    v38 = *(v37 + 136);

    v39 = sub_10000BA34();
    v41 = sub_10004A1E8(v39, v40);

    if (v41)
    {
      v148 = v32;
      v42 = *(v0 + 216);
      v43 = *(v0 + 96);
      sub_100005298();
      v44 = *(v43 + 128);

      sub_10000BA34();
      sub_100050618();
      LOBYTE(v42) = v45;

      v46 = *(v0 + 216);
      v47 = *(v0 + 120);
      if (v42)
      {
        v15(*(v0 + 200), v46, v47);
        v48 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 200);
        v32 = *(v0 + 120);
        v52 = *(v0 + 128);
        if (v50)
        {
          sub_100005274();
          v53 = sub_100021F34();
          sub_10034B564(v53);
          *v14 = 136315138;
          sub_1000084F8();
          sub_10003D434(v54, 255, v55);
          v56 = v15;
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v59 = v58;
          v60 = sub_10001C9D0();
          v32(v60);
          v61 = v57;
          v15 = v56;
          sub_10002741C(v61, v59, &v152);
          sub_10000667C();

          *(v14 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v48, v1, "[CSDConversationCallCoordinationManager] CallCoordinator already removing, callUUID: %s", v14, 0xCu);
          sub_10000E764();
          sub_100005F40();
        }

        else
        {

          v76 = sub_10001C9D0();
          v32(v76);
        }
      }

      else
      {
        v145 = v41;
        v150 = v15;
        v15(*(v0 + 192), v46, v47);
        v62 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 192);
        v67 = *(v0 + 120);
        v66 = *(v0 + 128);
        if (v64)
        {
          sub_100005274();
          v68 = sub_100021F34();
          v152 = v68;
          *v14 = 136315138;
          sub_1000084F8();
          sub_10003D434(v69, 255, v70);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v74 = sub_10000C444();
          v75(v74);
          sub_10002741C(v71, v73, &v152);
          sub_10000771C();

          *(v14 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v62, v1, "[CSDConversationCallCoordinationManager] Scheduling CallCoordinator tear down for callUUID: %s", v14, 0xCu);
          sub_100009B7C(v68);
          sub_100005F40();
          sub_1000079DC();
        }

        else
        {

          v77 = sub_10000C444();
          v78(v77);
        }

        v79 = *(v0 + 216);
        v80 = *(v0 + 184);
        v140 = *(v0 + 128);
        v141 = *(v0 + 136);
        v81 = *(v0 + 120);
        v83 = *(v0 + 96);
        v82 = *(v0 + 104);
        v142 = *(v0 + 345);
        v84 = *(v0 + 88);
        v143 = v84;
        v144 = *(v0 + 224);
        v15 = v150;
        v150(*(v0 + 176), v79, v81);
        sub_100008D34();
        sub_10039653C();
        v32 = v148;
        (v148)(v80, v81);
        swift_endAccess();
        v85 = type metadata accessor for TaskPriority();
        sub_10000AF74(v82, 1, 1, v85);
        v150(v80, v79, v81);
        v86 = (*(v140 + 80) + 56) & ~*(v140 + 80);
        v87 = swift_allocObject();
        *(v87 + 16) = v83;
        *(v87 + 24) = v144;
        *(v87 + 32) = v145;
        *(v87 + 40) = v142;
        *(v87 + 48) = v83;
        v146(v87 + v86, v80, v81);
        *(v87 + ((v141 + v86 + 7) & 0xFFFFFFFFFFFFFFF8)) = v143;
        swift_retain_n();
        v88 = v143;
        sub_1002762F0();
      }
    }

    switch(*(v0 + 345))
    {
      case 1:
        v116 = *(v0 + 88);
        v117 = sub_1003D0EC4();
        *(v0 + 296) = v117;
        if (v117)
        {
          v118 = v117;
          v119 = [*(v0 + 88) handle];
          *(v0 + 304) = v119;
          if (v119)
          {
            v6 = *(*(v0 + 96) + 48);
            *(v0 + 312) = v6;
            v113 = sub_100348850;
            goto LABEL_30;
          }
        }

        v15(*(v0 + 160), *(v0 + 216), *(v0 + 120));
        v89 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10003DBD0();
        v125 = os_log_type_enabled(v89, v124);
        v92 = *(v0 + 216);
        v122 = *(v0 + 160);
        v95 = *(v0 + 120);
        v126 = *(v0 + 128);
        if (!v125)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 2:
      case 4:
        v15(*(v0 + 144), *(v0 + 216), *(v0 + 120));
        v89 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_10003DBD0();
        v91 = os_log_type_enabled(v89, v90);
        v92 = *(v0 + 216);
        v93 = *(v0 + 144);
        v95 = *(v0 + 120);
        v94 = *(v0 + 128);
        if (!v91)
        {
          goto LABEL_36;
        }

        v96 = v32;
        v97 = *(v0 + 345);
        v151 = *(v0 + 216);
        v98 = sub_100007C08();
        v99 = sub_100007630();
        sub_10034B564(v99);
        *v98 = 136315394;
        v100 = sub_100343480(v97);
        v102 = sub_10002741C(v100, v101, &v152);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        sub_1000084F8();
        sub_10003D434(v103, 255, v104);
        v105 = sub_100051630();
        v106 = sub_100008B94();
        v96(v106);
        sub_10002741C(v105, v102, &v152);
        sub_10000771C();

        *(v98 + 14) = v93;
        sub_10000FA74();
        _os_log_impl(v107, v108, v109, v110, v111, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_1000079DC();

        (v96)(v151, v95);
        goto LABEL_37;
      case 3:
        v112 = [*(v0 + 88) handle];
        *(v0 + 280) = v112;
        if (v112)
        {
          v6 = *(*(v0 + 96) + 48);
          *(v0 + 288) = v6;
          v113 = sub_10034870C;
          goto LABEL_30;
        }

        v15(*(v0 + 168), *(v0 + 216), *(v0 + 120));
        v89 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10003DBD0();
        v121 = os_log_type_enabled(v89, v120);
        v92 = *(v0 + 216);
        v122 = *(v0 + 168);
        v95 = *(v0 + 120);
        v123 = *(v0 + 128);
        if (v121)
        {
LABEL_35:
          sub_100005274();
          v127 = sub_100021F34();
          sub_10034B564(v127);
          *v92 = 136315138;
          sub_1000084F8();
          sub_10003D434(v128, 255, v129);
          v130 = sub_100051630();
          v131 = sub_100008B94();
          v32(v131);
          sub_10002741C(v130, v15, &v152);
          sub_10000771C();

          *(v92 + 4) = v122;
          sub_10000FA74();
          _os_log_impl(v132, v133, v134, v135, v136, 0xCu);
          sub_10000E764();
          sub_1000079DC();

          (v32)(v92, v95);
        }

        else
        {
LABEL_36:

          v137 = sub_10000BA34();
          v32(v137);
          (v32)(v92, v95);
        }

        goto LABEL_37;
      default:
        if ([*(v0 + 88) isHostedOnCurrentDevice])
        {
          v114 = *(v0 + 96);
          if ((*(v114 + 80) & 1) == 0)
          {
            v6 = *(v114 + 48);
            *(v0 + 320) = v6;
            v113 = sub_10034899C;
LABEL_30:
            v5 = v113;
            v7 = 0;

            return _swift_task_switch(v5, v6, v7);
          }
        }

        v115 = *(v0 + 128) + 8;
        (v32)(*(v0 + 216), *(v0 + 120));
LABEL_37:
        sub_100010394();

        sub_100009EF4();

        result = v138();
        break;
    }
  }

  return result;
}

uint64_t sub_10034870C()
{
  sub_100006810();
  v1 = *(v0 + 288);
  sub_10004AE3C(*(v0 + 280), *(v0 + 216));
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return _swift_task_switch(sub_100348770, v2, v3);
}

uint64_t sub_100348770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 272);
  v16 = *(v14 + 216);
  v17 = *(v14 + 120);
  v18 = *(v14 + 128);

  v19 = sub_100005ED0();
  v15(v19);
  sub_100010394();
  v31 = v21;
  v32 = v20;

  sub_100009EF4();
  sub_100015AB0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_100348850()
{
  sub_100006810();
  v1 = *(v0 + 312);
  sub_1003A1CFC(*(v0 + 304), *(v0 + 296));
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return _swift_task_switch(sub_1003488B4, v2, v3);
}

uint64_t sub_1003488B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 296);
  v16 = *(v14 + 272);
  v17 = *(v14 + 216);
  v18 = *(v14 + 120);
  v19 = *(v14 + 128);

  v20 = sub_100005ED0();
  v16(v20);
  sub_100010394();
  v32 = v22;
  v33 = v21;

  sub_100009EF4();
  sub_100015AB0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_10034899C()
{
  sub_100006810();
  v1 = v0[40];
  sub_1003A1B00(0);
  v2 = v0[29];
  v3 = v0[30];

  return _swift_task_switch(sub_100348A00, v2, v3);
}

uint64_t sub_100348A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 88);
  v16 = sub_1003D0EC4();
  *(v14 + 328) = v16;
  if (v16)
  {
    v17 = v16;
    v18 = [*(v14 + 88) handle];
    *(v14 + 336) = v18;
    if (v18)
    {
      v19 = *(v14 + 320);
      sub_100015AB0();

      return _swift_task_switch(v20, v21, v22);
    }
  }

  v24 = *(v14 + 264);
  v25 = *(v14 + 248);
  (*(v14 + 256))(*(v14 + 152), *(v14 + 216), *(v14 + 120));
  v26 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10003DBD0();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v14 + 272);
  v30 = *(v14 + 216);
  v31 = *(v14 + 152);
  v33 = *(v14 + 120);
  v32 = *(v14 + 128);
  if (v28)
  {
    sub_100005274();
    a11 = sub_100021F34();
    *v29 = 136315138;
    sub_1000084F8();
    sub_10003D434(v34, 255, v35);
    sub_100051630();
    v36 = sub_100008B94();
    v37 = (v29)(v36);
    sub_10003EB64(v37, v38);
    sub_10000771C();

    *(v29 + 4) = v31;
    sub_10000FA74();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    sub_100009B7C(a11);
    sub_100005F40();
    sub_1000079DC();
  }

  else
  {

    v44 = sub_10000BA34();
    (v29)(v44);
  }

  (v29)(v30, v33);
  sub_100010394();
  v56 = v46;
  v57 = v45;

  sub_100009EF4();
  sub_100015AB0();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, v56, v57, a11, a12, a13, a14);
}

uint64_t sub_100348C64()
{
  sub_100006810();
  v1 = *(v0 + 320);
  sub_1003A1CFC(*(v0 + 336), *(v0 + 328));
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return _swift_task_switch(sub_100348CC8, v2, v3);
}

uint64_t sub_100348CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 328);
  v16 = *(v14 + 272);
  v17 = *(v14 + 216);
  v18 = *(v14 + 120);
  v19 = *(v14 + 128);

  v20 = sub_100005ED0();
  v16(v20);
  sub_100010394();
  v32 = v22;
  v33 = v21;

  sub_100009EF4();
  sub_100015AB0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_100348DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[8] = a6;
  v9 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_100348EE4;

  return sub_10027FF94();
}

uint64_t sub_100348EE4()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 120);
  v3 = *(v1 + 64);
  v4 = *v0;
  sub_100008060();
  *v5 = v4;

  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v6, v7, v8);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v9 = sub_10000FC24();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100349014()
{
  v36 = v0;
  v4 = v0[8];
  v3 = v0[9];
  sub_100008D34();
  sub_1003841E4(v3);
  swift_endAccess();

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8();
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[9];
  v9 = type metadata accessor for Logger();
  v10 = sub_10000AF9C(v9, qword_1006A6290);
  (*(v6 + 16))(v5, v8, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = sub_10000BA5C(v12);
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  if (v13)
  {
    sub_100005274();
    v17 = sub_10000681C();
    v35 = v17;
    *v10 = 136315138;
    sub_1000084F8();
    sub_10003D434(v18, 255, v19);
    sub_10000D35C();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000C130();
    v20 = *(v15 + 8);
    v21 = sub_100006B3C();
    v22(v21);
    sub_10002741C(v1, v2, &v35);
    sub_10000C3CC();
    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v8, "[CSDConversationCallCoordinationManager] Removed CallCoordinator for callUUID: %s", v10, 0xCu);
    sub_100009B7C(v17);
    sub_100005F64();
    sub_100006868();
  }

  else
  {

    v23 = *(v15 + 8);
    v24 = sub_100006B3C();
    v25(v24);
  }

  v27 = v0[10];
  v26 = v0[11];
  v29 = v0[8];
  v28 = v0[9];
  sub_100008D34();
  sub_100429380();
  sub_1000099A4(v26, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  [v27 setConversationCoordinator:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong activitySessionContainersChangedOnChildProvider:v0[8]];
    swift_unknownObjectRelease();
  }

  v31 = v0[14];
  v32 = v0[11];

  sub_100009EF4();

  return v33();
}

uint64_t ConversationCallCoordinationManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);
  swift_unknownObjectRelease();
  sub_100060500(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = *(v0 + 136);

  return v0;
}

uint64_t ConversationCallCoordinationManager.__deallocating_deinit()
{
  ConversationCallCoordinationManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100349390(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003493A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003493FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationCallCoordinationManager.TrackedCallState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 8))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for ConversationCallCoordinationManager.TrackedCallState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100349504(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v1 + 40);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100035FE0;

  return sub_100348DB0(a1, v9, v10, v11, v14, v12, v1 + v7, v13);
}

uint64_t sub_100349648()
{
  sub_100007648();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  v12 = *(v0 + v9);
  v13 = *(v0 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  v15 = sub_100008A48(v14);
  *v15 = v16;
  v15[1] = sub_100035FE4;

  return sub_100347878(v4, v2 & 0x1FF, v11, v0 + v7, v12, (v0 + v10), v13);
}

uint64_t sub_100349788(uint64_t result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    v3 = a2;
    return sub_100005ED0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003497C0(id result)
{
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_1003497D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003497C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100349800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[26] = a1;
  v6 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[30] = v7;
  v8 = *(v7 - 8);
  v4[31] = v8;
  v9 = *(v8 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v10 = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v4[34] = v10;
  v4[5] = v10;
  v4[6] = &off_10062D498;
  v4[2] = a2;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10003D434(&unk_1006A62D0, v11, type metadata accessor for ConversationCallCoordinationManager);

  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100349990, v13, v12);
}

uint64_t sub_100349990()
{
  v113 = v0;
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = [*(v0 + 208) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  result = sub_10000EA40();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 224);
    (*(*(v0 + 248) + 32))(v8, *(v0 + 232), *(v0 + 240));
    sub_100005298();
    v10 = *(v9 + 136);

    v11 = sub_100005ED0();
    sub_10004A1E8(v11, v12);
    sub_10000667C();

    if (v8)
    {

      if (qword_1006A0AA8 != -1)
      {
        sub_10000A1D8();
      }

      v13 = *(v0 + 208);
      v14 = type metadata accessor for Logger();
      sub_1000075F0(v14, qword_1006A6290);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 264);
      v21 = *(v0 + 240);
      v20 = *(v0 + 248);
      if (v18)
      {
        v22 = *(v0 + 208);
        v110 = *(v0 + 264);
        v23 = sub_100005274();
        v24 = swift_slowAlloc();
        v112 = v24;
        *v23 = 136315138;
        v25 = [v22 callUUID];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10002F75C();

        v26 = sub_10002741C(&selRef_beginMatchingExtensions, v2, &v112);

        *(v23 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "[CSDConversationCallCoordinationManager] addCallCoordinator: Coordinator already exists for existing call with callUUID: %s", v23, 0xCu);
        sub_100009B7C(v24);
        sub_1000079DC();
        sub_100005F64();

        (*(v20 + 8))(v110, v21);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }
    }

    else
    {
      v27 = *(v0 + 264);
      v28 = *(v0 + 224);
      sub_100005298();
      v29 = *(v28 + 112);

      v30 = sub_1000357C8(v27, v29);

      if ((v30 & 0xFF00000000) == 0x200000000)
      {
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8();
        }

        v31 = *(v0 + 256);
        v32 = *(v0 + 264);
        v33 = *(v0 + 240);
        v34 = *(v0 + 248);
        v35 = type metadata accessor for Logger();
        sub_10000AF9C(v35, qword_1006A6290);
        v36 = sub_10000F6DC();
        v37(v36);
        v38 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v0 + 256);
        v42 = *(v0 + 264);
        v44 = *(v0 + 240);
        v43 = *(v0 + 248);
        if (v40)
        {
          sub_100005274();
          v112 = sub_100021F34();
          *v42 = 136315138;
          sub_1000084F8();
          sub_10003D434(v45, 255, v46);
          sub_100051630();
          sub_10002F75C();
          v47 = *(v43 + 8);
          v48 = sub_10000BA34();
          v47(v48);
          sub_10002741C(&selRef_beginMatchingExtensions, v2, &v112);
          sub_10000771C();

          *(v42 + 4) = v41;
          sub_10000FA74();
          _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
          sub_10000E764();
          sub_1000079DC();

          (v47)(v42, v44);
        }

        else
        {

          v103 = *(v43 + 8);
          v104 = sub_10000BA34();
          v103(v104);
          (v103)(v42, v44);
        }
      }

      else if ((v30 & 0x100000000) == 0 || v30 == 6)
      {
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8();
        }

        v92 = type metadata accessor for Logger();
        sub_1000075F0(v92, qword_1006A6290);
        v93 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 264);
        v97 = *(v0 + 240);
        v98 = *(v0 + 248);
        if (v95)
        {
          sub_100005274();
          v99 = sub_100021F34();
          v112 = v99;
          *v1 = 136315138;
          v100 = sub_100343520(v30 & 0x1010101FFFFFFFFLL);
          v102 = sub_10002741C(v100, v101, &v112);

          *(v1 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v93, v9, "[CSDConversationCallCoordinationManager] addCallCoordinator: Ignoring since call changed state: %s", v1, 0xCu);
          sub_100009B7C(v99);
          sub_100005F40();
          sub_1000079DC();
        }

        (*(v98 + 8))(v96, v97);
      }

      else
      {
        v58 = *(v0 + 272);
        v109 = *(v0 + 264);
        v111 = *(v0 + 224);
        v108 = *(v0 + 216);
        v106 = *(v0 + 208);
        v59 = *(v111 + 32);
        v60 = *(v111 + 40);
        sub_100009AB0(v0 + 16, v0 + 56);
        v107 = *(v111 + 80);
        v61 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());
        v105 = v59;
        swift_unknownObjectRetain();
        v62 = [v61 init];
        v63 = *(v0 + 80);
        v64 = sub_10001BDB8(v0 + 56, v63);
        sub_1000083C0();
        v66 = v65;
        v68 = *(v67 + 64);
        v69 = sub_100005E9C();
        (*(v66 + 16))(v69, v64, v63);
        v70 = *v69;
        *(v0 + 120) = v58;
        *(v0 + 128) = &off_10062D498;
        *(v0 + 96) = v70;
        v71 = type metadata accessor for ConversationCallCoordinator(0);
        v72 = *(v71 + 48);
        v73 = *(v71 + 52);
        v74 = swift_allocObject();
        v75 = sub_10001BDB8(v0 + 96, v58);
        sub_1000083C0();
        v77 = v76;
        v79 = *(v78 + 64);
        v80 = sub_100005E9C();
        (*(v77 + 16))(v80, v75, v58);
        v81 = *v80;
        v82 = v106;
        v83 = sub_10034AB38(v105, v82, v60, v81, v108, v107, v62, v74);
        sub_100009B7C((v0 + 96));

        sub_100009B7C((v0 + 56));

        sub_100008D34();

        v84 = *(v9 + 136);
        swift_isUniquelyReferenced_nonNull_native();
        v112 = *(v9 + 136);
        sub_100379A84();
        *(v9 + 136) = v112;
        swift_endAccess();
        [v82 setConversationCoordinator:v83];
        Strong = swift_unknownObjectWeakLoadStrong();
        v86 = *(v0 + 264);
        v87 = *(v0 + 240);
        v88 = *(v0 + 248);
        if (Strong)
        {
          [Strong activitySessionContainersChangedOnChildProvider:*(v0 + 224)];
          swift_unknownObjectRelease();
        }

        v89 = *(v88 + 8);
        v90 = sub_100005ED0();
        v91(v90);
      }
    }

    v54 = *(v0 + 256);
    v55 = *(v0 + 264);
    v56 = *(v0 + 232);
    sub_100009B7C((v0 + 16));

    sub_100009EF4();

    return v57();
  }

  return result;
}

uint64_t sub_10034A134(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a5;
  *(v7 + 136) = a7;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 216) = a2;
  *(v7 + 104) = a1;
  v9 = type metadata accessor for UUID();
  *(v7 + 144) = v9;
  v10 = *(v9 - 8);
  *(v7 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 40) = type metadata accessor for SharePlayTelephonyIdentityProvider();
  *(v7 + 48) = &off_10062D498;
  *(v7 + 16) = a6;

  return _swift_task_switch(sub_10034A228, 0, 0);
}

uint64_t sub_10034A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v23;
  a22 = v24;
  sub_10001E404();
  a20 = v22;
  v25 = *(v22 + 112);
  sub_100005298();
  Strong = swift_weakLoadStrong();
  *(v22 + 168) = Strong;
  if (!Strong)
  {
    goto LABEL_8;
  }

  v27 = *(v22 + 120);
  v28 = *(v22 + 104);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_8:
    sub_10000BBA4();
    sub_100009EF4();
    sub_100015AB0();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
  }

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8();
  }

  v30 = *(v22 + 152);
  v29 = *(v22 + 160);
  v31 = *(v22 + 144);
  v32 = *(v22 + 120);
  v33 = type metadata accessor for Logger();
  v34 = sub_10000AF9C(v33, qword_1006A6290);
  v35 = *(v30 + 16);
  v36 = sub_10000BA34();
  v37(v36);
  v38 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10003DBD0();
  v40 = os_log_type_enabled(v38, v39);
  v42 = *(v22 + 152);
  v41 = *(v22 + 160);
  v43 = *(v22 + 144);
  if (v40)
  {
    v44 = *(v22 + 216);
    v45 = sub_100007C08();
    a11 = sub_100007630();
    *v45 = 136315394;
    v46 = sub_1003A4C0C(v44 & 0x1FF);
    v48 = sub_10002741C(v46, v47, &a11);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    sub_1000084F8();
    sub_10003D434(v49, 255, v50);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10002F75C();
    v51 = *(v42 + 8);
    v52 = sub_10034B570();
    v54 = v53(v52);
    sub_10003EB64(v54, v55);
    sub_10000771C();

    *(v45 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v38, v34, "[CSDConversationCallCoordinationManager] Availability response: '%s', callUUID: %s", v45, 0x16u);
    swift_arrayDestroy();
    sub_100007CBC();
    sub_100006868();
  }

  else
  {

    v65 = *(v42 + 8);
    v66 = sub_10034B570();
    v67(v66);
  }

  if (*(v22 + 216))
  {
    if (*(v22 + 216) == 1)
    {
      v68 = *sub_100009B14((v22 + 16), *(v22 + 40));
      v69 = swift_task_alloc();
      *(v22 + 176) = v69;
      *v69 = v22;
      v69[1] = sub_10034A5AC;
      v70 = *(v22 + 136);
      sub_10000795C(*(v22 + 128));
      sub_100015AB0();

      return sub_100349800(v71, v72, v73, v74);
    }

    v77 = swift_task_alloc();
    *(v22 + 200) = v77;
    *v77 = v22;
    v77[1] = sub_10034A914;
    sub_10000795C(*(v22 + 128));
  }

  else
  {
    v76 = swift_task_alloc();
    *(v22 + 208) = v76;
    *v76 = v22;
    v76[1] = sub_10034AA54;
    sub_10000795C(*(v22 + 128));
  }

  sub_100015AB0();

  return sub_100347960();
}

uint64_t sub_10034A5AC()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;
  sub_100008060();
  *v5 = v4;

  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v6, v7, v8);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v9 = sub_10000FC24();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10034A6DC()
{
  sub_100006810();
  v1 = *(v0 + 168);
  sub_100005298();
  *(v0 + 184) = *(v1 + 136);

  return _swift_task_switch(sub_10034A758, 0, 0);
}

uint64_t sub_10034A758()
{
  sub_100006810();
  v1 = sub_10004A1E8(v0[15], v0[23]);
  v0[24] = v1;

  if (v1)
  {
    type metadata accessor for ConversationCallCoordinator(0);
    sub_100018224();
    sub_10003D434(v2, 255, v3);
    sub_10034B558();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100006B5C();
    v4 = sub_10000FC24();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    v7 = v0[21];

    sub_10000BBA4();
    sub_100009EF4();

    return v8();
  }
}

uint64_t sub_10034A848()
{
  sub_100006810();
  v1 = *(v0 + 192);
  sub_10027FAB4(HIBYTE(*(v0 + 216)) & 1);
  v2 = sub_10003A5A4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10034A8AC()
{
  sub_100006810();
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  sub_10000BBA4();
  sub_100009EF4();

  return v3();
}

uint64_t sub_10034A914()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 200);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  v5 = sub_10003A5A4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10034A9F8()
{
  sub_100006810();
  v1 = *(v0 + 168);

  sub_10000BBA4();
  sub_100009EF4();

  return v2();
}

uint64_t sub_10034AA54()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 208);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  v5 = sub_10003A5A4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10034AB38(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7, void *a8)
{
  v53 = a5;
  v54 = a7;
  LODWORD(v52) = a6;
  v56 = a3;
  v57 = a2;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for UUID();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v61[4] = &off_10062D498;
  v61[0] = a4;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator__tuConversation) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) = 0;
  v21 = OBJC_IVAR___CSDConversationCallCoordinator__conversationStream;
  sub_10026D814(&unk_1006A62E0, &unk_10057A3F0);
  sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_1002F93D0(&qword_1006A62F0, &unk_1006A0C80, TUConversation_ptr);
  *(a8 + v21) = AsyncBroadcastStream.__allocating_init<>(_:)();
  v22 = OBJC_IVAR___CSDConversationCallCoordinator__conversationStateStream;
  sub_10026D814(&unk_1006A0C90, &unk_1005814C0);
  type metadata accessor for TUConversationState(0);
  sub_10003D434(&unk_1006A6300, 255, type metadata accessor for TUConversationState);
  *(a8 + v22) = AsyncBroadcastStream.__allocating_init<>(_:)();
  v23 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  v24 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  sub_10000AF74(a8 + v23, 1, 1, v24);
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_queue) = a1;
  v25 = v57;
  a8[2] = v57;
  v26 = a1;
  v27 = v25;
  v28 = [v27 callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v57 = v16;
  result = sub_100015468(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v55;
    v31 = v57;
    (*(v55 + 32))(v20, v15, v57);
    (*(v30 + 16))(a8 + OBJC_IVAR___CSDConversationCallCoordinator_callUUID, v20, v31);
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager) = v56;
    sub_100009AB0(v61, a8 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider);
    v33 = v53;
    v32 = v54;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider) = v53;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_relaySupportEnabled) = v52 & 1;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_serverBag) = v32;
    sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    swift_unknownObjectRetain();
    v53 = v33;
    v34 = v32;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_placeholderContainer) = sub_1002FFA88(v20, 10);
    v35 = type metadata accessor for ConversationCallCoordinator(0);
    v60.receiver = a8;
    v60.super_class = v35;
    v36 = objc_msgSendSuper2(&v60, "init");
    v37 = *&v36[OBJC_IVAR___CSDConversationCallCoordinator_conversationManager];
    v38 = v36;
    v54 = v26;
    [v37 addDelegate:v38 queue:v26];
    v39 = [objc_allocWithZone(CXCallUpdate) init];
    [v39 setIsSharePlayCapable:1];
    [v27 updateWithOverrideCallProperties:v39];
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000AF9C(v40, qword_1006A24E0);
    v41 = v27;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v41;
      v59 = v45;
      *v44 = 136315138;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v51 = v34;
      v52 = v20;
      v46 = v30;
      v47 = v41;
      v48 = String.init<A>(reflecting:)();
      v50 = sub_10002741C(v48, v49, &v59);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "[CSDConversationCallCoordinator] Initialized for call: %s", v44, 0xCu);
      sub_100009B7C(v45);

      swift_unknownObjectRelease();
      (*(v46 + 8))(v52, v57);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v30 + 8))(v20, v57);
    }

    sub_100009B7C(v61);
    return v38;
  }

  return result;
}

uint64_t sub_10034B1A8(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_10034B1B8(a1, a2);
  }

  return a1;
}

uint64_t sub_10034B1B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10034B1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034B244()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_100035FE0;
  v8 = sub_100007624();

  return v9(v8);
}

unint64_t sub_10034B2F8()
{
  result = qword_1006AB120;
  if (!qword_1006AB120)
  {
    sub_10026DCB4(&qword_1006A6350, &qword_100586EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB120);
  }

  return result;
}

uint64_t sub_10034B35C()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_100035FE0;

  return sub_100344BC4(v1, v2);
}

_BYTE *storeEnumTagSinglePayload for ConversationCallCoordinationManager.CoordinatorRemovedReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10034B4E0()
{
  result = qword_1006A6358;
  if (!qword_1006A6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6358);
  }

  return result;
}

uint64_t sub_10034B564(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 80) = result;
  return result;
}

uint64_t sub_10034B57C()
{
  v2 = *(v0 + 136);
}

void sub_10034B594()
{
}

uint64_t sub_10034B5B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10034B5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10034B658()
{
  if ((*(v0 + 64) & 1) != 0 || (v2 = *(v0 + 56), v32[0] = *(v0 + 40), (v3 = *(&v32[0] + 1)) == 0))
  {
    static os_log_type_t.error.getter();
    v1 = sub_10003D4D0();
LABEL_11:
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v4 = *(v0 + 32);
  if (!v4)
  {
LABEL_10:
    static os_log_type_t.error.getter();
    v1 = sub_10003D4D0();
    goto LABEL_11;
  }

  v5 = *&v32[0];
  v6 = v4;
  sub_10034BA04(v32, v31);
  v7 = TUCopyIDSFromIDForHandle();
  if (!v7)
  {
    sub_10034BA74(v32);

    goto LABEL_10;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = String._bridgeToObjectiveC()();
  v15 = TUHandleForIDSCanonicalAddress();

  v16 = TUCopyIDSFromIDForHandle();
  if (!v16)
  {
    sub_10034BA74(v32);

    static os_log_type_t.error.getter();
    v28 = sub_10003D4D0();
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v18;
  v30 = v17;

  sub_10026D814(&qword_1006A4458, &unk_100588070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005800F0;
  v31[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31[1] = v20;
  sub_100008510();
  *(inited + 96) = &type metadata for Double;
  *(inited + 72) = v2;
  v31[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31[1] = v21;
  sub_100008510();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v5;
  *(inited + 152) = v3;
  v31[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31[1] = v22;
  sub_100008510();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v9;
  *(inited + 224) = v11;
  v31[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31[1] = v23;
  sub_100008510();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v30;
  *(inited + 296) = v29;
  v31[0] = 0xD000000000000012;
  v31[1] = 0x800000010056D530;
  sub_100008510();
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = 1;
  strcpy(v31, "message-type");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  sub_100008510();
  v25 = *(v0 + 72);
  v24 = *(v0 + 80);
  *(inited + 456) = &type metadata for String;
  *(inited + 432) = v25;
  *(inited + 440) = v24;

  v26 = Dictionary.init(dictionaryLiteral:)();

  return v26;
}

uint64_t sub_10034BA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BA74(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034BADC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_10034BAEC(void *a1)
{
  v2 = type metadata accessor for Handle.Kind();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = [a1 type];
  v12 = __chkstk_darwin(v10, v11);
  v13 = &enum case for Handle.Kind.generic(_:);
  if (v12 == 2)
  {
    v13 = &enum case for Handle.Kind.phoneNumber(_:);
  }

  if (v12 == 3)
  {
    v13 = &enum case for Handle.Kind.emailAddress(_:);
  }

  (*(v5 + 104))(&v16 - v9, *v13, v2);
  (*(v5 + 32))(&v16 - v9, &v16 - v9, v2);
  v14 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Handle.init(type:value:displayName:)();
}

id sub_10034BCA0()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = [v0 maxJunkLevel];

  return v1;
}

unint64_t sub_10034BCF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 remoteMember];
  if (!v6 || (v7 = v6, v8 = [v6 handle], v7, !v8))
  {
    v44 = sub_10022B1C8();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10057D690;
    v133 = a1;
    sub_10034CAD0();
    v46 = a1;
    v47 = String.init<A>(reflecting:)();
    v49 = v48;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_100009D88();
    *(v45 + 32) = v47;
    *(v45 + 40) = v49;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_11:

    return 4;
  }

  if ([a1 isBlocked])
  {
    v9 = [v8 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = String.count.getter();

    if (v10 < 1)
    {
      v108 = sub_10022B1C8();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_10057D690;
      v133 = a1;
      sub_10034CAD0();
      v110 = a1;
      v111 = String.init<A>(reflecting:)();
      v113 = v112;
      *(v109 + 56) = &type metadata for String;
      *(v109 + 64) = sub_100009D88();
      *(v109 + 32) = v111;
      *(v109 + 40) = v113;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      goto LABEL_11;
    }
  }

  v11 = type metadata accessor for Handle();
  v126 = &v114;
  v12 = sub_100007FEC(v11);
  v129 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  v130 = v17;
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v8;
  v128 = v18;
  v124 = v19;
  sub_10034BAEC(v19);
  v20 = type metadata accessor for CommunicationTrustScoreOptions();
  v125 = &v114;
  v21 = sub_100007FEC(v20);
  v132 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21, v25);
  sub_10000A8AC();
  v27 = v26 & 0xFFFFFFFFFFFFFFF0;
  v29 = v28 - (v26 & 0xFFFFFFFFFFFFFFF0);
  v133 = _swiftEmptyArrayStorage;
  sub_10034CB14();
  sub_10026D814(&qword_1006A6398, &unk_100581650);
  sub_10034CB60();
  v131 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = sub_10034BCA0();
  v31 = [a1 junkConfidence];
  v127 = v11;
  if (v30 < v31)
  {
    v123 = &v114;
    v33 = __chkstk_darwin(v31, v32);
    v34 = &v114 - v27;
    __chkstk_darwin(v33, v35);
    v36 = v20;
    v37 = &v114 - v27;
    static CommunicationTrustScoreOptions.junkSignal.getter();
    sub_10000A1F8();
    sub_100388BB4();
    v38 = *(v132 + 8);
    v39 = v37;
    v20 = v36;
    v38(v39, v36);
    v38(v34, v36);
    v11 = v127;
  }

  v40 = v130;
  if (a2)
  {
    v41 = a2;
    v42 = [v41 isSystemProvider];
    if (v42)
    {
    }

    else
    {
      v123 = &v114;
      __chkstk_darwin(v42, v43);
      sub_10000A8AC();
      __chkstk_darwin(v51, v52);
      v53 = v3;
      v54 = v20;
      v56 = &v114 - v55;
      static CommunicationTrustScoreOptions.ignoreCallDirectory.getter();
      sub_10000A1F8();
      sub_100388BB4();

      v57 = *(v132 + 8);
      v58 = v56;
      v20 = v54;
      v3 = v53;
      v57(v58, v20);
      v59 = sub_10000A1F8();
      (v57)(v59);
      v40 = v130;
    }
  }

  v121 = a1;
  v123 = v3;
  v60 = [*(v3 + OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_configurationProvider) isSpamFilterEnabledForFaceTime];
  if ((v60 & 1) == 0)
  {
    __chkstk_darwin(v60, v61);
    sub_10000A8AC();
    v64 = v63 - (v62 & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v65, v66);
    static CommunicationTrustScoreOptions.ignoreServerTrust.getter();
    sub_100388BB4();
    v67 = *(v132 + 8);
    v68 = sub_10000A1F8();
    v67(v68);
    (v67)(v64, v20);
    v40 = v130;
  }

  v115 = sub_10022B1C8();
  v117 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v69 = swift_allocObject();
  v116 = xmmword_10057D6A0;
  *(v69 + 16) = xmmword_10057D6A0;
  __chkstk_darwin(v69, v70);
  v71 = v20;
  v118 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = *(v129 + 16);
  v120 = v129 + 16;
  v119(&v114 - v118, v128, v11);
  v72 = String.init<A>(reflecting:)();
  v74 = v73;
  *(v69 + 56) = &type metadata for String;
  v75 = sub_100009D88();
  *(v69 + 64) = v75;
  *(v69 + 32) = v72;
  *(v69 + 40) = v74;
  __chkstk_darwin(v75, v76);
  sub_10000A8AC();
  v78 = v131;
  v79 = *(v132 + 16);
  v79(v80 - (v77 & 0xFFFFFFFFFFFFFFF0), v131, v71);
  v81 = String.init<A>(reflecting:)();
  *(v69 + 96) = &type metadata for String;
  *(v69 + 104) = v75;
  v122 = v75;
  *(v69 + 72) = v81;
  *(v69 + 80) = v82;
  static os_log_type_t.default.getter();
  v83 = v115;
  os_log(_:dso:log:type:_:)();

  v84 = *(v123 + OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_communicationTrustManager);
  sub_10034CBC4(v121);
  v85 = sub_10026D814(&qword_1006A27C0, &qword_10057D360);
  v121 = &v114;
  v86 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85 - 8, v87);
  v89 = &v114 - v88;
  v79(&v114 - v88, v78, v71);
  v123 = v71;
  sub_10000AF74(v89, 0, 1, v71);
  v90 = sub_10026D814(&qword_1006A27C8, qword_100581660);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90 - 8, v92);
  v94 = &v114 - v93;
  v95 = enum case for Service.FaceTime(_:);
  v96 = type metadata accessor for Service();
  (*(*(v96 - 8) + 104))(v94, v95, v96);
  v97 = v96;
  v98 = v128;
  sub_10000AF74(v94, 0, 1, v97);
  v99 = CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)();

  sub_1000099A4(v94, &qword_1006A27C8, qword_100581660);
  sub_1000099A4(v89, &qword_1006A27C0, &qword_10057D360);
  v100 = sub_10022B1C8();
  v101 = swift_allocObject();
  *(v101 + 16) = v116;
  v133 = v99;
  v102 = String.init<A>(reflecting:)();
  v103 = v122;
  *(v101 + 56) = &type metadata for String;
  *(v101 + 64) = v103;
  *(v101 + 32) = v102;
  *(v101 + 40) = v104;
  __chkstk_darwin(v102, v104);
  v105 = v127;
  v119(&v114 - v118, v98, v127);
  v106 = String.init<A>(reflecting:)();
  *(v101 + 96) = &type metadata for String;
  *(v101 + 104) = v103;
  *(v101 + 72) = v106;
  *(v101 + 80) = v107;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  (*(v132 + 8))(v131, v123);
  (*(v129 + 8))(v98, v105);
  return sub_10034BADC(v99);
}