uint64_t sub_1003D1D80(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100008A24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_10000E598();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003D2518(v12, a2);
  if (qword_1006A0BC0 != -1)
  {
    sub_10000AA08();
  }

  v13 = qword_1006BA778;
  sub_10029E670();
  if (v14)
  {
    v14 = sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  }

  sub_100017340(v14);
  sub_10000FEE0();

  return (*(v8 + 8))(v3, v2);
}

void sub_1003D1ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1003D1A78();
  if (v4)
  {
    v5 = v4;
    sub_100006AF0(0, &qword_1006A95C8, NSUserActivity_ptr);

    v6 = sub_1003D22D0();
    if (a3)
    {
      v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v7.super.isa = 0;
    }

    [v6 setUserInfo:v7.super.isa];

    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA640);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      v16 = sub_100291118(a3);
      v18 = sub_10002741C(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Launching notes with user info %s", v14, 0xCu);
      sub_100009B7C(v15);
    }

    v19 = [objc_opt_self() defaultWorkspace];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for CallRecordingLaunchService();
      v21 = v6;
      v22 = v5;
      v23 = sub_1003D1AE4();
      aBlock[4] = sub_1003D2344;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_10062D568;
      v24 = _Block_copy(aBlock);
      [v20 openUserActivity:v21 usingApplicationRecord:v22 configuration:v23 completionHandler:v24];
      _Block_release(v24);

      v25 = [objc_opt_self() defaultCenter];
      isa = Notification._bridgeToObjectiveC()().super.isa;
      [v25 postNotification:isa];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA640);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Could not launch Notes because we don't have the application record", v10, 2u);
    }
  }
}

id sub_1003D22D0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithActivityType:v1];

  return v2;
}

void sub_1003D2344(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA640);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1002910C8(a2);
    v11 = sub_10002741C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Opened user activity for call recording note success: %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void *sub_1003D2518(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v60 - v10;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v60 - v15;
  v17 = Dictionary.init(dictionaryLiteral:)();
  sub_10000A8EC();
  *&v65 = 0xD000000000000015;
  *(&v65 + 1) = v18;
  AnyHashable.init<A>(_:)();
  v19 = *(a2 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
  v20 = *(a2 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
  UUID.init(uuidString:)();
  v21 = type metadata accessor for UUID();
  sub_100035BC0(v16);
  v60 = v8;
  if (v22)
  {
    sub_1000099A4(v16, &unk_1006A3DD0, &unk_10057C9D0);
    v23 = sub_1000067D4();
    if (v24)
    {
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v17;
      v27 = *(v17 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27);
      sub_1000152AC();
      sub_100006780(v28 + v25 * v29);
      sub_10003EBF0((*(&v66 + 1) + 32 * v25), &v65);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    sub_100006780(v67);
    sub_1000099A4(&v65, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v30 + 32))();
    sub_10000F7E0();
    sub_10000A3A0();
    sub_100006780(v67);
  }

  sub_10000A8EC();
  *&v65 = 0xD000000000000014;
  *(&v65 + 1) = v31;
  sub_1000104D8();
  v32 = OBJC_IVAR___CSDAudioCallRecordingSession_uuid;
  v33 = sub_100016058();
  v34 = *(*(v21 - 8) + 16);
  v34(v33, a2 + v32, v21);
  sub_10000F7E0();
  sub_10000A3A0();
  sub_100006780(v67);
  sub_10000A8EC();
  *&v65 = 0xD000000000000014;
  *(&v65 + 1) = v35;
  sub_1000104D8();
  v36 = sub_100016058();
  v34(v36, a2 + v32, v21);
  sub_10000F7E0();
  sub_10000A3A0();
  v37 = v63;
  sub_100006780(v67);
  sub_10000A8EC();
  *&v65 = 0xD000000000000014;
  *(&v65 + 1) = v38;
  sub_1000104D8();
  v39 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  swift_beginAccess();
  sub_100270E18(a2 + v39, v11);
  type metadata accessor for Date();
  sub_100035BC0(v11);
  if (v22)
  {
    sub_1000099A4(v11, &qword_1006A3C70, &unk_10057EA80);
    v40 = sub_1000067D4();
    v48 = v60;
    if (v41)
    {
      v42 = v40;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v37;
      v44 = v37[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v37 = v64;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v44);
      sub_1000152AC();
      sub_100006780(v45 + v42 * v46);
      sub_10003EBF0((*(&v66 + 1) + 32 * v42), &v65);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    sub_100006780(v67);
    sub_1000099A4(&v65, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v47 + 32))();
    sub_10000F7E0();
    v62 = v37;
    sub_100378C74(v64, v67);
    v37 = v62;
    sub_100006780(v67);
    v48 = v60;
  }

  sub_10000A8EC();
  *&v65 = 0xD000000000000012;
  *(&v65 + 1) = v49;
  AnyHashable.init<A>(_:)();
  v50 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
  swift_beginAccess();
  sub_100270E18(a2 + v50, v48);
  sub_100035BC0(v48);
  if (v22)
  {
    sub_1000099A4(v48, &qword_1006A3C70, &unk_10057EA80);
    v51 = sub_1000067D4();
    if (v52)
    {
      v53 = v51;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v37;
      v55 = v37[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v37 = v64;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v54, v55);
      sub_1000152AC();
      sub_100006780(v56 + v53 * v57);
      sub_10003EBF0((*(&v66 + 1) + 32 * v53), &v65);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    sub_100006780(v67);
    sub_1000099A4(&v65, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v58 + 32))();
    sub_10000F7E0();
    v61 = v37;
    sub_100378C74(v64, v67);
    v37 = v61;
    sub_100006780(v67);
  }

  return v37;
}

id sub_1003D2BFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallRecordingLaunchService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003D2CD4(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setFrontBoardOptions:isa];
}

void *sub_1003D2D54()
{
  type metadata accessor for AnsweringMachineRTTHelper();
  swift_allocObject();
  result = sub_1003D2D90();
  qword_1006BA780 = result;
  return result;
}

void *sub_1003D2D90()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B7B0(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v0[6] = 0;
  v0[7] = 0;
  v0[5] = v1;
  return v0;
}

id sub_1003D2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003507C4(a1, v14);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    return sub_1002E1320(v14);
  }

  (*(v16 + 32))(v20, v14, v15);
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v34 = a5;
  v35 = a4;
  v22 = type metadata accessor for Logger();
  sub_10000AF9C(v22, qword_1006BA5F8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "RTT sending answering machine URL", v25, 2u);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v26 = result;
    sub_10026D814(&qword_1006A4458, &unk_100588070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057E830;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v28;
    sub_10000AA28();
    *(inited + 96) = v15;
    v29 = sub_1002A1D5C((inited + 72));
    (*(v16 + 16))(v29, v20, v15);
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v30;
    sub_10000AA28();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = a2;
    *(inited + 152) = a3;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v31;

    sub_10000AA28();
    *(inited + 240) = &type metadata for String;
    v32 = v34;
    *(inited + 216) = v35;
    *(inited + 224) = v32;

    v33 = Dictionary.init(dictionaryLiteral:)();
    sub_10046F2D0(v33, 0x200000000000, v26);

    return (*(v16 + 8))(v20, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RTT sending answering machine text", v11, 2u);
  }

  v12 = [objc_opt_self() sharedInstance];
  if (v12)
  {
    v13 = v12;
    sub_10026D814(&qword_1006A4458, &unk_100588070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057CA70;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A3C4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v15;

    sub_10000A3C4();
    v16 = [objc_allocWithZone(NSNumber) initWithInteger:{4, v21, v23}];
    v17 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    *(inited + 168) = v17;
    *(inited + 144) = v16;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v18;
    sub_10000A3C4();
    v19 = [objc_allocWithZone(NSNumber) initWithBool:{1, v22, v24}];
    *(inited + 240) = v17;
    *(inited + 216) = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A3C4();
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = a3;
    *(inited + 296) = a4;

    v20 = Dictionary.init(dictionaryLiteral:)();
    sub_10046F2D0(v20, 0x400000000000, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D33E0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"setupRTTMessageObserverIfNecessary" name:TUCallTTYTypeChangedNotification object:0];

  sub_1003D345C();
}

void sub_1003D345C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v9 = v1;
    if ((([v9 isRTT] & 1) != 0 || objc_msgSend(v9, "isTTY")) && !*(v0 + 32))
    {
      if (qword_1006A0B28 != -1)
      {
        sub_1000080B0();
      }

      v2 = type metadata accessor for Logger();
      sub_10000AF9C(v2, qword_1006BA5F8);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "fetching RTT conversation for answering machine", v5, 2u);
      }

      v6 = objc_opt_self();
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1003D4508;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028BAD0;
      aBlock[3] = &unk_10062D630;
      v8 = _Block_copy(aBlock);

      [v6 conversationWithCall:v9 withCallback:v8];
      _Block_release(v8);

      sub_1003D372C();
    }

    else
    {
    }
  }
}

uint64_t sub_1003D3678(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);
    *(result + 32) = a1;
    v4 = a1;

    sub_10003A920();
  }

  return result;
}

void sub_1003D372C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_weakInit();
      v12[4] = sub_1003D43B8;
      v12[5] = v6;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1003D3E38;
      v12[3] = &unk_10062D5B8;
      v7 = _Block_copy(v12);

      v8 = [v3 callUUID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_1003D433C(v7, v9, v11, v5);
      _Block_release(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D3884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  sub_10000AF74(v14, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a5;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a1;
  v17[8] = a2;
  sub_1002762F0();
}

uint64_t sub_1003D39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D3A5C, v10, v9);
}

uint64_t sub_1003D3A5C()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 32);
    if (v4 && (v5 = [v4 lastUtteranceForMe:0]) != 0)
    {
      v6 = v5;
      sub_100316A74(v5);
      if (v7)
      {

        result = sub_100316A74(v6);
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v11 = v0[15];
        v10 = v0[16];
        v13 = v0[13];
        v12 = v0[14];

        v14 = sub_1003D3DB8();
        v16 = v15;

        if (!v13)
        {

          goto LABEL_18;
        }

        if (v14 == v0[12] && v0[13] == v16)
        {

LABEL_35:
          v34 = v0[12];
          goto LABEL_36;
        }

        v18 = v0[13];
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v22 = v0[16];
      }
    }

    else
    {
      v20 = v0[16];
    }

LABEL_18:
    v23 = *(v3 + 32);
    if (!v23)
    {
      goto LABEL_39;
    }

    v24 = v0[15];
    v25 = v24 ? v0[14] : 0;
    v26 = v24 ? v0[15] : 0xE000000000000000;

    v27 = sub_1003D449C(v25, v26, v23);
    if (!v27)
    {
      goto LABEL_39;
    }

    v6 = v27;
    if (!v0[13])
    {
      goto LABEL_38;
    }

    v28 = sub_100316A74(v27);
    if (v29)
    {
      if (v28 == v0[12] && v29 == v0[13])
      {

        goto LABEL_38;
      }

      v31 = v0[13];
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
LABEL_38:

LABEL_39:
        sub_10003A920();
        [*(v3 + 56) invalidate];
        v36 = objc_opt_self();
        v0[6] = sub_1003D4500;
        v0[7] = v3;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_100024F0C;
        v0[5] = &unk_10062D608;
        v37 = _Block_copy(v0 + 2);
        v38 = v0[7];

        v39 = [v36 scheduledTimerWithTimeInterval:0 repeats:v37 block:3.0];
        _Block_release(v37);
        v40 = *(v3 + 56);
        *(v3 + 56) = v39;

        goto LABEL_40;
      }
    }

    v33 = v0[12];
LABEL_36:
    v35 = String._bridgeToObjectiveC()();
    [v6 updateText:v35];

    goto LABEL_38;
  }

  v21 = v0[16];

LABEL_40:
  v41 = v0[1];

  return v41();
}

uint64_t sub_1003D3DB8()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

uint64_t sub_1003D3E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v3)
    {
LABEL_3:
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v5(v6, v8, v9, v3);
}

void sub_1003D3EEC(void **a1)
{
  v2 = type metadata accessor for Utterance();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA5F8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RTT sending completed utterance", v12, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003D40EC(v8);
    sub_1003164DC();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v7, v2);
  }

  swift_beginAccess();
  sub_100396898(&v14, v8);
  swift_endAccess();
}

uint64_t sub_1003D40EC(void *a1)
{
  v2 = sub_10026D814(&qword_1006A52E8, &unk_100580050);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v14[-v5];
  sub_10026D814(&qword_1006A7C38, &qword_1005834E0);
  v7 = *(type metadata accessor for Caption() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10057D690;
  result = sub_100316A74(a1);
  if (v11)
  {
    String.count.getter();

    CaptionRange.init(_:)();
    v12 = type metadata accessor for CaptionRange();
    sub_10000AF74(v6, 0, 1, v12);
    Caption.init(confidence:range:)();
    result = sub_100316A74(a1);
    if (v13)
    {
      v14[12] = 1;
      return Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D42A4()
{
  sub_100060500(v0 + 16);

  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1003D42E4()
{
  sub_1003D42A4();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void sub_1003D433C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 registerForUpdates:a1 forCallUID:v6];
}

uint64_t sub_1003D43C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1002DE008;

  return sub_1003D39BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1003D449C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 appendStringFromOtherContactPath:v4];

  return v5;
}

uint64_t sub_1003D4518()
{
  sub_1003D45C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1003D4610();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1003D45C0()
{
  if (!qword_1006A97C0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A97C0);
    }
  }
}

void sub_1003D4610()
{
  if (!qword_1006A2DD0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A2DD0);
    }
  }
}

uint64_t sub_1003D4668@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RingtoneDescriptor();
  v12 = v11[5];
  v13 = type metadata accessor for URL();
  sub_10000AF74(a3 + v12, 1, 1, v13);
  v14 = a1;
  v15 = sub_1003B6A08(v14);
  if (v15)
  {
    if (v15[2])
    {
      v17 = v15[4];
      v16 = v15[5];

      goto LABEL_6;
    }
  }

  v17 = 0;
  v16 = 0;
LABEL_6:
  *a3 = v17;
  a3[1] = v16;
  v18 = [v14 provider];

  v19 = [v18 ringtoneSoundURL];
  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  sub_10000AF74(v10, v20, 1, v13);
  v21 = v11[6];
  v22 = v11[7];
  v23 = (a3 + v21);
  result = sub_1003D4E34(v10, a3 + v12);
  *v23 = 0;
  v23[1] = 0;
  *(a3 + v22) = a2 & 1;
  return result;
}

uint64_t sub_1003D4814(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v37 - v13;
  v15 = sub_10026D814(&qword_1006A97F8, &unk_100585878);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v37 - v18;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = *a1 == *a2 && v20 == v21;
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v21)
  {
    goto LABEL_19;
  }

  v23 = type metadata accessor for RingtoneDescriptor();
  v24 = v23[5];
  v25 = *(v15 + 48);
  sub_1003507C4(a1 + v24, v19);
  sub_1003507C4(a2 + v24, &v19[v25]);
  sub_100009F5C(v19);
  if (!v22)
  {
    sub_1003507C4(v19, v14);
    sub_100009F5C(&v19[v25]);
    if (!v26)
    {
      (*(v5 + 32))(v9, &v19[v25], v4);
      sub_1003D4DDC();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v5 + 8);
      v30(v9, v4);
      v30(v14, v4);
      sub_1000099A4(v19, &unk_1006A52C0, &unk_10057D930);
      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    (*(v5 + 8))(v14, v4);
LABEL_18:
    sub_1000099A4(v19, &qword_1006A97F8, &unk_100585878);
    goto LABEL_19;
  }

  sub_100009F5C(&v19[v25]);
  if (!v22)
  {
    goto LABEL_18;
  }

  sub_1000099A4(v19, &unk_1006A52C0, &unk_10057D930);
LABEL_22:
  v31 = v23[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35)
    {
      v36 = *v32 == *v34 && v33 == v35;
      if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v35)
  {
LABEL_31:
    v27 = *(a1 + v23[7]) ^ *(a2 + v23[7]) ^ 1;
    return v27 & 1;
  }

LABEL_19:
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_1003D4B40()
{
  sub_10000A3E0();
  _StringGuts.grow(_:)(21);

  sub_10000A8EC();
  v21 = v1;
  v2._countAndFlagsBits = sub_10001E478(*v0, v0[1]);
  String.append(_:)(v2);

  sub_100008384(v3);
  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = v21;
  String.append(_:)(v4);

  sub_10000A3E0();
  _StringGuts.grow(_:)(28);

  sub_10000A8EC();
  v22 = v5;
  v6 = type metadata accessor for RingtoneDescriptor();
  v7._countAndFlagsBits = sub_10029142C(v0 + v6[5]);
  String.append(_:)(v7);

  sub_100008384(v8);

  v9._countAndFlagsBits = 0xD000000000000019;
  v9._object = v22;
  String.append(_:)(v9);

  sub_10000A3E0();
  _StringGuts.grow(_:)(26);

  sub_10000A8EC();
  v23 = v10;
  v11._countAndFlagsBits = sub_10001E478(*(v0 + v6[6]), *(v0 + v6[6] + 8));
  String.append(_:)(v11);

  sub_100008384(v12);

  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = v23;
  String.append(_:)(v13);

  sub_10000A3E0();
  _StringGuts.grow(_:)(23);

  sub_10000A8EC();
  v24 = v14;
  v20 = *(v0 + v6[7]);
  v15._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v15);

  sub_100008384(v16);

  v17._countAndFlagsBits = 0xD000000000000014;
  v17._object = v24;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  return 0xD000000000000013;
}

unint64_t sub_1003D4DDC()
{
  result = qword_1006A9800;
  if (!qword_1006A9800)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9800);
  }

  return result;
}

uint64_t sub_1003D4E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003D4F28(uint64_t a1, char a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___CSDIDSPendingChat_uuid;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v3[OBJC_IVAR___CSDIDSPendingChat_isVideo] = a2;
  *&v3[OBJC_IVAR___CSDIDSPendingChat_handle] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_1003D514C()
{
  result = type metadata accessor for UUID();
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

Class sub_1003D5200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003D52F4(a3, v9);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v9, v4);

  return v10.super.isa;
}

uint64_t sub_1003D52F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1003D53A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___CSDGroupIDSPendingChat_uuid;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR___CSDGroupIDSPendingChat_handle] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_1003D5580(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + *a4);
}

uint64_t sub_1003D5628()
{
  result = type metadata accessor for UUID();
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

void sub_1003D56C8(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
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
    v43 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v38 = _swiftEmptyArrayStorage;
    v40 = sub_10001E578(v1);
    v41 = v3;
    v42 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v40;
        v8 = v42;
        v37 = v41;
        v9 = v1;
        sub_1002E96A8(v40, v41, v42, v1);
        v11 = v10;
        v12 = [v10 candidate];
        v13 = [v12 candidateIdentifier];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v38;
        v43 = v38;
        v19 = v38[2];
        v18 = v38[3];
        if (v19 >= v18 >> 1)
        {
          sub_10039A2E0(v18 > 1, v19 + 1, 1);
          v17 = v43;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v38 = v17;
        if (v36)
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

          v25 = v35;
          sub_10026D814(&qword_1006A99A8, &qword_100585920);
          v26 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v26(v39, 0);
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
          v21 = 1 << *(v9 + 32);
          if (v7 >= v21)
          {
            goto LABEL_32;
          }

          v22 = v7 >> 6;
          v23 = *(v34 + 8 * (v7 >> 6));
          if (((v23 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v37)
          {
            goto LABEL_34;
          }

          v24 = v23 & (-2 << (v7 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v25 = v35;
          }

          else
          {
            v27 = v22 << 6;
            v28 = v22 + 1;
            v29 = (v33 + 8 * v22);
            v25 = v35;
            while (v28 < (v21 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_100010000(v7, v37, 0);
                v21 = __clz(__rbit64(v30)) + v27;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v37, 0);
          }

LABEL_27:
          v32 = *(v9 + 36);
          v40 = v21;
          v41 = v32;
          v42 = 0;
        }

        if (v5 == v25)
        {
          sub_100010000(v40, v41, v42);
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

void sub_1003D5A2C()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v26 = sub_100007CD8();
  v13 = sub_100007FEC(v26);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  sub_100007FDC();
  sub_10000C4C4();
  v25 = *&v0[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v3;
  v17[4] = v0;
  v27[4] = sub_1003D856C;
  v27[5] = v17;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v27[2] = v18;
  v27[3] = &unk_10062D8B0;
  v19 = _Block_copy(v27);

  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v21, v22, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v9 + 8))(v1, v6);
  v23 = sub_100007C7C();
  v24(v23);

  sub_100005EDC();
}

void sub_1003D5C68()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v29 = sub_100007CD8();
  v15 = sub_100007FEC(v29);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  sub_100007FDC();
  sub_10000C4C4();
  v28 = *&v0[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v7;
  v30[4] = v5;
  v30[5] = v19;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v20;
  v30[3] = v3;
  v21 = _Block_copy(v30);
  v22 = v0;
  v23 = v7;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v24, v25, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v11 + 8))(v1, v8);
  v26 = sub_100007C7C();
  v27(v26);

  sub_100005EDC();
}

void sub_1003D5EDC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (![*&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_featureFlags] intelligentRoutingEnabled])
  {
    if (qword_1006A0AA0 == -1)
    {
LABEL_8:
      static os_log_type_t.error.getter();
LABEL_9:
      os_log(_:dso:log:type:_:)();
      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession])
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.info.getter();
    goto LABEL_9;
  }

  v10 = [objc_opt_self() tu_defaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  aBlock = v30;
  v27 = v31;
  if (*(&v31 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = v25[2];
      v13 = v25[3];
      sub_100006AF0(0, &qword_1006A99C8, NSKeyedUnarchiver_ptr);
      sub_100006AF0(0, &qword_1006A99D0, IRServiceToken_ptr);
      v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v23 = v15;
      if (v15)
      {
        if (qword_1006A0AA0 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        sub_100049B14(v14, v13);
        v24 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken];
        *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken] = v23;
      }

      else
      {
        sub_100049B14(v14, v13);
      }
    }
  }

  else
  {
    sub_10004975C(&aBlock);
  }

  v16 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken];
  if (v16)
  {
    v17 = v16;
    sub_1003D6AD8(v17);
  }

  else
  {
    v18 = [objc_allocWithZone(IRServiceParameters) initWithServicePackage:0];
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    v28 = sub_1003D8558;
    v29 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v27 = sub_1002A07DC;
    *(&v27 + 1) = &unk_10062D810;
    v21 = _Block_copy(&aBlock);
    v22 = v1;

    [v19 createServiceWithParameters:v18 reply:v21];
    _Block_release(v21);
  }
}

void sub_1003D63E0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v10 = [objc_opt_self() tu_defaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setValue:0 forKey:v11];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D65A4(char *a1)
{
  v2 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:*&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue]];
  v3 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver;
  v4 = *&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver];
  *&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver] = v2;

  v5 = *&a1[v3];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v10[4] = sub_1003D8550;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100004CEC;
    v10[3] = &unk_10062D7C0;
    v7 = _Block_copy(v10);
    v8 = v5;
    v9 = a1;

    [v8 performBlockAfterFirstUnlock:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1003D66CC(uint64_t a1)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)();
  v3 = a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock;
  v4 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    return sub_1000051F8(v4);
  }

  return result;
}

id sub_1003D67BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithCandidateIdentifier:v1];

  return v2;
}

uint64_t sub_1003D6830(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(IRMediaEvent) initWithEventType:a3 eventSubType:0];
  v6 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v7 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  if (v7)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v8 = v7;
    v9 = [a2 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_1003D67BC();
    [v8 addEvent:v5 forCandidate:v10];
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;
  v12 = v5;
  v13 = [v12 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  *(v11 + 56) = &type metadata for String;
  v17 = sub_100009D88();
  *(v11 + 64) = v17;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v18 = *(a1 + v6);
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v19 = String.init<A>(describing:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v17;
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1003D6AD8(id a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  a1 = [objc_allocWithZone(IRConfiguration) initWithServiceToken:a1];
  [a1 setMode:0];
  v12 = [objc_allocWithZone(IRSession) init];
  v11 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession) = v12;

  v14 = *(v1 + v11);
  if (v14)
  {
    [v14 setDelegate:v1];
    v15 = *(v1 + v11);
    if (v15)
    {
      [v15 runWithConfiguration:a1];
    }
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D6A0;
  v27[0] = *(v1 + v11);
  v17 = v27[0];
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v27[0] = String.init<A>(describing:)();
  v27[1] = v18;
  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  *(v16 + 56) = &type metadata for String;
  v22 = sub_100009D88();
  *(v16 + 64) = v22;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v27[0] = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
  v23 = v27[0];
  sub_10026D814(&qword_1006A99D8, &qword_100585938);
  v24 = String.init<A>(describing:)();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v22;
  *(v16 + 72) = v24;
  *(v16 + 80) = v25;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1003D6DC0(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&a3[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a3;
  aBlock[4] = sub_1003D8560;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D860;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();
  v19 = a1;
  v20 = a3;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v16, v23);
}

void sub_1003D707C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    v23 = a1;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100009D88();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else if (a2)
  {
    v10 = objc_opt_self();
    v23 = 0;
    v11 = a2;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v23];
    v13 = v23;
    if (v12)
    {
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [objc_opt_self() tu_defaults];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      [v17 setValue:isa forKey:v19];

      sub_100049B14(v14, v16);
    }

    else
    {
      v20 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v21 = *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
    *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken) = a2;
    v22 = v11;

    sub_1003D6AD8(v22);
  }
}

uint64_t sub_1003D7324(void *a1)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A9968, IRSession_ptr);
  v3 = a1;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v2 + 56) = &type metadata for String;
  v7 = sub_100009D88();
  *(v2 + 64) = v7;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  type metadata accessor for IRSessionSuspensionReason(0);
  v8 = String.init<A>(reflecting:)();
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v7;
  *(v2 + 72) = v8;
  *(v2 + 80) = v9;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1003D74D0(void *a1, uint64_t a2, char a3)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057E830;
  type metadata accessor for IRSessionSuspensionReason(0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_100006AF0(0, &qword_1006A9968, IRSession_ptr);
  v10 = a1;
  v11 = String.init<A>(reflecting:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = 0x6C6C697473;
  if (a3)
  {
    v13 = 0x65676E6F6C206F6ELL;
  }

  v14 = 0xE500000000000000;
  if (a3)
  {
    v14 = 0xE900000000000072;
  }

  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v9;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_1003D76C4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v29 = v15;
  v30 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  sub_10000C4C4();
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D690;
  v32[0] = v3;
  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100009D88();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v23 = *&v0[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = v3;
  v32[4] = sub_1003D7DA4;
  v32[5] = v24;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_100004CEC;
  v32[3] = &unk_10062D680;
  v25 = _Block_copy(v32);
  swift_errorRetain();
  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v27, v28, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v31 + 8))(v12, v4);
  (*(v29 + 8))(v1, v30);

  sub_100005EDC();
}

void sub_1003D79F4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken) = 0;

  v3 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession) = 0;

  v4 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount) = v5;
  v6 = [*(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_serverBag) maxIRSessionRetries];
  if ((v5 & 0x8000000000000000) == 0 && v5 >= v6)
  {
    if (qword_1006A0AA0 == -1)
    {
LABEL_5:
      static os_log_type_t.default.getter();

      os_log(_:dso:log:type:_:)();
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
  if (swift_dynamicCast())
  {
    if ([v14 code] == -12889)
    {
      v7 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock);
      if (v7)
      {
        v8 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8);

        v7(v9);
        sub_1000051F8(v7);
      }
    }
  }

  v10 = a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock;
  v11 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock);
  if (v11)
  {
    v12 = *(v10 + 8);

    v11(v13);
    sub_1000051F8(v11);
  }
}

uint64_t *sub_1003D7DAC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    sub_1003D8228(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t *sub_1003D7E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v38 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v32 = v3;
    v30 = &v30;
    __chkstk_darwin(v9, v10);
    v31 = v7;
    v33 = (&v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v7, v33);
    v34 = 0;
    v7 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = xmmword_10057D690;
    v37 = v4;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v7 << 6);
      v19 = *(v4 + 48);
      v35 = v18;
      v20 = qword_1006A0AA0;
      v21 = *(v19 + 8 * v18);
      if (v20 != -1)
      {
        swift_once();
      }

      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v22 = swift_allocObject();
      *(v22 + 16) = v36;
      *(v22 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
      *(v22 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908);
      *(v22 + 32) = v38;

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v8 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
      if ([v21 classification] == 2 || objc_msgSend(v21, "classification") == 3)
      {

        v4 = v37;
LABEL_19:
        *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
        }
      }

      else
      {
        v23 = [v21 classification];

        v4 = v37;
        if (v23 == 4)
        {
          goto LABEL_19;
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        sub_1003EB800(v33, v31, v34, v4);
        v26 = v25;
        swift_bridgeObjectRelease_n();
        return v26;
      }

      v17 = *(v3 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v28 = swift_slowAlloc();
  v29 = v38;

  v26 = sub_1003D7DAC(v28, v7, v4, v29);

  swift_bridgeObjectRelease_n();
  return v26;
}

void sub_1003D8228(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v21 = v10 | (v4 << 6);
    v13 = qword_1006A0AA0;
    v14 = *(*(a3 + 48) + 8 * v21);
    if (v13 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10057D690;
    *(v15 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
    *(v15 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908);
    *(v15 + 32) = a4;

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if ([v14 classification] == 2 || objc_msgSend(v14, "classification") == 3)
    {

LABEL_18:
      *(a1 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = [v14 classification];

      if (v16 == 4)
      {
        goto LABEL_18;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      sub_1003EB800(a1, a2, v20, a3);

      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003D84CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setRapportIdentifier:v4];
}

id sub_1003D85E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v7[3] = type metadata accessor for ActivitySessionManager();
  v7[4] = &off_10062D928;
  v7[0] = a1;
  sub_100009AB0(v7, v3 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100009B7C(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_1003D86B8(void *a1)
{
  v1 = a1;
  v2 = [a1 activeRemoteParticipants];
  sub_100006AF0(0, &qword_1006A4530, off_100616608);
  sub_1003D911C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10001E550(v3);
  if (v4)
  {
    v5 = v4;
    v54 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v51 = sub_10001E578(v3);
    v52 = v6;
    v53 = v7 & 1;
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v8 = 0;
    v49 = v1;
    while (!__OFADD__(v8++, 1))
    {
      v10 = sub_100008260();
      sub_1002E966C(v10, v11, v53, v3);
      v13 = v12;
      v14 = [v12 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = v54[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if ((v3 & 0xC000000000000001) != 0)
      {
        if (!v53)
        {
          goto LABEL_50;
        }

        sub_100008260();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&qword_1006A5670, &qword_100580350);
        v20 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v20(v55, 0);
      }

      else
      {
        if (v53)
        {
          goto LABEL_51;
        }

        if (v51 < 0)
        {
          goto LABEL_46;
        }

        v16 = 1 << *(v3 + 32);
        if (v51 >= v16)
        {
          goto LABEL_46;
        }

        v17 = v51 >> 6;
        v18 = *(v3 + 56 + 8 * (v51 >> 6));
        if (((v18 >> v51) & 1) == 0)
        {
          goto LABEL_47;
        }

        if (*(v3 + 36) != v52)
        {
          goto LABEL_48;
        }

        v19 = v18 & (-2 << (v51 & 0x3F));
        if (v19)
        {
          v16 = __clz(__rbit64(v19)) | v51 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v17 << 6;
          v22 = v17 + 1;
          v23 = (v3 + 64 + 8 * v17);
          while (v22 < (v16 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              v26 = sub_100008260();
              sub_100010000(v26, v27, 0);
              v16 = __clz(__rbit64(v24)) + v21;
              goto LABEL_22;
            }
          }

          v28 = sub_100008260();
          sub_100010000(v28, v29, 0);
        }

LABEL_22:
        v30 = *(v3 + 36);
        v51 = v16;
        v52 = v30;
        v53 = 0;
      }

      if (v8 == v5)
      {

        sub_100010000(v51, v52, v53);
        v31 = v54;
        v1 = v49;
        goto LABEL_26;
      }
    }
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_26:
    v32 = [v1 activitySessions];
    type metadata accessor for ActivitySession();
    sub_1003D9184();
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v33 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v35 = v55[0];
      v34 = v55[1];
      v36 = v55[2];
      v37 = v55[3];
      v38 = v55[4];
    }

    else
    {
      v39 = -1 << *(v33 + 32);
      v34 = v33 + 56;
      v36 = ~v39;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v38 = v41 & *(v33 + 56);

      v37 = 0;
      v35 = v33;
    }

    v42 = (v36 + 64) >> 6;
    if (v35 < 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v43 = v37;
      v44 = v38;
      v45 = v37;
      if (!v38)
      {
        break;
      }

LABEL_37:
      v46 = (v44 - 1) & v44;
      v47 = *(*(v35 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
      if (!v47)
      {
LABEL_43:
        sub_100022DDC();

        return;
      }

      while (1)
      {
        v51 = v47;
        sub_1003D8B94(&v51, v31, v50);

        v37 = v45;
        v38 = v46;
        if ((v35 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_39:
        v48 = __CocoaSet.Iterator.next()();
        if (v48)
        {
          v54 = v48;
          swift_dynamicCast();
          v47 = v51;
          v45 = v37;
          v46 = v38;
          if (v51)
          {
            continue;
          }
        }

        goto LABEL_43;
      }
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v42)
      {
        goto LABEL_43;
      }

      v44 = *(v34 + 8 * v45);
      ++v43;
      if (v44)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_1003D8B94(id *a1, id *a2, uint64_t a3)
{
  v48 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v11, v6);
  v15 = dispatch thunk of ActivitySession.activity.getter();
  v16 = [v15 originator];

  if (!v16)
  {
    goto LABEL_14;
  }

  v50 = v14;
  v17 = dispatch thunk of ActivitySession.activity.getter();
  v18 = [v17 metadata];

  if (!v18 || (v19 = [v18 lifetimePolicy], v18, v19 != 1))
  {

LABEL_14:

    return;
  }

  v47 = v3;
  v20 = sub_10000B6F4(a2);
  v21 = 0;
  do
  {
    v22 = v21;
    if (v20 == v21)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v23 = a2[v21 + 4];
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v25 = [v23 isEqualToHandle:v16];

    v21 = v22 + 1;
  }

  while (!v25);
  if (qword_1006A0B68 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  swift_once();
LABEL_16:
  v26 = type metadata accessor for Logger();
  sub_10000AF9C(v26, qword_1006BA6B8);
  v27 = v16;
  v28 = v50;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v46 = v27;
  if (v31)
  {
    v44 = v20 != v22;
    v32 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v32 = 136315906;
    v51 = v27;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v43 = v30;
    v33 = v27;
    v34 = String.init<A>(reflecting:)();
    v36 = sub_10002741C(v34, v35, &v52);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_10002741C(v49, v28, &v52);
    *(v32 + 22) = 2080;
    v51 = a2;

    sub_10026D814(&qword_1006A5C30, &unk_1005859A0);
    v37 = String.init<A>(reflecting:)();
    v39 = sub_10002741C(v37, v38, &v52);

    *(v32 + 24) = v39;
    *(v32 + 32) = 1024;
    v40 = v43;
    *(v32 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v29, v40, "Originator %s in conversation for activity %s with handles %s? %{BOOL}d", v32, 0x26u);
    swift_arrayDestroy();
  }

  if (v20 == v22)
  {
    v41 = *(v48 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider + 24);
    v42 = *(v48 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider + 32);
    sub_100009B14((v48 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider), v41);
    (*(v42 + 8))(v49, v28, v41, v42);
  }
}

unint64_t sub_1003D911C()
{
  result = qword_1006A5668;
  if (!qword_1006A5668)
  {
    sub_100006AF0(255, &qword_1006A4530, off_100616608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5668);
  }

  return result;
}

unint64_t sub_1003D9184()
{
  result = qword_1006A4890;
  if (!qword_1006A4890)
  {
    type metadata accessor for ActivitySession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4890);
  }

  return result;
}

uint64_t sub_1003D91DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 32);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = v6;
  sub_100007C2C();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1003DA648;
  *(v14 + 24) = v13;
  v21[4] = sub_1002C7C44;
  v21[5] = v14;
  sub_10000A204();
  sub_1000087A4();
  v21[2] = v15;
  v21[3] = &unk_10062DA88;
  v16 = _Block_copy(v21);
  v17 = a2;
  v18 = a1;
  v19 = a3;

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9344(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v98 = a4;
  v11 = type metadata accessor for DispatchTimeInterval();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  __chkstk_darwin(v11, v13);
  v90 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  v18 = __chkstk_darwin(v15, v17);
  v101 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v93 = &v90 - v21;
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99, v23);
  v100 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA5E0);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = a5;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v26;
    *v31 = v26;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "LMI decryption failed so caching and triggering link recovery %@", v30, 0xCu);
    sub_1000099A4(v31, &unk_1006A2630, &qword_10057CB40);

    a5 = v29;
  }

  v33 = v26;
  v34 = a2;
  v35 = a3;

  v36 = [v33 value];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v38 = *(a6 + 16);

  v39 = sub_100005E74(v37);

  v92 = v34;
  v91 = v35;
  if (!v39)
  {
    v49 = [v33 value];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    sub_10026D814(&qword_1006A9B40, &unk_100585A80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10057D690;
    *(v53 + 32) = v34;
    *(v53 + 40) = v33;
    v54 = v98;
    *(v53 + 48) = v35;
    *(v53 + 56) = v54;
    *(v53 + 64) = a5;
    swift_beginAccess();
    v55 = v33;
    v56 = v34;
    v57 = v35;

    v58 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(a6 + 16);
    sub_100379D74(v53, v50, v52, isUniquelyReferenced_nonNull_native, v60, v61, v62, v63, v90, v91);
    *(a6 + 16) = v103;

    swift_endAccess();
    v48 = &selRef_unsignedIntValue;
    goto LABEL_11;
  }

  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = a5;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v45 = v39[2];
    v44 = v39[3];
    if (v45 >= v44 >> 1)
    {
      sub_10047066C(v44 > 1, v45 + 1, 1, v39);
      v39 = v89;
    }

    v39[2] = v45 + 1;
    v46 = &v39[5 * v45];
    v46[4] = v41;
    v46[5] = v40;
    v47 = v98;
    v46[6] = v42;
    v46[7] = v47;
    v46[8] = v43;

    v48 = &selRef_unsignedIntValue;
LABEL_11:
    v64 = swift_allocObject();
    *(v64 + 16) = a6;
    *(v64 + 24) = v33;
    aBlock[4] = sub_1003DA658;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062DAD8;
    _Block_copy(aBlock);
    v103 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    v33 = v33;

    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = type metadata accessor for DispatchWorkItem();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = DispatchWorkItem.init(flags:block:)();

    v69 = [v33 v48[160]];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v71 = *(a6 + 24);

    v72 = sub_1000513D8(v70);

    v41 = v101;
    if (v72)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v39 = [v33 v48[160]];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v73;

    swift_beginAccess();

    v74 = *(a6 + 24);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a6 + 24);
    sub_100379D4C(v68, v43, v42, v75, v76, v77, v78, v79, v90, v91);
    *(a6 + 24) = v102;

    swift_endAccess();
    v40 = *(a6 + 32);
    static DispatchTime.now()();
    v80 = [*(a6 + 40) letMeInRequestRecoveryTimeout];
    if ((v80 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    sub_10047066C(0, v39[2] + 1, 1, v39);
    v39 = v88;
  }

  v81 = v90;
  *v90 = v80;
  v83 = v94;
  v82 = v95;
  (*(v94 + 104))(v81, enum case for DispatchTimeInterval.seconds(_:), v95);
  v84 = v93;
  + infix(_:_:)();
  (*(v83 + 8))(v81, v82);
  v85 = v97;
  v86 = *(v96 + 8);
  v86(v41, v97);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v86)(v84, v85);
}

uint64_t sub_1003D9B50(uint64_t a1, void *a2)
{
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5E0);
  v5 = a2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39[0] = v9;
    *v8 = 136315138;
    v10 = [v5 value];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v12 = *(a1 + 16);

    v13 = sub_100005E74(v11);

    v14 = sub_1002915D8(v13);
    v16 = v15;

    v17 = sub_10002741C(v14, v16, v39);

    *(v8 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating LMI link recovery for cached LMI: %s", v8, 0xCu);
    sub_100009B7C(v9);
  }

  v18 = [v5 value];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v20 = *(a1 + 16);

  v21 = sub_100005E74(v19);

  if (v21)
  {

    v23 = [v5 value];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    swift_beginAccess();
    sub_100384304(v24, v26);
    swift_endAccess();

    v27 = [v5 value];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    swift_beginAccess();
    sub_10038420C(v28, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    swift_endAccess();

    swift_beginAccess();
    sub_1003DA5D8(a1 + 48, v39);
    return sub_1000099A4(v39, &qword_1006A67C0, &qword_100581B88);
  }

  return result;
}

uint64_t sub_1003D9ECC(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_100007C2C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  sub_100007C2C();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1003DA5D0;
  *(v5 + 24) = v4;
  v9[4] = sub_1000200A4;
  v9[5] = v5;
  sub_10000A204();
  sub_1000087A4();
  v9[2] = v6;
  v9[3] = &unk_10062DA10;
  v7 = _Block_copy(v9);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1003DA004(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v5 = 0;
    v42 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 pseudonym];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = *(a2 + 16);
      if (*(v10 + 16))
      {
        v11 = *(a2 + 16);

        v12 = sub_100005208();
        v14 = v13;

        if (v14)
        {
          v15 = *(*(v10 + 56) + 8 * v12);

          v16 = [v7 pseudonym];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v17 = *(a2 + 24);
          if (*(v17 + 16))
          {
            v18 = *(a2 + 24);

            v19 = sub_100005208();
            v21 = v20;

            if (v21)
            {
              v22 = *(*(v17 + 56) + 8 * v19);

              if (qword_1006A0B20 != -1)
              {
                swift_once();
              }

              v23 = type metadata accessor for Logger();
              sub_10000AF9C(v23, qword_1006BA5E0);
              v24 = Logger.logObject.getter();
              v25 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v24, v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 0;
                _os_log_impl(&_mh_execute_header, v24, v25, "Acquired link, proceeding to decrypt cached LMI", v26, 2u);
              }

              dispatch thunk of DispatchWorkItem.cancel()();
              v27 = [v7 pseudonym];
              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              swift_beginAccess();
              sub_100384304(v28, v30);
              swift_endAccess();

              v31 = [v7 pseudonym];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              swift_beginAccess();
              sub_10038420C(v32, v34, v35, v36, v37, v38, v39, v40, v22, v42);
              swift_endAccess();

              sub_1003DA5D8(a2 + 48, v44);
              if (v45)
              {
                sub_100009AB0(v44, v43);
                sub_1000099A4(v44, &qword_1006A67C0, &qword_100581B88);
                v41 = *sub_100009B14(v43, v43[3]);
                sub_1003685F0(a2, v15);

                sub_100009B7C(v43);
              }

              else
              {

                sub_1000099A4(v44, &qword_1006A67C0, &qword_100581B88);
              }
            }

            else
            {
            }

            i = v42;
            goto LABEL_23;
          }
        }
      }

LABEL_23:
      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_1003DA490()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_1000099A4(v0 + 48, &qword_1006A67C0, &qword_100581B88);
  return v0;
}

uint64_t sub_1003DA4E0()
{
  sub_1003DA490();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1003DA538(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003DA578(uint64_t result, int a2, int a3)
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

uint64_t sub_1003DA5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A67C0, &qword_100581B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1003DA670()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v8 = *(v0 - 8);
  v1 = *(v8 + 64);
  __chkstk_darwin(v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  NSArray.makeIterator()();
  sub_10000F0C0(&qword_1006A3ED0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v13)
    {
      break;
    }

    sub_10003EBF0(&v12, v11);
    sub_100006A94(v11, v9);
    sub_100006AF0(0, &qword_1006A21E8, off_100616670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
    }

    sub_100009B7C(v11);
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v14;
    }
  }

  (*(v8 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1003DA878(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1003DA888@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DA878(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003DA8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003DDAD8();
  v5 = sub_10036BCAC();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1003DA90C(char a1)
{
  result = 0xD00000000000003BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002FLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000029;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1003DA9AC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1003DD63C([objc_allocWithZone(TUVouchingEnablementImpl) init], a1, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_1003DAA64(void *a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v150 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v148 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchQoS();
  v147 = *(v149 - 8);
  v16 = *(v147 + 64);
  __chkstk_darwin(v149, v17);
  v146 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v20 = *(a2 + OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_vouchingEnablement);
  _Block_copy(a3);
  if (![v20 isEnabled])
  {
    (*(a3 + 2))(a3, a1);
LABEL_66:

    _Block_release(a3);
    return;
  }

  v137 = v12;
  v138 = v11;
  v21 = sub_1003DD498(a1, &selRef_clientContextData);
  v23 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (v22 >> 60 == 15)
  {
LABEL_62:
    if (qword_1006A0B08 != -1)
    {
LABEL_72:
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_10000AF9C(v107, qword_1006BA598);
    v108 = a1;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = *(v23 + 464);
      *(v111 + 4) = v108;
      *v112 = v108;
      v113 = v108;
      _os_log_impl(&_mh_execute_header, v109, v110, "Unable to identify context from participant update %@.", v111, 0xCu);
      sub_1000099A4(v112, &unk_1006A2630, &qword_10057CB40);
    }

    (*(a3 + 2))(a3, v108);
    goto LABEL_66;
  }

  v142 = v6;
  v136 = v19;
  v24 = v21;
  v25 = v22;
  v26 = objc_allocWithZone(CSDMessagingConversationParticipantDidJoinContext);
  sub_100290AC4(v24, v25);
  v134 = v24;
  v135 = v25;
  v27 = sub_100290A00(v24, v25);
  if (!v27)
  {
LABEL_61:
    sub_100290B6C(v134, v135);
    goto LABEL_62;
  }

  v28 = v27;
  if ((sub_1003DBAA0() & 1) == 0)
  {

    goto LABEL_61;
  }

  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v129 = a3;
  v29 = type metadata accessor for Logger();
  v30 = sub_10000AF9C(v29, qword_1006BA598);
  v31 = v28;
  v140 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v133 = a1;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v31;
    *v36 = v28;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Starting sanitization of %@.", v35, 0xCu);
    sub_1000099A4(v36, &unk_1006A2630, &qword_10057CB40);
    a1 = v133;
  }

  v130 = dispatch_group_create();
  v128 = v31;
  v38 = sub_1003DBCA0();
  v39 = sub_10000B6F4(v38);
  if (!v39)
  {
LABEL_69:
    v151 = *(a2 + OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_completionQueue);
    v114 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v115 = swift_allocObject();
    v116 = v128;
    v115[2] = v114;
    v115[3] = v116;
    v117 = v136;
    v115[4] = sub_1000174A8;
    v115[5] = v117;
    v115[6] = a1;
    v115[7] = v38;
    v157 = sub_1003DD4F8;
    v158 = v115;
    aBlock = _NSConcreteStackBlock;
    v154 = 1107296256;
    v155 = sub_100004CEC;
    v156 = &unk_10062DB78;
    v118 = _Block_copy(&aBlock);
    v119 = v116;

    v120 = a1;
    v121 = v146;
    static DispatchQoS.unspecified.getter();
    v152 = _swiftEmptyArrayStorage;
    sub_10000F0C0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v122 = v148;
    v123 = v138;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v124 = v130;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v118);

    sub_100290B6C(v134, v135);
    (*(v137 + 8))(v122, v123);
    (*(v147 + 8))(v121, v149);

    _Block_release(v129);
    return;
  }

  v41 = v39;
  a3 = 0;
  v126 = OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_voucherManager;
  v151 = v38 & 0xC000000000000001;
  v141 = v38 & 0xFFFFFFFFFFFFFF8;
  v132 = (v7 + 8);
  v125 = &v155;
  *&v40 = 136315138;
  v131 = v40;
  v139 = a2;
  v143 = v39;
  v144 = v38;
  while (1)
  {
    if (v151)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a3 >= *(v141 + 16))
      {
        goto LABEL_71;
      }

      v42 = *(v38 + 8 * a3 + 32);
    }

    v43 = v42;
    v23 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v44 = [v42 associationVoucher];
    if (!v44 || (v45 = v44, v46 = [v44 tuVoucher], v45, !v46))
    {
      [v43 setAssociationVoucher:0];
      if ([v43 validationSource] == 2)
      {
        [v43 setValidationSource:0];
      }

      goto LABEL_49;
    }

    v47 = [v46 data];
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = objc_allocWithZone(CSDMessagingMemberAssociationClaim);
    v52 = sub_100290A00(v48, v50);
    if (!v52)
    {
      break;
    }

    v145 = v52;
    v53 = sub_1003DD508(v52);
    v55 = v54;
    v56 = [a1 groupUUID];
    v57 = v150;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = UUID.uuidString.getter();
    v60 = v59;
    (*v132)(v57, v142);
    if (!v55)
    {

LABEL_33:
      v66 = v43;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock = v77;
        *v76 = v131;
        v78 = [v66 handle];
        if (!v78)
        {
          goto LABEL_76;
        }

        v79 = sub_1003DD56C(v78);
        if (!v80)
        {
          goto LABEL_75;
        }

        v81 = v79;
        v82 = v80;

        v83 = sub_10002741C(v81, v82, &aBlock);

        *(v76 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "Dropping association voucher for member %s that makes claim for different conversation.", v76, 0xCu);
        sub_100009B7C(v77);

        a1 = v133;
      }

      else
      {
      }

      a2 = v139;
      [v66 setAssociationVoucher:0];
      v95 = [v66 validationSource];
      v41 = v143;
      v38 = v144;
      if (v95 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v53 == v58 && v55 == v60)
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v84 = [v43 tuConversationMember];
    a2 = v139;
    if (!v84)
    {
      goto LABEL_52;
    }

    v85 = v84;
    v86 = [v46 handle];
    v87 = [v85 handle];
    v88 = [v86 isEqualToHandle:v87];

    if (!v88)
    {

LABEL_52:
      v66 = v43;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = v131;
        v100 = [v66 handle];
        if (!v100)
        {
          goto LABEL_78;
        }

        v101 = sub_1003DD56C(v100);
        if (!v102)
        {
          goto LABEL_77;
        }

        v103 = v101;
        v104 = v102;

        v105 = sub_10002741C(v103, v104, &aBlock);

        *(v98 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v96, v97, "Dropping association voucher for member %s because the voucher is for a different handle.", v98, 0xCu);
        sub_100009B7C(v99);

        a1 = v133;
        a2 = v139;
      }

      else
      {
      }

      v41 = v143;
      [v66 setAssociationVoucher:0];
      v106 = [v66 validationSource];
      v38 = v144;
      if (v106 != 2)
      {
LABEL_48:

        v43 = v145;
        goto LABEL_49;
      }

LABEL_47:
      [v66 setValidationSource:0];
      goto LABEL_48;
    }

    v89 = v130;
    dispatch_group_enter(v130);
    v127 = *(a2 + v126);
    v90 = swift_allocObject();
    v90[2] = v85;
    v90[3] = v43;
    v90[4] = v89;
    v157 = sub_1003DD5DC;
    v158 = v90;
    aBlock = _NSConcreteStackBlock;
    v154 = 1107296256;
    v155 = sub_1003541FC;
    v156 = &unk_10062DBC8;
    v91 = _Block_copy(&aBlock);
    v92 = v43;
    v43 = v85;
    v93 = v89;

    [v127 verify:v46 completion:v91];
    _Block_release(v91);

    a1 = v133;
    v41 = v143;
    v38 = v144;
LABEL_49:

    ++a3;
    if (v23 == v41)
    {
      goto LABEL_69;
    }
  }

  v63 = v43;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v64, v65))
  {

    goto LABEL_42;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  aBlock = v67;
  *v66 = v131;
  v68 = [v63 handle];
  if (!v68)
  {
    goto LABEL_74;
  }

  v69 = sub_1003DD56C(v68);
  if (v70)
  {
    v71 = v69;
    v72 = v70;

    v73 = sub_10002741C(v71, v72, &aBlock);

    *(v66 + 1) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Dropping association voucher for member %s that does not have an association claim as its payload.", v66, 0xCu);
    sub_100009B7C(v67);

    a1 = v133;
    a2 = v139;
LABEL_42:
    [v63 setAssociationVoucher:0];
    v94 = [v63 validationSource];
    v41 = v143;
    v38 = v144;
    if (v94 == 2)
    {
      [v63 setValidationSource:0];
    }

    v43 = v46;
    goto LABEL_49;
  }

  _Block_release(v129);

  __break(1u);
LABEL_74:
  _Block_release(v129);

  __break(1u);
LABEL_75:
  _Block_release(v129);

  __break(1u);
LABEL_76:
  _Block_release(v129);

  __break(1u);
LABEL_77:
  _Block_release(v129);

  __break(1u);
LABEL_78:
  _Block_release(v129);

  __break(1u);
}

unint64_t sub_1003DBAA0()
{
  v1 = [v0 participantUpdateType];
  if (v1 >= 5)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA598);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      [v3 participantUpdateType];
      type metadata accessor for IDSGroupSessionMessageParticipantUpdateType(0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_10002741C(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unknown participant update type: %s", v6, 0xCu);
      sub_100009B7C(v7);
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

id sub_1003DBC2C(void *a1)
{
  [a1 setAssociationVoucher:0];
  result = [a1 validationSource];
  if (result == 2)
  {

    return [a1 setValidationSource:0];
  }

  return result;
}

void *sub_1003DBCA0()
{
  v1 = v0;
  v2 = [v0 members];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1003DA670();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = [v1 lightweightMembers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1003DA670();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v7);
  v8 = v4;
  v9 = [v1 message];
  if (v9 && (v10 = v9, v11 = [v9 addedMembers], v10, v11))
  {
    v12 = v11;
    v13 = sub_1003DA670();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v13);
  v14 = [v1 message];
  if (v14 && (v15 = v14, v16 = [v14 lightweightMembers], v15, v16))
  {
    v17 = v16;
    v18 = sub_1003DA670();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v18);
  v19 = [v1 message];
  if (v19 && (v20 = v19, v21 = [v19 removedMembers], v20, v21))
  {
    v22 = v21;
    v23 = sub_1003DA670();
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v23);
  return v8;
}

void sub_1003DBED4(char a1, uint64_t a2, void *a3, void *a4, NSObject *a5)
{
  if (a1)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA598);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v11 = 136315138;
      v13 = [v8 handle];
      v14 = [v13 value];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10002741C(v15, v17, &v34);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Verified voucher on member %s.", v11, 0xCu);
      sub_100009B7C(v12);
    }

    goto LABEL_15;
  }

  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA598);
  v21 = a4;
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_14;
  }

  v24 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v24 = 136315394;
  v25 = [v21 handle];
  if (v25)
  {
    v26 = sub_1003DD56C(v25);
    if (v27)
    {
      v28 = v26;
      v29 = v27;

      v30 = sub_10002741C(v28, v29, &v34);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v31 = String.init<A>(describing:)();
      v33 = sub_10002741C(v31, v32, &v34);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to validate verified voucher on member %s with error %s.", v24, 0x16u);
      swift_arrayDestroy();

LABEL_14:
      sub_1003DBC2C(v21);
LABEL_15:
      dispatch_group_leave(a5);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1003DC280(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000AF9C(v75, qword_1006BA598);
    v76 = a2;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v76;
      v81 = v76;
      _os_log_impl(&_mh_execute_header, v77, v78, "Could not finish sanitization of %@. Self was deallocated", v79, 0xCu);
      sub_1000099A4(v80, &unk_1006A2630, &qword_10057CB40);
    }

    v82 = sub_1003DD498(v76, &selRef_data);
    v84 = v83;
    v74 = sub_1003DCE10(v82, v83);
    sub_100290B6C(v82, v84);
    a3(v74);
    goto LABEL_62;
  }

  v90 = a2;
  v93 = Strong;
  v91 = a3;
  v10 = sub_10000B6F4(a6);
  v11 = 0;
  v97 = a6 & 0xFFFFFFFFFFFFFF8;
  v98 = a6 & 0xC000000000000001;
  v95 = a6 + 32;
  v12 = a6;
LABEL_3:
  while (v11 != v10)
  {
    if (v98)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v97 + 16))
      {
        goto LABEL_65;
      }

      v13 = *(v95 + 8 * v11);
    }

    v14 = v13;
    if (__OFADD__(v11++, 1))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v16 = [v13 handle];
    if (!v16)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 tuHandle];

    if (v18)
    {
      v19 = [v14 associationVoucher];
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = v19;
      v21 = [v19 tuVoucher];

      if (!v21)
      {
        goto LABEL_26;
      }

      v94 = v21;
      v22 = [v21 unsafeData];
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = objc_allocWithZone(CSDMessagingMemberAssociationClaim);
      v27 = sub_100290A00(v23, v25);
      if (!v27 || (v28 = v27, v29 = [v27 tuAssociationForHandle:v18], v28, !v29))
      {

        v18 = v94;
LABEL_26:

        goto LABEL_27;
      }

      v96 = v29;
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {
          sub_1003DBC2C(v14);

          goto LABEL_3;
        }

        if (v98)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v97 + 16))
          {
            goto LABEL_66;
          }

          v31 = *(v12 + 8 * i + 32);
        }

        v32 = v31;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_64;
        }

        v33 = v12;
        v34 = [v31 handle];
        if (!v34)
        {
          __break(1u);
          goto LABEL_69;
        }

        v35 = v34;
        v36 = [v34 tuHandle];

        if (v36)
        {
          v37 = [v96 handle];
          v38 = [v37 isEqualToHandle:v36];

          if (v38)
          {
            break;
          }
        }

        v12 = v33;
      }

      v92 = [v14 tuConversationMember];
      if (v92)
      {
        v39 = [v32 tuConversationMember];
        v12 = v33;
        if (v39)
        {
          v40 = v39;
          if (sub_1003DD03C(v96, v92, v39))
          {
            v89 = v40;
            sub_1003DBC2C(v14);
            if (qword_1006A0B08 != -1)
            {
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            sub_10000AF9C(v41, qword_1006BA598);
            v42 = v18;
            swift_errorRetain();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();

            v87 = v44;
            if (os_log_type_enabled(v43, v44))
            {
              log = v43;
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v45 = 138412546;
              *(v45 + 4) = v42;
              *v46 = v18;
              *(v45 + 12) = 2080;
              v99 = v86;
              v88 = v42;
              swift_errorRetain();
              sub_10026D814(&unk_1006ABE80, &unk_100581F90);
              v47 = String.init<A>(describing:)();
              v49 = sub_10002741C(v47, v48, &v99);

              *(v45 + 14) = v49;
              _os_log_impl(&_mh_execute_header, log, v87, "Failed to validate association for member: %@ with error: %s", v45, 0x16u);
              sub_1000099A4(v46, &unk_1006A2630, &qword_10057CB40);

              sub_100009B7C(v86);
            }

            else
            {
            }
          }

          else
          {
            [v14 setValidationSource:2];
          }
        }

        else
        {
          sub_1003DBC2C(v32);
          if (qword_1006A0B08 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_10000AF9C(v57, qword_1006BA598);
          v58 = v32;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138412290;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&_mh_execute_header, v59, v60, "Could not create TUConversationMember for other associated member: %@", v61, 0xCu);
            sub_1000099A4(v62, &unk_1006A2630, &qword_10057CB40);
            v12 = v33;
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1003DBC2C(v14);
        if (qword_1006A0B08 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000AF9C(v50, qword_1006BA598);
        v51 = v14;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          *(v54 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v52, v53, "Could not create TUConversationMember for member: %@", v54, 0xCu);
          sub_1000099A4(v55, &unk_1006A2630, &qword_10057CB40);
        }

        else
        {
        }

        v12 = v33;
      }
    }

    else
    {
LABEL_27:
      [v14 setAssociationVoucher:{0, log}];
      if ([v14 validationSource] == 2)
      {
        [v14 setValidationSource:0];
      }
    }
  }

  if (qword_1006A0B08 == -1)
  {
    goto LABEL_54;
  }

LABEL_67:
  swift_once();
LABEL_54:
  v64 = type metadata accessor for Logger();
  sub_10000AF9C(v64, qword_1006BA598);
  v65 = v90;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    _os_log_impl(&_mh_execute_header, v66, v67, "Finished sanitization of %@.", v68, 0xCu);
    sub_1000099A4(v69, &unk_1006A2630, &qword_10057CB40);
  }

  v71 = sub_1003DD498(v65, &selRef_data);
  v73 = v72;
  v74 = sub_1003DCE10(v71, v72);
  sub_100290B6C(v71, v73);
  v91(v74);

LABEL_62:
}

id sub_1003DCE10(uint64_t a1, unint64_t a2)
{
  v5 = [v2 dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14 = 0xD000000000000034;
  *(&v14 + 1) = 0x8000000100573DF0;
  AnyHashable.init<A>(_:)();
  if (a2 >> 60 == 15)
  {
    v14 = 0u;
    v15 = 0u;
    sub_1002EAE60(a1, a2);
    sub_1000099A4(&v14, &unk_1006A2D10, &unk_10057D940);
    v7 = sub_1000067D4();
    if (v8)
    {
      v9 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v6[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
      sub_100006780(v6[6] + 40 * v9);
      sub_10003EBF0((v6[7] + 32 * v9), v13);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    sub_100006780(v16);
    sub_1000099A4(v13, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    *(&v15 + 1) = &type metadata for Data;
    *&v14 = a1;
    *(&v14 + 1) = a2;
    sub_10003EBF0(&v14, v13);
    sub_1002EAE60(a1, a2);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100378C74(v13, v16);
    sub_100006780(v16);
  }

  sub_100006AF0(0, &qword_1006A9B90, IDSGroupSessionParticipantUpdate_ptr);
  return sub_1003DD404();
}

uint64_t sub_1003DD03C(void *a1, void *a2, id a3)
{
  v6 = [a3 association];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 handle];
    v9 = [a3 handle];
    v10 = [v8 isEqualToHandle:v9];

    if (v10 && (v11 = [v7 handle], v12 = objc_msgSend(a2, "handle"), v13 = objc_msgSend(v11, "isEqualToHandle:", v12), v11, v12, v13))
    {
      v14 = [a1 handle];
      v15 = [v7 handle];
      v16 = [v14 isEqualToHandle:v15];

      if (v16)
      {
        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 3;
      }

      else if (([a1 isPrimary] & 1) != 0 || objc_msgSend(v7, "isPrimary"))
      {
        if (([a2 isLightweightMember] & 1) == 0 || (objc_msgSend(a3, "isLightweightMember") & 1) == 0)
        {

          return 0;
        }

        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 4;
      }

      else
      {
        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 2;
      }
    }

    else
    {
      sub_1003DD5E8();
      v18 = swift_allocError();
      v19 = 1;
    }

    *v17 = v19;
  }

  else
  {
    sub_1003DD5E8();
    v18 = swift_allocError();
    *v20 = 0;
  }

  return v18;
}

id sub_1003DD404()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithDictionaryRepresentation:isa];

  return v2;
}

uint64_t sub_1003DD498(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1003DD508(void *a1)
{
  v1 = [a1 conversationGroupUUIDString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003DD56C(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1003DD5E8()
{
  result = qword_1006A9B88;
  if (!qword_1006A9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9B88);
  }

  return result;
}

id sub_1003DD63C(uint64_t a1, uint64_t a2, char *a3)
{
  v25 = a1;
  v26 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4, v6);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA598);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initializing ParticipantUpdateSanitizer.", v17, 2u);
  }

  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000F0C0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_completionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v26;
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_vouchingEnablement] = v25;
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_voucherManager] = v18;
  v27.receiver = a3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

_BYTE *storeEnumTagSinglePayload for ParticipantUpdateSanitizerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003DDA84()
{
  result = qword_1006A9B98;
  if (!qword_1006A9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9B98);
  }

  return result;
}

unint64_t sub_1003DDAD8()
{
  result = qword_1006A9BA0;
  if (!qword_1006A9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9BA0);
  }

  return result;
}

uint64_t sub_1003DDB60()
{
  sub_100006810();
  v1 = type metadata accessor for _AppExtensionProcess();
  v0[13] = v1;
  sub_100005EB4(v1);
  v0[14] = v2;
  v4 = *(v3 + 64);
  v0[15] = sub_100005E9C();
  v5 = type metadata accessor for _AppExtensionProcess.Configuration();
  v0[16] = v5;
  sub_100005EB4(v5);
  v0[17] = v6;
  v8 = *(v7 + 64) + 15;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v9 = *(*(sub_10026D814(&qword_1006A9C58, &qword_100585CE0) - 8) + 64);
  v10 = sub_100005E9C();
  v0[20] = v10;
  v11 = type metadata accessor for _AppExtensionIdentity();
  v0[21] = v11;
  sub_100005EB4(v11);
  v0[22] = v12;
  v14 = *(v13 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  swift_task_alloc();
  sub_100016070();
  v0[26] = v15;
  *v15 = v16;
  v15[1] = sub_1003DDD38;

  return sub_1003DE6E0(v10);
}

uint64_t sub_1003DDD38()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003DDE30()
{
  v46 = v0;
  v2 = v0[20];
  v1 = v0[21];
  if (sub_100015468(v2, 1, v1) == 1)
  {
    sub_1003DF734(v2);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA640);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No conversation recording extension found", v6, 2u);
      sub_100009ED0();
    }

    sub_1003DF79C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_10000EB1C();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[22] + 32))(v0[25], v2, v1);
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA640);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[24];
  if (v18)
  {
    v43 = v17;
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[21];
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v23 = 136315138;
    v15(v21, v19, v22);
    v24 = String.init<A>(reflecting:)();
    v44 = v15;
    v26 = v25;
    v27 = *(v20 + 8);
    v27(v19, v22);
    v28 = sub_10002741C(v24, v26, &v45);
    v15 = v44;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v43, "Extension found! %s", v23, 0xCu);
    sub_100009B7C(v42);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
    v29 = v0[21];
    v30 = v0[22];

    v27 = *(v30 + 8);
    v27(v19, v29);
  }

  v0[28] = v27;
  v32 = v0[18];
  v31 = v0[19];
  v33 = v0[16];
  v34 = v0[17];
  v15(v0[23], v0[25], v0[21]);
  _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
  (*(v34 + 16))(v32, v31, v33);
  v35 = async function pointer to _AppExtensionProcess.init(configuration:)[1];
  swift_task_alloc();
  sub_100016070();
  v0[29] = v36;
  *v36 = v37;
  v36[1] = sub_1003DE260;
  v38 = v0[18];
  v39 = v0[15];
  sub_100011274();

  return _AppExtensionProcess.init(configuration:)();
}

uint64_t sub_1003DE260()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003DE358()
{
  v1 = v0[30];
  v2 = v0[15];
  v3.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
  if (v4.super.isa)
  {

    return _swift_unexpectedError(v4.super.isa, "callservicesd/RecordingExtensionConnection.swift", 48, 1, 38);
  }

  else
  {
    isa = v3.super.isa;
    v6 = v0[25];
    v21 = v0[28];
    v22 = v0[24];
    v19 = v0[22];
    v20 = v0[21];
    v23 = v0[23];
    v24 = v0[20];
    v7 = v0[19];
    v25 = v0[18];
    v8 = v0[17];
    v18 = v0[16];
    v9 = v0[14];
    v10 = v0[15];
    v11 = v0[13];
    v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20LiveCommunicationKit41ConversationRecordingExtensionXPCProtocol_];
    [(objc_class *)isa setRemoteObjectInterface:v12];

    [(objc_class *)isa resume];
    v0[6] = ScreenSharingActivityManager.carPlayDidDisconnect();
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1003DEEE4;
    v0[5] = &unk_10062DCE8;
    v13 = _Block_copy(v0 + 2);
    v14 = [(objc_class *)isa synchronousRemoteObjectProxyWithErrorHandler:v13];
    _Block_release(v13);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v7, v18);
    v21(v6, v20);
    sub_10026D814(&qword_1006A9C68, &unk_100585CF0);
    swift_dynamicCast();
    v15 = v0[12];

    v16 = v0[1];

    return v16(v15);
  }
}

uint64_t sub_1003DE620()
{
  v1 = *(v0 + 216);
  sub_10000EB1C();

  sub_100009EF4();

  return v2();
}

uint64_t sub_1003DE6E0(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for _AppExtensionIdentity();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for _AppExtensionQuery.Results();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = type metadata accessor for _AppExtensionQuery();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003DE8B4, 0, 0);
}

uint64_t sub_1003DE8B4()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  extensionPointName.getter();
  _AppExtensionQuery.init(extensionPointIdentifier:)();
  _AppExtensionQuery.results.getter();
  _AppExtensionQuery.Results.makeAsyncIterator()();
  sub_1003DF808();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100016070();
  v0[17] = v5;
  *v5 = v6;
  v7 = sub_10000A3EC(v5);

  return dispatch thunk of AsyncIteratorProtocol.next()(v7);
}

uint64_t sub_1003DE964()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003DEA5C()
{
  *(v0 + 152) = *(v0 + 16);
  sub_100007BBC();
  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1003DEA8C(uint64_t a1)
{
  v2 = v1[19];
  if (!v2)
  {
    v17 = v1[15];
    v16 = v1[16];
    v19 = v1[13];
    v18 = v1[14];
    v20 = v1[11];
    v21 = v1[12];
    (*(v1[9] + 8))(v1[10], v1[8]);
    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    v22 = 1;
    goto LABEL_19;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1[6] + 80);
    v6 = v2 + ((v5 + 32) & ~v5);
    while (v4 < *(v2 + 16))
    {
      (*(v1[6] + 16))(v1[7], v6 + *(v1[6] + 72) * v4, v1[5]);
      v7 = _AppExtensionIdentity.containingApplicationRecord.getter();
      if (v7)
      {
        v8 = sub_100021AEC(v7);
        if (v9)
        {
          if (v8 == 0xD000000000000015 && v9 == 0x8000000100561020)
          {

LABEL_18:
            v23 = v1[15];
            v24 = v1[13];
            v41 = v1[14];
            v42 = v1[16];
            v25 = v1[11];
            v26 = v1[12];
            v28 = v1[9];
            v27 = v1[10];
            v29 = v1[8];
            v30 = v1[6];
            v39 = v1[5];
            v40 = v1[7];
            v38 = v1[4];

            (*(v28 + 8))(v27, v29);
            (*(v26 + 8))(v24, v25);
            (*(v23 + 8))(v42, v41);
            (*(v30 + 32))(v38, v40, v39);
            v22 = 0;
LABEL_19:
            v31 = v1[16];
            v32 = v1[13];
            v33 = v1[10];
            v34 = v1[7];
            sub_10000AF74(v1[4], v22, 1, v1[5]);

            sub_100009EF4();
            sub_100011274();

            __asm { BRAA            X1, X16 }
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_18;
          }
        }
      }

      ++v4;
      a1 = (*(v1[6] + 8))(v1[7], v1[5]);
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1003DF808();
    v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    swift_task_alloc();
    sub_100016070();
    v1[17] = v13;
    *v13 = v14;
    sub_10000A3EC();
    sub_100011274();
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_1003DED70()
{
  sub_100006810();
  *(v0 + 24) = *(v0 + 144);
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  swift_willThrowTypedImpl();
  sub_100007BBC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1003DEDFC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  sub_100009EF4();
  v9 = v0[18];

  return v8();
}

void sub_1003DEEE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1003DEF4C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for _ConversationRecordingContext();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  (*(v11 + 16))(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = objc_allocWithZone(type metadata accessor for XPCWrapper());
  sub_1003DF6F0(&qword_1006A9C48);
  sub_1003DF6F0(&qword_1006A9C50);
  v13 = XPCWrapper.init<A>(wrapped:)();
  if (v2)
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA640);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v23[1] = v2;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v19 = String.init<A>(reflecting:)();
      v21 = sub_10002741C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error creating XPC Wrapper %s", v17, 0xCu);
      sub_100009B7C(v18);
      sub_100009ED0();

      sub_100009ED0();
    }

    swift_willThrow();
  }

  else
  {
    v22 = v13;
    [a2 conversationRecordingStartedWithContext:v13];
  }
}

uint64_t sub_1003DF1D4()
{
  sub_100006810();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = type metadata accessor for URL();
  v0[21] = v4;
  sub_100005EB4(v4);
  v0[22] = v5;
  v7 = *(v6 + 64);
  v0[23] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1003DF280()
{
  v1 = v0[19];
  (*(v0[22] + 16))(v0[23], v0[18], v0[21]);
  v2 = objc_allocWithZone(type metadata accessor for SandboxExtendedURL());
  v3 = SandboxExtendedURL.init(url:)();
  v0[24] = v3;
  v4 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100005E9C();
  (*(v6 + 16))();
  v9 = objc_allocWithZone(type metadata accessor for XPCWrapper());
  sub_1003DF6F0(&qword_1006A9C48);
  sub_1003DF6F0(&qword_1006A9C50);
  v10 = XPCWrapper.init<A>(wrapped:)();
  v0[25] = v10;
  v11 = v10;
  v12 = v0[20];

  v0[2] = v0;
  v0[3] = sub_1003DF50C;
  v13 = swift_continuation_init();
  v0[17] = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003432B0;
  v0[13] = &unk_10062DCC0;
  v0[14] = v13;
  [v12 conversationRecordingEndedWithUrl:v3 context:v11 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003DF50C()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1003DF608()
{
  sub_100006810();
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  sub_100009EF4();

  return v3();
}

uint64_t sub_1003DF674()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[26];
  v5 = v0[23];

  sub_100009EF4();

  return v6();
}

uint64_t sub_1003DF6F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ConversationRecordingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003DF734(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A9C58, &qword_100585CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DF79C()
{
  result = qword_1006A9C60;
  if (!qword_1006A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C60);
  }

  return result;
}

uint64_t sub_1003DF7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003DF808()
{
  result = qword_1006A9C70;
  if (!qword_1006A9C70)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecordingExtensionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003DF940()
{
  result = qword_1006A9C78;
  if (!qword_1006A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C78);
  }

  return result;
}

uint64_t sub_1003DF994@<X0>(uint64_t a1@<X8>)
{
  sub_1003F7AA0(v1);
  if (v3 >> 60 == 15)
  {
    v4 = type metadata accessor for ConversationLinkKeyAgreement();

    return sub_10000AF74(a1, 1, 1, v4);
  }

  else
  {

    return sub_10039D050(a1);
  }
}

uint64_t sub_1003DFA5C()
{
  v1 = *(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier);
  v2 = *(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8);

  return v1;
}

uint64_t sub_1003DFB08(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier);
  v4 = *(v2 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8);
  *v3 = a1;
  v3[1] = a2;
}

id sub_1003DFB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for GeneratorDescriptor();
  return objc_msgSendSuper2(&v6, "init");
}

BOOL sub_1003DFC14(uint64_t a1)
{
  sub_1002A21FC(a1, v7);
  if (v8)
  {
    type metadata accessor for GeneratorDescriptor();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier) == *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier] && *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8) == *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];
      if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version);
        v4 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_10004975C(v7);
  }

  return 0;
}

Swift::Int sub_1003DFD8C()
{
  Hasher.init()();
  v1 = *(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier);
  v2 = *(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8);

  String.hash(into:)();

  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version));
  return Hasher.finalize()();
}

id sub_1003DFE4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeneratorDescriptor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003DFEB8()
{
  v1 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v2 = [objc_allocWithZone(CSDTTYProviderObserver) init];
  v3 = [objc_opt_self() sharedAudioSystemController];
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = [result deviceType];

  v7 = sub_10002EAD0();
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 queue];

  result = [objc_opt_self() sharedInstance];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v49 = v6 == 7;
  v11 = objc_allocWithZone(TUFeatureFlags);
  v12 = v3;
  v13 = [v11 init];
  v14 = [objc_allocWithZone(TUConfigurationProvider) init];
  v15 = *(v0 + 48);
  v16 = *(v0 + 52);
  v17 = swift_allocObject();
  v58[3] = sub_100006AF0(0, &qword_1006AA390, TUAudioSystemController_ptr);
  v58[4] = &off_100627548;
  v58[0] = v12;
  type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v18, v19, v20, v21);
  v22 = v17 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType;
  *v22 = 0;
  *(v22 + 8) = 1;
  type metadata accessor for AudioDescriptor();
  sub_100007928();
  sub_10000AF74(v23, v24, v25, v26);
  v27 = (v17 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler);
  *v27 = 0;
  v27[1] = 0;
  *(v17 + 24) = v1;
  *(v17 + 32) = v2;
  *(v17 + 88) = v7 & 1;
  *(v17 + 96) = v13;
  *(v17 + 16) = v9;
  sub_100009AB0(v58, v17 + 40);
  *(v17 + 80) = v10;
  *(v17 + OBJC_IVAR____TtC13callservicesd13AudioResolver_configurationProvider) = v14;
  type metadata accessor for SoundDescriptorActionResolver();
  v28 = swift_allocObject();
  sub_100006AF0(0, &qword_1006A9E90, AVAudioPlayer_ptr);
  sub_10038532C();
  v29 = v1;
  v30 = v14;
  v31 = v29;
  v32 = v30;
  v51 = v2;
  v33 = v13;
  v50 = v9;
  v34 = Dictionary.init(dictionaryLiteral:)();
  *(v28 + 40) = v32;
  *(v28 + 48) = v34;
  *(v28 + 16) = v31;
  *(v28 + 24) = v49;
  *(v28 + 32) = v33;
  *(v17 + OBJC_IVAR____TtC13callservicesd13AudioResolver_soundDescriptorActionResolver) = v28;
  type metadata accessor for HapticDescriptorResolver();
  v35 = swift_allocObject();
  v36 = v32;
  v37 = sub_1003E0B04(v31, 0, v36, v35);
  v38 = 0;
  *(v17 + OBJC_IVAR____TtC13callservicesd13AudioResolver_hapticDescriptorResolver) = v37;
  v39 = &stru_100000020;
  do
  {
    v40 = *(&off_1006209E0 + v39);
    if ((v40 & ~v38) == 0)
    {
      v40 = 0;
    }

    v38 |= v40;
    v39 += 8;
  }

  while (v39 != 240);
  [*(v17 + 24) setTriggers:v38];
  v41 = *(v17 + 24);
  [v41 setTriggers:{objc_msgSend(v41, "triggers") | 0x40000000}];
  [v41 setTriggers:sub_100015B70() | 0xFFFFFFFF80000000];
  [v41 setTriggers:sub_100015B70() | 0xFFFFFFFF80000000];
  [v41 setTriggers:sub_100015B70() | 0x600000];
  v42 = [objc_opt_self() defaultCenter];
  v43 = swift_allocObject();
  swift_weakInit();
  v56 = sub_1003E0DC0;
  v57 = v43;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1000165EC;
  v55 = &unk_10062DE30;
  v44 = _Block_copy(&aBlock);

  v45 = [v42 addObserverForName:@"CSDRouteManagerRoutesChangedNotification" object:0 queue:0 usingBlock:v44];
  _Block_release(v44);
  swift_unknownObjectRelease();

  v46 = *(v17 + 24);
  v47 = swift_allocObject();
  swift_weakInit();

  v56 = sub_1003E0DC8;
  v57 = v47;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100028100;
  v55 = &unk_10062DE58;
  v48 = _Block_copy(&aBlock);

  [v46 setCallChanged:v48];
  _Block_release(v48);

  sub_100009B7C(v58);
  return v17;
}

uint64_t sub_1003E049C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_100010B20();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000166CC(0);
  }

  return result;
}

uint64_t sub_1003E053C(void *a1, const char *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 16);
    *v9 = v11;
    (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    result = (*(v5 + 8))(v9, v4);
    if (v11)
    {
      v13 = a1;
      sub_100016A64(a1, a2, 0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003E06B0(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && a3 == a1)
  {
    return 1;
  }

  if (a3 == 17)
  {
    return (a2 & 1) == 0 && a1 == 13;
  }

  return a3 == 13 && (a2 & 1) == 0 && a1 == 17;
}

uint64_t sub_1003E06F8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 40));
  v3 = *(v0 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 96);
  swift_unknownObjectRelease();
  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate, &qword_1006A3C70, &unk_10057EA80);
  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_soundDescriptorActionResolver);

  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_hapticDescriptorResolver);

  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolvedDescriptor, &unk_1006A2BF0, &unk_100585F10);
  v7 = *(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8);
  sub_1000051F8(*(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler));
  return v0;
}

uint64_t sub_1003E07C4()
{
  sub_1003E06F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1003E0824()
{
  sub_1003E097C(319, &qword_1006A9D10, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1003E097C(319, &unk_1006A9D18, type metadata accessor for AudioDescriptor);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003E097C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1003E09D0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1003E0A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  sub_100008070(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

unint64_t sub_1003E0A9C()
{
  result = qword_1006A9E78;
  if (!qword_1006A9E78)
  {
    sub_100006AF0(255, &qword_1006A9E70, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9E78);
  }

  return result;
}

void *sub_1003E0B04(void *a1, id a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  a4[2] = a1;
  if (a2)
  {
    v20 = 0;
  }

  else
  {
    v21 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
    v26 = "sChangedNotification";
    v27 = v21;
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    v23 = sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
    v24 = v8;
    sub_10026D814(&qword_1006A31B0, &unk_10057E920);
    v25 = a1;
    sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v9 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
    v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    a2 = [objc_allocWithZone(CSDProximitySensorObserver) initWithQueue:v20];
  }

  a4[3] = a2;
  a4[4] = v20;
  a4[5] = a3;
  return a4;
}

uint64_t sub_1003E0EFC()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E0FAC()
{
  v1 = *(v0 + 16);

  v2 = qword_1006A9F60;
  v3 = type metadata accessor for DispatchTimeInterval();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1006A9F68 + 8);

  return v0;
}

uint64_t sub_1003E1028()
{
  sub_1003E0FAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1003E10A0(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E1128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return sub_100015468(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1003E1340(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v11 = v12;
          }

          sub_10000AF74(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

id sub_1003E15F8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 callSource:a2];

  return v4;
}

double sub_1003E1654()
{
  result = sub_1003E1694(1.5);
  qword_1006AA070 = *&result;
  return result;
}

float sub_1003E1694(float a1)
{
  v2 = objc_opt_self();
  v3 = [v2 tu_defaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v10, v11);
    sub_10004975C(v11);
    v6 = [v2 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 floatForKey:v7];
    a1 = v8;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_10004975C(v11);
  }

  return a1;
}

double sub_1003E17CC()
{
  result = sub_1003E1694(0.5);
  qword_1006AA078 = *&result;
  return result;
}

uint64_t sub_1003E180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 tu_defaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v12, v13);
    sub_10004975C(v13);
    v8 = [v4 standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 stringForKey:v9];

    if (v10)
    {
      a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    sub_10004975C(v13);
  }

  return a3;
}

char *sub_1003E1980(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  *&v1[v5] = static OS_dispatch_queue.main.getter();
  *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingAudioCallNotifyToken] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingVideoCallNotifyToken] = 0;
  sub_100006AF0(0, &unk_1006A2950, CXInProcessProvider_ptr);
  swift_getObjectType();
  v6 = sub_1003E1ABC();
  v7 = a1;
  v8 = sub_1003E15F8(v6, v7);
  *&v2[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider] = v8;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v9 = v8;
  v10 = objc_msgSendSuper2(&v14, "init");
  v11 = *&v10[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  v12 = v10;
  [v9 setDelegate:v12 queue:{v11, v14.receiver, v14.super_class}];
  sub_1003E1C20();

  return v12;
}

id sub_1003E1ABC()
{
  v0 = [objc_allocWithZone(CXProviderConfiguration) init];
  [v0 setMaximumCallGroups:1];
  [v0 setMaximumCallsPerCallGroup:1];
  [v0 setSupportsAudioOnly:1];
  [v0 setSupportsVideo:1];
  [v0 setIncludesCallsInRecents:0];
  sub_10039B400();
  CXProviderConfiguration.supportedHandleTypes.setter();
  sub_1003E1E78();
  sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setEmergencyHandles:isa];

  sub_1003E20A0();
  sub_100006AF0(0, &qword_1006AA0D0, CXLabeledHandle_ptr);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setEmergencyLabeledHandles:v2];

  return v0;
}

void sub_1003E1C20()
{
  v1 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingAudioCallNotifyToken;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1003E3904;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100272204;
  v13 = &unk_10062E0D8;
  v4 = _Block_copy(&aBlock);

  v5 = String.utf8CString.getter();
  notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
  swift_endAccess();

  _Block_release(v4);
  v6 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingVideoCallNotifyToken;
  swift_beginAccess();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1003E3988;
  v15 = v7;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100272204;
  v13 = &unk_10062E100;
  v8 = _Block_copy(&aBlock);

  v9 = String.utf8CString.getter();
  notify_register_dispatch((v9 + 32), (v0 + v6), v2, v8);
  swift_endAccess();

  _Block_release(v8);
}

void *sub_1003E1E78()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  if (v2 && (v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = sub_100422B0C(v3), , v4))
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
      v6 = (v4 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_1003E23FC(2);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 += 2;
        --v5;
      }

      while (v5);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10057DEC0;
    sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
    *(v10 + 32) = sub_1003E23FC(2);
    *(v10 + 40) = sub_1003E23FC(2);
  }

  return v10;
}

void *sub_1003E20A0()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1003E2478(v3);

  result = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return result;
  }

  v6 = *(v4 + 16);
  if (!v6)
  {

    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = sub_1000057CC(v4);
  v9 = v8;
  v11 = v10;
  v12 = v4 + 64;
  result = sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  v13 = 0;
  v35 = v9;
  v34 = v4 + 72;
  v36 = v4;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v14 = v7 >> 6;
    if ((*(v12 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v4 + 36) != v9)
    {
      goto LABEL_26;
    }

    v38 = v13;
    v37 = v11;
    v15 = v6;
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 16 * v7);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v16 + 16 * v7);
    v21 = *v20;
    v22 = v20[1];
    swift_bridgeObjectRetain_n();

    v23 = sub_1003E23FC(2);
    v24 = objc_allocWithZone(CXLabeledHandle);
    sub_1003E39A8(v23);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v25 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v4 = v36;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v26 = 1 << *(v36 + 32);
    if (v7 >= v26)
    {
      goto LABEL_27;
    }

    v27 = *(v12 + 8 * v14);
    if ((v27 & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v36 + 36) != v9)
    {
      goto LABEL_29;
    }

    v6 = v15;
    v28 = v27 & (-2 << (v7 & 0x3F));
    if (v28)
    {
      v26 = __clz(__rbit64(v28)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v14 << 6;
      v30 = v14 + 1;
      v31 = (v34 + 8 * v14);
      while (v30 < (v26 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_100010000(v7, v9, v37 & 1);
          v26 = __clz(__rbit64(v32)) + v29;
          goto LABEL_19;
        }
      }

      result = sub_100010000(v7, v9, v37 & 1);
    }

LABEL_19:
    v11 = 0;
    v13 = v38 + 1;
    v7 = v26;
    v9 = v35;
    if (v38 + 1 == v6)
    {

      return _swiftEmptyArrayStorage;
    }
  }

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
  return result;
}

id sub_1003E23FC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithType:a1 value:v3];

  return v4;
}

unint64_t sub_1003E2478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10026D814(&qword_1006AA0D8, qword_100586050);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v8);
        ++v7;
        if (v4)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_100006A94(*(a1 + 56) + 32 * v9, v30);
    *&v29 = v11;
    *(&v29 + 1) = v12;
    v27[2] = v29;
    v28[0] = v30[0];
    v28[1] = v30[1];
    v13 = v29;
    sub_10003EBF0(v28, v27);

    if (!swift_dynamicCast())
    {
      break;
    }

    v4 &= v4 - 1;
    result = sub_100005208();
    v14 = result;
    if (v15)
    {
      v16 = v1[6] + 16 * result;
      v17 = *(v16 + 8);
      *v16 = v13;

      v18 = (v1[7] + 16 * v14);
      v19 = v18[1];
      *v18 = v25;
      v18[1] = v26;

      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_22;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v1[6] + 16 * result) = v13;
      v20 = (v1[7] + 16 * result);
      *v20 = v25;
      v20[1] = v26;
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  return 0;
}

uint64_t sub_1003E2788(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v44 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = type metadata accessor for DispatchTime();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v29 = __chkstk_darwin(v23, v28);
  v31 = v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = v41 - v33;
  [a2 fulfill];
  v41[1] = *&v2[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  static DispatchTime.now()();
  if (qword_1006A0BD0 != -1)
  {
    swift_once();
  }

  + infix(_:_:)();
  v35 = *(v25 + 8);
  v35(v31, v22);
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  *(v36 + 24) = a2;
  v50 = sub_1003E38FC;
  v51 = v36;
  sub_100009FE4();
  v47 = 1107296256;
  v48 = sub_100004CEC;
  v49 = &unk_10062E088;
  v37 = _Block_copy(aBlock);
  v38 = v2;
  v39 = a2;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v37);
  (*(v44 + 8))(v12, v4);
  (*(v42 + 8))(v21, v43);
  v35(v34, v22);
}

uint64_t sub_1003E2AD8(char *a1, void *a2)
{
  v23[0] = a2;
  v23[1] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider];
  v17 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = *(v11 + 8);
  v19(v15, v10);
  static Date.now.getter();
  v20 = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v9, v4);
  [v16 reportOutgoingCallWithUUID:isa startedConnectingAtDate:v20];

  v21 = [v23[0] callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003E2D04(v15);
  return (v19)(v15, v10);
}

uint64_t sub_1003E2D04(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2, v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6, v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v14 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v33 - v23;
  v35 = *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  static DispatchTime.now()();
  if (qword_1006A0BD8 != -1)
  {
    swift_once();
  }

  + infix(_:_:)();
  v33 = *(v16 + 8);
  v33(v21, v15);
  (*(v11 + 16))(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v10);
  v25 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  (*(v11 + 32))(v26 + v25, v14, v10);
  aBlock[4] = sub_1003E3898;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E038;
  v27 = _Block_copy(aBlock);
  v28 = v1;
  v29 = v34;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v30 = v39;
  v31 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);
  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v29, v38);
  v33(v24, v15);
}

void sub_1003E31DC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  sub_1003E180C(0xD00000000000001FLL, 0x80000001005744A0, 0x313639383034312BLL);
  v14 = [objc_allocWithZone(CXCallUpdate) init];
  [v14 setUsingBaseband:1];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v15 destinationIdIsPhoneNumber];

  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  v18 = sub_1003E23FC(v17);
  v19 = [objc_allocWithZone(CXMember) initWithHandle:v18];

  [v14 setRemoteMember:v19];
  sub_1003CE928(0xD00000000000001FLL, 0x80000001005744C0, v14, &selRef_setAudioCategory_);
  v21 = sub_10000F810(v20, "setSupportsHolding:");
  v22 = sub_10000F810(v21, "setSupportsGrouping:");
  v23 = sub_10000F810(v22, "setSupportsDTMF:");
  v24 = sub_10000F810(v23, "setSupportsUnambiguousMultiPartyState:");
  v25 = sub_10000F810(v24, "setSupportsAddCall:");
  sub_10000F810(v25, "setSupportsSendingToVoicemail:");
  sub_1003CE928(29557, 0xE200000000000000, v14, &selRef_setISOCountryCode_);
  sub_10000F810(v26, "setSupportsTTYWithVoice:");
  [v14 setHasVideo:a1 & 1];
  v27 = *(v2 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v13, v4);
  v34 = ScreenSharingActivityManager.carPlayDidDisconnect();
  v35 = 0;
  sub_100009FE4();
  v31 = 1107296256;
  v32 = sub_1004582CC;
  v33 = &unk_10062E128;
  v29 = _Block_copy(aBlock);
  [v27 reportNewIncomingCallWithUUID:isa update:v14 completion:v29];
  _Block_release(v29);
}

uint64_t sub_1003E34F0(uint64_t a1, void *a2)
{
  v30 = type metadata accessor for Date();
  v4 = sub_100007FEC(v30);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for UUID();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  [a2 fulfill];
  v23 = *(v2 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  v24 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = *(v16 + 8);
  v26(v22, v13);
  static Date.now.getter();
  v27 = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v12, v30);
  [v23 reportOutgoingCallWithUUID:isa startedConnectingAtDate:v27];

  v28 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003E2D04(v22);
  return (v26)(v22, v13);
}

void sub_1003E3788(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  static Date.now.getter();
  v10 = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v7, v2);
  [v8 reportOutgoingCallWithUUID:isa connectedAtDate:v10];
}

void sub_1003E3898()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);

  sub_1003E3788(v2);
}

void sub_1003E3924(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (TUShouldCreateSuperboxProvider())
    {
      sub_1003E31DC(a3 & 1);
    }
  }
}

id sub_1003E39A8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithHandle:a1 label:v3];

  return v4;
}

uint64_t sub_1003E3A1C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(TUFeatureFlags) init];
  if ([v5 mooseEnabled])
  {
    type metadata accessor for RecordingExtensionConnectionFactory();
    swift_allocObject();
    sub_10000691C();
    v6 = type metadata accessor for RecordingMediaComposer();
    v7 = type metadata accessor for CallRecordingExtensionController();
    v8 = objc_allocWithZone(v7);
    v9 = sub_1004310E4(v2, v6, &off_100630430);
    v10 = &off_100630448;
  }

  else
  {
    v7 = type metadata accessor for CallRecordingLaunchService();
    v11 = objc_allocWithZone(v7);
    v9 = sub_1003D19F4(a1);
    v10 = &off_10062D548;
  }

  v25[3] = v7;
  v25[4] = v10;
  v25[0] = v9;
  type metadata accessor for DisclosureController();
  swift_allocObject();
  v12 = sub_1003A648C();
  v13 = objc_allocWithZone(type metadata accessor for RecordingProvider());
  v14 = a1;

  v15 = sub_100403D00(v14);
  sub_100009AB0(v25, v24);
  type metadata accessor for DisclosureDataSource();
  v16 = v14;
  v17 = v15;
  v18 = a2;
  sub_1002E5AB4();
  v20 = v19;
  v21 = v5;
  v22 = sub_1003E953C(v16, v12, v17, v24, v20, v21, v18);

  sub_100009B7C(v25);
  return v22;
}

void sub_1003E3C9C()
{
  v3 = v0;
  sub_10000691C();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_10003DC14(v9);
  v10 = sub_10000F3CC();
  v11(v10);
  v12 = v2;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100007A40();
  v14(v13);
  if ((v2 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    sub_1000080FC();
LABEL_11:
    v19 = type metadata accessor for Logger();
    sub_1000075F0(v19, qword_1006BA640);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v21))
    {
      v22 = sub_100006DC4();
      sub_100018630(v22);
      sub_10000F9C8(&_mh_execute_header, v23, v21, "Recording not allowed because disclosure cannot be heard on the remote side.");
      sub_100005F64();
    }

    v24 = [objc_opt_self() sharedInstance];
    [v24 disconnectCall:v4 withReason:50];

    *(v3 + 200) = 1;
    return;
  }

  if ([v0 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_1000099A4(v28, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v4 = v25;
    v15 = [v25 isUnderlyingLinksConnected];
    *(v0 + 200) = v15;
    v16 = *(v0 + 208);
    if (!v16 || (v15 & 1) != 0 || (v17 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, swift_beginAccess(), v16[v17] != 3))
    {

      return;
    }

    v18 = qword_1006A0B40;
    v1 = v16;
    if (v18 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }
}

void sub_1003E3F4C(void *a1, void *a2, _UNKNOWN **a3, void *a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a4[2];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if (qword_1006A0B40 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA640);
  v19 = a1;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v19;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v20;
    *v24 = v19;
    v24[1] = v20;
    v25 = v19;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requested to STOP recording using request %@ for call %@", v23, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v27 = a4[26];
  if (v27)
  {
    v28 = v27;
    v29 = sub_10029F65C(a3);
    v30 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v30);

    v31 = *sub_100009B14(a4 + 4, a4[7]);
    sub_1003A7160();
    sub_1003E7138(v29, v28);

    a5[2](a5, 0);
  }

  else
  {
    v32 = v19;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "Cannot stop recording using %@ because no session exists", v35, 0xCu);
      sub_1000099A4(v36, &unk_1006A2630, &qword_10057CB40);
    }

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    v41 = objc_allocWithZone(NSError);
    v42 = sub_100323698(v38, v40, 3, 0);
    v43 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v43);
  }

  _Block_release(a5);
}

void sub_1003E4474(void *a1, void *a2, _UNKNOWN **a3, void *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a4[2];
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    if (qword_1006A0B40 == -1)
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
  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA640);
  v17 = a1;
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v17;
    v22[1] = v18;
    v23 = v17;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Requested to STOP recording using request %@ for call %@", v21, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v25 = a4[26];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10029F65C(a3);
    v28 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v28);

    v29 = *sub_100009B14(a4 + 4, a4[7]);
    sub_1003A7160();
    sub_1003E7138(v27, v26);
  }

  else
  {
    v30 = v17;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Cannot stop recording using %@ because no session exists", v33, 0xCu);
      sub_1000099A4(v34, &unk_1006A2630, &qword_10057CB40);
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = objc_allocWithZone(NSError);
  }
}

void sub_1003E4938(void *a1, void *a2, _UNKNOWN **a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v6[2];
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v45 = a5;
    a5 = a4;
    if (qword_1006A0B40 == -1)
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
  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA640);
  v21 = a1;
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v21;
    v26[1] = v22;
    v27 = v21;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Requested to STOP recording using request %@ for call %@", v25, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v29 = v6[26];
  if (v29)
  {
    v30 = v29;
    v31 = sub_10029F65C(a3);
    v32 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v32);

    v33 = *sub_100009B14(v6 + 4, v6[7]);
    sub_1003A7160();
    sub_1003E7138(v31, v30);

    (a5)(0);
  }

  else
  {
    v34 = v21;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "Cannot stop recording using %@ because no session exists", v37, 0xCu);
      sub_1000099A4(v38, &unk_1006A2630, &qword_10057CB40);
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    v43 = objc_allocWithZone(NSError);
    v44 = sub_100323698(v40, v42, 3, 0);
    a5();
  }
}

void sub_1003E4E44(void *a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for UUID();
  v126 = *(v8 - 8);
  v9 = *(v126 + 64);
  __chkstk_darwin(v8, v10);
  v125 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (&v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v19 = *(a3 + 16);
  *v17 = v19;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  _Block_copy(a4);
  _Block_copy(a4);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v19)
  {
    if (qword_1006A0B40 == -1)
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
  v21 = type metadata accessor for Logger();
  v22 = sub_10000AF9C(v21, qword_1006BA640);
  v23 = a1;
  v24 = a2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v124 = v22;
    v28 = a4;
    v29 = a3;
    v30 = v8;
    v31 = v18;
    v32 = v27;
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v23;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v24;
    *v33 = v23;
    v33[1] = v24;
    v34 = v23;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Requested to START recording using request %@ for call %@", v32, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    v18 = v31;
    v8 = v30;
    a3 = v29;
    a4 = v28;
  }

  if (*(a3 + 200) != 1)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Recording not allowed because disclosure cannot be heard on the remote side.", v48, 2u);
    }

    v49 = [objc_opt_self() sharedInstance];
    [v49 disconnectCall:v24 withReason:50];

    *(a3 + 200) = 1;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
    objc_allocWithZone(NSError);
    v53 = v50;
    v54 = v52;
    v55 = 5;
    goto LABEL_22;
  }

  v36 = [v24 recordingAllowedError];
  if (v36)
  {
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v129 = v41;
      *v40 = 136315138;
      *&v128[0] = v37;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v42 = String.init<A>(reflecting:)();
      v44 = sub_10002741C(v42, v43, &v129);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Recording not allowed with error %s", v40, 0xCu);
      sub_100009B7C(v41);
    }

    v45 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v45);

    goto LABEL_24;
  }

  swift_beginAccess();
  v56 = *sub_100009B14((a3 + 152), *(a3 + 176));
  sub_1002E6C84();
  if ((v57 & 1) == 0 || (sub_1002E7A38(), (v58 & 1) == 0))
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Disclosure files do not exist! Not allowing recording", v75, 2u);
    }

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
    objc_allocWithZone(NSError);
    v53 = v76;
    v54 = v78;
    v55 = 151;
    goto LABEL_22;
  }

  v59 = [v24 currentRecordingSession];
  if (v59)
  {

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v129 = v63;
      *v62 = 136315138;
      v64 = *(a3 + 208);
      v65 = v64;
      v66 = sub_100291584(v64);
      v68 = v67;

      v69 = sub_10002741C(v66, v68, &v129);

      *(v62 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v60, v61, "Recording not allowed because a recording is already in-progress %s", v62, 0xCu);
      sub_100009B7C(v63);
    }

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
    objc_allocWithZone(NSError);
    v53 = v70;
    v54 = v72;
    v55 = 100;
    goto LABEL_22;
  }

  v131 = &OBJC_PROTOCOL___CSDCallAudioInjecting;
  v80 = swift_dynamicCastObjCProtocolConditional();
  if (!v80)
  {
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;
    objc_allocWithZone(NSError);
    v53 = v94;
    v54 = v96;
    v55 = 15;
LABEL_22:
    v79 = sub_100323698(v53, v54, v55, 0);
    v45 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v45);

LABEL_23:

    goto LABEL_24;
  }

  v122 = v80;
  v123 = v18;
  v81 = *(a3 + 136);
  v82 = *(a3 + 144);
  sub_100009B14((a3 + 112), v81);
  v124 = *(v82 + 24);
  v83 = v24;
  if ((v124(v81, v82) & 1) == 0)
  {
    v97 = v83;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Recording not allowed because notes is not installed", v100, 2u);
    }

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
    v104 = objc_allocWithZone(NSError);
    v79 = sub_100323698(v101, v103, 12, 0);
    v45 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v45);

    goto LABEL_23;
  }

  v84 = objc_allocWithZone(type metadata accessor for AudioCallRecordingSession());
  v85 = v23;
  v86 = v83;
  v87 = v122;
  sub_10029DD3C();
  v88 = *(a3 + 208);
  *(a3 + 208) = v89;

  v90 = *(a3 + 208);
  v91 = v86;
  if (v90)
  {
    v92 = v90;
    sub_10029E2DC();
    v90 = v93;
  }

  v105 = v123;
  [v87 setCurrentRecordingSession:v90];

  v106 = swift_allocObject();
  v106[2] = a3;
  v106[3] = v87;
  v106[4] = sub_1002B6730;
  v106[5] = v105;
  v45 = v86;

  if (TUCaptionsLoggingEnabled())
  {
    v107 = Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = sub_10031E958(0xD00000000000001BLL, 0x8000000100574670);
    v130 = &type metadata for String;
    *&v129 = v108;
    *(&v129 + 1) = v109;
    sub_10003EBF0(&v129, v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v107;
    sub_100040430();

    v110 = v127;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = sub_10031E958(0xD000000000000021, 0x8000000100574690);
    v130 = &type metadata for String;
    *&v129 = v111;
    *(&v129 + 1) = v112;
    sub_10003EBF0(&v129, v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v110;
    sub_100040430();

    v113 = v127;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = sub_10031E958(0xD00000000000001DLL, 0x80000001005746C0);
    v130 = &type metadata for String;
    *&v129 = v114;
    *(&v129 + 1) = v115;
    sub_10003EBF0(&v129, v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v113;
    sub_100040430();

    v116 = v127;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = sub_10031E958(0x656C776F6E6B6341, 0xEB00000000656764);
    v130 = &type metadata for String;
    *&v129 = v117;
    *(&v129 + 1) = v118;
    sub_10003EBF0(&v129, v128);
    swift_isUniquelyReferenced_nonNull_native();
    v127 = v116;
    sub_100040430();

    v124 = v127;
    sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
    v119 = static IMUserNotificationCenter.shared.getter();
    v120 = v125;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v126 + 8))(v120, v8);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = swift_allocObject();
    v121[2] = a3;
    v121[3] = sub_1003E9360;
    v121[4] = v106;

    IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
  }

  else
  {
    _Block_copy(a4);
    sub_1003E6890(a3, v87, a4);
  }

LABEL_24:

  _Block_release(a4);
  _Block_release(a4);
}

void sub_1003E5BE4(void *a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v118 = a4;
  v119 = a3;
  v8 = type metadata accessor for UUID();
  v117 = *(v8 - 8);
  v9 = *(v117 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = (&v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + 16);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if (v19)
  {
    if (qword_1006A0B40 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA640);
  v22 = a1;
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412546;
    *(v26 + 4) = v22;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v22;
    v27[1] = v23;
    v28 = v22;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "Requested to START recording using request %@ for call %@", v26, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  if ((*(v5 + 200) & 1) == 0)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Recording not allowed because disclosure cannot be heard on the remote side.", v42, 2u);
    }

    v43 = [objc_opt_self() sharedInstance];
    [v43 disconnectCall:v23 withReason:50];

    *(v5 + 200) = 1;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    objc_allocWithZone(NSError);
    v47 = v44;
    v48 = v46;
    v49 = 5;
    goto LABEL_22;
  }

  v30 = [v23 recordingAllowedError];
  if (v30)
  {
    v31 = v30;
    v32 = v30;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v122 = v36;
      *v35 = 136315138;
      *&v121[0] = v32;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v37 = String.init<A>(reflecting:)();
      v39 = sub_10002741C(v37, v38, &v122);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Recording not allowed with error %s", v35, 0xCu);
      sub_100009B7C(v36);
    }

    v119(v31);
    goto LABEL_23;
  }

  swift_beginAccess();
  v50 = *sub_100009B14((v5 + 152), *(v5 + 176));
  sub_1002E6C84();
  if ((v51 & 1) == 0 || (sub_1002E7A38(), (v52 & 1) == 0))
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Disclosure files do not exist! Not allowing recording", v69, 2u);
    }

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
    objc_allocWithZone(NSError);
    v47 = v70;
    v48 = v72;
    v49 = 151;
    goto LABEL_22;
  }

  v53 = [v23 currentRecordingSession];
  if (v53)
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v122 = v57;
      *v56 = 136315138;
      v58 = *(v5 + 208);
      v59 = v58;
      v60 = sub_100291584(v58);
      v62 = v61;

      v63 = sub_10002741C(v60, v62, &v122);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "Recording not allowed because a recording is already in-progress %s", v56, 0xCu);
      sub_100009B7C(v57);
    }

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    objc_allocWithZone(NSError);
    v47 = v64;
    v48 = v66;
    v49 = 100;
    goto LABEL_22;
  }

  v124 = &OBJC_PROTOCOL___CSDCallAudioInjecting;
  v73 = swift_dynamicCastObjCProtocolConditional();
  if (!v73)
  {
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
    objc_allocWithZone(NSError);
    v47 = v87;
    v48 = v89;
    v49 = 15;
LABEL_22:
    v32 = sub_100323698(v47, v48, v49, 0);
    v119(v32);
    goto LABEL_23;
  }

  v115 = v73;
  v74 = *(v5 + 136);
  v75 = *(v5 + 144);
  sub_100009B14((v5 + 112), v74);
  v116 = *(v75 + 24);
  v76 = v23;
  if (v116(v74, v75))
  {
    v77 = objc_allocWithZone(type metadata accessor for AudioCallRecordingSession());
    v78 = v22;
    v79 = v76;
    v80 = v115;
    sub_10029DD3C();
    v81 = *(v5 + 208);
    *(v5 + 208) = v82;

    v83 = *(v5 + 208);
    v84 = v79;
    if (v83)
    {
      v85 = v83;
      sub_10029E2DC();
      v83 = v86;
    }

    [v80 setCurrentRecordingSession:v83];

    v98 = swift_allocObject();
    v98[2] = v5;
    v98[3] = v80;
    v100 = v118;
    v99 = v119;
    v98[4] = v119;
    v98[5] = v100;
    v32 = v79;

    if (TUCaptionsLoggingEnabled())
    {
      v101 = Dictionary.init(dictionaryLiteral:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = sub_10031E958(0xD00000000000001BLL, 0x8000000100574670);
      v123 = &type metadata for String;
      *&v122 = v102;
      *(&v122 + 1) = v103;
      sub_10003EBF0(&v122, v121);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v101;
      sub_100040430();

      v104 = v120;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = sub_10031E958(0xD000000000000021, 0x8000000100574690);
      v123 = &type metadata for String;
      *&v122 = v105;
      *(&v122 + 1) = v106;
      sub_10003EBF0(&v122, v121);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v104;
      sub_100040430();

      v107 = v120;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = sub_10031E958(0xD00000000000001DLL, 0x80000001005746C0);
      v123 = &type metadata for String;
      *&v122 = v108;
      *(&v122 + 1) = v109;
      sub_10003EBF0(&v122, v121);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v107;
      sub_100040430();

      v110 = v120;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = sub_10031E958(0x656C776F6E6B6341, 0xEB00000000656764);
      v123 = &type metadata for String;
      *&v122 = v111;
      *(&v122 + 1) = v112;
      sub_10003EBF0(&v122, v121);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v110;
      sub_100040430();

      sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
      v113 = static IMUserNotificationCenter.shared.getter();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v117 + 8))(v12, v8);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = swift_allocObject();
      v114[2] = v5;
      v114[3] = sub_1003E9B10;
      v114[4] = v98;

      IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
    }

    else
    {
      sub_1003E6AA0(v5, v80, v99);
    }
  }

  else
  {
    v90 = v76;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Recording not allowed because notes is not installed", v93, 2u);
    }

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;
    v97 = objc_allocWithZone(NSError);
    v32 = sub_100323698(v94, v96, 12, 0);
    (v119)();
  }

LABEL_23:
}

void sub_1003E6890(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = String._bridgeToObjectiveC()();
  sub_10022AF9C(v6);

  v7 = a1[26];
  if (v7)
  {
    v8 = v7;
    sub_10029EE8C();
    v9 = *sub_100009B14(a1 + 9, a1[12]);
    sub_100403DEC(v8);
    v10 = *sub_100009B14(a1 + 4, a1[7]);
    sub_1003A6B10(a2);
    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1003E6AA0(void *a1, void *a2, void (*a3)(void))
{
  v6 = String._bridgeToObjectiveC()();
  sub_10022AF9C(v6);

  v7 = a1[26];
  if (v7)
  {
    v10 = v7;
    sub_10029EE8C();
    v8 = *sub_100009B14(a1 + 9, a1[12]);
    sub_100403DEC(v10);
    v9 = *sub_100009B14(a1 + 4, a1[7]);
    sub_1003A6B10(a2);
    a3(0);
  }
}

uint64_t sub_1003E6CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a3;
  v21[4] = a4;
  aBlock[4] = sub_1003E93C0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E2C8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v9 + 8))(v13, v8);
  (*(v15 + 8))(v19, v14);
}

uint64_t sub_1003E6F54(uint64_t a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA640);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "User chose to continue with transcription logging enabled", v6, 2u);
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA640);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "User asked to disable transcript logging", v10, 2u);
    }

    v4 = [objc_opt_self() tu_defaults];
    [v4 setBool:0 forKey:TUCaptionsLoggingEnabledKey];
  }

  return a2();
}

void sub_1003E7138(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    sub_1003E7180(v6, a2);
    --v4;
  }

  while (!v2);
}

void sub_1003E7180(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = *sub_100009B14(v2 + 4, v2[7]);
        sub_1003A6B58(v7);
      }

      else
      {
        sub_10029FF3C();
        swift_allocError();
        swift_willThrow();
      }

      break;
    case 2:
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 setCurrentRecordingSession:0];
      }

      v11 = v2[26];
      v2[26] = 0;

      break;
    case 3:
      v5 = *sub_100009B14(v2 + 9, v2[12]);
      sub_100404438();
      break;
    case 4:
      return;
    default:
      v4 = *sub_100009B14(v2 + 9, v2[12]);
      sub_1004065CC(a2);
      break;
  }
}

uint64_t sub_1003E72A8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 32));
  sub_100009B7C((v0 + 72));
  sub_100009B7C((v0 + 112));
  sub_100009B7C((v0 + 152));

  return v0;
}

uint64_t sub_1003E7300()
{
  sub_1003E72A8();

  return _swift_deallocClassInstance(v0, 216, 7);
}

void sub_1003E7358()
{
  v2 = sub_10000C264();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000AA68(v7, v31);
  v8 = sub_1000150CC();
  v9(v8);
  v10 = v1;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100010218();
  v12(v11);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA640);
  sub_10002F6D0();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (sub_10000689C(v15))
  {
    v16 = sub_100006DC4();
    sub_100017D04(v16);
    sub_10000A154();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    sub_100008AE8();
  }

  v22 = v0[26];
  if (v22 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v24 = Strong;
    v25 = v22;
    sub_10029F004();
    v30 = *sub_100009B14(v0 + 4, v0[7]);
    sub_1003A6B64(v24);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v26))
    {
      v27 = sub_100006DC4();
      sub_10001AC5C(v27);
      sub_100017380(&_mh_execute_header, v28, v29, "recurring disclosure timer triggered, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E757C()
{
  v2 = sub_10000C264();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000AA68(v7, v30);
  v8 = sub_1000150CC();
  v9(v8);
  v10 = v1;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100010218();
  v12(v11);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA640);
  sub_10002F6D0();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (sub_10000689C(v15))
  {
    v16 = sub_100006DC4();
    sub_100017D04(v16);
    sub_10000A154();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    sub_100008AE8();
  }

  v22 = v0[26];
  if (v22)
  {
    v23 = v22;
    v24 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v24);

    sub_10029EF48();
    v29 = *sub_100009B14(v0 + 9, v0[12]);
    sub_100404928();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v25))
    {
      v26 = sub_100006DC4();
      sub_10001AC5C(v26);
      sub_100017380(&_mh_execute_header, v27, v28, "Start disclosure finished, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E77A8()
{
  v2 = sub_10000C264();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000AA68(v7, v29);
  v8 = sub_1000150CC();
  v9(v8);
  v10 = v1;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100010218();
  v12(v11);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA640);
  sub_10002F6D0();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (sub_10000689C(v15))
  {
    v16 = sub_100006DC4();
    sub_100017D04(v16);
    sub_10000A154();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    sub_100008AE8();
  }

  v22 = v0[26];
  if (v22)
  {
    v23 = v22;
    sub_1003E9B14();
    sub_10029F0E0();
    v28 = *sub_100009B14(v0 + 4, v0[7]);
    sub_1003A6C64(*(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount) != 0);
  }

  else
  {
    v1 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v24))
    {
      v25 = sub_100006DC4();
      sub_10001AC5C(v25);
      sub_100017380(&_mh_execute_header, v26, v27, "recurring disclosure finished, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E79C0()
{
  v2 = sub_10000C264();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000AA68(v7, v26);
  v8 = sub_1000150CC();
  v9(v8);
  v10 = v1;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100010218();
  v12(v11);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA640);
  sub_1003E9B14();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (sub_10000689C(v15))
  {
    v16 = sub_100006DC4();
    sub_10000D6E8(v16);
    sub_10000C1F8();
    sub_10000BAC8(v17, v18, v19, v20);
    sub_100006868();
  }

  v21 = *(v0 + 208);
  if (v21)
  {
    v22 = v21;
    sub_10029FB74();

    if (*(v0 + 208))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        [Strong setCurrentRecordingSession:0];
      }
    }
  }

  v25 = *(v0 + 208);
  *(v0 + 208) = 0;
}

void sub_1003E7BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v57 = a3;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UUID();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  sub_100007FDC();
  v30 = v29 - v28;
  v31 = *(v4 + 16);
  *(v29 - v28) = v31;
  (*(v24 + 104))(v29 - v28, enum case for DispatchPredicate.onQueue(_:), v21);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v30, v21);
  if (v31)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v33 = type metadata accessor for Logger();
  sub_10000AF9C(v33, qword_1006BA640);
  sub_1003E9B14();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v35))
  {
    *sub_100006DC4() = 0;
    sub_100035E78(&_mh_execute_header, v36, v37, "Recording updated");
    sub_100005F40();
  }

  v38 = *(v4 + 208);
  if (v38)
  {
    sub_1002A5F90(a2, v10);
    if (sub_100015468(v10, 1, v11) == 1)
    {
      v39 = v38;
      sub_1000099A4(v10, &unk_1006A3DD0, &unk_10057C9D0);
      v40 = v57;
      v41 = v57;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = sub_100005274();
        v45 = sub_100005E84();
        v58 = v45;
        *v44 = 136315138;
        v46 = sub_1002915EC(v40);
        v48 = sub_10002741C(v46, v47, &v58);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "No UUID returned when starting recording! error %s", v44, 0xCu);
        sub_100009B7C(v45);
        sub_100005F40();
        sub_100005F40();
      }

      v49 = sub_10029F65C(1);
      sub_1003E7138(v49, v39);
    }

    else
    {
      (*(v14 + 32))(v20, v10, v11);
      v55 = v38;
      sub_10029F3E4();

      (*(v14 + 8))(v20, v11);
    }
  }

  else
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v51))
    {
      v52 = sub_100006DC4();
      sub_100008944(v52);
      sub_100008A90(&_mh_execute_header, v53, v54, "No recording session active, but got callback recordingUpdated! This should not be possible");
      sub_100005F40();
    }
  }
}

void sub_1003E801C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v59 - v8;
  v10 = type metadata accessor for UUID();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v30 = v3[2];
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if (v30)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v32 = type metadata accessor for Logger();
  sub_10000AF9C(v32, qword_1006BA640);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v34))
  {
    *sub_100006DC4() = 0;
    sub_100035E78(&_mh_execute_header, v35, v36, "Recording started");
    sub_100005F40();
  }

  v37 = v3[26];
  if (v37)
  {
    sub_1002A5F90(a1, v9);
    if (sub_100015468(v9, 1, v10) == 1)
    {
      v38 = v37;
      sub_1000099A4(v9, &unk_1006A3DD0, &unk_10057C9D0);
      v39 = v60;
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = sub_100005274();
        v43 = sub_100005E84();
        v61[0] = v43;
        *v42 = 136315138;
        v44 = sub_1002910C8(v39);
        v46 = sub_10002741C(v44, v45, v61);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "No UUID returned when starting recording! error %s", v42, 0xCu);
        sub_100009B7C(v43);
        sub_100005F40();
        sub_100005F40();
      }

      v47 = sub_10029F65C(1);
      sub_1003E7138(v47, v38);
    }

    else
    {
      v53 = v13;
      (*(v13 + 32))(v19, v9, v10);
      v54 = v37;
      sub_10029F1A4();
      sub_100009AB0((v3 + 14), v61);
      v55 = v62;
      v56 = v63;
      sub_100009B14(v61, v62);
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v56 + 8))(Strong, v54, v55, v56);

      sub_100009B7C(v61);
      v58 = *sub_100009B14(v3 + 4, v3[7]);
      sub_1003A6C64(0);

      (*(v53 + 8))(v19, v10);
    }
  }

  else
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v49))
    {
      v50 = sub_100006DC4();
      sub_100008944(v50);
      sub_100008A90(&_mh_execute_header, v51, v52, "No recording session active, but got callback recordingDidStart! THis should not be possible");
      sub_100005F40();
    }
  }
}

void sub_1003E856C()
{
  v2 = sub_10000C264();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_10000AA68(v9, v34[0]);
  v10 = sub_1000150CC();
  v11(v10);
  v12 = v1;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100010218();
  v14(v13);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA640);
  sub_1003E9B14();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (sub_10000689C(v17))
  {
    v18 = sub_100006DC4();
    sub_10000D6E8(v18);
    sub_10000C1F8();
    sub_10000BAC8(v19, v20, v21, v22);
    sub_100006868();
  }

  v23 = *(v0 + 208);
  if (v23)
  {
    v24 = v23;
    sub_10002F6D0();
    v25 = sub_10029FAAC();
    sub_1003E7180(v25, v5);
    sub_100009AB0(v0 + 112, v34);
    v31 = v35;
    v32 = v36;
    sub_100009B14(v34, v35);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v32 + 16))(Strong, v5, v31, v32);

    sub_100009B7C(v34);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v27))
    {
      v28 = sub_100006DC4();
      sub_100008944(v28);
      sub_100008A90(&_mh_execute_header, v29, v30, "Recording ended callback, but we aren't tracking a recording session");
      sub_100005F40();
    }
  }
}

uint64_t sub_1003E87D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  aBlock[4] = sub_1003E9358;
  v18 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E1B0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

uint64_t sub_1003E8A28(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureDataSource();
  v3 = *(a1 + 16);
  v4 = *(a1 + 192);
  v5 = v3;
  sub_1002E5AB4();
  v9 = v2;
  v10 = &off_100625520;
  *&v8 = v6;
  swift_beginAccess();
  sub_100009B7C((a1 + 152));
  sub_10002F0C8(&v8, a1 + 152);
  return swift_endAccess();
}

void sub_1003E8B00(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  sub_10000691C();
  v8 = type metadata accessor for DispatchPredicate();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = *(a3 + 16);
  *(v16 - v15) = v18;
  (*(v11 + 104))(v16 - v15, enum case for DispatchPredicate.onQueue(_:), v8);
  _Block_copy(a4);
  _Block_copy(a4);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v17, v8);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (![*(a3 + 24) callRecordingEnabled])
  {
    if (qword_1006A0B40 == -1)
    {
LABEL_6:
      v23 = type metadata accessor for Logger();
      sub_10000AF9C(v23, qword_1006BA640);
      v24 = v4;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = sub_100005274();
        v28 = sub_100005E84();
        v61 = v28;
        *v27 = 136315138;
        sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
        v29 = v24;
        v30 = String.init<A>(reflecting:)();
        v32 = sub_10002741C(v30, v31, &v61);

        *(v27 + 4) = v32;
        sub_10000A154();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        sub_100009B7C(v28);
        sub_100006868();
        sub_100008AE8();
      }

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
      v41 = objc_allocWithZone(NSError);
      v42 = sub_100323698(v38, v40, 2, 0);
      v43 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v43);

      goto LABEL_12;
    }

LABEL_19:
    sub_1000080FC();
    goto LABEL_6;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    _Block_copy(a4);
    v22 = v4;
    sub_1003E4E44(v21, a2, a3, a4);
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    v45 = v44;
    _Block_copy(a4);
    v22 = v4;
    sub_1003E3F4C(v45, a2, 0, a3, a4);
    goto LABEL_11;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v46 = type metadata accessor for Logger();
  sub_10000AF9C(v46, qword_1006BA640);
  v47 = v4;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_100005274();
    v51 = sub_100005E84();
    v61 = v51;
    *v50 = 136315138;
    sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
    v52 = v47;
    v53 = String.init<A>(reflecting:)();
    v55 = sub_10002741C(v53, v54, &v61);

    *(v50 + 4) = v55;
    sub_10000A154();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    sub_100009B7C(v51);
    sub_100006868();
    sub_100008AE8();
  }

  a4[2](a4, 0);
LABEL_12:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1003E8F60(void *a1, void *a2, void (*a3)(id), void (*a4)(void))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = *(v4 + 16);
  *(v17 - v16) = v19;
  (*(v12 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v9);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v18, v9);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (![*(v4 + 24) callRecordingEnabled])
  {
    if (qword_1006A0B40 == -1)
    {
LABEL_6:
      v24 = type metadata accessor for Logger();
      sub_1000075F0(v24, qword_1006BA640);
      v25 = a1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = sub_100005274();
        v29 = sub_100005E84();
        v55 = v29;
        *v28 = 136315138;
        sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
        v30 = v25;
        v31 = String.init<A>(reflecting:)();
        v33 = sub_10002741C(v31, v32, &v55);

        *(v28 + 4) = v33;
        sub_100005FCC(&_mh_execute_header, v34, v35, "Call recording feature flag is not enabled, dropping %s");
        sub_100009B7C(v29);
        sub_100005F64();
        sub_100006868();
      }

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      v39 = objc_allocWithZone(NSError);
      v23 = sub_100323698(v36, v38, 2, 0);
      (a3)(v23, v40);
      goto LABEL_9;
    }

LABEL_18:
    sub_1000080FC();
    goto LABEL_6;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = a1;
    sub_1003E5BE4(v22, a2, a3, a4);
LABEL_9:

    return;
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    v23 = a1;
    sub_1003E4938(v42, a2, 0, a3, a4);
    goto LABEL_9;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v43 = type metadata accessor for Logger();
  sub_1000075F0(v43, qword_1006BA640);
  v44 = a1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = sub_100005274();
    v48 = sub_100005E84();
    v55 = v48;
    *v47 = 136315138;
    sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
    v49 = v44;
    v50 = String.init<A>(reflecting:)();
    v52 = sub_10002741C(v50, v51, &v55);

    *(v47 + 4) = v52;
    sub_100005FCC(&_mh_execute_header, v53, v54, "Unhandled call recording request %s");
    sub_100009B7C(v48);
    sub_100005F64();
    sub_100006868();
  }

  a3(0);
}

uint64_t sub_1003E9378()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003E93CC(uint64_t a1, void *a2, uint64_t a3)
{
  v11[3] = type metadata accessor for AudioCallRecordingController();
  v11[4] = &off_10062E168;
  v11[0] = a1;
  sub_100009AB0(v11, v10);
  v6 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();

  sub_1003E9A9C(v10, v6 + a3, &qword_1006AAF50, &unk_100584CC0);
  swift_endAccess();
  v7 = *(a3 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue);
  *(a3 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue) = a2;
  v8 = a2;

  return sub_100009B7C(v11);
}

uint64_t sub_1003E948C(uint64_t a1, void *a2, uint64_t a3)
{
  v10[3] = type metadata accessor for AudioCallRecordingController();
  v10[4] = &off_10062E188;
  v10[0] = a1;
  sub_100009AB0(v10, v9);
  swift_beginAccess();

  sub_1003E9A9C(v9, a3 + 16, &qword_1006AA250, &qword_100583C78);
  swift_endAccess();
  v6 = *(a3 + 56);
  *(a3 + 56) = a2;
  v7 = a2;

  return sub_100009B7C(v10);
}

uint64_t sub_1003E953C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v56 = a4;
  v57 = a7;
  v54 = a1;
  v55 = a6;
  v10 = type metadata accessor for DisclosureController();
  v74[3] = v10;
  v74[4] = &off_10062B8D8;
  v74[0] = a2;
  v11 = type metadata accessor for RecordingProvider();
  v72 = v11;
  v73 = &off_10062F1B0;
  v71[0] = a3;
  v12 = type metadata accessor for DisclosureDataSource();
  v69 = v12;
  v70 = &off_100625520;
  v68[0] = a5;
  v13 = type metadata accessor for AudioCallRecordingController();
  v14 = swift_allocObject();
  v15 = sub_10001BDB8(v74, v10);
  v16 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v15, v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v72;
  v21 = sub_10001BDB8(v71, v72);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21, v21);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v69;
  v27 = sub_10001BDB8(v68, v69);
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27, v27);
  v30 = (&v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v18;
  v33 = *v24;
  v34 = *v30;
  v66 = v10;
  v67 = &off_10062B8D8;
  v65[0] = v32;
  v63 = v11;
  v64 = &off_10062F1B0;
  v62[0] = v33;
  v61[3] = v12;
  v61[4] = &off_100625520;
  v61[0] = v34;
  *(v14 + 200) = 1;
  *(v14 + 208) = 0;
  v36 = v54;
  v35 = v55;
  *(v14 + 16) = v54;
  *(v14 + 24) = v35;
  sub_100009AB0(v65, v14 + 32);
  sub_100009AB0(v62, v14 + 72);
  v37 = v56;
  sub_100009AB0(v56, v14 + 112);
  sub_100009AB0(v61, v14 + 152);
  v38 = v57;
  *(v14 + 192) = v57;
  v39 = sub_100009B14(v62, v63);
  v59 = v13;
  v60 = &off_10062E168;
  v58[0] = v14;
  v40 = *v39;
  v41 = *sub_100009B14(v58, v13);
  v42 = v36;
  v43 = v38;

  sub_1003E93CC(v41, v42, v40);
  sub_100009B7C(v58);
  v44 = sub_100009B14(v65, v66);
  v59 = v13;
  v60 = &off_10062E188;
  v58[0] = v14;
  v45 = *v44;
  v46 = *sub_100009B14(v58, v13);

  sub_1003E948C(v46, v42, v45);
  sub_100009B7C(v58);
  v47 = objc_opt_self();
  v48 = [v47 defaultCenter];
  [v48 addObserver:v14 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v49 = [v47 defaultCenter];
  [v49 addObserver:v14 selector:"handleRecordingStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v50 = [v47 defaultCenter];
  [v50 addObserver:v14 selector:"handleRecordingStatusChangedWithNotification:" name:TUCallRecordingAvailabilityChangedNotification object:0];

  v51 = [v47 defaultCenter];
  [v51 addObserver:v14 selector:"handleMediaTokensChangedWithNotification:" name:TUCallMediaTokensChangedNotification object:0];

  v52 = [v47 defaultCenter];
  [v52 addObserver:v14 selector:"handleCallUnderlyingLinksConnectionChangedWithNotification:" name:@"CSDCallUnderlyingLinksConnectionChangedNotification" object:0];

  sub_100009B7C(v37);
  sub_100009B7C(v61);
  sub_100009B7C(v62);
  sub_100009B7C(v65);
  sub_100009B7C(v68);
  sub_100009B7C(v71);
  sub_100009B7C(v74);
  return v14;
}

uint64_t sub_1003E9A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1003E9B20(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}