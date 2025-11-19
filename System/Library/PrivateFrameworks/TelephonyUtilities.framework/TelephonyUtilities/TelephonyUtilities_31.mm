uint64_t sub_10045A544()
{
  sub_10026D814(&qword_1006AC208, &qword_100588180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrService;
  v3 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_service + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_service);
  *(inited + 88) = v3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v4 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account + 8);
  *(inited + 120) = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  *(inited + 128) = v4;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  v5 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_accessGroup);
  v6 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_accessGroup + 8);
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v5;
  *(inited + 168) = v6;
  sub_10045AA8C();
  v7 = kSecClass;
  v8 = kSecClassGenericPassword;
  v9 = kSecAttrService;

  v10 = kSecAttrAccount;

  v11 = kSecAttrAccessGroup;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10045A8A0()
{
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v7 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  v8 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account + 8);

  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D746E756F636361;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  return v9;
}

unint64_t sub_10045AA8C()
{
  result = qword_1006A1D68;
  if (!qword_1006A1D68)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A1D68);
  }

  return result;
}

unint64_t sub_10045AAE4()
{
  result = qword_1006AC1F8;
  if (!qword_1006AC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC1F8);
  }

  return result;
}

unint64_t sub_10045AB38()
{
  result = qword_1006A9E70;
  if (!qword_1006A9E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A9E70);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for KeychainPasswordItem.KeychainError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for KeychainPasswordItem.KeychainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeychainPasswordItem.KeychainError(uint64_t result, int a2, int a3)
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10045ABDC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045ABF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

NSString sub_10045AC28()
{
  result = String._bridgeToObjectiveC()();
  static HandoffAudioController.routeIdentifierChangedNotification = result;
  return result;
}

uint64_t *HandoffAudioController.routeIdentifierChangedNotification.unsafeMutableAddressor()
{
  if (qword_1006A0C40 != -1)
  {
    sub_1000153C4();
  }

  return &static HandoffAudioController.routeIdentifierChangedNotification;
}

NSString sub_10045ACEC()
{
  result = String._bridgeToObjectiveC()();
  static HandoffAudioController.continueHandoffAudioRouteNotification = result;
  return result;
}

uint64_t *HandoffAudioController.continueHandoffAudioRouteNotification.unsafeMutableAddressor()
{
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  return &static HandoffAudioController.continueHandoffAudioRouteNotification;
}

uint64_t HandoffAudioController.init()()
{
  swift_getObjectType();
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 queue];

  v3 = [v0 sharedInstance];
  v4 = [v3 conversationManager];

  HandoffAudioController.__allocating_init(callCenterQueue:audioDeviceController:routeController:conversationManager:)();
  v6 = v5;
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_10045AEE0(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

void HandoffAudioController.__allocating_init(callCenterQueue:audioDeviceController:routeController:conversationManager:)()
{
  sub_100005EF4();
  v28 = v0;
  v29 = v1;
  v26 = v2;
  v27 = v3;
  v24 = v4;
  v25 = v5;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = sub_100007FEC(v23);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  sub_100007FDC();
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v31[5] = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31[2] = v24;
  v31[3] = v25;
  v30[2] = v26;
  v30[3] = v27;
  v22 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  sub_10045CDB4(v21, v28, sub_10045B200, v31, sub_10045D864, v30, v29, v22);
  sub_100005EDC();
}

uint64_t sub_10045B200()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *HandoffAudioController.__allocating_init(queue:callCenterQueue:audioDeviceController:routeController:conversationManager:serverBag:)()
{
  sub_100017418();
  v0 = sub_1000183BC();
  return sub_10045D220(v0, v1, v2, v3, v4, v5, v6, v7);
}

char *HandoffAudioController.init(queue:callCenterQueue:audioDeviceController:routeController:conversationManager:serverBag:)()
{
  sub_100017418();
  v0 = sub_1000183BC();
  return sub_10045D2BC(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

void sub_10045B2C8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR___CSDHandoffAudioController_routeController;
    [*(Strong + OBJC_IVAR___CSDHandoffAudioController_routeController) addDelegate:Strong];
    v15 = [*&v13[v14] pickedRoute];
    if (v15)
    {
      v16 = v15;
      if ([v15 isBluetooth])
      {
        v24 = *&v13[OBJC_IVAR___CSDHandoffAudioController_queue];
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = v16;
        v23 = v17;
        aBlock[4] = sub_10045D844;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004CEC;
        aBlock[3] = &unk_100631430;
        v21 = _Block_copy(aBlock);

        v22 = v16;
        static DispatchQoS.unspecified.getter();
        v25 = _swiftEmptyArrayStorage;
        v20[1] = sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v19 = v21;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v19);

        (*(v1 + 8))(v5, v0);
        (*(v7 + 8))(v11, v6);

        return;
      }
    }
  }
}

uint64_t sub_10045B658()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10045B6CC();
    v3 = &v1[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    v4 = *&v1[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];
    *v3 = v2;
    v3[1] = v5;
  }

  return result;
}

uint64_t sub_10045B6CC()
{
  v1 = [v0 isBluetooth];
  v2 = [v0 uniqueIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v1)
  {
    return v3;
  }

  sub_10001E364();
  v4 = StringProtocol.components<A>(separatedBy:)();

  if (v4[2])
  {
    v3 = v4[4];
    v6 = v4[5];

    return v3;
  }

  __break(1u);
  return result;
}

void HandoffAudioController.__deallocating_deinit()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007FDC();
  v25 = sub_100007CD8();
  v6 = sub_100007FEC(v25);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  [*&v0[OBJC_IVAR___CSDHandoffAudioController_conversationManager] removeDelegate:v0];
  v15 = *&v0[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  sub_100006890();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v28[4] = sub_10045D71C;
  v28[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v28[2] = v17;
  v28[3] = &unk_100631250;
  v18 = _Block_copy(v28);
  v19 = v15;
  v24 = v0;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000AB3C();
  sub_100017FB0(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v22 = sub_10000FE14();
  v23(v22);
  (*(v8 + 8))(v14, v25);

  v26.receiver = v24;
  v26.super_class = type metadata accessor for HandoffAudioController();
  objc_msgSendSuper2(&v26, "dealloc");
  sub_100005EDC();
}

uint64_t sub_10045BAD0(uint64_t a1, NSString a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C40 != -1)
  {
    sub_1000153C4();
  }

  v4 = static HandoffAudioController.routeIdentifierChangedNotification;
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  [v3 postNotificationName:v4 object:a2];

  return swift_unknownObjectRelease();
}

void sub_10045BB8C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_100007FDC();
  v11 = sub_100007CD8();
  v12 = sub_100007FEC(v11);
  v34 = v13;
  v35 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  sub_1000115B0();
  v17 = type metadata accessor for Notification();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  v33[1] = *(v2 + OBJC_IVAR___CSDHandoffAudioController_queue);
  sub_100006890();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v20 + 16))(v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v17);
  v25 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v26 = swift_allocObject();
  (*(v20 + 32))(v26 + v25, v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v26 + ((v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v38[4] = sub_10045D764;
  v38[5] = v26;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v38[2] = v27;
  v38[3] = &unk_100631368;
  v28 = _Block_copy(v38);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10000AB3C();
  sub_100017FB0(v29, v30);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  v31 = sub_10000FE14();
  v32(v31);
  (*(v34 + 8))(v1, v35);

  sub_100005EDC();
}

uint64_t sub_10045BE9C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v23[3])
  {
    sub_10004975C(v23);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v16 = sub_100010B20();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057D690;
    (*(v3 + 16))(v7, a1, v2);
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100009D88();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:type:_:)();
    goto LABEL_7;
  }

  v9 = v22[0];
  v8 = v22[1];
  v10 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  v23[0] = v9;
  v23[1] = v8;

  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100009D88();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_10045C144();
LABEL_7:
  }
}

void sub_10045C144()
{
  sub_100005EF4();
  v3 = v2;
  v37 = v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007FDC();
  v38 = sub_100007CD8();
  v10 = sub_100007FEC(v38);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_1000115B0();
  v16 = type metadata accessor for DispatchPredicate();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v26 = *&v0[OBJC_IVAR___CSDHandoffAudioController_queue];
  *(v24 - v23) = v26;
  (*(v19 + 104))(v24 - v23, enum case for DispatchPredicate.onQueue(_:), v16);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v25, v16);
  if (v26)
  {
    v28 = *&v0[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
    v29 = swift_allocObject();
    v29[2] = v0;
    v29[3] = v37;
    v29[4] = v3;
    v39[4] = sub_10045D7F0;
    v39[5] = v29;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v39[2] = v30;
    v39[3] = &unk_1006313B8;
    v31 = _Block_copy(v39);
    v32 = v0;

    static DispatchQoS.unspecified.getter();
    sub_10000AB3C();
    sub_100017FB0(v33, v34);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    sub_10000E9E4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
    v35 = sub_10000FE14();
    v36(v35);
    (*(v12 + 8))(v1, v38);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10045C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = OBJC_IVAR___CSDHandoffAudioController_routeController;
  v5 = [*(a1 + OBJC_IVAR___CSDHandoffAudioController_routeController) routes];
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10000B6F4(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v15 = sub_100010B20();
      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057D690;

      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100009D88();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      os_log(_:dso:log:type:_:)();

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v22 = v9;
    v10 = [v9 isBluetooth];
    v11 = v22;
    if (!v10)
    {
      goto LABEL_13;
    }

    if (sub_10045B6CC() == a2 && v12 == a3)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v22;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_13:
  }

LABEL_17:

  [*(a1 + v20) pickRoute:v22];
}

void HandoffAudioController.conversationManager(_:stateChangedFor:)()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v57 = v15;
  v58 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  sub_1000115B0();
  v19 = type metadata accessor for DispatchPredicate();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_callCenterQueue);
  *(v27 - v26) = v29;
  (*(v22 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v19);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v28, v19);
  if (v31)
  {
    if ([v3 state] == 3)
    {
      v55 = v4;
      v32 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10057D690;
      v34 = OBJC_IVAR___CSDHandoffAudioController_routeController;
      v35 = [*(v0 + OBJC_IVAR___CSDHandoffAudioController_routeController) pickedRoute];
      v36 = sub_100291654(v35);
      v38 = v37;

      *(v33 + 56) = &type metadata for String;
      v39 = sub_100009D88();
      *(v33 + 64) = v39;
      *(v33 + 32) = v36;
      *(v33 + 40) = v38;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v40 = [*(v0 + v34) pickedRoute];
      if (v40)
      {
        v41 = v40;
        if ([v40 isBluetooth])
        {
          v56 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_queue);
          sub_100006890();
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          *(v43 + 16) = v42;
          *(v43 + 24) = v41;
          v60[4] = sub_10045D75C;
          v60[5] = v43;
          sub_100009FE4();
          sub_1000081D4(COERCE_DOUBLE(1107296256));
          v60[2] = v44;
          v60[3] = &unk_1006312C8;
          v45 = _Block_copy(v60);

          v46 = v41;
          static DispatchQoS.unspecified.getter();
          sub_10000AB3C();
          sub_100017FB0(v47, v48);
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v45);

          (*(v59 + 8))(v12, v55);
          (*(v57 + 8))(v1, v58);

          goto LABEL_8;
        }
      }

      v49 = sub_100010B20();
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10057D690;
      v51 = [*(v0 + v34) pickedRoute];
      v52 = sub_100291654(v51);
      v54 = v53;

      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = v39;
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

LABEL_8:
    sub_100005EDC();
    return;
  }

  __break(1u);
}

uint64_t sub_10045CCB8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10045B6CC();
    v3 = &v1[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    v4 = *&v1[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];
    *v3 = v2;
    v3[1] = v5;

    v6 = sub_10045B6CC();
    sub_10045BAD0(v6, v7);
  }

  return result;
}

char *sub_10045CDB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void *a7, void *a8)
{
  v42 = a8;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v36 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v36, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HandoffAudioController();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v22[OBJC_IVAR___CSDHandoffAudioController_routeController] = a5();
  *&v22[OBJC_IVAR___CSDHandoffAudioController_queue] = a1;
  *&v22[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue] = a2;
  *&v22[OBJC_IVAR___CSDHandoffAudioController_conversationManager] = a7;
  *&v22[OBJC_IVAR___CSDHandoffAudioController_serverBag] = v42;
  v45.receiver = v22;
  v45.super_class = v21;
  v42 = a1;
  v40 = a2;
  v39 = a7;
  v24 = objc_msgSendSuper2(&v45, "init");
  v25 = *&v24[OBJC_IVAR___CSDHandoffAudioController_conversationManager];
  v26 = OBJC_IVAR___CSDHandoffAudioController_callCenterQueue;
  v27 = *&v24[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  v28 = v24;
  [v25 addDelegate:v28 queue:v27];
  v29 = *&v24[v26];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10045D860;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100631458;
  v31 = _Block_copy(aBlock);
  v32 = v29;

  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v33 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v41 + 8))(v15, v33);
  (*(v37 + 8))(v20, v38);

  v34 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  [v34 addObserver:v28 selector:"handleContinueHandoffAudioRouteNotification:" name:static HandoffAudioController.continueHandoffAudioRouteNotification object:{0, v36}];

  return v28;
}

char *sub_10045D220(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v18 = objc_allocWithZone(type metadata accessor for HandoffAudioController());

  return sub_10045D2BC(a1, a2, a3, a4, a5, a6, a7, a8, v18);
}

char *sub_10045D2BC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8, char *a9)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v38, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &a9[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_routeController] = a5(v21);
  *&a9[OBJC_IVAR___CSDHandoffAudioController_queue] = a1;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue] = a2;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_conversationManager] = a7;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_serverBag] = a8;
  v25 = type metadata accessor for HandoffAudioController();
  v47.receiver = a9;
  v47.super_class = v25;
  v44 = a1;
  v43 = a2;
  v42 = a7;
  v26 = objc_msgSendSuper2(&v47, "init");
  v27 = *&v26[OBJC_IVAR___CSDHandoffAudioController_conversationManager];
  v28 = OBJC_IVAR___CSDHandoffAudioController_callCenterQueue;
  v29 = *&v26[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  v30 = v26;
  [v27 addDelegate:v30 queue:v29];
  v31 = *&v26[v28];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10045D7FC;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006313E0;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v35 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v41 + 8))(v17, v35);
  (*(v39 + 8))(v23, v40);

  v36 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v30 selector:"handleContinueHandoffAudioRouteNotification:" name:static HandoffAudioController.continueHandoffAudioRouteNotification object:{0, v38}];

  return v30;
}

uint64_t sub_10045D75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10045CCB8();
}

uint64_t sub_10045D764()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045BE9C(v0 + v2);
}

uint64_t sub_10045D804()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10045D844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10045B658();
}

void sub_10045D880(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    v38 = sub_10001E578(v1);
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        sub_10001E580(v38, v39, v40, v1);
        v11 = v10;
        v12 = sub_10001E1D4();
        v14 = v13;

        v15 = v36;
        v41 = v36;
        v17 = v36[2];
        v16 = v36[3];
        if (v17 >= v16 >> 1)
        {
          sub_10039A2E0(v16 > 1, v17 + 1, 1);
          v15 = v41;
        }

        v15[2] = v17 + 1;
        v18 = &v15[2 * v17];
        v18[4] = v12;
        v18[5] = v14;
        v36 = v15;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
          v24 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100010000(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          sub_100010000(v38, v39, v40);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_10045DB80(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    v39 = sub_10001E578(v1);
    v40 = v3;
    v41 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v39;
        v8 = v41;
        v36 = v40;
        v9 = v1;
        sub_1002E96BC(v39, v40, v41, v1);
        v11 = v10;
        v12 = [v10 handle];
        v13 = sub_10001E1D4();
        v15 = v14;

        v16 = v37;
        v42 = v37;
        v18 = v37[2];
        v17 = v37[3];
        if (v18 >= v17 >> 1)
        {
          sub_10039A2E0(v17 > 1, v18 + 1, 1);
          v16 = v42;
        }

        v16[2] = v18 + 1;
        v19 = &v16[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v37 = v16;
        if (v35)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v24 = v34;
          sub_10026D814(&qword_1006AC408, &unk_1005882D0);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v25(v38, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v20 = 1 << *(v9 + 32);
          if (v7 >= v20)
          {
            goto LABEL_32;
          }

          v21 = v7 >> 6;
          v22 = *(v33 + 8 * (v7 >> 6));
          if (((v22 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v36)
          {
            goto LABEL_34;
          }

          v23 = v22 & (-2 << (v7 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v24 = v34;
          }

          else
          {
            v26 = v21 << 6;
            v27 = v21 + 1;
            v28 = (v32 + 8 * v21);
            v24 = v34;
            while (v27 < (v20 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010000(v7, v36, 0);
                v20 = __clz(__rbit64(v29)) + v26;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v36, 0);
          }

LABEL_27:
          v31 = *(v9 + 36);
          v39 = v20;
          v40 = v31;
          v41 = 0;
        }

        if (v5 == v24)
        {
          sub_100010000(v39, v40, v41);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void *sub_10045DE9C(uint64_t a1)
{
  v42 = type metadata accessor for CharacterSet();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v42, v5);
  v41 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36[1] = v1;
    v49 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v7, 0);
    v9 = v49;
    v12 = sub_100308264(a1);
    result = v9;
    v13 = 0;
    v46 = a1 + 56;
    v39 = a1;
    v40 = (v3 + 8);
    v37 = a1 + 64;
    v38 = v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(a1 + 32))
      {
        v14 = v12 >> 6;
        if ((*(v46 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_31;
        }

        v44 = v11;
        v43 = v10;
        v45 = result;
        v15 = (*(a1 + 48) + 16 * v12);
        v16 = v15[1];
        v47 = *v15;
        v48 = v16;

        v17 = v41;
        static CharacterSet.controlCharacters.getter();
        sub_10001E364();
        v18 = StringProtocol.trimmingCharacters(in:)();
        v20 = v19;
        (*v40)(v17, v42);
        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (!v21)
        {

          if (qword_1006A0C50 != -1)
          {
            swift_once();
          }

          v18 = qword_1006AC3A0;
          v20 = *algn_1006AC3A8;
        }

        result = v45;
        v49 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          sub_10039A2E0(v22 > 1, v23 + 1, 1);
          result = v49;
        }

        result[2] = v23 + 1;
        v24 = &result[2 * v23];
        v24[4] = v18;
        v24[5] = v20;
        if (v44)
        {
          goto LABEL_35;
        }

        a1 = v39;
        v25 = 1 << *(v39 + 32);
        if (v12 >= v25)
        {
          goto LABEL_32;
        }

        v26 = *(v46 + 8 * v14);
        if ((v26 & (1 << v12)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v39 + 36) != v43)
        {
          goto LABEL_34;
        }

        v27 = v26 & (-2 << (v12 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v28 = v38;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v28 = v38;
          v31 = (v37 + 8 * v14);
          while (v30 < (v25 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              v34 = result;
              sub_100010000(v12, v43, 0);
              result = v34;
              v25 = __clz(__rbit64(v32)) + v29;
              goto LABEL_25;
            }
          }

          v35 = result;
          sub_100010000(v12, v43, 0);
          result = v35;
        }

LABEL_25:
        if (++v13 == v28)
        {
          return result;
        }

        v11 = 0;
        v10 = *(a1 + 36);
        v12 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

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
LABEL_35:
    __break(1u);
  }

  return result;
}

void sub_10045E238(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v8 = a3 + 64;
  v7 = *(a3 + 64);
  v9 = *(a3 + 32);
  sub_100007990();
  sub_10000D568();
  v10 = 0;
  if (v5)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v12 = (*(a3 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v5)))));
      v13 = v12[1];
      v16[0] = *v12;
      v16[1] = v13;

      v14 = v17(v16);
      if (v3)
      {
        break;
      }

      v15 = v14;

      if (v15)
      {
        goto LABEL_10;
      }

      v5 &= v5 - 1;
      v10 = v11;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_100015C08();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v5 = *(v8 + 8 * v11);
      ++v10;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

BOOL sub_10045E360()
{
  sub_100016114();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

void sub_10045E400(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v8 = a3 + 64;
  v7 = *(a3 + 64);
  v9 = *(a3 + 32);
  sub_100007990();
  sub_10000D568();
  v10 = 0;
  if (v5)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v5)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_10;
      }

      v5 &= v5 - 1;
      v10 = v11;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_100015C08();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v5 = *(v8 + 8 * v11);
      ++v10;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10045E51C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006AC410, CXMember_ptr);
    sub_10000CE3C(&qword_1006A3898, &qword_1006AC410, CXMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &qword_1006AC410, CXMember_ptr), swift_dynamicCast(), v12 = v29, v9 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_, !v29))
    {
LABEL_25:
      sub_100022DDC();
      return;
    }

LABEL_18:
    v13 = [v12 v9[120]];
    v14 = [v13 tuHandle];

    if (v14)
    {
      v15 = sub_10001E1D4();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = v23[2];
        sub_100017840();
        v23 = v21;
      }

      v18 = v23[2];
      if (v18 >= v23[3] >> 1)
      {
        sub_100017840();
        v23 = v22;
      }

      v23[2] = v18 + 1;
      v19 = &v23[2 * v18];
      v19[4] = v15;
      v19[5] = v17;
      goto LABEL_8;
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10045E7EC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AC3A0 = result;
  *algn_1006AC3A8 = v1;
  return result;
}

void sub_10045E81C()
{
  sub_100005EF4();
  v2 = v1;
  v36 = v3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v38);
  v40 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v39 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v39);
  v37 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);
  *&v0[v20] = sub_100017E7C();
  v21 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  *&v0[v21] = sub_100017E7C();
  v22 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
  type metadata accessor for UUID();
  sub_100006AF0(0, &unk_1006A7560, STConversationContext_ptr);
  sub_100461DBC(&qword_1006A3BE0, &type metadata accessor for UUID);
  *&v0[v22] = Dictionary.init(dictionaryLiteral:)();
  v23 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
  type metadata accessor for NSKeyValueObservation();
  *&v0[v23] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR___CSDScreenTimeCallFilter_providerManager] = v36;
  swift_unknownObjectWeakAssign();
  v42.receiver = v0;
  v42.super_class = type metadata accessor for ScreenTimeCallFilter();
  v24 = v36;
  v25 = objc_msgSendSuper2(&v42, "initWithQueue:", v2);
  v26 = *&v25[OBJC_IVAR___CSDScreenTimeCallFilter_providerManager];
  v27 = v25;
  [v26 addDelegate:v27 queue:v2];
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v2;
  v41[4] = sub_100461E5C;
  v41[5] = v28;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 1107296256;
  sub_10000A600();
  v41[2] = v29;
  v41[3] = &unk_100631688;
  v30 = _Block_copy(v41);
  v31 = v27;
  v32 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10000F924();
  sub_100461DBC(v33, v34);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v40 + 8))(v11, v38);
  (*(v37 + 8))(v19, v39);

  v35 = [objc_opt_self() defaultCenter];
  [v35 addObserver:v31 selector:"handleCallRemoteParticipantsChanged:" name:TUCallRemoteParticipantHandlesChangedNotification object:0];

  swift_unknownObjectRelease();
  sub_100005EDC();
}

void sub_10045EC68(uint64_t a1, uint64_t a2)
{
  sub_100460458();
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 conversationManager];

  [v5 addDelegate:a1 queue:a2];
}

uint64_t sub_10045ED64(uint64_t a1)
{
  if (a1)
  {
    sub_10001E1D4();
  }

  else if (qword_1006A0C50 != -1)
  {
    sub_10000AB54();
  }

  return 0;
}

uint64_t sub_10045EE0C(void *a1, void *a2)
{
  v4 = sub_100461450(a1);
  v5 = sub_1002C89F0(a2);
  v7 = sub_10001DAF4(v4, v5, v6);

  if (v7)
  {
    [a1 setFilteredOutReason:5];
  }

  return v7 & 1;
}

uint64_t sub_10045EEFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298();
  v7 = *(v3 + v6);

  v8 = sub_100007764();
  sub_100023E48(v8, v9, v7);
  sub_10000C768();
  if (a3)
  {
    sub_10045DE9C(a1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [a3 allowableByContactsHandles:isa];

    v12 = [v11 allowedByContactsHandle];
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    return Dictionary.init(dictionaryLiteral:)();
  }

  return v13;
}

uint64_t sub_10045F144()
{
  sub_100460A98();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;

  v3 = sub_10001E78C(v2);
  sub_10045DE9C(v3);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 allowableByContactsHandles:isa];

  v6 = [v5 shouldBeAllowedDuringGeneralScreenTime];
  v7 = [v5 allowedByScreenTime];
  v8 = [v5 applicationCurrentlyLimited];
  v9 = 1;
  if (!v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 3;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057E830;
  type metadata accessor for CSDCallFilterStatus(0);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100009D88();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v16 = String.init<A>(reflecting:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;

  v18 = String.init<A>(reflecting:)();
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v15;
  *(v11 + 112) = v18;
  *(v11 + 120) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v10;
}

uint64_t sub_10045F420(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298();
  v6 = *(v3 + v5);
  if (*(v6 + 16))
  {

    sub_100007764();
    v7 = sub_100005208();
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      sub_10000C768();

      v11 = sub_10001E78C(v10);
      sub_10045DE9C(v11);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = [a3 allowableByContactsHandles:isa];

      LODWORD(isa) = [v13 shouldBeAllowedByScreenTimeWhenLimited];
      return isa ^ 1;
    }
  }

  return 0;
}

uint64_t sub_10045F5BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  v8 = sub_10001E78C(v7);
  v9 = sub_10045DE9C(v8);

  if (a4)
  {
    v10 = sub_1004615A4(v9, a2, a3);
  }

  else
  {
    v10 = sub_10001DAF4(v9, a2, a3);
  }

  v11 = v10;

  return v11 & 1;
}

void sub_10045F7C0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v32 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 queue];
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v19;
  v21[4] = v0;
  v33[4] = sub_100461E3C;
  v33[5] = v21;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  sub_10000A600();
  v33[2] = v22;
  v33[3] = &unk_100631520;
  v23 = _Block_copy(v33);
  v24 = v2;
  v25 = v19;
  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000F924();
  sub_100461DBC(v27, v28);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  v29 = *(v6 + 8);
  v30 = sub_100007764();
  v31(v30);
  (*(v12 + 8))(v18, v32);

  sub_100005EDC();
}

void sub_10045FA54(void *a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v41 = type metadata accessor for UUID();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v41, v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v10 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  v43 = xmmword_10057D690;
  *(v11 + 16) = xmmword_10057D690;
  aBlock[0] = a1;
  v12 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  v13 = a1;
  v40[1] = v12;
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  *(v11 + 56) = &type metadata for String;
  v44 = sub_100009D88();
  *(v11 + 64) = v44;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  static os_log_type_t.default.getter();
  v45 = v10;
  os_log(_:dso:log:type:_:)();

  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100461E48;
  *(v18 + 24) = v17;
  aBlock[4] = sub_10002E4BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E470;
  aBlock[3] = &unk_100631598;
  v19 = _Block_copy(aBlock);
  v20 = v13;

  v21 = [a2 callPassingTest:v19];
  _Block_release(v19);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (v21)
    {
      v22 = v21;
      v23 = [v22 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      v25 = v42;
      swift_beginAccess();
      v26 = *(v25 + v24);

      v27 = sub_100025C58(v9, v26);

      (*(v5 + 8))(v9, v41);
      if (v27)
      {

        v28 = swift_allocObject();
        *(v28 + 16) = v43;
        v46 = v20;
        v29 = v20;
        v30 = String.init<A>(reflecting:)();
        v31 = v44;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = v31;
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_10002156C();

        return;
      }
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v43;
    v34 = [objc_opt_self() sharedInstance];
    v35 = [v34 currentAudioAndVideoCalls];

    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v36;
    sub_10026D814(&unk_1006AC438, &qword_100588300);
    v37 = String.init<A>(reflecting:)();
    v38 = v44;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v38;
    *(v33 + 32) = v37;
    *(v33 + 40) = v39;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10045FF70(void *a1, void *a2)
{
  if (![a1 isConversation])
  {
    goto LABEL_27;
  }

  v4 = [a1 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10001E558(v5);

  v7 = [a2 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10001E558(v8);

  if (v6 != v9)
  {
LABEL_27:
    v39 = 0;
    return v39 & 1;
  }

  v10 = [a1 remoteParticipantHandles];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a2 remoteMembers];
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10001E558(v12);
  if (!v13)
  {

    v38 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002F1FE8(v38);
    v39 = sub_1002F5908();

    return v39 & 1;
  }

  v14 = v13;
  v44 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = sub_10001E578(v12);
  v41 = result;
  v42 = v16;
  v43 = v17 & 1;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    while (!__OFADD__(v18++, 1))
    {
      v20 = v41;
      v21 = v42;
      v22 = v43;
      sub_1002E944C(v41, v42, v43, v12);
      v24 = v23;
      v25 = [v23 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v26 = v44[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if ((v12 & 0xC000000000000001) != 0)
      {
        if (!v22)
        {
          goto LABEL_36;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&unk_1006A3C40, &unk_100580340);
        v31 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v31(v40, 0);
      }

      else
      {
        if (v22)
        {
          goto LABEL_37;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v27 = 1 << *(v12 + 32);
        if (v20 >= v27)
        {
          goto LABEL_32;
        }

        v28 = v20 >> 6;
        v29 = *(v12 + 56 + 8 * (v20 >> 6));
        if (((v29 >> v20) & 1) == 0)
        {
          goto LABEL_33;
        }

        if (*(v12 + 36) != v21)
        {
          goto LABEL_34;
        }

        v30 = v29 & (-2 << (v20 & 0x3F));
        if (v30)
        {
          v27 = __clz(__rbit64(v30)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v32 = v28 << 6;
          v33 = v28 + 1;
          v34 = (v12 + 64 + 8 * v28);
          while (v33 < (v27 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              result = sub_100010000(v20, v21, 0);
              v27 = __clz(__rbit64(v35)) + v32;
              goto LABEL_24;
            }
          }

          result = sub_100010000(v20, v21, 0);
        }

LABEL_24:
        v37 = *(v12 + 36);
        v41 = v27;
        v42 = v37;
        v43 = 0;
      }

      if (v18 == v14)
      {

        sub_100010000(v41, v42, v43);
        v38 = v44;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100460458()
{
  sub_100005EF4();
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR___CSDScreenTimeCallFilter_providerManager) localProvidersByIdentifierForRemoteClients:0];
  sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 64);
  v6 = *(v4 + 32);
  sub_100007990();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = v4 + 64;
  v13 = 0;
  v86 = _swiftEmptyArrayStorage;
  v89 = v4 + 64;
  while (v9)
  {
LABEL_7:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = sub_1002C89F0(*(*(v4 + 56) + ((v13 << 9) | (8 * v15))));
    v12 = v89;
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = v86[2];
        sub_100017840();
        v86 = v24;
      }

      v20 = v86[2];
      v12 = v89;
      if (v20 >= v86[3] >> 1)
      {
        sub_100017840();
        v12 = v89;
        v86 = v25;
      }

      v21 = v86;
      v86[2] = v20 + 1;
      v22 = &v21[2 * v20];
      v22[4] = v18;
      v22[5] = v19;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v12 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_7;
    }
  }

  v84 = v4;

  v1 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298();
  v26 = *(v2 + v1);
  v28 = *(v26 + 64);
  v27 = v26 + 64;
  v29 = *(*(v2 + v1) + 32);
  sub_100007990();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;
  v85 = v35;

  v38 = 0;
  v88 = 0;
  v90 = _swiftEmptyArrayStorage;
  while (v32)
  {
    v39 = v38;
LABEL_19:
    v87 = &v83;
    v40 = (*(v85 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v32)))));
    v41 = *v40;
    v42 = v40[1];
    v32 &= v32 - 1;
    v91[0] = *v40;
    v91[1] = v42;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native, v37);
    *(&v83 - 2) = v91;

    v43 = v88;
    v44 = sub_100013094();
    v88 = v43;
    if (v44)
    {

      v38 = v39;
    }

    else
    {
      v45 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A2E0(0, v45[2] + 1, 1);
        v45 = v92;
      }

      v47 = v45[2];
      v46 = v45[3];
      v48 = (v47 + 1);
      if (v47 >= v46 >> 1)
      {
        v90 = (v47 + 1);
        sub_10039A2E0(v46 > 1, v47 + 1, 1);
        v48 = v90;
        v45 = v92;
      }

      v45[2] = v48;
      v90 = v45;
      v49 = &v45[2 * v47];
      v49[4] = v41;
      v49[5] = v42;
      v38 = v39;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v34)
    {

      v50 = 0;
      v51 = v90;
      v52 = v90[2];
      v53 = v90 + 5;
      while (v52 != v50)
      {
        if (v50 >= v51[2])
        {
          goto LABEL_47;
        }

        v55 = *(v53 - 1);
        v54 = *v53;
        swift_beginAccess();
        v56 = *(v2 + v1);

        v57 = sub_100005208();
        if (v58)
        {
          v59 = v57;
          v60 = *(v2 + v1);
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v92 = *(v2 + v1);
          v62 = v92;
          *(v2 + v1) = 0x8000000000000000;
          v63 = v62[3];
          sub_10026D814(&qword_1006A6EA0, &qword_100582680);
          v64 = v61;
          v51 = v90;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v64, v63);
          v65 = v92;
          v66 = *(v92[6] + 16 * v59 + 8);

          sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);
          _NativeDictionary._delete(at:)();
          *(v2 + v1) = v65;
        }

        swift_endAccess();

        v53 += 2;
        ++v50;
      }

      v67 = v84;
      v68 = 1 << *(v84 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v84 + 64);
      v71 = (v68 + 63) >> 6;

      v72 = 0;
      while (v70)
      {
        v73 = v72;
LABEL_41:
        v74 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v75 = v74 | (v73 << 6);
        v76 = *(*(v67 + 48) + 16 * v75 + 8);
        v77 = *(*(v67 + 56) + 8 * v75);

        v78 = v77;
        sub_100461180(v78);
      }

      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_46;
        }

        if (v73 >= v71)
        {

          if (qword_1006A0AA0 != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        v70 = *(v89 + 8 * v73);
        ++v72;
        if (v70)
        {
          v72 = v73;
          goto LABEL_41;
        }
      }
    }

    v32 = *(v27 + 8 * v39);
    ++v38;
    if (v32)
    {
      goto LABEL_19;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_100008134();
LABEL_43:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_10057D690;
  v91[0] = *(v2 + v1);

  sub_10026D814(&unk_1006AC428, &unk_1005882F0);
  v80 = String.init<A>(reflecting:)();
  v82 = v81;
  *(v79 + 56) = &type metadata for String;
  *(v79 + 64) = sub_100009D88();
  *(v79 + 32) = v80;
  *(v79 + 40) = v82;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100005EDC();
}

void sub_100460A98()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = sub_100007FEC(v6);
  v65 = v8;
  v66 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v7, v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v64 = &v61 - v16;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  v24 = type metadata accessor for DispatchQoS();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  sub_100007FDC();
  v27 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  sub_100005298();
  v62 = v27;
  v28 = *&v1[v27];
  if (*(v28 + 16))
  {

    v29 = sub_100005208();
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      sub_10000C768();
      goto LABEL_13;
    }
  }

  sub_100006890();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v63 = (v32 + 16);
  static DispatchQoS.default.getter();
  sub_10026D814(&unk_1006AC418, &unk_1005882E0);
  v67 = v3;
  v33 = *(v20 + 72);
  v34 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10057D6A0;
  static DispatchWorkItemFlags.inheritQoS.getter();
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  v68 = v35;
  sub_10000F924();
  sub_100461DBC(v36, v37);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008BA8();
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = v5;
  v61 = v5;
  v39 = v32;
  v38[4] = v67;
  v38[5] = v1;
  v72 = sub_100461E04;
  v73 = v38;
  v68 = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_100004CEC;
  v71 = &unk_1006314D0;
  _Block_copy(&v68);
  v40 = type metadata accessor for DispatchWorkItem();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  v43 = v1;
  DispatchWorkItem.init(qos:flags:block:)();

  v44 = [v43 queue];
  OS_dispatch_queue.async(execute:)();

  static DispatchTime.now()();
  v45 = v64;
  + infix(_:_:)();
  v46 = v66;
  v47 = *(v65 + 8);
  v47(v14, v66);
  LOBYTE(v44) = dispatch thunk of DispatchWorkItem.wait(timeout:)();
  v47(v45, v46);
  if (v44)
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10057E830;
    v49 = v63;
    sub_100005298();
    v50 = *v49;
    v51 = *v49;
    v52 = sub_100291668(v50);
    v54 = v53;

    *(v48 + 56) = &type metadata for String;
    v55 = sub_100009D88();
    *(v48 + 64) = v55;
    *(v48 + 32) = v52;
    *(v48 + 40) = v54;
    v68 = v61;
    v69 = v67;

    v56 = String.init<A>(reflecting:)();
    *(v48 + 96) = &type metadata for String;
    *(v48 + 104) = v55;
    *(v48 + 72) = v56;
    *(v48 + 80) = v57;
    v68 = *&v1[v62];

    sub_10026D814(&unk_1006AC428, &unk_1005882F0);
    v58 = String.init<A>(reflecting:)();
    *(v48 + 136) = &type metadata for String;
    *(v48 + 144) = v55;
    *(v48 + 112) = v58;
    *(v48 + 120) = v59;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  sub_100005298();
  v60 = *(v39 + 16);

LABEL_13:
  sub_100005EDC();
}

uint64_t sub_100461068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);

  v8 = sub_1004613DC(a2, a3, &selRef_initSynchronouslyWithBundleIdentifier_);
  swift_beginAccess();
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  swift_beginAccess();
  if (v8)
  {
    v11 = v8;
    v12 = *(a4 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A6CC(v11, a2, a3, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v19, *(a4 + v10));
    *(a4 + v10) = v20;
  }

  else
  {
  }

  return swift_endAccess();
}

void sub_100461180(void *a1)
{
  v2 = v1;
  v4 = sub_1002C89F0(a1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
    sub_100005298();
    v9 = *(v2 + v8);

    v10 = sub_100007764();
    v12 = sub_100023E48(v10, v11, v9);

    if (v12)
    {
    }

    else
    {
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134();
      }

      v34 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10057D6A0;

      v14 = String.init<A>(reflecting:)();
      v16 = v15;
      *(v13 + 56) = &type metadata for String;
      v17 = sub_100009D88();
      *(v13 + 64) = v17;
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
      v18 = a1;
      v19 = String.init<A>(reflecting:)();
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v17;
      *(v13 + 72) = v19;
      *(v13 + 80) = v20;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);

      v21 = sub_100007764();
      v24 = sub_1004613DC(v21, v22, v23);
      swift_beginAccess();
      if (v24)
      {
        v25 = *(v2 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10037A6CC(v24, v6, v7, isUniquelyReferenced_nonNull_native, v27, v28, v29, v30, v34, *(v2 + v8));
        *(v2 + v8) = v35;
      }

      else
      {
        v31 = sub_100007764();
        v33 = sub_100384730(v31, v32);
      }

      swift_endAccess();
    }
  }
}

id sub_1004613DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

void *sub_100461450(void *a1)
{
  if ([a1 isConversation])
  {
    v2 = sub_100461D20(a1);
    if (v2)
    {
      sub_10045E51C(v2);
      v4 = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v5 = [a1 remoteMember];
    if (v5 && (v6 = v5, v7 = [v5 handle], v6, v8 = objc_msgSend(v7, "tuHandle"), v7, v8))
    {
      v9 = sub_10001E1D4();
      v11 = v10;
    }

    else
    {
      if (qword_1006A0C50 != -1)
      {
        sub_10000AB54();
      }

      v9 = qword_1006AC3A0;
      v11 = *algn_1006AC3A8;
    }

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    sub_100008BA8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    *(v4 + 32) = v9;
    *(v4 + 40) = v11;
  }

  return v4;
}

id sub_100461960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeCallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100461AEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_100461BF0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100461C38()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100461CC4()
{
  sub_100016114();
  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100461D20(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006AC410, CXMember_ptr);
  sub_10000CE3C(&qword_1006A3898, &qword_1006AC410, CXMember_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100461DBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100461EA0()
{
  sub_10000C698();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 185) = v3;
  *(v1 + 184) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for URL();
  *(v1 + 64) = v8;
  sub_100005EB4(v8);
  *(v1 + 72) = v9;
  v11 = *(v10 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v12 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v12);
  v14 = *(v13 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v1 + 120) = v15;
  *v15 = v1;
  v15[1] = sub_100461FF8;

  return sub_100272C6C();
}

uint64_t sub_100461FF8()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;

  if (v0)
  {
    v9 = v3[13];
    v8 = v3[14];
    v11 = v3[11];
    v10 = v3[12];
    v12 = v3[10];

    v13 = sub_10001157C();

    return v14(v13);
  }

  else
  {
    sub_100007BBC();

    return _swift_task_switch(v16, v17, v18);
  }
}

uint64_t sub_100462160(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, os_log_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v29;
  a28 = v30;
  sub_10000C1A0();
  a26 = v28;
  v31 = *(v28 + 128);
  v32 = *(v28 + 112);
  v33 = *(v28 + 56);
  v34 = type metadata accessor for TaskPriority();
  sub_10000AF74(v32, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v33;
  v35[5] = v31;

  v36 = v31;
  sub_100276028();

  v37 = dispatch thunk of SynthesisVoice.name.getter();
  v39 = v38;
  v40 = sub_100271F70();
  if (v39)
  {
    if (v41)
    {
      if (v37 == v40 && v39 == v41)
      {

        v43 = 1;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    if (!v41)
    {
      v43 = 1;
      goto LABEL_13;
    }

    v43 = 0;
  }

LABEL_13:
  v44 = *(v28 + 185);
  v45 = *(v28 + 184);
  v46 = *(v28 + 48);
  v47 = *(v28 + 56);
  v48 = sub_100272258();
  v49 = v48;
  if ((v43 & 1) == 0 || (v48 & 1) == 0 || (v45 & 1) != 0 || v44)
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v82 = *(v28 + 128);
    v83 = *(v28 + 104);
    v84 = *(v28 + 64);
    v85 = *(v28 + 72);
    v87 = *(v28 + 32);
    v86 = *(v28 + 40);
    v88 = type metadata accessor for Logger();
    *(v28 + 136) = sub_10000AF9C(v88, qword_1006BA5F8);
    v89 = *(v85 + 16);
    *(v28 + 144) = v89;
    *(v28 + 152) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v89(v83, v86, v84);
    v90 = v82;
    sub_100044498();

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v135 = v92;
      v93 = *(v28 + 104);
      loga = v91;
      v95 = *(v28 + 64);
      v94 = *(v28 + 72);
      v133 = *(v28 + 184);
      v134 = *(v28 + 185);
      v131 = *(v28 + 32);
      v132 = *(v28 + 128);
      v130 = *(v28 + 24);
      v96 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      a17 = swift_slowAlloc();
      *v96 = 136447746;
      sub_10001744C();
      sub_10000F270(v97, v98);
      dispatch thunk of CustomStringConvertible.description.getter();
      v99 = *(v94 + 8);
      v99(v93, v95);
      v100 = sub_100005334();
      v103 = sub_10002741C(v100, v101, v102);

      *(v96 + 4) = v103;
      *(v96 + 12) = 2082;
      *(v96 + 14) = sub_10002741C(v130, v131, &a17);
      *(v96 + 22) = 2114;
      *(v96 + 24) = v132;
      *v129 = v132;
      *(v96 + 32) = 1026;
      *(v96 + 34) = (v49 & 1) == 0;
      *(v96 + 38) = 1026;
      *(v96 + 40) = (v43 & 1) == 0;
      *(v96 + 44) = 1026;
      *(v96 + 46) = v133;
      *(v96 + 50) = 1026;
      *(v96 + 52) = v134;
      v104 = v132;
      _os_log_impl(&_mh_execute_header, loga, v135, "Creating a new outgoing message with URL: %{public}s, utterance: %{public}s, voice: %{public}@ because the existing file is missing (%{BOOL,public}d, the best voice changed (%{BOOL,public}d), the utterance changed (%{BOOL,public}d), or recreation was forced (%{BOOL,public}d).", v96, 0x38u);
      sub_100009A04(v129, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      swift_arrayDestroy();
      sub_10000F674();
      sub_100005F64();
    }

    else
    {
      v105 = *(v28 + 104);
      v106 = *(v28 + 64);
      v107 = *(v28 + 72);

      v99 = *(v107 + 8);
      v99(v105, v106);
    }

    *(v28 + 160) = v99;
    v108 = swift_task_alloc();
    *(v28 + 168) = v108;
    *v108 = v28;
    v108[1] = sub_100462880;
    v109 = *(v28 + 128);
    v110 = *(v28 + 56);
    v111 = *(v28 + 32);
    v112 = *(v28 + 40);
    v113 = *(v28 + 24);
    sub_10000C638();

    return sub_10027270C();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v50 = *(v28 + 128);
    v52 = *(v28 + 72);
    v51 = *(v28 + 80);
    v54 = *(v28 + 56);
    v53 = *(v28 + 64);
    v55 = *(v28 + 48);
    v56 = type metadata accessor for Logger();
    sub_10000AF9C(v56, qword_1006BA5F8);
    (*(v52 + 16))(v51, v55, v53);

    v57 = v50;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v28 + 128);
    v63 = *(v28 + 72);
    v62 = *(v28 + 80);
    v64 = *(v28 + 64);
    if (v60)
    {
      a15 = *(v28 + 56);
      v65 = swift_slowAlloc();
      log = swift_slowAlloc();
      a17 = log;
      *v65 = 136446722;
      sub_10001744C();
      sub_10000F270(v66, v67);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v63 + 8))(v62, v64);
      v71 = sub_10002741C(v68, v70, &a17);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2082;
      *(v28 + 16) = v61;
      type metadata accessor for SynthesisVoice();
      v72 = v61;
      v73 = String.init<A>(reflecting:)();
      v75 = sub_10002741C(v73, v74, &a17);

      *(v65 + 14) = v75;
      *(v65 + 22) = 2082;
      v76 = sub_100271F70();
      v78 = sub_10001E478(v76, v77);
      v80 = v79;

      v81 = sub_10002741C(v78, v80, &a17);

      *(v65 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v58, v59, "No need to generate a new outgoing message. The file already exists (%{public}s) and the Siri voice (%{public}s matches the existing voice (%{public}s.", v65, 0x20u);
      swift_arrayDestroy();
      sub_100005F40();
      sub_100006868();
    }

    else
    {

      (*(v63 + 8))(v62, v64);
    }

    v117 = *(v28 + 104);
    v116 = *(v28 + 112);
    v119 = *(v28 + 88);
    v118 = *(v28 + 96);
    v120 = *(v28 + 80);

    sub_10001157C();
    sub_10000C638();

    return v123(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, a19, a20);
  }
}

uint64_t sub_100462880()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10046297C()
{
  v67 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v2(*(v0 + 96), *(v0 + 40), v5);
  v2(v4, v6, v5);
  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  log = v7;
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 160);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  if (v9)
  {
    v64 = v6;
    v15 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v15 = 136446466;
    sub_10001744C();
    sub_10000F270(v16, v17);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = sub_100006B3C();
    v10(v21);
    v22 = sub_10002741C(v18, v20, v66);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2082;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = sub_10000534C();
    v10(v26);
    v27 = sub_10002741C(v23, v25, v66);

    *(v15 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v64, "Copying from temp url (%{public}s into sandbox container (%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100006868();
  }

  else
  {

    v28 = sub_10000534C();
    v10(v28);
    v29 = sub_100006B3C();
    v10(v29);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 56);
  sub_1002722C4(*(v0 + 40), *(v0 + 48));
  v32 = *(v0 + 136);
  if (v30)
  {
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 128);
    if (!v35)
    {

      goto LABEL_12;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Copying from temp url failed: %{public}@", v37, 0xCu);
    sub_100009A04(v38, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
    v40 = *(v0 + 128);
    v41 = *(v0 + 56);
    v42 = dispatch thunk of SynthesisVoice.name.getter();
    sub_100272018(v42, v43);
    v44 = v40;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v33 = *(v0 + 128);
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v66[0] = v49;
      *v48 = 136315138;
      v50 = dispatch thunk of SynthesisVoice.name.getter();
      v52 = sub_10001E478(v50, v51);
      v54 = v53;

      v55 = sub_10002741C(v52, v54, v66);

      *(v48 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Set last used voice to %s", v48, 0xCu);
      sub_100009B7C(v49);
      sub_1000079DC();
      sub_100005F64();

      goto LABEL_12;
    }
  }

LABEL_12:
  v56 = v30 == 0;
  v58 = *(v0 + 104);
  v57 = *(v0 + 112);
  v60 = *(v0 + 88);
  v59 = *(v0 + 96);
  v61 = *(v0 + 80);

  v62 = *(v0 + 8);

  return v62(v56);
}

uint64_t sub_100462E00()
{
  sub_1000066BC();

  v1 = *(v0 + 176);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  v7 = sub_10001157C();

  return v8(v7);
}

uint64_t sub_100462E9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100462F38;

  return sub_1002731DC();
}

uint64_t sub_100462F38()
{
  sub_100006810();
  sub_100005F18();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_100008060();
  *v5 = v4;

  if (v0)
  {
  }

  v6 = *(v4 + 8);

  return v6(v0 != 0);
}

uint64_t sub_100463030(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

id sub_1004630C0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];

  v7 = type metadata accessor for URL();
  sub_100008070(v7);
  (*(v8 + 8))(a1);
  return v6;
}

uint64_t sub_100463158(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_100463030(v4, a3);
  }

  sub_100006AF0(0, &qword_1006AC520, AVAssetTrack_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1004631F0(v4, v6, &_swift_continuation_throwingResume);
}

void sub_100463218()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v25 - v11;
  sub_100343100(v3, v25 - v11, &qword_1006A5310, &qword_10057D580);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100015468(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100009A04(v12, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    v15 = *(*(v13 - 8) + 8);
    v16 = sub_100006B3C();
    v17(v16);
  }

  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;

      if (v22 | v20)
      {
        v26[0] = 0;
        v26[1] = 0;
        v24 = v26;
        v26[2] = v20;
        v26[3] = v22;
      }

      else
      {
        v24 = 0;
      }

      v25[1] = 7;
      v25[2] = v24;
      v25[3] = v23;
      sub_10046A9E0();

      sub_100009A04(v3, &qword_1006A5310, &qword_10057D580);

      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v3, &qword_1006A5310, &qword_10057D580);
  if (v22 | v20)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v20;
    v26[7] = v22;
  }

  sub_10046A9E0();
LABEL_14:
  sub_100005EDC();
}

void sub_100463470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, uint64_t a26)
{
  sub_100005EF4();
  v108 = v26;
  v98 = v27;
  v99 = v28;
  v105 = v29;
  v106 = v30;
  v117 = v31;
  v101 = v32;
  v111 = a26;
  v109 = v33;
  v110 = a25;
  v103 = a23;
  v102 = a24;
  v104 = a21;
  v100 = a22;
  v114 = type metadata accessor for DispatchWorkItemFlags();
  v34 = sub_100007FEC(v114);
  v116 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34, v38);
  sub_1000151DC();
  v112 = v39;
  sub_10000D414();
  v115 = type metadata accessor for DispatchQoS();
  v40 = sub_100007FEC(v115);
  v113 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40, v44);
  sub_1000151DC();
  v107 = v45;
  sub_10000D414();
  v46 = type metadata accessor for URL();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v50 = __chkstk_darwin(v46, v49);
  v97 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v51);
  v53 = &v95 - v52;
  v96 = &v95 - v52;
  v54 = sub_100006C30();
  v56 = sub_10026D814(v54, v55);
  v57 = sub_100005EB4(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  __chkstk_darwin(v57, v62);
  v64 = &v95 - v63;
  sub_100343100(v98, &v95 - v63, &qword_1006A5360, &qword_10057CB80);
  v65 = *(v47 + 16);
  v95 = v46;
  v65(v53, v100, v46);
  v65(&v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v99, v46);
  v66 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v67 = v66 + v61;
  v68 = *(v47 + 80);
  v69 = (v68 + v67 + 2) & ~v68;
  v70 = v48 + 7;
  v71 = (v48 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v68 + v72 + 16) & ~v68;
  v100 = (v70 + v73) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v76 = v117;
  *(v75 + 16) = v101;
  *(v75 + 24) = v76;
  sub_10046A210(v64, v75 + v66);
  v77 = (v75 + v67);
  *v77 = v102;
  v77[1] = v103;
  v78 = *(v47 + 32);
  v79 = v95;
  v78(v75 + v69, v96, v95);
  v80 = (v75 + v71);
  v81 = v106;
  *v80 = v105;
  v80[1] = v81;
  v82 = (v75 + v72);
  v83 = v104;
  *v82 = v108;
  v82[1] = v83;
  v78(v75 + v73, v97, v79);
  v85 = v109;
  v84 = v110;
  *(v75 + v100) = v109;
  v86 = (v75 + v74);
  v87 = v111;
  *v86 = v84;
  v86[1] = v87;
  v119[4] = sub_10046A280;
  v119[5] = v75;
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 1107296256;
  sub_10000A600();
  v119[2] = v88;
  v119[3] = &unk_1006318B8;
  v89 = _Block_copy(v119);

  swift_unknownObjectRetain();
  v85;
  sub_1000115CC(v84);
  v90 = v107;
  static DispatchQoS.unspecified.getter();
  v118 = _swiftEmptyArrayStorage;
  sub_1000088A8();
  sub_10000F270(v91, v92);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v93 = v112;
  sub_10000B910();
  v94 = v114;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v89);
  (*(v116 + 8))(v93, v94);
  (*(v113 + 8))(v90, v115);

  sub_100005EDC();
}

uint64_t sub_1004639C8(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v141 = a7;
  v142 = a8;
  v146 = a6;
  v149 = a4;
  v155 = a2;
  v148 = a1;
  v143 = a11;
  v16 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v156 = &v122 - v19;
  v132 = type metadata accessor for Locale();
  v133 = *(v132 - 8);
  v20 = *(v133 + 8);
  __chkstk_darwin(v132, v21);
  v130 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v139 = *(v23 - 8);
  v24 = *(v139 + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v154 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26, v28);
  v129 = &v122 - v30;
  v140 = v31;
  __chkstk_darwin(v29, v32);
  v34 = &v122 - v33;
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = __chkstk_darwin(v35, v38);
  v152 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39, v40);
  v151 = &v122 - v42;
  v44 = __chkstk_darwin(v41, v43);
  v46 = &v122 - v45;
  v48 = __chkstk_darwin(v44, v47);
  v50 = &v122 - v49;
  v52 = __chkstk_darwin(v48, v51);
  v54 = &v122 - v53;
  sub_100304AAC(v52, v55, v56, v57, v58, v59, v60, v61, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v147 = a5;
  v138 = a14;
  v137 = a13;
  v136 = a12;
  v134 = a10;
  v135 = a9;
  v62 = type metadata accessor for Logger();
  sub_10000AF9C(v62, qword_1006BA670);
  v144 = a3;
  sub_100343100(a3, v34, &qword_1006A5360, &qword_10057CB80);
  v150 = v36;
  v63 = v36 + 16;
  v64 = *(v36 + 16);
  v153 = v54;
  v64(v50, v54, v35);
  v145 = v64;
  v131 = v63;
  v64(v46, v146, v35);
  v65 = v155;

  v66 = v34;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  HIDWORD(v128) = v68;
  if (os_log_type_enabled(v67, v68))
  {
    v124 = v67;
    v126 = v50;
    v127 = v46;
    v69 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v157 = v123;
    *v69 = 136316418;
    *(v69 + 4) = sub_10002741C(v148, v65, &v157);
    *(v69 + 12) = 2080;
    v70 = v129;
    sub_100343100(v66, v129, &qword_1006A5360, &qword_10057CB80);
    v71 = v132;
    v72 = sub_100015468(v70, 1, v132);
    v125 = v37;
    if (v72 == 1)
    {
      v73 = v130;
      static Locale.current.getter();
      if (sub_100015468(v70, 1, v71) != 1)
      {
        sub_100009A04(v70, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      v73 = v130;
      (*(v133 + 4))(v130, v70, v71);
    }

    sub_10000F270(&qword_1006A3448, &type metadata accessor for Locale);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    (*(v133 + 1))(v73, v71);
    sub_100009A04(v66, &qword_1006A5360, &qword_10057CB80);
    v79 = sub_10002741C(v76, v78, &v157);

    *(v69 + 14) = v79;
    *(v69 + 22) = 1024;
    *(v69 + 24) = v149 & 1;
    *(v69 + 28) = 1024;
    *(v69 + 30) = v147 & 1;
    *(v69 + 34) = 2080;
    v75 = v151;
    v80 = v126;
    v81 = v145;
    v145(v151, v126, v35);
    v82 = String.init<A>(reflecting:)();
    v84 = v83;
    v85 = *(v150 + 8);
    v132 = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v80, v35);
    v86 = sub_10002741C(v82, v84, &v157);

    *(v69 + 36) = v86;
    *(v69 + 44) = 2080;
    v87 = v127;
    v81(v75, v127, v35);
    v88 = String.init<A>(reflecting:)();
    v90 = v89;
    v133 = v85;
    v85(v87, v35);
    v91 = sub_10002741C(v88, v90, &v157);

    *(v69 + 46) = v91;
    v92 = v124;
    _os_log_impl(&_mh_execute_header, v124, BYTE4(v128), "createAudioDisclosure: utterance: %s, locale: %s, utteranceChanged: %{BOOL}d, force: %{BOOL}d, tmpDirectoryURL: %s, directoryURL: %s", v69, 0x36u);
    swift_arrayDestroy();

    v37 = v125;
  }

  else
  {

    v74 = *(v150 + 8);
    v132 = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v46, v35);
    v133 = v74;
    v74(v50, v35);
    sub_100009A04(v66, &qword_1006A5360, &qword_10057CB80);
    v75 = v151;
  }

  v93 = v153;
  sub_1003046D0();
  sub_1003046D0();
  v157 = v141;
  v158 = v142;

  v94._countAndFlagsBits = 1717658414;
  v94._object = 0xE400000000000000;
  String.append(_:)(v94);
  v146 = v157;
  v142 = v158;
  v95 = type metadata accessor for TaskPriority();
  sub_10000AF74(v156, 1, 1, v95);
  v96 = v145;
  v145(v75, v93, v35);
  v96(v152, v143, v35);
  sub_100343100(v144, v154, &qword_1006A5360, &qword_10057CB80);
  v97 = v150;
  v98 = *(v150 + 80);
  v99 = (v98 + 64) & ~v98;
  v100 = (v37 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v98 + v100 + 16) & ~v98;
  v102 = v101 + v37;
  v144 = (*(v139 + 80) + v102 + 2) & ~*(v139 + 80);
  v145 = ((v140 + v144 + 7) & 0xFFFFFFFFFFFFFFF8);
  v103 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  v105 = v35;
  v106 = v104;
  v104[2] = 0;
  v104[3] = 0;
  v107 = v134;
  v104[4] = v135;
  v104[5] = v107;
  v108 = v155;
  v104[6] = v148;
  v104[7] = v108;
  v109 = *(v97 + 32);
  v110 = v104 + v99;
  v111 = v105;
  v109(v110, v151);
  v112 = (v106 + v100);
  v113 = v142;
  *v112 = v146;
  v112[1] = v113;
  v114 = v111;
  (v109)(v106 + v101, v152, v111);
  v115 = v106 + v102;
  *v115 = v149 & 1;
  v115[1] = v147 & 1;
  sub_10046A210(v154, v106 + v144);
  v116 = v136;
  *(v145 + v106) = v136;
  v117 = (v106 + v103);
  v118 = v137;
  v119 = v138;
  *v117 = v137;
  v117[1] = v119;

  swift_unknownObjectRetain();
  v120 = v116;
  sub_1000115CC(v118);
  sub_100463218();

  return v133(v153, v114);
}

uint64_t sub_100464454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v25;
  *(v8 + 168) = v26;
  *(v8 + 144) = v23;
  *(v8 + 152) = v24;
  *(v8 + 306) = v22;
  *(v8 + 305) = v21;
  *(v8 + 136) = v20;
  *(v8 + 120) = v19;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v15 = type metadata accessor for URL();
  *(v8 + 224) = v15;
  v16 = *(v15 - 8);
  *(v8 + 232) = v16;
  *(v8 + 240) = *(v16 + 64);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100464624, 0, 0);
}

uint64_t sub_100464624()
{
  sub_100006810();
  v1 = *(v0 + 264);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  URL.appendingPathComponent(_:)();
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_1004646EC;
  v6 = *(v0 + 264);
  v7 = *(v0 + 306);
  v8 = *(v0 + 305);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);

  return sub_100461EA0();
}

uint64_t sub_1004646EC()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = v5[34];
  v7 = v5[33];
  v8 = v5[29];
  v9 = v5[28];
  v10 = *v1;
  sub_100008060();
  *v11 = v10;
  *(v3 + 307) = v12;
  *(v3 + 280) = v0;

  *(v3 + 288) = *(v8 + 8);
  *(v3 + 296) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = sub_100008B88();
  v14(v13);
  sub_100007BBC();

  return _swift_task_switch(v15, v16, v17);
}

void sub_10046485C()
{
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[17];
  v5 = v0[13];
  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA670);
  v55 = *(v3 + 16);
  v55(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[36];
  v11 = v0[37];
  v12 = v0[32];
  v54 = *(v0 + 307);
  if (v9)
  {
    v13 = v0[31];
    log = v7;
    v14 = v0[28];
    v16 = v0[12];
    v15 = v0[13];
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v17 = 136315650;
    v0[8] = v16;
    v0[9] = v15;

    v18 = String.init<A>(reflecting:)();
    sub_10002741C(v18, v19, &v56);
    sub_10000BC78();

    *(v17 + 4) = v16;
    *(v17 + 12) = 2080;
    v55(v13, v12, v14);
    sub_10000534C();
    String.init<A>(reflecting:)();
    v20 = sub_100006C30();
    v10(v20);
    v21 = sub_100005334();
    v24 = sub_10002741C(v21, v22, v23);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    *(v0 + 304) = v54;
    v25 = String.init<A>(reflecting:)();
    v27 = sub_10002741C(v25, v26, &v56);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v8, "File for disclosure %s file is at %s, wroteNewFile: %s", v17, 0x20u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40();
  }

  else
  {
    v28 = v0[28];

    (v10)(v12, v28);
  }

  loga = v0[33];
  v53 = v0[32];
  v29 = v0[31];
  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[27];
  v49 = v0[26];
  v50 = v0[25];
  v45 = v0[24];
  v46 = v0[22];
  v34 = v0[20];
  v33 = v0[21];
  v47 = v0[19];
  v48 = v0[23];
  v55(v29, v0[17], v31);
  v35 = (*(v30 + 80) + 33) & ~*(v30 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  *(v36 + 32) = v54;
  (*(v30 + 32))(v36 + v35, v29, v31);
  v0[6] = sub_10046A5C4;
  v0[7] = v36;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100631930;
  v37 = _Block_copy(v0 + 2);
  sub_1000115CC(v34);
  static DispatchQoS.unspecified.getter();
  v0[10] = _swiftEmptyArrayStorage;
  sub_1000088A8();
  sub_10000F270(v38, v39);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100006B3C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v48 + 8))(v45, v46);
  v40 = sub_100022080();
  v41(v40);
  v42 = v0[7];

  sub_100009EF4();
  sub_100007D18();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100464CF4()
{
  sub_10000C698();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[24];

  sub_100009EF4();
  v7 = v0[35];

  return v6();
}

uint64_t sub_100464D84(void (*a1)(void, char *), uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7 - 8, v9);
  v12 = &v14 - v11;
  if (a1)
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 16))(v12, a4, v13);
    sub_10000AF74(v12, 0, 1, v13);
    a1(a3 & 1, v12);
    return sub_100009A04(v12, &unk_1006A52C0, &unk_10057D930);
  }

  return result;
}

void sub_100464E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100005EF4();
  v173 = v22;
  v174 = v21;
  LODWORD(v175) = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v177 = v30;
  v172 = v31;
  v166 = type metadata accessor for DispatchWorkItemFlags();
  v32 = sub_100007FEC(v166);
  v165 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32, v36);
  sub_1000151DC();
  v163 = v37;
  sub_10000D414();
  v164 = type metadata accessor for DispatchQoS();
  v38 = sub_100007FEC(v164);
  v162 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38, v42);
  sub_1000151DC();
  v161 = v43;
  v44 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v45 = sub_100007BF0(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45, v48);
  v170 = &v152 - v49;
  sub_10000D414();
  v50 = type metadata accessor for URL();
  v51 = sub_100007FEC(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  v57 = __chkstk_darwin(v51, v56);
  v169 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v57, v59);
  v62 = &v152 - v61;
  v64 = __chkstk_darwin(v60, v63);
  v66 = &v152 - v65;
  v68 = __chkstk_darwin(v64, v67);
  v70 = &v152 - v69;
  v171 = v71;
  __chkstk_darwin(v68, v72);
  v74 = &v152 - v73;
  URL.deletingLastPathComponent()();
  v181 = v74;
  v159 = v27;
  v160 = v25;
  URL.appendingPathComponent(_:)();
  v178 = v53;
  v75 = *(v53 + 8);
  v176 = v70;
  v76 = v50;
  v179 = v75;
  v180 = v53 + 8;
  (v75)(v70, v50);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v77 = type metadata accessor for Logger();
  v78 = sub_10000AF9C(v77, qword_1006BA670);
  v79 = v178 + 16;
  v80 = *(v178 + 16);
  v81 = v29;
  (v80)(v66, v29, v76);
  (v80)(v62, v181, v76);
  v82 = v177;

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  v157 = v84;
  v85 = os_log_type_enabled(v83, v84);
  v158 = v81;
  v168 = v79;
  v167 = v80;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v156 = v78;
    v87 = v86;
    v155 = swift_slowAlloc();
    v183[0] = v155;
    *v87 = 136315906;
    *(v87 + 4) = sub_10002741C(v172, v82, v183);
    *(v87 + 12) = 2080;
    v88 = v176;
    sub_1000333B4();
    v80();
    v89 = String.init<A>(reflecting:)();
    v153 = v62;
    v154 = v83;
    v91 = v90;
    v92 = sub_100008B88();
    v93 = v76;
    v94 = v179;
    v179(v92);
    v95 = sub_10002741C(v89, v91, v183);

    *(v87 + 14) = v95;
    *(v87 + 22) = 1024;
    *(v87 + 24) = v175 & 1;
    *(v87 + 28) = 2080;
    (v80)(v88, v153, v93);
    v96 = String.init<A>(reflecting:)();
    v98 = v97;
    v99 = sub_10000534C();
    v94(v99);
    v76 = v93;
    v100 = sub_10002741C(v96, v98, v183);

    *(v87 + 30) = v100;
    v101 = v154;
    _os_log_impl(&_mh_execute_header, v154, v157, "addEndTone: for: %s from: %s force: %{BOOL}d, completedURL: %s", v87, 0x26u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40();
  }

  else
  {

    v102 = v179;
    (v179)(v62, v76);
    v103 = sub_100008B88();
    v102(v103);
  }

  if (v175)
  {
    v104 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v105);
    v107 = v106;
    v183[0] = 0;
    v108 = [v104 removeItemAtURL:v106 error:v183];

    v109 = v183[0];
    if (!v108)
    {
      sub_10000667C();
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v110 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v111 = String._bridgeToObjectiveC()();

  v112 = [v110 fileExistsAtPath:v111];

  v113 = v167;
  if (v112)
  {
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = sub_100006DC4();
      sub_100018630(v116);
      _os_log_impl(&_mh_execute_header, v114, v115, "addEndTone: greeting with tone existed, returning it", v111, 2u);
      sub_100005F64();
    }

    v117 = v176;
    v118 = v181;
    v119 = v76;
    (v113)(v176, v181, v76);
    v120 = v178;
    v121 = (*(v178 + 80) + 32) & ~*(v178 + 80);
    v122 = swift_allocObject();
    v123 = v173;
    *(v122 + 2) = v173;
    *(v122 + 3) = a21;
    (*(v120 + 32))(&v122[v121], v117, v119);
    v183[4] = sub_10046A8C0;
    v183[5] = v122;
    v183[0] = _NSConcreteStackBlock;
    v183[1] = 1107296256;
    sub_10000A600();
    v183[2] = v124;
    v183[3] = &unk_100631700;
    v125 = _Block_copy(v183);
    sub_1000115CC(v123);
    v126 = v161;
    static DispatchQoS.unspecified.getter();
    v182 = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v127, v128);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    v129 = v163;
    sub_10000B910();
    v130 = v166;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v125);
    (*(v165 + 8))(v129, v130);
    (*(v162 + 8))(v126, v164);
    (v179)(v118, v119);
  }

  else
  {
    v131 = type metadata accessor for TaskPriority();
    sub_10000AF74(v170, 1, 1, v131);
    v132 = v176;
    v152 = v76;
    (v113)(v176, v158, v76);
    (v113)(v169, v181, v76);
    v133 = *(v178 + 80);
    v134 = (v133 + 32) & ~v133;
    v135 = v178;
    v136 = (v171 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 23) & 0xFFFFFFFFFFFFFFF8;
    v139 = (v138 + 23) & 0xFFFFFFFFFFFFFFF8;
    v175 = (v133 + v139 + 16) & ~v133;
    v140 = swift_allocObject();
    *(v140 + 16) = 0;
    *(v140 + 24) = 0;
    v141 = *(v135 + 32);
    v142 = v132;
    v143 = v152;
    v141(v140 + v134, v142, v152);
    v144 = v174;
    *(v140 + v136) = v174;
    v145 = (v140 + v137);
    v146 = v173;
    *v145 = v173;
    v145[1] = a21;
    v147 = (v140 + v138);
    v148 = v160;
    *v147 = v159;
    v147[1] = v148;
    v149 = (v140 + v139);
    v150 = v177;
    *v149 = v172;
    v149[1] = v150;
    v141(v140 + v175, v169, v143);

    v151 = v144;
    sub_1000115CC(v146);

    sub_1002762F0();

    (v179)(v181, v143);
  }

  sub_100005EDC();
}

uint64_t sub_100465938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v22;
  *(v8 + 688) = v21;
  *(v8 + 672) = v20;
  *(v8 + 664) = a8;
  *(v8 + 656) = a7;
  *(v8 + 648) = a6;
  *(v8 + 640) = a5;
  *(v8 + 632) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 704) = v9;
  v10 = *(v9 - 8);
  *(v8 + 712) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 720) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 728) = v12;
  v13 = *(v12 - 8);
  *(v8 + 736) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  v15 = *(*(sub_10026D814(&unk_1006A52C0, &unk_10057D930) - 8) + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v8 + 760) = v16;
  v17 = *(v16 - 8);
  *(v8 + 768) = v17;
  *(v8 + 776) = *(v17 + 64);
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();

  return _swift_task_switch(sub_100465B8C, 0, 0);
}

uint64_t sub_100465B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10003EBD4();
  sub_10000C1A0();
  v21 = v20[95];
  v22 = v20[94];
  v23 = v20[79];
  sub_100304C20();
  if (sub_100015468(v22, 1, v21) == 1)
  {
    sub_100009A04(v20[94], &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v24 = type metadata accessor for Logger();
    sub_1000075F0(v24, qword_1006BA670);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_100006DC4();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "addEndTone: creating temporary message file failed, will use message without end tone", v27, 2u);
      sub_10000F674();
    }

    v28 = v20[103];
    v29 = v20[97];
    v30 = v20[96];
    v31 = v20[95];
    v74 = v20[92];
    v75 = v20[91];
    v69 = v20[93];
    v70 = v20[90];
    v71 = v20[88];
    v32 = v20[82];
    v33 = v20[81];
    v72 = v20[80];
    v73 = v20[89];
    v34 = v20[79];

    (*(v30 + 16))(v28, v34, v31);
    v35 = ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = v32;
    (*(v30 + 32))(&v35[v36], v28, v31);
    v20[54] = sub_10046A0A8;
    v20[55] = v36;
    v20[50] = _NSConcreteStackBlock;
    v20[51] = 1107296256;
    v20[52] = sub_100004CEC;
    v20[53] = &unk_100631750;
    _Block_copy(v20 + 50);
    v37 = sub_10000BC78();
    sub_1000115CC(v37);
    static DispatchQoS.unspecified.getter();
    v20[75] = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v38, v39);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    v40 = *(v73 + 8);
    v41 = sub_100008B88();
    v42(v41);
    (*(v74 + 8))(v69, v75);
    v43 = v20[55];

    sub_10000AB74();

    sub_100009EF4();
    sub_10000C638();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v69, v70, v71, v72, v73, v74, v75, a17, a18, a19, a20);
  }

  else
  {
    v53 = v20[104];
    v54 = v20[96];
    v55 = v20[95];
    v56 = v20[94];
    v57 = *(v54 + 32);
    v20[105] = v57;
    v20[106] = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v57(v53, v56, v55);
    sub_100006AF0(0, &qword_1006A3FC8, AVURLAsset_ptr);
    if (qword_1006A0C58 != -1)
    {
      swift_once();
    }

    v58 = v20[104];
    v59 = v20[103];
    v60 = v20[96];
    v61 = v20[95];
    v62 = sub_10000AF9C(v61, qword_1006BAA60);
    v63 = *(v60 + 16);
    v20[107] = v63;
    v20[108] = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63(v59, v62, v61);
    v64 = sub_1004630C0(v59);
    v20[109] = v64;
    v63(v59, v58, v61);
    v20[110] = sub_1004630C0(v59);
    v20[111] = AVMediaTypeAudio;
    v20[18] = v20;
    v20[23] = v20 + 74;
    v20[19] = sub_100466134;
    v65 = swift_continuation_init();
    v66 = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
    v20[112] = v66;
    v20[41] = v66;
    v20[34] = _NSConcreteStackBlock;
    v20[35] = 1107296256;
    v20[36] = sub_100463158;
    v20[37] = &unk_100631778;
    v20[38] = v65;
    [v64 loadTracksWithMediaType:AVMediaTypeAudio completionHandler:?];
    sub_10000C638();

    return _swift_continuation_await(v67);
  }
}

uint64_t sub_100466134()
{
  sub_100006810();
  v1 = *v0;
  sub_100007BC8();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 904) = *(v4 + 176);
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100466264()
{
  v3 = v0[74];
  if (sub_10000B6F4(v3))
  {
    sub_10039C390(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v0[114] = v4;
    v5 = v0[112];
    v6 = v0[111];
    v7 = v0[110];

    v0[2] = v0;
    v0[7] = v0 + 70;
    v0[3] = sub_100466548;
    v8 = swift_continuation_init();
    v0[49] = v5;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100463158;
    v0[45] = &unk_1006317A0;
    v0[46] = v8;
    [v7 loadTracksWithMediaType:v6 completionHandler:v0 + 42];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v9 = type metadata accessor for Logger();
    sub_1000075F0(v9, qword_1006BA670);
    v10 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100016F00();
    os_log_type_enabled(v10, v11);
    sub_100007E88();
    v12 = v0[95];
    if (v13)
    {
      v14 = sub_100006DC4();
      sub_100018630(v14);
      sub_100027748(&_mh_execute_header, v15, v16, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
      sub_100005F64();
      v17 = v10;
    }

    else
    {
      sub_10000C5EC();
    }

    v18 = sub_10005168C();
    v19(v18);
    sub_10000AB74();

    sub_100009EF4();

    return v20();
  }
}

uint64_t sub_100466548()
{
  sub_100006810();
  v1 = *v0;
  sub_100007BC8();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 920) = *(v4 + 48);
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1004670AC()
{
  sub_1000066BC();
  v2 = *v1;
  v3 = *v1;
  sub_100008060();
  *v4 = v3;
  v5 = *(v2 + 960);
  *v4 = *v1;
  *(v3 + 968) = v0;

  v6 = *(v2 + 952);
  if (v0)
  {
    v7 = *(v3 + 944);
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100467210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v61 = v15;
  v19 = *(v15 + 944);
  v20 = *(v15 + 928);
  *(v15 + 1312) = *(v15 + 1264);
  *(v15 + 1328) = *(v15 + 1280);
  *(v15 + 1344) = *(v15 + 1296);
  epoch = kCMTimeZero.epoch;
  *(v15 + 624) = 0;
  *(v15 + 1384) = kCMTimeZero.value;
  *(v15 + 1392) = *&kCMTimeZero.timescale;
  *(v15 + 1400) = epoch;
  v22 = [v19 insertTimeRange:v15 + 1312 ofTrack:v20 atTime:v15 + 1384 error:v15 + 624];

  v23 = *(v15 + 624);
  if (!v22)
  {
    v38 = v23;
    sub_100010264();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v39 = type metadata accessor for Logger();
    sub_10000AF9C(v39, qword_1006BA670);
    sub_10000667C();
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10046A950();
    sub_10046A938();
    sub_1000153E4();
    v57 = v42;
    v58 = v41;
    v59 = *(v15 + 872);
    v43 = *(v15 + 832);
    v44 = *(v15 + 768);
    v45 = *(v15 + 760);
    if (v46)
    {
      sub_10002F7B0();
      v60 = sub_100021F34();
      sub_10000C4DC(4.8149e-34);
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v47 = sub_1000444CC();
      sub_10002741C(v47, v48, &v60);
      sub_10000BC78();

      *(v43 + 4) = v18;
      sub_100015C24(&_mh_execute_header, v49, v50, "addEndTone: cannot combine tracks, will use message without end tone: %s");
      sub_10000D588();
      sub_1000079DC();

      (*(v44 + 8))(v43, v45);
    }

    else
    {

      v51 = sub_100017E9C();
      v53(v51, v52);
    }

    sub_10000AB74();

    sub_100009EF4();
    sub_100007D18();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v15 + 944);
  v25 = v23;
  *(v15 + 976) = sub_10026D814(&qword_1006AC518, &qword_1005883E0);
  v26 = v24;
  *(v15 + 984) = static AVPartialAsyncProperty<A>.timeRange.getter();
  v27 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v28 = swift_task_alloc();
  *(v15 + 992) = v28;
  *v28 = v15;
  v28[1] = sub_1004675AC;
  v29 = *(v15 + 912);
  sub_10046A968();
  sub_100007D18();

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1004675AC()
{
  sub_10000C698();
  v2 = *v1;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  v2[125] = v0;

  v8 = v2[123];
  if (v0)
  {
    v9 = v2[118];
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1004676F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000C698();
  v15 = *(v14 + 976);
  *(v14 + 1120) = *(v14 + 1072);
  *(v14 + 1136) = *(v14 + 1088);
  *(v14 + 1152) = *(v14 + 1104);
  *(v14 + 1008) = static AVPartialAsyncProperty<A>.timeRange.getter();
  v16 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v17 = swift_task_alloc();
  *(v14 + 1016) = v17;
  *v17 = v14;
  v17[1] = sub_1004677EC;
  v18 = *(v14 + 928);
  sub_10046A968();

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1004677EC()
{
  sub_1000066BC();
  v2 = *v1;
  v3 = *v1;
  sub_100008060();
  *v4 = v3;
  v5 = *(v2 + 1016);
  *v4 = *v1;
  *(v3 + 1024) = v0;

  v6 = *(v2 + 1008);
  if (v0)
  {
    v7 = *(v3 + 944);
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10046834C()
{
  sub_100006810();
  v7 = *v0;
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100468448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_10046A9A4();
  a41 = v45;
  a42 = v46;
  a40 = v43;
  v47 = *(v43 + 816);
  v48 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v49 = [*(v43 + 1056) defaultManager];
  URL.path.getter();
  String._bridgeToObjectiveC()();
  sub_100010264();

  v51 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  v52 = sub_10000F5E4(v50, "fileExistsAtPath:");

  v53 = *(v43 + 1064);
  if (v52)
  {
    v54 = *(v43 + 864);
    v55 = *(v43 + 856);
    v56 = *(v43 + 784);
    v57 = *(v43 + 760);
    v58 = *(v43 + 696);
    v55(*(v43 + 792), *(v43 + 816), v57);
    v55(v56, v58, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v44 = *(v43 + 1048);
    v62 = *(v43 + 1040);
    if (v61)
    {
      v140 = *(v43 + 864);
      v146 = v60;
      v63 = *(v43 + 856);
      v64 = *(v43 + 824);
      v65 = *(v43 + 792);
      v142 = *(v43 + 784);
      v52 = *(v43 + 1048);
      v44 = *(v43 + 760);
      v66 = swift_slowAlloc();
      a30 = swift_slowAlloc();
      *v66 = 136315394;
      v67 = sub_100005334();
      v63(v67);
      sub_10000534C();
      v68 = String.init<A>(reflecting:)();
      v144 = v59;
      v70 = v69;
      v62(v65, v44);
      v71 = sub_10002741C(v68, v70, &a30);

      *(v66 + 4) = v71;
      v51 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      *(v66 + 12) = 2080;
      (v63)(v64, v142, v44);
      sub_10000534C();
      v72 = String.init<A>(reflecting:)();
      v62(v142, v44);
      sub_10046A91C();
      sub_100044498();
      v48 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v144, v146, "addEndTone: copy from  %s to %s", v66, 0x16u);
      swift_arrayDestroy();
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
      v77 = *(v43 + 792);
      v66 = *(v43 + 784);
      v52 = *(v43 + 760);

      v78 = sub_100008B88();
      (v62)(v78);
      v62(v77, v52);
    }

    v76 = *(v43 + 1032);
    v79 = *(v43 + 816);
    v80 = *(v43 + 696);
    sub_1003042B4();
  }

  else
  {
    v73 = *(v43 + 1032);
    v74 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v75 = os_log_type_enabled(v74, v66);
    v76 = *(v43 + 1032);
    if (v75)
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = [v76 status];

      _os_log_impl(&_mh_execute_header, v74, v66, "addEndTone: export of new greeting did not complete successfully: %ld", v52, 0xCu);
      sub_100006868();
    }

    else
    {
    }
  }

  v81 = *(v43 + 1048);
  (*(v43 + 1040))(*(v43 + 816), *(v43 + 760));
  sub_10046A8E4();
  v82 = [objc_opt_self() v48[209]];
  URL.path.getter();
  String._bridgeToObjectiveC()();
  sub_100010264();

  v84 = sub_10000F5E4(v83, v51[8]);

  v147 = *(v43 + 944);
  v141 = *(v43 + 936);
  v132 = *(v43 + 928);
  v135 = *(v43 + 880);
  v137 = *(v43 + 872);
  v85 = *(v43 + 864);
  v86 = *(v43 + 856);
  v129 = *(v43 + 848);
  v130 = *(v43 + 912);
  v87 = *(v43 + 840);
  v88 = *(v43 + 824);
  v143 = *(v43 + 768);
  v145 = *(v43 + 832);
  v148 = *(v43 + 760);
  v138 = *(v43 + 736);
  v139 = *(v43 + 744);
  v136 = *(v43 + 728);
  v133 = *(v43 + 712);
  v134 = *(v43 + 720);
  v131 = *(v43 + 704);
  if (v84)
  {
    a10 = *(v43 + 688);
    v89 = v52;
    v90 = *(v43 + 680);
    a11 = *(v43 + 656);
    a12 = v43 + 496;
    v91 = *(v43 + 648);
    v128 = *(v43 + 640);
    v86(v88, *(v43 + 696), v148);
    v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v93 = (v92 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    v87(v94 + v92, v88, v148);
    v95 = (v94 + v93);
    *v95 = v90;
    v95[1] = a10;
    v96 = (v94 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8));
    v97 = v91;
    *v96 = v91;
    v96[1] = a11;
    sub_10000E880();
    v98 = (v43 + 536);
    *(v43 + 536) = v94;
    *(v43 + 496) = _NSConcreteStackBlock;
    sub_1000105BC(COERCE_DOUBLE(1107296256));
    *(v43 + 520) = &unk_100631840;
    v100 = _Block_copy(v99);

    sub_10001DAC4(v97);
    *(v43 + 576) = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v101, v102);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000B910();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000100FC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v100);
  }

  else
  {
    v103 = *(v43 + 656);
    v104 = *(v43 + 648);
    v128 = *(v43 + 640);
    v86(v88, *(v43 + 632), v148);
    sub_10003DC40();
    v106 = v105 & 0xFFFFFFFFFFFFFFF8;
    v107 = swift_allocObject();
    v87(v107 + v52, v88, v148);
    v108 = (v107 + v106);
    *v108 = v104;
    v108[1] = v103;
    v98 = (v43 + 488);
    *(v43 + 480) = sub_10046A100;
    *(v43 + 488) = v107;
    *(v43 + 448) = _NSConcreteStackBlock;
    sub_1000183E4(COERCE_DOUBLE(1107296256));
    *(v43 + 464) = v109;
    *(v43 + 472) = &unk_1006317F0;
    v110 = _Block_copy((v43 + 448));
    sub_1000115CC(v104);
    static DispatchQoS.unspecified.getter();
    *(v43 + 568) = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v111, v112);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000B910();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000100FC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v110);
  }

  v113 = *(v133 + 8);
  v114 = sub_100006C30();
  v115(v114);
  v116 = sub_100022080();
  v117(v116, v136);
  (*(v143 + 8))(v145, v148);
  v118 = *v98;

  sub_10000AB74();

  sub_100009EF4();
  sub_100008DF8();

  return v120(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v141, v143, v145, v147, v148, a30, a31, a32, a33, a34);
}

uint64_t sub_100468C50()
{
  v3 = *(v0 + 904);
  swift_willThrow();

  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v4 = type metadata accessor for Logger();
  sub_1000075F0(v4, qword_1006BA670);
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  os_log_type_enabled(v5, v6);
  sub_100007E88();
  v7 = *(v0 + 760);
  if (v8)
  {
    v9 = sub_100006DC4();
    sub_100018630(v9);
    sub_100027748(&_mh_execute_header, v10, v11, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
    sub_100005F64();
    v12 = v5;
  }

  else
  {
    sub_10000C5EC();
  }

  v13 = sub_10005168C();
  v14(v13);
  sub_10000AB74();

  sub_100009EF4();

  return v15();
}

uint64_t sub_100468DF0()
{
  v3 = v0[115];
  v4 = v0[114];
  swift_willThrow();

  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA670);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  os_log_type_enabled(v6, v7);
  sub_100007E88();
  v8 = v0[95];
  if (v9)
  {
    v10 = sub_100006DC4();
    sub_100018630(v10);
    sub_100027748(&_mh_execute_header, v11, v12, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
    sub_100005F64();
    v13 = v6;
  }

  else
  {
    sub_10000C5EC();
  }

  v14 = sub_10005168C();
  v15(v14);
  sub_10000AB74();

  sub_100009EF4();

  return v16();
}

uint64_t sub_100468F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  v36 = *(v29 + 968);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v39)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC();
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1004691BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  v36 = *(v29 + 1000);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v39)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC();
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1004693E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  v36 = *(v29 + 1024);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v39)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC();
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100469604(uint64_t a1)
{
  v1 = *sub_100009B14((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

void sub_100469638(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v37 = a2;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v32[-v12];
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA670);
  v38 = *(v15 + 16);
  v39 = a1;
  v38(v19, a1, v14);

  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = a5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a4;
    v34 = v26;
    v40 = v26;
    *v25 = 136315394;
    sub_10000F270(&qword_1006A3BD0, &type metadata accessor for URL);
    v33 = v23;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v13;
    v30 = v29;
    (*(v15 + 8))(v19, v14);
    v31 = sub_10002741C(v27, v30, &v40);
    v13 = v28;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10002741C(v37, v21, &v40);
    _os_log_impl(&_mh_execute_header, v22, v33, "addEndTone: updating to greetingURL=%s for %s", v25, 0x16u);
    swift_arrayDestroy();
    a4 = v36;
  }

  else
  {

    (*(v15 + 8))(v19, v14);
  }

  if (a4)
  {
    v38(v13, v39, v14);
    sub_10000AF74(v13, 0, 1, v14);
    a4(v13);
    sub_100009A04(v13, &unk_1006A52C0, &unk_10057D930);
  }
}

void sub_1004699C4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA670);
  v30 = *(v12 + 16);
  v31 = a1;
  v30(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v10;
    v21 = v20;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v21 = 136315138;
    sub_10000F270(&qword_1006A3BD0, &type metadata accessor for URL);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a3;
    v23 = a2;
    v25 = v24;
    (*(v12 + 8))(v16, v11);
    v26 = sub_10002741C(v22, v25, &v32);
    a2 = v23;

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "addEndTone: the tone file didn't exist, returning %s", v21, 0xCu);
    sub_100009B7C(v27);

    v10 = v28;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  if (a2)
  {
    v30(v10, v31, v11);
    sub_10000AF74(v10, 0, 1, v11);
    a2(v10);
    sub_100009A04(v10, &unk_1006A52C0, &unk_10057D930);
  }
}

uint64_t sub_100469D00(void (*a1)(char *))
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3, v6);
  v9 = &v14 - v8;
  if (a1)
  {
    v10 = type metadata accessor for URL();
    sub_100008070(v10);
    v12 = *(v11 + 16);
    sub_1000333B4();
    v13();
    sub_10000AF74(v9, 0, 1, v10);
    a1(v9);
    return sub_100009A04(v9, &unk_1006A52C0, &unk_10057D930);
  }

  return result;
}

id sub_100469E18(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithAsset:a1 presetName:v3];

  return v4;
}

uint64_t sub_100469E84(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for URL();
  sub_100005EB4(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10003FBCC();
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v21 = *(v1 + v9);
  v11 = *(v1 + v10);
  v12 = *(v1 + v10 + 8);
  v15 = *(v1 + v13);
  v14 = *(v1 + v13 + 8);
  v17 = *(v1 + v16);
  v18 = *(v1 + v16 + 8);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_100035FE4;

  return sub_100465938(a1, v23, v22, v1 + v6, v21, v11, v12, v15);
}

uint64_t sub_100469FF4()
{
  v2 = type metadata accessor for URL();
  sub_100007FEC(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  if (*(v0 + 16))
  {
    v7 = *(v0 + 24);
  }

  v8 = sub_10046A990(v4 + 32);
  v9(v8);

  return _swift_deallocObject(v0, v1 + v6, v4 | 7);
}

uint64_t sub_10046A0AC()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 24);
  return sub_100469D00(*(v0 + 16));
}

void sub_10046A100()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10001C9E4();
  v10 = v0 + v9;
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1004699C4(v0 + v8, v11, v12);
}

void sub_10046A180()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10001C9E4();
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + v10);
  v15 = *(v0 + v10 + 8);

  sub_100469638(v0 + v8, v12, v13, v14, v15);
}

uint64_t sub_10046A210(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046A280()
{
  v1 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for URL();
  sub_100005EB4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64) + 7;
  sub_10003FBCC();
  v15 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  return sub_1004639C8(*(v0 + 16), *(v0 + 24), v0 + v3, *(v0 + v5), *(v0 + v5 + 1), v0 + v18, *(v0 + v16), *(v0 + v16 + 8), *(v0 + v17), *(v0 + v17 + 8), v0 + v13, *(v0 + v15), *(v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10046A3BC()
{
  sub_10000C1A0();
  v2 = v1;
  v3 = type metadata accessor for URL();
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = *(v7 + 64);
  v10 = (v9 + ((v8 + 64) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v8 + v10 + 16) & ~v8) + v9;
  v12 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v12);
  v14 = v13;
  v16 = v15;
  v17 = (*(v14 + 80) + v11 + 2) & ~*(v14 + 80);
  v18 = *(v16 + 64);
  sub_10001C9E4();
  v43 = v0[3];
  v44 = v0[2];
  v42 = v0[4];
  v41 = v0[5];
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = v0[6];
  v39 = v0[7];
  v21 = *(v0 + v10 + 8);
  v38 = *(v0 + v10);
  v22 = v0 + v11;
  LOBYTE(v11) = *(v0 + v11);
  v23 = v22[1];
  v24 = *(v0 + v19);
  v25 = *(v0 + v20);
  v26 = *(v0 + v20 + 8);
  v27 = swift_task_alloc();
  *(v2 + 16) = v27;
  *v27 = v2;
  v27[1] = sub_100035FE4;
  sub_10000C638();

  return sub_100464454(v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_10046A5C4()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = v0 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return sub_100464D84(v3, v4, v5, v6);
}

uint64_t sub_10046A628(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10046A6E0;

  return sub_100462E9C();
}

uint64_t sub_10046A6E0()
{
  sub_100006810();
  v2 = v1;
  sub_100005F18();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100008060();
  *v7 = v6;

  *v5 = v2 & 1;
  sub_100009EF4();

  return v8();
}

uint64_t sub_10046A7E0()
{
  sub_1000066BC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035FE0;
  sub_1000333B4();

  return v7();
}

void sub_10046A8E4()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[87];
}

uint64_t sub_10046A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 24) = v26;
  *(v25 + 32) = 2080;
  *(v24 + 544) = a23;
  *(v24 + 552) = a24;
}

uint64_t sub_10046A91C()
{

  return sub_10002741C(v0, v1, (v2 - 88));
}

BOOL sub_10046A938()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10046A950()
{
}

uint64_t sub_10046A9C0()
{

  return swift_arrayDestroy();
}

uint64_t sub_10046A9E0()
{

  return swift_task_create();
}

uint64_t sub_10046AA00(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *v23 = a1;

  return sub_10002741C(v24, a23, (v25 - 88));
}

uint64_t sub_10046AA20()
{

  return swift_allocObject();
}

uint64_t sub_10046AA38()
{
  sub_1000115CC(v0);

  return static DispatchQoS.unspecified.getter();
}

uint64_t sub_10046AA70()
{
  v1 = [v0 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001E550(v2);
  if (v3)
  {
    v4 = v3;
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578(v2);
    v35 = result;
    v36 = v6;
    v37 = v7 & 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      while (!__OFADD__(v8++, 1))
      {
        v11 = v35;
        v10 = v36;
        v12 = v37;
        v13 = sub_10000534C();
        sub_1002E944C(v13, v14, v12, v2);
        v16 = v15;
        v17 = [v15 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v38[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v2 & 0xC000000000000001) != 0)
        {
          if (!v12)
          {
            goto LABEL_32;
          }

          sub_10000534C();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&unk_1006A3C40, &unk_100580340);
          v23 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v23(v34, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_33;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v19 = 1 << *(v2 + 32);
          if (v11 >= v19)
          {
            goto LABEL_28;
          }

          v20 = v11 >> 6;
          v21 = *(v2 + 56 + 8 * (v11 >> 6));
          if (((v21 >> v11) & 1) == 0)
          {
            goto LABEL_29;
          }

          if (*(v2 + 36) != v10)
          {
            goto LABEL_30;
          }

          v22 = v21 & (-2 << (v11 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v20 << 6;
            v25 = v20 + 1;
            v26 = (v2 + 64 + 8 * v20);
            while (v25 < (v19 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                v29 = sub_10000534C();
                result = sub_100010000(v29, v30, 0);
                v19 = __clz(__rbit64(v27)) + v24;
                goto LABEL_22;
              }
            }

            v31 = sub_10000534C();
            result = sub_100010000(v31, v32, 0);
          }

LABEL_22:
          v35 = v19;
          v36 = v10;
          v37 = 0;
        }

        if (v8 == v4)
        {

          sub_100010000(v35, v36, v37);
          v33 = v38;
          return sub_1002F1FE8(v33);
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
    return sub_1002F1FE8(v33);
  }

  return result;
}

uint64_t sub_10046AD88()
{
  v1 = [v0 avMode];
  if (v1 > 2)
  {
    return 1;
  }

  else
  {
    return qword_100588488[v1];
  }
}

id sub_10046AE3C@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  v4 = *a1;
  v5 = type metadata accessor for InterventionRequest();
  (*(*(v5 - 8) + 104))(a2, v4, v5);

  return v7;
}

uint64_t type metadata accessor for DisclosureRequest()
{
  result = qword_1006AC580;
  if (!qword_1006AC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10046AF60()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    result = sub_10046B008();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10046B008()
{
  result = qword_1006AC590;
  if (!qword_1006AC590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006AC590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for disclosureRequestName(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_10046B140(char a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B180()
{
  sub_10000A4C4();
  sub_1000088C0();
  return Hasher._finalize()();
}

Swift::Int sub_10046B224(unsigned __int8 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B288(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = Hasher.init(_seed:)();
  a2(v3);
  sub_10000F93C();
  return Hasher._finalize()();
}

Swift::Int sub_10046B2D8(unsigned __int8 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B330(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10000A4C4();
  a2(a1);
  sub_10000ABAC();

  return Hasher._finalize()();
}

Swift::Int sub_10046B380(Swift::UInt a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B3C0(Swift::UInt32 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B400(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B444()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10046B4F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10046B570(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B5D8()
{
  Hasher.init(_seed:)();
  sub_1000088C0();
  return Hasher._finalize()();
}

Swift::Int sub_10046B630(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = Hasher.init(_seed:)();
  a3(v4);
  sub_10000F93C();
  return Hasher._finalize()();
}

Swift::Int sub_10046B694(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_10000ABAC();

  return Hasher._finalize()();
}

Swift::Int sub_10046B6E8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10046B72C(uint64_t a1, Swift::UInt32 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_10046B770(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620F20, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10046B7C4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_10046B81C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10046B770(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10046B84C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10046B7C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10046B87C()
{
  result = qword_1006AC5D8;
  if (!qword_1006AC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC5D8);
  }

  return result;
}

uint64_t sub_10046B8F8(char a1, uint64_t a2, void *a3)
{
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (v7)
  {
    v9 = "joinSharePlayActivity";
  }

  else
  {
    v9 = "StartCallTranslation";
  }

  v10._object = (v9 | 0x8000000000000000);
  v10._countAndFlagsBits = v8;
  String.append(_:)(v10);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);

  return v13;
}

uint64_t sub_10046BA00()
{
  v2 = type metadata accessor for URL();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_1000088F0();
  __chkstk_darwin(v9, v10);
  sub_10000ABD0();
  sub_10046BC94();
  sub_10000A4DC();
  v11 = *(v5 + 8);
  v11(v0, v2);
  URL.appendingPathComponent(_:)();
  return (v11)(v1, v2);
}

uint64_t sub_10046BB1C()
{
  v2 = type metadata accessor for URL();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_1000088F0();
  __chkstk_darwin(v9, v10);
  sub_10000ABD0();
  sub_10046BC94();
  sub_10000A4DC();
  v11 = *(v5 + 8);
  v11(v0, v2);
  URL.appendingPathComponent(_:)();
  return (v11)(v1, v2);
}

uint64_t sub_10046BC30()
{
  v0 = type metadata accessor for URL();
  sub_1002861B8(v0, qword_1006BAA60);
  sub_10000AF9C(v0, qword_1006BAA60);
  return URL.init(fileURLWithPath:)();
}

uint64_t sub_10046BC94()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 URLsForDirectory:5 inDomains:1];

  v7 = type metadata accessor for URL();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E8B38(v8, v4);

  result = sub_100015468(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    URL.appendingPathComponent(_:isDirectory:)();
    return (*(*(v7 - 8) + 8))(v4, v7);
  }

  return result;
}

void sub_10046BE00()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for DisclosureRequest();
  v3 = sub_100008070(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000F4E8();
  v78 = v7;
  sub_100006838();
  __chkstk_darwin(v8, v9);
  v77 = &v76 - v10;
  sub_100006838();
  __chkstk_darwin(v11, v12);
  v80 = &v76 - v13;
  sub_100006838();
  __chkstk_darwin(v14, v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for LanguageManager();
  v19 = sub_100007FEC(v18);
  v81 = v20;
  v82 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v27 = v2[8];
  v28 = (v1 + v2[7]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v1 + v27);
  v32 = *(v1 + v27 + 8);
  v33 = TUBundle();
  if (v33)
  {
    v34 = v33;
    v79 = v2;
    v35 = v1 + v2[5];
    v36.value._countAndFlagsBits = Locale.identifier.getter();
    v38 = v37;
    v39._countAndFlagsBits = v29;
    v39._object = v30;
    v40._countAndFlagsBits = v31;
    v40._object = v32;
    v36.value._object = v38;
    v41 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v39, v40, v34, v36);

    if (v41.value._object)
    {
      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4();
      }

      v42 = type metadata accessor for Logger();
      sub_10000AF9C(v42, qword_1006BA688);
      v43 = sub_10000667C();
      sub_1003812B0(v43, v17);
      v44 = v80;
      sub_1003812B0(v1, v80);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = sub_100005E84();
        v78 = v26;
        v48 = v47;
        v77 = swift_slowAlloc();
        object = v41.value._object;
        v85 = v77;
        *v48 = 136315650;
        countAndFlagsBits = v41.value._countAndFlagsBits;

        v49 = String.init<A>(reflecting:)();
        v51 = v50;
        v52 = sub_10002741C(v49, v50, &v85);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        LOBYTE(countAndFlagsBits) = *v17;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v17);
        v53 = sub_10000B8D0();
        sub_10002741C(v53, v54, v55);
        sub_100022DC4();
        *(v48 + 14) = v51;
        *(v48 + 22) = 2080;
        v56 = v44 + v79[5];
        countAndFlagsBits = Locale.identifier.getter();
        object = v57;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v44);
        v58 = sub_10000B8D0();
        sub_10002741C(v58, v59, v60);
        sub_100022DC4();
        *(v48 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v45, v46, "disclosureUtterance:%s for %s locale: %s", v48, 0x20u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();

        (*(v81 + 8))(v78, v82);
      }

      else
      {

        sub_1002B66D4(v44);
        sub_1002B66D4(v17);
        (*(v81 + 8))(v26, v82);
      }
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4();
      }

      v61 = type metadata accessor for Logger();
      sub_10000AF9C(v61, qword_1006BA688);
      v62 = sub_10000667C();
      v63 = v77;
      sub_1003812B0(v62, v77);
      v64 = v78;
      sub_1003812B0(v1, v78);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v67 = 136315394;
        LOBYTE(countAndFlagsBits) = *v63;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v63);
        v68 = sub_10000B8D0();
        sub_10002741C(v68, v69, v70);
        sub_100022DC4();
        *(v67 + 4) = v26;
        *(v67 + 12) = 2080;
        v71 = v64 + v79[5];
        countAndFlagsBits = Locale.identifier.getter();
        object = v72;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v64);
        v73 = sub_10000B8D0();
        sub_10002741C(v73, v74, v75);
        sub_100022DC4();
        *(v67 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Unable to localize %s for locale %s. Not creating an outgoing message", v67, 0x16u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      else
      {

        sub_1002B66D4(v64);
        sub_1002B66D4(v63);
      }

      (*(v81 + 8))(v26, v82);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10046C380()
{
  sub_100005EF4();
  v1 = v0;
  v114 = v2;
  v116 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Locale();
  v13 = sub_100007FEC(v12);
  v105 = v14;
  v106 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v104 = v19 - v18;
  sub_10000D414();
  v20 = type metadata accessor for DisclosureRequest();
  v21 = sub_100007FEC(v20);
  v108 = v22;
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v21, v25);
  v113 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  sub_10000C1C4();
  v111 = v29;
  v109 = v30;
  __chkstk_darwin(v31, v32);
  sub_10000C1C4();
  v107 = v33;
  sub_10000D414();
  v102 = type metadata accessor for URL();
  v34 = sub_100007FEC(v102);
  v101 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34, v38);
  sub_100007FDC();
  v103 = v40 - v39;
  sub_10000D414();
  v41 = type metadata accessor for LanguageManager();
  v42 = sub_100007FEC(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42, v47);
  sub_100007FDC();
  v50 = v49 - v48;
  v51 = v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0;
  v1[2] = v11;
  v1[3] = v9;
  v1[4] = v7;
  sub_1003812B0(v5, v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  v52 = objc_allocWithZone(TUFeatureFlags);
  v112 = v11;
  v115 = v9;
  swift_unknownObjectRetain();
  [v52 init];
  LanguageManager.init(featureFlags:)();
  (*(v44 + 32))(v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_languageManager, v50, v41);
  *(v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities) = v116;
  LOBYTE(v52) = *v5;
  v110 = v20[5];
  v53 = Locale.identifier.getter();
  v55 = v54;

  v56 = sub_10046B8F8(v52, v53, v55);
  v57 = (v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  *v57 = v56;
  v57[1] = v58;
  if (v5[v20[10]] == 1)
  {
    if (qword_1006A0C58 != -1)
    {
      swift_once();
    }

    v59 = v102;
    v60 = sub_10000AF9C(v102, qword_1006BAA60);
    v61 = v103;
    (*(v101 + 16))(v103, v60, v59);
    v62 = [objc_opt_self() tu_defaults];
    v63 = type metadata accessor for FileChecksum();
    swift_allocObject();
    v64 = sub_1003FCFE8(0x6365684370656542, 0xEC0000006D75736BLL, v61, v62);
    if (v64)
    {
      v65 = &off_10062EC60;
    }

    else
    {
      v63 = 0;
      v65 = 0;
      v118[1] = 0;
      v118[2] = 0;
    }

    v118[0] = v64;
    v118[3] = v63;
    v118[4] = v65;
    swift_beginAccess();
    sub_10046EC28(v118, v51);
    swift_endAccess();
  }

  type metadata accessor for DisclosureGenerator();
  sub_10046BE00();
  v67 = v66;
  v69 = v68;
  v70 = &v5[v20[6]];
  v71 = *v70;
  v72 = v70[1];
  v73 = objc_opt_self();

  v74 = [v73 tu_defaults];
  v75 = sub_10026D814(&qword_1006A4390, &qword_10057F110);
  swift_allocObject();
  v76 = sub_1002E86B8(v71, v72, v67, v69, v74);
  v77 = (v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum);
  v77[3] = v75;
  v77[4] = &off_10062EC60;
  *v77 = v76;
  v78 = v1[3];
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = v107;
  sub_1003812B0(v5, v107);
  v81 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v79;
  sub_10046EB60(v80, v82 + v81);
  v83 = *(v78 + 104);
  *(v78 + 96) = sub_10046EBC4;
  *(v78 + 104) = v82;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v84 = type metadata accessor for Logger();
  sub_10000AF9C(v84, qword_1006BA688);
  v85 = v111;
  sub_1003812B0(v5, v111);
  v86 = v113;
  sub_1003812B0(v5, v113);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v118[0] = swift_slowAlloc();
    *v89 = 136315394;
    v117 = *v85;
    v90 = v5;
    v91 = String.init<A>(reflecting:)();
    v92 = v85;
    v94 = v93;
    sub_1002B66D4(v92);
    v95 = sub_10002741C(v91, v94, v118);

    *(v89 + 4) = v95;
    *(v89 + 12) = 2080;
    (*(v105 + 16))(v104, v86 + v20[5], v106);
    v96 = String.init<A>(reflecting:)();
    v98 = v97;
    sub_1002B66D4(v86);
    v99 = sub_10002741C(v96, v98, v118);

    *(v89 + 14) = v99;
    v5 = v90;
    _os_log_impl(&_mh_execute_header, v87, v88, "initialized DisclosureGenerator for %s, locale: %s", v89, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    sub_1002B66D4(v86);
    sub_1002B66D4(v85);
  }

  Locale.identifier.getter();
  sub_10046D004();

  swift_unknownObjectRelease();

  sub_1002B66D4(v5);
  sub_100005EDC();
}

uint64_t sub_10046CB54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10046D004();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2 + *(type metadata accessor for DisclosureRequest() + 20);
    Locale.identifier.getter();
    sub_10046D004();
  }

  return result;
}

void sub_10046CC28()
{
  sub_100005EF4();
  v1 = type metadata accessor for URL();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_10000F4E8();
  v33 = v8;
  sub_100006838();
  __chkstk_darwin(v9, v10);
  v12 = &v32 - v11;
  v13 = v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest;
  v14 = *(v13 + *(type metadata accessor for DisclosureRequest() + 40));
  v15 = v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation;
  v17 = *(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v16 = *(v15 + 8);

  if (v14 == 1)
  {
    sub_10046BB1C();

    sub_10046CF7C();
    v18 = sub_100015C44();
    v16(v18);
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v19 = type metadata accessor for Logger();
    sub_10000AF9C(v19, qword_1006BA688);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = sub_100005E84();
      v32 = v16;
      v24 = v23;
      v34 = v23;
      sub_10000EC54(1.5047e-36);
      sub_10046BB1C();
LABEL_10:

      (*(v4 + 16))(v33, v12, v1);
      v28 = String.init<A>(reflecting:)();
      v30 = v29;
      v32(v12, v1);
      v31 = sub_10002741C(v28, v30, &v34);

      *(v22 + 10) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "disclsoure file exists: %{BOOL}d at %s", v22, 0x12u);
      sub_100009B7C(v24);
      sub_100005F40();
      sub_100005F40();
    }
  }

  else
  {
    sub_10046BA00();

    sub_10046CF7C();
    v25 = sub_100015C44();
    v16(v25);
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA688);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v27 = sub_100005E84();
      v32 = v16;
      v24 = v27;
      v34 = v27;
      sub_10000EC54(1.5047e-36);
      sub_10046BA00();
      goto LABEL_10;
    }
  }

  sub_100005EDC();
}

id sub_10046CF7C()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  return v2;
}

void sub_10046D004()
{
  sub_100005EF4();
  v255 = v0;
  v2 = v1;
  v4 = v3;
  v246 = v5;
  v6 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v242 = &v234 - v9;
  sub_10000D414();
  v249 = type metadata accessor for URL();
  v10 = sub_100007FEC(v249);
  v241 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_10000F4E8();
  v239 = v15;
  sub_100006838();
  __chkstk_darwin(v16, v17);
  v240 = &v234 - v18;
  sub_100006838();
  __chkstk_darwin(v19, v20);
  sub_10000C1C4();
  v248 = v21;
  sub_10000D414();
  v22 = type metadata accessor for DisclosureRequest();
  v23 = sub_100008070(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  sub_10000F4E8();
  v238 = v27;
  sub_100006838();
  __chkstk_darwin(v28, v29);
  sub_10000C1C4();
  v251 = v30;
  sub_10000D414();
  v31 = type metadata accessor for Locale();
  v32 = sub_100007FEC(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  v38 = __chkstk_darwin(v32, v37);
  v40 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v38, v41);
  v44 = &v234 - v43;
  __chkstk_darwin(v42, v45);
  sub_10000C1C4();
  v245 = v46;
  if (v2)
  {
    v47 = v2;
  }

  else
  {
    v48 = v46;
    static Locale.current.getter();
    v4 = Locale.identifier.getter();
    v47 = v49;
    (*(v34 + 8))(v48, v31);
  }

  v253 = v22;
  v254 = (v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  v50 = *(v34 + 16);
  v51 = v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest + *(v22 + 20);
  v250 = (v34 + 16);
  v252 = v50;
  (v50)(v44, v51, v31);
  v52 = Locale.identifier.getter();
  v54 = v53;
  v55 = *(v34 + 8);

  v247 = v31;
  v244 = v55;
  v243 = v34 + 8;
  (v55)(v44, v31);
  v56 = v52 == v4 && v54 == v47;
  v57 = v47;
  if (v56)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      v59 = v253;
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v60 = type metadata accessor for Logger();
      sub_100008CF0(v60, qword_1006BA670);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v257[0] = swift_slowAlloc();
        *v63 = 136315394;
        (v252)(v245, &v254[*(v59 + 20)], v247);
        v64 = Locale.identifier.getter();
        v66 = v65;
        v67 = sub_10000B8D0();
        v244(v67);
        v68 = sub_10002741C(v64, v66, v257);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = sub_10002741C(v4, v47, v257);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "disclosureRequest locale: %s doesn't match %s", v63, 0x16u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      else
      {
      }

      goto LABEL_46;
    }
  }

  v70 = v4;
  type metadata accessor for DisclosureGenerator();
  v71 = v254;
  v72 = v251;
  sub_1003812B0(v254, v251);
  sub_10046BE00();
  v74 = v73;
  v76 = v75;
  sub_1002B66D4(v72);
  if (v76)
  {
    v235 = v74;
    v236 = v76;
    v77 = *(v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum + 24);
    v78 = *(v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum + 32);
    v237 = (v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum);
    sub_100009B14((v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum), v77);
    sub_1000083C0();
    v80 = *(v79 + 64);
    __chkstk_darwin(v81, v82);
    v84 = sub_100017464(v83);
    v85(v84);
    v86 = sub_10000D5BC();
    v87(v86);
    v88 = sub_100007E9C();
    v89(v88, v77);
    if (v78)
    {

      v91 = v253;
      v90 = v254;
      v92 = v252;
LABEL_36:
      v161 = v247;
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v162 = type metadata accessor for Logger();
      sub_100008CF0(v162, qword_1006BA670);
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v257[0] = v234;
        *v165 = 136316162;
        v166 = v251;
        sub_1003812B0(v90, v251);
        sub_10000FB64();
        v167 = String.init<A>(reflecting:)();
        LODWORD(v238) = v164;
        v168 = v167;
        v170 = v169;
        sub_1002B66D4(v166);
        v171 = sub_10002741C(v168, v170, v257);

        *(v165 + 4) = v171;
        *(v165 + 12) = 2080;
        v172 = *(v253 + 20);
        v173 = sub_1000163E8();
        (v92)(v173);
        sub_1002E8ABC();
        v174 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = sub_100016124();
        v176(v175);
        v177 = sub_10002741C(v174, v166, v257);

        *(v165 + 14) = v177;
        *(v165 + 22) = 2080;
        v178 = v237[3];
        v179 = v237[4];
        sub_100009B14(v237, v178);
        sub_1000083C0();
        v181 = v180;
        v183 = *(v182 + 64);
        __chkstk_darwin(v184, v185);
        sub_100007FDC();
        v188 = v187 - v186;
        (*(v181 + 16))(v187 - v186);
        LOBYTE(v179) = (*(v179 + 8))(v178, v179);
        (*(v181 + 8))(v188, v178);
        v90 = v254;
        LOBYTE(v256[0]) = v179 & 1;
        v189 = String.init<A>(reflecting:)();
        v191 = sub_10002741C(v189, v190, v257);

        *(v165 + 24) = v191;
        *(v165 + 32) = 2080;
        sub_10046CC28();
        LOBYTE(v256[0]) = v192 & 1;
        v193 = String.init<A>(reflecting:)();
        v195 = sub_10002741C(v193, v194, v257);

        *(v165 + 34) = v195;
        *(v165 + 42) = 2080;
        v91 = v253;
        LOBYTE(v256[0]) = v246 & 1;
        v196 = String.init<A>(reflecting:)();
        v198 = sub_10002741C(v196, v197, v257);

        *(v165 + 44) = v198;
        _os_log_impl(&_mh_execute_header, v163, v238, "Generating disclosure for %s %s because disclosureUtteranceChecksum:%s fileExists:%s force: %s", v165, 0x34u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      v199 = v255;
      v200 = *(v255 + 16);
      v201 = *v90 == 0;
      v202 = 0xD000000000000013;
      if (!*v90)
      {
        v202 = 0xD000000000000014;
      }

      v253 = *(v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities);
      v254 = v202;
      if (v201)
      {
        v203 = "joinSharePlayActivity";
      }

      else
      {
        v203 = "StartCallTranslation";
      }

      v251 = v203;
      v204 = (v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v205 = *(v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v206 = *(v255 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

      v250 = v200;

      sub_10046BA00();

      v207 = v242;
      (v252)(v242, &v90[*(v91 + 20)], v161);
      sub_10000AF74(v207, 0, 1, v161);
      v208 = *(v199 + 32);
      v245 = *(v199 + 24);
      v209 = *v204;
      v210 = v204[1];
      swift_unknownObjectRetain();

      v211 = v239;
      sub_10046BC94();

      v212 = v240;
      URL.appendingPathComponent(_:)();
      v247 = *(v241 + 8);
      v247(v211, v249);
      v213 = v237[3];
      v214 = v237[4];
      sub_100009B14(v237, v213);
      v252 = &v234;
      sub_1000083C0();
      v216 = *(v215 + 64);
      __chkstk_darwin(v217, v218);
      sub_100007FDC();
      v220 = sub_100017464(v219);
      v221(v220);
      (*(v214 + 8))(v213, v214);
      v222 = sub_100007E9C();
      v223(v222, v213);
      v224 = swift_allocObject();
      v225 = v235;
      v224[2] = v199;
      v224[3] = v225;
      v226 = v236;
      v224[4] = v236;

      BYTE1(v232) = v214 & 1;
      LOBYTE(v232) = v246 & 1;
      v231 = v208;
      v227 = v250;
      v228 = v248;
      sub_100463470(v250, v225, v226, v254, v251 | 0x8000000000000000, v248, v207, v245, v231, v212, v232, sub_10046EB4C, v224, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, BYTE1(v242), v243, v244);

      swift_unknownObjectRelease();

      v229 = v249;
      v230 = v247;
      v247(v212, v249);
      sub_100009A04(v207, &qword_1006A5360, &qword_10057CB80);
      v230(v228, v229);
      goto LABEL_46;
    }

    v108 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
    v109 = v255;
    swift_beginAccess();
    sub_1002E86CC(v109 + v108, v257);
    v110 = v258;
    if (v258)
    {
      v111 = v259;
      sub_100009B14(v257, v258);
      sub_1000083C0();
      v113 = *(v112 + 64);
      __chkstk_darwin(v114, v115);
      sub_100007FDC();
      v117 = sub_100017464(v116);
      v118(v117);
      sub_100009A04(v257, &qword_1006A4398, &qword_10057F118);
      v119 = sub_10000D5BC();
      v120(v119);
      v121 = sub_100007E9C();
      v122(v121, v110);
      v92 = v252;
      if (v111)
      {

        v91 = v253;
        v90 = v254;
        goto LABEL_36;
      }
    }

    else
    {
      sub_100009A04(v257, &qword_1006A4398, &qword_10057F118);
      v92 = v252;
    }

    v90 = v254;
    if (v246)
    {

      v91 = v253;
      goto LABEL_36;
    }

    sub_10046CC28();
    v91 = v253;
    if ((v123 & 1) == 0)
    {

      goto LABEL_36;
    }

    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v124 = type metadata accessor for Logger();
    sub_100008CF0(v124, qword_1006BA670);

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();

    v127 = os_log_type_enabled(v125, v126);
    v128 = v237;
    if (v127)
    {
      v129 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v256[0] = v252;
      *v129 = 136316162;
      v130 = v251;
      sub_1003812B0(v254, v251);
      sub_10000FB64();
      v131 = String.init<A>(reflecting:)();
      LODWORD(v254) = v126;
      v132 = v131;
      v134 = v133;
      sub_1002B66D4(v130);
      v135 = sub_10002741C(v132, v134, v256);

      *(v129 + 4) = v135;
      *(v129 + 12) = 2080;
      v257[0] = v70;
      v257[1] = v57;
      v136 = String.init<A>(reflecting:)();
      v138 = sub_10002741C(v136, v137, v256);

      *(v129 + 14) = v138;
      *(v129 + 22) = 2080;
      v139 = v128[3];
      v140 = v128[4];
      sub_100009B14(v128, v139);
      sub_1000083C0();
      v142 = v141;
      v144 = *(v143 + 64);
      __chkstk_darwin(v145, v146);
      sub_100007FDC();
      (*(v142 + 16))(v148 - v147);
      LOBYTE(v140) = (*(v140 + 8))(v139, v140);
      v149 = *(v142 + 8);
      v150 = sub_10000B8D0();
      v151(v150);
      LOBYTE(v257[0]) = v140 & 1;
      v152 = String.init<A>(reflecting:)();
      v154 = sub_10002741C(v152, v153, v256);

      *(v129 + 24) = v154;
      *(v129 + 32) = 2080;
      v155 = v255;
      sub_10046CC28();
      LOBYTE(v257[0]) = v156 & 1;
      v157 = String.init<A>(reflecting:)();
      sub_10002741C(v157, v158, v256);
      sub_10000667C();

      *(v129 + 34) = v155;
      *(v129 + 42) = 2080;
      LOBYTE(v257[0]) = 0;
      v159 = String.init<A>(reflecting:)();
      sub_10002741C(v159, v160, v256);
      sub_10000667C();

      *(v129 + 44) = v155;
      _os_log_impl(&_mh_execute_header, v125, v254, "Not generating disclosure for %s localeIdentifier: %s  becuase %s, fileExists:%s force: %s", v129, 0x34u);
      swift_arrayDestroy();
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }

  else
  {

    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v93 = type metadata accessor for Logger();
    sub_100008CF0(v93, qword_1006BA670);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    v96 = os_log_type_enabled(v94, v95);
    v97 = v253;
    v98 = v247;
    if (v96)
    {
      v99 = swift_slowAlloc();
      v100 = sub_100005E84();
      v257[0] = v100;
      *v99 = 136315138;
      v101 = *(v97 + 20);
      v102 = sub_1000163E8();
      v103 = v252;
      (v252)(v102);
      (v103)(v40, v71, v98);
      v104 = String.init<A>(reflecting:)();
      v105 = sub_100016124();
      v106(v105);
      v107 = sub_10002741C(v104, v103, v257);

      *(v99 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v94, v95, "Unable to localize start disclosure for locale %s. Not creating start recording disclosure", v99, 0xCu);
      sub_100009B7C(v100);
      sub_100005F40();
      sub_100005F40();
    }
  }

LABEL_46:
  sub_100005EDC();
}

uint64_t sub_10046E230(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v53 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v53 - v19;
  v21 = (a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v22 = *(a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v23 = *(a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

  sub_10046BA00();

  URL.deletingLastPathComponent()();
  v24 = *(v8 + 8);
  v24(v13, v7);
  v57 = "esd19DisclosureUtilities";
  URL.appendingPathComponent(_:)();
  v60 = v24;
  v24(v17, v7);
  v25 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v26 = String._bridgeToObjectiveC()();

  LODWORD(v13) = [v25 fileExistsAtPath:v26];

  v27 = v13 ^ 1;
  if ((a1 & 1) == 0 && !v27)
  {
    return v60(v20, v7);
  }

  v55 = a3;
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000AF9C(v29, qword_1006BA670);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v56 = v7;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62[0] = v54;
    *v33 = 136315394;
    HIBYTE(v61) = a1 & 1;
    v34 = String.init<A>(reflecting:)();
    v36 = sub_10002741C(v34, v35, v62);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    HIBYTE(v61) = v27;
    v37 = String.init<A>(reflecting:)();
    v39 = sub_10002741C(v37, v38, v62);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "wroteNewFile: %s or disclosureWithEndtone doesn't exist: %s. Creating new disclosure with endtone.", v33, 0x16u);
    swift_arrayDestroy();
  }

  v40 = v55;
  v41 = v55 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest;
  if (*(v41 + *(type metadata accessor for DisclosureRequest() + 40)) == 1)
  {
    v42 = *(v40 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities);
    v43 = *v21;
    v44 = v21[1];

    sub_10046BA00();

    v45 = *(v40 + 16);

    sub_100464E90(v58, v59, v17, 0xD000000000000016, v57 | 0x8000000000000000, 1, v45, sub_10046EB58, v40, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1]);

    v46 = v17;
    v47 = v56;
    v48 = v60;
    v60(v46, v56);
  }

  else
  {
    v49 = [objc_opt_self() defaultCenter];
    if (qword_1006A0798 != -1)
    {
      swift_once();
    }

    [v49 postNotificationName:qword_1006BA1C8 object:0];

    v47 = v56;
    v48 = v60;
  }

  sub_100009AB0(v40 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum, v62);
  v50 = v63;
  v51 = v64;
  sub_100009B14(v62, v63);
  (*(v51 + 16))(v50, v51);
  v48(v20, v47);
  return sub_100009B7C(v62);
}

uint64_t sub_10046E784(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1006A0798 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1006BA1C8 object:0];

  v4 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
  swift_beginAccess();
  sub_1002E86CC(a2 + v4, v11);
  if (!v12)
  {
    return sub_100009A04(v11, &qword_1006A4398, &qword_10057F118);
  }

  sub_100009AB0(v11, v8);
  sub_100009A04(v11, &qword_1006A4398, &qword_10057F118);
  v5 = v9;
  v6 = v10;
  sub_100009B14(v8, v9);
  (*(v6 + 16))(v5, v6);
  return sub_100009B7C(v8);
}

uint64_t sub_10046E8D0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_languageManager;
  v3 = type metadata accessor for LanguageManager();
  sub_100008070(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities);

  sub_1002B66D4(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum));
  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum, &qword_1006A4398, &qword_10057F118);
  return v0;
}

uint64_t sub_10046E99C()
{
  sub_10046E8D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DisclosureGenerator()
{
  result = qword_1006AC618;
  if (!qword_1006AC618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046EA48()
{
  result = type metadata accessor for LanguageManager();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DisclosureRequest();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10046EB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EBC4()
{
  v1 = *(type metadata accessor for DisclosureRequest() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10046CB54(v2, v3);
}

uint64_t sub_10046EC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A4398, &qword_10057F118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10046EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = objc_opt_self();

    v9 = [v8 sharedInstance];
    if (v9)
    {
      v10 = v9;
      sub_10026D814(&qword_1006A4458, &unk_100588070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057CA70;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = a1;
      *(inited + 80) = a2;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v12;
      sub_10000890C();
      v13 = [objc_allocWithZone(NSNumber) initWithInteger:{5, v18, v20}];
      v14 = sub_1000496D4();
      *(inited + 168) = v14;
      *(inited + 144) = v13;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v15;
      sub_10000890C();
      v16 = [objc_allocWithZone(NSNumber) initWithBool:{1, v19, v21}];
      *(inited + 240) = v14;
      *(inited + 216) = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C();
      *(inited + 312) = &type metadata for String;
      *(inited + 288) = a3;
      *(inited + 296) = a4;

      v17 = Dictionary.init(dictionaryLiteral:)();
      sub_10046F2D0(v17, 0x400000000000, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10046EE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v7 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v45 - v24;
  sub_100274DC4(a1, v15);
  if (sub_100015468(v15, 1, v16) == 1)
  {
    v12 = v15;
LABEL_5:
    sub_1003C620C(v12);
    v27 = [objc_opt_self() sharedInstance];
    if (v27)
    {
      v28 = v27;
      sub_10026D814(&qword_1006A4458, &unk_100588070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v30;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v47;
      *(inited + 80) = a4;

      v31 = Dictionary.init(dictionaryLiteral:)();
      sub_10046F2D0(v31, 0x800000000000, v28);

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v46 = a4;
  v26 = *(v17 + 32);
  v26(v25, v15, v16);
  sub_100274DC4(a2, v12);
  if (sub_100015468(v12, 1, v16) == 1)
  {
    (*(v17 + 8))(v25, v16);
    a4 = v46;
    goto LABEL_5;
  }

  v26(v22, v12, v16);
  v32 = [objc_opt_self() sharedInstance];
  if (!v32)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v33 = v32;
  sub_10026D814(&qword_1006A4458, &unk_100588070);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10057E830;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v35;
  sub_10000A508();
  v36 = Locale.identifier.getter();
  *(v34 + 96) = &type metadata for String;
  *(v34 + 72) = v36;
  *(v34 + 80) = v37;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v38;
  sub_10000A508();
  v39 = Locale.identifier.getter();
  *(v34 + 168) = &type metadata for String;
  *(v34 + 144) = v39;
  *(v34 + 152) = v40;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v41;
  sub_10000A508();
  *(v34 + 240) = &type metadata for String;
  v42 = v46;
  *(v34 + 216) = v47;
  *(v34 + 224) = v42;

  v43 = Dictionary.init(dictionaryLiteral:)();
  sub_10046F2D0(v43, 0x800000000000, v33);

  v44 = *(v17 + 8);
  v44(v22, v16);
  v44(v25, v16);
}

void sub_10046F2D0(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 sendMessageWithPayload:isa andIdentifier:a2];
}

void *sub_10046F360(void *a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = (&v11 - v6);
  v1[2] = 0;
  v1[5] = 0;
  v8 = OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish;
  v9 = type metadata accessor for Date();
  sub_10000AF74(v1 + v8, 1, 1, v9);
  sub_10000AF74(v7, 1, 1, v9);
  v1[3] = sub_10046F45C(v7, [a1 voIPDOSCount]);
  v1[4] = a1;
  swift_unknownObjectRetain();
  sub_10046F544();
  swift_unknownObjectRelease();
  return v1;
}

void *sub_10046F45C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = v2;
      v5 = *(sub_10026D814(&qword_1006A3C70, &unk_10057EA80) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_100270E18(v3, i);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1003EE32C(v3);
    return v4;
  }

  return result;
}

void sub_10046F544()
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v7 = &v14[-v6];
  v8 = *(v0 + 16);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v10 = *(*(v0 + 24) + 16);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v1 = v9 % v10;
  *(v0 + 16) = v9 % v10;
  static Date.now.getter();
  v11 = type metadata accessor for Date();
  sub_10000AF74(v7, 0, 1, v11);
  swift_beginAccess();
  v9 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_100470D5C(v9);
  v9 = v13;
  *(v0 + 24) = v13;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v1 < *(v9 + 16))
  {
    sub_1003B3734(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1);
    *(v0 + 24) = v9;
    swift_endAccess();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_10046F6D4()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2 - 8, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v47 = &v47 - v11;
  __chkstk_darwin(v10, v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v47 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v47 - v27;
  v29 = OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish;
  swift_beginAccess();
  sub_100270E18(v1 + v29, v14);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    result = sub_1003EE32C(v14);
  }

  else
  {
    (*(v16 + 32))(v28, v14, v15);
    Date.timeIntervalSinceNow.getter();
    v32 = v31;
    (*(v16 + 8))(v28, v15);
    if (v32 >= 0.0)
    {
LABEL_21:
      sub_10046F544();
      return 0;
    }

    v33 = v47;
    sub_10000AF74(v47, 1, 1, v15);
    swift_beginAccess();
    sub_1003B3734(v33, v1 + v29);
    result = swift_endAccess();
  }

  v34 = v1[2];
  v35 = v34 + 1;
  if (__OFADD__(v34, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  result = swift_beginAccess();
  v36 = v1[3];
  v37 = *(v36 + 16);
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v35 % v37;
  if (v38 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100270E18(v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v38, v8);
  if (sub_100015468(v8, 1, v15) == 1)
  {
    sub_1003EE32C(v8);
LABEL_13:
    sub_10046F544();
    return 1;
  }

  (*(v16 + 32))(v25, v8, v15);
  Date.timeIntervalSinceNow.getter();
  if (v39 >= 0.0 || (v40 = -v39, v41 = v1[4], result = [v41 voIPDOSTimeSeconds], v40 > result))
  {
    (*(v16 + 8))(v25, v15);
    goto LABEL_13;
  }

  v42 = v1[5];
  if (!v42)
  {
    v43 = &selRef_voIPDOSMinJailTimeSeconds;
LABEL_19:
    v1[5] = [v41 *v43];
LABEL_20:
    static Date.now.getter();
    v44 = v1[5];
    v45 = v47;
    static Date.+ infix(_:_:)();
    v46 = *(v16 + 8);
    v46(v21, v15);
    v46(v25, v15);
    sub_10000AF74(v45, 0, 1, v15);
    swift_beginAccess();
    sub_1003B3734(v45, v1 + v29);
    swift_endAccess();
    goto LABEL_21;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v1[5] = 2 * v42;
    v43 = &selRef_voIPDOSMaxJailTimeSeconds;
    if ([v41 voIPDOSMaxJailTimeSeconds] >= 2 * v42)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10046FB60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  sub_1003EE32C(v0 + OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish);
  return v0;
}

uint64_t sub_10046FB98()
{
  v0 = sub_10046FB60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CallTimes()
{
  result = qword_1006AC890;
  if (!qword_1006AC890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046FC40()
{
  sub_100316450();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_10046FCF8()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  v1 = type metadata accessor for VoIPDOSCache();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___CSDVoIPDOSCache_requestCache;
  type metadata accessor for CallTimes();
  *&v2[v3] = Dictionary.init(dictionaryLiteral:)();
  *&v2[OBJC_IVAR___CSDVoIPDOSCache_serverBag] = v0;
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_10046FDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CSDVoIPDOSCache_requestCache;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_1000513D8(a1);

  if (v8)
  {
    v9 = sub_10046F6D4();
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR___CSDVoIPDOSCache_serverBag);
    v11 = type metadata accessor for CallTimes();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = swift_unknownObjectRetain();
    v15 = sub_10046F360(v14);
    swift_beginAccess();
    v16 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A6F4(v15, a1, a2, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v23, *(v3 + v6));
    *(v3 + v6) = v24;
    swift_endAccess();
    v9 = 1;
  }

  return v9 & 1;
}

id sub_10046FF88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoIPDOSCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100470094()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&qword_1006A7C48, &qword_1005834F0);
      v8 = sub_100016140();
      sub_10001747C(v8);
      sub_10000EC84(v9 / 48);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_100395D70(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  sub_100035C94();
  if ((v13 & 1) == 0)
  {
    v14 = v10;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v15 == v16)
  {
LABEL_7:
    v17 = *(v7 + 16);
    if (v14 <= v17)
    {
      v18 = *(v7 + 16);
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      sub_10026D814(v11, v12);
      v19 = sub_100008B38();
      j__malloc_size(v19);
      sub_1000103FC();
      v19[2] = v17;
      v19[3] = v20;
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v17, v19 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (v7 + 32), 16 * v17);
    goto LABEL_15;
  }

  sub_10000E7FC();
  if (!v15)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470348()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&unk_1006A41B0, &unk_10057EFF8);
      v8 = sub_100008B38();
      sub_10001747C(v8);
      sub_1000153FC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_10039C36C(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470430()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&unk_1006A79D0, &qword_100583348);
      v8 = sub_100016140();
      sub_10001747C(v8);
      sub_10000EC84(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_10039C388(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006AB410, &unk_100583350);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004704F8()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&qword_1006ACA28, &qword_1005886F8);
      v8 = sub_100008B38();
      sub_10001747C(v8);
      sub_1000153FC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_10005C79C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = sub_10000FFF4();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004705AC()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&qword_1006ACA20, &qword_100583388);
      v8 = sub_100008B38();
      sub_10001747C(v8);
      sub_1000153FC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_100395D94(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004706D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  sub_100035C94();
  if (v13)
  {
    sub_10000A27C();
    if (v15 != v16)
    {
      sub_10000E7FC();
      if (v15)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = *(v7 + 16);
  v18 = v12(v17, v14);
  v19 = *(a6(0) - 8);
  if (v8)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    a7(v7 + v20, v17, v18 + v20);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1004707F0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_10026D814(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000E7FC();
  if (!v12)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004708EC()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&unk_1006ACA00, &qword_1005886E8);
      v8 = sub_100008B38();
      sub_10001747C(v8);
      sub_1000153FC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_10039C36C(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004709AC()
{
  sub_1000115C0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v7 == v8)
  {
LABEL_7:
    sub_10000ABE4(v6);
    if (v3)
    {
      sub_10026D814(&qword_1006AB190, &unk_100583400);
      v9 = sub_100008B38();
      j__malloc_size(v9);
      sub_1000103FC();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10000F95C();
        sub_10039C368(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006A7AD0, &unk_100587100);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v7)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470AAC()
{
  sub_1000115C0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v6 == v7)
  {
LABEL_7:
    sub_10000ABE4(v5);
    if (v2)
    {
      sub_10026D814(&qword_1006A7AA8, &unk_1005833E0);
      v8 = sub_100016140();
      sub_10001747C(v8);
      sub_10000EC84(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_10039C388(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v6)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470B74()
{
  sub_1000115C0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v7 == v8)
  {
LABEL_7:
    sub_10000ABE4(v6);
    if (v3)
    {
      sub_10026D814(&qword_1006AC9E8, &qword_1005886D8);
      v9 = sub_100008B38();
      j__malloc_size(v9);
      sub_1000103FC();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10000F95C();
        sub_100060528(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006AC9F0, &qword_1005886E0);
    sub_1000183FC();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v7)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  sub_100035C94();
  if (v15)
  {
    sub_10000A27C();
    if (v17 != v18)
    {
      sub_10000E7FC();
      if (v17)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v16 = v13;
  }

  v19 = *(v8 + 16);
  v20 = v14(v19, v16);
  v21 = *(sub_10026D814(a6, a7) - 8);
  if (v9)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(v8 + v22, v19, v20 + v22);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id sub_100470E44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___CSDMomentsRequest_avcRequest] = a1;
  *&v2[OBJC_IVAR___CSDMomentsRequest_session] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_1004710FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Wanted to file a simulated crash report for reason: %@", &v2, 0xCu);
}

void sub_100471174(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Simulated a crash report for reason: %@", &v2, 0xCu);
}

void sub_1004712A0()
{
  sub_100007EB8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error fetching local invite dictionary %@: %@", v2, 0x16u);
}

void sub_10047131C(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 configuration];
  sub_100007EB8();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to start connection with configuration=%@: %@", v6, 0x16u);
}

void sub_1004713C4(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempting to set state to %d, which precedes current state %d", v4, 0xEu);
}

void sub_100471490(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047157C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004715F4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle URL %@ failed with error: %@", &v3, 0x16u);
}

void sub_100471690(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No matching conversation found for call after handoff, not re-registering for handoff %@", &v2, 0xCu);
}

void sub_100471730()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"callCenterObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_1004717A0()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"interfaceOrientationObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471810()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"routeController != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471880()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"proximitySensorObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_1004718F0()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471960()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"voiceOverObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471C08(id *a1)
{
  v1 = [*a1 handle];
  sub_100007ED8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No chat returned for handle %@ with account %@", v4, v5, v6, v7, v8);
}

void sub_100471CA8(id *a1)
{
  v1 = [*a1 handle];
  sub_100007ED8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No IM handle returned for handle %@ with account %@", v4, v5, v6, v7, v8);
}

void sub_100471ED4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100471F10()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100471F80()
{
  sub_100007ED8();
  sub_10000A524();
  sub_100007F10(&_mh_execute_header, v0, v1, "setParticipantAudioVideoMode:presentationMode:forParticipant: Failed to find participant %@ on conversation %@");
}

void sub_100471FF0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 pluginName];
  v7 = 138412802;
  v8 = v6;
  v9 = 2048;
  v10 = [a1 identifier];
  v11 = 2112;
  v12 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Trying to add virtual participant for plugin %@ with different identifier %llu: %@", &v7, 0x20u);
}

void sub_1004720B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100472128()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047229C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004722D8(void *a1)
{
  v1 = [a1 UUID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100472364(void *a1)
{
  [a1 state];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004723E8(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100472460()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047249C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047250C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047257C(void *a1)
{
  [a1 avMode];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100472610(uint64_t a1, uint64_t a2)
{
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  sub_10000A524();
  *v6 = v2;
  sub_100007F10(&_mh_execute_header, v3, v4, "for particiapntID: %llu, invalid csdParticipant from conversationParticipant: %@", v5, DWORD2(v5), *&v6[2]);
}

void sub_100472684()
{
  sub_100007ED8();
  sub_10000A524();
  sub_100007F10(&_mh_execute_header, v0, v1, "Couldn't find participant for didReceiveParticipantUpdateParticipantID: %@ on conversation: %@");
}

void sub_1004726F4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004727D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472840()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004728B0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004728EC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472928()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100472998(uint64_t a1, void *a2)
{
  v2 = [a2 UUID];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100472A40()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472A7C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472AB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleReceivedDTMFUpdateMessageFromHost with !hasDtmfUpdateDigits. Message:%@", &v2, 0xCu);
}

void sub_100472B30(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to prepare conference for pull message %@ and call %@", &v4, 0x16u);
}

void sub_100472BBC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to guest mode prevents calls bc failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472C44(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to travel mode prevents calls bc failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472CCC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to blocked remote participant bc failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472D54(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to nearby feature version mismatch because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472DDC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to vision call establishment version mismatch because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472E64(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to unknown participant added because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472EEC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to media server crashed because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472F74(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to no destinations available because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100472FFC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to conversation links disabled because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100473084(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to invalid conversation link because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_10047310C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to rejected because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_100473194(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to kicked because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_10047321C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to other secondary device in use because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_1004732A4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to media start failed because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_10047332C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to provider crashed because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_1004733B4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to network unsupported because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_10047343C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to account unsupported because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_1004734C4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to call failed because failure reason is %ld", v4, v5, v6, v7, v8);
}

void sub_10047354C(void *a1)
{
  [a1 endedReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v1, v2, "Setting disconnected reason to call failed because ended reason is %ld", v3, v4, v5, v6, v7);
}

void sub_100473720()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Creating sandbox extension directory '%@' failed with error %@", v2, 0x16u);
}

void sub_1004738E8(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "There was an error enabling emergency mode. Enabled successfully (%d) Error: %@", v3, 0x12u);
}

void sub_100473974(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error while opening URL: %@", &v3, 0xCu);
}

void sub_1004739F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ failed with error %@", &v4, 0x16u);
}

void sub_100473A7C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 telephonyClient];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Retrieving subscription information failed with error %@ for %@.", &v6, 0x16u);
}

void sub_100473B30(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error synchronizing NPS defaults: %@", &v2, 0xCu);
}

void sub_100473BA8(uint64_t a1, NSObject *a2)
{
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2112;
  v8 = a1;
  v4 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Prefereces object was of unexpected class %@: %@", &v5, 0x16u);
}

void sub_100473D34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:230 description:@"identity is nil"];
}

void sub_100473E10(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:251 description:@"bundleIdentifier is nil"];
}

void sub_100473E84(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:280 description:@"bundleIdentifier is nil"];
}

void sub_100473F20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not determine UUID for FaceTime app bundle identifier %@", &v2, 0xCu);
}

void sub_100473F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDIDSChat.m" lineNumber:107 description:{@"Cannot create an incoming chat with an outgoing session: %@", a3}];
}

void sub_100474018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDIDSChat.m" lineNumber:118 description:{@"Cannot create an outgoing chat with an incoming session: %@", a3}];
}

void sub_100474098(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Setting disconnected reason to call failed because CSDAVConference ended reason is %ld for call %@", &v3, 0x16u);
}

void sub_100474178(void *a1, NSObject *a2)
{
  v3 = [a1 protoUpgradeSessionUUID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while creating UUID from protoUUID: %@", &v4, 0xCu);
}

void sub_1004742D4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474344()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004743B4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474424()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474494(void *a1)
{
  [a1 type];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004745C8(uint64_t *a1)
{
  v1 = *a1;
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Failed to prepare conference for call %@. Disconnecting call with conference failed", v4, v5, v6, v7, v8);
}

void sub_100474634(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Failed to prepare conference for call %@. Disconnecting call with conference failed", v4, v5, v6, v7, v8);
}

void sub_1004746A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Failed to prepare conference for call %@. Disconnecting call with conference failed", v4, v5, v6, v7, v8);
}

void sub_10047470C(void *a1)
{
  v6 = [a1 groupUUID];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047479C(void *a1)
{
  v6 = [a1 groupUUID];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047482C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create notification for XPC event %@", &v2, 0xCu);
}

void sub_1004748A4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100007F50();
  sub_100009E14(&_mh_execute_header, v2, v3, "failed to resolve temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_10047492C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100007F50();
  sub_100009E14(&_mh_execute_header, v2, v3, "failed to initialize temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_100474A2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not accepting invitation to call %@ since it is already Connected", &v2, 0xCu);
}

void sub_100474AA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not holding chat %@ since it is not yet Connected", &v2, 0xCu);
}

void sub_100474C58(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 handle];
  sub_100007EB8();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cannot start FaceTime IDS chat using handle %@ because IDS destination was '%@'", v6, 0x16u);
}

void sub_100474CFC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Requested transaction to answer already-ringing call with UUID %@ failed with error %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100474D78(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 remoteFromID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unable to convert to remoteIDSToken: %@", a1, 0xCu);
}

void sub_100474DF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find existing chat for conversation: %@", &v2, 0xCu);
}

void sub_100474E68(uint64_t *a1)
{
  v1 = *a1;
  sub_100009E54();
  sub_100007F10(&_mh_execute_header, v2, v3, "Error retrieving contents of directory at URL %@: %@");
}

void sub_100474ED8(_BYTE *a1)
{
  *a1;
  sub_100009E54();
  sub_100007F10(&_mh_execute_header, v1, v2, "%@ doesn't exist at client file url: %@");
}

void sub_100475100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100009E54();
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error zipping directory at URL %@ to output URL %@", v5, 0x16u);
}

void sub_10047517C(void *a1)
{
  v1 = a1[7];
  v2 = a1[4];
  v3 = a1[5];
  sub_100009E54();
  v9 = v4;
  v10 = v5;
  v11 = v6;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error occurred during IMFileCopierOperation type %ld on inputURL %@ and outputURL %@", v8, 0x20u);
}

void sub_100475204()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10000F434();
  sub_100007F00();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100475618(uint64_t a1, void *a2)
{
  v7 = [a2 uniqueProxyIdentifier];
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004756C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uniqueProxyIdentifier];
  sub_10000F434();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100475760(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 56);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ failed with error %@", &v5, 0x16u);
}

void sub_100475818(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to start conference connection when pulling call %@: %@", &v4, 0x16u);
}

void sub_1004758B8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDXPCClient.m" lineNumber:48 description:@"callservicesd is attempting to create an XPC client for itself."];
}

void sub_10047591C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 processBundleIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to grab assertion for process %@, reason: %@", &v6, 0x16u);
}

void sub_1004759CC(void *a1, NSObject *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unsuccessful didSend for message with identifier %@ using account %@: %@", &v5, 0x20u);
}

void sub_100475A60(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 typeString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to send %@ message: %@", &v6, 0x16u);
}

void sub_100475B14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempt to unarchive PTT service update push budget failed with error %@", &v2, 0xCu);
}

void sub_100475B8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempt to archive PTT service update push budget failed with error %@", &v2, 0xCu);
}

void sub_100475C9C(id *a1)
{
  v1 = [*a1 handle];
  sub_100007F30(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No IDS or IMAV call returned for handle %@", v4, v5, v6, v7, 2u);
}

void sub_100475D28(id *a1)
{
  v1 = [*a1 callUUID];
  sub_100007F30(&_mh_execute_header, v2, v3, "No longer handling call with UUID %@, requesting end", v4, v5, v6, v7, 2u);
}

void sub_100475E84(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempted to prepare a new conference connection with the same identifier as an existing conference connection: %@", &v2, 0xCu);
}

void sub_100475EFC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 conferenceConnections];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Did not find conference connection to start for identifier %@. All conference connections: %@", &v6, 0x16u);
}

void sub_100475FB0(id *a1, void **a2, NSObject *a3)
{
  [*a1 prepareToStopTimeout];
  v6 = v5;
  v7 = *a2;
  v8 = [v7 conference];
  v9 = 134218498;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "It's been %fs since asked to prepare to stop conference and conference connection still exists: %@. Forcefully cleaning up all conference connections for conference %@", &v9, 0x20u);
}

void sub_100476084(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Relay conference ended in failure (reason: %ld): %@", &v3, 0x16u);
}

void sub_100476150(uint8_t *a1, void *a2, NSObject *a3)
{
  v6 = +[CSDThumperIDSService sharedInstance];
  *a1 = 138412290;
  *a2 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not obtain caller ID from Thumper IDS service %@", a1, 0xCu);
}

void sub_1004761CC(void *a1, NSObject *a2)
{
  v3 = [a1 faceTimeProvider];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Aborting Thumper registration; could not obtain sender identities from call provider %@.", &v4, 0xCu);
}

void sub_100476264(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received didSendWithSuccess=NO for message with identifier %@: %@", &v3, 0x16u);
}

void sub_1004762EC(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*a2 thumperService];
  v6 = [v5 devices];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "No device found for account %@. All accounts: %@", &v7, 0x16u);
}

void sub_1004763B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set no handler for Default Calling with error: %@", &v2, 0xCu);
}

void sub_100476428(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to Default Calling app to %@ with error: %@", &v4, 0x16u);
}

void sub_1004764B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDCall.m" lineNumber:505 description:{@"dialRequest is invalid: %@", a3}];
}

void sub_100476534(char a1, void *a2, NSObject *a3)
{
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [a2 uniqueProxyIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Setting uplinkMuted with value %@ failed for call %@", &v6, 0x16u);
}

void sub_1004765FC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CSDRouteManager init]_block_invoke_2";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: error: %@", &v2, 0x16u);
}

void sub_100476700(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to fetch CarKit DND assertion: %@", &v2, 0xCu);
}

void sub_100476778()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004767E8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047688C()
{
  sub_100007ED8();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476964(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004769D4(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100476A44(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100476B28(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100476B98(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100476C24()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476C94()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476D04()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476D74()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476DE4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476E54()
{
  sub_100015044();
  v1 = [v0 activity];
  v2 = [v1 UUID];
  sub_100007EB8();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100476EFC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476F38()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476F74()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476FB0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476FEC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477028()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477064()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047713C()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477238()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004772CC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477308()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477404()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477474()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004774E4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477520()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047755C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004775CC()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004776A4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004776E0(void *a1)
{
  v1 = [a1 addedMembers];
  [v1 count];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477770()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004777E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477854()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477890(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100477900()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047793C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477978()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004779B4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477A24()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477A94()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477B04(void *a1)
{
  v1 = [a1 UUID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477BD0()
{
  sub_100015044();
  v1 = [*(v0 + 32) handle];
  v2 = [v1 value];
  sub_100007EB8();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100477C7C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477CEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477D60()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477E38()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477EA8(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100007B84(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100015C58(&_mh_execute_header, v5, v6, "No image provided in update message for activity: %@");
}

void sub_100477F04()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477F74()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477FB0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  sub_10000A530();
  sub_100007F10(&_mh_execute_header, v4, v5, "Failed to renew link %@ with error %@");
}

void sub_100478020()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047805C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100007B84(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100015C58(&_mh_execute_header, v5, v6, "Requesting to disconnect call %@");
}

void sub_1004780B8(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100478128()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478198(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10000A530();
  sub_100007F10(&_mh_execute_header, v3, v4, "Not adding highlight identifier %@ because no conversation could be found for UUID %@");
}

void sub_100478204()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478240()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047827C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004782B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478328(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10000A530();
  sub_100007F10(&_mh_execute_header, v3, v4, "Asked to add collaboration dictionary %@ to conversation with UUID %@, but no such conversation exists");
}

void sub_100478394(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100478408()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478478(void *a1)
{
  v1 = [a1 URL];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100478504()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478540()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047857C()
{
  sub_100015044();
  v1 = TULoggableStringForHandle();
  v2 = [v0 storageGuid];
  sub_10000E89C();
  sub_100016224(&_mh_execute_header, v3, v4, "service:account:incomingData:fromID:context: receiving proxied IDS message from %{mask.hash}@ with ID %{mask.hash}@", v5, v6, v7, v8, v9);
}

void sub_10047861C()
{
  sub_100015044();
  v1 = TULoggableStringForHandle();
  v2 = [v0 storageGuid];
  sub_10000E89C();
  sub_100016224(&_mh_execute_header, v3, v4, "service:account:incomingResourceAtURL:metadata:fromID:context: receiving proxied IDS resource from %{mask.hash}@ with ID %{mask.hash}@", v5, v6, v7, v8, v9);
}

void sub_1004786BC()
{
  sub_100009DFC();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004786F8()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047878C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004787C8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478804()
{
  sub_100009DFC();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478880()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004788BC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004788F8()
{
  sub_100007ED8();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478968()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004789D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A14()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A50()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A8C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478AC8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478B04()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478B40()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478BB0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478BEC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478C28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate remote display discovery: %@", &v2, 0xCu);
}

void sub_100478CA0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CHRecentCall_CSD.m" lineNumber:41 description:@"This call's call history identifier is nil"];
}

void sub_100478FEC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire process assertion for bundle identifier %@", &v3, 0xCu);
}

void sub_100479068(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to initialize CXCallDirectoryStore for reading: %@", &v2, 0xCu);
}

void sub_100479214(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't find iPhone with callerID as %@ in IDS relay device list %@", &v3, 0x16u);
}

void sub_100479324(void *a1, NSObject *a2)
{
  v3 = [a1 callProviderStore];
  v4 = [v3 dictionaryRepresentation];
  sub_100007ED8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current call provider KVS %@", v5, 0xCu);
}

void sub_1004794A0(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Encountered error while opening URL: %@", v3, v4, v5, v6, v7);
}

void sub_100479508(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1004795F0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479764()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004798D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479914()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479A88()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479AC4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479B00(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Cannot perform recording operation, client asked to perform request on UPI that does not exist in call container %@", v3, v4, v5, v6, v7);
}

void sub_100479B68(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Cannot perform translation operation, client asked to perform request on UPI that does not exist in call container %@", v3, v4, v5, v6, v7);
}

void sub_100479CA8(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Cannot perform smart holding operation, client asked to perform request on UPI that does not exist in call container %@", v3, v4, v5, v6, v7);
}

void sub_100479D80(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Cannot perform TUSmartHoldingRequest, client asked to perform request on UPI that does not exist in call container %@", v3, v4, v5, v6, v7);
}

void sub_100479DE8(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Failed to perform TUSmartHoldingSessionRequest with error %@", v3, v4, v5, v6, v7);
}

void sub_100479EB8(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007F10(&_mh_execute_header, v1, v2, "Attempting to answer a Walkie-Talkie call whose endpoint is not Apple Watch; aborting answer request %@ for call %@");
}

void sub_100479F2C(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100479FA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100009E08();
  sub_100007F10(&_mh_execute_header, v2, v3, "Retrieving user activity with identifier %@ failed with error %@");
}

void sub_10047A01C(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Failed to pull call for user activity %@", v3, v4, v5, v6, v7);
}

void sub_10047A190(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain application state from user info dictionary %@", &v2, 0xCu);
}

void sub_10047A208(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain bundle identifier from user info dictionary %@", &v2, 0xCu);
}

void sub_10047A280(id *a1)
{
  v1 = [*a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"bundleIDs"];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10047A344(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "handleApplicationUninstalledNotification: bundleIdentifier type: %@", a1, 0xCu);
}

void sub_10047A490(uint64_t a1, void *a2)
{
  [a2 hasVoIPBackgroundMode];
  [a2 hasVoIPNetworkExtensionEntitlement];
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_10047A548()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047A5B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047A750(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E68();
  sub_100007F10(&_mh_execute_header, v2, v3, "Attempt to open application with bundle identifier %@ failed with error %@");
}

void sub_10047A7BC(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047A834(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047A8AC(uint64_t *a1)
{
  v1 = *a1;
  sub_100009E68();
  sub_100007F10(&_mh_execute_header, v2, v3, "Unable to terminate %@ with error %@");
}

void sub_10047A918(uint64_t a1, void *a2)
{
  [a2 hasVoIPBackgroundMode];
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10047A9B0(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  sub_100007ED8();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Channel: falling back to LS for determing push environment %@", v4, 0xCu);
}

void sub_10047AA44(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047AAD0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047AB5C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047ABCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dropping notice %@ because of invalid bundleID", &v2, 0xCu);
}

void sub_10047AC44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ url: %@ failed with error %@", &v5, 0x20u);
}

void sub_10047ACEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load activated conversation links with error %@", &v2, 0xCu);
}

void sub_10047ADA8()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find default app call provider for bundleIdentifier %@ providers: %@", v2, 0x16u);
}

void sub_10047AE94(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open user activity %@ for bundle identifier %@: %@", &v5, 0x20u);
}

void sub_10047AF28()
{
  sub_100007ED8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not get LSApplicationRecord for app %{public}@ to determine intent support. Using %{public}@.", v2, 0x16u);
}

void sub_10047AFB4(id *a1, NSObject *a2)
{
  v3 = [*a1 protoUpgradeSessionUUID];
  sub_100007ED8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while creating UUID from %@", v4, 0xCu);
}

void sub_10047B04C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B0BC()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B12C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B19C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B20C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B248()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B284()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B2F4(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047B36C(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047B3E4(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047B45C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B540(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 link];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "There's already an ongoing conversation %@ with the same groupUUID as the link %@, but the conversation does not have the same link %@", &v7, 0x20u);
}

void sub_10047B5FC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B638()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B674()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B6B0()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B794()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B7D0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B80C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B848()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B884()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B8F4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B930()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B9B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to report outgoing call started connecting; could not find call UUID for conversation: %@", &v2, 0xCu);
}

void sub_10047BA2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to report outgoing call connected; Leaving conversation since could not find call UUID for conversation: %@", &v2, 0xCu);
}

void sub_10047BAA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Transport did not become available for answered call %@", v4, v5, v6, v7, v8);
}

void sub_10047BB10(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E68();
  sub_100007F10(&_mh_execute_header, v2, v3, "Failed to start conference connection for answered call %@: %@. Disconnecting call with relay failed");
}

void sub_10047BC6C(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "senderIdentity is nil for handle = %@", v4, v5, v6, v7, v8);
}

void sub_10047BCF0(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Error obtaining contact for handle = %@", v4, v5, v6, v7, v8);
}

void sub_10047BD74(id *a1)
{
  v1 = [*a1 uniqueProxyIdentifier];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Nil call returned when dialing call. Notifying client of failed dial call for %@", v4, v5, v6, v7, v8);
}

void sub_10047BDFC(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_100009E68();
  sub_100007F10(&_mh_execute_header, v2, v3, "Failed to start conference connection for dialed call uniqueProxyIdentifier %@: %@.");
}

void sub_10047BE68(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Nil call returned when dialing call. Notifying client of failed dial call for %@ ", v4, v5, v6, v7, v8);
}

void sub_10047BED4(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100009E68();
  sub_100007F10(&_mh_execute_header, v2, v3, "Failed to start conference connection for joinConversationRequest: %@ error: %@");
}

void sub_10047BF40(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Nil call returned when dialing call. Notifying client of failed join conversation request %@", v3, v4, v5, v6, v7);
}

void sub_10047BFEC(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Failed to prepare conference for pushing hosted call %@", v3, v4, v5, v6, v7);
}

void sub_10047C054(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Socket did not become available when pushing call. Resetting endpointOnCurrent device to YES for %@", v3, v4, v5, v6, v7);
}

void sub_10047C0BC(uint64_t *a1)
{
  sub_100011258(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Conference did not start successfully when pushing call. Resetting endpointOnCurrent device to YES for %@", v3, v4, v5, v6, v7);
}

void sub_10047C268(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_10047C2E0()
{
  v2 = 138412546;
  v3 = @"Ringtones";
  sub_10000A524();
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error creating '%@' sandbox extension directory: %@", &v2, 0x16u);
}

void sub_10047C4A0()
{
  sub_100007ED8();
  sub_10000A524();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error removing links for filenames not in array (%@): %@", v2, 0x16u);
}

void sub_10047C5F0()
{
  objc_opt_class();
  sub_100007ED8();
  sub_10000A524();
  v1 = v0;
  sub_100009DDC(&_mh_execute_header, v2, v3, "Registered providers object was of unexpected class %@: %@", v4, v5, v6, v7, v8);
}

void sub_10047C714()
{
  sub_100015044();
  v1 = [v0 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Unknown participant identifier %llu current participants: %@", v4, v5, v6, v7, v8);
}

void sub_10047C7A0()
{
  sub_100015044();
  v1 = [v0 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Unknown participant identifier %lu current participants: %@", v4, v5, v6, v7, v8);
}

void sub_10047C8A0()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047C910()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047C980(uint64_t a1, void *a2)
{
  v2 = [a2 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v3, v4, "removeParticipant: %@ Active remote participants: %@", v5, v6, v7, v8, v9);
}

void sub_10047CA14()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047CA84()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CAF4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CB64()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CBD4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CC44()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CCB4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CD24(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a1 + 40);
  sub_100009E9C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10047CDB8(uint64_t *a1)
{
  v6 = *a1;
  sub_100007EAC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047CF14(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Asked to dial call %@ but the host was unavailable", v3, v4, v5, v6, v7);
}

void sub_10047CF7C(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Asked to dial call %@ but the session was unavailable", v3, v4, v5, v6, v7);
}

void sub_10047CFE4(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Transport did not become available when answering call %@", v3, v4, v5, v6, v7);
}

void sub_10047D04C(uint64_t a1)
{
  sub_10000E4C8(a1, __stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v1, v2, "Transport did not become available when pulling call. Resetting endpointOnCurrent device to NO for %@", v3, v4, v5, v6, v7);
}

void sub_10047D11C()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Conference connection failed for call %@: %@. Disconnecting call with relay failed", v2, 0x16u);
}

void sub_10047D22C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while querying file attributes: %@", &v2, 0xCu);
}

void sub_10047D2A4(void *a1, void *a2, NSObject *a3)
{
  v6 = *a1;
  v7 = [a2 validationStatusForAlias:*a1];
  v8 = [a2 validationErrorReasonForAlias:*a1];
  v9 = [a2 vettedAliases];
  v10 = 138413314;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  v14 = 2048;
  v15 = v7;
  v16 = 2048;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to add alias %@ to account %@. Validation status: %ld, validation error reason: %ld, vetted aliases: %@", &v10, 0x34u);
}

void sub_10047D3A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while saving _callerID %@", &v2, 0xCu);
}

void sub_10047D41C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 client];
  sub_100007ED8();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to get active contexts from client %@: %@", v6, 0x16u);
}

void sub_10047D4C8()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047D608()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D678()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D6E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E68();
  sub_100009E9C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10047D75C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E68();
  sub_100009E9C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10047D7D0()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047D840()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D8B0()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D988()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D9F8()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047DA68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "JoinCallAction is not valid because there is not exactly one remote member %@", &v2, 0xCu);
}

void sub_10047DAE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error capturing snapshot: %@", &v2, 0xCu);
}

void sub_10047DB6C()
{
  sub_100007EB8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Not starting a new session for identifier %@ because an active session for the identifier already exists: %@", v2, 0x16u);
}

void sub_10047DBE8(void *a1)
{
  v1 = [a1 firstObject];
  sub_100007EB8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Not starting a new session for identifier %@ because an active session for the identifier already exists: %@", v4, v5, v6, v7, v8);
}

void sub_10047DC7C(id *a1)
{
  v1 = [*a1 typeString];
  sub_100007EB8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Failed to send %@ message: %@", v4, v5, v6, v7, v8);
}

void sub_10047E0FC(void *a1)
{
  v1 = [a1 transactionID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047E188(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E298(void *a1)
{
  [a1 streamToken];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047E3C0(uint64_t a1, id *a2)
{
  v2 = [*a2 sessionsByToken];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E468(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 remoteIDSDestinations];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10047E510(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Received non-zipped resource at %@", v4, v5, v6, v7, v8);
}

void sub_10047E57C(uint64_t *a1)
{
  v1 = *a1;
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Received moments resource with missing transaction ID in metadata: %@", v4, v5, v6, v7, v8);
}

void sub_10047E628(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Failed to unzip file at URL %@", v4, v5, v6, v7, v8);
}

void sub_10047E834(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100009E08();
  sub_10000A524();
  sub_100007EAC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E8B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v2, v3, "Error saving resources with video url: %@", v4, v5, v6, v7, v8);
}

void sub_10047E944(void *a1, int a2, NSObject *a3)
{
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = [a1 callID];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to initialize a new call with device role %d. Got callID=%ld", v4, 0x12u);
}

void sub_10047EBC4()
{
  v0 = +[TUAudioSystemController sharedAudioSystemController];
  [v0 isUplinkMuted];
  sub_100009DDC(&_mh_execute_header, v1, v2, "Set muted call action failed: %@ %@", v3, v4, v5, v6, 2u);
}

void sub_10047EE28(uint64_t a1, void *a2)
{
  v8 = [a2 calls];
  sub_100009DDC(&_mh_execute_header, v2, v3, "Could not find call to group with for set group call action: %@. All call: %@", v4, v5, v6, v7, 2u);
}

void sub_10047EF9C()
{
  sub_100007ED8();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Join call action failed: %@, faceTimeIDStatus: %d", v2, 0x12u);
}

void sub_10047F168()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error while determining process action for callSource: %@, action: %@", v2, 0x16u);
}

void sub_10047F1EC(id *a1, uint64_t a2, NSObject *a3)
{
  v6 = [*a1 machServiceName];
  v7 = [*a1 requiredConnectionCapability];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Rejecting client for %@ because it lacks the %@ capability: %@", &v8, 0x20u);
}

void sub_10047F330(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error %d when setting up btSession", v2, 8u);
}

void sub_10047F3A8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Could not report new multiway call from %@: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10047F424(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Reporting call failure for conversation with conversationUUID %@ and callUUID %@", *v3, *&v3[8], *&v3[16]);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall LanguageManager.localizedString(forKey:table:bundle:languageCode:)(Swift::String forKey, Swift::String table, NSBundle bundle, Swift::String_optional languageCode)
{
  v4 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(forKey._countAndFlagsBits, forKey._object, table._countAndFlagsBits, table._object, bundle.super.isa, languageCode.value._countAndFlagsBits, languageCode.value._object);
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}