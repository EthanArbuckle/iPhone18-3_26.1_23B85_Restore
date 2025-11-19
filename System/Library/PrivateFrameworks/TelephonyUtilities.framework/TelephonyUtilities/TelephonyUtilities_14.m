uint64_t sub_1002D3748(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    result = v26;
    v2 = v27;
    v3 = v28;
    v4 = v29;
    v5 = v30;
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

  v9 = _swiftEmptyArrayStorage;
  v25 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_100022DDC();
      return v9;
    }

    while (1)
    {
      v15 = [v14 handle];
      v16 = [v15 value];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v9[2];
        sub_100017840();
        v9 = v23;
      }

      v20 = v9[2];
      if (v20 >= v9[3] >> 1)
      {
        sub_100017840();
        v9 = v24;
      }

      v9[2] = v20 + 1;
      v21 = &v9[2 * v20];
      v21[4] = v17;
      v21[5] = v19;
      v4 = v12;
      v5 = v13;
      result = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v14 = v31;
        v12 = v4;
        v13 = v5;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_22;
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
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002D3A04(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100022DDC();
      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v15 = [v14 handles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      result = sub_100413AD4(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1002D3CA4(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v123 = *(v8 - 8);
  v9 = *(v123 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v122 = *(v19 - 8);
  v20 = *(v122 + 64);
  __chkstk_darwin(v19, v21);
  v120 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v121 = &v110 - v26;
  v119 = type metadata accessor for URL();
  v118 = *(v119 - 8);
  v27 = *(v118 + 64);
  __chkstk_darwin(v119, v28);
  v117 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v30 = a3;
  }

  else
  {
    v30 = [a2 link];
    if (!v30)
    {
      if (qword_1006A0B70 != -1)
      {
LABEL_51:
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000AF9C(v51, qword_1006BA6D0);
      v52 = a2;
      v126 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v126, v53))
      {
        v54 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v54 = 136315394;
        v55 = sub_10029121C(a2);
        v57 = sub_10002741C(v55, v56, aBlock);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2080;
        v58 = sub_100291230(0);
        v60 = sub_10002741C(v58, v59, aBlock);

        *(v54 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v126, v53, "Failed to determine conversation link for pending member notification with conversation %s and conversationLink %s", v54, 0x16u);
        swift_arrayDestroy();

        v50 = v126;
        goto LABEL_26;
      }

      v50 = v126;
LABEL_28:

      goto LABEL_26;
    }
  }

  v116 = v18;
  v125 = v30;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v32 = a1;
    v36 = *(a1 + 16);
    v37 = a3;
    if (v36)
    {
      v111 = v19;
      v112 = v14;
      v113 = v12;
      v114 = v13;
      v115 = v8;
      v38 = -1 << *(a1 + 32);
      a2 = (a1 + 56);
      v33 = ~v38;
      v39 = -v38;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v35 = v40 & *(a1 + 56);

      v34 = 0;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v31 = a3;
  if (!__CocoaSet.count.getter())
  {
LABEL_27:
    v50 = v125;
    goto LABEL_28;
  }

  v111 = v19;
  v112 = v14;
  v113 = v12;
  v114 = v13;
  v115 = v8;
  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  Set.Iterator.init(_cocoa:)();
  v32 = v132;
  a2 = v133;
  v33 = v134;
  v34 = v135;
  v35 = v136;
LABEL_12:
  v124 = v33;
  v41 = (v33 + 64) >> 6;
  v126 = v4;
  if ((v32 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v42 = __CocoaSet.Iterator.next()();
  if (v42 && (*&v130 = v42, sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr), swift_dynamicCast(), v43 = aBlock[0], v44 = v34, v45 = v35, aBlock[0]))
  {
    while (1)
    {
      v48 = *(&v4->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag);
      swift_unknownObjectRetain();
      v49 = sub_1002D4A78(v43, v48);
      swift_unknownObjectRelease();
      if (v49)
      {
        break;
      }

      v34 = v44;
      v35 = v45;
      v4 = v126;
      if (v32 < 0)
      {
        goto LABEL_13;
      }

LABEL_16:
      v46 = v34;
      v47 = v35;
      v44 = v34;
      if (!v35)
      {
        while (1)
        {
          v44 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v44 >= v41)
          {
            goto LABEL_24;
          }

          v47 = *(a2 + v44);
          ++v46;
          if (v47)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_20:
      v45 = (v47 - 1) & v47;
      v43 = *(*(v32 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v47)))));
      if (!v43)
      {
        goto LABEL_24;
      }
    }

    sub_100022DDC();

    v61 = [objc_opt_self() supportsConversations];
    v62 = v126;
    if ((v61 & 1) != 0 || [*(&v126->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags) greenTeaLinksEnabled])
    {
      v63 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v64 = String._bridgeToObjectiveC()();
      [v63 setCategoryIdentifier:v64];

      sub_10031E958(0xD000000000000017, 0x80000001005664A0);
      v65 = String._bridgeToObjectiveC()();

      [v63 setBody:v65];

      sub_100369588(v125);
      if (!v66)
      {
        sub_10031E958(0x454D495445434146, 0xED00004B4E494C5FLL);
      }

      v67 = v123;
      v68 = String._bridgeToObjectiveC()();

      [v63 setTitle:v68];

      [v63 setInterruptionLevel:2];
      v69 = sub_1002CECB8();
      sub_1004554A0(v69, v70, v63);
      v71 = [v125 pseudonym];
      if (!v71)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = String._bridgeToObjectiveC()();
      }

      [v63 setThreadIdentifier:v71];

      *&v130 = 0x796E6F6475657370;
      *(&v130 + 1) = 0xE90000000000006DLL;
      AnyHashable.init<A>(_:)();
      v72 = [v125 pseudonym];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v131 = &type metadata for String;
      *&v130 = v73;
      *(&v130 + 1) = v75;
      v76 = [v63 userInfo];
      v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003EBF0(&v130, v128);
      swift_isUniquelyReferenced_nonNull_native();
      v127 = v77;
      sub_100378C74(v128, aBlock);
      sub_100006780(aBlock);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v63 setUserInfo:isa];

      v79 = sub_1002CD1B0(v125);
      v80 = [v79 URL];

      v81 = v117;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v82);
      v84 = v83;
      (*(v118 + 8))(v81, v119);
      v85 = v63;
      [v63 setDefaultActionURL:v84];

      v86 = v120;
      static Calendar.current.getter();
      v87 = v112;
      v88 = v116;
      v89 = v114;
      (*(v112 + 104))(v116, enum case for Calendar.Component.hour(_:), v114);
      v90 = v113;
      Date.init()();
      v91 = v121;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v92 = *(v67 + 8);
      v93 = v90;
      v94 = v115;
      v92(v93, v115);
      (*(v87 + 8))(v88, v89);
      (*(v122 + 8))(v86, v111);
      if (sub_100015468(v91, 1, v94) == 1)
      {
        v95 = 0;
      }

      else
      {
        v95 = Date._bridgeToObjectiveC()().super.isa;
        v92(v91, v94);
      }

      [v85 setExpirationDate:v95];

      v96 = sub_1002CCF08(v125);
      v98 = v97;
      sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);

      v99 = v85;
      v100 = sub_10044F628(v96, v98, v99, 0);
      [v100 setDestinations:4];
      v101 = *(&v62->isa + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter);
      v102 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v103 = swift_allocObject();
      v103[2] = v102;
      v103[3] = v96;
      v103[4] = v98;
      v103[5] = v100;
      aBlock[4] = sub_1002DB64C;
      aBlock[5] = v103;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D51E8;
      aBlock[3] = &unk_100624E68;
      v104 = _Block_copy(aBlock);
      v105 = v100;

      [v101 getDeliveredNotificationsWithCompletionHandler:v104];
      _Block_release(v104);

      return;
    }

    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_10000AF9C(v106, qword_1006BA6D0);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Not posting pending member notification becaue Group FaceTime is not supported (GreenTea device or doesn't support multiway)", v109, 2u);
    }
  }

  else
  {
LABEL_24:
    sub_100022DDC();
  }

  v50 = v125;
LABEL_26:
}

BOOL sub_1002D4A78(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007BAC();
  __chkstk_darwin(v11, v12);
  v13 = [a1 dateInitiatedLetMeIn];
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 dateReceivedLetMeIn];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = *(v7 + 8);
  v19 = sub_100005ED0();
  v18(v19);
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000075F0(v20, qword_1006BA6D0);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_100007C08();
    v35 = v18;
    v25 = sub_10000777C();
    v36 = a2;
    v37 = sub_100005E84();
    v26 = v37;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10057D690;
    *(v27 + 56) = &type metadata for Double;
    *(v27 + 64) = &protocol witness table for Double;
    *(v27 + 32) = v17;
    v28 = v21;
    v29 = String.init(format:_:)();
    v31 = sub_10002741C(v29, v30, &v37);

    *(v24 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Time since LMI initiated for member %@ is %s seconds", v24, 0x16u);
    sub_100009A04(v25, &unk_1006A2630, &qword_10057CB40);
    v18 = v35;
    sub_100005F40();
    sub_100009B7C(v26);
    a2 = v36;
    sub_100005F40();
    sub_100005F40();
  }

  v32 = [a2 letMeInRequestNotificationTimeout];
  v33 = sub_100007764();
  v18(v33);
  return v17 < v32;
}

char *sub_1002D4D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v43 = result;
  v44 = v19;
  v45 = v15;
  v46 = v13;
  v47 = v14;
  v48 = v9;
  v49 = v8;
  result = sub_10000B6F4(a1);
  v21 = result;
  v22 = 0;
  v51 = a1 & 0xC000000000000001;
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  while (1)
  {
    if (v21 == v22)
    {
      [v50 setDestinations:{objc_msgSend(v50, "destinations") | 3}];
LABEL_17:
      v33 = v43;
      v34 = *&v43[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue];
      v35 = swift_allocObject();
      v36 = v50;
      *(v35 + 16) = v33;
      *(v35 + 24) = v36;
      aBlock[4] = sub_1002DB658;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100624EB8;
      v37 = _Block_copy(aBlock);
      v38 = v33;
      v39 = v36;
      v40 = v44;
      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_10000EDB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      v41 = v46;
      v42 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);
      (*(v48 + 8))(v41, v42);
      (*(v45 + 8))(v40, v47);
    }

    if (v51)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v23 + 16))
      {
        goto LABEL_20;
      }

      result = *(v24 + 8 * v22 + 32);
    }

    v25 = result;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v26 = [result request];
    v27 = [v26 identifier];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == a3 && v30 == a4)
    {

      goto LABEL_17;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v22;
    if (v32)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002D51E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100006AF0(0, &qword_1006A3C78, UNNotification_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_1002D526C(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E958(0xD000000000000015, 0x80000001005664E0);
  v8 = sub_1002D283C(a1);

  v9 = [objc_opt_self() faceTimeShowInCallUIURL];
  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v10);
    v9 = v11;
    (*(v3 + 8))(v7, v2);
  }

  [v8 setDefaultActionURL:v9];

  return v8;
}

void sub_1002D53F4()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v136 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v136);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007BAC();
  v133 = (v12 - v13);
  sub_100006838();
  __chkstk_darwin(v14, v15);
  sub_10000C0F8();
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v126 - v19;
  __chkstk_darwin(v18, v21);
  v135 = &v126 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = sub_100007FEC(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24, v29);
  sub_100007FDC();
  sub_10001C9C4();
  v30 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *v2 = v30;
  (*(v26 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v23);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v2, v23);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v134 = v8;
  sub_1002CC954(v5);
  v8 = &selRef_setWindowed_;
  if (v33)
  {
    if (qword_1006A0B70 == -1)
    {
LABEL_4:
      v34 = type metadata accessor for Logger();
      sub_1000075F0(v34, qword_1006BA6D0);
      v35 = v5;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = sub_100005274();
        v133 = sub_100005E84();
        v137 = v133;
        *v38 = 136315138;
        v39 = [v35 UUID];
        v40 = v135;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v41, v42);
        v43 = v5;
        v44 = v136;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v44;
        v5 = v43;
        v8 = &selRef_setWindowed_;
        (v134[1])(v40, v46);
        sub_100006B68();
        sub_100005EC4();

        *(v38 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Conversation UUID %s had a state change, and we determined that we should post an invite notification", v38, 0xCu);
        sub_100009B7C(v133);
        sub_100007CBC();
        sub_100005F40();
      }

      sub_1002CD2AC(v35);
      goto LABEL_35;
    }

LABEL_40:
    sub_100008288();
    swift_once();
    goto LABEL_4;
  }

  if ([v5 state] == 3)
  {
    v47 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
    sub_1000159D4();
    v49 = sub_1002CB670(v20, *(v3 + v48));
    if (v50)
    {
      v51 = v50;
      v132 = v49;
      swift_endAccess();
      v52 = v134 + 1;
      v134 = v134[1];
      (v134)(v20, v136);
      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000075F0(v53, qword_1006BA6D0);
      v54 = v5;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      v57 = os_log_type_enabled(v55, v56);
      v131 = v54;
      if (v57)
      {
        v58 = sub_100007C08();
        v128 = v56;
        v59 = v58;
        v129 = swift_slowAlloc();
        v137 = v129;
        *v59 = 136315394;
        v60 = [v54 UUID];
        v127 = v55;
        v61 = v60;
        v62 = v135;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v63, v64);
        v65 = v52;
        v66 = v5;
        v67 = v136;
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v130 = v48;
        v69 = v67;
        v5 = v66;
        v52 = v65;
        (v134)(v62, v69);
        sub_100006B68();
        sub_100005EC4();

        *(v59 + 4) = v68;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_10002741C(v132, v51, &v137);
        v70 = v127;
        _os_log_impl(&_mh_execute_header, v127, v128, "Removing invite notification for conversation UUID %s with notification identifier %s", v59, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40();
      }

      else
      {
      }

      v72 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v75 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v75)
      {
        v76 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v75(v132, v51);
        sub_1000051F8(v75);
      }

      v77 = [v131 UUID];
      v74 = v135;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08();
      sub_100383AF0(v74);
      v73 = v136;
      v71 = v134;
      (v134)(v74, v136);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v71 = v134[1];
      v72 = (v134 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73 = v136;
      (v71)(v20, v136);
      v74 = v135;
    }

    v78 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
    sub_1000159D4();
    v80 = sub_100025C60(v1, *(v3 + v79));
    swift_endAccess();
    v132 = v72;
    (v71)(v1, v73);
    v81 = v133;
    v134 = v71;
    if (v80)
    {

      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_1000075F0(v82, qword_1006BA6D0);
      v83 = v5;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = sub_100005274();
        v131 = sub_100005E84();
        v137 = v131;
        *v86 = 136315138;
        v87 = [v83 UUID];
        LODWORD(v130) = v85;
        v88 = v87;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v89, v90);
        v91 = v136;
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v134;
        (v134)(v135, v91);
        sub_100006B68();
        sub_100005EC4();
        v81 = v133;

        *(v86 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v84, v130, "Removing pending notification for conversation with uuid %s since we are joined into the conversation", v86, 0xCu);
        sub_100009B7C(v131);
        sub_100007CBC();
        v74 = v135;
        sub_100005F40();

        v93 = &selRef_prewarmMediaRequest_completion_;
      }

      else
      {

        v93 = &selRef_prewarmMediaRequest_completion_;
        v71 = v134;
        v91 = v136;
      }

      v94 = [v83 v93[145]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08();
      sub_100383BD0(v74, v95, v96, v97, v98, v99, v100, v101, v126, v127);
      v103 = v102;
      (v71)(v74, v91);
      swift_endAccess();
    }

    v104 = [v5 link];
    if (v104)
    {
      v105 = v104;
      v106 = sub_1002CCF08(v104);
      v108 = v107;
      v109 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v109)
      {
        v110 = v106;
        v111 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v109(v110, v108);
        sub_1000051F8(v109);
      }

      v71 = v134;
    }

    v112 = sub_100015430();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v113 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
    sub_1000159D4();
    v114 = sub_1002CB670(v81, *(v3 + v113));
    if (v115)
    {
      v116 = v114;
      v117 = v115;
      swift_endAccess();
      (v71)(v81, v136);
      v118 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v118)
      {
        v119 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v118(v116, v117);
        v71 = v134;
        sub_1000051F8(v118);
      }

      v120 = sub_100015430();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000BA08();
      sub_100383AF0(v74);
      (v71)(v74, v136);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      (v71)(v81, v136);
    }

    v8 = &selRef_setWindowed_;
  }

LABEL_35:
  if ([v5 v8[199]])
  {
    v121 = v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification;
    v122 = *(v3 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
    if (v122)
    {
      v123 = *(v121 + 8);

      v124 = sub_100022CB0();
      v122(v124);
      v125 = sub_100006B30();
      sub_1000051F8(v125);
    }
  }

  sub_100005EDC();
}

void sub_1002D5F24(int a1, id a2)
{
  if ([a2 state] == 1 && objc_msgSend(a2, "letMeInRequestState") == 3)
  {
    v4 = [a2 link];
    if (v4)
    {

      if (*(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen))
      {
        if (qword_1006A0B70 != -1)
        {
          sub_100008288();
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000075F0(v5, qword_1006BA6D0);
        oslog = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Not posting LMI approval notification because the conversation is currently showing on screen", v7, 2u);
          sub_100007CBC();
        }
      }

      else
      {
        v8 = sub_1002D526C(a2);
        sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
        v9 = sub_1002CCFB0(a2, 0);
        v11 = v10;
        v12 = v8;
        oslog = sub_10044F628(v9, v11, v12, 0);
        [oslog setDestinations:7];
        sub_1002CE7A4(oslog);
      }
    }
  }
}

void sub_1002D617C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for URL();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v84 = v13 - v12;
  v14 = type metadata accessor for UUID();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007BAC();
  v23 = (v21 - v22);
  v26 = __chkstk_darwin(v24, v25);
  v28 = v78 - v27;
  __chkstk_darwin(v26, v29);
  sub_10000C0F8();
  __chkstk_darwin(v30, v31);
  v33 = v78 - v32;
  if (([v4 hasJoined] & 1) == 0)
  {
    v83 = v14;
    v80 = v8;
    v81 = v5;
    v34 = sub_10000B91C();
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
    sub_1000159D4();
    v36 = sub_1002CB670(v33, *(v2 + v35));
    if (v37)
    {
      v38 = v37;
      v79 = v36;
      swift_endAccess();
      v39 = v83;
      v78[0] = *(v17 + 8);
      v78[1] = v17 + 8;
      (v78[0])(v33, v83);
      sub_1002CE2C4(v4);
      v41 = v40;
      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000AF9C(v42, qword_1006BA6D0);

      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      v46 = os_log_type_enabled(v44, v45);
      v82 = v43;
      if (v46)
      {
        v47 = sub_100007C08();
        v48 = sub_10000777C();
        v49 = sub_100005E84();
        v86 = v49;
        *v47 = 136315394;
        *(v47 + 4) = sub_10002741C(v79, v38, &v86);
        *(v47 + 12) = 2112;
        *(v47 + 14) = v43;
        *v48 = v43;
        v50 = v43;
        _os_log_impl(&_mh_execute_header, v44, v45, "Replacing notification id %s with content %@", v47, 0x16u);
        sub_100009A04(v48, &unk_1006A2630, &qword_10057CB40);
        v39 = v83;
        sub_100005F40();
        sub_100009B7C(v49);
        sub_100005F40();
        sub_100005F40();
      }

      v51 = v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace;
      v52 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace);
      if (v52)
      {
        v53 = *(v51 + 8);

        v52(v79, v38, v82);
        sub_1000051F8(v52);
      }

      v54 = sub_10000B91C();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
      sub_1000159D4();
      v56 = sub_1002CB670(v1, *(v2 + v55));
      if (v57)
      {
        v58 = v56;
        v59 = v57;
        swift_endAccess();
        (v78[0])(v1, v39);
        v60 = sub_1002CD140(v4, 0);
        v61 = [v60 URL];

        v62 = v84;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v63);
        v65 = v64;
        (*(v80 + 8))(v62, v81);
        v66 = v82;
        [v82 setDefaultActionURL:v65];

        v67 = *v51;
        if (*v51)
        {
          v68 = *(v51 + 8);

          v67(v58, v59, v66);
          v69 = sub_100006B30();
          sub_1000051F8(v69);
        }
      }

      else
      {
        swift_endAccess();

        (v78[0])(v1, v39);
      }
    }

    else
    {
      swift_endAccess();
      v70 = *(v17 + 8);
      v71 = v33;
      v72 = v83;
      v70(v71, v83);
      v73 = sub_10000B91C();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID;
      sub_1000159D4();
      v75 = sub_100025C60(v28, *(v2 + v74));
      swift_endAccess();
      v70(v28, v72);
      if (v75)
      {
        v76 = sub_10000B91C();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000BA08();
        v4;
        v77 = *(v2 + v74);
        swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v2 + v74);
        sub_100378EC8();
        *(v2 + v74) = v85;
        v70(v23, v72);
        swift_endAccess();
      }
    }
  }

  sub_100005EDC();
}

void sub_1002D67B8(int a1, id a2)
{
  v4 = [a2 link];
  if (v4)
  {
    v11 = v4;
    if (([a2 hasJoined] & 1) == 0 && objc_msgSend(a2, "isAnyOtherAccountDeviceActive"))
    {
      v5 = sub_1002CCF08(v11);
      v7 = v6;
      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v8)
      {
        v9 = v5;
        v10 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

        v8(v9, v7);
        sub_1000051F8(v8);
      }
    }
  }
}

void sub_1002D6920(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  sub_100007654();
  v13 = *(v2 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *v3 = v13;
  (*(v9 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v15 = (v9 + 8);
  v17 = sub_10000F2EC();
  v18(v17);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    sub_100008288();
    swift_once();
    goto LABEL_6;
  }

  v4 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  v15 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  if (([a2 hasJoined] & 1) == 0 && objc_msgSend(a2, "state") != 1 && (objc_msgSend(a2, "ignoreLMIRequests") & 1) == 0)
  {
    v26 = [a2 pendingMembers];
    sub_1000112D0();
    sub_100006AF0(v27, v28, v29);
    sub_1000112D0();
    sub_10000CE3C(v30, v31, v32);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = [a2 link];
    v33 = sub_100007764();
    sub_1002D3CA4(v33, v34, v21);

    goto LABEL_10;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v19 = type metadata accessor for Logger();
  sub_1000075F0(v19, qword_1006BA6D0);
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = sub_10000777C();
    *v23 = 67109634;
    *(v23 + 4) = [v20 v4[345]];
    *(v23 + 8) = 1024;
    *(v23 + 10) = [v20 v15[438]];

    *(v23 + 14) = 2112;
    *(v23 + 16) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Skip posting pending member notification because hasJoined: %{BOOL}d, ignoreLMIRequests: %{BOOL}d for conversation: %@", v23, 0x18u);
    sub_100009A04(v24, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100007CBC();
  }

  else
  {

    v21 = v20;
  }

LABEL_10:
}

void sub_1002D6C88()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  v9 = sub_100007FEC(v8);
  v119 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007FDC();
  v108 = v15 - v14;
  v116 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v16 = sub_100008070(v116);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v101 - v20;
  v22 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  sub_100007BAC();
  v115 = v25 - v26;
  sub_100006838();
  __chkstk_darwin(v27, v28);
  v117 = &v101 - v29;
  sub_100006838();
  __chkstk_darwin(v30, v31);
  v120 = &v101 - v32;
  sub_100006838();
  __chkstk_darwin(v33, v34);
  v36 = &v101 - v35;
  v37 = type metadata accessor for DispatchPredicate();
  v38 = sub_100007FEC(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38, v43);
  sub_100007FDC();
  sub_10001C9C4();
  v105 = v0;
  v44 = *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *p_isa = v44;
  (*(v40 + 104))(p_isa, enum case for DispatchPredicate.onQueue(_:), v37);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v46 = *(v40 + 8);
  v47 = sub_10003A58C();
  v48(v47);
  if ((v44 & 1) == 0)
  {
    goto LABEL_41;
  }

  v49 = [v3 groupUUID];
  if (!v49)
  {
    sub_10000AF74(v36, 1, 1, v8);
    sub_100009A04(v36, &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_38;
  }

  v50 = v49;
  p_isa = &v3->isa;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100035748();
  sub_100009A04(v36, &unk_1006A3DD0, &unk_10057C9D0);
  if (([v3 isLocallyCreated]& 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_8;
  }

  v51 = [v7 incomingPendingConversations];
  v52 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  sub_100005F0C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v113 = v3;
  v102 = v5;
  v104 = v52;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v123;
    v53 = v124;
    v55 = v125;
    v54 = v126;
    v56 = v127;
  }

  else
  {
    v66 = *(v5 + 32);
    sub_1000052DC();
    v53 = v5 + 56;
    v67 = *(v5 + 56);
    v55 = ~v68;
    sub_1000082B4();
    v56 = v69 & v70;

    v54 = 0;
  }

  v71 = v115;
  v101 = v55;
  p_isa = ((v55 + 64) >> 6);
  v103 = (v119 + 32);
  v107 = (v119 + 8);
  v72 = v54;
  v110 = v8;
  v111 = v53;
  v112 = v5;
  v106 = p_isa;
  while (1)
  {
    v114 = v72;
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    v81 = __CocoaSet.Iterator.next()();
    if (!v81 || (v121 = v81, swift_dynamicCast(), v80 = v122, v76 = v56, !v122))
    {
LABEL_36:
      sub_1002DB884();
      sub_100022DDC();
      goto LABEL_37;
    }

LABEL_22:
    v118 = v76;
    v119 = v80;
    v109 = v56;
    v82 = [v80 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v83 = 1;
    sub_100035748();
    v84 = [v113 groupUUID];
    if (v84)
    {
      v85 = v84;
      v86 = v117;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v83 = 0;
    }

    else
    {
      v86 = v117;
    }

    sub_10000AF74(v86, v83, 1, v8);
    v87 = *(v116 + 48);
    sub_100285FC4(v120, v21, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100285FC4(v86, &v21[v87], &unk_1006A3DD0, &unk_10057C9D0);
    sub_100033344(v21);
    if (v90)
    {
      sub_100009A04(v86, &unk_1006A3DD0, &unk_10057C9D0);
      v88 = sub_10000D6CC();
      sub_100009A04(v88, v89, &unk_10057C9D0);
      sub_100033344(&v21[v87]);
      if (v90)
      {
        sub_100009A04(v21, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_39:
        sub_1002DB884();
        sub_100022DDC();

        v98 = v119;
        v99 = [v119 pendingMembers];
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
        v100 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1002D3CA4(v100, 0, v113);
LABEL_37:

        goto LABEL_38;
      }

      goto LABEL_33;
    }

    sub_100285FC4(v21, v71, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100033344(&v21[v87]);
    if (v90)
    {
      sub_100009A04(v86, &unk_1006A3DD0, &unk_10057C9D0);
      v91 = sub_10000D6CC();
      sub_100009A04(v91, v92, &unk_10057C9D0);
      (*v107)(v71, v8);
      p_isa = v106;
LABEL_33:
      sub_100009A04(v21, &unk_1006A2A30, &unk_10057D150);
      v53 = v111;
      v5 = v112;
      goto LABEL_35;
    }

    v93 = v108;
    (*v103)(v108, &v21[v87], v8);
    sub_10000A034();
    sub_10000EDB0(&qword_1006A2620, v94);
    v95 = dispatch thunk of static Equatable.== infix(_:_:)();
    v96 = *v107;
    v97 = v115;
    (*v107)(v93, v8);
    sub_100009A04(v117, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v120, &unk_1006A3DD0, &unk_10057C9D0);
    v71 = v97;
    v96(v97, v8);
    sub_100009A04(v21, &unk_1006A3DD0, &unk_10057C9D0);
    v53 = v111;
    v5 = v112;
    p_isa = v106;
    if (v95)
    {
      goto LABEL_39;
    }

LABEL_35:

    v56 = v118;
    v8 = v110;
  }

  v73 = v72;
  if (v56)
  {
LABEL_18:
    sub_100007C8C();
    v76 = v75 & v74;
    v77 = *(v5 + 48);
    sub_10003DB58(v78);
    v80 = v79;
    if (!v80)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v72 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v72 >= p_isa)
    {
      goto LABEL_36;
    }

    ++v73;
    if (*(v53 + 8 * v72))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_100008288();
  swift_once();
LABEL_8:
  v57 = type metadata accessor for Logger();
  sub_1000075F0(v57, qword_1006BA6D0);
  v58 = p_isa;
  v59 = v5;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = sub_100007C08();
    v63 = swift_slowAlloc();
    *v62 = 138412546;
    *(v62 + 4) = v58;
    *(v62 + 12) = 2112;
    *(v62 + 14) = v59;
    *v63 = v58;
    v63[1] = v59;
    v64 = v58;
    v65 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "Tracked pending member changed, but not a locally owned link -- ignoring %@ %@", v62, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100007CBC();
  }

LABEL_38:
  sub_100005EDC();
}

void sub_1002D766C()
{
  sub_100005EF4();
  v126 = v1;
  v3 = v2;
  v127 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v127);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007BAC();
  v12 = v10 - v11;
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v120 - v16;
  __chkstk_darwin(v15, v18);
  v124 = &v120 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v125 = v0;
  v30 = *(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue);
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v33 = *(v23 + 8);
  p_inst_meths = (v23 + 8);
  v33(v29, v20);
  if ((v30 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    sub_100008288();
    swift_once();
    goto LABEL_18;
  }

  v120 = v17;
  v121 = v12;
  v123 = v6;
  v34 = [v3 activeConversations];
  v35 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  sub_10000C3E4();
  v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v128 = v35;
  if ((v36 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v12 = v130[3];
    v37 = v130[4];
    v38 = v130[5];
    v39 = v130[6];
    v40 = v130[7];
  }

  else
  {
    v41 = *(v36 + 32);
    sub_1000052DC();
    v37 = v36 + 56;
    v42 = *(v36 + 56);
    v38 = ~v43;
    sub_1000082B4();
    v40 = v44 & v45;

    v39 = 0;
    v12 = v36;
  }

  v122 = v38;
  v46 = (v38 + 64) >> 6;
  while (1)
  {
    p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
    v20 = &off_1006A3000;
    if (v12 < 0)
    {
      break;
    }

    v47 = v39;
    v48 = v39;
    if (!v40)
    {
      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v46)
        {
          goto LABEL_17;
        }

        ++v47;
        if (*(v37 + 8 * v48))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_11:
    sub_100007C8C();
    v51 = v50 & v49;
    v52 = *(v12 + 48);
    sub_10003DB58(v53);
    v55 = v54;
    if (!v55)
    {
      goto LABEL_22;
    }

LABEL_15:
    v57 = [v55 handoffEligibility];
    if (v57)
    {

      sub_10000BB5C();

      v62 = v125;
      v63 = v126;
      v12 = v124;
      goto LABEL_24;
    }

    v39 = v48;
    v40 = v51;
  }

  v56 = __CocoaSet.Iterator.next()();
  if (!v56)
  {
    goto LABEL_17;
  }

  v129 = v56;
  swift_dynamicCast();
  v55 = v130[0];
  v48 = v39;
  v51 = v40;
  if (v130[0])
  {
    goto LABEL_15;
  }

LABEL_22:
  v20 = &off_1006A3000;
LABEL_17:
  sub_10000BB5C();

  v12 = v124;
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_40;
  }

LABEL_18:
  v58 = type metadata accessor for Logger();
  sub_1000075F0(v58, qword_1006BA6D0);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v125;
  v63 = v126;
  if (v61)
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Removing handoff notification as there are no handoff-eligible conversations left", v64, 2u);
    sub_100005F40();
  }

  v65 = v20[368] + v62;
  v66 = *v65;
  if (*v65)
  {
    v67 = *(v65 + 1);

    v68 = sub_100022CB0();
    v66(v68);
    v69 = sub_100006B30();
    sub_1000051F8(v69);
  }

LABEL_24:
  v70 = [v63 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID;
  swift_beginAccess();
  v128 = sub_1002CB670(v12, *(v62 + v71));
  if (v72)
  {
    v73 = v72;
    swift_endAccess();
    v74 = *(v123 + 8);
    v74(v12, v127);
    v75 = [v63 UUID];
    v76 = v120;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID;
    swift_beginAccess();
    v124 = v77;
    sub_1002CB670(v76, *(v62 + v77));
    if (v78)
    {
      swift_endAccess();
      v79 = sub_10000D6CC();
      (v74)(v79);
      v80 = v62 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification;
      v81 = *(v62 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
      if (v81)
      {
        v82 = *(v80 + 8);

        v81(v128, v73);
        sub_1000051F8(v81);
      }

      v83 = *v80;
      if (*v80)
      {
        v84 = *(v80 + 8);

        v85 = sub_10000F2EC();
        v83(v85);
        v86 = sub_100006B30();
        sub_1000051F8(v86);
      }

      v87 = v126;
      v88 = [v126 UUID];
      v89 = v121;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100027698();
      sub_100383AF0(v89);
      v74(v89, v127);
      swift_endAccess();

      v90 = [v87 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100027698();
      sub_100383AF0(v89);
      v91 = sub_10000F2EC();
      (v74)(v91);
      swift_endAccess();

      v92 = [v87 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100027698();
      sub_100383BD0(v89, v93, v94, v95, v96, v97, v98, v99, v120, v121);
      v101 = v100;
      v102 = sub_10000F2EC();
      (v74)(v102);
      swift_endAccess();
      goto LABEL_37;
    }

    swift_endAccess();

    v103 = sub_10000D6CC();
    (v74)(v103);
    p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
    v63 = v126;
  }

  else
  {
    swift_endAccess();
    v74 = *(v123 + 8);
    v74(v12, v127);
  }

  if (p_inst_meths[366] != -1)
  {
    sub_100008288();
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_1000075F0(v104, qword_1006BA6D0);
  v105 = v63;
  v101 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v101, v106))
  {
    v107 = sub_100005274();
    v108 = sub_100005E84();
    v109 = v127;
    v110 = v108;
    v130[0] = v108;
    *v107 = 136315138;
    v111 = [v105 UUID];
    v112 = v121;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A034();
    sub_10000EDB0(v113, v114);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v74(v112, v109);
    sub_10002741C(v115, v117, v130);
    sub_100007770();

    *(v107 + 4) = v115;
    sub_1002DB898(&_mh_execute_header, v118, v119, "No notification for conversation UUID %s");
    sub_100009B7C(v110);
    sub_100005F40();
    sub_100008AE8();
  }

LABEL_37:

  sub_100005EDC();
}

void sub_1002D7FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setCategoryIdentifier:v7];

  sub_10031E958(0xD000000000000027, 0x8000000100566470);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  v10 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName);
  v9 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName + 8);

  v11 = [a3 handle];
  v12 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider);
  v13 = v10();
  v15 = v14;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v13;
  *(v8 + 40) = v15;
  String.init(format:_:)();

  v16 = String._bridgeToObjectiveC()();

  [v6 setBody:v16];

  v18 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);
  v17 = *(v4 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName + 8);

  v18(a2);

  sub_10000D6CC();
  String._bridgeToObjectiveC()();
  sub_100007770();

  [v6 setTitle:v17];

  v19 = sub_1002CECB8();
  sub_1004554A0(v19, v20, v6);
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v21 = sub_1002CD0F4(a3);
  v23 = v22;
  v24 = v6;
  v26 = sub_10044F628(v21, v23, v24, 0);
  [v26 setDestinations:3];
  sub_1002CE7A4(v26);
}

void sub_1002D8304()
{
  sub_100005EF4();
  v1 = v0;
  v60 = type metadata accessor for UUID();
  v2 = sub_100007FEC(v60);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v59 = v9 - v8;
  v10 = [*(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
  sub_1000112D0();
  sub_100006AF0(v11, v12, v13);
  sub_1000112D0();
  sub_10000CE3C(v14, v15, v16);
  sub_100022DF0();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100022DF0();
    Set.Iterator.init(_cocoa:)();
    v18 = v67;
    v19 = v68;
    v21 = v69;
    v20 = v70;
    v22 = v71;
  }

  else
  {
    v23 = *(v17 + 32);
    sub_1000052DC();
    v19 = v17 + 56;
    v24 = *(v17 + 56);
    v21 = ~v25;
    sub_1000082B4();
    v22 = v26 & v27;

    v20 = 0;
    v18 = v17;
  }

  v57 = v21;
  v28 = (v21 + 64) >> 6;
  v58 = (v4 + 8);
  v64 = v18;
  v61 = v1;
  if (v18 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v29 = v20;
    v30 = v20;
    if (!v22)
    {
      break;
    }

LABEL_9:
    sub_100007C8C();
    v33 = v32 & v31;
    v35 = *(v34 + 48);
    sub_10003DB58(v36);
    v38 = v37;
    if (!v38)
    {
LABEL_25:
      sub_100022DDC();

      v53 = sub_10000C56C();
      v55 = [v53 v54];
      v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10001E550(v56);
      sub_100005F0C();

      if (!v55)
      {
        *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen) = 0;
      }

      sub_100005EDC();
      return;
    }

    while (1)
    {
      v65 = v33;
      sub_1002CC954(v38);
      if (v39)
      {
        if (qword_1006A0B70 != -1)
        {
          sub_100008288();
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000075F0(v40, qword_1006BA6D0);
        v41 = v38;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v63 = sub_100005274();
          v66 = sub_100005E84();
          *v63 = 136315138;
          v62 = v42;
          v44 = [v41 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10000A034();
          sub_10000EDB0(&qword_1006A25E0, v45);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          (*v58)(v59, v60);
          v47 = sub_100005ED0();
          sub_10002741C(v47, v48, v49);
          sub_10000667C();

          *(v63 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v62, v43, "In response to conversations changed, we determined that we should post an invite notification for conversation UUID %s", v63, 0xCu);
          sub_100009B7C(v66);
          sub_100005F40();
          v1 = v61;
          sub_100005F40();
        }

        else
        {
        }

        sub_1002CD2AC(v41);
      }

      if ([v38 state])
      {
        v50 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
        if (v50)
        {
          v51 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

          v52 = sub_100022CB0();
          v50(v52);
          sub_1000051F8(v50);
        }
      }

      v20 = v30;
      v22 = v65;
      if ((v64 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v38 = v66;
        v30 = v20;
        v33 = v22;
        if (v66)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      goto LABEL_25;
    }

    ++v29;
    if (*(v19 + 8 * v30))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1002D8860()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10001C9C4();
  v11 = type metadata accessor for URL();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v227 = [v3 handoffEligibility];
  if (v227)
  {
    v222 = 0;
    v220 = v20;
    v221 = v14;
    v225 = v3;
    v217 = v1;
    v215 = v4;
    v224 = v0;
    v21 = [*(v0 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager) activeConversations];
    v22 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
    sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
    sub_100005F0C();
    sub_100022DF0();
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v214 = v7;
    v216 = v11;
    v226 = v22;
    if ((v23 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100022DF0();
      Set.Iterator.init(_cocoa:)();
      v24 = v233[0];
      v25 = v233[1];
      v26 = v233[2];
      v27 = v233[3];
      v28 = v233[4];
    }

    else
    {
      v46 = *(v23 + 32);
      sub_1000052DC();
      v25 = v23 + 56;
      v47 = *(v23 + 56);
      v26 = ~v48;
      sub_1000082B4();
      v28 = v49 & v50;

      v27 = 0;
      v24 = v23;
    }

    v223 = v26;
    v51 = (v26 + 64) >> 6;
    v52 = &selRef_setWindowed_;
    if (v24 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v53 = v27;
    v54 = v27;
    if (!v28)
    {
      do
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_93;
        }

        if (v54 >= v51)
        {
          goto LABEL_21;
        }

        ++v53;
      }

      while (!*(v25 + 8 * v54));
    }

    sub_100007C8C();
    v57 = v56 & v55;
    v58 = *(v24 + 48);
    sub_10003DB58(v59);
    v26 = v60;
    if (v26)
    {
      while (![v26 state])
      {

        v27 = v54;
        v28 = v57;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        v61 = __CocoaSet.Iterator.next()();
        if (v61)
        {
          *&v230 = v61;
          swift_dynamicCast();
          v26 = v232[0];
          v54 = v27;
          v57 = v28;
          if (v232[0])
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      sub_100027E68();

      if (qword_1006A0B70 != -1)
      {
        sub_100008288();
        swift_once();
      }

      v190 = type metadata accessor for Logger();
      sub_1000075F0(v190, qword_1006BA6D0);
      v191 = v225;
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();

      v194 = v217;
      if (os_log_type_enabled(v192, v193))
      {
        v195 = sub_100005274();
        v196 = sub_100005E84();
        v232[0] = v196;
        *v195 = 136315138;
        v197 = [v191 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000A034();
        sub_10000EDB0(v198, v199);
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v202 = v201;
        (*(v214 + 8))(v194, v215);
        sub_10002741C(v200, v202, v232);
        sub_100007770();

        *(v195 + 4) = v200;
        sub_1002DB898(&_mh_execute_header, v203, v204, "Not posting user notification for handoff eligible conversation %s because there's already a local non-waiting conversation");
        sub_100009B7C(v196);
        sub_100005F40();
        sub_100008AE8();
      }

      goto LABEL_86;
    }

LABEL_21:
    sub_100027E68();

    v62 = [objc_allocWithZone(FTNUServiceNames) init];
    v63 = [v225 avMode];
    v64 = &selRef_faceTimeVideoServiceName;
    if (v63 != 2)
    {
      v64 = &selRef_faceTimeAudioServiceName;
    }

    v65 = [v62 *v64];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v223 = "andoff-eligibility";
    sub_100022CB0();
    v70 = String._bridgeToObjectiveC()();
    [v69 setCategoryIdentifier:v70];

    v72 = *(v224 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName);
    v71 = *(v224 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName + 8);

    v72(v225);

    sub_10000D6CC();
    String._bridgeToObjectiveC()();
    sub_100007770();

    v226 = v69;
    [v69 setTitle:v71];

    v73 = sub_1002DB3E8(v227, &selRef_localizedDeviceCategory);
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      v232[0] = v66;
      v232[1] = v68;

      v77 = v232;
      v78._countAndFlagsBits = 2108704;
      v78._object = 0xE300000000000000;
      String.append(_:)(v78);
      v79._countAndFlagsBits = v75;
      v79._object = v76;
      String.append(_:)(v79);

      String._bridgeToObjectiveC()();
      sub_100005EC4();
    }

    else
    {
      sub_100007764();
      v77 = String._bridgeToObjectiveC()();
    }

    [v226 setSubtitle:v77];

    v80 = String._bridgeToObjectiveC()();
    v81 = TUStringKeyForProduct();

    if (v81)
    {

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10031E958(v83, v85);

      sub_100006B30();
      String._bridgeToObjectiveC()();
      sub_100005F0C();

      [v226 setBody:v86];

      v87 = sub_1002CECB8();
      sub_1004554A0(v87, v88, v226);
      AnyHashable.init<A>(_:)();
      v89 = [objc_opt_self() tu_conversationHandoffDynamicIdentifierForEligibility:v227];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v91;

      v231 = &type metadata for String;
      *&v230 = v90;
      *(&v230 + 1) = v54;
      v92 = [v226 userInfo];
      v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (&type metadata for String)
      {
        sub_10003EBF0(&v230, v229);
        swift_isUniquelyReferenced_nonNull_native();
        v228 = v93;
        sub_100378C74(v229, v232);
        sub_100006780(v232);
      }

      else
      {
        sub_100009A04(&v230, &unk_1006A2D10, &unk_10057D940);
        sub_1000067D4();
        if (v94)
        {
          sub_100005F0C();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v228 = v93;
          v54 = v93[3];
          sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54);
          sub_100006780(v93[6] + 40 * v92);
          sub_10003EBF0((v93[7] + 32 * v92), v229);
          sub_100006B30();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v229, 0, sizeof(v229));
        }

        sub_100006780(v232);
        sub_100009A04(v229, &unk_1006A2D10, &unk_10057D940);
      }

      Dictionary._bridgeToObjectiveC()();
      sub_100005F0C();

      [v226 setUserInfo:v92];

      [v226 setInterruptionLevel:0];
      v98 = [v225 remoteMembers];
      sub_10000D310();
      sub_100006AF0(v99, v100, v101);
      sub_10000D310();
      sub_10000CE3C(v102, v103, v104);
      v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v219 = v62;
      if ((v26 & 0xC000000000000001) == 0)
      {
        v130 = *(v26 + 32);
        v131 = ((1 << v130) + 63) >> 6;
        if ((v130 & 0x3Fu) > 0xD)
        {

          if (!swift_stdlib_isStackAllocationSafe())
          {
            swift_slowAlloc();

            v205 = sub_100007764();
            v24 = sub_1002DB174(v205, v206, v26, v207, 0);
            swift_bridgeObjectRelease_n();
            sub_100008AE8();
LABEL_59:
            v129 = v226;
LABEL_80:
            sub_1002CAAC4(v24);
            sub_10000667C();

            sub_100420F48(v26, v129);
            v160 = [objc_opt_self() sharedInstance];
            v161 = [v160 conversationManager];

            v52 = v227;
            v162 = [v161 joinRequestForApplicableConversationWithHandoffEligibility:v227];

            v54 = v225;
            v163 = v221;
            v164 = v220;
            if (v162)
            {
              v165 = [v162 URL];
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL._bridgeToObjectiveC()(v166);
              v168 = v167;
              (*(v163 + 8))(v164, v216);
              [v129 setDefaultActionURL:v168];
            }

            sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
            v24 = v129;
            v169 = sub_100022CB0();
            v26 = sub_10044F628(v169, v170, v24, 0);
            if (qword_1006A0B70 == -1)
            {
              goto LABEL_83;
            }

            goto LABEL_95;
          }
        }

        v209[1] = v209;
        __chkstk_darwin(v105, v106);
        v210 = v131;
        v211 = (v209 - ((8 * v131 + 15) & 0x3FFFFFFFFFFFFFF0));
        sub_100396044(0, v131, v211);
        v212 = 0;
        v132 = 0;
        v52 = (v26 + 56);
        v133 = *(v26 + 56);
        v134 = *(v26 + 32);
        sub_100007990();
        v24 = v136 & v135;
        v138 = (v137 + 63) >> 6;
        v139 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
        v218 = v26;
        while (v24)
        {
          v140 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v141 = v140 | (v132 << 6);
          v142 = &selRef_unsignedIntValue;
LABEL_69:
          v147 = *(v26 + 48);
          v213 = v141;
          v148 = *(v147 + 8 * v141);
          v149 = [v148 v139[120]];
          v150 = v139;
          v151 = [v149 v142[160]];

          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v152 = v142;
          v154 = v153;

          v155 = HIBYTE(v154) & 0xF;
          if ((v154 & 0x2000000000000000) == 0)
          {
            v155 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v155)
          {
            v156 = [v148 v150[120]];
            v54 = [v156 v152[160]];

            v139 = v150;
            if (!v54)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = String._bridgeToObjectiveC()();
            }

            v157 = [v54 destinationIdIsTemporary];

            v26 = v218;
            if ((v157 & 1) == 0)
            {
              *(v211 + ((v213 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v213;
              if (__OFADD__(v212++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {

            v139 = v150;
            v26 = v218;
          }
        }

        v143 = v132;
        v129 = v226;
        v142 = &selRef_unsignedIntValue;
        while (1)
        {
          v132 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            break;
          }

          if (v132 >= v138)
          {
            sub_1003EB35C(v211, v210, v212, v26);
            v24 = v159;
            goto LABEL_80;
          }

          ++v143;
          if (v52[v132])
          {
            sub_100007C8C();
            v24 = v145 & v144;
            v141 = v146 | (v132 << 6);
            goto LABEL_69;
          }
        }

LABEL_94:
        __break(1u);
LABEL_95:
        sub_100008288();
        swift_once();
LABEL_83:
        v171 = type metadata accessor for Logger();
        sub_10000AF9C(v171, qword_1006BA6D0);
        v172 = v26;
        v173 = v54;
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = sub_100007C08();
          v177 = sub_10000777C();
          v226 = sub_100005E84();
          v232[0] = v226;
          *v176 = 138412546;
          *(v176 + 4) = v172;
          *v177 = v172;
          *(v176 + 12) = 2080;
          v178 = v172;
          v179 = [v173 UUID];
          v180 = v24;
          v181 = v217;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10000A034();
          sub_10000EDB0(v182, v183);
          v184 = v215;
          v185 = dispatch thunk of CustomStringConvertible.description.getter();
          v187 = v186;
          v188 = v181;
          v24 = v180;
          (*(v214 + 8))(v188, v184);
          v189 = sub_10002741C(v185, v187, v232);

          *(v176 + 14) = v189;
          _os_log_impl(&_mh_execute_header, v174, v175, "Posting notification request %@ for handoff eligible conversation UUID %s nearby", v176, 0x16u);
          sub_100009A04(v177, &unk_1006A2630, &qword_10057CB40);
          sub_100005F40();
          sub_100009B7C(v226);
          v52 = v227;
          sub_100005F40();
          sub_100008AE8();
        }

        [v172 setDestinations:6];
        sub_1002CE7A4(v172);

        goto LABEL_86;
      }

      v24 = &_swiftEmptySetSingleton;
      v232[0] = &_swiftEmptySetSingleton;
      v107 = __CocoaSet.makeIterator()();
      v52 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      while (1)
      {
        while (1)
        {
          v26 = v107;
          v108 = __CocoaSet.Iterator.next()();
          if (!v108)
          {

            goto LABEL_59;
          }

          *&v229[0] = v108;
          swift_dynamicCast();
          v109 = v230;
          v110 = [v230 handle];
          v54 = [v110 value];

          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v114 = HIBYTE(v113) & 0xF;
          if ((v113 & 0x2000000000000000) == 0)
          {
            v114 = v111 & 0xFFFFFFFFFFFFLL;
          }

          if (v114)
          {
            v115 = [v109 handle];
            v116 = [v115 value];

            if (!v116)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              String._bridgeToObjectiveC()();
              sub_100005EC4();
            }

            v117 = [v116 destinationIdIsTemporary];

            if ((v117 & 1) == 0)
            {
              break;
            }
          }
        }

        v118 = v230;
        if (*(v24 + 24) <= *(v24 + 16))
        {
          sub_100396BE4();
        }

        v24 = v232[0];
        v26 = v118;
        v119 = NSObject._rawHashValue(seed:)(*(v232[0] + 40));
        v120 = v24 + 56;
        v121 = -1 << *(v24 + 32);
        v122 = v119 & ~v121;
        v123 = v122 >> 6;
        if (((-1 << v122) & ~*(v24 + 56 + 8 * (v122 >> 6))) == 0)
        {
          break;
        }

        v124 = __clz(__rbit64((-1 << v122) & ~*(v24 + 56 + 8 * (v122 >> 6)))) | v122 & 0x7FFFFFFFFFFFFFC0;
LABEL_57:
        *(v120 + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
        *(*(v24 + 48) + 8 * v124) = v118;
        ++*(v24 + 16);
      }

      v125 = 0;
      v126 = (63 - v121) >> 6;
      while (++v123 != v126 || (v125 & 1) == 0)
      {
        v127 = v123 == v126;
        if (v123 == v126)
        {
          v123 = 0;
        }

        v125 |= v127;
        v128 = *(v120 + 8 * v123);
        if (v128 != -1)
        {
          v124 = __clz(__rbit64(~v128)) + (v123 << 6);
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    __break(1u);
    v208 = *(v82 - 256);

    swift_bridgeObjectRelease_n();
    sub_100008AE8();
    __break(1u);
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      sub_100008288();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000075F0(v29, qword_1006BA6D0);
    v30 = v3;
    v227 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = sub_10000C56C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_100005274();
      v35 = sub_100005E84();
      v233[0] = v35;
      *v34 = 136315138;
      v36 = [v30 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A034();
      sub_10000EDB0(v37, v38);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v7 + 8);
      v43 = sub_10003A58C();
      v44(v43);
      v45 = sub_10002741C(v39, v41, v233);

      *(v34 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v227, v31, "Not posting handoff nearby notification for conversation %s because it did not have handoff eligibility", v34, 0xCu);
      sub_100009B7C(v35);
      sub_100008AE8();
      sub_100005F40();

LABEL_86:
      sub_100005EDC();
      return;
    }

    sub_10000C56C();
    sub_100005EDC();
  }
}

uint64_t sub_1002D9CDC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 handle];
  v3 = [v2 value];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = [v1 handle];
  v9 = [v8 value];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v9 destinationIdIsTemporary];

  return v10 ^ 1;
}

void sub_1002D9DF8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_100007654();
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000075F0(v11, qword_1006BA6D0);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_100005274();
    v16 = sub_10000777C();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handoff eligibility changed for %@", v15, 0xCu);
    sub_100009A04(v16, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  v18 = [v12 handoffEligibility];
  if (v18)
  {

    sub_100005EDC();

    sub_1002D8860();
  }

  else
  {
    v20 = v12;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100005274();
      v24 = sub_100005E84();
      v40 = v24;
      *v23 = 136315138;
      v25 = [v20 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A034();
      sub_10000EDB0(v26, v27);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v7 + 8);
      v32 = sub_10000F2EC();
      v33(v32);
      v34 = sub_10002741C(v28, v30, &v40);

      *(v23 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Removing handoff eligible nearby notification for conversation UUID %s", v23, 0xCu);
      sub_100009B7C(v24);
      sub_100005F40();
      sub_100005F40();
    }

    v35 = v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification;
    v36 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
    if (v36)
    {
      v37 = *(v35 + 8);

      v38 = sub_100022CB0();
      v36(v38);
      v39 = sub_100006B30();
      sub_1000051F8(v39);
    }

    sub_100005EDC();
  }
}

void sub_1002DA198()
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
  if (qword_1006A0B70 != -1)
  {
    sub_100008288();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA6D0);
  v17 = v3;
  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v39 = v1;
    v21 = sub_100007C08();
    swift_slowAlloc();
    *v21 = 136315394;
    v22 = [v17 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A034();
    sub_10000EDB0(v23, v24);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v20;
    v26 = *(v9 + 8);
    v26(v15, v6);
    v27 = sub_100005ED0();
    sub_10002741C(v27, v28, v29);
    sub_10000667C();

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v30 = [v18 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v26(v15, v6);
    v32 = sub_100006B30();
    sub_10002741C(v32, v33, v34);
    sub_100005F0C();

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v38, "Replacing handoff eligible nearby notification from old conversation UUID %s to new conversation UUID %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    v1 = v39;
    sub_100005F40();
  }

  v35 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification);
  if (v35)
  {
    v36 = *(v1 + OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification + 8);

    v37 = sub_100022CB0();
    v35(v37);
    sub_1000051F8(v35);
  }

  sub_1002D8860();
  sub_100005EDC();
}

unint64_t sub_1002DA540(Swift::UInt32 a1)
{
  sub_10000D5F8();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1002DAA44(a1, v2);
}

void sub_1002DA5A4()
{
  sub_1000066C8();
  type metadata accessor for Locale();
  sub_10000EDB0(&qword_1006A3C30, &type metadata accessor for Locale);
  sub_10000C3E4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000515FC();
  sub_100025DBC();
}

uint64_t sub_1002DA664(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_1002DAADC(a1, v4);
}

unint64_t sub_1002DA6A0()
{
  sub_10000D5F8();
  Hasher._combine(_:)(0);
  Hasher._finalize()();
  return sub_1002DAAA4();
}

unint64_t sub_1002DA6EC()
{
  sub_10000D5F8();
  String.hash(into:)();
  Hasher._finalize()();
  return sub_1002DAAA4();
}

unint64_t sub_1002DA750(char a1)
{
  sub_10000D5F8();
  sub_100434BAC(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1002DAB30(a1, v2);
}

uint64_t sub_1002DA7D0()
{
  sub_10002F5E8();
  Hasher._combine(_:)(v0);
  Hasher._finalize()();
  v1 = sub_10004A0C4();
  return sub_1002DAADC(v1, v2);
}

unint64_t sub_1002DA824()
{
  sub_10002F5E8();
  type metadata accessor for UUID();
  sub_10000A034();
  sub_10000EDB0(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v0 + *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle() + 20));
  NSObject.hash(into:)();
  Hasher._finalize()();
  v4 = sub_10004A0C4();

  return sub_1002DAD6C(v4, v5);
}

void sub_1002DA91C()
{
  v0 = sub_100016F64();
  NSObject._rawHashValue(seed:)(v0);
  sub_1000515FC();
  sub_100037318();
}

unint64_t sub_1002DA960(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10046B444();

  return sub_1002DAF04(a1 & 1, v4);
}

unint64_t sub_1002DA9A4()
{
  sub_10002F5E8();
  type metadata accessor for CFString(0);
  sub_10000EDB0(&qword_1006A3BF8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10004A0C4();

  return sub_1002DB048(v0, v1);
}

unint64_t sub_1002DAA44(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1002DAAA4()
{
  v1 = *(v0 + 32);
  sub_1000052DC();
  result = v2 & ~v3;
  v5 = *(v0 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t sub_1002DAADC(uint64_t a1, uint64_t a2)
{
  sub_100049FB4(a1, a2);
  while (((v7 << v4) & *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + 8 * v4) != v3)
  {
    v4 = (v4 + 1) & v6;
  }

  return sub_10003EB44(v4);
}

unint64_t sub_1002DAB30(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000004D56;
      v8 = 0x4C746C7561666564;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000100561300;
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100561320;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100561340;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100561360;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100561380;
          break;
        default:
          break;
      }

      v9 = 0x4C746C7561666564;
      v10 = 0xEA00000000004D56;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000100561300;
          break;
        case 2:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100561320;
          break;
        case 3:
          v9 = 0xD000000000000018;
          v10 = 0x8000000100561340;
          break;
        case 4:
          v9 = 0xD000000000000010;
          v10 = 0x8000000100561360;
          break;
        case 5:
          v9 = 0xD000000000000011;
          v10 = 0x8000000100561380;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002DAD6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = -1 << *(v3 + 32);
  v13 = a2 & ~v12;
  if ((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 72);
    while (1)
    {
      sub_1002DB7F0(*(v3 + 48) + v15 * v13, v11, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
      if (static UUID.== infix(_:_:)())
      {
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        v16 = *(v6 + 20);
        v17 = *&v11[v16];
        v18 = *(a1 + v16);
        if (static NSObject.== infix(_:_:)())
        {
          break;
        }
      }

      sub_1002DB508(v11);
      v13 = (v13 + 1) & v14;
      if (((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        return v13;
      }
    }

    sub_1002DB508(v11);
  }

  return v13;
}

unint64_t sub_1002DAF04(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656E6F6850;
    }

    else
    {
      v6 = 0x656D695465636146;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656E6F6850 : 0x656D695465636146;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002DB048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_10000EDB0(&qword_1006A3BF8, type metadata accessor for CFString);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      break;
    }
  }

  return i;
}

void *sub_1002DB174(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10039BA6C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1002DB204(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setInvitationPreferences:isa];
}

uint64_t sub_1002DB2BC(void *a1)
{
  v2 = [a1 linkName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1002DB32C(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActiveParticipantHandles:isa];
}

id sub_1002DB398(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 faceTimeAppViewLinkDetailsURLForPseudonym:v4];

  return v5;
}

uint64_t sub_1002DB3E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

Swift::Int sub_1002DB440(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_1002DB484()
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

uint64_t sub_1002DB508(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DB564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DB5C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_1002DB658()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1002CE7A4(v1);
}

uint64_t sub_1002DB698()
{
  v1 = type metadata accessor for Notification();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002DB744(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1002DB7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100008070(v4);
  v6 = *(v5 + 16);
  v7 = sub_100006B30();
  v8(v7);
  return a2;
}

uint64_t sub_1002DB884()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

void sub_1002DB898(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1002DB8B8()
{

  return sub_100022DDC();
}

id sub_1002DB8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1003890FC(a1, a2, a3, a4, 0);
}

uint64_t sub_1002DB8F0(void *a1)
{
  v67 = type metadata accessor for URL();
  v2 = sub_100007FEC(v67);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_10000F4E8();
  v59 = v8;
  __chkstk_darwin(v9, v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for InterventionRequest();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_10000F4E8();
  v65 = v20;
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v55 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v55 - v27;
  v30 = a1[3];
  v29 = a1[4];
  v31 = sub_100009B14(a1, v30);
  v32 = *(v29 + 32);
  v60 = v31;
  v61 = v32;
  v63 = v29;
  v64 = v30;
  v62 = v29 + 32;
  v32(v30, v29);
  if (qword_1006A0B88 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000AF9C(v33, qword_1006BA718);
  v34 = *(v16 + 16);
  v66 = v28;
  v34(v25, v28, v13);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v55 = v37;
    v58 = swift_slowAlloc();
    v68 = v58;
    *v37 = 136315138;
    v57 = v36;
    InterventionRequest.url.getter();
    v38 = *(v4 + 16);
    v56 = v35;
    v38(v59, v12, v67);
    sub_100007624();
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
    v42 = *(v4 + 8);
    v43 = sub_100007624();
    v44(v43);
    v45 = sub_10000A04C();
    v30(v45);
    v46 = sub_10002741C(v39, v41, &v68);

    v47 = v55;
    *(v55 + 1) = v46;
    v48 = v56;
    _os_log_impl(&_mh_execute_header, v56, v57, "Presenting intervention %s", v47, 0xCu);
    sub_100009B7C(v58);
  }

  else
  {

    v49 = sub_10000A04C();
    v30(v49);
  }

  v50 = v65;
  v61(v64, v63);
  InterventionRequest.url.getter();
  (v30)(v50, v13);
  URL._bridgeToObjectiveC()(v51);
  v53 = v52;
  (*(v4 + 8))(v12, v67);
  TUOpenURL();

  return (v30)(v66, v13);
}

id sub_1002DBCFC()
{
  v0 = [objc_allocWithZone(CSDInterventionProvider) init];
  v1 = type metadata accessor for DialingInterventionController();
  v2 = objc_allocWithZone(v1);
  v6[3] = sub_100006AF0(0, &qword_1006A3CD8, off_100616640);
  v6[4] = &off_100624FF8;
  v6[0] = v0;
  sub_100009AB0(v6, v2 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100009B7C(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id DialingInterventionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialingInterventionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1002DBEE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620550, v2);

  return v3 != 0;
}

BOOL sub_1002DBF58@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002DBEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002DBF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002DBF28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002DBFB4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for SoundDescriptor();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isPTT] & 1) != 0 || (objc_msgSend(a1, "status") != 6 ? (v16 = (*&a2 & 0x10000) == 0) : (v16 = 1), v16))
  {
    v17 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v17);
  }

  else
  {
    v19 = [a1 isUplinkMuted];
    v20 = [a1 provider];
    v21 = [a1 isVideo];
    v22 = [a1 soundRegion];
    v23 = *(v11 + 32);
    v24 = type metadata accessor for UUID();
    sub_10000AF74(&v15[v23], 1, 1, v24);
    v25 = 10;
    if (!v19)
    {
      v25 = 11;
    }

    *v15 = v25;
    *(v15 + 1) = v20;
    v15[16] = v21;
    *(v15 + 3) = v22;
    v15[*(v11 + 36)] = 0;
    UUID.init()();
    type metadata accessor for UUID();
    sub_10000AF74(v10, 0, 1, v24);
    sub_100298328(v10, &v15[*(v11 + 32)]);
    sub_100044148(v15, a3, type metadata accessor for SoundDescriptor);
    v26 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v26);
    v27 = type metadata accessor for SoundDescriptorAction();
    sub_10000AF74(a3, 0, 1, v27);
    return sub_10004426C(v15, type metadata accessor for SoundDescriptor);
  }
}

uint64_t sub_1002DC264@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SoundDescriptor();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x40000) != 0)
  {
    v19 = [a1 provider];
    v20 = [a1 isVideo];
    v21 = [a1 soundRegion];
    v22 = *(v12 + 32);
    v23 = type metadata accessor for UUID();
    sub_10000AF74(&v16[v22], 1, 1, v23);
    *v16 = 13;
    *(v16 + 1) = v19;
    v16[16] = v20;
    *(v16 + 3) = v21;
    v16[*(v12 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v11, 0, 1, v23);
    sub_100298328(v11, &v16[v22]);
    sub_100044148(v16, a3, type metadata accessor for SoundDescriptor);
    v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v24);
    v25 = type metadata accessor for SoundDescriptorAction();
    sub_10000AF74(a3, 0, 1, v25);
    return sub_10004426C(v16, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v17 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v17);
  }
}

uint64_t sub_1002DC4D0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if ((a1 & 0x80000) != 0)
  {
    sub_1002DCC50();
  }

  v3 = type metadata accessor for SoundDescriptorAction();

  return sub_10000AF74(a2, 1, 1, v3);
}

uint64_t sub_1002DC520@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SoundDescriptor();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100000) != 0)
  {
    v18 = [a1 provider];
    v19 = [a1 isVideo];
    v20 = [a1 soundRegion];
    v21 = *(v11 + 32);
    v22 = type metadata accessor for UUID();
    sub_10000AF74(&v15[v21], 1, 1, v22);
    *v15 = 15;
    *(v15 + 1) = v18;
    v15[16] = v19;
    *(v15 + 3) = v20;
    v15[*(v11 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v10, 0, 1, v22);
    sub_100298328(v10, &v15[v21]);
    sub_100044148(v15, a3, type metadata accessor for SoundDescriptor);
    v23 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v23);
    v24 = type metadata accessor for SoundDescriptorAction();
    sub_10000AF74(a3, 0, 1, v24);
    return sub_10004426C(v15, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v16 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v16);
  }
}

uint64_t sub_1002DC778@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SoundDescriptor();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x200000) != 0)
  {
    v19 = [a1 provider];
    v20 = [a1 isVideo];
    v21 = [a1 soundRegion];
    v22 = *(v12 + 32);
    v23 = type metadata accessor for UUID();
    sub_10000AF74(&v16[v22], 1, 1, v23);
    *v16 = 16;
    *(v16 + 1) = v19;
    v16[16] = v20;
    *(v16 + 3) = v21;
    v16[*(v12 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v11, 0, 1, v23);
    sub_100298328(v11, &v16[v22]);
    sub_100044148(v16, a3, type metadata accessor for SoundDescriptor);
    v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v24);
    v25 = type metadata accessor for SoundDescriptorAction();
    sub_10000AF74(a3, 0, 1, v25);
    return sub_10004426C(v16, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v17 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v17);
  }
}

uint64_t sub_1002DC9E4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SoundDescriptor();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*(v3 + 32) sharePlaySFXViaInCallServiceEnabled] & 1) == 0 && (a2 & 0x400000) != 0)
  {
    v19 = [a1 provider];
    v20 = [a1 isVideo];
    v21 = [a1 soundRegion];
    v22 = *(v12 + 32);
    v23 = type metadata accessor for UUID();
    sub_10000AF74(&v16[v22], 1, 1, v23);
    *v16 = 17;
    *(v16 + 1) = v19;
    v16[16] = v20;
    *(v16 + 3) = v21;
    v16[*(v12 + 36)] = 0;
    UUID.init()();
    sub_10000AF74(v11, 0, 1, v23);
    sub_100298328(v11, &v16[v22]);
    sub_100044148(v16, a3, type metadata accessor for SoundDescriptor);
    v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v24);
    v25 = type metadata accessor for SoundDescriptorAction();
    sub_10000AF74(a3, 0, 1, v25);
    return sub_10004426C(v16, type metadata accessor for SoundDescriptor);
  }

  else
  {
    v17 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v17);
  }
}

void sub_1002DCC50()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v45 - v11;
  __chkstk_darwin(v10, v13);
  v15 = v45 - v14;
  swift_beginAccess();
  v16 = sub_1002CB6C8(*(v1 + 48));
  swift_endAccess();
  if (v16)
  {

    goto LABEL_12;
  }

  v17 = TUBundle();
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_1003A14F4(0x6A2D656D2D74656CLL, 0xEB000000006E696FLL, 6709603, 0xE300000000000000, v17);

  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v15, v12, v2);
    v20 = objc_opt_self();
    v21 = [v20 sharedInstance];
    v46[0] = 0;
    v22 = [v21 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:2 error:v46];

    if (v22)
    {
      v23 = v46[0];
      v24 = [v20 sharedInstance];
      v46[0] = 0;
      v25 = [v24 setActive:1 error:v46];

      v26 = v46[0];
      if (v25)
      {
        (*(v3 + 16))(v8, v15, v2);
        v27 = objc_allocWithZone(AVAudioPlayer);
        v28 = v26;
        v39 = sub_10039F99C(v8);
        v40 = swift_beginAccess();
        if (v39)
        {
          v41 = *(v1 + 48);
          swift_isUniquelyReferenced_nonNull_native();
          v45[0] = *(v1 + 48);
          sub_100378EF0(v39);
          *(v1 + 48) = v45[0];
        }

        else
        {
        }

        swift_endAccess();
        swift_beginAccess();
        v42 = sub_1002CB6C8(*(v1 + 48));
        if (v42)
        {
          v43 = v42;
          swift_endAccess();
          LODWORD(v44) = 1.0;
          [v43 setVolume:v44];
        }

        else
        {
          swift_endAccess();
        }

        goto LABEL_11;
      }

      v31 = v46[0];
      v30 = _convertNSErrorToError(_:)();
    }

    else
    {
      v29 = v46[0];
      v30 = _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    v32 = sub_100010B20();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10057D6A0;
    *(v33 + 56) = &type metadata for String;
    v34 = sub_100009D88();
    *(v33 + 64) = v34;
    *(v33 + 32) = 0x6A2D656D2D74656CLL;
    *(v33 + 40) = 0xEB000000006E696FLL;
    v46[0] = v30;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v35 = String.init<A>(reflecting:)();
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v34;
    *(v33 + 72) = v35;
    *(v33 + 80) = v36;
    os_log(_:dso:log:type:_:)();

LABEL_11:
    (*(v3 + 8))(v15, v2);
  }

LABEL_12:
  swift_beginAccess();
  v37 = sub_1002CB6C8(*(v1 + 48));
  if (v37)
  {
    v38 = v37;
    swift_endAccess();
    [v38 play];
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1002DD174()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);

  return v0;
}

uint64_t sub_1002DD1AC()
{
  sub_1002DD174();

  return _swift_deallocClassInstance(v0, 56, 7);
}

_BYTE *storeEnumTagSinglePayload for SoundDescriptorActionResolver.Sound(_BYTE *result, int a2, int a3)
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

unint64_t sub_1002DD2B4()
{
  result = qword_1006A3DB0;
  if (!qword_1006A3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3DB0);
  }

  return result;
}

unint64_t sub_1002DD344()
{
  result = qword_1006A2660;
  if (!qword_1006A2660)
  {
    sub_100006AF0(255, &qword_1006A3DE0, TUConversationMember_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2660);
  }

  return result;
}

uint64_t sub_1002DD3AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v4 = [v0 accountUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v0 localizedServiceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return CellularService.init(_:_:)();
}

char *sub_1002DD48C()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v0, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  v31 = sub_1002DE3F0(&qword_1006A3ED0, 255, &type metadata accessor for NSFastEnumerationIterator);
  v32 = _swiftEmptyArrayStorage;
  v29 = v4;
  v30 = v0;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v37)
    {
      break;
    }

    sub_10003EBF0(&v36, v35);
    v5 = type metadata accessor for CellularService();
    v33 = &v27;
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5, v8);
    v9 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
    v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v9 - 8, v11);
    v13 = &v27 - v12;
    sub_100006A94(v35, v34);
    sub_1002DE1F8();
    if (swift_dynamicCast())
    {
      v14 = v38;
      sub_1002DD3AC();

      v15 = v13;
      v16 = 0;
    }

    else
    {
      v15 = v13;
      v16 = 1;
    }

    sub_10000AF74(v15, v16, 1, v5);
    sub_100009B7C(v35);
    if (sub_100015468(v13, 1, v5) == 1)
    {
      sub_1000099A4(v13, &qword_1006A3ED8, &unk_10057EC98);
    }

    else
    {
      v17 = *(v6 + 32);
      v18 = v17(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v5);
      __chkstk_darwin(v18, v19);
      v20 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17(v20, v20, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470198(0, *(v32 + 2) + 1, 1, v32);
        v32 = v24;
      }

      v22 = *(v32 + 2);
      v21 = *(v32 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_100470198(v21 > 1, v22 + 1, 1, v32);
        v32 = v25;
      }

      v23 = v32;
      *(v32 + 2) = v22 + 1;
      v17(&v23[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22], v20, v5);
      v4 = v29;
      v0 = v30;
    }
  }

  (*(v28 + 8))(v4, v0);
  return v32;
}

uint64_t sub_1002DD874(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v19 - v10;
  v12 = [a1 URL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v8, v2);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    TUOpenURL();

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    sub_1002DE23C();
    swift_allocError();
    *v18 = 0xD000000000000040;
    v18[1] = 0x80000001005667D0;
    return swift_willThrow();
  }
}

char *sub_1002DDA04()
{
  v3[3] = &type metadata for URLDialer;
  v3[4] = &off_100625358;
  v0 = objc_allocWithZone(type metadata accessor for ConversationDialingServer());
  sub_10001BDB8(v3, &type metadata for URLDialer);
  v1 = sub_1002DE290(v0);
  sub_100009B7C(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1002DDAB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = type metadata accessor for UUID();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1002DDB78, 0, 0);
}

uint64_t sub_1002DDB78()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = sub_1002DE4D4();
  [v3 setShowUIPrompt:(v1 & 1) == 0];
  v4 = *(*(sub_10026D814(&qword_1006A3ED8, &unk_10057EC98) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  StartCellularConversationAction.cellularService.getter();
  v6 = type metadata accessor for CellularService();
  if (sub_100015468(v5, 1, v6) == 1)
  {
    sub_1000099A4(v5, &qword_1006A3ED8, &unk_10057EC98);

    isa = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);
    CellularService.id.getter();
    (*(*(v6 - 8) + 8))(v5, v6);

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v8, v10);
  }

  [v3 setLocalSenderIdentityAccountUUID:isa];

  if (qword_1006A0B80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000AF9C(v11, qword_1006BA700);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v15;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Asked to dial %@ %{BOOL}d", v16, 0x12u);
    sub_1000099A4(v17, &unk_1006A2630, &qword_10057CB40);
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 24);

  sub_100009B14((v20 + OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer), *(v20 + OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer + 24));
  sub_1002DD874(v12);

  v21 = *(v0 + 8);

  return v21();
}

id sub_1002DDEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDialingServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DDF60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1002DE008;

  return sub_1002DDAB4(a1, v10, v11, a4);
}

uint64_t sub_1002DE008()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1002DE120()
{
  v1 = [*(v0 + 16) telephonyProvider];
  v2 = [v1 prioritizedSenderIdentities];

  v3 = sub_1002DD48C();
  return v3;
}

uint64_t sub_1002DE19C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_1002DE1F8()
{
  result = qword_1006A2B98;
  if (!qword_1006A2B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2B98);
  }

  return result;
}

unint64_t sub_1002DE23C()
{
  result = qword_1006A3EE0;
  if (!qword_1006A3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3EE0);
  }

  return result;
}

char *sub_1002DE290(char *a1)
{
  v14[3] = &type metadata for URLDialer;
  v14[4] = &off_100625358;
  *&a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialingService] = 0;
  sub_100009AB0(v14, &a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialer]);
  type metadata accessor for AccountProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(TUCallProviderManager) init];
  *&a1[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_accountProvider] = v2;
  v3 = type metadata accessor for ConversationDialingServer();
  v13.receiver = a1;
  v13.super_class = v3;
  v4 = objc_msgSendSuper2(&v13, "init");
  sub_1002DE3F0(&qword_1006A3EE8, v5, type metadata accessor for ConversationDialingServer);
  v6 = type metadata accessor for ConversationDialingService();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v4;
  v10 = ConversationDialingService.init(server:)();
  v11 = *&v9[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialingService];
  *&v9[OBJC_IVAR____TtC13callservicesd25ConversationDialingServer_dialingService] = v10;

  ConversationDialingService.start()();

  sub_100009B7C(v14);
  return v9;
}

uint64_t sub_1002DE3F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002DE448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1002DE488(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1002DE4D4()
{
  v0 = type metadata accessor for UUID();
  v1 = sub_100007FEC(v0);
  v55 = v2;
  v56 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 telephonyProvider];

  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  v63 = v9;

  [v9 setPreferDefaultApp:0];
  v61 = type metadata accessor for Handle();
  v10 = sub_100007FEC(v61);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  v62 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v53 - v62;
  StartCellularConversationAction.handle.getter();
  v59 = sub_1002DE970();
  v17 = type metadata accessor for Handle.Kind();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  v60 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10000A6A8();
  sub_1002E5170();
  v58 = *(v20 + 8);
  v58(v8, v17);
  Handle.value.getter();
  v24 = sub_10000A078();
  v26 = sub_100389560(v24, v25);
  v27 = Handle.displayName.getter();
  sub_1002DE9B4(v27, v28, v26);
  v29 = v12 + 8;
  v30 = *(v12 + 8);
  v57 = v29;
  v31 = v61;
  v30(v16, v61);
  v32 = v63;
  [v63 setHandle:v26];

  v33 = [v32 setOriginatingUIType:45];
  __chkstk_darwin(v33, v34);
  v35 = &v53 - v62;
  started = StartCellularConversationAction.handle.getter();
  __chkstk_darwin(started, v37);
  sub_10000A6A8();
  sub_1002E5170();
  v58(v26, v17);
  Handle.value.getter();
  v38 = sub_10000A078();
  v40 = sub_100389560(v38, v39);
  v41 = Handle.displayName.getter();
  sub_1002DE9B4(v41, v42, v40);
  v30(v35, v31);
  v43 = v63;
  [v63 setHandle:v40];

  v44 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8, v46);
  v48 = &v53 - v47;
  StartCellularConversationAction.cellularService.getter();
  v49 = type metadata accessor for CellularService();
  if (sub_100015468(v48, 1, v49) == 1)
  {
    sub_1002DEA18(v48);
    isa = 0;
  }

  else
  {
    v51 = v54;
    CellularService.id.getter();
    (*(*(v49 - 8) + 8))(v48, v49);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v51, v56);
  }

  [v43 setLocalSenderIdentityAccountUUID:isa];

  return v43;
}

unint64_t sub_1002DE970()
{
  result = qword_1006A2640;
  if (!qword_1006A2640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2640);
  }

  return result;
}

void sub_1002DE9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setSiriDisplayName:v4];
}

uint64_t sub_1002DEA18(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3ED8, &unk_10057EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DEA80()
{
  v0 = type metadata accessor for AudioFileManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1002E1040();
  qword_1006BA1D8 = v3;
  return result;
}

uint64_t sub_1002DEAC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002DEAE4, 0, 0);
}

uint64_t sub_1002DEAE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1002DEBF8;
  v5 = v0[2];

  return sub_100289A80();
}

uint64_t sub_1002DEBF8()
{
  sub_100006810();
  v2 = *v1;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_100007BC8();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DED24, 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    sub_100009EF4();

    return v9();
  }
}

uint64_t sub_1002DED24()
{
  sub_100006810();
  v1 = *(v0 + 40);

  sub_100009EF4();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1002DED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = *(*(sub_10026D814(&unk_1006A52C0, &unk_10057D930) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002DEEF0, 0, 0);
}

uint64_t sub_1002DEEF0()
{
  v80 = v0;
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for Logger();
  *(v0 + 280) = sub_10000AF9C(v2, qword_1006BA568);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    sub_100007BFC();
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Concatenating %{public}ld audio files", v7, 0xCu);
    sub_100005F64();
  }

  else
  {
    v8 = *(v0 + 184);
  }

  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  sub_1002E8B38(*(v0 + 184), v10);
  if (sub_100015468(v10, 1, v9) == 1)
  {
    sub_1002E1320(*(v0 + 200));
  }

  else
  {
    v11 = *(v0 + 184);
    v12 = *(*(v0 + 216) + 32);
    v12(*(v0 + 272), *(v0 + 200), *(v0 + 208));
    v13 = *(v0 + 272);
    if (*(v11 + 16) == 1)
    {
      v12(*(v0 + 176), *(v0 + 272), *(v0 + 208));
      sub_100018F34();

      sub_100009EF4();
      goto LABEL_20;
    }

    (*(*(v0 + 216) + 8))(*(v0 + 272), *(v0 + 208));
  }

  v14 = [objc_allocWithZone(AVMutableComposition) init];
  *(v0 + 288) = v14;
  *(v0 + 296) = AVMediaTypeAudio;
  v15 = [v14 addMutableTrackWithMediaType:? preferredTrackID:?];
  *(v0 + 304) = v15;
  if (!v15)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      *swift_slowAlloc() = 0;
      sub_100010254();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_100006868();
    }

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    sub_1002E13EC(v39, v40);
    sub_1000068E0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_19;
  }

  v16 = *(v0 + 216);
  v17 = *(v0 + 184);
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  *(v0 + 640) = timescale;
  *(v0 + 644) = flags;
  epoch = kCMTimeZero.epoch;
  *(v0 + 312) = kCMTimeZero.value;
  *(v0 + 320) = epoch;
  v21 = *(v17 + 16);
  *(v0 + 344) = epoch;
  *(v0 + 352) = 0;
  *(v0 + 652) = flags;
  *(v0 + 648) = timescale;
  *(v0 + 328) = v21;
  *(v0 + 336) = kCMTimeZero.value;
  if (v21)
  {
    v77 = *(v0 + 296);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 208);
    v26 = *(v16 + 16);
    v25 = v16 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    *(v0 + 384) = v26;
    *(v0 + 392) = v25 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v17 + v27, v24);
    sub_1002E13A8();
    v28 = sub_100005F80();
    (v26)(v28);
    v29 = sub_1004630C0(v23);
    *(v0 + 400) = v29;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1002DF6BC;
    swift_continuation_init();
    *(v0 + 136) = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
    sub_10000E630();
    *(v0 + 88) = 1107296256;
    sub_100018124(&unk_100625390);
    [v29 loadTracksWithMediaType:v77 completionHandler:?];
    sub_10000D3E8();

    return _swift_continuation_await(v30);
  }

  v45 = *(v0 + 288);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  objc_allocWithZone(AVAssetExportSession);
  v46 = sub_100469E18(v45);
  *(v0 + 360) = v46;
  v47 = *(v0 + 280);
  if (!v46)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      *swift_slowAlloc() = 0;
      sub_10000F590(&_mh_execute_header, v66, v67, "Failed to create an export session");
      sub_100005F40();
    }

    v14 = *(v0 + 304);
    v68 = *(v0 + 288);

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    sub_1002E13EC(v69, v70);
    sub_1000068E0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_19:
    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    sub_10000F570();

    sub_100009EF4();
LABEL_20:
    sub_10000D3E8();

    __asm { BRAA            X1, X16 }
  }

  sub_10000D704();
  v48 = sub_100015CEC();
  v49(v48);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 240);
  v55 = *(v0 + 208);
  v54 = *(v0 + 216);
  if (v52)
  {
    sub_100007BFC();
    v56 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = v78;
    *v56 = 136446210;
    sub_1000082E0();
    sub_1002E13EC(v57, v58);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = sub_100008B04();
    v51(v62);
    v63 = sub_10002741C(v59, v61, &v79);

    *(v56 + 4) = v63;
    sub_1002E14AC(&_mh_execute_header, "Exporting concatenated audio file to url %{public}s", v51);
    sub_100009B7C(v78);
    sub_100005F40();
    sub_100005F64();
  }

  else
  {

    v71 = sub_100008B04();
    v51(v71);
  }

  *(v0 + 448) = v51;
  v72 = async function pointer to AVAssetExportSession.export(to:as:isolation:)[1];
  v73 = swift_task_alloc();
  *(v0 + 456) = v73;
  *v73 = v0;
  sub_1000150F8(v73);
  sub_10000C6F0(v74);
  sub_10000D3E8();

  return AVAssetExportSession.export(to:as:isolation:)();
}

uint64_t sub_1002DF6BC()
{
  sub_100006810();
  v1 = *v0;
  sub_100007BC8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 408) = v5;
  if (v5)
  {
    v6 = sub_1002E0714;
  }

  else
  {
    v6 = sub_1002DF7F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[18];
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v38 = v22[18];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v26 = *(v25 + 32);
    }

    v22[52] = v26;

    sub_10026D814(&qword_1006A3FD8, &unk_10057ED90);
    v22[53] = static AVPartialAsyncProperty<A>.duration.getter();
    v27 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v28 = swift_task_alloc();
    v22[54] = v28;
    *v28 = v22;
    v28[1] = sub_1002DFB34;
    v29 = v22[50];
    sub_100017C90();

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
  }

  v40 = v22[48];
  v39 = v22[49];
  v41 = v22[33];
  v42 = v22[26];

  type metadata accessor for AudioFileManagerError(0);
  sub_10000A090();
  sub_1002E13EC(v43, v44);
  sub_100007694();
  v45 = swift_allocError();
  v47 = v46;
  v40(v46, v41, v42);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_10000F2F8();
  v48 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v47 = sub_10000681C();
    a11 = v47;
    *v42 = 136446210;
    v22[19] = v45;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v49 = String.init<A>(reflecting:)();
    v39 = v50;
    sub_10002741C(v49, v50, &a11);
    sub_100018F58();
    *(v42 + 4) = v40;
    sub_100010254();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    sub_100009B7C(v47);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v56 = sub_10000FD84();
  v57(v56);
  v59 = v22[33];
  v58 = v22[34];
  sub_10000F570();

  sub_100009EF4();
  sub_100017C90();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002DFB34()
{
  v2 = *v1;
  sub_100007BC8();
  *v4 = v3;
  v5 = *(v2 + 432);
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = *(v2 + 424);

  if (v0)
  {
    v7 = sub_1002E08AC;
  }

  else
  {
    v7 = sub_1002DFC90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002DFC90()
{
  v88 = v0;
  *(v0 + 160) = 0;
  v1 = *(v0 + 648);
  *(v0 + 480) = *(v0 + 640);
  v2 = *(v0 + 416);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 520);
  v8 = *(v0 + 528);
  v9 = *(v0 + 532);
  v10 = *(v0 + 536);
  *(v0 + 472) = *(v0 + 312);
  *(v0 + 488) = v5;
  *(v0 + 496) = v7;
  *(v0 + 504) = v8;
  *(v0 + 508) = v9;
  *(v0 + 512) = v10;
  *(v0 + 544) = v4;
  *(v0 + 552) = v1;
  *(v0 + 560) = v3;
  v11 = [v6 insertTimeRange:v0 + 472 ofTrack:v2 atTime:v0 + 544 error:v0 + 160];
  v12 = *(v0 + 160);
  if ((v11 & 1) == 0)
  {
    v41 = *(v0 + 416);
    v42 = v12;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000F2F8();
    v44 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005F94();
    if (sub_10000F96C())
    {
      sub_100007BFC();
      swift_slowAlloc();
      v41 = sub_10000681C();
      v87 = v41;
      *(v0 + 160) = 136446210;
      *(v0 + 152) = v43;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v45 = String.init<A>(reflecting:)();
      v8 = v46;
      sub_10002741C(v45, v46, &v87);
      sub_100018F58();
      *(v0 + 164) = v9;
      sub_100010254();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_100009B7C(v41);
      sub_100005F64();
      sub_100006868();
    }

    sub_10000A6C8();
    v52 = sub_10000FD84();
    v53(v52);
    goto LABEL_9;
  }

  v13 = *(v0 + 416);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v84 = *(v0 + 264);
  v16 = *(v0 + 216);
  v82 = *(v0 + 400);
  v83 = *(v0 + 208);
  v17 = v12;
  *(v0 + 568) = v15;
  *(v0 + 576) = *(v0 + 648);
  *(v0 + 584) = v14;
  *(v0 + 592) = v7;
  *(v0 + 600) = v8;
  *(v0 + 604) = v9;
  *(v0 + 608) = v10;
  CMTimeAdd((v0 + 616), (v0 + 568), (v0 + 592));
  v18 = *(v0 + 616);
  v19 = *(v0 + 632);
  v20 = *(v0 + 624);

  (*(v16 + 8))(v84, v83);
  v21 = *(v0 + 352) + 1;
  *(v0 + 344) = v19;
  *(v0 + 352) = v21;
  *(v0 + 648) = v20;
  *(v0 + 336) = v18;
  if (v21 == *(v0 + 328))
  {
    v22 = *(v0 + 288);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    objc_allocWithZone(AVAssetExportSession);
    v23 = sub_100469E18(v22);
    *(v0 + 360) = v23;
    v24 = *(v0 + 280);
    if (v23)
    {
      sub_10000D704();
      v25 = sub_100015CEC();
      v26(v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 240);
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      if (v29)
      {
        sub_100007BFC();
        v33 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87 = v85;
        *v33 = 136446210;
        sub_1000082E0();
        sub_1002E13EC(v34, v35);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        v39 = sub_100008B04();
        v28(v39);
        v40 = sub_10002741C(v36, v38, &v87);

        *(v33 + 4) = v40;
        sub_1002E14AC(&_mh_execute_header, "Exporting concatenated audio file to url %{public}s", v28);
        sub_100009B7C(v85);
        sub_100005F40();
        sub_100005F64();
      }

      else
      {

        v76 = sub_100008B04();
        v28(v76);
      }

      *(v0 + 448) = v28;
      v77 = async function pointer to AVAssetExportSession.export(to:as:isolation:)[1];
      v78 = swift_task_alloc();
      *(v0 + 456) = v78;
      *v78 = v0;
      sub_1000150F8(v78);
      sub_10000C6F0(v79);
      sub_10001ABA0();

      return AVAssetExportSession.export(to:as:isolation:)();
    }

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      *swift_slowAlloc() = 0;
      sub_10000F590(&_mh_execute_header, v70, v71, "Failed to create an export session");
      sub_100005F40();
    }

    v72 = *(v0 + 304);
    v73 = *(v0 + 288);

    type metadata accessor for AudioFileManagerError(0);
    sub_10000A090();
    sub_1002E13EC(v74, v75);
    sub_100007694();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_9:
    v55 = *(v0 + 264);
    v54 = *(v0 + 272);
    sub_10000F570();

    sub_100009EF4();
    sub_10001ABA0();

    __asm { BRAA            X1, X16 }
  }

  v86 = *(v0 + 296);
  v59 = *(v0 + 256);
  v58 = *(v0 + 264);
  v61 = *(v0 + 208);
  v60 = *(v0 + 216);
  v62 = *(v60 + 16);
  v60 += 16;
  v63 = *(v0 + 184) + ((*(v60 + 64) + 32) & ~*(v60 + 64)) + *(v60 + 56) * v21;
  *(v0 + 384) = v62;
  *(v0 + 392) = v60 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62(v58, v63, v61);
  sub_1002E13A8();
  v64 = sub_100005F80();
  (v62)(v64);
  v65 = sub_1004630C0(v59);
  *(v0 + 400) = v65;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1002DF6BC;
  swift_continuation_init();
  *(v0 + 136) = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
  sub_10000E630();
  *(v0 + 88) = 1107296256;
  sub_100018124(&unk_100625390);
  [v65 loadTracksWithMediaType:v86 completionHandler:?];
  sub_10001ABA0();

  return _swift_continuation_await(v66);
}

uint64_t sub_1002E037C()
{
  sub_100006810();
  v2 = *v1;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_100007BC8();
  *v8 = v7;
  *(v9 + 464) = v0;

  if (v0)
  {
    v10 = sub_1002E0A44;
  }

  else
  {
    v10 = sub_1002E04B0;
  }

  return _swift_task_switch(v10, 0, 0);
}

void sub_1002E04B0()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  (*(v0 + 368))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v8 = *(v0 + 304);
  v9 = *(v0 + 232);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  if (v5)
  {
    sub_100007BFC();
    v24 = v12;
    swift_slowAlloc();
    v23 = v7;
    v13 = sub_10000681C();
    v25 = v13;
    *v10 = 136446210;
    sub_1000082E0();
    sub_1002E13EC(v14, v15);
    v22 = v8;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v6(v9, v11);
    v19 = sub_10002741C(v16, v18, &v25);

    *(v10 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully exported concatenated audio file to url %{public}s", v10, 0xCu);
    sub_100009B7C(v13);
    sub_100005F40();
    sub_100006868();
  }

  else
  {

    v6(v9, v11);
  }

  (*(*(v0 + 216) + 32))(*(v0 + 176), *(v0 + 248), *(v0 + 208));
  sub_100018F34();

  sub_100009EF4();
  sub_10000D3E8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1002E0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v27;
  a22 = v28;
  a20 = v22;
  v29 = v22[51];
  swift_willThrow();
  v30 = v22[51];
  sub_10000F2F8();
  v31 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v24 = sub_10000681C();
    a11 = v24;
    sub_10002F608(4.8751e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v32 = String.init<A>(reflecting:)();
    v25 = v33;
    sub_10002741C(v32, v33, &a11);
    sub_100018F58();
    *(v23 + 4) = v26;
    sub_100010254();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v39 = sub_10000FD84();
  v40(v39);
  v42 = v22[33];
  v41 = v22[34];
  sub_10000F570();

  sub_100009EF4();
  sub_100017C90();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002E08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C1D0();
  a21 = v27;
  a22 = v28;
  a20 = v22;

  v29 = *(v22 + 440);
  sub_10000F2F8();
  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F94();
  if (sub_10000F96C())
  {
    sub_100007BFC();
    swift_slowAlloc();
    v24 = sub_10000681C();
    a11 = v24;
    sub_10002F608(4.8751e-34);
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v31 = String.init<A>(reflecting:)();
    v25 = v32;
    sub_10002741C(v31, v32, &a11);
    sub_100018F58();
    *(v23 + 4) = v26;
    sub_100010254();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  sub_10000A6C8();
  v38 = sub_10000FD84();
  v39(v38);
  v41 = *(v22 + 264);
  v40 = *(v22 + 272);
  sub_10000F570();

  sub_100009EF4();
  sub_100017C90();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002E0A44()
{
  v39 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 376);
  v3 = *(v0 + 280);
  (*(v0 + 368))(*(v0 + 224), *(v0 + 248), *(v0 + 208));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 464);
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v36 = *(v0 + 216) + 8;
    v37 = *(v0 + 448);
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136446466;
    sub_1000082E0();
    sub_1002E13EC(v10, v11);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v37(v7, v8);
    v15 = sub_10002741C(v12, v14, &v38);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    *(v0 + 168) = v6;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100007694();
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v38);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error exporting concatenated audio file to URL %{public}s with error %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    sub_100005F64();
    sub_100006868();
  }

  else
  {
    v19 = *(v0 + 448);
    v21 = *(v0 + 216);
    v20 = *(v0 + 224);
    v22 = *(v0 + 208);

    v19(v20, v22);
  }

  v23 = *(v0 + 464);
  v24 = *(v0 + 448);
  v25 = *(v0 + 360);
  v26 = *(v0 + 304);
  v27 = *(v0 + 288);
  v28 = *(v0 + 248);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216) + 8;
  swift_willThrow();

  v24(v28, v29);
  v31 = *(v0 + 464);
  v33 = *(v0 + 264);
  v32 = *(v0 + 272);
  sub_10000F570();

  sub_100009EF4();

  return v34();
}

uint64_t sub_1002E0D34()
{
  v0 = type metadata accessor for URL();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v24 = 0xD000000000000013;
  v25 = 0x8000000100566860;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v12 + 8))(v17, v9);
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 1630825774;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_1002E0F24()
{
  sub_10028D1D8(v0 + OBJC_IVAR____TtC13callservicesd16AudioFileManager_serialQueue);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1002E0FB0()
{
  sub_10028BCA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002E1040()
{
  v1 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  v9 = &v18 - v8;
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC13callservicesd16AudioFileManager_serialQueue;
  v16 = type metadata accessor for TaskPriority();
  sub_10000AF74(v14, 1, 1, v16);
  (*(v4 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v14, v9, v0 + v15);
  return v0;
}

uint64_t sub_1002E118C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1002E1238;

  return sub_1002DED80(a1, v5, v4);
}

uint64_t sub_1002E1238()
{
  sub_100006810();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100007BC8();
  *v3 = v2;

  sub_100009EF4();

  return v4();
}

uint64_t sub_1002E1320(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E13A8()
{
  result = qword_1006A3FC8;
  if (!qword_1006A3FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3FC8);
  }

  return result;
}

uint64_t sub_1002E13EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002E1438()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002E14AC(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

id sub_1002E14CC()
{
  type metadata accessor for FaceTimeLivePhotosIDSService();
  result = sub_1003A03A0();
  qword_1006A4088 = result;
  return result;
}

id sub_1002E153C()
{
  if (qword_1006A07C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A4088;

  return v1;
}

id sub_1002E1598(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeLivePhotosIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1002E168C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceTimeLivePhotosIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002E16E8(char a1)
{
  if (a1)
  {
    return 0x656E6F6850;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t sub_1002E172C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100620588, v3);
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

uint64_t sub_1002E17A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E172C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E17D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002E16E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002E1814()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000082F8();
  v8[0] = v4;
  v8[1] = v3;
  AnyHashable.init<A>(_:)();
  sub_100006600(v7, v2);

  sub_100006780(v7);
  if (v8[3])
  {
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    if (sub_10000E980())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v8);
    return 0;
  }
}

id sub_1002E1924(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    Array._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1002E1994()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000082F8();
  v8[0] = v4;
  v8[1] = v3;
  AnyHashable.init<A>(_:)();
  sub_100006600(v7, v2);

  sub_100006780(v7);
  if (v8[3])
  {
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    if (sub_10000E980())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v8);
    return 0;
  }
}

uint64_t sub_1002E1AA4()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000F5D0();
  v8[0] = v4;
  v8[1] = v3;
  AnyHashable.init<A>(_:)();
  sub_100006600(v7, v2);

  sub_100006780(v7);
  if (v8[3])
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004975C(v8);
    return 0;
  }
}

id sub_1002E1BB4(void *a1)
{
  v2 = a1;
  v3 = sub_10000667C();
  v4 = sub_1002E1DEC(v3);

  if (v4)
  {
    Array._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1002E1C38(uint64_t a1)
{
  v2 = v1;
  sub_1000082F8();
  *&v43 = v5;
  *(&v43 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v6 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  }

  else
  {
    v6 = 0;
    *(&v43 + 1) = 0;
    v44 = 0;
  }

  *&v43 = a1;
  v45 = v6;
  v7 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6)
  {
    sub_10003EBF0(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v9);
    sub_100006780(v46);
  }

  else
  {
    sub_10004975C(&v43);
    sub_1000067D4();
    if (v10)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v11 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v19 = sub_10000A6F0(v11, v12, v13, v14, v15, v16, v17, v18, v36, v39);
      v27 = sub_10000F5B0(v19, v20, v21, v22, v23, v24, v25, v26, v37, v40);
      sub_10000E64C(v27, v28, v29, v30, v31, v32, v33, v34, v38, v41, v42[0]);
      sub_10001711C();
    }

    else
    {
      memset(v42, 0, sizeof(v42));
    }

    sub_100006780(v46);
    sub_10004975C(v42);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v35, "setUserInfo:");
}

uint64_t sub_1002E1DEC(SEL *a1)
{
  v5.super_class = UNMutableNotificationContent;
  v1 = objc_msgSendSuper2(&v5, *a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1002E1E70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void sub_1002E1EF4(uint64_t a1)
{
  v2 = v1;
  sub_1000082F8();
  *&v43 = v5;
  *(&v43 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v6 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  }

  else
  {
    v6 = 0;
    *(&v43 + 1) = 0;
    v44 = 0;
  }

  *&v43 = a1;
  v45 = v6;
  v7 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6)
  {
    sub_10003EBF0(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v9);
    sub_100006780(v46);
  }

  else
  {
    sub_10004975C(&v43);
    sub_1000067D4();
    if (v10)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v11 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v19 = sub_10000A6F0(v11, v12, v13, v14, v15, v16, v17, v18, v36, v39);
      v27 = sub_10000F5B0(v19, v20, v21, v22, v23, v24, v25, v26, v37, v40);
      sub_10000E64C(v27, v28, v29, v30, v31, v32, v33, v34, v38, v41, v42[0]);
      sub_10001711C();
    }

    else
    {
      memset(v42, 0, sizeof(v42));
    }

    sub_100006780(v46);
    sub_10004975C(v42);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v35, "setUserInfo:");
}

id sub_1002E20B4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    String._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1002E2130()
{
  v4.super_class = UNMutableNotificationContent;
  v0 = objc_msgSendSuper2(&v4, "notificationProviderIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_1002E222C(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_10000F5D0();
  *&v46 = v7;
  *(&v46 + 1) = v6;
  AnyHashable.init<A>(_:)();
  if (a2)
  {
    v8 = &type metadata for String;
    v9 = a2;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v8 = 0;
    v47 = 0;
  }

  *&v46 = a1;
  *(&v46 + 1) = v9;
  v48 = v8;
  v10 = [v3 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
    sub_10003EBF0(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000A0A8(isUniquelyReferenced_nonNull_native, v12);
    sub_100006780(v49);
  }

  else
  {
    sub_10004975C(&v46);
    sub_1000067D4();
    if (v13)
    {
      sub_100010264();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10001511C();
      v14 = sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v22 = sub_10000A6F0(v14, v15, v16, v17, v18, v19, v20, v21, v39, v42);
      v30 = sub_10000F5B0(v22, v23, v24, v25, v26, v27, v28, v29, v40, v43);
      sub_10000E64C(v30, v31, v32, v33, v34, v35, v36, v37, v41, v44, v45[0]);
      sub_10001711C();
    }

    else
    {
      memset(v45, 0, sizeof(v45));
    }

    sub_100006780(v49);
    sub_10004975C(v45);
  }

  Dictionary._bridgeToObjectiveC()();
  sub_100010264();

  sub_10000F5E4(v38, "setUserInfo:");
}

id sub_1002E23D4(void *a1)
{
  v3 = [v1 content];
  [v3 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &unk_1006A40C0, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v4 = sub_1002E2AF8([v1 content], &selRef_remoteParticipantHandles);
  if (!v4)
  {

LABEL_11:
    v11 = v1;
    return v1;
  }

  v5 = v4;
  v6 = sub_1002E2AF8([v1 content], &selRef_activeParticipantHandles);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (!v7[2])
  {
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 filterStatusForAddresses:isa withBundleIdentifier:v9];

  if (v10 == 3)
  {

    return 0;
  }

  else
  {
    [v25 setShouldIgnoreDowntime:v10 == 0];
    if (v5[2] != 1)
    {
      goto LABEL_19;
    }

    v14 = v5[4];
    v13 = v5[5];

    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = String._bridgeToObjectiveC()();
      v18 = sub_1002E2B58(v16, v14, v13, v17, a1);

      if (v18)
      {
        v19 = String._bridgeToObjectiveC()();
        sub_10000F5E4(v19, "setThreadIdentifier:");
      }
    }

    else
    {
LABEL_19:
    }

    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v20 = [v1 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = v25;
    v1 = sub_1002E2718(v21, v23, v24, [v1 trigger], objc_msgSend(v1, "destinations"));
  }

  return v1;
}

id sub_1002E2718(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v8 content:a3 trigger:a4 destinations:a5];

  return v9;
}

uint64_t sub_1002E27A4()
{
  v1 = [v0 notification];
  v2 = [v1 request];

  v3 = [v2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1002E283C()
{
  v1 = [v0 notification];
  v2 = [v1 request];

  v3 = [v2 content];
  v4 = [v3 userInfo];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_1002E2924()
{
  v1 = [v0 actionIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

_BYTE *storeEnumTagSinglePayload for NotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002E2AA4()
{
  result = qword_1006A40B8;
  if (!qword_1006A40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A40B8);
  }

  return result;
}

uint64_t sub_1002E2AF8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id sub_1002E2B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 isUnknownAddress:a1 normalizedAddress:v8 forBundleIdentifier:a4];

  return v9;
}

id sub_1002E2BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A710(a1, a2, a3);
  v3 = String._bridgeToObjectiveC()();
  String.utf8CString.getter();
  v4 = CUTWeakLinkSymbol();

  if (v4)
  {
    v6 = *v4;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002E2C4C()
{
  v0 = sub_1002E2BD4(0xD000000000000020, 0x8000000100566F00, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA1E0 = v1;
  *algn_1006BA1E8 = v3;
}

void sub_1002E2CCC()
{
  v0 = sub_1002E2BD4(0xD00000000000001CLL, 0x8000000100566F30, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA1F0 = v1;
  *algn_1006BA1F8 = v3;
}

void sub_1002E2D4C()
{
  v0 = sub_1002E2BD4(0xD000000000000021, 0x8000000100566ED0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA200 = v1;
  *algn_1006BA208 = v3;
}

void sub_1002E2DCC()
{
  v0 = sub_1002E2BD4(0xD000000000000028, 0x8000000100566EA0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA210 = v1;
  *algn_1006BA218 = v3;
}

void sub_1002E2E4C()
{
  v0 = sub_1002E2BD4(0xD000000000000026, 0x8000000100566E70, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA220 = v1;
  *algn_1006BA228 = v3;
}

void sub_1002E2ECC()
{
  v0 = sub_1002E2BD4(0xD00000000000002FLL, 0x8000000100566D80, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA230 = v1;
  *algn_1006BA238 = v3;
}

void sub_1002E2F4C()
{
  v0 = sub_1002E2BD4(0xD00000000000002DLL, 0x8000000100566D50, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA240 = v1;
  *algn_1006BA248 = v3;
}

void sub_1002E2FCC()
{
  v0 = sub_1002E2BD4(0xD000000000000029, 0x8000000100566DB0, 0x707845616964654DLL);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_1006BA250 = v1;
  *algn_1006BA258 = v3;
}

void sub_1002E304C()
{
  sub_10000830C();
  v2 = sub_1002E2BD4(0xD000000000000032, v0, v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_1006BA260 = v3;
  *algn_1006BA268 = v5;
}

void sub_1002E30A8()
{
  sub_10000830C();
  v2 = sub_1002E2BD4(0xD000000000000042, v0, v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_1006BA270 = v3;
  *algn_1006BA278 = v5;
}

id sub_1002E3104(uint64_t a1, id a2)
{
  result = [a2 sessionBasedMutingEnabled];
  if (result)
  {
    if ((*(a1 + 154) & 1) != 0 || (v4 = objc_opt_self(), v5 = [v4 isMicrophoneMuted], v6 = *(a1 + 153), v5 == v6))
    {
      v12 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v13 = sub_100009F00();
      *(v13 + 16) = xmmword_10057D690;
      v14 = *(a1 + 153);
      *(v13 + 56) = &type metadata for Bool;
      *(v13 + 64) = &protocol witness table for Bool;
      *(v13 + 32) = v14;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v7 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v8 = sub_100009F00();
      *(v8 + 16) = xmmword_10057D690;
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_100009D88();
      *(v8 + 32) = v9;
      *(v8 + 40) = v11;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return [v4 setMicrophoneMuted:v6];
    }
  }

  return result;
}

void *sub_1002E32EC(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000045;
  v5 = _swiftEmptyDictionarySingleton;
  if (*(a1 + 152))
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 148);
  v7 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *&v71 = *v2;
  sub_10026D814(&qword_1006A41C8, &unk_10057F008);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for Int32;
  *(v8 + 104) = &protocol witness table for Int32;
  *(v8 + 72) = v6;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v5 = _swiftEmptyDictionarySingleton;
  if ((v6 - 1) < 2)
  {
    *(&v72 + 1) = &type metadata for Bool;
    LOBYTE(v71) = 0;
    goto LABEL_6;
  }

  if ((v6 - 3) < 2)
  {
    *(&v72 + 1) = &type metadata for Bool;
    LOBYTE(v71) = 1;
LABEL_6:
    sub_10003EBF0(&v71, v70);
    swift_isUniquelyReferenced_nonNull_native();
    v74 = _swiftEmptyDictionarySingleton;
    sub_100040430();
    v5 = v74;
    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    v12 = sub_1002E3FC4(a1);
    v2 = &type metadata for Int;
    *(&v72 + 1) = &type metadata for Int;
    *&v71 = v12;
    sub_10003EBF0(&v71, v70);
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v5;
    sub_100040430();
    v13 = v74;
    v14 = *(a1 + 53);
    *(&v72 + 1) = &type metadata for Bool;
    LOBYTE(v71) = v14;
    sub_10003EBF0(&v71, v70);
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v13;
    sub_100040430();
    v4 = v74;
    if (qword_1006A07D8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

  type metadata accessor for TUTelephonyCallSubType(0);
  LODWORD(v71) = v6;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
LABEL_49:
  swift_once();
LABEL_8:
  v15 = *(a1 + 16);
  v74 = v15;
  if (v15)
  {
    type metadata accessor for Mode(0);
    *(&v72 + 1) = v16;
    *&v71 = v15;
    sub_10003EBF0(&v71, v70);

    sub_1002E4CF4(&v74, &v73, &qword_1006A9E80);
    swift_isUniquelyReferenced_nonNull_native();
    v73 = _swiftEmptyDictionarySingleton;
    sub_100040430();

    v17 = v73;
  }

  else
  {
    v71 = 0u;
    v72 = 0u;

    sub_1002E4CF4(&v74, v70, &qword_1006A9E80);
    sub_1000099A4(&v71, &unk_1006A2D10, &unk_10057D940);
    v17 = _swiftEmptyDictionarySingleton;
    v18 = sub_100005208();
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = _swiftEmptyDictionarySingleton;
      v22 = _swiftEmptyDictionarySingleton[3];
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v17 = v73;
      v23 = *(v73[6] + 16 * v20 + 8);

      sub_10003EBF0((v17[7] + 32 * v20), v70);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v70, 0, sizeof(v70));
    }

    sub_1000099A4(v70, &unk_1006A2D10, &unk_10057D940);
  }

  if (qword_1006A07D0 != -1)
  {
    swift_once();
  }

  v73 = *(a1 + 8);
  v24 = v73;
  type metadata accessor for Category(0);
  *(&v72 + 1) = v25;
  *&v71 = v24;
  sub_10003EBF0(&v71, v70);

  sub_1002E4D50(&v73, &v69);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v17;
  sub_100040430();

  v26 = v69;
  if (qword_1006A07E0 != -1)
  {
    swift_once();
  }

  v27 = 10;
  if (!*(a1 + 50))
  {
    v27 = 0;
  }

  *(&v72 + 1) = v2;
  *&v71 = v27;
  sub_10003EBF0(&v71, v70);

  swift_isUniquelyReferenced_nonNull_native();
  v69 = v26;
  sub_100040430();

  v28 = v69;
  if (qword_1006A07E8 != -1)
  {
    swift_once();
  }

  v29 = *(a1 + 40);
  if (v29 == 1)
  {

    v30 = sub_100005208();
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v28;
      v34 = v28[3];
      sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v33, v34);
      v28 = *&v70[0];
      v35 = *(*(*&v70[0] + 48) + 16 * v32 + 8);

      sub_10003EBF0((v28[7] + 32 * v32), &v71);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_1000099A4(&v71, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    v36 = *(a1 + 32);
    v37 = *(a1 + 24) & 1 | (*(a1 + 28) << 32);
    v38 = v4;
    if (*(a1 + 49))
    {
      v39 = 256;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39 & 0xFFFE | *(a1 + 48) & 1;

    v41 = v40;
    v4 = v38;
    v42 = sub_100048CB4(v37, v36, v29, v41);
    *(&v72 + 1) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v71 = v42;
    sub_10003EBF0(&v71, v70);
    swift_isUniquelyReferenced_nonNull_native();
    v69 = v28;
    sub_100040430();

    v28 = v69;
  }

  if (qword_1006A07F0 != -1)
  {
    swift_once();
  }

  v43 = *(a1 + 52);
  *(&v72 + 1) = &type metadata for Bool;
  LOBYTE(v71) = v43;
  sub_10003EBF0(&v71, v70);

  swift_isUniquelyReferenced_nonNull_native();
  v69 = v28;
  sub_100040430();

  v44 = v69;
  if (qword_1006A0810 != -1)
  {
    swift_once();
  }

  v45 = objc_allocWithZone(NSNumber);

  v46 = [v45 initWithBool:1];
  v47 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  *(&v72 + 1) = v47;
  *&v71 = v46;
  sub_10003EBF0(&v71, v70);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v44;
  sub_100040430();

  v48 = v69;
  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v49 = objc_allocWithZone(NSNumber);

  v50 = [v49 initWithBool:1];
  *(&v72 + 1) = v47;
  *&v71 = v50;
  sub_10003EBF0(&v71, v70);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v48;
  sub_100040430();

  v51 = v69;
  v52 = sub_1002E2BD4(0xD00000000000002CLL, 0x8000000100566C80, 0x707845616964654DLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = [objc_allocWithZone(NSNumber) initWithBool:*(a1 + 57)];
  *(&v72 + 1) = v47;
  *&v71 = v53;
  sub_10003EBF0(&v71, v70);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v51;
  sub_100040430();

  v54 = v69;
  if ((*(a1 + 120) & 1) == 0)
  {
    v55 = *(a1 + 136);
    if (v55)
    {
      v56 = *(a1 + 128);
      v57 = qword_1006A0808;
      v58 = *(a1 + 136);

      if (v57 != -1)
      {
        swift_once();
      }

      v68 = v4;
      sub_10026D814(&unk_1006A41B0, &unk_10057EFF8);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_10057D690;
      sub_10026D814(&unk_1006A39A0, &unk_10057D700);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_10057D6A0;
      v61 = qword_1006A07F8;

      if (v61 != -1)
      {
        swift_once();
      }

      v62 = *algn_1006BA238;
      *(v60 + 32) = qword_1006BA230;
      *(v60 + 40) = v62;
      v63 = objc_opt_self();

      v64 = *(a1 + 104);
      v71 = *(a1 + 88);
      v72 = v64;
      v65 = [v63 tu_dataForAuditToken:&v71];
      *(v60 + 72) = sub_100006AF0(0, &qword_1006A41C0, NSData_ptr);
      *(v60 + 48) = v65;
      if (qword_1006A0800 != -1)
      {
        swift_once();
      }

      v66 = *algn_1006BA248;
      *(v60 + 80) = qword_1006BA240;
      *(v60 + 88) = v66;
      *(v60 + 120) = &type metadata for String;
      *(v60 + 96) = v56;
      *(v60 + 104) = v55;

      *(v59 + 32) = Dictionary.init(dictionaryLiteral:)();
      *(&v72 + 1) = sub_10026D814(&qword_1006AA7C0, &unk_100586600);
      *&v71 = v59;
      sub_10003EBF0(&v71, v70);
      swift_isUniquelyReferenced_nonNull_native();
      v69 = v54;
      sub_100040430();

      v4 = v68;
      v54 = v69;
    }
  }

  *(&v72 + 1) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *&v71 = v54;
  sub_10003EBF0(&v71, v70);
  swift_isUniquelyReferenced_nonNull_native();
  v69 = v4;
  sub_100040430();
  return v69;
}

uint64_t sub_1002E3FC4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 < 5)
  {
    return qword_10057F018[v1];
  }

  v3 = *(a1 + 64);
  type metadata accessor for CSDAudioInterruptionOperationMode(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E4028(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);

  v4(a1);
}

void sub_1002E407C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1002E32EC(__src);
  v3 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = sub_100009F00();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *(v4 + 64) = sub_1002E4C04();
  *(v4 + 32) = v2;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v5 = objc_opt_self();
  sub_10003E7C0(v2);
  v7 = v6;

  sub_1002E4C68(v7, v5);
  v8 = sub_100010B20();
  v9 = sub_100009F00();
  *(v9 + 16) = xmmword_10057D690;
  __srca[0] = *(__src + 55);
  v10 = __srca[0];
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v9 + 56) = &type metadata for String;
  v14 = sub_100009D88();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v5 setMixingVoiceWithMediaEnabled:v10];
  v15 = sub_100010B20();
  v16 = sub_100009F00();
  *(v16 + 16) = xmmword_10057D690;
  __srca[0] = *(__src + 58);
  v17 = String.init<A>(reflecting:)();
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v14;
  v18 = v14;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1002E4028(__src);
  v20 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v21 = *(__src + 56);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = dispatch_semaphore_create(0);
  }

  v23 = swift_allocObject();
  sub_1002BA0C4(__srca);
  memcpy((v23 + 16), __srca, 0xA8uLL);
  v24 = swift_allocObject();
  memcpy(v24 + 2, __src, 0xA8uLL);
  v24[23] = v23;
  v24[24] = v22;
  aBlock[4] = sub_1002E4CE8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003541FC;
  aBlock[3] = &unk_1006254F8;
  v25 = _Block_copy(aBlock);

  sub_100042F60(__src, v37);
  v26 = v22;

  [v5 startAudioSessionWithCompletionHandler:v25];
  _Block_release(v25);
  if (v22)
  {
    v27 = v26;
    OS_dispatch_semaphore.wait()();
  }

  swift_beginAccess();
  memcpy(aBlock, (v23 + 16), sizeof(aBlock));
  memcpy(v37, (v32 + 40), sizeof(v37));
  memcpy((v32 + 40), (v23 + 16), 0xA8uLL);
  sub_1002E4CF4(aBlock, v35, &unk_1006A41A0);
  sub_1000099A4(v37, &unk_1006A41A0, &qword_10057EFE0);
  if (v21)
  {
    v28 = sub_100010B20();
    v29 = sub_100009F00();
    *(v29 + 16) = xmmword_10057D690;
    memcpy(v35, __src, sizeof(v35));
    sub_100042F60(__src, v34);
    v30 = String.init<A>(reflecting:)();
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v18;
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    memcpy(v34, __dst, sizeof(v34));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    memcpy(v35, (v32 + 40), sizeof(v35));
    memcpy((v32 + 40), v34, 0xA8uLL);
    sub_1000099A4(v35, &unk_1006A41A0, &qword_10057EFE0);
    sub_100042F60(__src, v33);
  }

  else
  {
  }
}

uint64_t sub_1002E4610(char a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (!a2)
  {
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 code];

  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 domain];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (a1)
  {
    goto LABEL_17;
  }

  if (v11 != 32025)
  {
    goto LABEL_14;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v16)
  {
    goto LABEL_14;
  }

  if (v14 != v17 || v16 != v18)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_18;
    }

LABEL_15:
    v21 = sub_100010B20();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057D690;
    v23 = sub_1002910C8(a2);
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100009D88();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:type:_:)();

    sub_1002BA0C4(v32);
    goto LABEL_19;
  }

LABEL_17:

LABEL_18:
  v26 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  memcpy(__srca, __dst, sizeof(__srca));
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  v27 = objc_opt_self();
  sub_100042F60(__src, v30);
  v28 = [v27 defaultCenter];
  [v28 postNotificationName:TUCallAudioStackReadyNotification object:0];

  memcpy(v32, __srca, sizeof(v32));
LABEL_19:
  swift_beginAccess();
  memcpy(__srca, (a4 + 16), sizeof(__srca));
  memcpy((a4 + 16), v32, 0xA8uLL);
  sub_1002E4CF4(v32, v30, &unk_1006A41A0);
  sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  if (a5)
  {
    OS_dispatch_semaphore.signal()();
  }

  return sub_1000099A4(v32, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t sub_1002E4970()
{
  v1 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = objc_opt_self();
  [v2 setMixingVoiceWithMediaEnabled:0];
  v3 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v2 stopAudioSession];
  [v2 resetAudioSessionOutputPortOverride];
  sub_1002BA0C4(v5);
  memcpy(__dst, (v0 + 40), sizeof(__dst));
  memcpy((v0 + 40), v5, 0xA8uLL);
  return sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t sub_1002E4AAC()
{
  v1 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1002BA0C4(__src);
  memcpy(__dst, (v0 + 40), 0xA8uLL);
  memcpy((v0 + 40), __src, 0xA8uLL);
  return sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
}

void *sub_1002E4B54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  memcpy(__dst, v0 + 5, sizeof(__dst));
  sub_1000099A4(__dst, &unk_1006A41A0, &qword_10057EFE0);
  return v0;
}

uint64_t sub_1002E4BAC()
{
  sub_1002E4B54();

  return _swift_deallocClassInstance(v0, 208, 7);
}

unint64_t sub_1002E4C04()
{
  result = qword_1006A3980;
  if (!qword_1006A3980)
  {
    sub_10026DCB4(&unk_1006A2A00, &unk_10057D710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3980);
  }

  return result;
}

void sub_1002E4C68(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setAudioSessionProperties:isa];
}

uint64_t sub_1002E4CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A710(a1, a2, a3);
  v7 = sub_10026D814(v5, v6);
  (*(*(v7 - 8) + 16))(v3, v4, v7);
  return v3;
}

uint64_t sub_1002E4D50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Category(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002E4DB4()
{
  type metadata accessor for FaceTimeMultiwayIDSService();
  result = sub_1003A03A0();
  qword_1006A41D0 = result;
  return result;
}

id sub_1002E4E24()
{
  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A41D0;

  return v1;
}

id sub_1002E4E80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeMultiwayIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1002E4F74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceTimeMultiwayIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002E4FD0()
{
  v1 = type metadata accessor for Handle.Kind();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = [v0 type];
  v11 = __chkstk_darwin(v9, v10);
  v12 = &enum case for Handle.Kind.generic(_:);
  if (v11 == 2)
  {
    v12 = &enum case for Handle.Kind.phoneNumber(_:);
  }

  if (v11 == 3)
  {
    v12 = &enum case for Handle.Kind.emailAddress(_:);
  }

  (*(v4 + 104))(&v16 - v8, *v12, v1);
  (*(v4 + 32))(&v16 - v8, &v16 - v8, v1);
  sub_10005104C(v0);
  if (!v13)
  {
    v14 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return Handle.init(type:value:displayName:)();
}

uint64_t sub_1002E5170()
{
  v1 = v0;
  v2 = type metadata accessor for Handle.Kind();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (!&enum case for Handle.Kind.generic(_:) || v11 != enum case for Handle.Kind.generic(_:))
  {
    if (&enum case for Handle.Kind.phoneNumber(_:) && v11 == enum case for Handle.Kind.phoneNumber(_:))
    {
      return 2;
    }

    if (&enum case for Handle.Kind.emailAddress(_:) && v11 == enum case for Handle.Kind.emailAddress(_:))
    {
      return 3;
    }

    (*(v5 + 8))(v10, v2);
  }

  return 1;
}

void sub_1002E52B8()
{
  sub_100005EF4();
  v1 = type metadata accessor for Locale();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007BAC();
  v10 = v8 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for LanguageManager();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  sub_10000F9FC();
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v22 = TUBundle();
  if (v22)
  {
    v23 = v22;
    sub_10001813C();
    v24._countAndFlagsBits = 0xD00000000000001FLL;
    v26 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v24, v25, v23, 0);

    v60 = v10;
    if (v26.value._object)
    {
      v27 = v14;
      v58 = v4;
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v28 = type metadata accessor for Logger();
      sub_1000075F0(v28, qword_1006BA640);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v1;
        v32 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v61[1] = v26.value._object;
        v62 = v55;
        *v32 = 136315394;
        countAndFlagsBits = v26.value._countAndFlagsBits;
        v61[0] = v26.value._countAndFlagsBits;

        v33 = String.init<A>(reflecting:)();
        v56 = v18;
        v35 = sub_10002741C(v33, v34, &v62);
        v59 = v15;
        v36 = v35;

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        static Locale.current.getter();
        v37 = v58;
        (v58[2])(v60, v27, v31);
        v38 = String.init<A>(reflecting:)();
        v40 = v39;
        (v37[1])(v27, v31);
        v41 = sub_10002741C(v38, v40, &v62);

        *(v32 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v29, v30, "startDisclosureUtterance:%s locale: %s", v32, 0x16u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();

        (*(v56 + 8))(v0, v59);
LABEL_12:
        sub_100005EDC();
        return;
      }
    }

    else
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v42 = type metadata accessor for Logger();
      sub_1000075F0(v42, qword_1006BA640);
      v29 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (sub_10000BB44(v43))
      {
        v44 = sub_100005274();
        countAndFlagsBits = v44;
        v58 = sub_100005E84();
        v61[0] = v58;
        *v44 = 136315138;
        static Locale.current.getter();
        (*(v4 + 16))(v60, v14, v1);
        v45 = String.init<A>(reflecting:)();
        v59 = v15;
        v46 = v4;
        v47 = v45;
        v48 = v14;
        v49 = v18;
        v51 = v50;
        (*(v46 + 8))(v48, v1);
        v52 = sub_10002741C(v47, v51, v61);

        v53 = countAndFlagsBits;
        *(countAndFlagsBits + 4) = v52;
        _os_log_impl(&_mh_execute_header, v29, v43, "Unable to localize start disclosure for locale %s. Not creating an outgoing message", v53, 0xCu);
        sub_100009B7C(v58);
        sub_100005F40();
        sub_100005F40();

        (*(v49 + 8))(v0, v59);
        goto LABEL_12;
      }
    }

    (*(v18 + 8))(v0, v15);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1002E57C8()
{
  sub_100005EF4();
  v0 = type metadata accessor for Locale();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for LanguageManager();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  sub_10000F9FC();
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v21 = TUBundle();
  if (v21)
  {
    v22 = v21;
    sub_10001813C();
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    object = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v23, v24, v22, 0).value._object;

    if (object)
    {
      v26 = *(v17 + 8);
      v27 = sub_100006884();
      v28(v27);
    }

    else
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v29 = type metadata accessor for Logger();
      sub_1000075F0(v29, qword_1006BA640);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (sub_10000BB44(v31))
      {
        v32 = sub_100005274();
        v44 = v31;
        v33 = v32;
        v43 = sub_100005E84();
        v45 = v43;
        *v33 = 136315138;
        static Locale.current.getter();
        (*(v3 + 16))(v9, v13, v0);
        v34 = String.init<A>(reflecting:)();
        v35 = v3;
        v37 = v36;
        (*(v35 + 8))(v13, v0);
        v38 = sub_10002741C(v34, v37, &v45);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v44, "Unable to localize start disclosure for locale %s. Not creating an outgoing message", v33, 0xCu);
        sub_100009B7C(v43);
        sub_100008AE8();
        sub_100005F40();
      }

      v39 = *(v17 + 8);
      v40 = sub_100006884();
      v41(v40);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E5AB4()
{
  sub_100005EF4();
  v86 = v0;
  v85 = v1;
  v2 = type metadata accessor for Locale();
  v91 = sub_100007FEC(v2);
  v92 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v91, v6);
  sub_100007BAC();
  v89 = (v7 - v8);
  __chkstk_darwin(v9, v10);
  v90 = &v77 - v11;
  v88 = type metadata accessor for LanguageManager();
  v12 = sub_100007FEC(v88);
  v83 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v87 = v18 - v17;
  v79 = type metadata accessor for URL();
  v19 = sub_100007FEC(v79);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v84 = (v26 - v25);
  sub_1002E52B8();
  v28 = v27;
  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v31 tu_defaults];
  v33 = sub_10026D814(&qword_1006A4390, &qword_10057F110);
  sub_100015D0C();
  v34 = swift_allocObject();
  v34[2] = 0xD000000000000021;
  v34[3] = 0x8000000100567100;
  v34[4] = v28;
  v34[5] = v30;
  v35 = v34;
  v34[6] = v32;
  sub_1002E57C8();
  v37 = v36;
  v39 = v38;
  v40 = [v31 tu_defaults];
  v82 = v33;
  sub_100015D0C();
  v41 = swift_allocObject();
  v41[2] = 0xD00000000000001FLL;
  v41[3] = 0x8000000100567130;
  v41[4] = v37;
  v41[5] = v39;
  v42 = v41;
  v41[6] = v40;
  if (qword_1006A0C58 != -1)
  {
    swift_once();
  }

  v43 = v79;
  v44 = sub_10000AF9C(v79, qword_1006BAA60);
  v45 = v84;
  (*(v21 + 16))(v84, v44, v43);
  v46 = [v31 tu_defaults];
  v47 = type metadata accessor for FileChecksum();
  sub_100015D0C();
  swift_allocObject();
  v48 = sub_1003FCFE8(0xD00000000000001ALL, 0x8000000100567150, v45, v46);
  if (v48)
  {
    v49 = &off_10062EC60;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v96 = 0;
    v97 = 0;
  }

  v95 = v48;
  v98 = v47;
  v99 = v49;
  v84 = v48;

  v50 = sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  v51 = swift_allocObject();
  v52 = type metadata accessor for DisclosureDataSource();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  v94[3] = v82;
  v94[4] = &off_10062EC60;
  v93[4] = &off_10062EC60;
  v94[0] = v35;
  v93[3] = v82;
  v93[0] = v42;
  v56 = objc_allocWithZone(TUFeatureFlags);
  v81 = v35;

  v80 = v42;

  v57 = v85;
  v58 = v86;
  [v56 init];
  LanguageManager.init(featureFlags:)();
  *(v55 + 2) = v58;
  *(v55 + 3) = v50;
  *(v55 + 4) = &off_100621DD8;
  *&v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_speechAssetManager] = v57;
  sub_1002E86CC(&v95, &v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum]);
  sub_100009AB0(v94, &v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum]);
  sub_100009AB0(v93, &v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum]);
  *&v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities] = v51;
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = v50[13];
  v50[12] = sub_1002E873C;
  v50[13] = v59;
  swift_unknownObjectRetain_n();
  v61 = v57;
  v62 = v58;
  v86 = v62;

  swift_unknownObjectRelease();

  v63 = *&v61[OBJC_IVAR___CSDSpeechAssetManager_delegates];
  v85 = v61;
  [v63 addObject:v55];
  sub_1002E6380();
  sub_1002E7308();

  swift_unknownObjectRelease();

  sub_100009A5C(&v95, &qword_1006A4398, &qword_10057F118);
  sub_100009B7C(v93);
  sub_100009B7C(v94);
  v64 = OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager;
  v65 = v83;
  v77 = *(v83 + 16);
  v67 = v87;
  v66 = v88;
  v77(v87, &v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager], v88);

  v68 = v90;
  static Locale.current.getter();
  v82 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v78 = v69;
  v79 = v70;
  v71 = v91;
  v72 = *(v92 + 8);
  v92 += 8;
  v72(v68, v91);
  v73 = *(v65 + 8);
  v73(v67, v66);
  v77(v67, &v55[v64], v66);
  v74 = v89;
  static Locale.current.getter();
  LanguageManager.mappedASRLocale(for:useCase:)();
  v72(v74, v71);
  v73(v67, v66);
  v75 = *&v55[OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_speechAssetManager];

  v95 = Locale.identifier.getter();
  v96 = v76;
  v97 = v82;
  v98 = v78;
  v99 = v79;
  sub_100299234();

  v72(v68, v91);
  sub_100005EDC();
}

id sub_1002E624C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  v1 = type metadata accessor for SiriSpeechSynthesizer();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = sub_1002E8744(v0, 0, v4);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    type metadata accessor for SiriSpeechService();
    v8 = swift_allocObject();
    return sub_1002E88C0(v5, sub_10027124C, 0, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E631C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002E6380();
    sub_1002E7308();
  }

  return result;
}

void sub_1002E6380()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007BAC();
  __chkstk_darwin(v11, v12);
  v14 = &v102 - v13;
  v15 = *(*(sub_10026D814(&qword_1006A5360, &qword_10057CB80) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v16, v17);
  v19 = &v102 - v18;
  v20 = type metadata accessor for URL();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007BAC();
  v114 = (v27 - v28);
  __chkstk_darwin(v29, v30);
  v32 = &v102 - v31;
  v113 = type metadata accessor for DisclosureDataSource();
  sub_1002E52B8();
  if (v34)
  {
    v107 = v33;
    v108 = v32;
    v109 = v34;
    sub_100009AB0(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum, v122);
    v35 = v123;
    v36 = v124;
    sub_100009B14(v122, v123);
    sub_1000112FC(v36);
    if ((v37(v35, v36) & 1) == 0)
    {
      sub_1002E86CC(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, &v119);
      v38 = v120;
      if (v120)
      {
        v39 = v121;
        sub_100009B14(&v119, v120);
        sub_1000112FC(v39);
        v41 = v40(v38, v39);
        sub_100009B7C(&v119);
        if ((v41 & 1) == 0 && (v3 & 1) == 0)
        {
          sub_100010270();
          sub_1002E7A58();
          if (v42)
          {

            if (qword_1006A0B40 != -1)
            {
              sub_1000080FC();
            }

            v43 = type metadata accessor for Logger();
            sub_1000075F0(v43, qword_1006BA640);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v44, v45))
            {
              *sub_100006DC4() = 0;
              sub_100008A90(&_mh_execute_header, v46, v47, "Not regenerating start recording disclosure");
              sub_10000E668();
            }

LABEL_30:
            sub_100009B7C(v122);
            goto LABEL_31;
          }

          v41 = 0;
        }

LABEL_21:
        if (qword_1006A0B40 != -1)
        {
          sub_1000080FC();
        }

        HIDWORD(v104) = v41;
        v61 = type metadata accessor for Logger();
        sub_1000075F0(v61, qword_1006BA640);
        sub_10000D724();

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();

        v64 = os_log_type_enabled(v62, v63);
        v112 = v3;
        v106 = v20;
        v105 = v23;
        if (v64)
        {
          LODWORD(v103) = v63;
          v65 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v118 = v102;
          *v65 = 136315906;
          v67 = v120;
          v66 = v121;
          sub_100009B14(&v119, v120);
          sub_1000112FC(v66);
          LOBYTE(v115[0]) = v68(v67, v66) & 1;
          v69 = String.init<A>(reflecting:)();
          v71 = sub_100017CAC(v69, v70);

          *(v65 + 4) = v71;
          *(v65 + 12) = 2080;
          sub_1002E86CC(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, v115);
          v72 = v116;
          v73 = v19;
          if (v116)
          {
            v74 = v117;
            sub_100009B14(v115, v116);
            sub_1000112FC(v74);
            LOBYTE(v74) = v75(v72, v74);
            sub_100009B7C(v115);
            LOBYTE(v115[0]) = v74 & 1;
            v76 = String.init<A>(reflecting:)();
            v78 = v77;
          }

          else
          {
            sub_100009A5C(v115, &qword_1006A4398, &qword_10057F118);
            v78 = 0xE300000000000000;
            v76 = 7104878;
          }

          v79 = sub_10002741C(v76, v78, &v118);

          *(v65 + 14) = v79;
          *(v65 + 22) = 2080;
          sub_100010270();
          sub_1002E7A58();
          LOBYTE(v115[0]) = v80 & 1;
          v81 = String.init<A>(reflecting:)();
          v83 = sub_10002741C(v81, v82, &v118);

          *(v65 + 24) = v83;
          *(v65 + 32) = 2080;
          LOBYTE(v115[0]) = v112 & 1;
          v84 = String.init<A>(reflecting:)();
          v86 = sub_10002741C(v84, v85, &v118);

          *(v65 + 34) = v86;
          _os_log_impl(&_mh_execute_header, v62, v103, "Regenerating start disclosure because startDisclosureUtterance:%s beep: %s fileExists:%s force: %s", v65, 0x2Au);
          swift_arrayDestroy();
          sub_100005F40();
          sub_10000E668();
        }

        else
        {
          v73 = v19;

          sub_100009B7C(&v119);
        }

        v87 = *(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities);
        v88 = v1[2];
        v103 = "stopRecordingDisclosure";

        v102 = v88;
        v89 = v108;
        sub_1002E6CA4();
        static Locale.current.getter();
        sub_10000AF74(v73, 0, 1, v4);
        v91 = v1[3];
        v90 = v1[4];
        swift_unknownObjectRetain();
        v92 = v114;
        sub_1002E6CA4();
        sub_10000D724();
        v93 = swift_allocObject();
        v94 = v107;
        v93[2] = v1;
        v93[3] = v94;
        v95 = v109;
        v93[4] = v109;
        sub_10002F0C8(&v119, (v93 + 5));

        BYTE1(v100) = BYTE4(v104) & 1;
        LOBYTE(v100) = v112 & 1;
        v99 = v90;
        v96 = v102;
        sub_100463470(v102, v94, v95, 0xD000000000000018, v103 | 0x8000000000000000, v89, v73, v91, v99, v92, v100, sub_1002E8B1C, v93, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v113, v114);

        swift_unknownObjectRelease();

        v97 = *(v105 + 8);
        v98 = v106;
        v97(v92, v106);
        sub_100009A5C(v73, &qword_1006A5360, &qword_10057CB80);
        v97(v89, v98);
        goto LABEL_30;
      }

      sub_100009A5C(&v119, &qword_1006A4398, &qword_10057F118);
    }

    v41 = 1;
    goto LABEL_21;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v48 = type metadata accessor for Logger();
  sub_1000075F0(v48, qword_1006BA640);
  v114 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v114, v49))
  {
    v50 = sub_100005274();
    v51 = sub_100005E84();
    v122[0] = v51;
    *v50 = 136315138;
    static Locale.current.getter();
    v52 = *(v7 + 16);
    v53 = sub_100006884();
    v54(v53);
    v55 = String.init<A>(reflecting:)();
    v57 = v56;
    (*(v7 + 8))(v14, v4);
    v58 = sub_10002741C(v55, v57, v122);

    *(v50 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v114, v49, "Unable to localize start disclosure for locale %s. Not creating start recording disclosure", v50, 0xCu);
    sub_100009B7C(v51);
    sub_100005F40();
    sub_100008AE8();

LABEL_31:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

uint64_t sub_1002E6CA4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0828 != -1)
  {
    swift_once();
  }

  v6 = sub_10000AF9C(v0, qword_1006A4200);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1002E6DE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v51 = a3;
  v52 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v45 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v45 - v20;
  v48 = type metadata accessor for DisclosureDataSource();
  sub_1002E6CA4();
  URL.deletingLastPathComponent()();
  v22 = *(v9 + 8);
  v22(v14, v8);
  v49 = "StopDisclosure.caf";
  URL.appendingPathComponent(_:)();
  v22(v18, v8);
  v23 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  v26 = v25 ^ 1;
  if ((a1 & 1) != 0 || v26)
  {
    if (qword_1006A0B50 != -1)
    {
      swift_once();
    }

    v47 = a5;
    v27 = type metadata accessor for Logger();
    sub_10000AF9C(v27, qword_1006BA670);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      HIDWORD(v45) = v29;
      v31 = v30;
      v46 = swift_slowAlloc();
      *&v54[0] = v46;
      *v31 = 136315394;
      HIBYTE(v53) = a1 & 1;
      v32 = String.init<A>(reflecting:)();
      v34 = sub_10002741C(v32, v33, v54);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      HIBYTE(v53) = v26;
      v35 = String.init<A>(reflecting:)();
      v37 = sub_10002741C(v35, v36, v54);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, BYTE4(v45), "wroteNewFile (%s or disclosureWithEndtone doesn't exist %s. Creating new disclosure with endtone.", v31, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v51;
    v39 = *(v51 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities);

    sub_1002E6CA4();
    v40 = *(v38 + 16);
    sub_100009AB0(v50, v54);
    v41 = swift_allocObject();
    sub_10002F0C8(v54, v41 + 16);
    *(v41 + 56) = v38;
    v42 = v40;

    sub_100464E90(v52, v47, v18, 0xD00000000000001BLL, v49 | 0x8000000000000000, 1, v42, sub_1002E8B2C, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, *&v54[0], *(&v54[0] + 1));

    v22(v18, v8);
  }

  return (v22)(v21, v8);
}

uint64_t sub_1002E7238(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_100009B14(a2, v4);
  (*(v5 + 16))(v4, v5);
  sub_1002E86CC(a3 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, v9);
  v6 = v10;
  if (!v10)
  {
    return sub_100009A5C(v9, &qword_1006A4398, &qword_10057F118);
  }

  v7 = v11;
  sub_100009B14(v9, v10);
  (*(v7 + 16))(v6, v7);
  return sub_100009B7C(v9);
}

void sub_1002E7308()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(*(sub_10026D814(&qword_1006A5360, &qword_10057CB80) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v15, v16);
  v18 = &v89 - v17;
  v19 = type metadata accessor for URL();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007BAC();
  v28 = v26 - v27;
  __chkstk_darwin(v29, v30);
  v32 = &v89 - v31;
  type metadata accessor for DisclosureDataSource();
  sub_1002E57C8();
  if (v34)
  {
    v94 = v33;
    v95 = v18;
    v96 = v22;
    v97 = v34;
    v92 = v32;
    v93 = v28;
    v35 = v3;
    sub_100009AB0(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum, v103);
    v36 = v104;
    v37 = v105;
    sub_100009B14(v103, v104);
    sub_1000112FC(v37);
    if ((v38(v36, v37) & 1) != 0 || (v35 & 1) != 0 || (sub_10000F5FC(), sub_1002E7A58(), (v39 & 1) == 0))
    {
      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v91 = v19;
      v45 = type metadata accessor for Logger();
      sub_1000075F0(v45, qword_1006BA640);
      sub_10000D724();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();

      v48 = os_log_type_enabled(v46, v47);
      HIDWORD(v90) = v35;
      if (v48)
      {
        v49 = sub_100005E84();
        v99 = swift_slowAlloc();
        *v49 = 136315650;
        LODWORD(v89) = v47;
        v51 = v101;
        v50 = v102;
        sub_100009B14(&v100, v101);
        sub_1000112FC(v50);
        HIBYTE(v98) = v52(v51, v50) & 1;
        v53 = String.init<A>(reflecting:)();
        v55 = sub_100017CAC(v53, v54);

        *(v49 + 4) = v55;
        *(v49 + 12) = 2080;
        sub_10000F5FC();
        sub_1002E7A58();
        HIBYTE(v98) = v56 & 1;
        v57 = String.init<A>(reflecting:)();
        v59 = sub_10002741C(v57, v58, &v99);

        *(v49 + 14) = v59;
        *(v49 + 22) = 2080;
        HIBYTE(v98) = v35 & 1;
        v60 = String.init<A>(reflecting:)();
        v62 = sub_10002741C(v60, v61, &v99);

        *(v49 + 24) = v62;
        _os_log_impl(&_mh_execute_header, v46, v89, "Regenerating stop recording disclosure because endDisclosureUtteranceChanged:%s fileExists:%s force:%s", v49, 0x20u);
        swift_arrayDestroy();
        sub_10000E668();
        sub_100005F40();
      }

      else
      {

        sub_100009B7C(&v100);
      }

      v71 = *(v1 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities);
      v72 = v1[2];
      v89 = "StartDisclosureWithTone.m4a";

      v73 = v72;
      v74 = v92;
      sub_1002E7C7C();
      v75 = v95;
      static Locale.current.getter();
      sub_10000AF74(v75, 0, 1, v4);
      v77 = v1[3];
      v76 = v1[4];
      swift_unknownObjectRetain();
      v78 = v93;
      sub_1002E7C7C();
      v79 = v104;
      v80 = v105;
      sub_100009B14(v103, v104);
      sub_1000112FC(v80);
      LOBYTE(v72) = v81(v79, v80);
      sub_10000D724();
      sub_100015D0C();
      v82 = swift_allocObject();
      sub_10002F0C8(&v100, v82 + 16);
      BYTE1(v87) = v72 & 1;
      LOBYTE(v87) = BYTE4(v90) & 1;
      sub_100463470(v73, v94, v97, 0xD000000000000017, v89 | 0x8000000000000000, v74, v75, v77, v76, v78, v87, sub_1002E8B14, v82, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, BYTE1(v97), v98, v99);

      swift_unknownObjectRelease();

      v83 = *(v96 + 8);
      v84 = v91;
      v83(v78, v91);
      sub_100009A5C(v75, &qword_1006A5360, &qword_10057CB80);
      v83(v74, v84);
    }

    else
    {

      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC();
      }

      v40 = type metadata accessor for Logger();
      sub_1000075F0(v40, qword_1006BA640);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        *sub_100006DC4() = 0;
        sub_100008A90(&_mh_execute_header, v43, v44, "Not regenerating stop recording disclosure");
        sub_10000E668();
      }
    }

    sub_100009B7C(v103);
    goto LABEL_21;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v63 = type metadata accessor for Logger();
  sub_1000075F0(v63, qword_1006BA640);
  v97 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v97, v64))
  {
    v65 = sub_100005274();
    v66 = sub_100005E84();
    v103[0] = v66;
    *v65 = 136315138;
    static Locale.current.getter();
    sub_1002E8ABC();
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v7 + 8))(v13, v4);
    v70 = sub_10002741C(v67, v69, v103);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v97, v64, "Unable to localize end recording disclosure for locale %s. Not creating end recording disclosure", v65, 0xCu);
    sub_100009B7C(v66);
    sub_100008AE8();
    sub_10000E668();

LABEL_21:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_1002E7A58()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = type metadata accessor for URL();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v16 = type metadata accessor for Logger();
  sub_1000075F0(v16, qword_1006BA640);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v27 = v2;
    v19 = sub_100005274();
    v20 = sub_100005E84();
    v28 = v20;
    *v19 = 136315138;
    v21 = type metadata accessor for DisclosureDataSource();
    v4(v21);
    URL.path.getter();
    (*(v9 + 8))(v15, v6);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v28);

    *(v19 + 4) = v24;
    v5 = v0;
    _os_log_impl(&_mh_execute_header, v17, v18, v27, v19, 0xCu);
    sub_100009B7C(v20);
    sub_100005F40();
    sub_100005F40();
  }

  v25 = *(v5 + 24);
  type metadata accessor for DisclosureDataSource();
  v26 = swift_unknownObjectRetain();
  v4(v26);
  sub_100272258();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v15, v6);
  sub_100005EDC();
}

uint64_t sub_1002E7C7C()
{
  v0 = type metadata accessor for URL();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  sub_10000F9FC();
  if (qword_1006A0828 != -1)
  {
    sub_100017138();
  }

  sub_10000AF9C(v0, qword_1006A4200);
  v7 = sub_100035A20();
  v8(v7);
  URL.appendingPathComponent(_:)();
  v9 = *(v3 + 8);
  v10 = sub_100006884();
  return v11(v10);
}

uint64_t sub_1002E7D80(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3[3];
    v4 = a3[4];
    sub_100009B14(a3, v3);
    return (*(v4 + 16))(v3, v4);
  }

  return result;
}

uint64_t sub_1002E7DDC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_languageManager;
  v3 = type metadata accessor for LanguageManager();
  sub_1000080D0(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_disclosureUtilities);

  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureUtteranceChecksum));
  sub_100009A5C(v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_startDisclosureBeepChecksum, &qword_1006A4398, &qword_10057F118);
  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd20DisclosureDataSource_endDisclosureUtteranceChecksum));
  return v0;
}

uint64_t sub_1002E7EA0()
{
  sub_1002E7DDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DisclosureDataSource()
{
  result = qword_1006A4258;
  if (!qword_1006A4258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E7F4C()
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

void sub_1002E8018()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v2))
  {
    *sub_100006DC4() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "locale changed- checking if we should regenerate recording disclosures");
    sub_100008AE8();
  }

  sub_1002E6380();

  sub_1002E7308();
}

void sub_1002E81BC()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v2))
  {
    *sub_100006DC4() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "assets changed- checking if we should regenerate recording disclosures");
    sub_100008AE8();
  }

  sub_1002E6380();

  sub_1002E7308();
}

uint64_t sub_1002E82CC()
{
  v0 = type metadata accessor for URL();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  sub_10000F9FC();
  if (qword_1006A0828 != -1)
  {
    sub_100017138();
  }

  sub_10000AF9C(v0, qword_1006A4200);
  v7 = sub_100035A20();
  v8(v7);
  URL.appendingPathComponent(_:)();
  v9 = *(v3 + 8);
  v10 = sub_100006884();
  return v11(v10);
}

uint64_t sub_1002E83D0()
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v0._countAndFlagsBits = 0x6E6974656572472FLL;
  v0._object = 0xEA00000000007367;
  String.append(_:)(v0);

  return v2;
}

uint64_t sub_1002E8440()
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

    sub_1002E83D0();
    URL.appendingPathComponent(_:isDirectory:)();

    return (*(*(v7 - 8) + 8))(v4, v7);
  }

  return result;
}

uint64_t sub_1002E85A4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002861B8(v4, qword_1006A4200);
  sub_10000AF9C(v0, qword_1006A4200);
  type metadata accessor for DisclosureDataSource();
  sub_1002E8440();
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v6, v0);
}

void *sub_1002E86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_1002E86CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A4398, &qword_10057F118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8744(void *a1, char a2, uint64_t a3)
{
  v6 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  sub_100007FEC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v14 = &v23 - v13;
  v15 = *(*(sub_10026D814(&qword_1006A5310, &qword_10057D580) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v16, v17);
  v19 = &v23 - v18;
  v20 = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  v21 = type metadata accessor for TaskPriority();
  sub_10000AF74(v19, 1, 1, v21);
  (*(v8 + 104))(v14, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v19, v14, a3 + v20);
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_100622278;
  *(a3 + 32) = a2;
  swift_unknownObjectRetain();
  dispatch thunk of DaemonSession.keepActive.setter();

  return a3;
}

uint64_t sub_1002E88C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Locale();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  *(a5 + 16) = 0xD000000000000029;
  *(a5 + 24) = 0x8000000100567170;
  *(a5 + 32) = [objc_opt_self() defaultManager];
  *(a5 + 80) = 0;
  *(a5 + 84) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = sub_100271E98;
  *(a5 + 104) = 0;
  *(a5 + 56) = a1;
  *(a5 + 64) = &off_1006222B0;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 72) = a4;

  v20 = a4;
  static Locale.current.getter();
  v21 = sub_10027128C(v19);
  (*(v13 + 8))(v19, v10);
  v22 = *(a5 + 56);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10057CA80;
  *(v23 + 32) = v21;
  swift_unknownObjectRetain();
  v24 = v21;
  sub_10028A7A0(v23);
  swift_unknownObjectRelease();

  sub_100271C00();

  return a5;
}

unint64_t sub_1002E8ABC()
{
  result = qword_1006A3448;
  if (!qword_1006A3448)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3448);
  }

  return result;
}

uint64_t sub_1002E8B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for URL();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000AF74(a2, v7, 1, v6);
}

uint64_t sub_1002E8C5C(uint64_t a1)
{
  result = sub_1000057CC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1004596E8(result, v3, 0, a1);
  }
}

uint64_t sub_1002E8D54(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t *a4)
{
  v7 = a2();
  v9 = v8;
  v11 = v10;
  v12 = sub_1002E93F8(a1);
  v14 = v13;
  v16 = v15;
  v17 = sub_1002E96D0(v7, v9, v11 & 1, v12, v13, v15 & 1);
  sub_100010000(v12, v14, v16 & 1);
  v18 = sub_10000F614();
  if (v17)
  {
    sub_100010000(v18, v19, v20);
    return 0;
  }

  else
  {
    sub_10001E594(v18, v19, v20, a1, a3, a4);
    v21 = v22;
    v23 = sub_10000F614();
    sub_100010000(v23, v24, v25);
  }

  return v21;
}

id sub_1002E8E2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_1002E8ED4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  result = a2();
  if (v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v6)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a3();
  }
}

uint64_t CSDCall.spamModel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002E9188();
  v27 = v13;
  v28 = v12;
  v14 = sub_1002E9294();
  if (!v14)
  {
    v15 = [v3 remoteParticipantHandles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_1002E932C();
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A0CC();
    v14 = sub_1002E8D54(v16, v17, &qword_1006A2640, TUHandle_ptr);
  }

  v18 = [v3 callUUID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  [v3 callDuration];
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  (*(v7 + 8))(v11, v6);
  v31 = 0;
  v24 = v27;
  *a3 = v28;
  *(a3 + 8) = v24;
  *(a3 + 16) = v29;
  *(a3 + 24) = a2;
  *(a3 + 32) = v14;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21;
  *(a3 + 56) = v23;
  *(a3 + 64) = 0;
  *(a3 + 65) = *v30;
  *(a3 + 68) = *&v30[3];
  *(a3 + 72) = 0xD000000000000019;
  *(a3 + 80) = 0x8000000100567280;
}

unint64_t sub_1002E9188()
{
  v1 = [v0 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001E550(v2);

  v4 = [v0 provider];
  v5 = [v4 isFaceTimeProvider];

  v6 = 0x656D697465636166;
  if (v3 == 1)
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_1002E9294()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 activeConversationForCall:v0];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 initiator];

  return v3;
}

unint64_t sub_1002E932C()
{
  result = qword_1006A3C50;
  if (!qword_1006A3C50)
  {
    sub_100006AF0(255, &qword_1006A2640, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3C50);
  }

  return result;
}

void *sub_1002E93B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  CSDCall.spamModel(with:)(a1, a2, __src);
  return memcpy(a3, __src, 0x58uLL);
}

uint64_t sub_1002E93F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

uint64_t sub_1002E9474(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1002E94F0()
{
  sub_100018168();
  if (!v5)
  {
    if (v4)
    {
      sub_100008B14();
      v32 = __CocoaSet.element(at:)();
      v6 = type metadata accessor for ActivitySession();
      sub_100008338(v6, v7, v8, v6, v9, v10, v11, v12, v32, v33);
      swift_dynamicCast();
      sub_100008348();
      return;
    }

    goto LABEL_23;
  }

  if (v4)
  {
    type metadata accessor for ActivitySession();
    sub_100008B14();
    if (__CocoaSet.Index.age.getter() == *(v0 + 36))
    {
      sub_100008B14();
      v13 = __CocoaSet.Index.element.getter();
      sub_100008338(v13, v14, v15, v16, v17, v18, v19, v20, v13, v33);
      swift_dynamicCast();
      v3 = v34;
      NSObject._rawHashValue(seed:)(*(v0 + 40));
      sub_10001512C();
      while (1)
      {
        sub_100010288(v21);
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }

        v23 = *(*(v0 + 48) + 8 * v2);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          goto LABEL_15;
        }

        v21 = v2 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v2 < 0 || (sub_100017158(), v25 ^ v26 | v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_10000E684();
  if ((v27 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v0 + 36) != v1)
  {
    __break(1u);
LABEL_15:
  }

  v28 = *(*(v0 + 48) + 8 * v2);
  sub_100008348();

  v31 = v29;
}

uint64_t sub_1002E96D0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return static __CocoaSet.Index.== infix(_:_:)();
    }
  }

  else if ((a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result == a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E9704(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002E9784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10026D814(&qword_1006A4468, &unk_10057F1B0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v11;
    v22 = v11[1];

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v5 &= v5 - 1;
    v20 = v2[6] + 40 * v15;
    *(v20 + 32) = v25;
    *v20 = v23;
    *(v20 + 16) = v24;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1002E99B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) devices];
  sub_1002EAEC8();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E9A28(v2);
  v4 = v3;

  return v4;
}

void sub_1002E9A28(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  if (v2)
  {
    v3 = v2;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = IDSCopyIDForDevice();
        if (!v8)
        {
          goto LABEL_19;
        }

        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10039A2E0(v13 > 1, v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        ++v4;
        if (v5 == v3)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10001E78C(_swiftEmptyArrayStorage);
  }
}

void *sub_1002E9B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(v3 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) service];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1002E9784(a3);
  v7 = Set._bridgeToObjectiveC()().super.isa;

  sub_10026D814(&qword_1006A4458, &unk_100588070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20[1] = v9;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  Dictionary.init(dictionaryLiteral:)();
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v20[0] = 0;
  v11 = [v5 sendData:isa toDestinations:v7 priority:300 options:v10 identifier:v20 error:&v19];
  swift_unknownObjectRelease();

  v13 = v19;
  v12 = v20[0];
  if (!v11)
  {
    v15 = v19;
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_6:
    swift_willThrow();

    return v12;
  }

  if (!v20[0])
  {
    sub_1002EAE74();
    swift_allocError();
    v17 = v13;
    goto LABEL_6;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  return v12;
}