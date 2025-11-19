uint64_t sub_10028DE0C(void *a1, void *a2, void *a3)
{
  v6 = [a1 handle];
  v7 = [v6 tuHandle];

  if (!v7)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_10001B8C8(a2, &selRef_countryCode);
  if (!v8)
  {
LABEL_21:

    return &_swiftEmptySetSingleton;
  }

  type metadata accessor for TinCanIDSProviderDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();

  v11 = [ObjCClassFromMetadata handleByFullyQualifyingHandle:v7 usingCountryCode:v10];

  v12 = [v11 value];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  sub_1003FC34C(v12);
  if (!v13 || (sub_10001E84C(), , sub_10001B8C8(a1, &selRef_contactIdentifier), !v14))
  {
LABEL_20:

    goto LABEL_21;
  }

  v26 = v11;
  v15 = String._bridgeToObjectiveC()();

  v16 = [a3 labeledHandlesForContactWithIdentifier:v15];

  sub_100006AF0(0, &qword_1006A2970, TULabeledHandle_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v17);
  if (!result)
  {
LABEL_19:

    v11 = v26;
    goto LABEL_20;
  }

  v19 = result;
  if (result >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v17 + 8 * i + 32);
      }

      v22 = v21;
      v23 = [v21 handle];
      v24 = [v23 value];

      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      sub_1003FC34C(v24);
      if (v25)
      {
        sub_10001E84C();
      }

      else
      {
      }
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10028E0E0(char *a1, void *a2)
{
  v4 = [a1 incomingChatGenerator];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100290A7C;
  *(v6 + 24) = v5;
  v10[4] = sub_100290A84;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10028E31C;
  v10[3] = &unk_1006227B8;
  v7 = _Block_copy(v10);

  [a1 setIncomingChatGenerator:v7];
  _Block_release(v7);
  v8 = *&a1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];
  [a2 setDelegate:a1 queue:v8];
  if (qword_1006A0AB0 != -1)
  {
    swift_once();
  }

  [qword_1006A6800 addServiceDelegate:a1 queue:v8];
}

id sub_10028E284(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = (*(a5 + 16))(a5, a1, a2, a3 & 1, isa);

  return v10;
}

id sub_10028E31C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a2;
  v11 = a3;
  v12 = v8(v10, v11, a4, v9);

  return v12;
}

id sub_10028E444(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for TinCanIDSProviderDelegateCapabilities()) init];
  v6 = [v2 initWithCapabilities:v5 callSource:a1 queue:a2];

  return v6;
}

id sub_10028E500()
{
  v4.receiver = v1;
  v4.super_class = sub_10000FCD0();
  v2 = objc_msgSendSuper2(&v4, "callUpdateForChat:", v0);
  [v2 setMutuallyExclusiveCall:1];
  return v2;
}

void sub_10028E5C8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = [v3 handle];
  v17 = [v0 waitingChatWithHandle:v16 isOutgoing:0];

  if (v17)
  {
    v18 = sub_100004778();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();

    [v3 fail];
    sub_100005EDC();

    swift_unknownObjectRelease();
  }

  else
  {
    v65 = v9;
    if (qword_1006A0AB0 != -1)
    {
      swift_once();
    }

    v20 = qword_1006A6800;
    sub_10000E8EC(OBJC_IVAR___CSDTinCanIDSProviderDelegate_isAccountActive);

    v21 = v9(v20);

    if (v21)
    {
      sub_10000E8EC(OBJC_IVAR___CSDTinCanIDSProviderDelegate_isDestinationValid);

      v22 = (v9)(v3, v20);

      if (v22)
      {
        sub_10000E8EC(OBJC_IVAR___CSDTinCanIDSProviderDelegate_destinationsGenerator);
        v23 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_contactsDataProvider];

        v64 = v5;
        v24 = v23;
        v61 = (v9)(v3, v20, v24);

        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057CA70;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v26;
        *(inited + 72) = &type metadata for Int;
        *(inited + 48) = 0;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v27;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 136) = v28;
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 184) = v29;
        *(inited + 216) = &type metadata for Bool;
        *(inited + 192) = 1;
        v59 = Dictionary.init(dictionaryLiteral:)();
        sub_10000E8EC(OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingSessionProviderGenerator);
        v30 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];

        v63 = type metadata for Bool(v20, v61, v59, v30);

        v57 = [objc_allocWithZone(CSDExternalIDSDualSession) initAsInitiatorWithSessionProvider:v63];
        v31 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v32 = sub_100009F24();
        *(v32 + 16) = xmmword_10057D6A0;
        *(v32 + 56) = sub_10026D814(&qword_1006A29F0, &unk_100586650);
        *(v32 + 64) = sub_10001000C(&qword_1006A29F8, &qword_1006A29F0, &unk_100586650);
        *(v32 + 32) = v61;
        *(v32 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
        *(v32 + 104) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710);
        *(v32 + 72) = v59;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v62 = [objc_allocWithZone(TUCallProviderManager) init];
        v60 = [v62 tinCanProvider];
        v33 = v57;
        [v3 isUpgrade];
        [v33 setInvitationTimeout:TUOutgoingInvitationTimeoutForCallProviderAndIsUpgrade()];

        v58 = v33;
        v35 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingChatGenerator];
        v34 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingChatGenerator + 8];

        v36 = [v3 callUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v35(v33, v15, v3, [v3 isVideo], objc_msgSend(v3, "isRelay"));

        v56 = *(v65 + 1);
        v56(v15, v6);
        [v37 setDelegate:v1];
        v38 = sub_100004778();
        v39 = sub_100009F00();
        *(v39 + 16) = xmmword_10057D690;
        v66[0] = v37;
        swift_unknownObjectRetain();
        sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_100009D88();
        *(v39 + 32) = v40;
        *(v39 + 40) = v42;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v43 = swift_allocObject();
        *(v43 + 16) = v3;
        v66[4] = sub_100290B80;
        v66[5] = v43;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 1107296256;
        v66[2] = sub_10028EFB8;
        v66[3] = &unk_100622808;
        v44 = _Block_copy(v66);
        v45 = v3;

        [v37 startWithVideoAspectRatioDescriptor:v45 inviteCompletion:v44];
        _Block_release(v44);
        [v1 updateCacheWithChat:v37];
        v46 = [v45 callUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v56(v15, v6);
        v48 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v37];
        [v64 reportCallWithUUID:isa updated:v48];

        [v45 fulfill];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_100005EDC();
        return;
      }

      v52 = sub_100004778();
      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v49 = sub_100004778();
      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v50 = sub_100009F00();
      *(v50 + 16) = xmmword_10057D690;
      *(v50 + 56) = type metadata accessor for TinCanIDSService();
      *(v50 + 64) = sub_10000EC90(&unk_1006A29E0, type metadata accessor for TinCanIDSService);
      *(v50 + 32) = v20;
      v51 = v20;
      sub_10000F4B0();
    }

    sub_100005EDC();

    [v53 v54];
  }
}

void sub_10028EF30(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = sub_100004778();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();

    [a3 fail];
  }
}

uint64_t sub_10028EFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5(v6, a3);
}

id sub_10028F0AC(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  sub_10001707C();
  if ([a2 isRelaying])
  {
    v14 = [a2 callUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v2, v7);
    v16 = [v2 chatWithUUID:isa];

    if (v16)
    {
      swift_unknownObjectRelease();
      result = [v3 superclass];
      if (result)
      {
        swift_getObjCClassMetadata();
        result = [swift_getObjCClassFromMetadata() instancesRespondToSelector:"provider:performSetRelayingCallAction:"];
        if (result)
        {
          v33.receiver = v3;
          v33.super_class = ObjectType;
          return objc_msgSendSuper2(&v33, "provider:performSetRelayingCallAction:", a1, a2);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v21 = sub_100004778();
      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v22 = sub_100009F24();
      *(v22 + 16) = xmmword_10057D6A0;
      sub_100009F18();
      *(v22 + 56) = sub_100006AF0(v23, v24, v25);
      sub_100009F18();
      *(v22 + 64) = sub_100290B1C(v26, v27, v28);
      *(v22 + 32) = a2;
      v29 = a2;
      v30 = [v3 chats];
      sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *(v22 + 96) = sub_10026D814(&qword_1006A29B8, &qword_10057D6F8);
      sub_10000A5C0();
      *(v22 + 104) = sub_10001000C(v32, &qword_1006A29B8, &qword_10057D6F8);
      *(v22 + 72) = v31;
      sub_10000F4B0();

      return [v29 fail];
    }
  }

  else
  {
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = sub_100009F00();
    *(v18 + 16) = xmmword_10057D690;
    *(v18 + 56) = sub_100006AF0(0, &qword_1006A29C8, CXSetRelayingCallAction_ptr);
    *(v18 + 64) = sub_100290B1C(&unk_1006A29D0, &qword_1006A29C8, CXSetRelayingCallAction_ptr);
    *(v18 + 32) = a2;
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v19 = a2;
    v20 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return [v19 fail];
  }

  return result;
}

void sub_10028F4FC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  sub_10001707C();
  if (![v0 superclass])
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getObjCClassMetadata();
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"provider:performSetMutedCallAction:"])
  {
    v40.receiver = v0;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "provider:performSetMutedCallAction:", v5, v3);
  }

  v14 = [v3 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v0, v7);
  v16 = [v0 chatWithUUID:isa];

  if (!v16)
  {
    v28 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v29 = sub_100009F24();
    *(v29 + 16) = xmmword_10057D6A0;
    sub_100009F18();
    *(v29 + 56) = sub_100006AF0(v30, v31, v32);
    sub_100009F18();
    *(v29 + 64) = sub_100290B1C(v33, v34, v35);
    *(v29 + 32) = v3;
    v36 = v3;
    v37 = [v1 chats];
    sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v29 + 96) = sub_10026D814(&qword_1006A29B8, &qword_10057D6F8);
    sub_10000A5C0();
    *(v29 + 104) = sub_10001000C(v39, &qword_1006A29B8, &qword_10057D6F8);
    *(v29 + 72) = v38;
    sub_10000F4B0();

    [v36 fail];
    goto LABEL_9;
  }

  v17 = [objc_allocWithZone(CSDMessagingCallMessage) init];
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  [v17 setType:2];
  [v18 setSenderMuteUplink:{objc_msgSend(v16, "isMuted")}];
  v19 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = sub_100009F00();
  *(v20 + 16) = xmmword_10057D690;
  *(v20 + 56) = sub_100006AF0(0, &qword_1006A2988, off_100616648);
  *(v20 + 64) = sub_100290B1C(&unk_1006A2990, &qword_1006A2988, off_100616648);
  *(v20 + 32) = v18;
  v21 = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = v21;
  v23 = sub_1003DD48C(v22);
  if (v24 >> 60 != 15)
  {
    v25 = v23;
    v26 = v24;

    v27 = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v25, v26);
    [v16 sendDataUnreliably:v27];
    swift_unknownObjectRelease();

LABEL_9:
    sub_100005EDC();
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_10028F99C()
{
  v5.receiver = v1;
  v5.super_class = sub_10000FCD0();
  objc_msgSendSuper2(&v5, "providerDidBegin:", v0);
  v2 = [v1 provider];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10028DA08();
    [v3 setConfiguration:v4];
  }
}

void sub_10028FA88()
{
  sub_100005EF4();
  v2 = v1;
  v3 = sub_10000FCD0();
  v4 = type metadata accessor for Date();
  v5 = sub_100007FEC(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for UUID();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  if ([v2 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatStartedConnecting:"])
    {
      v34.receiver = v2;
      v34.super_class = v3;
      objc_msgSendSuper2(&v34, "chatStartedConnecting:", v0);
    }

    if ([v0 isOutgoing])
    {
      v23 = [v2 provider];
      if (v23)
      {
        v24 = v23;
        v25 = [v0 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v16 + 8))(v22, v13);
        isa = [v0 dateStartedConnecting];
        if (isa)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v33 + 8))(v12, v4);
        }

        [v24 reportOutgoingCallWithUUID:v26.super.isa startedConnectingAtDate:isa];
      }

      v28 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v0];
      v29 = [v2 provider];
      if (v29)
      {
        v30 = v29;
        v31 = [v0 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v16 + 8))(v22, v13);
        [v30 reportCallWithUUID:v32 updated:v28];
      }
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10028FDA8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10001707C();
  if ([v1 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatConnected:"])
    {
      v16.receiver = v1;
      v16.super_class = ObjectType;
      objc_msgSendSuper2(&v16, "chatConnected:", a1);
    }

    v11 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:a1];
    v12 = [v1 provider];
    if (v12)
    {
      v13 = v12;
      v14 = [a1 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v7 + 8))(v1, v4);
      [v13 reportCallWithUUID:isa updated:v11];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10028FF6C()
{
  sub_100005EF4();
  v2 = v1;
  v3 = sub_10000FCD0();
  v4 = type metadata accessor for Date();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for UUID();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  sub_10001707C();
  [v1 updateCacheWithChat:v0];
  if ([v0 endedReason] != -1)
  {
    v21 = [v1 provider];
    if (v21)
    {
      v22 = v21;
      v26 = v3;
      v23 = [v0 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v17 + 8))(v1, v14);
      isa = [v0 dateEnded];
      if (isa)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v7 + 8))(v13, v4);
      }

      [v22 reportCallWithUUID:v24.super.isa endedAtDate:isa privateReason:{objc_msgSend(v0, "endedReason")}];

      v3 = v26;
    }
  }

  if ([v2 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatEnded:"])
    {
      v27.receiver = v2;
      v27.super_class = v3;
      objc_msgSendSuper2(&v27, "chatEnded:", v0);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_100290200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_100290278()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  objc_allocWithZone(CSDMessagingCallMessage);
  sub_100290AC4(v5, v3);
  v18 = sub_100290A00(v5, v3);
  if (!v18)
  {
    sub_100004778();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_17;
  }

  v19 = v18;
  v42 = v11;
  v43 = v1;
  v20 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v21 = sub_100009F00();
  *(v21 + 16) = xmmword_10057D690;
  v22 = sub_100006AF0(0, &qword_1006A2988, off_100616648);
  *(v21 + 56) = v22;
  v23 = sub_100290B1C(&unk_1006A2990, &qword_1006A2988, off_100616648);
  *(v21 + 64) = v23;
  *(v21 + 32) = v19;
  v44 = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ([v44 type] == 2)
  {
    [v7 setRemoteUplinkMuted:{objc_msgSend(v44, "senderMuteUplink")}];
    v24 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v7];
    v25 = [v43 provider];
    if (v25)
    {
      v26 = v25;
      v27 = [v7 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v42 + 8))(v17, v8);
      [v26 reportCallWithUUID:isa updated:v24];

      sub_100005EDC();
      return;
    }

    goto LABEL_17;
  }

  v29 = sub_100004778();
  static os_log_type_t.error.getter();
  v30 = sub_100009F24();
  *(v30 + 16) = xmmword_10057D6A0;
  v31 = [v44 type];
  if (v31 == 2)
  {
    v32 = @"SenderMuteUplink";
  }

  else if (v31 == 1)
  {
    v32 = @"Invite";
  }

  else
  {
    if (v31)
    {
      v32 = [NSString stringWithFormat:@"(unknown: %i)", v31];
      goto LABEL_15;
    }

    v32 = @"Unknown";
  }

  v33 = v32;
LABEL_15:
  v34 = v32;
  if (!v34)
  {
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v30 + 56) = &type metadata for String;
  v39 = sub_100009D88();
  *(v30 + 32) = v36;
  *(v30 + 40) = v38;
  *(v30 + 96) = v22;
  *(v30 + 104) = v23;
  *(v30 + 64) = v39;
  *(v30 + 72) = v44;
  v44;
  os_log(_:dso:log:type:_:)();

LABEL_17:
  sub_100005EDC();
}

id sub_100290868(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7.super.isa = 0;
    goto LABEL_6;
  }

  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v8 = [v3 initWithAccount:a1 destinations:v6.super.isa options:v7.super.isa];

  return v8;
}

id sub_10029093C(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v6 initOutgoingWithSession:a1 UUID:isa remoteHandle:a3 wantsVideo:a4 & 1 isRelaying:a5 & 1];

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(a2, v14);
  return v13;
}

id sub_100290A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a1, a2);
  }

  v6 = [v2 initWithData:isa];

  return v6;
}

void *sub_100290A84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  [v3 setRemoteUplinkMuted:1];
  return v3;
}

uint64_t sub_100290AC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100290B1C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100290B6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100049B14(a1, a2);
  }

  return a1;
}

uint64_t sub_100290B90()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_100006884();
    v5 = sub_10004A0AC();
  }

  return v5 & 1;
}

uint64_t sub_100290C08(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = "systemRootLayerTransform";
  v6 = 0x6146656369766564;
  v7 = 0xEC000000796C696DLL;
  v8 = "deviceHomeButtonType";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000014;
      v7 = 0x8000000100561200;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v6 = 0x656C797473;
      break;
    case 3:
      v6 = 0x5379616C70736964;
      v9 = 1701601635;
      goto LABEL_10;
    case 4:
      v7 = 0x8000000100561230;
      v6 = 0xD000000000000018;
      break;
    case 5:
      v6 = 0x636146656C616373;
      v7 = 0xEB00000000726F74;
      break;
    case 6:
      v6 = 0x615272656E726F63;
      v9 = 1937074532;
LABEL_10:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v6 = sub_100007750();
      v7 = 0xED00006874646957;
      break;
    case 8:
      v6 = sub_100007750();
      v7 = 0xEE00746867696548;
      break;
    case 9:
      v6 = 0x776F646E69577369;
      v7 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000014;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x656C797473;
      break;
    case 3:
      v3 = 0x5379616C70736964;
      v10 = 1701601635;
      goto LABEL_21;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000018;
      break;
    case 5:
      v3 = 0x636146656C616373;
      v2 = 0xEB00000000726F74;
      break;
    case 6:
      v3 = 0x615272656E726F63;
      v10 = 1937074532;
LABEL_21:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      sub_10003FB0C();
      v2 = 0xED00006874646957;
      break;
    case 8:
      sub_10003FB0C();
      v2 = 0xEE00746867696548;
      break;
    case 9:
      v3 = 0x776F646E69577369;
      v2 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100290EAC(char a1, char a2)
{
  v2 = "StartCallTranslation";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "joinSharePlayActivity";
  }

  else
  {
    v5 = "StartCallTranslation";
  }

  if (a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "joinSharePlayActivity";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004A0AC();
  }

  return v8 & 1;
}

uint64_t sub_100290F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    sub_100006884();
    v10 = sub_10004A0AC();
  }

  return v10 & 1;
}

uint64_t sub_100290FE0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E6F6850;
  }

  else
  {
    v3 = 0x656D695465636146;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x656E6F6850;
  }

  else
  {
    v5 = 0x656D695465636146;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004A0AC();
  }

  return v8 & 1;
}

uint64_t sub_1002910C8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  return String.init<A>(reflecting:)();
}

uint64_t sub_10029112C(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_unknownObjectRetain();

  return String.init<A>(reflecting:)();
}

uint64_t sub_100291184()
{
  sub_10003A1C8();
  if (!v5)
  {
    return 7104878;
  }

  sub_10003EBF0(&v4, v3);
  sub_100006A94(v3, &v2);
  v0 = String.init<A>(reflecting:)();
  sub_100009B7C(v3);
  return v0;
}

uint64_t sub_100291280(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v7 = a2(0);
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007BAC();
  v16 = v14 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v29 - v19;
  v21 = sub_10026D814(a3, a4);
  sub_100007BF0(v21);
  v23 = *(v22 + 64);
  sub_100006688();
  __chkstk_darwin(v24, v25);
  sub_100007654();
  sub_10003A1C8();
  sub_10000C4F8(v4, 1, v7);
  if (v26)
  {
    return 7104878;
  }

  (*(v10 + 32))(v20, v4, v7);
  (*(v10 + 16))(v16, v20, v7);
  sub_100006884();
  v27 = String.init<A>(reflecting:)();
  (*(v10 + 8))(v20, v7);
  return v27;
}

uint64_t sub_1002914A8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  v2 = sub_100018620();
  v3(v2);
  v4 = v1;
  return String.init<A>(reflecting:)();
}

uint64_t sub_1002914F8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A2BD0, &unk_100586640);
  return String.init<A>(reflecting:)();
}

uint64_t sub_10029167C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A2A10);
  sub_10000AF9C(v0, qword_1006A2A10);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1002916FC(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10029170C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002916FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100291740(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x656E696665646E75;
    case 2:
      return 0x64656C6261736964;
    case 1:
      return 0x64656C62616E65;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

BOOL static CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

uint64_t CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter()
{
  _StringGuts.grow(_:)(38);

  v8 = *v0;
  sub_10000C3E4();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D44496E6567202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v9 = v0[1];
  sub_10000C3E4();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D6574617473202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_100291740(v0[2]);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0x6963697472617028;
}

uint64_t sub_100291954(char a1)
{
  v3 = *v1;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  if (a1)
  {

    sub_100291AFC(4);
    v4 = sub_10033C510();
    v8 = v7;

    v6 = v8;
  }

  _StringGuts.grow(_:)(23);

  v9._countAndFlagsBits = v4;
  v9._object = v6;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3D646967202CLL;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v16 = v1[1];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3D7473202CLL;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100291740(v1[2]);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0x3D64697028;
}

uint64_t sub_100291AFC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

void static CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.__derived_struct_equals(_:_:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v15);
  v17 = *(v16 + 64);
  sub_100006688();
  __chkstk_darwin(v18, v19);
  sub_100007654();
  v20 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070(v20);
  v22 = *(v21 + 64);
  sub_100006688();
  __chkstk_darwin(v23, v24);
  sub_10000F9B8();
  if (*v4 == *v2 && v4[1] == v2[1] && v4[2] == v2[2])
  {
    v25 = *(type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0) + 28);
    v26 = *(v20 + 48);
    sub_10003A1C8();
    sub_10003A1C8();
    sub_100009F5C(v0);
    if (!v27)
    {
      sub_10000C3E4();
      sub_10003A1C8();
      sub_100009F5C(v0 + v26);
      if (!v27)
      {
        (*(v8 + 32))(v14, v0 + v26, v5);
        sub_1000180BC();
        sub_10002625C(v31, v32);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v8 + 8);
        v34 = sub_100006B30();
        v33(v34);
        v35 = sub_100007968();
        v33(v35);
        sub_100009A04(v0, &unk_1006A3DD0, &unk_10057C9D0);
        goto LABEL_13;
      }

      v28 = *(v8 + 8);
      v29 = sub_100007968();
      v30(v29);
LABEL_12:
      sub_100009A04(v0, &unk_1006A2A30, &unk_10057D150);
      goto LABEL_13;
    }

    sub_100009F5C(v0 + v26);
    if (!v27)
    {
      goto LABEL_12;
    }

    sub_100009A04(v0, &unk_1006A3DD0, &unk_10057C9D0);
  }

LABEL_13:
  sub_100005EDC();
}

uint64_t sub_1002921B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
  sub_100008D34();
  sub_100298328(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100292210(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100007928();
  sub_10000AF74(v5, v6, v7, v4);
  v8 = &v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID];
  *v8 = 0;
  v8[8] = 1;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = 0;
  sub_100007928();
  sub_10000AF74(v9, v10, v11, v4);
  *(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v2) = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue] = a1;
  v12 = qword_1006A0780;
  v13 = a1;
  if (v12 != -1)
  {
    sub_100009F3C();
  }

  v14 = type metadata accessor for Logger();
  sub_1000075F0(v14, qword_1006A2A10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initialized spatial persona resolver", v17, 2u);
    sub_100006868();
  }

  v20.receiver = v2;
  v20.super_class = type metadata accessor for CSDConversationSpatialPersonaResolver(0);
  v18 = objc_msgSendSuper2(&v20, "init");

  return v18;
}

uint64_t sub_1002923C4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *(v9 - v8) = v10;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v13 = sub_100006884();
  result = v14(v13);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v16 = [v0 generationCounter];
  v17 = __CFADD__(v16, 1);
  result = v16 + 1;
  if (v17)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id CSDConversationSpatialPersonaResolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSDConversationSpatialPersonaResolver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDConversationSpatialPersonaResolver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100292664()
{
  sub_100005EF4();
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  sub_10000F9B8();
  v9 = type metadata accessor for UUID();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_100007654();
  v16 = type metadata accessor for DispatchPredicate();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  sub_10000D304();
  v23 = *(v0 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue);
  *v3 = v23;
  (*(v19 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v16);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v3, v16);
  if (v23)
  {
    sub_100016270();
    sub_10003A1C8();
    sub_10000C4F8(v1, 1, v9);
    if (v25)
    {
      sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      (*(v12 + 32))(v2, v1, v9);
      v26 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
      v27 = sub_100005298();
      v28 = *&v26[v0];
      __chkstk_darwin(v27, v29);
      v32[2] = v2;

      v30 = sub_100292D2C(0, sub_100298404, v32, v28);

      if (v30 <= *(v0 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter))
      {
        v31 = *(v0 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter);
      }

      (*(v12 + 8))(v2, v9);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10029292C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v37 = a3;
  v39 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v34 - v15;
  v17 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v35 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v24 = &v34 - v23;
  v38 = *a1;
  LODWORD(a1) = *(type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0) + 28);
  v36 = v7;
  (*(v7 + 16))(v24, v37, v6);
  sub_10000AF74(v24, 0, 1, v6);
  v25 = *(v12 + 56);
  v37 = a2;
  sub_10003A1C8();
  sub_10003A1C8();
  if (sub_100015468(v16, 1, v6) != 1)
  {
    v28 = v35;
    sub_10003A1C8();
    if (sub_100015468(&v16[v25], 1, v6) != 1)
    {
      v29 = v36;
      v30 = &v16[v25];
      v31 = v34;
      (*(v36 + 32))(v34, v30, v6);
      sub_10002625C(&qword_1006A2620, &type metadata accessor for UUID);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v31, v6);
      sub_100009A04(v24, &unk_1006A3DD0, &unk_10057C9D0);
      v33(v28, v6);
      result = sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
      v27 = v38;
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_100009A04(v24, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v36 + 8))(v28, v6);
LABEL_6:
    result = sub_100009A04(v16, &unk_1006A2A30, &unk_10057D150);
    v27 = v38;
    goto LABEL_10;
  }

  sub_100009A04(v24, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v16[v25], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  result = sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
  v27 = v38;
LABEL_8:
  if (v27 <= *(v37 + 8))
  {
    v27 = *(v37 + 8);
  }

LABEL_10:
  *v39 = v27;
  return result;
}

uint64_t sub_100292D2C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = *(a4 + 56) + *(v21 + 72) * (__clz(__rbit64(v14)) | (v18 << 6));
      sub_100047E50();
      v22(&v23, &v24, v11);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_100049D70(v11, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      a1 = v23;
      v24 = v23;
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    sub_100049D70(v11, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
LABEL_12:

    return a1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_12;
      }

      v14 = *(a4 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100292F54()
{
  sub_100005EF4();
  v3 = v0;
  v94 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v4 = sub_100008070(v94);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_10000F4E8();
  v91 = v8;
  sub_100006838();
  __chkstk_darwin(v9, v10);
  sub_10000C1C4();
  v92 = v11;
  v12 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  v13 = sub_100007BF0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  sub_10000F4E8();
  v93 = v17;
  sub_100006838();
  __chkstk_darwin(v18, v19);
  sub_10000C1C4();
  v95 = v20;
  v21 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v21);
  v23 = *(v22 + 64);
  sub_100006688();
  __chkstk_darwin(v24, v25);
  sub_10000D304();
  v26 = type metadata accessor for UUID();
  v27 = sub_100007FEC(v26);
  v96 = v28;
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v27, v31);
  __chkstk_darwin(v32, v33);
  v35 = &v90 - v34;
  v36 = type metadata accessor for DispatchPredicate();
  v37 = sub_100007FEC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37, v42);
  sub_100007FDC();
  sub_100007654();
  v43 = *(v3 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue);
  *v1 = v43;
  (*(v39 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v36);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v1, v36);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_100016270();
  sub_10003A1C8();
  sub_10000C4F8(v2, 1, v26);
  if (v57)
  {
    sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
    v45 = *(v3 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState);
  }

  else
  {
    v46 = v3;
    v47 = v96;
    v48 = *(v96 + 32);
    v48(v35, v2, v26);
    v49 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
    sub_100005298();
    v90 = v46;
    v50 = *&v49[v46];
    v51 = *(v47 + 16);
    sub_10000528C();
    v52();
    v53 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v54 = swift_allocObject();
    v48(v54 + v53, &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);

    v30 = v95;
    sub_1002939E8(v55, sub_100298398, v54, v95);

    v56 = v93;
    sub_10003A1C8();
    sub_10000C4F8(v56, 1, v94);
    if (!v57)
    {
      v61 = v35;
      sub_100010190();
      v3 = v92;
      sub_100047D98();
      v62 = v3[1];
      v63 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter;
      v64 = v90;
      v65 = *(v90 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter);
      if (v62 < v65)
      {
        sub_1000080E4();
        sub_100049D70(v3, v66);
        sub_100009A04(v30, &qword_1006A76C0, &unk_100582DC0);
        (*(v96 + 8))(v61, v26);
LABEL_20:
        v84 = *(v64 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState);
        goto LABEL_24;
      }

      if (v62 != v65)
      {
        sub_100009A04(v30, &qword_1006A76C0, &unk_100582DC0);
        v78 = sub_100035DCC();
        v79(v78);
        if (*(v64 + v63) < v62)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      if ((*(v90 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8) & 1) == 0)
      {
        v80 = *(v90 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID);
        sub_100009A04(v30, &qword_1006A76C0, &unk_100582DC0);
        v81 = sub_100035DCC();
        v82(v81);
        if (v80 < *v3)
        {
LABEL_23:
          v88 = v3[2];
          sub_1000080E4();
          sub_100049D70(v3, v89);
          goto LABEL_24;
        }

LABEL_19:
        sub_1000080E4();
        sub_100049D70(v3, v83);
        goto LABEL_20;
      }

      if (qword_1006A0780 == -1)
      {
LABEL_14:
        v67 = type metadata accessor for Logger();
        sub_1000075F0(v67, qword_1006A2A10);
        sub_100010190();
        v68 = v91;
        sub_100047E50();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = sub_100005274();
          v94 = swift_slowAlloc();
          v97 = v94;
          *v71 = 136315138;
          v72 = sub_100291740(*(v68 + 16));
          v74 = v73;
          sub_1000080E4();
          sub_100049D70(v76, v75);
          v77 = sub_10002741C(v72, v74, &v97);

          *(v71 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v69, v70, "localParticipantID not set, so resolving to the max remote-participant-state, state=%s", v71, 0xCu);
          sub_100009B7C(v94);
          sub_100005F40();
          sub_100005F40();
        }

        else
        {

          sub_1000080E4();
          sub_100049D70(v68, v85);
        }

        sub_100009A04(v30, &qword_1006A76C0, &unk_100582DC0);
        v86 = sub_100035DCC();
        v87(v86);
        goto LABEL_23;
      }

LABEL_26:
      sub_100009F3C();
      goto LABEL_14;
    }

    sub_100009A04(v30, &qword_1006A76C0, &unk_100582DC0);
    (*(v47 + 8))(v35, v26);
    v58 = sub_100006DB8();
    sub_100009A04(v58, v59, &unk_100582DC0);
    v60 = *(v90 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState);
  }

LABEL_24:
  sub_100005EDC();
}

uint64_t sub_10029362C(uint64_t a1, uint64_t a2)
{
  v30[1] = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v30[0] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v11);
  v13 = v30 - v12;
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = v30 - v21;
  v23 = *(type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0) + 28);
  (*(v4 + 16))(v22, a2, v3);
  sub_10000AF74(v22, 0, 1, v3);
  v24 = *(v9 + 56);
  sub_10003A1C8();
  sub_10003A1C8();
  if (sub_100015468(v13, 1, v3) != 1)
  {
    sub_10003A1C8();
    if (sub_100015468(&v13[v24], 1, v3) != 1)
    {
      v26 = &v13[v24];
      v27 = v30[0];
      (*(v4 + 32))(v30[0], v26, v3);
      sub_10002625C(&qword_1006A2620, &type metadata accessor for UUID);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v27, v3);
      sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
      v28(v19, v3);
      sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
      return v25 & 1;
    }

    sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v4 + 8))(v19, v3);
    goto LABEL_6;
  }

  sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v13[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_100009A04(v13, &unk_1006A2A30, &unk_10057D150);
    v25 = 0;
    return v25 & 1;
  }

  sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1002939E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v55 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v55, v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v49 = &v48 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v51 = &v48 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v50 = &v48 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = __chkstk_darwin(v22, v23);
  v26 = &v48 - v25;
  v28 = __chkstk_darwin(v24, v27);
  v48 = &v48 - v29;
  __chkstk_darwin(v28, v30);
  v53 = (&v48 - v31);
  sub_100296EFC(a1, a2, a3, v59);
  v32 = v59[1];
  v33 = v61;
  v34 = v62;
  v57 = v63;
  v58 = v59[0];
  v54 = v60;
  v35 = (v60 + 64) >> 6;

  if (v34)
  {
    while (1)
    {
      v37 = v33;
LABEL_7:
      v34 &= v34 - 1;
      v39 = *(v58 + 56);
      v40 = *(v7 + 72);
      sub_100047E50();
      sub_100047D98();
      if (v57(v26))
      {
        break;
      }

      result = sub_100049D70(v26, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      v33 = v37;
      if (!v34)
      {
        goto LABEL_3;
      }
    }

    sub_100047D98();
    result = sub_100047D98();
    v43 = v49;
    while (v34)
    {
LABEL_19:
      v34 &= v34 - 1;
      v46 = *(v58 + 56);
      sub_100047E50();
      sub_100047D98();
      if (v57(v43))
      {
        sub_100047D98();
        v47 = v50;
        sub_100047D98();
        if (*v53 < *v47)
        {
          sub_100049D70(v53, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
          result = sub_100047D98();
        }

        else
        {
          result = sub_100049D70(v47, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
        }
      }

      else
      {
        result = sub_100049D70(v43, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      }
    }

    v44 = v37;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v35)
      {

        sub_100022DDC();
        v42 = v56;
        sub_100047D98();
        v41 = 0;
        return sub_10000AF74(v42, v41, 1, v55);
      }

      v34 = *(v32 + 8 * v45);
      ++v44;
      if (v34)
      {
        v37 = v45;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_3:
    v38 = v33;
    while (1)
    {
      v37 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v37 >= v35)
      {
        sub_100022DDC();

        v41 = 1;
        v42 = v56;
        return sub_10000AF74(v42, v41, 1, v55);
      }

      v34 = *(v32 + 8 * v37);
      ++v38;
      if (v34)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100293EE8()
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  sub_10000F9B8();
  if (qword_1006A0780 != -1)
  {
    sub_100009F3C();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006A2A10);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005274();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Reset] Resetting, %@", v11, 0xCu);
    sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100006868();
  }

  type metadata accessor for UUID();
  sub_100007928();
  sub_10000AF74(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID;
  sub_100008D34();
  sub_100298328(v1, v8 + v18);
  swift_endAccess();
  v19 = v8 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID;
  *v19 = 0;
  v19[8] = 1;
  *(v8 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter) = 0;
  *(v8 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState) = 0;
  type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v20 = Dictionary.init(dictionaryLiteral:)();
  v21 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
  swift_beginAccess();
  v22 = *&v21[v8];
  *&v21[v8] = v20;
}

void sub_100294148()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v13 = sub_100007BF0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  sub_100007BAC();
  __chkstk_darwin(v17, v18);
  sub_100006B48();
  __chkstk_darwin(v19, v20);
  sub_100035CAC();
  __chkstk_darwin(v21, v22);
  v25 = &v58 - v24;
  v26 = &v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID];
  if (v26[8] == 1)
  {
    v60 = v11;
    v61 = v5;
    v62 = v9;
    v63 = v23;
    v59 = v7;
    v27 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID;
    sub_100016270();
    sub_10003A1C8();
    v28 = type metadata accessor for UUID();
    v29 = sub_100015468(v25, 1, v28);
    sub_100009A04(v25, &unk_1006A3DD0, &unk_10057C9D0);
    if (v29 == 1)
    {
      *v26 = v60;
      v26[8] = 0;
      if (v61)
      {
        sub_100294620(v2);
      }

      else
      {
        sub_100007928();
        sub_10000AF74(v46, v47, v48, v28);
      }

      v49 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
      sub_100008D34();
      sub_100298328(v2, &v3[v49]);
      swift_endAccess();
      (*(*(v28 - 8) + 16))(v1, v62, v28);
      sub_10000AF74(v1, 0, 1, v28);
      sub_100008D34();
      sub_100298328(v1, &v3[v27]);
      swift_endAccess();
      v50 = v63;
      sub_10003A1C8();
      LODWORD(v49) = sub_100015468(v50, 1, v28);
      sub_10000528C();
      sub_100009A04(v51, v52, v53);
      if (v49 == 1)
      {
        v54 = 1;
        if ((v59 & 1) == 0)
        {
          v54 = 2;
        }

        *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v54;
      }

      if (qword_1006A0780 != -1)
      {
        sub_100009F3C();
      }

      v55 = type metadata accessor for Logger();
      sub_1000075F0(v55, qword_1006A2A10);
      v56 = v3;
      v40 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v40, v57))
      {
        goto LABEL_26;
      }

      sub_100005274();
      v42 = sub_100007974();
      sub_100027E4C(v42, 5.7779e-34);
      v45 = "[Config] Set successful, %@";
    }

    else
    {
      if (qword_1006A0780 != -1)
      {
        sub_100009F3C();
      }

      v38 = type metadata accessor for Logger();
      sub_1000075F0(v38, qword_1006A2A10);
      v39 = v3;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_26;
      }

      sub_100005274();
      v42 = sub_100007974();
      sub_100027E4C(v42, 5.7779e-34);
      v45 = "[Config] Bad API usage; groupUUID is already set, %@";
    }

    sub_10000B87C(&_mh_execute_header, v43, v44, v45);
    sub_100009A04(v42, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_100005F40();
LABEL_26:

    sub_100005EDC();
    return;
  }

  if (qword_1006A0780 != -1)
  {
    sub_100009F3C();
  }

  v30 = type metadata accessor for Logger();
  sub_1000075F0(v30, qword_1006A2A10);
  v31 = v3;
  v63 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v32))
  {
    v33 = sub_100005274();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v31;
    *v34 = v31;
    v35 = v31;
    _os_log_impl(&_mh_execute_header, v63, v32, "[Config] Bad API usage; localParticipantID is already set, %@", v33, 0xCu);
    sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  sub_100005EDC();
}

uint64_t sub_100294620@<X0>(uint64_t a1@<X8>)
{
  if ([v1 type] == 1)
  {
    v3 = [v1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v4, 1, v5);
}

void sub_1002947CC()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14, v15);
  sub_10000C1C4();
  v63 = v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  sub_10000D304();
  v24 = *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *v1 = v24;
  (*(v20 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v17);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  v28 = *(v20 + 8);
  v27 = (v20 + 8);
  v28(v1, v17);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    sub_100009F3C();
    goto LABEL_13;
  }

  p_cb = &OBJC_PROTOCOL___OS_dispatch_source.cb;
  if (v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8] == 1)
  {
    if (qword_1006A0780 != -1)
    {
      sub_100009F3C();
    }

    v29 = type metadata accessor for Logger();
    sub_1000075F0(v29, qword_1006A2A10);
    v30 = v3;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = v62;
      *v33 = 67109378;
      *(v33 + 4) = v5 & 1;
      *(v33 + 8) = 2080;
      v61 = v32;
      sub_100005298();
      sub_10003A1C8();
      sub_10000A5D8();
      v35 = sub_100291280(v63, v34, &unk_1006A3DD0, &unk_10057C9D0);
      v37 = v36;
      p_cb = &OBJC_PROTOCOL___OS_dispatch_source.cb;
      sub_100009A04(v63, &unk_1006A3DD0, &unk_10057C9D0);
      v38 = sub_10002741C(v35, v37, &v65);

      *(v33 + 10) = v38;
      _os_log_impl(&_mh_execute_header, v31, v61, "Setting local-spatial-persona-enabled=%{BOOL}d without localParticipantID set groupUUID=%s", v33, 0x12u);
      sub_100009B7C(v62);
      sub_100005F40();
      sub_100005F40();
    }
  }

  sub_100016270();
  sub_10002F718();
  v39 = type metadata accessor for UUID();
  v40 = sub_100015468(v13, 1, v39);
  v41 = sub_100006DB8();
  sub_100009A04(v41, v42, &unk_10057C9D0);
  v27 = &unk_1006BA000;
  if (v40 != 1)
  {
    *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = sub_1002923C4();
  }

  v43 = 1;
  if ((v5 & 1) == 0)
  {
    v43 = 2;
  }

  *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v43;
  if (qword_1006A0780 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v44 = type metadata accessor for Logger();
  sub_1000075F0(v44, qword_1006A2A10);
  v45 = v3;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v48 = 67109890;
    *(v48 + 4) = v5 & 1;
    *(v48 + 8) = 2048;
    *(v48 + 10) = *&v45[v27[33]];

    *(v48 + 18) = 2080;
    v49 = [v45 participantStateStrWithTruncate:1];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_10002741C(v50, v52, &v64);

    *(v48 + 20) = v53;
    *(v48 + 28) = 2080;
    v54 = *(p_cb + 330);
    sub_100005298();
    sub_10003A1C8();
    sub_10000A5D8();
    v56 = sub_100291280(v63, v55, &unk_1006A3DD0, &unk_10057C9D0);
    v58 = v57;
    sub_100009A04(v63, &unk_1006A3DD0, &unk_10057C9D0);
    v59 = sub_10002741C(v56, v58, &v64);

    *(v48 + 30) = v59;
    v27 = &unk_1006BA000;
    _os_log_impl(&_mh_execute_header, v46, v47, "Setting local-spatial-persona-enabled=%{BOOL}d, genID=%llu, participant-state=%s for groupUUID=%s", v48, 0x26u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100006868();
  }

  else
  {
  }

  v60 = *&v45[v27[33]];
  sub_100005EDC();
}

void sub_100294D80()
{
  sub_100005EF4();
  v4 = v0;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v42 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070(v16);
  v18 = *(v17 + 64);
  sub_100006688();
  __chkstk_darwin(v19, v20);
  sub_10000D304();
  v21 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v22 = sub_100007BF0(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  sub_10000F4E8();
  v43 = v26;
  sub_100006838();
  __chkstk_darwin(v27, v28);
  sub_100035CAC();
  __chkstk_darwin(v29, v30);
  sub_10000BB28();
  if (v6)
  {
    sub_100294620(v1);
  }

  else
  {
    sub_100007928();
    sub_10000AF74(v31, v32, v33, v7);
  }

  v34 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
  sub_100016270();
  v35 = *(v16 + 48);
  sub_10003A1C8();
  sub_10003A1C8();
  sub_10000C4F8(v2, 1, v7);
  if (v36)
  {
    sub_10000C4F8(v2 + v35, 1, v7);
    if (v36)
    {
      sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_15:
      sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_10003A1C8();
  sub_10000C4F8(v2 + v35, 1, v7);
  if (v36)
  {
    (*(v42 + 8))(v3, v7);
LABEL_12:
    sub_100009A04(v2, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_13;
  }

  (*(v42 + 32))(v15, v2 + v35, v7);
  sub_1000180BC();
  sub_10002625C(v38, v39);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v42 + 8);
  v41(v15, v7);
  v41(v3, v7);
  sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
  if (v40)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_10003A1C8();
  sub_100008D34();
  sub_100298328(v43, &v4[v34]);
  swift_endAccess();
  *&v4[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = 0;
  v37 = [v4 nearbyClusterState];
  sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
  *&v4[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v37;
LABEL_16:
  sub_100005EDC();
}

void sub_1002951A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v23;
  a20 = v24;
  v286 = v26;
  v287 = v25;
  v288 = v27;
  v295 = v28;
  v29 = type metadata accessor for UUID();
  v30 = sub_100007FEC(v29);
  v291 = v31;
  v292 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30, v34);
  sub_10000F4E8();
  v285 = v35;
  sub_100006838();
  __chkstk_darwin(v36, v37);
  sub_10000C1C4();
  v278 = v38;
  v282 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v39 = sub_100008070(v282);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39, v42);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v43, v44);
  sub_10000C1C4();
  v279 = v45;
  v46 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  v47 = sub_100007BF0(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47, v50);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v51, v52);
  v54 = v277 - v53;
  v55 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v56 = sub_100007BF0(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56, v59);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v60, v61);
  sub_100005F58();
  v290 = v62;
  sub_100006838();
  __chkstk_darwin(v63, v64);
  sub_100005F58();
  v284 = v65;
  sub_100006838();
  __chkstk_darwin(v66, v67);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v68, v69);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v70, v71);
  sub_10000BB28();
  v294 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v72 = sub_100008070(v294);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72, v75);
  sub_100007BAC();
  v78 = v76 - v77;
  __chkstk_darwin(v79, v80);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v81, v82);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v83, v84);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v85, v86);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v87, v88);
  sub_100006B48();
  v91 = __chkstk_darwin(v89, v90);
  v93 = v277 - v92;
  __chkstk_darwin(v91, v94);
  sub_100005F58();
  v289 = v95;
  sub_100006838();
  __chkstk_darwin(v96, v97);
  sub_10000C1C4();
  v293 = v98;
  v99 = type metadata accessor for DispatchPredicate();
  v100 = sub_100007FEC(v99);
  v102 = v101;
  v104 = *(v103 + 64);
  __chkstk_darwin(v100, v105);
  sub_100007FDC();
  v108 = (v107 - v106);
  v109 = *&v20[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *(v107 - v106) = v109;
  (*(v102 + 104))(v107 - v106, enum case for DispatchPredicate.onQueue(_:), v99);
  v110 = v109;
  LOBYTE(v109) = _dispatchPreconditionTest(_:)();
  v112 = *(v102 + 8);
  v111 = v102 + 8;
  v113 = sub_100006DB8();
  v114(v113);
  if ((v109 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v108 = v20;
  v115 = v295;
  if ((v20[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8] & 1) != 0 || *&v20[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID] != v295)
  {
    if (v286)
    {
      sub_100294620(v21);
    }

    else
    {
      sub_100007928();
      sub_10000AF74(v123, v124, v125, v292);
    }

    v111 = v293;
    v126 = v294;
    v127 = v287;
    v128 = v288;
    *v293 = v115;
    *(v111 + 8) = v128;
    *(v111 + 16) = v127;
    v288 = *(v126 + 28);
    sub_1002982D0();
    v21 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
    sub_100005298();
    sub_1002CB3E0(v115, *&v21[v108]);
    sub_100009F5C(v54);
    v280 = v108;
    if (!v203)
    {
      sub_100010190();
      v151 = v289;
      sub_100047D98();
      if (*(v151 + 8) < v128)
      {
        if (qword_1006A0780 != -1)
        {
          sub_100009F3C();
        }

        v152 = type metadata accessor for Logger();
        sub_1000075F0(v152, qword_1006A2A10);
        sub_10000F4D0();
        sub_100047E50();
        sub_100047E50();
        v153 = v108;
        v154 = Logger.logObject.getter();
        static os_log_type_t.default.getter();

        if (sub_10003A574())
        {
          swift_slowAlloc();
          v287 = v21;
          v297[0] = sub_100008D4C();
          *v21 = 136315906;
          v155 = CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
          v157 = v156;
          sub_1000080E4();
          v158 = v93;
          v160 = v159;
          v286 = v159;
          sub_100049D70(v158, v161);
          v162 = sub_100010054();
          sub_10002741C(v162, v157, v163);
          sub_10000C3CC();
          *(v21 + 4) = v155;
          *(v21 + 6) = 2080;
          CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
          v165 = v164;
          sub_100049D70(v22, v160);
          v166 = sub_100010054();
          sub_10002741C(v166, v165, v167);
          sub_10000C3CC();
          sub_10000FBC8();
          v140 = v295;
          *(v21 + 3) = v295;
          *(v21 + 16) = 2080;
          sub_100005298();
          v168 = v281;
          sub_10003A1C8();
          sub_10000A5D8();
          v170 = sub_100291280(v168, v169, &unk_1006A3DD0, &unk_10057C9D0);
          v172 = v171;
          sub_100009A04(v168, &unk_1006A3DD0, &unk_10057C9D0);
          sub_10002741C(v170, v172, v297);
          sub_10000C3CC();
          *(v21 + 34) = &unk_1006A3DD0;
          sub_10000C6BC();
          _os_log_impl(v173, v174, v175, v176, v177, 0x2Au);
          swift_arrayDestroy();
          v111 = v293;
          sub_100005F40();
          sub_100005F40();

          v178 = sub_100007660();
          sub_100049D70(v178, v179);
          goto LABEL_22;
        }

        sub_10000F4D0();
        sub_100049D70(v22, v187);
        sub_100049D70(v93, v154);
        v183 = v151;
        v182 = v154;
        goto LABEL_30;
      }

      v287 = v21;
      v184 = *(v294 + 28);
      v185 = *(v282 + 48);
      v186 = v279;
      sub_10002F718();
      sub_10002F718();
      v180 = v292;
      sub_10000C4F8(v186, 1, v292);
      if (v203)
      {
        sub_100015EAC(v186 + v185);
        v181 = v291;
        if (v203)
        {
          sub_100009A04(v186, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_60:
          if (qword_1006A0780 != -1)
          {
            sub_100009F3C();
          }

          v254 = type metadata accessor for Logger();
          sub_1000075F0(v254, qword_1006A2A10);
          sub_10000F4D0();
          v255 = v277[1];
          sub_100047E50();
          v256 = v289;
          sub_10000B9E4(&v298);
          sub_100047E50();
          v257 = v108;
          v258 = v111;
          v259 = v257;
          v260 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_10003A574())
          {
            swift_slowAlloc();
            v296[0] = sub_100008D4C();
            *v185 = 136315906;
            CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
            sub_10003DDA8();
            sub_100015CA4();
            sub_100049D70(v261, v262);
            sub_10002741C(v255, v255, v296);
            sub_10003DDA8();

            sub_10003EA5C();
            sub_100022048();
            sub_10002741C(v255, v255, v296);
            sub_10003DDA8();

            sub_10000FBC8();
            *(v185 + 24) = v295;
            *(v185 + 32) = v256;
            sub_100005298();
            v263 = v281;
            sub_100021EE4();
            sub_10003A1C8();
            sub_10000A5D8();
            sub_100021EE4();
            v268 = sub_100291280(v264, v265, v266, v267);
            v270 = v269;
            sub_100009A04(v263, &unk_1006A3DD0, &unk_10057C9D0);
            sub_10002741C(v268, v270, v296);
            sub_10000C3CC();
            *(v185 + 34) = &unk_1006A3DD0;
            sub_10000C6BC();
            _os_log_impl(v271, v272, v273, v274, v275, 0x2Au);
            swift_arrayDestroy();
            sub_100005F40();
            sub_100005F40();

            sub_100049D70(v289, v258);
            v202 = v293;
            v201 = v258;
          }

          else
          {

            sub_10000F4D0();
            sub_100049D70(v93, v276);
            sub_100049D70(v255, v260);
            sub_100049D70(v256, v260);
            v202 = sub_100006DB8();
          }

          goto LABEL_45;
        }
      }

      else
      {
        sub_10003A1C8();
        sub_100015EAC(v186 + v185);
        v181 = v291;
        if (!v203)
        {
          v250 = v278;
          (*(v291 + 32))(v278, v186 + v185, v180);
          sub_1000180BC();
          sub_10002625C(v251, v252);
          v93 = dispatch thunk of static Equatable.== infix(_:_:)();
          v185 = *(v181 + 8);
          (v185)(v250, v180);
          v253 = sub_10000BB38();
          (v185)(v253);
          sub_100009A04(v186, &unk_1006A3DD0, &unk_10057C9D0);
          if (v93)
          {
            goto LABEL_60;
          }

LABEL_51:
          if (qword_1006A0780 != -1)
          {
            sub_100009F3C();
          }

          v207 = type metadata accessor for Logger();
          sub_1000075F0(v207, qword_1006A2A10);
          sub_10000F4D0();
          v208 = v277[4];
          sub_100047E50();
          v209 = v289;
          sub_10000B9E4(&a10);
          sub_100047E50();
          v210 = v108;
          v211 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_10003A574())
          {
            swift_slowAlloc();
            v297[0] = sub_100008D4C();
            *v208 = 136315906;
            CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
            sub_100015CA4();
            v286 = v212;
            sub_100049D70(v208, v212);
            v213 = sub_100010054();
            sub_10002741C(v213, v180, v214);
            sub_10003DDA8();

            sub_10003EA5C();
            sub_100022048();
            v215 = sub_100010054();
            sub_10002741C(v215, v180, v216);
            sub_10003DDA8();

            sub_10000FBC8();
            v140 = v295;
            *(v208 + 24) = v295;
            *(v208 + 32) = v208;
            sub_100005298();
            v217 = v281;
            sub_100021EE4();
            sub_10003A1C8();
            sub_10000A5D8();
            sub_100021EE4();
            v222 = sub_100291280(v218, v219, v220, v221);
            v224 = v223;
            v180 = v292;
            sub_100009A04(v217, &unk_1006A3DD0, &unk_10057C9D0);
            sub_10002741C(v222, v224, v297);
            sub_10000C3CC();
            *(v208 + 34) = &unk_1006A3DD0;
            sub_10000C6BC();
            _os_log_impl(v225, v226, v227, v228, v229, 0x2Au);
            swift_arrayDestroy();
            sub_100005F40();
            sub_100005F40();

            v230 = sub_100007660();
            v181 = v291;
            sub_100049D70(v230, v231);
            v111 = v293;
          }

          else
          {

            sub_10000F4D0();
            sub_100049D70(v93, v247);
            v248 = sub_100006884();
            sub_100049D70(v248, v249);
            sub_100049D70(v209, v211);
            v111 = v293;
            v140 = v295;
          }

          v188 = v290;
LABEL_32:
          sub_100010190();
          v189 = v283;
          sub_100047E50();
          sub_10000AF74(v189, 0, 1, v294);
          sub_100008D34();
          sub_100381A3C(v189, v140);
          swift_endAccess();
          sub_100005298();
          v190 = v284;
          sub_10003A1C8();
          sub_100015EAC(v190);
          if (v203)
          {
            sub_1000080E4();
            sub_100049D70(v111, v191);
            sub_100009A04(v190, &unk_1006A3DD0, &unk_10057C9D0);
            goto LABEL_46;
          }

          v192 = *(v181 + 32);
          v193 = v285;
          v194 = sub_100006B30();
          v192(v194);
          (*(v181 + 16))(v188, v193, v180);
          sub_10000AF74(v188, 0, 1, v180);
          v195 = *(v282 + 48);
          sub_10000B9E4(&a15);
          sub_10003A1C8();
          sub_10002F718();
          sub_100015EAC(v140);
          if (v196)
          {
            sub_100009A04(v188, &unk_1006A3DD0, &unk_10057C9D0);
            sub_100015EAC(v140 + v195);
            if (v203)
            {
              sub_100009A04(v140, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_56:
              v243 = v280;
              v244 = [v280 nearbyClusterState];
              (*(v181 + 8))(v285, v180);
              sub_1000080E4();
              sub_100049D70(v111, v245);
              v246 = *&v243[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState];
              *&v243[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v244;
              goto LABEL_46;
            }
          }

          else
          {
            sub_10003A1C8();
            sub_100015EAC(v140 + v195);
            if (!v197)
            {
              v232 = v278;
              (v192)(v278, v140 + v195, v180);
              sub_1000180BC();
              sub_10002625C(v233, v234);
              LODWORD(v295) = dispatch thunk of static Equatable.== infix(_:_:)();
              v235 = *(v181 + 8);
              v235(v232, v180);
              sub_10000528C();
              sub_100009A04(v236, v237, v238);
              v239 = sub_10000BB38();
              (v235)(v239);
              sub_10000528C();
              sub_100009A04(v240, v241, v242);
              if (v295)
              {
                goto LABEL_56;
              }

              goto LABEL_44;
            }

            sub_100009A04(v188, &unk_1006A3DD0, &unk_10057C9D0);
            v198 = *(v181 + 8);
            v199 = sub_10000BB38();
            v200(v199);
          }

          sub_100009A04(v140, &unk_1006A2A30, &unk_10057D150);
          v235 = *(v181 + 8);
LABEL_44:
          v235(v285, v180);
          sub_1000080E4();
          v202 = v111;
LABEL_45:
          sub_100049D70(v202, v201);
          goto LABEL_46;
        }

        v204 = *(v291 + 8);
        v205 = sub_10000BB38();
        v206(v205);
      }

      sub_100009A04(v186, &unk_1006A2A30, &unk_10057D150);
      goto LABEL_51;
    }

    sub_100009A04(v54, &qword_1006A76C0, &unk_100582DC0);
    if (qword_1006A0780 == -1)
    {
LABEL_15:
      v129 = type metadata accessor for Logger();
      sub_1000075F0(v129, qword_1006A2A10);
      sub_100010190();
      sub_100047E50();
      v130 = v108;
      v131 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_10003A574())
      {
        v132 = swift_slowAlloc();
        v287 = v21;
        v133 = v132;
        v297[0] = swift_slowAlloc();
        *v133 = 136315650;
        CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
        v135 = v134;
        sub_1000080E4();
        sub_100049D70(v78, v136);
        v137 = sub_100010054();
        v139 = sub_10002741C(v137, v135, v138);

        *(v133 + 4) = v139;
        *(v133 + 12) = 2048;
        v140 = v295;
        *(v133 + 14) = v295;
        *(v133 + 22) = 2080;
        sub_100005298();
        v141 = v281;
        sub_10003A1C8();
        sub_10000A5D8();
        v143 = sub_100291280(v141, v142, &unk_1006A3DD0, &unk_10057C9D0);
        v145 = v144;
        v111 = v293;
        sub_100009A04(v141, &unk_1006A3DD0, &unk_10057C9D0);
        sub_10002741C(v143, v145, v297);
        sub_10003DDA8();

        *(v133 + 24) = &unk_1006A3DD0;
        sub_10000C6BC();
        _os_log_impl(v146, v147, v148, v149, v150, 0x20u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();

LABEL_22:
        v181 = v291;
        v180 = v292;
LABEL_31:
        v188 = v290;
        goto LABEL_32;
      }

      sub_1000080E4();
      v183 = v78;
LABEL_30:
      sub_100049D70(v183, v182);
      v181 = v291;
      v180 = v292;
      v140 = v295;
      goto LABEL_31;
    }

LABEL_67:
    sub_100009F3C();
    goto LABEL_15;
  }

  if (qword_1006A0780 != -1)
  {
    sub_100009F3C();
  }

  v116 = type metadata accessor for Logger();
  sub_1000075F0(v116, qword_1006A2A10);
  v117 = v20;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v118, v119))
  {
    sub_100005274();
    v120 = sub_100007974();
    sub_100027E4C(v120, 5.7779e-34);
    sub_10000B87C(&_mh_execute_header, v121, v122, "[Upsert] Bad API usage; localParticipantID used, %@");
    sub_100009A04(v120, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_100005F40();
  }

LABEL_46:
  sub_100005EDC();
}

void sub_100296CE0()
{
  sub_100296D6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100296D6C()
{
  if (!qword_1006A20C8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A20C8);
    }
  }
}

void sub_100296DCC()
{
  sub_100296D6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100296EA8()
{
  result = qword_1006A2B40;
  if (!qword_1006A2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2B40);
  }

  return result;
}

uint64_t sub_100296EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

Swift::Int sub_100296F38(uint64_t *a1)
{
  v2 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A6038(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100297050(v7);
  *a1 = v3;
  return result;
}

unint64_t sub_100296FEC()
{
  result = qword_1006A2C20;
  if (!qword_1006A2C20)
  {
    sub_10026DCB4(&unk_1006A3C60, &unk_10057D910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2C20);
  }

  return result;
}

Swift::Int sub_100297050(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10026D814(&qword_1006A2C18, &unk_10057D990);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002973E4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100297198(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100297198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v8 = *(*(v40 - 8) + 64);
  v10 = __chkstk_darwin(v40, v9);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = (&v30 - v14);
  result = __chkstk_darwin(v13, v16);
  v20 = (&v30 - v19);
  v32 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v37 = -v22;
    v38 = v21;
    v24 = a1 - a3;
    v31 = v22;
    v25 = v21 + v22 * a3;
    while (2)
    {
      v35 = v23;
      v36 = a3;
      v33 = v25;
      v34 = v24;
      v26 = v24;
      do
      {
        sub_10003A1C8();
        sub_10003A1C8();
        v27 = *v20;
        v28 = *v15;
        sub_100009A04(v15, &qword_1006A2C18, &unk_10057D990);
        result = sub_100009A04(v20, &qword_1006A2C18, &unk_10057D990);
        if (v27 >= v28)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        sub_1002982D0();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1002982D0();
        v23 += v37;
        v25 += v37;
      }

      while (!__CFADD__(v26++, 1));
      a3 = v36 + 1;
      v23 = v35 + v31;
      v24 = v34 - 1;
      v25 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1002973E4(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v110 = a1;
  v125 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v117 = *(v125 - 8);
  v7 = *(v117 + 64);
  v9 = __chkstk_darwin(v125, v8);
  v114 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v124 = &v109 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v127 = (&v109 - v16);
  __chkstk_darwin(v15, v17);
  v126 = &v109 - v18;
  v19 = a3[1];
  v119 = a3;
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_101:
    v121 = v21;
    v21 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v120;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v102 = (v121 + 16);
      for (i = *(v121 + 2); i >= 2; *v102 = i)
      {
        if (!*v119)
        {
          goto LABEL_138;
        }

        v104 = &v121[16 * i];
        v105 = *v104;
        v106 = &v102[2 * i];
        v107 = *(v106 + 1);
        sub_100297D28(*v119 + *(v117 + 72) * *v104, *v119 + *(v117 + 72) * *v106, *v119 + *(v117 + 72) * v107, v21);
        if (v4)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v102)
        {
          goto LABEL_127;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        v108 = *v102 - i;
        if (*v102 < i)
        {
          goto LABEL_128;
        }

        i = *v102 - 1;
        sub_1003A5954(v106 + 16, v108, v106);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v121 = sub_1003A5940(v121);
    goto LABEL_103;
  }

  v109 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v111 = v20;
    if (v20 + 1 < v19)
    {
      v121 = v21;
      v122 = v20 + 1;
      v24 = *v119;
      v25 = *(v117 + 72);
      v21 = (*v119 + v25 * v23);
      v26 = v126;
      sub_10003A1C8();
      v27 = v127;
      sub_10003A1C8();
      v28 = *v26;
      v115 = *v27;
      v116 = v28;
      sub_100009A04(v27, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v26, &qword_1006A2C18, &unk_10057D990);
      v29 = v22 + 2;
      v118 = v25;
      v30 = v24 + v25 * (v22 + 2);
      while (1)
      {
        v31 = v29;
        if (++v122 >= v19)
        {
          break;
        }

        LODWORD(v123) = v116 < v115;
        v32 = v126;
        sub_10003A1C8();
        v33 = v19;
        v34 = v127;
        sub_10003A1C8();
        v4 = *v32;
        v35 = *v34;
        v36 = v34;
        v19 = v33;
        sub_100009A04(v36, &qword_1006A2C18, &unk_10057D990);
        sub_100009A04(v32, &qword_1006A2C18, &unk_10057D990);
        v30 += v118;
        v21 += v118;
        v29 = v31 + 1;
        if (((v123 ^ (v4 >= v35)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v122 = v19;
LABEL_9:
      if (v116 >= v115)
      {
        v21 = v121;
        v23 = v122;
        v22 = v111;
      }

      else
      {
        v23 = v122;
        if (v122 < v111)
        {
          goto LABEL_132;
        }

        if (v111 >= v122)
        {
          v21 = v121;
          v22 = v111;
        }

        else
        {
          if (v19 >= v31)
          {
            v37 = v31;
          }

          else
          {
            v37 = v19;
          }

          v38 = v118 * (v37 - 1);
          v39 = v118 * v37;
          v4 = v111 * v118;
          v40 = v111;
          v22 = v111;
          do
          {
            if (v40 != --v23)
            {
              v41 = *v119;
              if (!*v119)
              {
                goto LABEL_139;
              }

              sub_1002982D0();
              v42 = v4 < v38 || v41 + v4 >= v41 + v39;
              if (v42)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1002982D0();
              v22 = v111;
            }

            ++v40;
            v38 -= v118;
            v39 -= v118;
            v4 += v118;
          }

          while (v40 < v23);
          v21 = v121;
          v23 = v122;
        }
      }
    }

    v43 = v119[1];
    if (v23 < v43)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v109)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v23;
    if ((v54 & 1) == 0)
    {
      sub_10047002C(0, *(v21 + 2) + 1, 1, v21);
      v21 = v99;
    }

    v56 = *(v21 + 2);
    v55 = *(v21 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      sub_10047002C(v55 > 1, v56 + 1, 1, v21);
      v21 = v100;
    }

    *(v21 + 2) = v57;
    v58 = v21 + 32;
    v59 = &v21[16 * v56 + 32];
    v60 = v122;
    *v59 = v22;
    *(v59 + 1) = v60;
    v123 = *v110;
    if (!v123)
    {
      goto LABEL_140;
    }

    if (v56)
    {
      v121 = v21;
      while (1)
      {
        v61 = v57 - 1;
        v62 = &v58[2 * v57 - 2];
        v63 = &v21[16 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v64 = *(v21 + 4);
          v65 = *(v21 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_68:
          if (v67)
          {
            goto LABEL_117;
          }

          v79 = *v63;
          v78 = *(v63 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_120;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_125;
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
          goto LABEL_119;
        }

        v86 = *v63;
        v85 = *(v63 + 1);
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_83:
        if (v82)
        {
          goto LABEL_122;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_124;
        }

        if (v89 < v81)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v61 - 1 >= v57)
        {
          __break(1u);
LABEL_112:
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
          goto LABEL_134;
        }

        if (!*v119)
        {
          goto LABEL_137;
        }

        v93 = &v58[2 * v61 - 2];
        v94 = *v93;
        v95 = v58;
        v96 = v61;
        v21 = &v58[2 * v61];
        v4 = *(v21 + 1);
        v97 = v120;
        sub_100297D28(*v119 + *(v117 + 72) * *v93, *v119 + *(v117 + 72) * *v21, *v119 + *(v117 + 72) * v4, v123);
        v120 = v97;
        if (v97)
        {
          goto LABEL_99;
        }

        if (v4 < v94)
        {
          goto LABEL_112;
        }

        v98 = *(v121 + 2);
        if (v96 > v98)
        {
          goto LABEL_113;
        }

        *v93 = v94;
        v93[1] = v4;
        if (v96 >= v98)
        {
          goto LABEL_114;
        }

        v57 = v98 - 1;
        sub_1003A5954(v21 + 16, v98 - 1 - v96, v21);
        v21 = v121;
        *(v121 + 2) = v98 - 1;
        v58 = v95;
        if (v98 <= 2)
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
        goto LABEL_115;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_116;
      }

      v75 = *(v63 + 1);
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_118;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_129;
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
    v19 = v119[1];
    v20 = v122;
    if (v122 >= v19)
    {
      goto LABEL_101;
    }
  }

  v44 = v22 + v109;
  if (__OFADD__(v22, v109))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v119[1];
  }

  if (v44 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v44)
  {
    goto LABEL_47;
  }

  v121 = v21;
  v45 = *(v117 + 72);
  v46 = *v119 + v45 * (v23 - 1);
  v4 = -v45;
  v47 = v22 - v23;
  v123 = *v119;
  v112 = v45;
  v113 = v44;
  v48 = v123 + v23 * v45;
LABEL_40:
  v122 = v23;
  v115 = v48;
  v116 = v47;
  v118 = v46;
  v49 = v46;
  while (1)
  {
    v50 = v126;
    sub_10003A1C8();
    v51 = v127;
    sub_10003A1C8();
    v52 = *v50;
    v53 = *v51;
    sub_100009A04(v51, &qword_1006A2C18, &unk_10057D990);
    sub_100009A04(v50, &qword_1006A2C18, &unk_10057D990);
    if (v52 >= v53)
    {
LABEL_45:
      v23 = v122 + 1;
      v46 = v118 + v112;
      v47 = v116 - 1;
      v48 = &v115[v112];
      if (v122 + 1 == v113)
      {
        v23 = v113;
        v21 = v121;
        v22 = v111;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v123)
    {
      break;
    }

    sub_1002982D0();
    swift_arrayInitWithTakeFrontToBack();
    sub_1002982D0();
    v49 += v4;
    v48 += v4;
    v42 = __CFADD__(v47++, 1);
    if (v42)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_100297D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v8 = *(*(v57 - 8) + 64);
  v10 = __chkstk_darwin(v57, v9);
  v58 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v10, v12);
  v59 = (&v50 - v14);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v21 = v17 / v16;
  v63 = a1;
  v62 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    sub_100395D44(a2, v19 / v16, a4);
    v35 = a4 + v22 * v16;
    v36 = -v16;
    v37 = v35;
    v53 = -v16;
    v54 = a4;
    v60 = a1;
LABEL_36:
    v51 = v37;
    v55 = a2 + v36;
    while (1)
    {
      if (v35 <= a4)
      {
        v63 = a2;
        v61 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v38 = a2;
      v39 = a3 + v36;
      v40 = v35 + v36;
      v41 = v59;
      v42 = v35;
      sub_10003A1C8();
      v43 = v58;
      sub_10003A1C8();
      v56 = *v41;
      v44 = v43;
      v45 = *v43;
      sub_100009A04(v44, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v41, &qword_1006A2C18, &unk_10057D990);
      if (v56 < v45)
      {
        if (a3 < v38 || v39 >= v38)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
          v36 = v53;
          a4 = v54;
          a3 = v39;
          a1 = v60;
          v35 = v42;
        }

        else
        {
          v36 = v53;
          v37 = v52;
          v18 = a3 == v38;
          a4 = v54;
          v48 = v55;
          a2 = v55;
          a3 = v39;
          a1 = v60;
          v35 = v42;
          if (!v18)
          {
            v49 = v52;
            swift_arrayInitWithTakeBackToFront();
            v35 = v42;
            a2 = v48;
            v37 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = a3 < v42 || v39 >= v42;
      a2 = v38;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v36;
        v35 = v40;
        v37 = v40;
        v36 = v53;
        a4 = v54;
        a1 = v60;
      }

      else
      {
        v37 = v40;
        v18 = v42 == a3;
        a3 += v36;
        v35 = v40;
        v36 = v53;
        a4 = v54;
        a1 = v60;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v39;
          v35 = v40;
          v37 = v40;
        }
      }
    }

    v63 = a2;
    v61 = v51;
  }

  else
  {
    sub_100395D44(a1, v17 / v16, a4);
    v55 = a3;
    v56 = a4 + v21 * v16;
    v61 = v56;
    v23 = a1;
    while (a4 < v56 && a2 < a3)
    {
      v60 = v23;
      v25 = v16;
      v26 = a2;
      v27 = v59;
      sub_10003A1C8();
      v28 = a4;
      v29 = v58;
      sub_10003A1C8();
      v30 = *v27;
      v31 = *v29;
      sub_100009A04(v29, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v27, &qword_1006A2C18, &unk_10057D990);
      if (v30 >= v31)
      {
        v16 = v25;
        a4 = v28 + v25;
        v32 = v60;
        if (v60 < v28 || v60 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
        }

        else
        {
          a2 = v26;
          if (v60 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v62 = v28 + v25;
      }

      else
      {
        v16 = v25;
        a2 = v26 + v25;
        v32 = v60;
        v33 = v60 < v26 || v60 >= a2;
        a4 = v28;
        if (v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v60 != v26)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v23 = v32 + v16;
      v63 = v23;
      a3 = v55;
    }
  }

LABEL_58:
  sub_1002981E4(&v63, &v62, &v61);
  return 1;
}

uint64_t sub_1002981E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1002982D0()
{
  sub_100007710();
  v3 = sub_10026D814(v1, v2);
  sub_100008070(v3);
  v5 = *(v4 + 32);
  v6 = sub_100006B30();
  v7(v6);
  return v0;
}

uint64_t sub_100298328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100298398(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10029362C(a1, v5);
}

void sub_100298430()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(v0[4]);
}

BOOL sub_100298470(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100017088();
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v13);
  return v8 == Hasher._finalize()();
}

Swift::Int sub_100298540()
{
  sub_100015ECC();
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100017088();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1002985B0()
{
  sub_100015ECC();
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100017088();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

char *sub_100298618(void *a1)
{
  v3 = type metadata accessor for LanguageManager();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_100007FDC();
  v8 = v7 - v6;
  swift_getObjectType();
  v9 = [objc_allocWithZone(TUFeatureFlags) init];
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v10 = [objc_opt_self() sharedManager];
  v11 = objc_allocWithZone(type metadata accessor for SpeechAssetManager());
  v12 = sub_10029C838(a1, v8, v10, v9, v11);
  v13 = *((swift_isaMask & *v1) + 0x30);
  v14 = *((swift_isaMask & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_100298790()
{
  if (qword_1006A0B28 == -1)
  {
    goto LABEL_2;
  }

LABEL_29:
  swift_once();
LABEL_2:
  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "assets updated", v3, 2u);
  }

  sub_10029A3DC();
  v5 = v4;
  v6 = 0;
  v7 = v4 + 56;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_11:
    v13 = *(v5 + 48) + 40 * (__clz(__rbit64(v10)) | (v6 << 6));
    v28 = *(v13 + 32);
    v14 = *(v13 + 16);
    v27[0] = *v13;
    v27[1] = v14;
    v34 = v27[0];
    v35 = v14;
    sub_100052980(&v34, &v29);
    sub_100052980(&v35, &v29);
    if (sub_1000524B0(v27))
    {
      sub_100298A84();
    }

    v10 &= v10 - 1;
    sub_1000529DC(&v34);
    sub_1000529DC(&v35);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }

  v15 = sub_10029A740();
  v16 = v15;
  v17 = 0;
  v18 = v15 + 56;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 56);
  v22 = (v19 + 63) >> 6;
  if (v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_28;
    }

    if (v23 >= v22)
    {
    }

    v21 = *(v18 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
      do
      {
LABEL_22:
        v24 = *(v16 + 48) + 40 * (__clz(__rbit64(v21)) | (v17 << 6));
        v30 = *(v24 + 16);
        v31 = *(v24 + 32);
        v29 = *v24;
        v32 = v29;
        v33 = v30;
        sub_100052980(&v32, v26);
        sub_100052980(&v33, v26);
        if (sub_1000524B0(&v29))
        {
          sub_100298A84();
        }

        v21 &= v21 - 1;
        sub_1000529DC(&v32);
        sub_1000529DC(&v33);
      }

      while (v21);
    }
  }
}

uint64_t sub_100298A84()
{
  sub_100005EF4();
  v2 = v1;
  v3 = [*(v0 + OBJC_IVAR___CSDSpeechAssetManager_delegates) allObjects];
  sub_10026D814(&unk_1006A2CF0, &qword_10057DAD8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = *v2;
    v9 = v2[1];
    v10 = v2[4];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      ++v7;
      v12 = String._bridgeToObjectiveC()();
      [v11 assetsUpdated:v12 availability:v10];
      swift_unknownObjectRelease();
    }

    while (v6 != v7);
  }

  sub_100005EDC();
}

uint64_t sub_100298BA8()
{
  v1 = [*(v0 + OBJC_IVAR___CSDSpeechAssetManager_delegates) allObjects];
  sub_10026D814(&unk_1006A2CF0, &qword_10057DAD8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      isa = Locale._bridgeToObjectiveC()().super.isa;
      [v6 localeUpdated:isa];
      swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }
}

void (*sub_100298CC4())()
{
  v1 = (v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  v2 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  v3 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  }

  else
  {
    sub_100006890();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_10029C830;
    *v1 = sub_10029C830;
    v1[1] = v5;

    sub_1000051F8(v6);
  }

  sub_1000115CC(v2);
  return v4;
}

void sub_100298D7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100051D0C();
  }
}

uint64_t sub_100298DDC(__int128 *a1)
{
  if (*(a1 + 4) == 2)
  {
    v2 = 1009;
  }

  else
  {
    v2 = 1011;
  }

  sub_100006AF0(0, &qword_1006A2CD8, SFEntitledAssetConfig_ptr);
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);

  v5 = sub_1002991B8(v4, v3, v2);
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 pathToAssetWithConfig:v5 clientIdentifier:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5F8);
    v34 = *a1;

    sub_100052980(&v34, &v30);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_1000529DC(&v34);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315138;
      v15 = a1[1];
      v30 = *a1;
      v31 = v15;
      v32 = *(a1 + 4);
      v33 = v14;

      sub_100052980(&v34, v29);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, &v33);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s language available", v13, 0xCu);
      sub_100009B7C(v14);
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000AF9C(v19, qword_1006BA5F8);
    v34 = *a1;

    sub_100052980(&v34, &v30);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    sub_1000529DC(&v34);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v24 = a1[1];
      v30 = *a1;
      v31 = v24;
      v32 = *(a1 + 4);
      v33 = v23;

      sub_100052980(&v34, v29);
      v25 = String.init<A>(reflecting:)();
      v27 = sub_10002741C(v25, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s language not available, will have to download", v22, 0xCu);
      sub_100009B7C(v23);
    }

    return 0;
  }

  return v9;
}

id sub_1002991B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithLanguage:v5 taskHint:a3];

  return v6;
}

void sub_100299234()
{
  sub_100005EF4();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = *&v0[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v25 = *v2;
  v34 = v2[1];
  v35 = v25;
  v26 = swift_allocObject();
  v27 = v2[1];
  *(v26 + 16) = *v2;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v2 + 4);
  *(v26 + 56) = v0;
  *(v26 + 64) = ObjectType;
  v33[4] = sub_10029C804;
  v33[5] = v26;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  sub_10000A600();
  v33[2] = v28;
  v33[3] = &unk_100622BA8;
  v29 = _Block_copy(v33);
  v30 = v24;
  sub_100052980(&v35, v32);
  sub_100052980(&v34, v32);
  v31 = v0;
  static DispatchQoS.unspecified.getter();
  v32[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000E8F8();
  sub_100007C38();
  _Block_release(v29);

  (*(v7 + 8))(v13, v4);
  (*(v17 + 8))(v23, v14);

  sub_100005EDC();
}

void sub_100299484(__int128 *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17, v19);
  if (*(a1 + 4))
  {
    v70 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v22;
    v72 = v20;
    v73 = a3;
    v76 = v10;
    v23 = *a1;
    v85 = a1[1];
    v86[0] = v23;
    sub_100052980(v86, &aBlock);
    sub_100052980(&v85, &aBlock);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA5F8);
    sub_100052980(v86, &aBlock);
    sub_100052980(&v85, &aBlock);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    sub_1000529DC(v86);
    sub_1000529DC(&v85);
    v27 = os_log_type_enabled(v25, v26);
    v77 = a1;
    v74 = v16;
    v75 = v12;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v80 = v69;
      *v28 = 136315138;
      v29 = a1[1];
      aBlock = *a1;
      v82 = v29;
      v83 = *(a1 + 4);
      sub_100052980(v86, v79);
      sub_100052980(&v85, v79);
      v30 = String.init<A>(reflecting:)();
      v32 = v11;
      v33 = v6;
      v34 = sub_10002741C(v30, v31, &v80);

      *(v28 + 4) = v34;
      v6 = v33;
      v11 = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "checkSpeechAssets for %s", v28, 0xCu);
      sub_100009B7C(v69);
    }

    v35 = [objc_opt_self() mainBundle];
    v36 = sub_100021AEC(v35);
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
      v40 = v71;
      v41 = v70;
      v42 = v72;
      (*(v71 + 104))(v70, enum case for DispatchQoS.QoSClass.default(_:), v72);
      v43 = static OS_dispatch_queue.global(qos:)();
      (*(v40 + 8))(v41, v42);
      v44 = swift_allocObject();
      v45 = v77;
      v46 = v77[1];
      *(v44 + 16) = *v77;
      *(v44 + 32) = v46;
      *(v44 + 48) = *(v45 + 4);
      *(v44 + 56) = v38;
      *(v44 + 64) = v39;
      *(v44 + 72) = a2;
      *(v44 + 80) = v73;
      v83 = sub_10029C810;
      v84 = v44;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v82 = sub_100004CEC;
      *(&v82 + 1) = &unk_100622BF8;
      v47 = _Block_copy(&aBlock);
      v48 = a2;
      v49 = v74;
      static DispatchQoS.unspecified.getter();
      v79[0] = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v50 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v78 + 8))(v50, v6);
      (*(v75 + 8))(v49, v11);
    }

    else
    {
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v77;
      if (v63)
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Missing bundle identifier", v65, 2u);
      }

      v66 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
      swift_beginAccess();
      v67 = *&a2[v66];
      swift_isUniquelyReferenced_nonNull_native();
      v79[0] = *&a2[v66];
      sub_10037831C(0, v64);
      *&a2[v66] = v79[0];
      sub_1000529DC(v86);
      sub_1000529DC(&v85);
      swift_endAccess();
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000AF9C(v51, qword_1006BA5F8);
    v52 = *a1;
    v85 = a1[1];
    v86[0] = v52;
    sub_100052980(v86, &aBlock);
    sub_100052980(&v85, &aBlock);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    sub_1000529DC(v86);
    sub_1000529DC(&v85);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v80 = v56;
      *v55 = 136315138;
      v57 = a1[1];
      aBlock = *a1;
      v82 = v57;
      v83 = *(a1 + 4);
      sub_100052980(v86, v79);
      sub_100052980(&v85, v79);
      v58 = String.init<A>(reflecting:)();
      v60 = sub_10002741C(v58, v59, &v80);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "Invalid asset passed in %s", v55, 0xCu);
      sub_100009B7C(v56);
    }
  }
}

uint64_t sub_100299C58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v29, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100298DDC(a1);
  v19 = v18;
  v20 = *&a4[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v21 = *a1;
  v32 = *(a1 + 16);
  v33 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  *(v22 + 24) = *a1;
  *(v22 + 16) = a4;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a1 + 32);
  *(v22 + 64) = v17;
  *(v22 + 72) = v19;
  aBlock[4] = sub_10029C820;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622C48;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  v26 = a4;
  sub_100052980(&v33, v30);
  sub_100052980(&v32, v30);
  static DispatchQoS.unspecified.getter();
  v30[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v16, v29);
}

uint64_t sub_100299F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 != 0;
  v7 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  v8 = *(a1 + v7);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v7);
  sub_10037831C(v6, a2);
  *(a1 + v7) = v11;
  swift_endAccess();
  v9 = sub_100298CC4();
  (v9)(a2);
}

void sub_100299FEC()
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
  v21 = *&v0[OBJC_IVAR___CSDSpeechAssetManager_queue];
  sub_100006890();
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  v27[4] = sub_10029C7FC;
  v27[5] = v22;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  sub_10000A600();
  v27[2] = v23;
  v27[3] = &unk_100622B58;
  v24 = _Block_copy(v27);
  v25 = v21;
  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000E8F8();
  sub_100007C38();
  _Block_release(v24);

  (*(v4 + 8))(v10, v1);
  (*(v14 + 8))(v20, v11);

  sub_100005EDC();
}

uint64_t sub_10029A1F8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA5F8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleCurrentLocaleDidChange", v9, 2u);
  }

  static Locale.current.getter();
  sub_100298BA8();
  (*(v1 + 8))(v5, v0);
  sub_10029A3DC();
}

void sub_10029A3DC()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v3, v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for LanguageManager();
  v16 = sub_100007FEC(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v23 = 0;
  v59[5] = &_swiftEmptySetSingleton;
  v24 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v27 = *(v25 + 16);
  v25 += 16;
  v26 = v27;
  v48 = (v5 + 8);
  v29 = v28;
  v30 = (v25 - 8);
  v49 = v27;
  v50 = v14;
  v54 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v55 = v25;
  v56 = v28;
  v46 = v11;
  v47 = v2;
  do
  {
    v31 = *(&off_100620078 + v23 + 32);
    v32 = v1;
    v33 = v26;
    v26(v22, v1 + v24, v29);
    static Locale.current.getter();
    v51 = v31;
    v34 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v29 = v56;
    v53 = v34;
    v58 = v35;
    v37 = v36;
    v57 = *v48;
    v57(v14, v2);
    v38 = v32;
    v39 = *v30;
    (*v30)(v22, v29);
    v52 = v37;
    if (v37)
    {
      v33(v22, v38 + v54, v29);
      static Locale.current.getter();
      v40 = v46;
      v1 = v38;
      LanguageManager.mappedASRLocale(for:useCase:)();
      v41 = v14;
      v42 = v47;
      v57(v41, v47);
      v39(v22, v29);
      v60[0] = Locale.identifier.getter();
      v60[1] = v43;
      v60[2] = v53;
      v60[3] = v58;
      v60[4] = v52;
      sub_100051D0C();
      if (v44)
      {
        sub_1003960CC(v59, v60);

        v57(v40, v42);
      }

      else
      {
        v57(v40, v42);
      }

      v2 = v42;
      v29 = v56;
    }

    else
    {

      v1 = v38;
      v2 = v47;
    }

    v23 += 8;
    v26 = v49;
    v14 = v50;
    v24 = v54;
  }

  while (v23 != 24);
  sub_100005EDC();
}

uint64_t sub_10029A740()
{
  v1 = v0;
  v17 = &_swiftEmptySetSingleton;
  v2 = OBJC_IVAR___CSDSpeechAssetManager_remoteAssets;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + v2);

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(v3 + 48) + 40 * (v12 | (v11 << 6));
    v19 = *(v13 + 32);
    v14 = *(v13 + 16);
    v18[0] = *v13;
    v18[1] = v14;
    v20 = v18[0];
    v21 = v14;
    sub_100052980(&v20, v16);
    sub_100052980(&v21, v16);
    sub_100051D0C();
    if (v15)
    {
      sub_1003960CC(v16, v18);
    }

    else
    {
      sub_1000529DC(&v20);
      result = sub_1000529DC(&v21);
    }

    v10 = v11;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v17;
    }

    v6 = *(v3 + 56 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10029A8D0(__n128 *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v5 = *&v1[v4];

  v6 = sub_1000527B0(a1, v5);

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000AF9C(v7, qword_1006BA5F8);
  sub_1000359F0(*a1, a1[1], v8, v9, v10, v11, v12, v13, v14, v15, v37[0], v37[1], v38.n128_i8[0], v38.n128_i64[1], v39.n128_i64[0], v39.n128_i64[1], v40, v41, v42[0], v42[1], v42[2], v42[3], v16);
  sub_100052980(v43, &v38);
  v17 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_1000529DC(v44);
  sub_1000529DC(v43);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v20 = 136315906;
    v21 = a1[1];
    v38 = *a1;
    v39 = v21;
    v40 = a1[2].n128_i64[0];
    sub_100052980(v44, v37);
    sub_100052980(v43, v37);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, v42);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = swift_allocObject();
    v26 = a1[1];
    *(v25 + 16) = *a1;
    *(v25 + 32) = v26;
    *(v25 + 48) = a1[2].n128_u64[0];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10029C7CC;
    *(v27 + 24) = v25;
    v38.n128_u64[0] = sub_10029C7D4;
    v38.n128_u64[1] = v27;
    sub_100052980(v44, v37);
    sub_100052980(v43, v37);
    sub_10026D814(&qword_1006A2CE0, &qword_10057DAD0);
    v28 = String.init<A>(reflecting:)();
    v30 = sub_10002741C(v28, v29, v42);

    *(v20 + 14) = v30;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v6 & 1;
    *(v20 + 28) = 2080;
    v31 = *&v2[v4];
    sub_100052B8C();

    v32 = Dictionary.description.getter();
    v34 = v33;

    v35 = sub_10002741C(v32, v34, v42);

    *(v20 + 30) = v35;
    _os_log_impl(&_mh_execute_header, v18, v19, "asset: %s %s, fetchingSpeechAssets: %{BOOL}d %s", v20, 0x26u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  return v6 & 1;
}

void sub_10029ABEC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  String.hash(into:)();
  v5 = a2[2];
  v6 = a2[3];
  String.hash(into:)();
  Hasher._combine(_:)(a2[4]);
}

void sub_10029AC30(char *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v82 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v11 - 8);
  v12 = v81[8];
  __chkstk_darwin(v11, v13);
  v15 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for DispatchQoS();
  v79 = *(v80 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v80, v17);
  v19 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = [objc_opt_self() mainBundle];
  sub_100021AEC(v20);
  if (v21)
  {
    v78 = a6;
    if (a3 == 2)
    {
      v22 = 1009;
    }

    else
    {
      v22 = 1011;
    }

    sub_100006AF0(0, &qword_1006A2CD8, SFEntitledAssetConfig_ptr);

    v23 = sub_1002991B8(a4, a5, v22);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 pathToAssetWithConfig:v23 clientIdentifier:v25];

    if (v26)
    {

      v27 = v82;
      v28 = *&v82[OBJC_IVAR___CSDSpeechAssetManager_queue];
      v29 = a2[1];
      v92[0] = *a2;
      v91 = v29;
      v30 = swift_allocObject();
      v31 = a2[1];
      *(v30 + 24) = *a2;
      *(v30 + 16) = v27;
      *(v30 + 40) = v31;
      *(v30 + 56) = *(a2 + 4);
      v87 = sub_10029C770;
      v88 = v30;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v86 = sub_100004CEC;
      *(&v86 + 1) = &unk_100622A68;
      v32 = _Block_copy(&aBlock);
      v33 = v27;
      v34 = v28;
      sub_100052980(v92, v84);
      sub_100052980(&v91, v84);
      static DispatchQoS.unspecified.getter();
      *&v84[0] = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (v81[1])(v15, v11);
      (*(v79 + 8))(v19, v80);
    }

    else
    {
      if (qword_1006A0B28 != -1)
      {
        swift_once();
      }

      v81 = v23;
      v47 = type metadata accessor for Logger();
      sub_10000AF9C(v47, qword_1006BA5F8);
      v48 = a2[1];
      v92[0] = *a2;
      v91 = v48;
      sub_100052980(v92, &aBlock);
      sub_100052980(&v91, &aBlock);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      sub_1000529DC(v92);
      sub_1000529DC(&v91);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v90 = v52;
        *v51 = 136315138;
        v53 = a2[1];
        aBlock = *a2;
        v86 = v53;
        v87 = *(a2 + 4);
        sub_100052980(v92, v84);
        sub_100052980(&v91, v84);
        v54 = String.init<A>(reflecting:)();
        v56 = sub_10002741C(v54, v55, &v90);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "Starting asset download for %s.", v51, 0xCu);
        sub_100009B7C(v52);
      }

      v57 = String._bridgeToObjectiveC()();

      v58 = swift_allocObject();
      v59 = a2[1];
      *(v58 + 16) = *a2;
      *(v58 + 32) = v59;
      *(v58 + 48) = *(a2 + 4);
      v87 = sub_10029C714;
      v88 = v58;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v86 = sub_10029B9E0;
      *(&v86 + 1) = &unk_1006229C8;
      v60 = _Block_copy(&aBlock);
      sub_100052980(v92, v84);
      sub_100052980(&v91, v84);

      v61 = swift_allocObject();
      v62 = a2[1];
      *(v61 + 24) = *a2;
      v63 = v82;
      *(v61 + 16) = v82;
      *(v61 + 40) = v62;
      *(v61 + 56) = *(a2 + 4);
      v87 = sub_10029C71C;
      v88 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v86 = sub_10029C128;
      *(&v86 + 1) = &unk_100622A18;
      v64 = _Block_copy(&aBlock);
      sub_100052980(v92, v84);
      sub_100052980(&v91, v84);
      v65 = v63;

      v23 = v81;
      [v24 fetchAssetWithConfig:v81 clientIdentifier:v57 detailedProgress:v60 completion:v64];
      _Block_release(v64);
      _Block_release(v60);
    }

    if (v78)
    {
      if (qword_1006A0B28 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_10000AF9C(v66, qword_1006BA5F8);
      v67 = *a2;
      v89 = a2[1];
      v90 = v67;
      sub_100052980(&v90, &aBlock);
      sub_100052980(&v89, &aBlock);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      sub_1000529DC(&v90);
      sub_1000529DC(&v89);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v83 = v71;
        *v70 = 136315138;
        v72 = a2[1];
        aBlock = *a2;
        v86 = v72;
        v87 = *(a2 + 4);
        sub_100052980(&v90, v84);
        sub_100052980(&v89, v84);
        v73 = String.init<A>(reflecting:)();
        v75 = v23;
        v76 = sub_10002741C(v73, v74, &v83);

        *(v70 + 4) = v76;
        v23 = v75;
        _os_log_impl(&_mh_execute_header, v68, v69, "Add remote asset: %s", v70, 0xCu);
        sub_100009B7C(v71);
      }

      swift_beginAccess();
      sub_100052980(&v90, &aBlock);
      sub_100052980(&v89, &aBlock);
      sub_1003960CC(&aBlock, a2);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5F8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing bundle identifier", v38, 2u);
    }

    v39 = v82;
    v40 = *&v82[OBJC_IVAR___CSDSpeechAssetManager_queue];
    v41 = a2[1];
    v84[0] = *a2;
    v92[0] = v41;
    v42 = swift_allocObject();
    v43 = a2[1];
    *(v42 + 24) = *a2;
    *(v42 + 16) = v39;
    *(v42 + 40) = v43;
    *(v42 + 56) = *(a2 + 4);
    v87 = sub_10029C708;
    v88 = v42;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v86 = sub_100004CEC;
    *(&v86 + 1) = &unk_100622978;
    v44 = _Block_copy(&aBlock);
    v45 = v39;
    v46 = v40;
    sub_100052980(v84, &v91);
    sub_100052980(v92, &v91);
    static DispatchQoS.unspecified.getter();
    *&v91 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (v81[1])(v15, v11);
    (*(v79 + 8))(v19, v80);
  }
}

uint64_t sub_10029B790(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v5 = *(a1 + v4);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + v4);
  sub_10037831C(0, a2);
  *(a1 + v4) = v7;
  return swift_endAccess();
}

void sub_10029B814(uint64_t a1, char a2, __int128 *a3)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA5F8);
  v7 = *a3;
  v20 = a3[1];
  v21 = v7;
  sub_100052980(&v21, v17);
  sub_100052980(&v20, v17);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_1000529DC(&v21);
  sub_1000529DC(&v20);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = a3[1];
    v17[0] = *a3;
    v17[1] = v12;
    v18 = *(a3 + 4);
    v19 = v11;
    sub_100052980(&v21, v16);
    sub_100052980(&v20, v16);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Speech model %s download progress: %ld. Is stalled: %{BOOL}d", v10, 0x1Cu);
    sub_100009B7C(v11);
  }
}

uint64_t sub_10029B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_10029BA40(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v28, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a4[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v20 = *a5;
  v31 = a5[1];
  v32 = v20;
  v21 = swift_allocObject();
  v22 = a5[1];
  *(v21 + 24) = *a5;
  *(v21 + 16) = a4;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a5 + 4);
  *(v21 + 64) = a3;
  aBlock[4] = sub_10029C77C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622AB8;
  v23 = _Block_copy(aBlock);
  v24 = v19;
  v25 = a4;
  sub_100052980(&v32, v29);
  sub_100052980(&v31, v29);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v29[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v28);
}

uint64_t sub_10029BD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v7 = *(a1 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(a1 + v6);
  sub_10037831C(0, a2);
  *(a1 + v6) = v41;
  swift_endAccess();
  v8 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  v9 = *(a1 + v8);
  swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(a1 + v8);
  sub_10037831C(a3 == 0, a2);
  *(a1 + v8) = v41;
  swift_endAccess();
  if (a3)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5F8);
    v11 = *(a2 + 16);
    v41 = *a2;
    v40 = v11;
    sub_100052980(&v41, &v34);
    sub_100052980(&v40, &v34);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_1000529DC(&v41);
    sub_1000529DC(&v40);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *&v38 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = *(a2 + 16);
      v34 = *a2;
      v35 = v15;
      v36 = *(a2 + 32);
      sub_100052980(&v41, &v39);
      sub_100052980(&v40, &v39);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, &v38);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_1002910C8(a3);
      v21 = sub_10002741C(v19, v20, &v38);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Speech model %s fetch failed with error: %s", v14, 0x16u);
      swift_arrayDestroy();
    }
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000AF9C(v22, qword_1006BA5F8);
  v23 = *a2;
  v38 = *(a2 + 16);
  v39 = v23;
  sub_100052980(&v39, &v34);
  sub_100052980(&v38, &v34);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  sub_1000529DC(&v39);
  sub_1000529DC(&v38);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136315138;
    v28 = *(a2 + 16);
    v34 = *a2;
    v35 = v28;
    v36 = *(a2 + 32);
    v37 = v27;
    sub_100052980(&v39, v33);
    sub_100052980(&v38, v33);
    v29 = String.init<A>(reflecting:)();
    v31 = sub_10002741C(v29, v30, &v37);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Speech model %s fetch complete", v26, 0xCu);
    sub_100009B7C(v27);
  }

  return sub_100298A84();
}

uint64_t sub_10029C128(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_10029C1C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  v5 = *(a1 + v4);
  swift_isUniquelyReferenced_nonNull_native();
  *&v23 = *(a1 + v4);
  sub_10037831C(1, a2);
  *(a1 + v4) = v23;
  swift_endAccess();
  v6 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v7 = *(a1 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  *&v23 = *(a1 + v6);
  sub_10037831C(0, a2);
  *(a1 + v6) = v23;
  swift_endAccess();
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = *(a2 + 16);
  v23 = *a2;
  v22 = v9;
  sub_100052980(&v23, v19);
  sub_100052980(&v22, v19);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_1000529DC(&v23);
  sub_1000529DC(&v22);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v14 = *(a2 + 16);
    v19[0] = *a2;
    v19[1] = v14;
    v20 = *(a2 + 32);
    v21 = v13;
    sub_100052980(&v23, v18);
    sub_100052980(&v22, v18);
    v15 = String.init<A>(reflecting:)();
    v17 = sub_10002741C(v15, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Speech model %s ready", v12, 0xCu);
    sub_100009B7C(v13);
  }
}

id sub_10029C444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechAssetManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpeechAssetManager()
{
  result = qword_1006A2CA0;
  if (!qword_1006A2CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029C5C0()
{
  result = type metadata accessor for LanguageManager();
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

unint64_t sub_10029C69C()
{
  result = qword_1006A2CB0;
  if (!qword_1006A2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CB0);
  }

  return result;
}

uint64_t sub_10029C728()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10029C78C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10029C7D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *sub_10029C838(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v9 = OBJC_IVAR___CSDSpeechAssetManager_featureFlags;
  *&a5[v9] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_remoteAssets] = &_swiftEmptySetSingleton;
  v10 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  sub_100052B8C();
  *&a5[v10] = Dictionary.init(dictionaryLiteral:)();
  v11 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  *&a5[v11] = Dictionary.init(dictionaryLiteral:)();
  v12 = OBJC_IVAR___CSDSpeechAssetManager_delegates;
  *&a5[v12] = [objc_opt_self() weakObjectsHashTable];
  v13 = &a5[OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_queue] = a1;
  v14 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v15 = type metadata accessor for LanguageManager();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&a5[v14], a2, v15);
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_assetSetObserver] = a3;
  v17 = *&a5[v9];
  *&a5[v9] = a4;
  v18 = a1;
  v19 = a3;
  swift_unknownObjectRelease();
  v35.receiver = a5;
  v35.super_class = type metadata accessor for SpeechAssetManager();
  v20 = objc_msgSendSuper2(&v35, "init");
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 defaultCenter];
  [v23 addObserver:v22 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v24 = *&v22[OBJC_IVAR___CSDSpeechAssetManager_assetSetObserver];
  v25 = String._bridgeToObjectiveC()();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  aBlock[4] = sub_10029CBB0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622CC0;
  v27 = _Block_copy(aBlock);
  v28 = v18;
  v29 = v22;

  v30 = [v24 observeAssetSet:v25 queue:v28 handler:v27];
  _Block_release(v27);

  swift_unknownObjectRelease();
  (*(v16 + 8))(a2, v15);
  return v29;
}

uint64_t getEnumTagSinglePayload for DisclosureDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 7))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 6);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for DisclosureDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10029CC94(uint64_t a1)
{
  result = sub_10029CCBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10029CCBC()
{
  result = qword_1006A2D00;
  if (!qword_1006A2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2D00);
  }

  return result;
}

BOOL sub_10029CD10(uint64_t a1, uint64_t a2)
{
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

uint64_t sub_10029CD3C(void *a1, uint64_t a2)
{
  if ([a1 recordingState] == 3 && (objc_msgSend(a1, "isRedisclosing") & 1) != 0)
  {
    v4 = 0x2000000000000;
LABEL_6:

    return a2 & 0x1FFFFFFFFFFLL | v4;
  }

  if ([a1 recordingState] == 2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v5 = [a1 recordingState];

  if (v5 == 4)
  {
    v4 = 0x1000000000000;
    return a2 & 0x1FFFFFFFFFFLL | v4;
  }

  return 0x3000000000000;
}

BOOL sub_10029CDE8(unint64_t a1, uint64_t a2)
{
  if (((a2 ^ a1) & 0xFF000000000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a1 >> 40) & 1;
  }

  if (!((a2 ^ a1) & 0xFF000000000000 | a2 & 0x10000000000))
  {
    if ((a1 & 0x10000000000) == 0)
    {
      if ((a2 & 0x100000000) != 0)
      {
        if ((a1 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((a1 & 0x100000000) == 0)
      {
        return a1 == a2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DisclosureDescriptor.DisclosureState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DisclosureDescriptor.DisclosureState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10029D02C()
{
  result = qword_1006A2D08;
  if (!qword_1006A2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2D08);
  }

  return result;
}

BOOL FTServerBag.isQuickRelaySupported.getter()
{
  v1 = _IDSQuickRelayProtocolVersionNumber();
  if (v1)
  {
    v2 = v1;
    if (sub_10029D240(0xD000000000000016, 0x8000000100563A60, v0))
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
      sub_1000496D4();
      if (swift_dynamicCast())
      {
        v3 = [v2 compare:v6];

        return v3 != -1;
      }
    }

    else
    {
      sub_10004975C(v9);
    }

    v5 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v2 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  return 0;
}

id sub_10029D240(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 objectForKey:v4];

  return v5;
}

void sub_10029D2A4(char a1)
{
  v2 = *v1;
  *v1 = a1;
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA640);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Transitioning from %s to %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10029D480()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = String.init<A>(reflecting:)();
    v6 = sub_10002741C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002741C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unpexected state %s expected %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_10029FF3C();
  swift_allocError();
  return swift_willThrow();
}

_UNKNOWN **sub_10029D650()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA640);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stop recording for active call", v4, 2u);
  }

  result = &off_100620150;
  switch(*v0)
  {
    case 2:
      sub_10029D2A4(7);
      result = &off_1006200B0;
      break;
    case 3:
      sub_10029D2A4(6);
      result = &off_1006200D8;
      break;
    case 4:
      sub_10029D2A4(5);
      result = &off_100620100;
      break;
    case 5:
      return result;
    case 6:
      result = &off_100620178;
      break;
    case 7:
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unable to stop a completed call recording session", v8, 2u);
      }

      sub_10029FF3C();
      swift_allocError();
      result = swift_willThrow();
      break;
    default:
      sub_10029D2A4(5);
      result = &off_100620128;
      break;
  }

  return result;
}

_UNKNOWN **sub_10029D874()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA640);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stop recording for inactive call", v4, 2u);
  }

  result = &off_100620240;
  switch(*v0)
  {
    case 2:
      sub_10029D2A4(7);
      result = &off_1006201A0;
      break;
    case 3:
      sub_10029D2A4(7);
      result = &off_1006201C8;
      break;
    case 4:
      sub_10029D2A4(5);
      result = &off_1006201F0;
      break;
    case 5:
      return result;
    case 6:
      sub_10029D2A4(7);
      result = &off_100620268;
      break;
    case 7:
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unable to stop a completed call recording session", v8, 2u);
      }

      sub_10029FF3C();
      swift_allocError();
      result = swift_willThrow();
      break;
    default:
      sub_10029D2A4(5);
      result = &off_100620218;
      break;
  }

  return result;
}

uint64_t sub_10029DAA4(char a1)
{
  v2 = *v1;
  v3 = v2 > 7;
  v4 = (1 << v2) & 0xCC;
  if (v3 || v4 == 0)
  {
    if (a1)
    {
      sub_10029D2A4(6);
      return 1;
    }

    else
    {
      sub_10029D2A4(7);
      return 2;
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA640);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Finish should only be called after recording via AVC is completed", v9, 2u);
      sub_100005F40();
    }

    sub_10029FF3C();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_10029DBD8(char a1)
{
  switch(*v1)
  {
    case 2:
    case 6:
      goto LABEL_4;
    case 3:
    case 5:
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      sub_10029D2A4(7);
      break;
    default:
LABEL_3:
      sub_10000E91C();
      break;
  }
}

uint64_t sub_10029DC48(char a1)
{
  if ((a1 - 2) > 5u)
  {
    return 3;
  }

  else
  {
    return dword_10057DD3C[(a1 - 2)];
  }
}

uint64_t sub_10029DC74(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      v2 = 1;
      break;
    default:
      if ((a2 - 2) >= 6u)
      {
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_15:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

void sub_10029DD3C()
{
  sub_100005EF4();
  v2 = v1;
  v36 = v3;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v14);
  sub_100007928();
  sub_10000AF74(v18, v19, v20, v14);
  sub_100007928();
  sub_10000AF74(v21, v22, v23, v4);
  *&v0[OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount] = 0;
  *&v0[OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason] = 3;
  type metadata accessor for URL();
  sub_100007928();
  sub_10000AF74(v24, v25, v26, v27);
  swift_unknownObjectWeakInit();
  UUID.init()();
  v28 = *(v7 + 32);
  v28(&v0[OBJC_IVAR___CSDAudioCallRecordingSession_uuid], v13, v4);
  v0[OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine] = 2;
  v29 = [v2 uniqueProxyIdentifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v0[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID];
  *v33 = v30;
  v33[1] = v32;
  v34 = &v0[OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID];
  *v34 = 0xD000000000000015;
  v34[1] = 0x8000000100561020;
  v35 = [v36 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28(&v0[OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID], v13, v4);
  swift_unknownObjectWeakAssign();
  v37.receiver = v0;
  v37.super_class = type metadata accessor for AudioCallRecordingSession();
  objc_msgSendSuper2(&v37, "init");

  sub_100005EDC();
}

uint64_t sub_10029E020()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  swift_getObjectType();
  v27 = _typeName(_:qualified:)();
  v28 = v12;
  v13._countAndFlagsBits = 40;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v30 = v27;
  v31 = v28;
  strcpy(&v29, "state: ");
  v29._object = 0xE700000000000000;
  v14 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298();
  v26 = *(v1 + v14);
  v15._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v29._countAndFlagsBits;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);

  v29._countAndFlagsBits = 0x203A64697575;
  v29._object = 0xE600000000000000;
  v18 = *(v5 + 16);
  v18(v11, v1 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v2);
  v19._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x203A64697575;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);

  _StringGuts.grow(_:)(16);

  strcpy(&v29, "requestUUID: ");
  HIWORD(v29._object) = -4864;
  v18(v11, v1 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v2);
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  String.append(_:)(v29);

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v27;
}

void sub_10029E2DC()
{
  sub_100005EF4();
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10, v11);
  v12 = sub_10000F450();
  v13 = sub_100007FEC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_100007BAC();
  v21 = v19 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v35 - v24;
  v26 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298();
  if (*(v0 + v26) != 7)
  {
    v27 = *(v15 + 16);
    v27(v25, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v12);
    HIDWORD(v35) = sub_10029E53C();
    v28 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
    v29 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
    v27(v21, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v12);
    v30 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
    sub_100005298();
    sub_10003A220(v0 + v30, v1, &qword_1006A3C70, &unk_10057EA80);
    v31 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
    sub_100005298();
    sub_10003A220(v0 + v31, v9, &qword_1006A3C70, &unk_10057EA80);
    v32 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID);
    v33 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID + 8);
    v34 = sub_10029E5DC();
    objc_allocWithZone(TUCallRecordingSession);

    sub_10029FF90(v25, HIDWORD(v35), v28, v29, v21, v1, v9, v32, v33, v34 & 1);
  }

  sub_100005EDC();
}

uint64_t sub_10029E53C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v2 = Strong;
  if ([Strong status] == 5)
  {

    return 5;
  }

  v3 = [v2 status];

  if (v3 == 6)
  {
    return 5;
  }

  v5 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298();
  return sub_10029DC48(*(v0 + v5));
}

uint64_t sub_10029E5DC()
{
  v1 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298();
  return ((*(v0 + v1) - 8) < 0xFAu) & *(v0 + v1);
}

void sub_10029E670()
{
  sub_100005EF4();
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10, v11);
  v12 = sub_10000F450();
  v13 = sub_100007FEC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_100007BAC();
  v21 = v19 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v34[-v24];
  v26 = *(v15 + 16);
  v26(&v34[-v24], v0 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v12);
  v35 = sub_10029E53C();
  v27 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
  v28 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
  v26(v21, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v12);
  v29 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  sub_100005298();
  sub_10003A220(v0 + v29, v1, &qword_1006A3C70, &unk_10057EA80);
  v30 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
  sub_100005298();
  sub_10003A220(v0 + v30, v9, &qword_1006A3C70, &unk_10057EA80);
  v31 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID);
  v32 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID + 8);
  v33 = sub_10029E5DC();
  objc_allocWithZone(TUCallRecordingSession);

  sub_10029FF90(v25, v35, v27, v28, v21, v1, v9, v31, v32, v33 & 1);
  sub_100005EDC();
}

id sub_10029E8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioCallRecordingSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioCallRecordingSession()
{
  result = qword_1006A2DC0;
  if (!qword_1006A2DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10029EAD4()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10029ECB8(319, &qword_1006A9D10, &type metadata accessor for Date);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_10029ECB8(319, &qword_1006A20C8, &type metadata accessor for UUID);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_10029ECB8(319, &qword_1006A2DD0, &type metadata accessor for URL);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10029ECB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioCallRecordingStateMachine(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 8;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 6;
  }

  else
  {
    v5 = -7;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioCallRecordingStateMachine(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_10029EE8C()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  if (*(v1 + v3) == 2)
  {
    sub_10029D2A4(3);
  }

  else
  {
    sub_10000E91C();
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v5 = v4;
    sub_100015EE0(v4, "setCurrentRecordingSession:");
  }
}

void sub_10029EF48()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  if (*(v1 + v3) == 3)
  {
    sub_10029D2A4(4);
  }

  else
  {
    sub_10000E91C();
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v5 = v4;
    sub_100015EE0(v4, "setCurrentRecordingSession:");
  }
}

void sub_10029F004()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 - 2) < 6 || (v4)
  {
    sub_10000E91C();
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  else
  {
    sub_10029D2A4(1);
  }

  swift_endAccess();
  v5 = *(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount) = v7;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100008A54();
      v9 = v8;
      sub_100015EE0(v8, "setCurrentRecordingSession:");
    }
  }
}

void sub_10029F0E0()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 - 2) >= 6 && (v4)
  {
    sub_10029D2A4(0);
  }

  else
  {
    sub_10000E91C();
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v6 = v5;
    sub_100015EE0(v5, "setCurrentRecordingSession:");
  }
}

void sub_10029F1A4()
{
  sub_10000E564();
  v3 = v2;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = sub_100007BF0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v32 - v9;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = sub_100007BF0(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for UUID();
  sub_100008070(v18);
  (*(v19 + 16))(v17, v3, v18);
  sub_100007C20();
  sub_10000AF74(v20, v21, v22, v18);
  v23 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v17, v1 + v23, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  v24 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  if (*(v1 + v24) == 4)
  {
    sub_10029D2A4(0);
  }

  else
  {
    sub_10000E91C();
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  static Date.now.getter();
  type metadata accessor for Date();
  sub_100007C20();
  sub_10000AF74(v25, v26, v27, v28);
  v29 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v10, v1 + v29, &qword_1006A3C70, &unk_10057EA80);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v31 = v30;
    sub_100015EE0(v30, "setCurrentRecordingSession:");
  }
}

void sub_10029F3E4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = sub_100007BF0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007BAC();
  v11 = v9 - v10;
  __chkstk_darwin(v12, v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for UUID();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v26 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298();
  sub_10003A220(v0 + v26, v15, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v15, 1, v16) == 1)
  {
    sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
    v27 = *(v19 + 16);
  }

  else
  {
    (*(v19 + 32))(v25, v15, v16);
    v28 = OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs;
    sub_100461A5C();
    v29 = *(*(v0 + v28) + 16);
    sub_100461B60(v29);
    v35 = v3;
    v30 = *(v0 + v28);
    *(v30 + 16) = v29 + 1;
    v27 = *(v19 + 16);
    v27(v30 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v29, v25, v16);
    *(v1 + v28) = v30;
    v3 = v35;
    (*(v19 + 8))(v25, v16);
  }

  v27(v11, v3, v16);
  sub_100007C20();
  sub_10000AF74(v31, v32, v33, v16);
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v11, v1 + v26, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  sub_100005EDC();
}

_UNKNOWN **sub_10029F65C(_UNKNOWN **a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v44 = v43 - v11;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000AF9C(v12, qword_1006BA640);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43[1] = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v45[0] = v18;
    *v17 = 136315138;
    v19 = a1;
    LOBYTE(v46) = a1;
    v20 = String.init<A>(reflecting:)();
    a1 = v2;
    v22 = sub_10002741C(v20, v21, v45);

    *(v17 + 4) = v22;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v14, v15, "Asked to stop recording session with reason %s", v17, 0xCu);
    sub_100009B7C(v18);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
    v19 = a1;
  }

  if (*(v4 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) == 3)
  {
    *(v4 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) = v19;
  }

  v23 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  if (v23)
  {
    v24 = sub_10029D650();
  }

  else
  {
    v24 = sub_10029D874();
  }

  if (v3)
  {
    swift_endAccess();
  }

  else
  {
    a1 = v24;
    swift_endAccess();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45[0] = v28;
      *v27 = 136315138;
      v46 = a1;

      sub_10026D814(&qword_1006A2DE0, &unk_10057DCD0);
      v29 = String.init<A>(reflecting:)();
      v31 = sub_10002741C(v29, v30, v45);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Stop recording action %s", v27, 0xCu);
      sub_100009B7C(v28);
      sub_100005F40();
      sub_100005F40();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      sub_10029E2DC();
      v35 = v34;
      [v33 setCurrentRecordingSession:v34];
    }

    v36 = v44;
    static Date.now.getter();
    type metadata accessor for Date();
    sub_100007C20();
    sub_10000AF74(v37, v38, v39, v40);
    v41 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
    sub_10000F4FC();
    swift_beginAccess();
    sub_1000432B0(v36, v4 + v41, &qword_1006A3C70, &unk_10057EA80);
    swift_endAccess();
  }

  return a1;
}

id sub_10029FA20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  if (*(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) == 2 || [Strong status] != 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEndpointOnCurrentDevice];
  }

  return v3;
}

uint64_t sub_10029FAAC()
{
  v1 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  v2 = sub_10029DAA4(v1 & 1);
  swift_endAccess();
  if (!v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10029E2DC();
      v6 = v5;
      [v4 setCurrentRecordingSession:v5];
    }
  }

  return v2;
}

void sub_10029FB74()
{
  v1 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  sub_10029DBD8(v1 & 1);
  swift_endAccess();
  if (!v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10029E2DC();
      v5 = v4;
      [v3 setCurrentRecordingSession:v4];
    }
  }
}

void sub_10029FC2C()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = sub_100007BF0(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v39 - v23;
  v25 = [objc_opt_self() recordingDirectoryURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for URL();
    v28 = 0;
  }

  else
  {
    v27 = type metadata accessor for URL();
    v28 = 1;
  }

  sub_10000AF74(v20, v28, 1, v27);
  sub_1002A01B0(v20, v24);
  type metadata accessor for URL();
  if (sub_100015468(v24, 1, v27) == 1)
  {
    sub_100009A04(v24, &unk_1006A52C0, &unk_10057D930);
    v29 = 1;
  }

  else
  {
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D6A0;
    v40 = v3;
    v31 = v2;
    v32 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
    v33 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
    *(v30 + 56) = &type metadata for String;
    v34 = sub_100009D88();
    *(v30 + 64) = v34;
    *(v30 + 32) = v32;
    *(v30 + 40) = v33;

    v2 = v31;
    v35 = UUID.uuidString.getter();
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v34;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;
    v41 = String.init(format:_:)();
    v42 = v37;
    v38 = v40;
    (*(v6 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
    sub_10001E364();
    URL.appending<A>(path:directoryHint:)();
    (*(v6 + 8))(v12, v38);

    (*(*(v27 - 8) + 8))(v24, v27);
    v29 = 0;
  }

  sub_10000AF74(v2, v29, 1, v27);
  sub_100005EDC();
}

unint64_t sub_10029FF3C()
{
  result = qword_1006A2DD8;
  if (!qword_1006A2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2DD8);
  }

  return result;
}

id sub_10029FF90(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();

  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(a6, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a6, v16);
  }

  if (sub_100015468(a7, 1, v16) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  v19 = String._bridgeToObjectiveC()();

  LOBYTE(v24) = a10 & 1;
  v20 = [v26 initWithUUID:v13.super.isa state:a2 callUUID:v14 requestUUID:v15.super.isa recordingStartedDate:isa recordingEndedDate:v18 destinationBundleIdentifier:v19 isRedisclosing:v24];

  v21 = type metadata accessor for UUID();
  v22 = *(*(v21 - 8) + 8);
  v22(a5, v21);
  v22(a1, v21);
  return v20;
}

uint64_t sub_1002A01B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *getEnumTagSinglePayload for AudioCallRecordingSessionState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFEu) > 5)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 5);
      }
    }

    return 0;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 7);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioCallRecordingSessionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

id sub_1002A03CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1002A062C();
  v6 = sub_10042CF18();
  v7 = objc_opt_self();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v7 predicateForContactsMatchingHandleStrings:isa];

  [v6 setPredicate:v10];
  v18 = 0;
  v11 = [v3 executeFetchRequest:v6 error:&v18];
  if (v11)
  {
    v12 = v11;
    v13 = v18;
    v14 = [v12 value];

    v18 = v14;
    sub_10026D814(&qword_1006A2DE8, &unk_100584830);
    if (swift_dynamicCast())
    {
      v15 = v17;
    }

    else
    {
      sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
      v15 = Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

unint64_t sub_1002A062C()
{
  result = qword_1006AB680;
  if (!qword_1006AB680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB680);
  }

  return result;
}

uint64_t sub_1002A0694()
{
  v1 = [v0 accounts];
  sub_1002A0868();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1002A0710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002A07DC;
  v10[3] = &unk_100622F40;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

void sub_1002A07DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_1002A0868()
{
  result = qword_1006A2DF0;
  if (!qword_1006A2DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2DF0);
  }

  return result;
}

uint64_t sub_1002A08AC()
{
  v1 = v0 + OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator;
  v2 = *(v0 + OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator + 8);
  if (v2)
  {
    LODWORD(v3) = *v1;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___CSDUserIntentManager_queue);
    v5 = objc_allocWithZone(type metadata accessor for ProcessObserver());
    v6 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 initWithBundleIdentifiers:isa queue:v6];

    v3 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = v8;
    v8;

    v2 = 0;
    LOBYTE(v3) = 0;
  }

  v9 = v2;
  return v3 & 1;
}

uint64_t sub_1002A0978()
{
  sub_10026D814(&qword_1006A2E78, &qword_10057DE68);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057DDF0;
  *(v1 + 56) = &type metadata for PrivateAPIValidator;
  *(v1 + 64) = &off_10062AD10;
  *(v1 + 32) = 0;
  v2 = sub_1002A08AC();
  *(v1 + 96) = &type metadata for ApplicationStateValidator;
  *(v1 + 104) = &off_10062AD28;
  *(v1 + 72) = v2 & 1;
  *(v1 + 80) = v3;
  v4 = *(v0 + OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator);
  v5 = *(v0 + OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator + 8);
  *(v1 + 136) = &type metadata for DonatedIntentValidator;
  *(v1 + 144) = &off_10062AD40;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 176) = &type metadata for BackgroundBluetoothAccessValidator;
  *(v1 + 184) = &off_10062AD70;
  *(v1 + 152) = 1;
  v6 = OBJC_IVAR___CSDUserIntentManager_mediaRemoteStateValidator;
  *(v1 + 216) = type metadata accessor for MediaRemoteStateValidator();
  *(v1 + 224) = &off_10062ACF8;
  v7 = sub_1002A1D5C((v1 + 192));
  sub_1002A1DBC(v0 + v6, v7);

  return v1;
}

id sub_1002A0A90(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR___CSDUserIntentManager_privateAPIValidator] = 0;
  v4 = &v1[OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator];
  v6 = sub_10026D814(&qword_1006A2E80, &unk_10057DE70);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1002A1A14(30, j___s8Dispatch0A4TimeV3nowACyFZ, 0);
  *v5 = 0;
  *(v5 + 1) = v9;
  v10 = &v1[OBJC_IVAR___CSDUserIntentManager_backgroundCallIntentValidator];
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();
  v13 = sub_1002A1A14(30, j___s8Dispatch0A4TimeV3nowACyFZ, 0);
  *v10 = 0;
  *(v10 + 1) = v13;
  v1[OBJC_IVAR___CSDUserIntentManager_backgroundBluetoothAccessValidator] = 1;
  v14 = &v1[OBJC_IVAR___CSDUserIntentManager_mediaRemoteStateValidator];
  *v14 = 5;
  v15 = enum case for DispatchTimeInterval.seconds(_:);
  v16 = type metadata accessor for DispatchTimeInterval();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v14[*(type metadata accessor for MediaRemoteStateValidator() + 20)] = 1;
  *&v2[OBJC_IVAR___CSDUserIntentManager_queue] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for UserIntentManager();
  return objc_msgSendSuper2(&v18, "init");
}

void sub_1002A0C4C()
{
  v6 = [objc_allocWithZone(TLAlertConfiguration) initWithType:16];
  [v6 setTopic:TLAlertTopicSystemNotificationBackgroundMicUsage];
  [v6 setShouldIgnoreRingerSwitch:1];
  v0 = [objc_opt_self() alertWithConfiguration:v6];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10057D690;
    *(v3 + 56) = sub_1002A1CC0();
    *(v3 + 64) = sub_1002A1D04();
    *(v3 + 32) = v1;
    v4 = v1;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    [v4 play];
    SBSUndimScreen();

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }
}

void sub_1002A0DE4(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(v1 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v12 - v11) = v14;
  v15 = sub_100011290();
  v16(v15);
  v17 = v14;
  _dispatchPreconditionTest(_:)();
  v18 = sub_10000E934();
  v19(v18);
  if (v14)
  {
    v20 = sub_1002A0978();
    v21 = sub_100382410(a1, v20);

    v22 = sub_10000E570();
    do
    {
      v23 = v7;
      if (v2 == v7)
      {
        break;
      }

      if (v7 >= v21[2])
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      ++v7;
      v20 = v22 + 48;
      sub_1002A1964(v22, v48);
      v24 = v49;
      sub_1002A19C0(v48);
      v22 = v20;
    }

    while (v24 != 1);
    for (i = 0; v2 != i; ++i)
    {
      if (i >= v21[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1002A1964(v13, v48);
      sub_100009B14(v48, v48[3]);
      v26 = sub_10000811C();
      if (v27(v26))
      {
        sub_1002A19C0(v48);
      }

      else
      {
        if ((sub_10001507C() & 1) == 0)
        {
          sub_1000170A4();
        }

        v28 = _swiftEmptyArrayStorage[3];
        if (_swiftEmptyArrayStorage[2] >= v28 >> 1)
        {
          sub_1000180D4(v28);
        }

        sub_100009F7C();
      }

      v13 += 48;
    }

    v29 = sub_1000101DC();
    do
    {
      v30 = v20 + 48;
      if (v20 == -49)
      {
        break;
      }

      if (++v20 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_29;
      }

      v31 = v29 + 48;
      sub_1002A1964(v29, v48);
      v32 = v49;
      sub_1002A19C0(v48);
      v29 = v31;
    }

    while (v32 != 1);

    v33 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10057CA70;
    v35 = [i identifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v34 + 56) = &type metadata for String;
    v39 = sub_100009D88();
    *(v34 + 64) = v39;
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    LOBYTE(v48[0]) = v2 != v23;
    v40 = sub_10000FCE8();
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v39;
    *(v34 + 72) = v40;
    *(v34 + 80) = v41;
    LOBYTE(v48[0]) = v30 != -1;
    v42 = sub_10000FCE8();
    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v39;
    *(v34 + 112) = v42;
    *(v34 + 120) = v43;
    v44 = sub_100382550(v21);
    v46 = v45;

    *(v34 + 176) = &type metadata for String;
    *(v34 + 184) = v39;
    *(v34 + 152) = v44;
    *(v34 + 160) = v46;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v30 == -1 && v2 != v23)
    {
      sub_1002A0C4C();
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1002A11D8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = *(v3 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v15 - v14) = v17;
  (*(v10 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v16, v7);
  if (v17)
  {
    v20 = *(v3 + *a3 + 8);
    return sub_1002A1AEC(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A1318(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_1002A1384(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(v1 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v12 - v11) = v14;
  v15 = sub_100011290();
  v16(v15);
  v17 = v14;
  _dispatchPreconditionTest(_:)();
  v18 = sub_10000E934();
  v19(v18);
  if (v14)
  {
    v20 = sub_1002A0978();
    v21 = sub_100382410(a1, v20);

    v22 = sub_10000E570();
    do
    {
      v23 = v7;
      if (v2 == v7)
      {
        break;
      }

      if (v7 >= v21[2])
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      ++v7;
      v20 = v22 + 48;
      sub_1002A1964(v22, v47);
      v24 = v48;
      sub_1002A19C0(v47);
      v22 = v20;
    }

    while (v24 != 1);
    for (i = 0; v2 != i; ++i)
    {
      if (i >= v21[2])
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1002A1964(v13, v47);
      sub_100009B14(v47, v47[3]);
      v26 = sub_10000811C();
      if (v27(v26))
      {
        sub_1002A19C0(v47);
      }

      else
      {
        if ((sub_10001507C() & 1) == 0)
        {
          sub_1000170A4();
        }

        v28 = _swiftEmptyArrayStorage[3];
        if (_swiftEmptyArrayStorage[2] >= v28 >> 1)
        {
          sub_1000180D4(v28);
        }

        sub_100009F7C();
      }

      v13 += 48;
    }

    v29 = sub_1000101DC();
    do
    {
      v30 = v20 + 48;
      if (v20 == -49)
      {
        break;
      }

      if (++v20 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_24;
      }

      v31 = v29 + 48;
      sub_1002A1964(v29, v47);
      v32 = v48;
      sub_1002A19C0(v47);
      v29 = v31;
    }

    while (v32 != 1);

    v33 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10057CA70;
    v35 = [i identifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v34 + 56) = &type metadata for String;
    v39 = sub_100009D88();
    *(v34 + 64) = v39;
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    LOBYTE(v47[0]) = v2 != v23;
    v40 = sub_10000FCE8();
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v39;
    *(v34 + 72) = v40;
    *(v34 + 80) = v41;
    LOBYTE(v47[0]) = v30 != -1;
    v42 = sub_10000FCE8();
    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v39;
    *(v34 + 112) = v42;
    *(v34 + 120) = v43;
    v44 = sub_100382550(v21);
    v46 = v45;

    *(v34 + 176) = &type metadata for String;
    *(v34 + 184) = v39;
    *(v34 + 152) = v44;
    *(v34 + 160) = v46;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
LABEL_25:
    __break(1u);
  }
}

id sub_1002A1790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIntentManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UserIntentManager()
{
  result = qword_1006A2E58;
  if (!qword_1006A2E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A18A4()
{
  result = type metadata accessor for MediaRemoteStateValidator();
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

uint64_t sub_1002A1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  *(v3 + 16) = Dictionary.init(dictionaryLiteral:)();
  v7 = qword_1006A9F60;
  *(v3 + qword_1006A9F60) = a1;
  v8 = enum case for DispatchTimeInterval.seconds(_:);
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 104))(v3 + v7, v8, v9);
  v10 = (v3 + qword_1006A9F68);
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_1002A1AEC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v22 - v14;
  v17 = *(v2 + qword_1006A9F68);
  v16 = *(v2 + qword_1006A9F68 + 8);

  v17(v18);
  + infix(_:_:)();
  (*(v6 + 8))(v10, v5);
  v19 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  v20 = &v15[*(v19 + 44)];
  *v20 = a1;
  *(v20 + 1) = a2;
  sub_10000AF74(v15, 0, 1, v19);
  swift_beginAccess();

  sub_100381C84();
  return swift_endAccess();
}

unint64_t sub_1002A1CC0()
{
  result = qword_1006A2E68;
  if (!qword_1006A2E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2E68);
  }

  return result;
}

unint64_t sub_1002A1D04()
{
  result = qword_1006A2E70;
  if (!qword_1006A2E70)
  {
    sub_1002A1CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2E70);
  }

  return result;
}

uint64_t *sub_1002A1D5C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1002A1DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRemoteStateValidator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A1E20(uint64_t a1)
{
  v2 = type metadata accessor for MediaRemoteStateValidator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1002A1E7C@<X0>(void *a1@<X8>)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  _CFPreferencesSetFileProtectionClass();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_1002A2154(v2, v4);
  result = sub_1002A21B8();
  a1[3] = result;
  a1[4] = &off_100622F68;
  if (!v6)
  {
    result = [objc_allocWithZone(NSUserDefaults) init];
    v6 = result;
  }

  *a1 = v6;
  return result;
}

void sub_1002A1FD0(uint64_t a1)
{
  sub_1002A21FC(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100009B14(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3, v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_100009B7C(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id sub_1002A2154(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

unint64_t sub_1002A21B8()
{
  result = qword_1006A2E88;
  if (!qword_1006A2E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2E88);
  }

  return result;
}

uint64_t sub_1002A21FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1002A226C(void *a1)
{
  v5 = sub_100008154(a1, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (!v5)
  {
    v26 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = 0;

  v9 = v7;
  v10 = 0;
  v11 = sub_1002A2510(v9);
  v12 = sub_1002A29C8(v11);

  v13 = *(v12 + 16);
  if (!v13)
  {

    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1002A4180(v12);
  sub_10000A614();
  v28 = v14;
  v29 = v12;
  v27 = v12 + 72;
  v15 = 1;
  do
  {
    if (v2 < 0 || v2 >= v15 << *(v12 + 32))
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
LABEL_29:
      __break(1u);
    }

    sub_10000E948();
    if (v18)
    {
      goto LABEL_25;
    }

    if (*(v12 + 36) != v4)
    {
      goto LABEL_26;
    }

    v30 = v16;
    v31 = v17;
    v15 = objc_allocWithZone(sub_1000101F4());

    sub_10000F508();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v12 = v29;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 = v15 << *(v29 + 32);
    if (v2 >= v20)
    {
      goto LABEL_27;
    }

    if ((*(v3 + 8 * v10) & v1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v29 + 36) != v4)
    {
      goto LABEL_29;
    }

    sub_1000170C8();
    if (v18)
    {
      sub_1000150A0();
      v23 = (v27 + 8 * v10);
      while (v22 < v21)
      {
        v24 = *v23++;
        v10 = v24;
        v1 += 64;
        ++v22;
        if (v24)
        {
          sub_100009FA4(v30);
          v20 = __clz(__rbit64(v10)) + v1;
          goto LABEL_18;
        }
      }

      sub_100009FA4(v30);
    }

    else
    {
      sub_1000180F8();
    }

LABEL_18:
    v2 = v20;
    v4 = v28;
  }

  while (v31 + 1 != v13);

  return _swiftEmptyArrayStorage;
}

void *sub_1002A2510(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = v4;
    v6 = [v5 originator];
    v7 = [v6 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v12 = sub_100005208();
    v13 = *(&_swiftEmptyDictionarySingleton + 2);
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_22;
    }

    v15 = v11;
    if (*(&_swiftEmptyDictionarySingleton + 3) < v13 + v14)
    {
      sub_100457C40();
      v16 = sub_100005208();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v12 = v16;
    }

    if (v15)
    {

      v18 = (*(&_swiftEmptyDictionarySingleton + 7) + 8 * v12);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057CA80;
      *(v19 + 32) = v5;
      *(&_swiftEmptyDictionarySingleton + (v12 >> 6) + 8) |= 1 << v12;
      v20 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v12);
      *v20 = v8;
      v20[1] = v10;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v12) = v19;
      v21 = *(&_swiftEmptyDictionarySingleton + 2);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      *(&_swiftEmptyDictionarySingleton + 2) = v23;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1002A2784(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return _swiftEmptyDictionarySingleton;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = *&v4[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
    v6 = *&v4[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];

    v9 = sub_100005208();
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v10 + v11)
    {
      sub_100457C54();
      v13 = sub_100005208();
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_24;
      }

      v9 = v13;
    }

    if (v12)
    {

      v15 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057CA80;
      *(v16 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      v17 = (_swiftEmptyDictionarySingleton[6] + 16 * v9);
      *v17 = v7;
      v17[1] = v6;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v16;
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A29C8(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v34 = a1;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v34 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v37 = *(*(v34 + 56) + 8 * v11);

    sub_1002A3BC0(&v37, &v35);
    if (v1)
    {
      break;
    }

    v6 &= v6 - 1;

    if (v36)
    {
    }

    else
    {
      v33 = v35;
      v21 = v2[2];
      if (v2[3] <= v21)
      {
        sub_100457AC0(v21 + 1, 1, v15, v16, v17, v18, v19, v20, v35, v34, v35, SBYTE4(v35));
        v2 = v38;
      }

      v22 = v2[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = v2 + 8;
      v24 = -1 << *(v2 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~v2[(v25 >> 6) + 8]) == 0)
      {
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
          v31 = v23[v26];
          if (v31 != -1)
          {
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~v2[(v25 >> 6) + 8])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (v2[6] + 16 * v27);
      *v32 = v14;
      v32[1] = v13;
      *(v2[7] + 8 * v27) = v33;
      ++v2[2];
    }
  }

  return v2;
}

void sub_1002A2C40(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v52 = _swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v11);
    if (v15 >> 62)
    {
      v44 = v14;
      v45 = v13;
      v46 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v45;
      v14 = v44;
      v16 = v46;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v16)
    {
      v50 = v14;
      v51 = v13;
      v48 = v3;
      sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
      v49 = v2;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v15 + 32);

        v18 = v17;
      }

      v53 = v18;
      v19 = 1;
      while (v16 != v19)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        if (*&v53[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] < *&v20[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version])
        {

          ++v19;
          v53 = v21;
        }

        else
        {

          ++v19;
        }
      }

      v22 = *&v53[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

      v29 = v52;
      v30 = v52[2];
      if (v52[3] <= v30)
      {
        sub_100457AC0(v30 + 1, 1, v23, v24, v25, v26, v27, v28, v47, v48, v49, SBYTE4(v49));
        v29 = _swiftEmptyDictionarySingleton;
      }

      v31 = v29[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v32 = Hasher._finalize()();
      v33 = v29 + 8;
      v52 = v29;
      v34 = -1 << *(v29 + 32);
      v35 = v32 & ~v34;
      v36 = v35 >> 6;
      v37 = (-1 << v35) & ~v29[(v35 >> 6) + 8];
      v2 = v49;
      if (!v37)
      {
        v39 = 0;
        v40 = (63 - v34) >> 6;
        v3 = v48;
        while (++v36 != v40 || (v39 & 1) == 0)
        {
          v41 = v36 == v40;
          if (v36 == v40)
          {
            v36 = 0;
          }

          v39 |= v41;
          v42 = v33[v36];
          if (v42 != -1)
          {
            v38 = __clz(__rbit64(~v42)) + (v36 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_45;
      }

      v38 = __clz(__rbit64(v37)) | v35 & 0x7FFFFFFFFFFFFFC0;
      v3 = v48;
LABEL_37:
      *(v33 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v43 = (v52[6] + 16 * v38);
      *v43 = v50;
      v43[1] = v51;
      *(v52[7] + 8 * v38) = v22;
      ++v52[2];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1002A2FCC(void *a1)
{
  v1 = sub_100008154(a1, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (v1)
  {
    v2 = v1;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = 0;

    v5 = sub_1002A2510(v3);
    sub_10026D814(&qword_1006A2E98, &unk_10057DEF0);
    v6 = static _DictionaryStorage.copy(original:)();
    v7 = v6;
    v8 = 0;
    v35 = v6;
    v9 = 1 << v5[32];
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 8);
    v12 = (v9 + 63) >> 6;
    v33 = v12;
    v34 = v6 + 64;
    if (v11)
    {
LABEL_5:
      v13 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_11;
    }

LABEL_6:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_33;
      }

      if (v8 >= v12)
      {
        break;
      }

      v15 = *&v5[8 * v8 + 64];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_11:
        v16 = v13 | (v8 << 6);
        v17 = (*(v5 + 6) + 16 * v16);
        v18 = v17[1];
        v39 = *v17;
        v40 = v16;
        v19 = *(*(v5 + 7) + 8 * v16);
        v20 = sub_10000B6F4(v19);
        swift_bridgeObjectRetain_n();
        v38 = v18;

        v21 = 0;
        v22 = 0;
        while (v20 != v21)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_31;
          }

          if ([v23 isActivated])
          {
            v26 = [v24 originator];
            v36 = [v26 revision];

            v21 = v25;
            v27 = __OFADD__(v22, v36);
            v22 += v36;
            if (v27)
            {
              goto LABEL_35;
            }
          }

          else
          {

            ++v21;
          }
        }

        swift_bridgeObjectRelease_n();
        v7 = v35;
        *(v34 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v28 = (v35[6] + 16 * v40);
        *v28 = v39;
        v28[1] = v38;
        *(v35[7] + 8 * v40) = v22;
        v29 = v35[2];
        v27 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v27)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v35[2] = v30;
        v12 = v33;
        v11 = v37;
        if (v37)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
    v31 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v7;
}