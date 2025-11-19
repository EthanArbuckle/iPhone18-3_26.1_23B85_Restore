uint64_t getEnumTagSinglePayload for AudioInterruptionPriority(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AudioInterruptionPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100275BC0()
{
  result = qword_1006A23D0;
  if (!qword_1006A23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A23D0);
  }

  return result;
}

uint64_t CSDConversationManager.activityAuthorizationState(presentAlertIfIncapable:)(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [v1 queue];
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v11 = [v1 activeConversation];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 allParticipantsSupportSharePlay];
      if (v13 & 1) == 0 && (a1)
      {
        [v1 _displaySharePlayUnableToStartAlert];
      }

      v14 = [v12 tuConversation];
      v15 = 1;
    }

    else
    {
      v15 = [v1 hasActiveActivitySessionContainer];
      v14 = 0;
      v13 = 1;
    }

    v16 = objc_allocWithZone(type metadata accessor for ActivityAuthorizationState());
    v17 = sub_100275F30(v13, v15, v14);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100275F00()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_activeConversation);
  v2 = v1;
  return v1;
}

id sub_100275F30(char a1, char a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_isSharePlayCapable] = a1;
  v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_hasActiveActivitySessionContainer] = a2;
  *&v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_activeConversation] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ActivityAuthorizationState();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100275FE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorizationState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100276028()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v8);
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v14 = v30 - v13;
  sub_100035CA0();
  sub_100285FC4(v15, v16, v17, &qword_10057D580);
  v18 = type metadata accessor for TaskPriority();
  v19 = sub_100015468(v14, 1, v18);

  if (v19 == 1)
  {
    sub_100009A04(v14, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000F49C(v18);
    (*(v20 + 8))(v14, v18);
  }

  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v22)
  {
    swift_getObjectType();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_10000C0EC();
      v26 = String.utf8CString.getter() + 32;
      sub_100007C2C();
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      *(v27 + 24) = v1;

      sub_10026D814(&qword_1006A25C8, &qword_10057D120);
      v28 = (v25 | v23);
      if (v25 | v23)
      {
        v31[0] = 0;
        v31[1] = 0;
        v28 = v31;
        v31[2] = v23;
        v31[3] = v25;
      }

      v30[1] = 7;
      v30[2] = v28;
      v30[3] = v26;
      swift_task_create();
      sub_10000667C();

      sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);

      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);
  sub_100007C2C();
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = v1;
  sub_10026D814(&qword_1006A25C8, &qword_10057D120);
  if (v25 | v23)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v23;
    v31[7] = v25;
  }

  swift_task_create();
LABEL_13:
  sub_100005EDC();
}

void sub_1002762F0()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v8);
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v14 = v30 - v13;
  sub_100285FC4(v5, v30 - v13, &qword_1006A5310, &qword_10057D580);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_100015468(v14, 1, v15);

  if (v16 == 1)
  {
    sub_100009A04(v14, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000F49C(v15);
    v18 = *(v17 + 8);
    v19 = sub_10000BB1C();
    v20(v19);
  }

  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v22)
  {
    swift_getObjectType();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_10000C0EC();
      v26 = String.utf8CString.getter() + 32;
      sub_100007C2C();
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      *(v27 + 24) = v1;

      if (v25 | v23)
      {
        v31[0] = 0;
        v31[1] = 0;
        v28 = v31;
        v31[2] = v23;
        v31[3] = v25;
      }

      else
      {
        v28 = 0;
      }

      v30[1] = 7;
      v30[2] = v28;
      v30[3] = v26;
      sub_100018614();
      swift_task_create();

      sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);

      goto LABEL_14;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);
  sub_100007C2C();
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = v1;
  if (v25 | v23)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v23;
    v31[7] = v25;
  }

  sub_100018614();
  swift_task_create();
LABEL_14:
  sub_100005EDC();
}

uint64_t sub_1002765A0()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A24E0);
  v1 = sub_100006B30();
  sub_1000075F0(v1, v2);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  sub_10000AF9C(v0, qword_1006BA6E8);
  sub_10000F49C(v0);
  v4 = *(v3 + 16);

  return v4(qword_1006A24E0);
}

Swift::Int sub_10027665C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1002766BC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 4:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10027674C(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1002767F8()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007BAC();
  v12 = (v10 - v11);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v89 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v89 - v19;
  v21 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
  sub_1002866E0();
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (v22)
  {
    return v22;
  }

  v99 = v12;
  v100 = v17;
  v101 = v6;
  v23 = (v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider);
  v24 = *sub_100009B14((v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider), *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider + 24));
  v25 = sub_1003D1628();
  if (v1)
  {
    return v23;
  }

  v26 = v25;
  v27 = *sub_100009B14(v23, v23[3]);
  v29 = sub_1003D16D0();
  v93 = 0;
  v98 = v20;
  v30 = sub_10000B6F4(v26);
  v96 = v29;
  v97 = v3;
  if (!v30)
  {

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v31 = v30;
  v102 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v26 + 8 * v32 + 32);
      }

      v34 = v33;
      ++v32;
      [objc_allocWithZone(TUConversationMember) initWithHandle:v33];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v35 = v102[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v31 != v32);

    v36 = v102;
    v29 = v96;
    v3 = v97;
LABEL_15:
    v94 = sub_1002F1D1C(v36);
    v37 = [objc_allocWithZone(TUConversationMember) initWithHandle:v29];
    v38 = *(v101 + 16);
    v39 = v98;
    v38(v98, v2 + OBJC_IVAR___CSDConversationCallCoordinator_callUUID, v3);
    v40 = v100;
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v95 = v37;
    v41 = type metadata accessor for Logger();
    sub_10000AF9C(v41, qword_1006A24E0);
    v42 = sub_100005EC4();
    v92 = v38;
    v38(v42, v39, v3);
    v91 = v37;
    v43 = v40;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      sub_100007BFC();
      v46 = swift_slowAlloc();
      v89 = v46;
      sub_100015070();
      v90 = swift_slowAlloc();
      v102 = v90;
      *v46 = 136315138;
      sub_100009EDC();
      sub_100286020(v47, v48);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v101 + 8);
      v53 = sub_10000BB1C();
      v100 = v54;
      v54(v53);
      sub_10002741C(v49, v51, &v102);
      sub_100005EC4();

      v55 = v89;
      *(v89 + 1) = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "[CSDConversationCallCoordinator] Creating conversation with groupUUID: %s", v55, 0xCu);
      sub_100009B7C(v90);
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {

      v56 = *(v101 + 8);
      v57 = sub_10000BB1C();
      v100 = v58;
      v58(v57);
    }

    v59 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v60 = v98;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100035CA0();
    sub_100006AF0(v62, v63, v64);
    sub_100035CA0();
    sub_10000CE3C(v65, v66, v67);
    sub_100006B3C();
    v68 = Set._bridgeToObjectiveC()().super.isa;

    v69 = v59;
    v70 = v95;
    v71 = [v69 findOrCreateConversationWithGroupUUID:isa messagesGroupUUID:0 remoteMembers:v68 otherInvitedHandles:0 localMember:v95 remotePushTokens:0 link:0 activity:0 avMode:1 presentationMode:0 conversationProvider:*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider) screenSharingRequest:0];

    if (v71)
    {
      v100(v60, v97);

      *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 1;
      v72 = *(v2 + v21);
      *(v2 + v21) = v71;
      v23 = v71;
    }

    else
    {
      v73 = v99;
      v23 = v97;
      v92(v99, v60, v97);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        sub_100007BFC();
        v76 = swift_slowAlloc();
        sub_100015070();
        v77 = swift_slowAlloc();
        v102 = v77;
        *v76 = 136315138;
        sub_100009EDC();
        sub_100286020(v78, v79);
        v80 = v73;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        v81 = sub_100006F1C();
        v82 = v100;
        v100(v81, v97);
        v83 = sub_100027E34();
        sub_10002741C(v83, v84, v85);
        sub_100005EC4();
        v70 = v95;

        *(v76 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "[CSDConversationCallCoordinator] Failed to create conversation with groupUUID: %s", v76, 0xCu);
        sub_100009B7C(v77);
        sub_100009ED0();

        v23 = v97;
        sub_100009ED0();
      }

      else
      {

        v86 = sub_100006F1C();
        v82 = v100;
        v100(v86, v23);
      }

      v87 = v96;
      sub_100286294();
      sub_100006104();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();

      v82(v98, v23);
    }

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_100276F1C()
{
  sub_100006810();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 25) = v3;
  v4 = sub_10026D814(&qword_1006A2670, &qword_10057D178);
  *(v1 + 56) = v4;
  sub_100005EB4(v4);
  *(v1 + 64) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v8 = sub_10026D814(&qword_1006A2678, &qword_10057D180);
  *(v1 + 80) = v8;
  sub_100005EB4(v8);
  *(v1 + 88) = v9;
  v11 = *(v10 + 64);
  *(v1 + 96) = sub_100015418();
  *(v1 + 104) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v1 + 112) = v12;
  sub_100005EB4(v12);
  *(v1 + 120) = v13;
  v15 = *(v14 + 64);
  *(v1 + 128) = sub_100015418();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v16, v17);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 192) = v18;
  *(v1 + 200) = v19;
  v20 = sub_100286804();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_100277118()
{
  v280 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v0 + 25);
  v278 = 0;
  v279 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x8000000100562E40;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD000000000000032;
  v5._object = 0x8000000100562E70;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x6E6F736165722820;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_1002766BC(v3);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x556C6C6163202C29;
  v8._object = 0xED0000203A444955;
  String.append(_:)(v8);
  sub_100009EDC();
  v11 = sub_100286020(v9, v10);
  *(v0 + 208) = v11;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 44;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v15 = v278;
  v14 = v279;
  *(v0 + 216) = v278;
  *(v0 + 224) = v14;
  v16 = sub_1002767F8();
  *(v0 + 232) = v16;
  v17 = v16;
  v276 = v15;
  v18 = *(v0 + 184);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = *(v0 + 40);
  v22 = [v16 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v21) = static UUID.== infix(_:_:)();
  v24 = *(v20 + 8);
  v23 = v20 + 8;
  v277 = v24;
  *(v0 + 240) = v24;
  *(v0 + 248) = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25 = sub_100005ED0();
  v26(v25);
  if ((v21 & 1) == 0)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v60 = *(v0 + 120);
    v59 = *(v0 + 128);
    v61 = *(v0 + 112);
    v62 = sub_1002869FC();
    sub_10000AF9C(v62, qword_1006A24E0);
    v63 = sub_10000C6A4();
    v64(v63);

    v65 = v17;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      LODWORD(v263) = v67;
      v68 = *(v0 + 184);
      v260 = *(v0 + 128);
      v69 = *(v0 + 112);
      sub_100015070();
      v70 = swift_slowAlloc();
      v71 = sub_10000C554();
      v278 = v71;
      *v70 = 136315650;
      v79 = sub_10000D5D0(v71, v72, v73, v74, v75, v76, v77, v78, v248, v249, v251, v253, v255, v257, v260, v263, v71, v268, v270, v0, v276);

      *(v70 + 4) = v79;
      *(v70 + 12) = 2080;
      v80 = [v65 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = sub_100005ED0();
      v277(v84);
      v85 = sub_10002741C(v81, v83, &v278);

      *(v70 + 14) = v85;
      *(v70 + 22) = 2080;
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (v277)(v261, v69);
      v89 = sub_10002741C(v86, v88, &v278);

      *(v70 + 24) = v89;
      _os_log_impl(&_mh_execute_header, v66, v264, "%s Tracked conversation has different UUID, expected: %s, provided: %s", v70, 0x20u);
      sub_1002867D4();
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {
      v116 = *(v0 + 128);
      v117 = *(v0 + 112);

      v118 = sub_100005ED0();
      v277(v118);
    }

    goto LABEL_25;
  }

  v269 = v11;
  if ([v17 state] == 4)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v27 = *(v0 + 136);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = sub_1002869FC();
    sub_10000AF9C(v30, qword_1006A24E0);
    v31 = sub_10000C6A4();
    v32(v31);

    v33 = v17;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 136);
    v38 = *(v0 + 112);
    if (v36)
    {
      sub_100015070();
      v271 = v23;
      v39 = swift_slowAlloc();
      v40 = sub_10000C554();
      v278 = v40;
      *v39 = 136315650;
      v48 = v33;
      v49 = sub_10000D5D0(v40, v41, v42, v43, v44, v45, v46, v47, v248, v249, v251, v253, v255, v257, v259, v263, v266, v269, v271, v273, v276);

      *(v39 + 4) = v49;
      *(v39 + 12) = 2080;
      *(v0 + 32) = [v48 state];
      type metadata accessor for TUConversationState(0);
      v50 = String.init<A>(reflecting:)();
      v52 = sub_10002741C(v50, v51, &v278);

      *(v39 + 14) = v52;
      *(v39 + 22) = 2080;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = sub_100006B3C();
      v277(v56);
      v57 = v53;
      v33 = v48;
      v58 = sub_10002741C(v57, v55, &v278);

      *(v39 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s Conversation in non-joinable state: %s, conversationUUID: %s", v39, 0x20u);
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      v119 = sub_100006B3C();
      v277(v119);
    }

    sub_100286294();
    sub_100006104();
    swift_allocError();
    *v120 = 2;
    swift_willThrow();

    sub_100007BD4();

    sub_100009EF4();
    goto LABEL_26;
  }

  v272 = v23;
  v274 = v0;
  if ([v17 state] == 3)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v90 = *(v0 + 144);
    v91 = *(v0 + 112);
    v92 = *(v0 + 120);
    v93 = sub_1002869FC();
    sub_10000AF9C(v93, qword_1006A24E0);
    v94 = sub_10000C6A4();
    v95(v94);

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 144);
    v100 = *(v0 + 112);
    if (v98)
    {
      v101 = sub_100007C08();
      v102 = sub_100007630();
      v278 = v102;
      *v101 = 136315394;
      v110 = sub_10000D5D0(v102, v103, v104, v105, v106, v107, v108, v109, v248, v249, v251, v253, v255, v257, v259, v263, v266, v269, v272, v0, v276);

      *(v101 + 4) = v110;
      sub_100022DE4();
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v112;
      sub_10001E3B8();
      sub_100286700();
      v114();
      sub_10002741C(v111, v113, &v278);
      sub_10000771C();

      *(v101 + 14) = v99;
      sub_1002867B8(&_mh_execute_header, v115, v97, "%s Conversation already joined, conversationUUID: %s");
      sub_10004A090();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      sub_10001E3B8();
      sub_100286700();
      v127();
    }

LABEL_25:
    sub_100007BD4();

    sub_100009EF4();
LABEL_26:

    return v121();
  }

  v122 = *(v0 + 25);
  v123 = [objc_allocWithZone(CSDConversationJoinContext) init];
  *(v0 + 256) = v123;
  v125 = sub_1002766BC(v122) == 0xD000000000000012 && 0x8000000100562D30 == v124;
  v265 = 0xD000000000000012;
  v267 = 0x8000000100562D30;
  if (v125)
  {

    v126 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    v126 = ~v19 & 1;
  }

  v129 = *(v0 + 48);
  v130 = *(v274 + 25);
  [v123 setAvMode:v126];
  [v123 setVideo:0];
  [v123 setVideoEnabled:0];
  [v123 setProvider:*(v129 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider)];
  [v123 setOneToOneModeEnabled:1];
  v131 = [objc_opt_self() noNotificationInvitationPreferences];
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v132.super.isa = Set._bridgeToObjectiveC()().super.isa;

  [v123 setInvitationPreferences:v132.super.isa];

  if (sub_1002766BC(v130) == 0xD000000000000014 && 0x8000000100562CF0 == v133)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    if ((v132.super.isa & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v135 = *(v274 + 25);
  if (sub_1002766BC(v135) == 0xD000000000000014 && 0x8000000100562D50 == v136)
  {
    v138 = 1;
  }

  else
  {
    v138 = sub_100286794();
    v135 = *(v274 + 25);
  }

  if (sub_1002766BC(v135) == 0xD000000000000014 && 0x8000000100562D50 == v139)
  {

    v131 = 1;
  }

  else
  {
    v141 = sub_100286794();

    if (v141)
    {
      v131 = 1;
    }

    else
    {
      v131 = 2;
    }
  }

  v142 = [v17 remoteMembers];
  sub_1000444A4();
  sub_100006AF0(v143, v144, v145);
  sub_1000444A4();
  sub_10000CE3C(v146, v147, v148);
  sub_1000507CC();
  v149 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v150 = sub_1002E8BE0(v149);

  if (v150 && (v151 = [v150 handle], v150, v151))
  {
    sub_100006AF0(0, &qword_1006A26A8, TUScreenSharingRequest_ptr);
    v152 = v151;
    v153 = sub_100278B40(v152, v138 & 1, v131, 0, 0);
    [v123 setScreenSharingRequest:v153];
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v154 = *(v274 + 176);
    v155 = *(v274 + 112);
    v156 = *(v274 + 120);
    v157 = *(v274 + 40);
    v158 = type metadata accessor for Logger();
    sub_10000AF9C(v158, qword_1006A24E0);
    (*(v156 + 16))(v154, v157, v155);

    v131 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();

    v160 = os_log_type_enabled(v131, v159);
    v161 = *(v274 + 176);
    v162 = *(v274 + 112);
    if (v160)
    {
      v163 = sub_100007C08();
      v164 = sub_100007630();
      v278 = v164;
      *v163 = 136315394;
      *(v163 + 4) = sub_10000D5D0(v164, v165, v166, v167, v168, v169, v170, v171, v248, v249, v251, v253, v255, v257, v164, 0xD000000000000012, 0x8000000100562D30, v11, v272, v274, v276);
      sub_100022DE4();
      v172 = dispatch thunk of CustomStringConvertible.description.getter();
      v174 = v173;
      sub_100016F58();
      sub_100286700();
      v175();
      sub_10002741C(v172, v174, &v278);
      sub_10000667C();

      *(v163 + 14) = v161;
      sub_1002867B8(&_mh_execute_header, v176, v159, "%s Failed to find a remote handle to create TUScreenSharingRequest with, conversationUUID: %s");
      swift_arrayDestroy();
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {

      sub_100016F58();
      sub_100286700();
      v177();
    }
  }

LABEL_59:
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v178 = *(v274 + 168);
  v179 = *(v274 + 112);
  v180 = *(v274 + 120);
  v181 = sub_1002869FC();
  v182 = sub_10000AF9C(v181, qword_1006A24E0);
  *(v274 + 264) = v182;
  v184 = *(v180 + 16);
  v183 = v180 + 16;
  *(v274 + 272) = v184;
  *(v274 + 280) = v183 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v262 = v183;
  v256 = v184;
  v184(v178, v131, v179);

  v185 = v123;
  v258 = v182;
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();

  v188 = os_log_type_enabled(v186, v187);
  v189 = *(v274 + 168);
  v190 = *(v274 + 112);
  v252 = v185;
  if (v188)
  {
    sub_100015070();
    v191 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v192 = sub_100007630();
    v278 = v192;
    *v191 = 136315650;
    *(v191 + 4) = sub_10000D5D0(v192, v193, v194, v195, v196, v197, v198, v199, v248, v250, v185, v192, v256, v258, v183, v265, v267, v269, v272, v274, v276);
    sub_100286848();
    v200 = v186;
    v201 = dispatch thunk of CustomStringConvertible.description.getter();
    v203 = v202;
    v204 = sub_100005ED0();
    v205 = v277;
    v277(v204);
    v206 = sub_10002741C(v201, v203, &v278);

    *(v191 + 14) = v206;
    *(v191 + 22) = 2112;
    *(v191 + 24) = v185;
    *v249 = v185;
    v207 = v185;
    _os_log_impl(&_mh_execute_header, v200, v187, "%s Joining conversation, conversationUUID: %s, context: %@", v191, 0x20u);
    sub_100009A04(v249, &unk_1006A2630, &qword_10057CB40);
    sub_10000E50C();

    swift_arrayDestroy();
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {

    v208 = sub_100005ED0();
    v205 = v277;
    v277(v208);
  }

  v209 = v274;
  v210 = *(v274 + 184);
  v211 = *(v274 + 112);
  v212 = *(*(v274 + 48) + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  v213 = *(v274 + 25);
  v214 = [v17 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v216 = sub_10001E3B8();
  v205(v216);
  v254 = v212;
  [v212 joinExistingConversationWithUUID:isa context:v252];

  v218 = sub_1002766BC(v213) == v265 && v267 == v217;
  v219 = v205;
  if (v218)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    if ((v205 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  *(*(v274 + 48) + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 1;
LABEL_72:
  v256(*(v274 + 160), *(v274 + 40), *(v274 + 112));

  v220 = Logger.logObject.getter();
  v221 = static os_log_type_t.default.getter();

  v222 = os_log_type_enabled(v220, v221);
  v223 = *(v274 + 160);
  v224 = *(v274 + 112);
  if (v222)
  {
    v225 = sub_100007C08();
    v226 = sub_100007630();
    v278 = v226;
    *v225 = 136315394;
    *(v225 + 4) = sub_10000D5D0(v226, v227, v228, v229, v230, v231, v232, v233, v248, v249, v252, v254, v256, v258, v262, v265, v267, v269, v272, v274, v276);
    sub_100022DE4();
    v234 = dispatch thunk of CustomStringConvertible.description.getter();
    v236 = v235;
    sub_100016F58();
    sub_100286700();
    v237();
    sub_10002741C(v234, v236, &v278);
    sub_100044480();
    v209 = v275;

    *(v225 + 14) = v223;
    sub_1002867B8(&_mh_execute_header, v238, v221, "%s Starting audio for conversation, conversationUUID: %s");
    sub_10004A090();
    v219 = v277;
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v239 = sub_100016F58();
    v219(v239);
  }

  v240 = v209[23];
  v242 = v209[13];
  v241 = v209[14];
  v243 = v209[6];
  v244 = [v17 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v245 = UUID._bridgeToObjectiveC()().super.isa;
  v246 = sub_100005ED0();
  v219(v246);
  [v254 startAudioForConversationWithUUID:v245];

  v247 = *(v243 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStateStream);
  AsyncBroadcastStream.sequence.getter();

  return _swift_task_switch(sub_1002784EC, 0, 0);
}

uint64_t sub_1002784EC()
{
  sub_10000C698();
  v1 = v0[9];
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  sub_10001000C(&qword_1006A2690, &qword_1006A2678, &qword_10057D180);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_10000FB84(&qword_1006A2698, &qword_1006A2670, &qword_10057D178);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  sub_100022C5C(v3);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
}

uint64_t sub_1002785F8()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[8];
    v9 = v3[9];
    v11 = v3[7];

    (*(v10 + 8))(v9, v11);
    v12 = ScreenSharingActivityManager.carPlayDidDisconnect();
  }

  else
  {
    v12 = sub_100278724;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100278724()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 26) = v2;
  if ((v2 & 1) != 0 || v1 == 3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);

    return _swift_task_switch(sub_100278838, v5, v6);
  }

  else
  {
    sub_10000FB84(&qword_1006A2698, &qword_1006A2670, &qword_10057D178);
    v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    sub_100022C5C();

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16);
  }
}

uint64_t sub_100278838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 26);
  (*(*(v26 + 88) + 8))(*(v26 + 104), *(v26 + 80));
  if (v29)
  {
    v30 = *(v26 + 256);
    v31 = *(v26 + 224);
    v32 = *(v26 + 232);

    sub_100286294();
    sub_100006104();
    v80 = swift_allocError();
    *v33 = 1;
    swift_willThrow();

    v35 = *(v26 + 176);
    v34 = *(v26 + 184);
    v37 = *(v26 + 160);
    v36 = *(v26 + 168);
    v39 = *(v26 + 144);
    v38 = *(v26 + 152);
    v41 = *(v26 + 128);
    v40 = *(v26 + 136);
    v42 = *(v26 + 96);
    v43 = *(v26 + 104);
    a12 = *(v26 + 72);

    sub_100009EF4();
  }

  else
  {
    v44 = *(v26 + 280);
    v45 = *(v26 + 264);
    v46 = *(v26 + 224);
    (*(v26 + 272))(*(v26 + 152), *(v26 + 40), *(v26 + 112));

    v47 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10028673C();

    v48 = sub_1002869B0();
    v49 = *(v26 + 256);
    v50 = *(v26 + 232);
    v51 = *(v26 + 240);
    v52 = *(v26 + 224);
    if (v48)
    {
      v81 = *(v26 + 256);
      v53 = *(v26 + 216);
      a10 = *(v26 + 208);
      a11 = *(v26 + 248);
      v54 = *(v26 + 152);
      v55 = *(v26 + 112);
      v56 = sub_100007C08();
      a12 = v50;
      a14 = sub_100007630();
      *v56 = 136315394;
      sub_10002741C(v53, v52, &a14);
      sub_100027E40();

      *(v56 + 4) = v53;
      *(v56 + 12) = 2080;
      dispatch thunk of CustomStringConvertible.description.getter();
      v57 = sub_100286718();
      v51(v57);
      v58 = sub_100006B3C();
      v61 = sub_10002741C(v58, v59, v60);

      *(v56 + 14) = v61;
      sub_100017C80();
      _os_log_impl(v62, v63, v64, v65, v66, 0x16u);
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
      v67 = *(v26 + 152);
      v68 = *(v26 + 112);
      v69 = *(v26 + 224);

      (v51)(v67, v68);
    }

    sub_100007BD4();
    v80 = v70;

    sub_100009EF4();
  }

  sub_10000D3E8();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, v80, a14, a15, a16, a17, a18);
}

id sub_100278B40(void *a1, char a2, uint64_t a3, char a4, void *a5)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:a1 shareMyScreen:a2 & 1 originType:a3 shouldSendLegacyInvite:a4 & 1 metadata:a5];

  return v7;
}

void sub_100278BBC()
{
  sub_100005EF4();
  v1 = v0;
  v150 = v2;
  v151 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v151);
  v147 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007BAC();
  v146 = (v8 - v9);
  sub_100006838();
  __chkstk_darwin(v10, v11);
  v13 = &v144 - v12;
  v145 = *(v0 + 16);
  v14 = [v145 remoteParticipantHandles];
  v15 = TUHandle_ptr;
  sub_10000528C();
  v19 = sub_100006AF0(v16, v17, v18);
  sub_10000528C();
  sub_10000CE3C(v20, v21, v22);
  sub_1000507CC();
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_10001E550(v23);
  v149 = v0;
  if (!v24)
  {

    v51 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002F1D1C(v51);
    sub_10000528C();
    sub_100006AF0(v52, v53, v54);
    sub_10000528C();
    sub_10000CE3C(v55, v56, v57);
    sub_1000507CC();
    Set._bridgeToObjectiveC()();
    sub_10000667C();

    v15 = v150;
    v58 = [v150 isRepresentedByRemoteMembers:&qword_1006A3DE0 andLink:0];

    if ((v58 & 1) == 0)
    {
      goto LABEL_55;
    }

    strcpy(v155, ", callUUID: ");
    BYTE13(v155[0]) = 0;
    HIWORD(v155[0]) = -5120;
    v59 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    v62 = sub_100286020(v60, v61);
    v153 = v59;
    v154 = v62;
    v19 = v151;
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    v64 = v155[0];
    v65 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v66 = *(v1 + v65);
    if (v66)
    {
      v152 = *(&v64 + 1);
      v144 = v64;
      v148 = "ActivitySessionContainerID:)";
      v67 = v66;
      v68 = [v67 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = [v15 groupUUID];
      v70 = v146;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009EDC();
      sub_100286020(v71, v72);
      v73 = v70;
      LOBYTE(v69) = dispatch thunk of static Comparable.< infix(_:_:)();
      v74 = *(v147 + 8);
      v75 = sub_100027E34();
      v74(v75);
      v76 = sub_100006694();
      v74(v76);
      if (v69)
      {
        v153 = v67;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_1000075F0(v77, qword_1006A24E0);
        v78 = v15;
        v79 = v152;

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          sub_100015070();
          v82 = swift_slowAlloc();
          v150 = sub_10000C554();
          v156 = v150;
          v83 = sub_100035720(4.8152e-34);
          sub_100015E8C(v83);
          v84 = [v78 groupUUID];
          sub_1002867EC();

          v85 = v151;
          dispatch thunk of CustomStringConvertible.description.getter();
          (v74)(v13, v85);
          v86 = sub_10000BB1C();
          v89 = sub_10002741C(v86, v87, v88);

          v90 = sub_100286724();
          sub_10002741C(v90, v79, v91);
          sub_10000667C();

          *(v82 + 24) = v89;
          _os_log_impl(&_mh_execute_header, v80, v81, "%s Ignoring new conversation, groupUUID: %s%s", v82, 0x20u);
          swift_arrayDestroy();
          sub_100009ED0();

          sub_100009ED0();
        }

        else
        {
        }

        goto LABEL_56;
      }

      v102 = [v67 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v103 = [v15 groupUUID];
      sub_10028677C();

      LOBYTE(v102) = static UUID.< infix(_:_:)();
      v104 = sub_100027E34();
      v74(v104);
      v105 = sub_100006694();
      v74(v105);
      if (v102)
      {
        v153 = v67;
        v106 = v13;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_1000075F0(v107, qword_1006A24E0);
        v108 = v15;
        v109 = v152;

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          sub_100015070();
          v112 = swift_slowAlloc();
          v150 = sub_10000C554();
          v156 = v150;
          v113 = sub_100035720(4.8152e-34);
          sub_100015E8C(v113);
          v114 = [v108 groupUUID];
          LODWORD(v148) = v111;
          v115 = v114;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          dispatch thunk of CustomStringConvertible.description.getter();
          sub_10028670C();
          (v74)(v106, v151);
          v116 = sub_100027E34();
          sub_10002741C(v116, v117, v118);
          sub_100005EC4();
          v19 = v151;

          v119 = sub_100286724();
          v121 = sub_10002741C(v119, v109, v120);

          *(v112 + 24) = v121;
          _os_log_impl(&_mh_execute_header, v110, v148, "%s Picking new conversation, groupUUID: %s%s", v112, 0x20u);
          sub_1002867D4();
          sub_10000E50C();

          sub_100009ED0();
        }

        else
        {
        }

        v140 = v153;
        v141 = *(v149 + v65);
        *(v149 + v65) = v108;
        v142 = v108;

        v143 = [v140 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10027996C(v106);
        (v74)(v106, v19);
        goto LABEL_56;
      }

      v148 = v13;

      v1 = v149;
    }

    else
    {
      v148 = v13;
      if (qword_1006A0770 != -1)
      {
        sub_10000802C();
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_1000075F0(v92, qword_1006A24E0);
      v93 = v15;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        sub_100007C08();
        v156 = sub_100007608();
        *v15 = 136315394;
        v96 = [v93 UUID];
        v144 = v64;
        v97 = v148;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        (*(v147 + 8))(v97, v151);
        v98 = sub_100027E34();
        sub_10002741C(v98, v99, v100);
        sub_100005EC4();
        v19 = v151;

        *(v15 + 1) = v97;
        *(v15 + 6) = 2080;
        v101 = sub_10002741C(v144, *(&v64 + 1), &v156);

        *(v15 + 14) = v101;
        sub_10001C9AC(&_mh_execute_header, v94, v95, "[CSDConversationCallCoordinator] Setting conversation on call, conversationUUID=%s%s");
        swift_arrayDestroy();
        v1 = v149;
        sub_100009ED0();

        v15 = v150;
        sub_100009ED0();
      }

      else
      {
      }

      v122 = *(v1 + v65);
      *(v1 + v65) = v93;
      v123 = v93;
    }

    if (qword_1006A0770 == -1)
    {
LABEL_51:
      v124 = type metadata accessor for Logger();
      sub_1000075F0(v124, qword_1006A24E0);
      v125 = v15;

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v126, v127))
      {
        sub_100007C08();
        v156 = sub_100007608();
        *v15 = 136315394;
        v128 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_10002741C(v128, v129, &v156);
        sub_100007738();
        *(v15 + 1) = v19;
        *(v15 + 6) = 2080;
        v130 = [v125 UUID];
        v131 = v148;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        v132 = v147;
        (*(v147 + 8))(v131, v151);
        v133 = sub_100027E34();
        sub_10002741C(v133, v134, v135);
        sub_100005EC4();
        v19 = v151;

        *(v15 + 14) = v131;
        sub_10001C9AC(&_mh_execute_header, v126, v127, "[CSDConversationCallCoordinator] Associating call with conversation, callUUID: %s, conversationUUID: %s");
        sub_10004A090();
        sub_100009ED0();

        sub_100009ED0();
      }

      else
      {

        v132 = v147;
        v131 = v148;
      }

      v136 = v145;
      *(v1 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 1;
      [v125 setBackedByGroupSession:1];
      v137 = [objc_allocWithZone(CXCallUpdate) init];
      [v137 setConversation:1];
      v138 = [v125 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v132 + 8))(v131, v19);
      [v137 setConversationGroupUUID:isa];

      [v136 updateWithOverrideCallProperties:v137];
LABEL_55:
      sub_100279C9C();
LABEL_56:
      sub_100005EDC();
      return;
    }

LABEL_64:
    sub_10000802C();
    swift_once();
    goto LABEL_51;
  }

  v25 = v24;
  v159 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v156 = sub_10001E578(v23);
  v157 = v26;
  v158 = v27 & 1;
  if (v25 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v148 = v13;
  v28 = 0;
  v1 = v23 & 0xC000000000000001;
  if (v23 < 0)
  {
    v29 = v23;
  }

  else
  {
    v29 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v153 = (v23 + 56);
  v154 = v29;
  v152 = v23 + 64;
  while (1)
  {
    if (__OFADD__(v28++, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v31 = v156;
    v15 = v157;
    v19 = v158;
    v32 = sub_100007624();
    sub_10001E580(v32, v33, v19, v23);
    v35 = v34;
    [objc_allocWithZone(TUConversationMember) initWithHandle:v34];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v36 = v159[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v1)
    {
      break;
    }

    if (v19)
    {
      goto LABEL_66;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v37 = 1 << *(v23 + 32);
    if (v31 >= v37)
    {
      goto LABEL_60;
    }

    v38 = v31 >> 6;
    v39 = *(v153 + (v31 >> 6));
    if (((v39 >> v31) & 1) == 0)
    {
      goto LABEL_61;
    }

    if (*(v23 + 36) != v15)
    {
      goto LABEL_62;
    }

    v40 = v39 & (-2 << (v31 & 0x3F));
    if (v40)
    {
      v37 = __clz(__rbit64(v40)) | v31 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v38 << 6;
      v42 = v38 + 1;
      v43 = (v152 + 8 * v38);
      while (v42 < (v37 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v19 += 64;
        ++v42;
        if (v45)
        {
          v46 = sub_100007624();
          sub_100010000(v46, v47, 0);
          v37 = __clz(__rbit64(v44)) + v19;
          goto LABEL_25;
        }
      }

      v48 = sub_100007624();
      sub_100010000(v48, v49, 0);
    }

LABEL_25:
    v50 = *(v23 + 36);
    v156 = v37;
    v157 = v50;
    v158 = 0;
LABEL_26:
    if (v28 == v25)
    {

      sub_100010000(v156, v157, v158);
      v51 = v159;
      v13 = v148;
      v1 = v149;
      goto LABEL_29;
    }
  }

  if (v19)
  {
    sub_100007624();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10026D814(&unk_1006A2650, &qword_10057D170);
    v41 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v41(v155, 0);
    goto LABEL_26;
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_10027996C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006A24E0);
  (*(v5 + 16))(v9, a1, v4);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136315394;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_10002741C(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_10002741C(v19, v20, &v27);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[CSDConversationCallCoordinator] Leaving conversation, conversationUUID: %s, callUUID: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) == 1)
  {
    *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 0;
  }

  v22 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v22 leaveConversationWithUUID:isa];

  sub_10027EFB4(0);
}

void sub_100279C9C()
{
  sub_100005EF4();
  v3 = v2;
  v233 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070(v233);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  v9 = &v227[-v8];
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = sub_100007BF0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100007BAC();
  v231 = v15 - v16;
  sub_100006838();
  __chkstk_darwin(v17, v18);
  v232 = &v227[-v19];
  sub_100006838();
  __chkstk_darwin(v20, v21);
  sub_10000C0F8();
  v24 = __chkstk_darwin(v22, v23);
  v26 = &v227[-v25];
  __chkstk_darwin(v24, v27);
  v29 = &v227[-v28];
  v30 = type metadata accessor for UUID();
  v31 = sub_100007FEC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31, v36);
  sub_100007FDC();
  v39 = v38 - v37;
  v40 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v238 = v3;
  v41 = [v3 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v235 = v40;
  LOBYTE(v41) = static UUID.== infix(_:_:)();
  v42 = *(v33 + 8);
  v236 = v39;
  v237 = v42;
  v43 = v39;
  v44 = v0;
  v239 = v30;
  v45 = v30;
  v46 = v33 + 8;
  v42(v43, v45);
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  if (v41)
  {
LABEL_2:
    if (*(v44 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v48 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
      v49 = 1;
      sub_1002866E0();
      swift_beginAccess();
      v50 = *(v44 + v48);
      v51 = 0x10067D000;
      v52 = &selRef_setWindowed_;
      if (v50)
      {
        v53 = [v50 avMode];
        if ([*(v44 + 16) disconnectedReason] == 6 && v53 && !objc_msgSend(v238, "avMode"))
        {
          v234 = v46;
          if (p_inst_meths[238] != -1)
          {
            sub_10000802C();
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          sub_1000075F0(v54, qword_1006A24E0);
          v55 = v238;

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();

          v58 = os_log_type_enabled(v56, v57);
          v59 = v236;
          if (v58)
          {
            v60 = sub_100007C08();
            v233 = sub_100007630();
            v241 = v233;
            *v60 = 136315394;
            v61 = [v55 UUID];
            v232 = v56;
            sub_1002869C8();

            sub_100009EDC();
            v64 = sub_100286020(v62, v63);
            v65 = v239;
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v66 = v57;
            v46 = v234;
            v237(v236, v65);
            v67 = sub_100016F58();
            sub_10002741C(v67, v68, v69);
            sub_10000771C();

            *(v60 + 4) = v56;
            sub_100286854();
            sub_100286810();
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_100286764(v70, v71);
            sub_100007738();
            *(v60 + 14) = v64;
            v59 = v236;
            v72 = v232;
            sub_1002868C8();
            sub_10000E50C();

            v73 = &selRef_prewarmMediaRequest_completion_;
            p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
            sub_100009ED0();

            v74 = v237;
          }

          else
          {

            v65 = v239;
            v46 = v234;
            v74 = v237;
            v73 = &selRef_prewarmMediaRequest_completion_;
          }

          v144 = [v55 v73[145]];
          sub_1002869C8();

          sub_10027ADE4(v59);
          v74(v59, v65);
          v51 = v73;
          v52 = &selRef_setWindowed_;
        }

        v145 = *(v44 + v48);
        if (v145)
        {
          v233 = [v145 v52[199]];
          v49 = 0;
        }

        else
        {
          v233 = 0;
          v49 = 1;
        }
      }

      else
      {
        v233 = 0;
      }

      v146 = v238;
      sub_10027EB88(v238);
      v148 = v147;
      v149 = *(v44 + v48);
      *(v44 + v48) = v146;
      v150 = v146;

      v151 = *(v44 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStream);
      v241 = v150;
      v232 = v151;
      AsyncBroadcastStream.yield(_:)();
      if (v148)
      {
        v238 = v150;
        v152 = p_inst_meths[238];
        v153 = v148;
        if (v152 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        sub_10000AF9C(v154, qword_1006A24E0);
        v155 = v238;

        v156 = v153;
        v151 = Logger.logObject.getter();
        v157 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v151, v157))
        {
          sub_100015070();
          v158 = swift_slowAlloc();
          v231 = v49;
          v159 = v158;
          v230 = sub_10000C554();
          v240 = v156;
          v241 = v230;
          *v159 = 136315650;
          sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
          v229 = v151;
          v160 = v156;
          v161 = String.init<A>(reflecting:)();
          sub_100286764(v161, v162);
          v228 = v157;
          sub_100007738();
          *(v159 + 4) = v157;
          *(v159 + 12) = 2080;
          v163 = [v155 *(v51 + 1160)];
          v164 = v46;
          v165 = v44;
          v166 = v236;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100009EDC();
          v169 = sub_100286020(v167, v168);
          v170 = v166;
          v171 = v148;
          v172 = v239;
          sub_10000C0EC();
          dispatch thunk of CustomStringConvertible.description.getter();
          sub_10028670C();
          v173 = v166;
          v44 = v165;
          v46 = v164;
          v52 = &selRef_setWindowed_;
          v237(v173, v172);
          v174 = sub_100027E34();
          sub_10002741C(v174, v175, v176);
          sub_100005EC4();

          *(v159 + 14) = v170;
          *(v159 + 22) = 2080;
          sub_100286810();
          v148 = v171;
          v177 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_100286764(v177, v178);
          sub_100010160();
          *(v159 + 24) = v169;
          v179 = v229;
          _os_log_impl(&_mh_execute_header, v229, v228, "[CSDConversationCallCoordinator] Applying call-update: %s, conversationUUID: %s, callUUID: %s", v159, 0x20u);
          v151 = v230;
          sub_1002867D4();
          sub_10000E50C();

          v49 = v231;
          sub_100009ED0();
        }

        else
        {
        }

        [*(v44 + 16) updateWithOverrideCallProperties:v156];

        p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
        v150 = v238;
      }

      v180 = [v150 v52[199]];
      if (v233 == v180)
      {
        v181 = v49;
      }

      else
      {
        v181 = 1;
      }

      if (v181 == 1)
      {
        v182 = v49;
        if (p_inst_meths[238] != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v238 = v148;
        v183 = type metadata accessor for Logger();
        sub_1000075F0(v183, qword_1006A24E0);
        v184 = v150;

        v231 = v151;
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.default.getter();

        v187 = os_log_type_enabled(v185, v186);
        v234 = v46;
        if (v187)
        {
          v188 = v52;
          v189 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          *v189 = 136315906;
          v190 = v236;
          if (v182)
          {
            v191 = 0xE300000000000000;
            v192 = 7104878;
          }

          else
          {
            v240 = v233;
            type metadata accessor for TUConversationState(0);
            v192 = String.init<A>(reflecting:)();
            v191 = v193;
          }

          sub_10002741C(v192, v191, &v241);
          sub_100010160();
          *(v189 + 4) = v182;
          sub_100022DE4();
          v240 = [v184 v188[199]];
          type metadata accessor for TUConversationState(0);
          v194 = String.init<A>(reflecting:)();
          sub_100286764(v194, v195);
          sub_100010160();
          *(v189 + 14) = v182;
          *(v189 + 22) = 2080;
          v196 = [v184 UUID];
          sub_1002869C8();

          sub_100009EDC();
          v199 = sub_100286020(v197, v198);
          v200 = v239;
          sub_10000C0EC();
          dispatch thunk of CustomStringConvertible.description.getter();
          v201 = sub_100005EC4();
          v237(v201, v200);
          v202 = sub_100027E34();
          sub_10002741C(v202, v203, v204);
          sub_100005EC4();

          *(v189 + 24) = v190;
          *(v189 + 32) = 2080;
          sub_100286810();
          sub_10000C0EC();
          v205 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_100286764(v205, v206);
          sub_100010160();
          *(v189 + 34) = v199;
          _os_log_impl(&_mh_execute_header, v185, v186, "[CSDConversationCallCoordinator] Conversation changed state, from: %s to: %s, conversationUUID: %s, callUUID: %s", v189, 0x2Au);
          swift_arrayDestroy();
          sub_100009ED0();

          v52 = &selRef_setWindowed_;
          sub_100009ED0();
        }

        v207 = *(v44 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStateStream);
        v241 = [v184 v52[199]];
        AsyncBroadcastStream.yield(_:)();
        if ([v184 v52[199]] == 4)
        {
          v208 = v184;

          v209 = Logger.logObject.getter();
          v210 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v209, v210))
          {
            v211 = sub_100007C08();
            v233 = sub_100007630();
            v241 = v233;
            *v211 = 136315394;
            v212 = [v208 UUID];
            v213 = v44;
            v214 = v236;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100009EDC();
            v217 = sub_100286020(v215, v216);
            v218 = v239;
            v219 = dispatch thunk of CustomStringConvertible.description.getter();
            v220 = v214;
            v44 = v213;
            v237(v220, v218);
            v221 = sub_10001E3B8();
            sub_10002741C(v221, v222, v223);
            sub_100044480();

            *(v211 + 4) = v219;
            sub_100286848();
            v224 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_100286764(v224, v225);
            sub_100007738();
            *(v211 + 14) = v217;
            _os_log_impl(&_mh_execute_header, v209, v210, "[CSDConversationCallCoordinator] Conversation in leaving state, conversationUUID: %s, callUUID: %s", v211, 0x16u);
            sub_1002868C8();
            sub_10000E50C();

            sub_100009ED0();
          }

          v226 = OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation;
          if ((*(v44 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) & 1) == 0)
          {
            AsyncBroadcastStream.finish()();
            AsyncBroadcastStream.finish()();
          }

          *(v44 + v226) = 0;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    goto LABEL_66;
  }

  v75 = *(v0 + 16);
  v76 = [*(v44 + 16) conversationGroupUUID];
  v234 = v33 + 8;
  v230 = v75;
  if (!v76)
  {
    sub_100007928();
    sub_10000AF74(v96, v97, v98, v239);
    sub_100009A04(v29, &unk_1006A3DD0, &unk_10057C9D0);
    p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
    goto LABEL_24;
  }

  v77 = v76;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = 1;
  sub_100007C20();
  sub_10000AF74(v79, v80, v81, v239);
  sub_100009A04(v29, &unk_1006A3DD0, &unk_10057C9D0);
  v82 = [v75 conversationGroupUUID];
  if (v82)
  {
    v83 = v82;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = 0;
  }

  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  v84 = v239;
  sub_10000AF74(v26, v78, 1, v239);
  v85 = [v238 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007C20();
  sub_10000AF74(v86, v87, v88, v84);
  v89 = v233[12];
  sub_100285FC4(v26, v9, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v1, &v9[v89], &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(v9, 1, v84);
  if (v99)
  {
    v75 = &unk_1006A3DD0;
    sub_10000528C();
    sub_100009A04(v90, v91, v92);
    sub_10000528C();
    sub_100009A04(v93, v94, v95);
    sub_10000C4F8(&v9[v89], 1, v84);
    v46 = v234;
    if (v99)
    {
      sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_2;
    }

    goto LABEL_23;
  }

  sub_100285FC4(v9, v232, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(&v9[v89], 1, v84);
  if (v99)
  {
    v75 = &unk_1006A3DD0;
    sub_10000528C();
    sub_100009A04(v100, v101, v102);
    sub_10000528C();
    sub_100009A04(v103, v104, v105);
    v106 = sub_100006694();
    (v237)(v106);
LABEL_23:
    sub_100009A04(v9, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_24;
  }

  v119 = v44;
  v120 = v236;
  (*(v33 + 32))(v236, &v9[v89], v84);
  sub_100009EDC();
  sub_100286020(v121, v122);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v123 = v120;
  v44 = v119;
  v124 = v234;
  v125 = v237;
  v237(v123, v84);
  v126 = sub_10000C0EC();
  sub_100009A04(v126, v127, &unk_10057C9D0);
  sub_100009A04(v26, &unk_1006A3DD0, &unk_10057C9D0);
  v128 = v84;
  v46 = v124;
  v125(v232, v128);
  p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
  sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
  if (v75)
  {
    goto LABEL_2;
  }

LABEL_24:
  if (p_inst_meths[238] != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  sub_1000075F0(v107, qword_1006A24E0);
  v108 = v238;

  v109 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100286920())
  {
    sub_100015070();
    v110 = swift_slowAlloc();
    v242 = sub_10000C554();
    *v110 = 136315650;
    sub_100009EDC();
    sub_100286020(v111, v112);
    sub_100286810();
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = v114;
    sub_10002741C(v113, v114, &v242);
    sub_10000667C();

    *(v110 + 4) = v75;
    *(v110 + 12) = 2080;
    v116 = [v230 conversationGroupUUID];
    if (v116)
    {
      v115 = v116;
      v117 = v231;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = 0;
    }

    else
    {
      v118 = 1;
      v117 = v231;
    }

    sub_10000AF74(v117, v118, 1, v239);
    sub_1002910A0();
    v129 = sub_100005F0C();
    sub_100009A04(v129, &unk_1006A3DD0, &unk_10057C9D0);
    v130 = sub_100006B30();
    sub_10002741C(v130, v131, v132);
    sub_100005F0C();

    *(v110 + 14) = v115;
    *(v110 + 22) = 2080;
    v133 = [v108 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = sub_100006694();
    (v237)(v135);
    v136 = sub_100006B30();
    sub_10002741C(v136, v137, v138);
    sub_100005F0C();

    *(v110 + 24) = v134;
    sub_1002866F0();
    _os_log_impl(v139, v140, v141, v142, v143, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

LABEL_66:
  sub_100005EDC();
}

uint64_t sub_10027ADE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006A24E0);
  (*(v5 + 16))(v9, a1, v4);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v14 = 136315394;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_10002741C(v15, v17, &v29);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_10002741C(v19, v20, &v29);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[CSDConversationCallCoordinator] Downgrading to AVLess, setting conversation provider to default, conversationUUID: %s, callUUID: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v22 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  v23 = [objc_opt_self() faceTimeProvider];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v22 setProvider:v23 forConversationUUID:isa];

  sub_10027FCB0();
  return sub_10027BD8C(1);
}

void sub_10027B12C()
{
  sub_100005EF4();
  v3 = v2;
  v173 = v4;
  v176 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070(v176);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v10 = &v171 - v9;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = sub_100007BF0(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_100007BAC();
  v175 = (v16 - v17);
  sub_100006838();
  __chkstk_darwin(v18, v19);
  v174 = &v171 - v20;
  sub_100006838();
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v171 - v24;
  __chkstk_darwin(v23, v26);
  sub_10000C0F8();
  __chkstk_darwin(v27, v28);
  v30 = &v171 - v29;
  v31 = type metadata accessor for UUID();
  v32 = sub_100007FEC(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32, v37);
  sub_100007FDC();
  v40 = (v39 - v38);
  v41 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v180 = v3;
  v42 = [v3 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v177 = v41;
  LOBYTE(v42) = static UUID.== infix(_:_:)();
  v43 = *(v34 + 8);
  v178 = v40;
  v179 = v43;
  v181 = v31;
  v43(v40, v31);
  if (v42)
  {
LABEL_2:
    v44 = OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation;
    if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v45 = v0;
      v46 = v180;
      v47 = [v180 state];
      v48 = v179;
      if (v47 && [v46 state] != 4)
      {
        v176 = v44;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_1000075F0(v49, qword_1006A24E0);
        v50 = v173;
        v51 = v46;

        v52 = v51;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          sub_100015070();
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v173 = v56;
          v174 = sub_100007630();
          v182[0] = v174;
          *v55 = 138412802;
          *(v55 + 4) = v50;
          *v56 = v50;
          sub_100286848();
          v57 = v50;
          v58 = [v52 UUID];
          v175 = v52;
          v59 = v58;
          LODWORD(v172) = v54;
          v60 = v178;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100009EDC();
          sub_100286020(v61, v62);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v179(v60, v181);
          v64 = sub_100016F58();
          sub_10002741C(v64, v65, v66);
          sub_10000771C();
          v46 = v180;
          v67 = v181;

          *(v55 + 14) = v63;
          *(v55 + 22) = 2080;
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = sub_10002741C(v68, v69, v182);
          v52 = v175;

          *(v55 + 24) = v70;
          _os_log_impl(&_mh_execute_header, v53, v172, "[CSDConversationCallCoordinator] Leaving conversation since remote active participant left the conversation: %@, conversationUUID: %s, callUUID: %s", v55, 0x20u);
          sub_100009A04(v173, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          swift_arrayDestroy();
          sub_100009ED0();

          v48 = v179;
          sub_100009ED0();
        }

        else
        {

          v60 = v178;
          v67 = v181;
        }

        v148 = *(v45 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
        v149 = [v52 UUID];
        sub_1002869C8();

        UUID._bridgeToObjectiveC()();
        v150 = sub_100005EC4();
        v48(v150, v67);
        [v148 leaveConversationWithUUID:v60];

        v44 = v176;
      }

      if (qword_1006A0770 != -1)
      {
        sub_10000802C();
        swift_once();
      }

      v151 = type metadata accessor for Logger();
      sub_1000075F0(v151, qword_1006A24E0);
      v152 = v46;

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.default.getter();

      v155 = os_log_type_enabled(v153, v154);
      v156 = v178;
      if (v155)
      {
        v157 = sub_100007C08();
        v176 = v44;
        v158 = v157;
        v182[0] = sub_100007630();
        *v158 = 136315394;
        v159 = [v152 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100009EDC();
        sub_100286020(v160, v161);
        v162 = v181;
        dispatch thunk of CustomStringConvertible.description.getter();
        v163 = sub_10000667C();
        v179(v163, v162);
        v164 = sub_100016F58();
        sub_10002741C(v164, v165, v166);
        sub_10000771C();

        *(v158 + 4) = v156;
        sub_100286854();
        v167 = sub_1002868A8();
        sub_10002741C(v167, v168, v182);
        sub_100010160();
        *(v158 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v153, v154, "[CSDConversationCallCoordinator] Stopped tracking conversation for call, conversationUUID: %s, callUUID: %s", v158, 0x16u);
        sub_10004A090();
        sub_100009ED0();

        v44 = v176;
        sub_100009ED0();
      }

      *(v45 + v44) = 0;
      v169 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
      sub_1002866E0();
      swift_beginAccess();
      v170 = *(v45 + v169);
      *(v45 + v169) = 0;

      sub_10027BD8C(2);
    }

    goto LABEL_40;
  }

  v172 = v0;
  v71 = v0[2];
  v0 = &selRef_beginMatchingExtensions;
  v72 = [v71 conversationGroupUUID];
  if (!v72)
  {
    sub_100007928();
    sub_10000AF74(v94, v95, v96, v181);
    v97 = &unk_1006A3DD0;
    v98 = &unk_10057C9D0;
    v99 = v30;
LABEL_22:
    sub_100009A04(v99, v97, v98);
    goto LABEL_23;
  }

  v73 = v72;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = 1;
  sub_100007C20();
  sub_10000AF74(v75, v76, v77, v181);
  sub_100009A04(v30, &unk_1006A3DD0, &unk_10057C9D0);
  v78 = [v71 conversationGroupUUID];
  if (v78)
  {
    v79 = v78;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = 0;
  }

  v81 = v180;
  v80 = v181;
  sub_10000AF74(v1, v74, 1, v181);
  v82 = [v81 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007C20();
  sub_10000AF74(v83, v84, v85, v80);
  v86 = *(v176 + 48);
  v87 = v80;
  v0 = &unk_1006A3DD0;
  sub_100285FC4(v1, v10, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v25, &v10[v86], &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(v10, 1, v87);
  if (v100)
  {
    sub_100035CA0();
    sub_100009A04(v88, v89, v90);
    sub_100035CA0();
    sub_100009A04(v91, v92, v93);
    sub_10000C4F8(&v10[v86], 1, v87);
    if (v100)
    {
      sub_100009A04(v10, &unk_1006A3DD0, &unk_10057C9D0);
      v0 = v172;
      goto LABEL_2;
    }

    goto LABEL_21;
  }

  sub_100285FC4(v10, v174, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(&v10[v86], 1, v87);
  if (v100)
  {
    v0 = &unk_1006A3DD0;
    sub_100035CA0();
    sub_100009A04(v101, v102, v103);
    sub_100035CA0();
    sub_100009A04(v104, v105, v106);
    v107 = sub_100007624();
    (v179)(v107);
LABEL_21:
    v97 = &unk_1006A2A30;
    v98 = &unk_10057D150;
    v99 = v10;
    goto LABEL_22;
  }

  v124 = v178;
  (*(v34 + 32))(v178, &v10[v86], v87);
  sub_100009EDC();
  sub_100286020(v125, v126);
  sub_100027E34();
  LODWORD(v176) = dispatch thunk of static Equatable.== infix(_:_:)();
  v127 = v179;
  v179(v124, v87);
  sub_100006844();
  sub_100009A04(v128, v129, v130);
  sub_100006844();
  sub_100009A04(v131, v132, v133);
  v134 = sub_100007624();
  v127(v134);
  sub_100006844();
  sub_100009A04(v135, v136, v137);
  v0 = v172;
  if (v176)
  {
    goto LABEL_2;
  }

LABEL_23:
  v108 = v71;
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_1000075F0(v109, qword_1006A24E0);
  v110 = v180;

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  v113 = os_log_type_enabled(v111, v112);
  v114 = v181;
  if (v113)
  {
    sub_100015070();
    v115 = swift_slowAlloc();
    v180 = sub_10000C554();
    v182[0] = v180;
    *v115 = 136315650;
    sub_100009EDC();
    sub_100286020(v116, v117);
    v118 = sub_1002868A8();
    sub_10002741C(v118, v119, v182);
    sub_10000667C();

    *(v115 + 4) = v0;
    sub_100286848();
    v120 = [v108 conversationGroupUUID];
    if (v120)
    {
      v121 = v120;
      v122 = v175;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = 0;
    }

    else
    {
      v123 = 1;
      v122 = v175;
    }

    sub_10000AF74(v122, v123, 1, v114);
    v138 = sub_1002910A0();
    sub_100009A04(v122, &unk_1006A3DD0, &unk_10057C9D0);
    v139 = sub_100006B30();
    sub_10002741C(v139, v140, v141);
    sub_100005F0C();

    *(v115 + 14) = v138;
    *(v115 + 22) = 2080;
    v142 = [v110 groupUUID];
    v143 = v178;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v179(v143, v114);
    v145 = sub_100006B30();
    sub_10002741C(v145, v146, v147);
    sub_100005F0C();

    *(v115 + 24) = v144;
    _os_log_impl(&_mh_execute_header, v111, v112, "[CSDConversationCallCoordinator] Ignoring handleConversationRemovedActiveParticipant, callUUID: %s, conversationGroupUUID:, %s, groupUUID: %s", v115, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

LABEL_40:
  sub_100005EDC();
}

uint64_t sub_10027BD8C(char a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - v11;
  v13 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask;
  if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask))
  {
    v20 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask);

    Task.cancel()();

    v21 = *(v2 + v19);
    *(v2 + v19) = 0;
  }

  v22 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  swift_beginAccess();
  sub_100285FC4(v2 + v22, v12, &qword_1006A2548, &unk_10057CFC0);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    return sub_100009A04(v12, &qword_1006A2548, &unk_10057CFC0);
  }

  (*(v14 + 32))(v18, v12, v13);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006A24E0);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = v9;
    v28 = v27;
    v35 = swift_slowAlloc();
    v37[0] = v35;
    *v28 = 136315394;
    v29 = sub_10027674C(a1);
    v31 = sub_10002741C(v29, v30, v37);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_10002741C(v32, v33, v37);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "[CSDConversationCallCoordinator] Completing tearDownContinuation, reason: %s, callUUID: %s", v28, 0x16u);
    swift_arrayDestroy();

    v9 = v36;
  }

  CheckedContinuation.resume(returning:)();
  (*(v14 + 8))(v18, v13);
  sub_10000AF74(v9, 1, 1, v13);
  swift_beginAccess();
  sub_100285F54(v9, v2 + v22);
  return swift_endAccess();
}

uint64_t sub_10027C1B4()
{
  sub_100006810();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for UUID();
  v1[5] = v4;
  sub_100005EB4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_100015418();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v8, v9);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[11] = v10;
  v1[12] = v11;
  v12 = sub_100286804();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10027C2BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t log, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[4];
  v30 = sub_1002767F8();
  v26[13] = v30;
  v31 = v30;
  v32 = v26[3];
  v33 = v26[4];
  if (static UUID.== infix(_:_:)())
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v34 = v26[2];
    v35 = type metadata accessor for Logger();
    sub_1000075F0(v35, qword_1006A24E0);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v34 = v26[2];
      sub_100007BFC();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v34;
      *v40 = v34;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v37, v38, "[CSDConversationCallCoordinator] handleActivitySessionCreationRequest: %@", v39, 0xCu);
      sub_100009A04(v40, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009ED0();
    }

    v42 = v26[2];

    v43 = [v42 activityIdentifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10028673C();

      if ((v44 & 1) == 0)
      {
        v49 = v26[9];
        v50 = [v31 UUID];
        sub_10028677C();

        v51 = swift_task_alloc();
        v26[17] = v51;
        *v51 = v26;
        v51[1] = sub_10027CAD4;
        v52 = v26[9];
        sub_10028681C();
LABEL_18:
        sub_10000D3E8();

        return sub_100276F1C();
      }
    }

    v74 = v26[10];
    v75 = [v31 UUID];
    sub_10028677C();

    v76 = swift_task_alloc();
    v26[14] = v76;
    *v76 = v26;
    v76[1] = sub_10027C884;
    v77 = v26[10];
    sub_10028681C();
    goto LABEL_18;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v54 = v26[6];
  v53 = v26[7];
  v56 = v26[4];
  v55 = v26[5];
  v57 = v26[3];
  v58 = type metadata accessor for Logger();
  sub_10000AF9C(v58, qword_1006A24E0);
  v95 = *(v54 + 16);
  v96 = v54 + 16;
  v95(v53, v57, v55);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v26[6];
  v63 = v26[7];
  v64 = v26[5];
  if (v61)
  {
    sub_100015070();
    v65 = swift_slowAlloc();
    a10 = sub_10000C554();
    a14 = a10;
    *v65 = 136315650;
    *(v65 + 4) = sub_10002741C(0xD00000000000004CLL, 0x8000000100562DB0, &a14);
    sub_100022DE4();
    sub_100009EDC();
    sub_100286020(v66, v67);
    a11 = v31;
    log = v59;
    sub_100286718();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10002741C(v68, v69, &a14);
    sub_100027E40();

    *(v65 + 14) = v60;
    *(v65 + 22) = 2080;
    sub_100286718();
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v62 + 8))(v63, v64);
    v70 = sub_100006B3C();
    v73 = sub_10002741C(v70, v71, v72);

    *(v65 + 24) = v73;
    _os_log_impl(&_mh_execute_header, log, v60, "[CSDConversationCallCoordinator] %s Skipping handleActivitySessionCreationRequest, callUUID expected: %s, provided: %s", v65, 0x20u);
    sub_1002867D4();
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {

    (*(v62 + 8))(v63, v64);
  }

  v80 = v26[5];
  v81 = v26[3];
  type metadata accessor for ConversationCallCoordinator.ActivitySessionCreationError(0);
  sub_100286020(&qword_1006A2628, type metadata accessor for ConversationCallCoordinator.ActivitySessionCreationError);
  sub_100006104();
  swift_allocError();
  v95(v82, v81, v80);
  swift_willThrow();

  v84 = v26[9];
  v83 = v26[10];
  v86 = v26[7];
  v85 = v26[8];

  sub_100009EF4();
  sub_10000D3E8();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, log, a10, a11, v95, v96, a14, a15, a16, a17, a18);
}

uint64_t sub_10027C884()
{
  sub_10000F984();
  sub_100007648();
  sub_100286860();
  sub_100008060();
  *v3 = v1;
  v4 = v1[14];
  v5 = v1[10];
  v6 = v1[6];
  v7 = v1[5];
  *v3 = *v2;
  v1[15] = v0;

  v8 = *(v6 + 8);
  v1[16] = v8;
  v8(v5, v7);
  sub_10001540C();
  v10 = *(v9 + 96);
  v11 = v1[11];
  sub_10001AB70();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10027CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v16 = *(v14 + 128);
  sub_10002201C();
  v17 = [v13 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F1538(v15);
  v16(v15, v12);

  sub_10028686C();
  sub_100005F24();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10027CAD4()
{
  sub_10000F984();
  sub_100007648();
  sub_100286860();
  sub_100008060();
  *v3 = v1;
  v4 = v1[17];
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[5];
  *v3 = *v2;
  v1[18] = v0;

  v8 = *(v6 + 8);
  v1[19] = v8;
  v8(v5, v7);
  sub_10001540C();
  v10 = *(v9 + 96);
  v11 = v1[11];
  sub_10001AB70();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10027CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v16 = *(v14 + 152);
  sub_10002201C();
  v17 = [v13 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F1538(v15);
  v16(v15, v12);

  sub_10028686C();
  sub_100005F24();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10027CD24()
{
  sub_10000C698();

  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  sub_100009EF4();

  return v6();
}

uint64_t sub_10027CDAC()
{
  sub_10000C698();

  v1 = *(v0 + 144);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  sub_100009EF4();

  return v6();
}

uint64_t sub_10027CE34()
{
  sub_100006810();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  sub_100005EB4(v3);
  v1[23] = v4;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v1[25] = v7;
  sub_100007BF0(v7);
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v10);
  v12 = *(v11 + 64);
  v1[27] = sub_100015418();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v1[31] = v13;
  sub_100005EB4(v13);
  v1[32] = v14;
  v16 = *(v15 + 64);
  v1[33] = sub_100015418();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v17, v18);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[40] = v19;
  v1[41] = v20;
  v21 = sub_100286804();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_10027D038()
{
  v129 = v0;
  v1 = v0[39];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[21];
  v5 = &selRef_prewarmMediaRequest_completion_;
  v6 = [v0[20] UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = static UUID.== infix(_:_:)();
  v9 = *(v3 + 8);
  v7 = v3 + 8;
  v8 = v9;
  v0[42] = v9;
  v0[43] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_100005ED0();
  (v9)(v10);
  if ((v6 & 1) == 0)
  {
    v124 = v4;
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v13 = v0[20];
    v14 = v0[21];
    v15 = type metadata accessor for Logger();
    sub_1000075F0(v15, qword_1006A24E0);

    v16 = v13;
    v17 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10028673C();

    if (sub_1002869B0())
    {
      v123 = v7;
      v18 = v0[39];
      v19 = v0[31];
      v120 = v0[20];
      sub_100015070();
      v20 = swift_slowAlloc();
      v128[0] = sub_10000C554();
      *v20 = 136315650;
      *(v20 + 4) = sub_100035D9C("handleJoinConversation(request:)", v116, v117, v118, v120, v122, v123, v124);
      *(v20 + 12) = 2080;
      sub_100009EDC();
      sub_100286020(v21, v22);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_10002741C(v23, v24, v128);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v26 = [v121 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v8(v18, v19);
      v28 = sub_10001E3B8();
      sub_10002741C(v28, v29, v30);
      sub_100044480();

      *(v20 + 24) = v27;
      sub_100017C80();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    goto LABEL_8;
  }

  v11 = v0[21];
  v12 = sub_1002767F8();
  v0[44] = v12;
  v38 = v12;
  v39 = 0xD000000000000020;
  if ([v0[20] requestToShareScreen])
  {
    v41 = 4;
  }

  else
  {
    v41 = 1;
  }

  v43 = sub_1002766BC(v41) == 0xD000000000000014 && 0x8000000100562CF0 == v42;
  if (v43)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    v44 = v0[30];
    v45 = v0[31];
    v46 = v0[21];
    v47 = [v38 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 1;
    sub_100007C20();
    sub_10000AF74(v49, v50, v51, v45);
    v126 = *(v46 + 16);
    v52 = [v126 conversationGroupUUID];
    if (v52)
    {
      v53 = v52;
      v54 = v0[29];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = 0;
    }

    v56 = v0[30];
    v55 = v0[31];
    v57 = v0[29];
    v58 = v0[25];
    v59 = v0[26];
    sub_10000AF74(v57, v48, 1, v55);
    v60 = *(v58 + 48);
    v39 = v0;
    v61 = v56;
    v62 = v60;
    sub_100285FC4(v61, v59, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100285FC4(v57, v62 + v59, &unk_1006A3DD0, &unk_10057C9D0);
    v63 = sub_100015468(v59, 1, v55);
    v64 = v0[31];
    if (v63 == 1)
    {
      v65 = v0[30];
      v39 = v62;
      sub_100009A04(v0[29], &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v65, &unk_1006A3DD0, &unk_10057C9D0);
      sub_10000C4F8(v62 + v59, 1, v64);
      if (!v43)
      {
        goto LABEL_31;
      }

      sub_100009A04(v0[26], &unk_1006A3DD0, &unk_10057C9D0);
      v5 = &selRef_prewarmMediaRequest_completion_;
    }

    else
    {
      sub_100285FC4(v0[26], v0[28], &unk_1006A3DD0, &unk_10057C9D0);
      sub_10000C4F8(v62 + v59, 1, v64);
      if (v43)
      {
        v71 = v0[30];
        v72 = v0[31];
        v73 = v0[28];
        sub_100009A04(v0[29], &unk_1006A3DD0, &unk_10057C9D0);
        sub_100009A04(v71, &unk_1006A3DD0, &unk_10057C9D0);
        v8(v73, v72);
LABEL_31:
        sub_100009A04(v0[26], &unk_1006A2A30, &unk_10057D150);
LABEL_32:
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v74 = v0[21];
        v75 = type metadata accessor for Logger();
        sub_1000075F0(v75, qword_1006A24E0);
        v76 = v38;

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = v0[39];
          v80 = v0[31];
          sub_100015070();
          v81 = swift_slowAlloc();
          v82 = sub_10000C554();
          v128[0] = v82;
          *v81 = 136315650;
          *(v81 + 4) = sub_100035D9C("handleJoinConversation(request:)", v116, v117, v118, v119, v8, v82, v126);
          sub_100286854();
          v83 = [v76 groupUUID];
          sub_10028677C();

          sub_100009EDC();
          sub_100286020(v84, v85);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          v89 = sub_10001E3B8();
          v90(v89);
          sub_10002741C(v86, v88, v128);
          sub_10000771C();

          *(v81 + 14) = v79;
          *(v81 + 22) = 2080;
          v91 = [v127 conversationGroupUUID];
          if (v91)
          {
            v92 = v91;
            v93 = v0[27];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v94 = 0;
          }

          else
          {
            v94 = 1;
          }

          v112 = v0[27];
          sub_10000AF74(v112, v94, 1, v0[31]);
          v113 = sub_1002910A0();
          v115 = v114;
          sub_100009A04(v112, &unk_1006A3DD0, &unk_10057C9D0);
          sub_10002741C(v113, v115, v128);
          sub_100044480();

          *(v81 + 24) = v112;
          _os_log_impl(&_mh_execute_header, v77, v78, "[CSDConversationCallCoordinator] %s Skipping, groupUUID expected: %s, provided conversationGroupUUID: %s", v81, 0x20u);
          sub_1002867D4();
          sub_10000E50C();

          sub_100009ED0();
        }

        else
        {
        }

LABEL_8:
        sub_100010140();
        v125 = v0[24];

        sub_100009EF4();

        return v36();
      }

      v95 = v0[39];
      v97 = v0[31];
      v96 = v0[32];
      v117 = v0[29];
      v118 = v0[30];
      v98 = v0[28];
      v119 = v39[26];
      (*(v96 + 32))(v95, v62 + v59, v97);
      sub_100009EDC();
      sub_100286020(v99, v100);
      v101 = dispatch thunk of static Equatable.== infix(_:_:)();
      v8(v95, v97);
      sub_1000444A4();
      sub_100009A04(v102, v103, v104);
      sub_1000444A4();
      sub_100009A04(v105, v106, v107);
      v108 = v98;
      v0 = v39;
      v8(v108, v97);
      sub_1000444A4();
      sub_100009A04(v109, v110, v111);
      v5 = &selRef_prewarmMediaRequest_completion_;
      if ((v101 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v66 = v0[38];
  v67 = [v38 v5[145]];
  sub_10028677C();

  v68 = swift_task_alloc();
  v0[45] = v68;
  *v68 = v0;
  v68[1] = sub_10027DAE8;
  v69 = v0[38];
  v70 = v0[21];

  return sub_100276F1C();
}

uint64_t sub_10027DAE8()
{
  sub_10000C698();
  sub_100286860();
  sub_100007BC8();
  *v4 = v3;
  v5 = *(v1 + 360);
  *v4 = *v2;
  *(v3 + 368) = v0;

  sub_10001540C();
  v7 = *(v6 + 344);
  (*(v1 + 336))(*(v1 + 304), *(v1 + 248));
  sub_10001540C();
  v9 = *(v8 + 328);
  v10 = *(v1 + 320);
  if (v0)
  {
    v11 = sub_10027E4A0;
  }

  else
  {
    v11 = sub_10027DC64;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10027DC64()
{
  v69 = v0;
  v1 = [*(v0 + 160) activity];
  if (!v1)
  {

    goto LABEL_13;
  }

  v2 = v1;
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = [v1 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(v8 + 32);
  v11 = sub_10000BB1C();
  v10(v11);
  v12 = [v4 activitySessions];
  sub_100006844();
  sub_100006AF0(v13, v14, v15);
  sub_100006844();
  sub_10000CE3C(v16, v17, v18);
  sub_1000507CC();
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = swift_task_alloc();
  *(v20 + 16) = v5;
  sub_1002CAE38(sub_10028621C, v20, v19);
  v22 = v21;

  if (!v22)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v33 = *(v0 + 296);
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 248);
    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006A24E0);
    v38 = *(v35 + 16);
    sub_10000528C();
    v39();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 344);
    v44 = *(v0 + 336);
    v45 = *(v0 + 264);
    v46 = *(v0 + 248);
    if (v42)
    {
      sub_100007BFC();
      v67 = v47;
      v48 = swift_slowAlloc();
      sub_100015070();
      v49 = swift_slowAlloc();
      v68 = v49;
      *v48 = 136315138;
      sub_100009EDC();
      sub_100286020(v50, v51);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v55 = sub_100006B3C();
      v44(v55);
      sub_10002741C(v52, v54, &v68);
      sub_100044480();

      *(v48 + 4) = v45;
      sub_100017C80();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      sub_100009B7C(v49);
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      v61 = sub_100006B3C();
      v44(v61);
    }

    v62 = sub_100025BE0();
    v63(v62);
LABEL_13:
    sub_100010140();
    sub_100286748();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 272);
  v24 = *(v0 + 280);
  v25 = *(v0 + 248);
  v26 = *(v0 + 168);
  v27 = [v22 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (v10)(v24, v23, v25);
  v28 = *(v26 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v0 + 376) = isa;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10027E144;
  v30 = swift_continuation_init();
  *(v0 + 136) = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1003432B0;
  *(v0 + 104) = &unk_100622110;
  *(v0 + 112) = v30;
  [v28 launchApplicationForActivitySessionUUID:isa authorizedExternally:0 forceBackground:0 completionHandler:?];
  sub_100011274();

  return _swift_continuation_await(v31);
}

uint64_t sub_10027E144()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 384) = v4;
  v5 = v3[41];
  v6 = v3[40];
  if (v4)
  {
    v7 = sub_10027E7F0;
  }

  else
  {
    v7 = sub_10027E268;
  }

  return _swift_task_switch(v7, v6, v5);
}

id sub_10027E268()
{
  v1 = *(v0 + 160);

  v2 = [v1 activity];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isScreenSharingActivity];

    if (v4)
    {
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = result;
      v7 = [objc_opt_self() screenSharingAppURL];
      if (v7)
      {
        v9 = *(v0 + 184);
        v8 = *(v0 + 192);
        v10 = *(v0 + 176);
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v11);
        v7 = v12;
        (*(v9 + 8))(v8, v10);
      }

      v14 = *(v0 + 344);
      v13 = *(v0 + 352);
      v15 = *(v0 + 336);
      v16 = *(v0 + 280);
      v17 = *(v0 + 248);
      [v6 openURL:v7 configuration:0 completionHandler:0];

      v15(v16, v17);
    }

    else
    {
      v23 = *(v0 + 344);
      v24 = *(v0 + 352);
      (*(v0 + 336))(*(v0 + 280), *(v0 + 248));
    }
  }

  else
  {
    v18 = *(v0 + 344);
    v19 = *(v0 + 336);
    v20 = *(v0 + 280);
    v21 = *(v0 + 248);

    v22 = sub_100005ED0();
    v19(v22);
  }

  v25 = sub_100025BE0();
  v26(v25);
  sub_100010140();
  sub_100286748();

  sub_100009EF4();

  return v27();
}

uint64_t sub_10027E4A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (*a10)(uint64_t), os_log_t log, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v29 = v26[46];
  v30 = v26[44];
  v31 = type metadata accessor for Logger();
  sub_1000075F0(v31, qword_1006A24E0);
  v32 = v30;
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v26[46];
  v37 = v26[44];
  if (v35)
  {
    v70 = v26[46];
    v38 = v26[43];
    a10 = v26[42];
    v73 = v34;
    v39 = v26[39];
    v40 = v26[31];
    sub_100015070();
    v41 = swift_slowAlloc();
    a15 = sub_10000C554();
    *v41 = 136315650;
    v42 = [v37 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009EDC();
    sub_100286020(v43, v44);
    sub_100286718();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = sub_10001E3B8();
    log = v33;
    a10(v48);
    v49 = sub_10002741C(v45, v47, &a15);

    *(v41 + 4) = v49;
    sub_100286854();
    v50 = [v37 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100286718();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v54 = sub_10001E3B8();
    a10(v54);
    v55 = sub_10002741C(v51, v53, &a15);

    *(v41 + 14) = v55;
    *(v41 + 22) = 2080;
    v26[18] = v70;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v56 = String.init<A>(reflecting:)();
    v58 = sub_10002741C(v56, v57, &a15);

    *(v41 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v33, v73, "[CSDConversationCallCoordinator] Could not join conversation, conversationUUID: %s, groupUUID: %s, error: %s", v41, 0x20u);
    sub_1002867D4();
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {
  }

  sub_100010140();
  v71 = v60;
  v72 = v59;
  v74 = v26[24];

  sub_100009EF4();
  sub_10000D3E8();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, log, v71, v72, v74, a15, a16, a17, a18);
}

void sub_10027E7F0()
{
  v1 = v0[47];
  v2 = v0[48];
  swift_willThrow();

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v3 = v0[48];
  v4 = type metadata accessor for Logger();
  sub_1000075F0(v4, qword_1006A24E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[48];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v12 = v0[35];
  v13 = v0[31];
  if (v7)
  {
    sub_100007BFC();
    v14 = swift_slowAlloc();
    sub_100015070();
    v23 = v11;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v0[19] = v8;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CSDConversationCallCoordinator] LaunchApplication failed with error: %s", v14, 0xCu);
    sub_100009B7C(v15);
    sub_100009ED0();

    sub_100009ED0();

    v23(v12, v13);
  }

  else
  {

    v11(v12, v13);
  }

  v19 = sub_100025BE0();
  v20(v19);
  sub_100010140();
  sub_100286748();

  sub_100009EF4();
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10027EA54(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 activity];
  v9 = [v8 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  return v10 & 1;
}

void sub_10027EB88(void *a1)
{
  v3 = [objc_allocWithZone(CXCallUpdate) init];
  v4 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
  swift_beginAccess();
  v36 = v1;
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = [v5 isScreenEnabled] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = &selRef_setWindowed_;
  v8 = [a1 state];
  v9 = 0;
  if (v8 == 3 && (v6 & 1) == 0)
  {
    if ([a1 isScreenEnabled])
    {
      v9 = 0;
    }

    else
    {
      [v3 setSharingScreen:0];
      v9 = 1;
    }
  }

  v35 = v9;
  v37 = v3;
  v10 = [a1 activitySessions];
  sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_100027E34();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v39;
    v12 = v40;
    v13 = v41;
    v14 = v42;
    v15 = v43;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);

    v14 = 0;
  }

  v19 = 0;
  v20 = (v13 + 64) >> 6;
  do
  {
    if (v11 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_37;
      }

      swift_dynamicCast();
      v23 = v38;
      if (!v38)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v21 = v14;
      v22 = v15;
      if (!v15)
      {
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v20)
          {
            goto LABEL_37;
          }

          v22 = *(v12 + 8 * v14);
          ++v21;
          if (v22)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        return;
      }

LABEL_21:
      v15 = (v22 - 1) & v22;
      v23 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    if ([v23 v7[199]] == 1)
    {
      v24 = [v23 activity];
      v25 = [v24 activityIdentifier];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
      {

        v32 = 0;
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v32 = (v31 & 1) == 0;
      }

      v7 = &selRef_setWindowed_;
    }

    else
    {

      v32 = 0;
    }

    v33 = __OFADD__(v19, v32);
    v19 += v32;
  }

  while (!v33);
  __break(1u);
LABEL_37:
  sub_100022DDC();

  if (v19 <= 0)
  {
    v34 = v37;
    if (!v19 && ([*(v36 + 16) mixesVoiceWithMedia] & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v34 = v37;
    if (([*(v36 + 16) mixesVoiceWithMedia] & 1) == 0)
    {
LABEL_39:
      [v34 setMixesVoiceWithMedia:v19 > 0];
      return;
    }
  }

  if ((v35 & 1) == 0)
  {
  }
}

uint64_t ConversationCallCoordinator.deinit()
{
  v1 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v2 = type metadata accessor for UUID();
  sub_100008070(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  swift_unknownObjectRelease();
  sub_100009B7C((v0 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider));

  v5 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator_serverBag);
  swift_unknownObjectRelease();

  v6 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStream);

  v7 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStateStream);

  sub_100009A04(v0 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation, &qword_1006A2548, &unk_10057CFC0);
  v8 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask);

  return v0;
}

uint64_t ConversationCallCoordinator.__deallocating_deinit()
{
  ConversationCallCoordinator.deinit();
  v1 = *((swift_isaMask & *v0) + 0x30);
  v2 = *((swift_isaMask & *v0) + 0x34);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10027F194()
{
  sub_100005EF4();
  v3 = v0;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_10000E4F4();
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v21 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006A24E0);
    v23 = v21;
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100286920())
    {
      sub_100007BFC();
      v25 = swift_slowAlloc();
      sub_100015070();
      v44 = swift_slowAlloc();
      *v25 = 136315138;
      v26 = sub_100286998();
      sub_1002867EC();

      sub_100009EDC();
      sub_100286020(v27, v28);
      dispatch thunk of CustomStringConvertible.description.getter();
      v29 = sub_1000066A0();
      v30(v29);
      v31 = sub_100016F58();
      sub_10002741C(v31, v32, v33);
      sub_10000771C();

      *(v25 + 4) = v2;
      sub_1002866F0();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_100009B7C(v44);
      sub_100009ED0();

      sub_100009ED0();
    }

    v39 = *(v3 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v40 = sub_100286998();
    sub_1002867EC();

    UUID._bridgeToObjectiveC()();
    v41 = sub_100286834();
    v42(v41);
    [v39 setIsHeld:1 forConversationUUID:v2];

    goto LABEL_14;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000075F0(v9, qword_1006A24E0);

  v43 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100286980();
  if (sub_100286950())
  {
    sub_100007C08();
    v10 = sub_100007608();
    sub_100286828(v10);
    *v1 = 136315394;
    sub_10003DB48();
    v13 = sub_10002741C(0xD000000000000010, v11, v12);
    sub_100015E8C(v13);
    v14 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    sub_100286020(v15, v16);
    v17 = sub_10003A558();
    sub_100286908(v17, v18);
    sub_10000667C();

    *(v1 + 14) = v14;
    sub_10001C9AC(&_mh_execute_header, v43, v2, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s");
    sub_100018614();
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_14:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_10027F624()
{
  sub_100005EF4();
  v3 = v0;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_10000E4F4();
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v21 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006A24E0);
    v23 = v21;
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100286920())
    {
      sub_100007BFC();
      v25 = swift_slowAlloc();
      sub_100015070();
      v44 = swift_slowAlloc();
      *v25 = 136315138;
      v26 = sub_100286998();
      sub_1002867EC();

      sub_100009EDC();
      sub_100286020(v27, v28);
      dispatch thunk of CustomStringConvertible.description.getter();
      v29 = sub_1000066A0();
      v30(v29);
      v31 = sub_100016F58();
      sub_10002741C(v31, v32, v33);
      sub_10000771C();

      *(v25 + 4) = v2;
      sub_1002866F0();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_100009B7C(v44);
      sub_100009ED0();

      sub_100009ED0();
    }

    v39 = *(v3 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v40 = sub_100286998();
    sub_1002867EC();

    UUID._bridgeToObjectiveC()();
    v41 = sub_100286834();
    v42(v41);
    [v39 setIsHeld:0 forConversationUUID:v2];

    goto LABEL_14;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000075F0(v9, qword_1006A24E0);

  v43 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100286980();
  if (sub_100286950())
  {
    sub_100007C08();
    v10 = sub_100007608();
    sub_100286828(v10);
    *v1 = 136315394;
    sub_10003DB48();
    v13 = sub_10002741C(0xD000000000000019, v11, v12);
    sub_100015E8C(v13);
    v14 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    sub_100286020(v15, v16);
    v17 = sub_10003A558();
    sub_100286908(v17, v18);
    sub_10000667C();

    *(v1 + 14) = v14;
    sub_10001C9AC(&_mh_execute_header, v43, v2, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s");
    sub_100018614();
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_14:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_10027FAC8(char a1, const char *a2, SEL *a3)
{
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000075F0(v7, qword_1006A24E0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (sub_100286920())
  {
    v10 = swift_slowAlloc();
    sub_100015070();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    type metadata accessor for UUID();
    sub_100009EDC();
    sub_100286020(v12, v13);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10002741C(v14, v15, &v18);

    *(v10 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0x12u);
    sub_100009B7C(v11);
    sub_100009ED0();

    sub_100009ED0();
  }

  v17 = [objc_allocWithZone(CXCallUpdate) init];
  [v17 *a3];
  [*(v3 + 16) updateWithOverrideCallProperties:v17];
}

id sub_10027FCB0()
{
  v1 = v0;
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v24[-v5];
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006A24E0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v12 = *(v1 + v11);
    if (v12)
    {
      v13 = [v12 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = type metadata accessor for UUID();
    sub_10000AF74(v6, v14, 1, v15);
    v16 = sub_1002910A0();
    v18 = v17;
    sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
    v19 = sub_10002741C(v16, v18, &v25);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2080;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_10002741C(v20, v21, &v25);

    *(v10 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "[CSDConversationCallCoordinator] Unsubscribing from CSDConversationManager callbacks, conversationUUID: %s, callUUID: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return [*(v1 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager) removeDelegate:v1];
}

uint64_t sub_10027FF94()
{
  sub_100006810();
  *(v1 + 16) = v0;
  *(v1 + 64) = v2;
  sub_1002869E0();
  sub_10000F484();
  *(v1 + 24) = sub_100286020(v3, v4);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = sub_100286804();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100280030()
{
  sub_1000066BC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100280130;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100280130()
{
  sub_10000C698();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;
  sub_100008060();
  *v5 = v4;

  v6 = *(v1 + 40);
  v7 = *(v1 + 32);

  return _swift_task_switch(sub_100280268, v7, v6);
}

uint64_t sub_100280288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = a3;
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v143 = v136 - v8;
  v151 = type metadata accessor for UUID();
  v148 = *(v151 - 8);
  v9 = *(v148 + 64);
  v11 = __chkstk_darwin(v151, v10);
  v140 = v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v144 = v136 - v15;
  __chkstk_darwin(v14, v16);
  v149 = v136 - v17;
  v18 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v141 = *(v18 - 8);
  v19 = *(v141 + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v142 = v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v147 = v136 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v29 = v136 - v28;
  v139 = v30;
  __chkstk_darwin(v27, v31);
  v150 = v136 - v32;
  v33 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  v34 = *(*(v33 - 8) + 64);
  v36 = __chkstk_darwin(v33 - 8, v35);
  v38 = v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v39);
  v41 = v136 - v40;
  v42 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  swift_beginAccess();
  sub_100285FC4(a2 + v42, v41, &qword_1006A2548, &unk_10057CFC0);
  v43 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  v44 = sub_100015468(v41, 1, v43);
  sub_100009A04(v41, &qword_1006A2548, &unk_10057CFC0);
  if (v44 == 1)
  {
    (*(*(v43 - 8) + 16))(v38, a1, v43);
    sub_10000AF74(v38, 0, 1, v43);
    swift_beginAccess();
    sub_100285F54(v38, a2 + v42);
    swift_endAccess();
    v45 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v46 = *(a2 + v45);
    v146 = v46;
    if (v46)
    {
      v47 = v46;
      v48 = [v47 UUID];
      v49 = v150;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000AF74(v49, 0, 1, v151);
      v137 = [v47 avMode];
    }

    else
    {
      v49 = v150;
      sub_10000AF74(v150, 1, 1, v151);
      v137 = 0;
    }

    v138 = [*(a2 + 16) disconnectedReason];
    v59 = sub_1002813F4(a2);
    v61 = v60;
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    v63 = sub_10000AF9C(v62, qword_1006A24E0);
    sub_100285FC4(v49, v29, &unk_1006A3DD0, &unk_10057C9D0);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v136[1] = v63;
      v66 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v66 = 136315906;
      *(v66 + 4) = sub_10002741C(v59, v61, &v153);
      *(v66 + 12) = 2080;
      if (v146)
      {
        v152 = v137;
        v67 = String.init<A>(reflecting:)();
        v69 = v68;
      }

      else
      {
        v69 = 0xE300000000000000;
        v67 = 7104878;
      }

      v72 = sub_10002741C(v67, v69, &v153);

      *(v66 + 14) = v72;
      *(v66 + 22) = 2080;
      v73 = sub_1002910A0();
      v75 = v74;
      sub_100009A04(v29, &unk_1006A3DD0, &unk_10057C9D0);
      v76 = sub_10002741C(v73, v75, &v153);

      *(v66 + 24) = v76;
      *(v66 + 32) = 2080;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
      v70 = v151;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = sub_10002741C(v77, v78, &v153);

      *(v66 + 34) = v79;
      _os_log_impl(&_mh_execute_header, v64, v65, "[CSDConversationCallCoordinator] Tear-down, %s, avMode: %s, conversationUUID: %s, callUUID: %s", v66, 0x2Au);
      swift_arrayDestroy();

      v49 = v150;
      v71 = v147;
    }

    else
    {

      sub_100009A04(v29, &unk_1006A3DD0, &unk_10057C9D0);
      v70 = v151;
      v71 = v147;
    }

    sub_100285FC4(v49, v71, &unk_1006A3DD0, &unk_10057C9D0);
    v80 = sub_100015468(v71, 1, v70);
    v82 = v148;
    v81 = v149;
    if (v80 == 1)
    {

      sub_100009A04(v71, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_35;
    }

    result = (*(v148 + 32))(v149, v71, v70);
    if (v138 == 52)
    {
LABEL_25:

      v83 = v144;
      (*(v82 + 16))(v144, v81, v70);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v86 = 136315394;
        sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
        LODWORD(v151) = v85;
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v83;
        v90 = v89;
        v91 = *(v82 + 8);
        v91(v88, v70);
        v92 = sub_10002741C(v87, v90, &v153);

        *(v86 + 4) = v92;
        *(v86 + 12) = 2080;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = sub_10002741C(v93, v94, &v153);

        *(v86 + 14) = v95;
        v81 = v149;
        _os_log_impl(&_mh_execute_header, v84, v151, "[CSDConversationCallCoordinator] AVLess downgrade detected, conversationUUID: %s, callUUID: %s", v86, 0x16u);
        swift_arrayDestroy();
        v49 = v150;
      }

      else
      {

        v91 = *(v82 + 8);
        v91(v83, v70);
      }

      sub_10027ADE4(v81);

      v91(v81, v70);
      return sub_100009A04(v49, &unk_1006A3DD0, &unk_10057C9D0);
    }

    if (v138 == 6)
    {
      if (!v146 || v137)
      {
        if (!v146)
        {
          __break(1u);
          return result;
        }
      }

      else if ((*(a2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) & 1) == 0)
      {
        goto LABEL_25;
      }

      v96 = v146;

      v97 = [v96 activeRemoteParticipants];

      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v98 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = sub_10001E550(v98);

      if (v99 >= 1)
      {
        v100 = v140;
        (*(v82 + 16))(v140, v81, v70);

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v153 = v151;
          *v103 = 136315394;
          sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
          v104 = v70;
          LODWORD(v147) = v102;
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v100;
          v107 = v82;
          v109 = v108;
          v148 = *(v107 + 8);
          (v148)(v106, v70);
          v110 = sub_10002741C(v105, v109, &v153);

          *(v103 + 4) = v110;
          *(v103 + 12) = 2080;
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = sub_10002741C(v111, v112, &v153);

          *(v103 + 14) = v113;
          _os_log_impl(&_mh_execute_header, v101, v147, "[CSDConversationCallCoordinator] Remote hangup, waiting for conversation avMode to change or remote participant to leave, conversationUUID: %s, callUUID: %s", v103, 0x16u);
          swift_arrayDestroy();

          (v148)(v149, v104);
        }

        else
        {

          v126 = *(v82 + 8);
          v126(v100, v70);
          v126(v81, v70);
        }

        v127 = type metadata accessor for TaskPriority();
        sub_10000AF74(v143, 1, 1, v127);
        v128 = v150;
        v129 = v142;
        sub_100285FC4(v150, v142, &unk_1006A3DD0, &unk_10057C9D0);
        v130 = sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator);
        v131 = (*(v141 + 80) + 40) & ~*(v141 + 80);
        v132 = swift_allocObject();
        v132[2] = a2;
        v132[3] = v130;
        v132[4] = a2;
        sub_100286068(v129, v132 + v131);
        swift_retain_n();
        sub_1002762F0();
        v134 = v133;

        sub_100009A04(v128, &unk_1006A3DD0, &unk_10057C9D0);
        v135 = *(a2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask);
        *(a2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask) = v134;
      }
    }

    else
    {
    }

    sub_10027996C(v81);
    (*(v82 + 8))(v81, v70);
    v49 = v150;
LABEL_35:
    v114 = v145;
    v115 = 0;
    switch(v145)
    {
      case 1:
      case 2:
        sub_100281540(v145, a2);
        v115 = 3;
        goto LABEL_45;
      case 3:
        goto LABEL_38;
      case 4:
        v125 = 4;
        goto LABEL_43;
      case 5:
        goto LABEL_45;
      default:
        if (*(a2 + OBJC_IVAR___CSDConversationCallCoordinator_relaySupportEnabled))
        {
LABEL_38:

          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *v118 = 136315394;
            v119 = sub_100343480(v114);
            v121 = sub_10002741C(v119, v120, &v153);

            *(v118 + 4) = v121;
            *(v118 + 12) = 2080;
            sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = sub_10002741C(v122, v123, &v153);

            *(v118 + 14) = v124;
            _os_log_impl(&_mh_execute_header, v116, v117, "[CSDConversationCallCoordinator] Call remains SharePlay capable, reason: %s, callUUID: %s", v118, 0x16u);
            swift_arrayDestroy();
            v49 = v150;
          }
        }

        else
        {
          v125 = 0;
LABEL_43:
          sub_100281540(v125, a2);
        }

        v115 = 0;
LABEL_45:
        sub_10027FCB0();
        sub_10027BD8C(v115);

        break;
    }

    return sub_100009A04(v49, &unk_1006A3DD0, &unk_10057C9D0);
  }

  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000AF9C(v50, qword_1006A24E0);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v154 = v54;
    *v53 = 136315138;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = sub_10002741C(v55, v56, &v154);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "[CSDConversationCallCoordinator] tearDownContinuation already set! This indicates a bug in the caller, callUUID: %s", v53, 0xCu);
    sub_100009B7C(v54);
  }

  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002813F4(uint64_t a1)
{
  strcpy(v7, "call-status: ");
  HIWORD(v7[1]) = -4864;
  v1 = *(a1 + 16);
  [v1 status];
  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  v3 = v7[0];
  if ([v1 status] == 5 || objc_msgSend(v1, "status") == 6)
  {
    _StringGuts.grow(_:)(25);

    v4._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0xD000000000000017;
    v5._object = 0x8000000100562C60;
    String.append(_:)(v5);

    return v7[0];
  }

  return v3;
}

void sub_100281540(char a1, uint64_t a2)
{
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006A24E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_100343480(a1);
    v10 = sub_10002741C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_10002741C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CSDConversationCallCoordinator] Call is no longer SharePlay capable, reason: %s, callUUID: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_allocWithZone(CXCallUpdate) init];
  [v14 setIsSharePlayCapable:0];
  [*(a2 + 16) updateWithOverrideCallProperties:v14];
}

uint64_t sub_100281780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v14;
  v5[12] = v13;

  return _swift_task_switch(sub_10028192C, v14, v13);
}

uint64_t sub_10028192C()
{
  sub_10000C698();
  v1 = v0[10];
  v0[13] = [*(v0[2] + OBJC_IVAR___CSDConversationCallCoordinator_serverBag) sharePlayForCallsRemoteHangupFailsafeSeconds];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_100281A24;
  v3 = v0[10];
  sub_100007624();

  return sub_1003B3858();
}

uint64_t sub_100281A24()
{
  sub_1000066BC();
  sub_100286860();
  sub_100007BC8();
  *v4 = v3;
  v5 = v1[14];
  v6 = v1[10];
  v7 = v1[9];
  v8 = v1[8];
  *v4 = *v2;
  *(v3 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  sub_10001540C();
  v10 = *(v9 + 96);
  v11 = v1[11];
  if (v0)
  {
    v12 = sub_100281DF0;
  }

  else
  {
    v12 = sub_100281BAC;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100281DF0()
{
  sub_100006810();
  v1 = v0[15];

  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  sub_100009EF4();

  return v5();
}

void ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100016EB4();
  v12 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v12);
  v14 = *(v13 + 64);
  sub_100006688();
  __chkstk_darwin(v15, v16);
  sub_1002868E8();
  sub_100007928();
  sub_10000AF74(v17, v18, v19, v20);
  (*(v8 + 16))(v0, v4, v5);
  v21 = ((*(v8 + 80) + 40) & ~*(v8 + 80)) + v10;
  v22 = swift_allocObject();
  v23 = sub_10003EA40(v22);
  v24(v23);
  *(v22 + v21) = v2;

  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_100281FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035FE0;

  return sub_100282178(a5, a6, 0);
}

uint64_t sub_100282080()
{
  sub_1000066BC();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100286880();
  v9 = v0 + v8;
  v11 = *(v9 + v10);
  v12 = swift_task_alloc();
  v13 = sub_10000A58C(v12);
  *v13 = v14;
  v13[1] = sub_100035FE0;
  v15 = sub_100016244();

  return sub_100281FD0(v15, v16, v17, v18, v9, v11);
}

uint64_t sub_100282178(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return _swift_task_switch(sub_100282238, v6, v5);
}

uint64_t sub_100282238()
{
  sub_10000B870();
  v20 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (static UUID.== infix(_:_:)())
  {
    v3 = *(v0 + 24);
    if (v3)
    {
      v4 = [objc_opt_self() cxScreenShareAttributesForCallAttributes:v3];
    }

    else
    {
      v4 = 0;
    }

    *(v0 + 56) = v4;
    if (*(v0 + 72) == 1)
    {
      v15 = swift_task_alloc();
      *(v0 + 64) = v15;
      *v15 = v0;
      v15[1] = sub_1002824D0;
      sub_10028681C();

      return sub_100282FE4(v4);
    }

    v17 = *(v0 + 32);
    sub_10028399C();
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000075F0(v6, qword_1006A24E0);

    v4 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100286968())
    {
      sub_100007C08();
      v19 = sub_100007608();
      *v5 = 136315394;
      v7 = sub_10002741C(0xD000000000000036, 0x8000000100562EF0, &v19);
      sub_100015E8C(v7);
      v8 = type metadata accessor for UUID();
      sub_100009EDC();
      sub_100286020(v9, v10);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10002741C(v11, v12, &v19);
      sub_100027E40();

      *(v5 + 14) = v8;
      sub_10003FAEC(&_mh_execute_header, v13, v14, "[CSDConversationCallCoordinator] %s No active call for callUUID: %s");
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }
  }

  sub_100009EF4();

  return v18();
}

uint64_t sub_1002824D0()
{
  sub_100006810();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return _swift_task_switch(sub_1002825E4, v6, v5);
}

uint64_t sub_1002825E4()
{
  sub_100006810();

  sub_100009EF4();

  return v1();
}

void ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:tuAttributes:)()
{
  sub_100005EF4();
  v2 = v1;
  v28 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v14);
  v16 = *(v15 + 64);
  sub_100006688();
  __chkstk_darwin(v17, v18);
  sub_1002868E8();
  sub_100007928();
  sub_10000AF74(v19, v20, v21, v22);
  (*(v9 + 16))(v13, v5, v6);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = v23 + v11;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v0;
  (*(v9 + 32))(&v25[v23], v13, v6);
  v25[v24] = v28;
  *&v25[(v24 & 0xFFFFFFFFFFFFFFF8) + 8] = v2;

  v26 = v2;
  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_1002828DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100035FE0;

  return sub_100282178(a5, a6, a7);
}

uint64_t sub_100282990()
{
  sub_100007648();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v4 = ((*(v2 + 80) + 40) & ~*(v2 + 80)) + *(v3 + 64);
  sub_100286880();
  v6 = *(v0 + v5);
  v8 = *(v0 + v7 + 8);
  v9 = swift_task_alloc();
  v10 = sub_10000A58C(v9);
  *v10 = v11;
  v10[1] = sub_100035FE0;
  v12 = sub_100016244();

  return sub_1002828DC(v12, v13, v14, v15, v16, v6, v8);
}

void ConversationCallCoordinator.handleSetScreenShareAttributes(_:tuAttributes:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100016EB4();
  v12 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v12);
  v14 = *(v13 + 64);
  sub_100006688();
  __chkstk_darwin(v15, v16);
  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v17, v18, v19, v20);
  (*(v8 + 16))(v0, v4, v5);
  v21 = (v10 + ((*(v8 + 80) + 40) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = sub_10003EA40(v22);
  v24(v23);
  *(v22 + v21) = v2;

  v25 = v2;
  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_100282D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035FE0;

  return sub_100282178(a5, 1, a6);
}

uint64_t sub_100282DE8()
{
  sub_10000F984();
  sub_100007648();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100286880();
  v6 = *(v0 + v5);
  v7 = swift_task_alloc();
  v8 = sub_10000A58C(v7);
  *v8 = v9;
  v8[1] = sub_100035FE0;
  sub_100016244();
  sub_10001AB70();

  return sub_100282D38(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100282FE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v7;
  v2[10] = v6;

  return _swift_task_switch(sub_100283104, v7, v6);
}

uint64_t sub_100283104()
{
  sub_10000B870();
  v9 = v1;
  v2 = v1[4];
  v3 = sub_1002767F8();
  v1[11] = v3;
  v4 = v1[8];
  v5 = [v3 UUID];
  sub_10028677C();

  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_100283370;
  v7 = v1[8];
  sub_10028681C();

  return sub_100276F1C();
}

uint64_t sub_100283370()
{
  sub_10000C698();
  v2 = *v1;
  v3 = *v1;
  sub_100008060();
  *v4 = v3;
  v5 = v2[12];
  *v4 = *v1;
  v3[13] = v0;

  v6 = v2[8];
  v7 = v2[6];
  v8 = v2[5];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);
    v12 = v3[9];
    v13 = v3[10];
    v14 = sub_100283784;
  }

  else
  {
    v3[14] = v10;
    v3[15] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v12 = v3[9];
    v13 = v3[10];
    v14 = sub_1002834E4;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_10028399C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v14 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006A24E0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v14;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_10002741C(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "[CSDConversationCallCoordinator] Stopping screen sharing for callUUID: %s", v19, 0xCu);
      sub_100009B7C(v20);

      v14 = v28;
    }

    v24 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v25 = [v14 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v6, v1);
    [v24 setScreenEnabled:0 forConversationWithUUID:isa];
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006A24E0);

    v28 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v8))
    {
      v9 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_10002741C(0xD000000000000019, 0x8000000100562F60, &v29);
      *(v9 + 12) = 2080;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_10002741C(v10, v11, &v29);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v28, v8, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v13 = v28;
    }
  }
}

void sub_100283F94(void *a1, NSObject *a2)
{
  v126 = a2;
  v127 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v4 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127, v5);
  v7 = &v120 - v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v124 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v123 = &v120 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v120 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v120 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v120 - v25;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v129 = a1;
  v34 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = v33;
  LOBYTE(v34) = static UUID.== infix(_:_:)();
  v35 = *(v28 + 8);
  v128 = v32;
  v36 = v32;
  v37 = v28 + 8;
  v130 = v27;
  v38 = v27;
  v39 = v35;
  v35(v36, v38);
  if (v34)
  {
LABEL_2:
    v40 = OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation;
    if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v41 = v2;
      v42 = v126;
      if ([v126 type]- 1 > 1)
      {
        if (qword_1006A0770 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_10000AF9C(v88, qword_1006A24E0);

        v89 = v42;
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v131[0] = v94;
          *v92 = 138412546;
          *(v92 + 4) = v89;
          *v93 = v89;
          *(v92 + 12) = 2080;
          sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
          v95 = v89;
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = sub_10002741C(v96, v97, v131);

          *(v92 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v90, v91, "[CSDConversationCallCoordinator] Ignoring removed screen-share request: %@, callUUID: %s", v92, 0x16u);
          sub_100009A04(v93, &unk_1006A2630, &qword_10057CB40);

          sub_100009B7C(v94);
        }
      }

      else
      {
        v43 = [v129 activeRemoteParticipants];
        sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v43) = sub_10039C378(v44);

        if (v43)
        {
          if (qword_1006A0770 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_10000AF9C(v45, qword_1006A24E0);
          v46 = v129;

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          v49 = os_log_type_enabled(v47, v48);
          v50 = &selRef_prewarmMediaRequest_completion_;
          v51 = v128;
          if (v49)
          {
            v52 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v131[0] = v127;
            *v52 = 136315394;
            v53 = [v46 UUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
            v129 = v46;
            LODWORD(v126) = v48;
            v54 = v130;
            v55 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v56;
            v39(v128, v54);
            v58 = sub_10002741C(v55, v57, v131);

            *(v52 + 4) = v58;
            *(v52 + 12) = 2080;
            v46 = v129;
            v59 = dispatch thunk of CustomStringConvertible.description.getter();
            v61 = sub_10002741C(v59, v60, v131);
            v50 = &selRef_prewarmMediaRequest_completion_;

            *(v52 + 14) = v61;
            v51 = v128;
            _os_log_impl(&_mh_execute_header, v47, v126, "[CSDConversationCallCoordinator] Leaving conversation since the screen-share-request was removed, conversationUUID: %s, callUUID: %s", v52, 0x16u);
            v126 = v47;
            swift_arrayDestroy();
          }

          else
          {

            v54 = v130;
          }

          *(v41 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) = 1;
          v115 = *(v41 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
          v116 = [v46 v50[145]];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          isa = UUID._bridgeToObjectiveC()().super.isa;
          v39(v51, v54);
          [v115 leaveConversationWithUUID:isa];

          v118 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
          swift_beginAccess();
          v119 = *(v41 + v118);
          *(v41 + v118) = 0;

          *(v41 + v40) = 0;
          *(v41 + v118) = 0;
          swift_endAccess();
        }
      }
    }

    return;
  }

  v122 = v2;
  v62 = *(v2 + 16);
  v63 = [v62 conversationGroupUUID];
  v121 = v62;
  if (!v63)
  {
    sub_10000AF74(v26, 1, 1, v130);
    v71 = &unk_1006A3DD0;
    v72 = &unk_10057C9D0;
    v73 = v26;
LABEL_19:
    sub_100009A04(v73, v71, v72);
    goto LABEL_20;
  }

  v64 = v63;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = 1;
  sub_10000AF74(v26, 0, 1, v130);
  sub_100009A04(v26, &unk_1006A3DD0, &unk_10057C9D0);
  v66 = [v62 conversationGroupUUID];
  if (v66)
  {
    v67 = v66;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = 0;
  }

  v68 = v130;
  sub_10000AF74(v23, v65, 1, v130);
  v69 = [v129 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v19, 0, 1, v68);
  v70 = *(v127 + 48);
  sub_100285FC4(v23, v7, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v19, &v7[v70], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v7, 1, v68) == 1)
  {
    sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v7[v70], 1, v68) == 1)
    {
      sub_100009A04(v7, &unk_1006A3DD0, &unk_10057C9D0);
      v2 = v122;
      goto LABEL_2;
    }

    goto LABEL_18;
  }

  v74 = v123;
  sub_100285FC4(v7, v123, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v7[v70], 1, v68) == 1)
  {
    sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
    v39(v74, v68);
LABEL_18:
    v71 = &unk_1006A2A30;
    v72 = &unk_10057D150;
    v73 = v7;
    goto LABEL_19;
  }

  v99 = v39;
  v100 = v128;
  (*(v28 + 32))(v128, &v7[v70], v68);
  sub_100286020(&qword_1006A2620, &type metadata accessor for UUID);
  v101 = v74;
  v102 = v68;
  v103 = dispatch thunk of static Equatable.== infix(_:_:)();
  v104 = v100;
  v39 = v99;
  v99(v104, v102);
  sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
  v99(v101, v102);
  sub_100009A04(v7, &unk_1006A3DD0, &unk_10057C9D0);
  v2 = v122;
  if (v103)
  {
    goto LABEL_2;
  }

LABEL_20:
  v127 = v37;
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000AF9C(v75, qword_1006A24E0);
  v76 = v129;

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v79 = 136315650;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID);
    v80 = v130;
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = sub_10002741C(v81, v82, v131);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2080;
    v84 = [v121 conversationGroupUUID];
    v120 = v39;
    if (v84)
    {
      v85 = v84;
      v86 = v124;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = 0;
    }

    else
    {
      v87 = 1;
      v86 = v124;
    }

    sub_10000AF74(v86, v87, 1, v80);
    v105 = sub_1002910A0();
    v107 = v106;
    sub_100009A04(v86, &unk_1006A3DD0, &unk_10057C9D0);
    v108 = sub_10002741C(v105, v107, v131);

    *(v79 + 14) = v108;
    *(v79 + 22) = 2080;
    v109 = [v76 groupUUID];
    v110 = v128;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    v120(v110, v80);
    v114 = sub_10002741C(v111, v113, v131);

    *(v79 + 24) = v114;
    _os_log_impl(&_mh_execute_header, v77, v78, "[CSDConversationCallCoordinator] Ignoring handleRemovedScreenShareRequest, callUUID: %s, conversationGroupUUID:, %s, groupUUID: %s", v79, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_100284D88(int a1, id a2)
{
  v2 = [a2 provider];
  v3 = [v2 isTelephonyWithSharePlayProvider];

  if (v3)
  {
    sub_100278BBC();
  }
}

uint64_t sub_100284E1C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_queue);
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_100285BA4(sub_1002862E8, v8, v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v11._object = 0x8000000100562EB0;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v11);
    type metadata accessor for ConversationCallCoordinator(0);
    _print_unlocked<A, B>(_:_:)();
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100285004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *(v3 + OBJC_IVAR___CSDConversationCallCoordinator_queue);
  *(v14 - v13) = v16;
  (*(v9 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v15, v6);
  if (v16)
  {
    __chkstk_darwin(result, v19);
    sub_100007918();
    *(v20 - 16) = a2;
    return sub_100284E1C(a3, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002851A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, id))
{
  v7 = a3;
  v8 = a4;

  a5(v9, v8);
}

uint64_t ConversationCallCoordinator.conversationManager(_:joinConversationWith:)(uint64_t a1, void *a2)
{
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = sub_100007FEC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v15 = sub_10001625C();
  v16(v15);
  v17 = v3;
  _dispatchPreconditionTest(_:)();
  v18 = sub_100015C78();
  result = v19(v18);
  if (v3)
  {
    type metadata accessor for TaskPriority();
    sub_100007928();
    sub_10000AF74(v21, v22, v23, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v2;
    v25[5] = a2;

    v26 = a2;
    sub_10000B9D4();
    sub_1002762F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002853B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE4;

  return sub_10027CE34();
}

uint64_t sub_100285450()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000A58C(v5);
  *v6 = v7;
  v6[1] = sub_100035FE4;
  sub_100016244();

  return sub_1002853B4();
}

uint64_t ConversationCallCoordinator.conversationManager(_:conversation:removedActiveParticipant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v11 = sub_10001625C();
  v12(v11);
  v13 = v3;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100015C78();
  result = v15(v14);
  if (v3)
  {
    __chkstk_darwin(result, v17);
    sub_100007918();
    *(v18 - 16) = a3;
    *(v18 - 8) = a2;
    v19 = sub_10001C99C();
    return sub_100284E1C(v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationCallCoordinator.conversationManager(_:screenSharingPickerRequestedForCall:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v11 = sub_10001625C();
  v12(v11);
  v13 = v3;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100015C78();
  result = v15(v14);
  if (v3)
  {
    __chkstk_darwin(result, v17);
    sub_100007918();
    *(v18 - 16) = a2;
    *(v18 - 8) = a3;
    v19 = sub_10001C99C();
    return sub_100284E1C(v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationCallCoordinator.conversationManager(_:conversation:removedScreenShare:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v11 = sub_10001625C();
  v12(v11);
  v13 = v3;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100015C78();
  result = v15(v14);
  if (v3)
  {
    __chkstk_darwin(result, v17);
    sub_100007918();
    *(v18 - 16) = a2;
    *(v18 - 8) = a3;
    v19 = sub_10001C99C();
    return sub_100284E1C(v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10028596C()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100285A98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100285A98()
{
  if (!qword_1006A25B8)
  {
    sub_10026DCB4(&unk_1006A0CA0, &unk_10057A400);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A25B8);
    }
  }
}

uint64_t sub_100285B14(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t, id, id))
{
  v9 = a3;
  v10 = a4;
  v11 = a5;

  a6(v12, v10, v11);
}

uint64_t sub_100285BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100286310(&v8);
}

uint64_t sub_100285C38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100285D2C;

  return v6(v2 + 32);
}

uint64_t sub_100285D2C()
{
  sub_100006810();
  sub_100005F18();
  v2 = v1;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_100008060();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_100009EF4();

  return v9();
}

uint64_t sub_100285E28()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100285EB8()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100285F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100285FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10026D814(a3, a4);
  sub_100008070(v5);
  v7 = *(v6 + 16);
  v8 = sub_100006B30();
  v9(v8);
  return a2;
}

uint64_t sub_100286020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100286068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002860D8()
{
  sub_1000066BC();
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  sub_100286880();
  v3 = swift_task_alloc();
  v4 = sub_10000A58C(v3);
  *v4 = v5;
  v4[1] = sub_100035FE0;
  v6 = sub_100016244();

  return sub_100281780(v6, v7, v8, v9, v10);
}

uint64_t *sub_1002861B8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10028625C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100286294()
{
  result = qword_1006A26A0;
  if (!qword_1006A26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A26A0);
  }

  return result;
}

uint64_t sub_1002862E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100286310(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10028633C()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for ConversationCallCoordinator.ConversationCreationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConversationCallCoordinator.ConversationCreationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100286530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_100286578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, a2, a3, v6);
}

uint64_t sub_1002865D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_10028667C()
{
  result = qword_1006A2750;
  if (!qword_1006A2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2750);
  }

  return result;
}

uint64_t sub_100286724()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;
  return *(v2 - 240);
}

uint64_t sub_100286748()
{
  v3 = *(v0 + 192);
}

uint64_t sub_100286764(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 112));
}

uint64_t sub_10028677C()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100286794()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1002867B8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1002867D4()
{

  return swift_arrayDestroy();
}

uint64_t sub_1002867EC()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100286880()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1002868A8()
{
  v3 = v0 + *(v1 - 144);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1002868C8()
{
  v2 = *(v0 - 176);

  return swift_arrayDestroy();
}

uint64_t sub_1002868E8()
{

  return type metadata accessor for TaskPriority();
}

uint64_t sub_100286908(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 88));
}

BOOL sub_100286920()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100286938(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_10002741C(a1, a2, &a9);
}

BOOL sub_100286950()
{
  v3 = *(v1 - 104);

  return os_log_type_enabled(v3, v0);
}

BOOL sub_100286968()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100286980()
{
}

id sub_100286998()
{
  v3 = *(v0 + 1160);

  return [v1 v3];
}

BOOL sub_1002869B0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1002869C8()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1002869FC()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Logger();
}

id sub_100286A14()
{
  sub_100006AF0(0, &qword_1006A27D0, off_100616610);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [objc_opt_self() sharedInstance];
  type metadata accessor for CommunicationTrustManager();
  v2 = static CommunicationTrustManager.shared.getter();
  v3 = sub_10028785C(v0, v1, v2, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_100286AFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004226B4(a1, a2, *(v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_aliases));
  sub_100286C4C(a1, a2);
  v7 = v6;
  v8 = sub_100286E74();
  v9 = v8 < 0xA;
  v10 = 0x320u >> v8;
  if (qword_1006A0778 != -1)
  {
    sub_100008080();
  }

  v11 = v9 & v10;
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006A2760);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109632;
    *(v15 + 4) = v5;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v7 & 1;
    *(v15 + 14) = 1024;
    *(v15 + 16) = v11;
    _os_log_impl(&_mh_execute_header, v13, v14, "Validating handle with sameAccount:%{BOOL}d, userInCallOnSystem:%{BOOL}d, isTrusted:%{BOOL}d", v15, 0x14u);
  }

  return (v5 | v7 | v11) & 1;
}

void sub_100286C4C(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_callCenter) currentCalls];
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10000B6F4(v6);
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {
LABEL_17:

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v6 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 handle];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 value];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {

        return;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100286E74()
{
  v1 = String._bridgeToObjectiveC()();
  [v1 destinationIdIsEmailAddress];

  v2 = String._bridgeToObjectiveC()();
  [v2 destinationIdIsPhoneNumber];

  v3 = type metadata accessor for Handle.Kind();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v10 destinationIdIsEmailAddress];

  if (v11)
  {
    (*(v6 + 104))(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Handle.Kind.emailAddress(_:), v3);
    v12 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v6;
  }

  else
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [v14 destinationIdIsPhoneNumber];

    if (v15)
    {
      v16 = &enum case for Handle.Kind.phoneNumber(_:);
    }

    else
    {
      v16 = &enum case for Handle.Kind.generic(_:);
    }

    (*(v6 + 104))(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *v16, v3);
    v12 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v6;
  }

  v17 = type metadata accessor for Handle();
  v50 = &v46;
  v18 = sub_100007FEC(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v18, v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v27 = *(v13 + 16);
  v49 = v12;
  v27(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v3);

  Handle.init(type:value:displayName:)();
  v28 = sub_100009B14((v0 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager), *(v0 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager + 24));
  v29 = sub_10026D814(&qword_1006A27C0, &qword_10057D360);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29 - 8, v31);
  v33 = &v46 - v32;
  v34 = type metadata accessor for CommunicationTrustScoreOptions();
  sub_10000AF74(v33, 1, 1, v34);
  v35 = sub_10026D814(&qword_1006A27C8, qword_100581660);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35 - 8, v37);
  v39 = &v46 - v38;
  v40 = enum case for Service.FaceTime(_:);
  v41 = v3;
  v42 = type metadata accessor for Service();
  (*(*(v42 - 8) + 104))(v39, v40, v42);
  sub_10000AF74(v39, 0, 1, v42);
  v43 = *v28;
  v44 = CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)();
  sub_1000099A4(v39, &qword_1006A27C8, qword_100581660);
  sub_1000099A4(v33, &qword_1006A27C0, &qword_10057D360);
  (*(v47 + 8))(v25, v48);
  (*(v13 + 8))(v49, v41);
  return v44;
}

id PodcastRecordingActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028753C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A2760);
  sub_10000AF9C(v0, qword_1006A2760);
  return Logger.init(subsystem:category:)();
}

id sub_1002875C0(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v34[3] = type metadata accessor for CommunicationTrustManager();
  v34[4] = &off_100622268;
  v34[0] = a3;
  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_service] = a1;
  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_callCenter] = a2;
  sub_100009AB0(v34, &a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager]);
  v11 = a5;
  if (a4)
  {
    v12 = a1;
    v13 = a2;
  }

  else
  {
    v14 = a1;
    v15 = a2;
    v16 = [v14 aliases];
    a4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_aliases;
  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_aliases] = a4;
  if (qword_1006A0778 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006A2760);
  v19 = a5;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v31 = ObjectType;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = *&a5[v17];

    v25 = Set.description.getter();
    v27 = v26;

    v28 = sub_10002741C(v25, v27, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Initializing push validator with aliases:%s", v22, 0xCu);
    sub_100009B7C(v23);

    ObjectType = v31;
  }

  else
  {
  }

  v33.receiver = v19;
  v33.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v33, "init");

  sub_100009B7C(v34);
  return v29;
}

id sub_10028785C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommunicationTrustManager();
  v18[3] = v8;
  v18[4] = &off_100622268;
  v18[0] = a3;
  v9 = objc_allocWithZone(type metadata accessor for CSDFaceTimeIMAVPushValidator());
  v10 = sub_10001BDB8(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10, v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1002875C0(a1, a2, *v13, a4, v9);
  sub_100009B7C(v18);
  return v15;
}

uint64_t TUConversationState.debugDescription.getter(uint64_t a1)
{
  result = 0x64656E696F6A2ELL;
  switch(a1)
  {
    case 0:
      v3 = 0x69746961772ELL;
      goto LABEL_6;
    case 1:
      return 0x697261706572702ELL;
    case 2:
      v3 = 0x696E696F6A2ELL;
      goto LABEL_6;
    case 3:
      return result;
    case 4:
      v3 = 0x697661656C2ELL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    default:
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      result = 0x6E776F6E6B6E752ELL;
      break;
  }

  return result;
}

uint64_t sub_100287AB0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1000080A0();
}

uint64_t sub_100287AC4()
{
  sub_10000C698();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  type metadata accessor for SynthesisVoice();
  *v3 = v0;
  v3[1] = sub_100287BB4;
  sub_10000D404();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100287BB4()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100287CD0()
{
  sub_100006810();
  v1 = *(v0 + 40);

  sub_100009EF4();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_100287D2C(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  dispatch thunk of DaemonSession.getSynthesisVoice(matching:reply:)();
}

uint64_t sub_100287E7C(void *a1, uint64_t *a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA5F8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_10002741C(v8, v9, &v28);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch a Siri voice: %{public}s", v6, 0xCu);
      sub_100009B7C(v7);
    }

    v28 = a2;
LABEL_20:
    sub_10026D814(&qword_1006A28E0, &qword_10057D578);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
LABEL_15:
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA5F8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "DaemonSession API violation detected!", v27, 2u);
    }

    v28 = [objc_allocWithZone(NSError) init];
    goto LABEL_20;
  }

  v11 = a1;
  dispatch thunk of SynthesisVoice.name.getter();
  if (!v12)
  {

    goto LABEL_15;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);
  v14 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    type metadata accessor for SynthesisVoice();
    v19 = v14;
    v20 = String.init<A>(reflecting:)();
    v22 = sub_10002741C(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Best available voice is %{public}s", v17, 0xCu);
    sub_100009B7C(v18);
  }

  v28 = v14;
  sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100288280(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_100288294()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100006850(v0);
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v3 = sub_100035DC0(v2);
  *v3 = v4;
  v3[1] = sub_100288364;
  sub_100007BBC();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100288364()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100288468()
{
  sub_100006810();
  v1 = *(v0 + 32);

  sub_100009EF4();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1002884C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  (*(v6 + 16))(&v15 - v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v13 = a3;
  dispatch thunk of DaemonSession.synthesize(request:didFinish:)();
}

uint64_t sub_100288624(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA5F8);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136446210;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Outgoing audio message synthesis failed: %{public}s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v21 = a1;
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully generated outgoing message for request: %{public}@", v18, 0xCu);
      sub_10028CA5C(v19);
    }

    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002888FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_100288910()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100006850(v0);
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v3 = sub_100035DC0(v2);
  *v3 = v4;
  v3[1] = sub_1002889E0;
  sub_100007BBC();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1002889E0()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100288AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v6 + 32))(v12 + v11, v10, v5);

  dispatch thunk of DaemonSession.subscribe(voices:reply:)();
}

uint64_t sub_100288C38(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA5F8);
    swift_errorRetain();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v5 = 136446466;

      sub_10026D814(&qword_1006A28D8, &qword_10057D530);
      v6 = String.init<A>(reflecting:)();
      v8 = sub_10002741C(v6, v7, &v23);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v23);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to subscribe to greeting voices: %{public}s: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v23 = a1;
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA5F8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136446466;

      sub_10026D814(&qword_1006A28D8, &qword_10057D530);
      v17 = String.init<A>(reflecting:)();
      v19 = sub_10002741C(v17, v18, &v23);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      v20 = sub_1002910C8(0);
      v22 = sub_10002741C(v20, v21, &v23);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully subscribed to greeting voices: %{public}s: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Int sub_100289020()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10028906C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002890AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_1002890C0()
{
  sub_1000066BC();
  v2 = v0[2];
  v1 = v0[3];
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v6 = sub_100035DC0(v5);
  *v6 = v7;
  v6[1] = sub_1002891BC;

  return sub_100289544(&unk_10057D548, v3);
}

uint64_t sub_1002891BC()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100008060();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {
    sub_10000D404();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 32);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1002892F4()
{
  sub_100006810();
  v1 = *(v0 + 32);

  sub_100009EF4();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_100289350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100289374, 0, 0);
}

uint64_t sub_100289374()
{
  sub_100006810();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  v3 = sub_100035DC0(v2);
  *v3 = v4;
  v3[1] = sub_100289404;
  v5 = sub_10000795C(*(v0 + 32));

  return sub_100287AB0(v5);
}

uint64_t sub_100289404()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100008060();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    sub_100007BBC();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_100289544(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100289614, 0, 0);
}

uint64_t sub_100289614()
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v0[2] = v8;
  v0[7] = v0 + 12;
  sub_10000F99C();
  sub_100007934();
  v9 = swift_allocObject();
  sub_10000D6D8(v9);
  sub_100007C2C();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10057D560;
  *(v10 + 24) = v1;
  v0[10] = &unk_10057D568;
  v0[11] = v10;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940();
  v11 = *(v3 + 8);
  v12 = sub_100007624();
  v13(v12);
  sub_100005F24();

  return _swift_continuation_await(v14);
}

uint64_t sub_10028972C()
{
  sub_1000066BC();
  v1 = *v0;
  sub_10000A5B0();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  v6 = *(v3 + 144);
  if (*(v3 + 48))
  {
    v7 = *(v3 + 48);
    swift_willThrow();

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = *(v2 + 96);
    v11 = *(v3 + 144);

    v12 = *(v5 + 8);

    return v12(v10);
  }
}

uint64_t sub_100289898(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100289968, 0, 0);
}

uint64_t sub_100289968()
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v0[2] = v8;
  v0[7] = v0 + 12;
  sub_10000F99C();
  sub_100007934();
  v9 = swift_allocObject();
  sub_10000D6D8(v9);
  sub_100007C2C();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10057D4E8;
  *(v10 + 24) = v1;
  v0[10] = &unk_10057D4F0;
  v0[11] = v10;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940();
  v11 = *(v3 + 8);
  v12 = sub_100007624();
  v13(v12);
  sub_100005F24();

  return _swift_continuation_await(v14);
}

uint64_t sub_100289A80()
{
  sub_100006810();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[16] = v5;
  sub_100005EB4(v5);
  v1[17] = v6;
  v8 = *(v7 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100289B40()
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v0[2] = v9;
  v0[7] = v8;
  sub_10000F99C();
  sub_100007934();
  v10 = swift_allocObject();
  sub_10000D6D8(v10);
  sub_100007C2C();
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_10057D5A8;
  *(v11 + 24) = v1;
  v0[10] = &unk_10057D5B0;
  v0[11] = v11;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940();
  v12 = *(v3 + 8);
  v13 = sub_100007624();
  v14(v13);
  sub_100005F24();

  return _swift_continuation_await(v15);
}

uint64_t sub_100289C58()
{
  sub_1000066BC();
  sub_100005F18();
  v1 = *v0;
  sub_10000E51C();
  *v3 = v1;
  v4 = *(v2 + 144);
  if (*(v2 + 48))
  {
    v5 = *(v2 + 48);
    swift_willThrow();
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_100289D74()
{
  sub_100006810();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[14] = v3;
  sub_100005EB4(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100289E30()
{
  sub_10000C698();
  v2 = v0[12];
  v1 = v0[13];
  v0[17] = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100289EC8()
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v0[2] = v7;
  v8 = sub_10000F99C();
  sub_100007934();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &unk_10057D478;
  v9[4] = v1;
  sub_100007C2C();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10057D488;
  *(v10 + 24) = v9;
  v0[10] = &unk_10057D490;
  v0[11] = v10;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000FBA8();
  v11 = *(v4 + 8);
  v12 = sub_100007624();
  v13(v12);
  sub_100005F24();

  return _swift_continuation_await(v14);
}

uint64_t sub_100289FF0()
{
  sub_10000C698();
  v1 = *v0;
  sub_10000A5B0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[19] = v5;
  if (v5)
  {
    swift_willThrow();
    sub_100007BBC();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = v2[18];
    v10 = v2[16];

    sub_10001E3C4();

    return v11();
  }
}

uint64_t sub_10028A130()
{
  sub_100006810();
  v1 = v0[18];
  v2 = v0[16];

  sub_100009EF4();
  v4 = v0[19];

  return v3();
}

uint64_t sub_10028A198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10028A1B8, 0, 0);
}

uint64_t sub_10028A1B8()
{
  sub_100006810();
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_10028A24C;
  v3 = sub_10000795C(v0[3]);

  return sub_100288280(v3);
}

uint64_t sub_10028A24C()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100009EF4();

  return v5();
}

uint64_t sub_10028A32C()
{
  sub_100006810();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[14] = v3;
  sub_100005EB4(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028A3E8()
{
  sub_10000C698();
  v1 = v0[12];
  v2 = v0[13];
  v0[17] = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10028A484()
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v0[2] = v7;
  v8 = sub_10000F99C();
  sub_100007934();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &unk_10057D510;
  v9[4] = v1;
  sub_100007C2C();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10057D518;
  *(v10 + 24) = v9;
  v0[10] = &unk_10057D520;
  v0[11] = v10;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000FBA8();
  v11 = *(v4 + 8);
  v12 = sub_100007624();
  v13(v12);
  sub_100005F24();

  return _swift_continuation_await(v14);
}

uint64_t sub_10028A5AC()
{
  sub_10000C698();
  v1 = *v0;
  sub_10000A5B0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[19] = v5;
  if (v5)
  {
    swift_willThrow();
    sub_100007BBC();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = v2[18];
    v10 = v2[16];

    sub_10001E3C4();

    return v11();
  }
}

uint64_t sub_10028A6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10028A70C, 0, 0);
}

uint64_t sub_10028A70C()
{
  sub_100006810();
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_10028D39C;
  v3 = sub_10000795C(v0[3]);

  return sub_1002888FC(v3);
}

uint64_t sub_10028A7A0(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v4 = sub_100007BF0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10000AF74(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;

  sub_1002762F0();
}

uint64_t sub_10028A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10028A8AC, 0, 0);
}

uint64_t sub_10028A8AC()
{
  sub_100006810();
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10028A940;
  v3 = sub_10000795C(v0[5]);

  return sub_1002888FC(v3);
}

uint64_t sub_10028A940()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028AA38()
{
  v14 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 24) = v5;

    sub_10026D814(&qword_1006A28D8, &qword_10057D530);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished subscribing to voices: %{public}s", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100005F40();
    sub_100005F40();
  }

  sub_100009EF4();

  return v11();
}

uint64_t sub_10028ABCC()
{
  v15 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Subscribe failed: %{public}s", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
  }

  sub_100009EF4();

  return v12();
}

uint64_t sub_10028AD78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return sub_1000080A0();
}

uint64_t sub_10028AD98()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v2)
  {
    sub_100007C2C();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = sub_10028CB90;
  }

  else
  {
    v4 = sub_10028B134;
    v3 = 0;
  }

  v14 = *(v0 + 56);
  v5 = *(v0 + 104);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  sub_100007C2C();
  v9 = swift_allocObject();
  *(v0 + 64) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v0 + 72) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = sub_10028CAC4;
  *(v10 + 56) = v9;
  sub_1000115CC(v2);
  v11 = v8;

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_10028AF5C;

  return sub_100289898(&unk_10057D4D0, v10);
}

uint64_t sub_10028AF5C()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_100008060();
  *v10 = v9;
  v5[11] = v0;

  if (!v0)
  {
    v11 = v5[9];

    v5[12] = v3;
  }

  sub_10000D404();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10028B06C()
{
  sub_100006810();
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_10028B0D0()
{
  sub_100006810();
  v1 = v0[8];
  v2 = v0[9];

  sub_100009EF4();
  v4 = v0[11];

  return v3();
}

void sub_10028B134(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  if (*a3 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *a2 * 100.0 / *a3;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&_mh_execute_header, oslog, v5, "TTS model download progress: %f", v6, 0xCu);
  }
}

uint64_t sub_10028B260(uint64_t a1, uint64_t a2, uint64_t (*a3)(double *, uint64_t *, uint64_t *), double a4)
{
  v7 = a4;
  v5 = a2;
  v6 = a1;
  return a3(&v7, &v6, &v5);
}

uint64_t sub_10028B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 88) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_10028B2D4, 0, 0);
}

uint64_t sub_10028B2D4()
{
  sub_1000066BC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v9;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  type metadata accessor for TTSAsset();
  *v6 = v0;
  v6[1] = sub_10028B3E8;
  v7 = *(v0 + 16);
  sub_10000D404();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10028B3E8()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    sub_100009EF4();

    return v13();
  }
}

uint64_t sub_10028B504()
{
  sub_100006810();
  v1 = *(v0 + 64);

  sub_100009EF4();
  v3 = *(v0 + 80);

  return v2();
}

void sub_10028B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(void *a1), uint64_t a7)
{
  v25 = a5;
  v24 = a2;
  v11 = sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v22 - v15;
  if (a4)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v30 = a6;
  v31 = a7;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10028B7C4;
  v29 = &unk_100622458;
  v17 = _Block_copy(&aBlock);

  (*(v12 + 16))(v16, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v16, v11);
  v30 = sub_10028CC64;
  v31 = v19;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10028BAD0;
  v29 = &unk_1006224A8;
  v20 = _Block_copy(&aBlock);

  v21 = v23;
  [v24 downloadWithReservation:v23 useBattery:v25 & 1 progress:v17 then:v20];
  _Block_release(v20);
  _Block_release(v17);
}

uint64_t sub_10028B7C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_10028B834(void *a1)
{
  if (a1)
  {
    v1 = qword_1006A0B28;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA5F8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      type metadata accessor for TTSAsset();
      v9 = v4;
      v10 = String.init<A>(reflecting:)();
      v12 = sub_10002741C(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Done downloading %s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v18 = v4;
    sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Download of TTS asset failed", v17, 2u);
    }

    sub_10028CCDC();
    swift_allocError();
    sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_10028BAD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10028BB3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10028D1D8(v0 + OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t type metadata accessor for SiriSpeechSynthesizer()
{
  result = qword_1006A2808;
  if (!qword_1006A2808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028BBFC()
{
  sub_10028BCA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10028BCA0()
{
  if (!qword_1006A2818)
  {
    sub_10026DCB4(&unk_1006A2820, &qword_10057ED60);
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A2818);
    }
  }
}

uint64_t sub_10028BD04()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE4;
  v3 = sub_10000A59C();

  return sub_10028A198(v3, v4, v5);
}

uint64_t sub_10028BD94(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10028BE88;

  return v6(v2 + 16);
}

uint64_t sub_10028BE88()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028BF80()
{
  sub_100006810();
  **(*(*(v0 + 24) + 64) + 40) = *(v0 + 16);
  swift_continuation_throwingResume();
  sub_100009EF4();

  return v1();
}

uint64_t sub_10028BFF4()
{
  sub_100006810();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v3 = swift_allocError();
  sub_100018EF0(v3, v4);
  sub_100009EF4();

  return v5();
}

uint64_t sub_10028C078(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10028C164;

  return v6();
}

uint64_t sub_10028C164()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028C25C()
{
  sub_100006810();
  v1 = *(v0 + 16);
  swift_continuation_throwingResume();
  sub_100009EF4();

  return v2();
}

uint64_t sub_10028C2B4()
{
  sub_100006810();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v3 = swift_allocError();
  sub_100018EF0(v3, v4);
  sub_100009EF4();

  return v5();
}

uint64_t sub_10028C338()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C078(v3, v4);
}

uint64_t sub_10028C3C4()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_10028C45C(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100288624(a1, v1 + v8, v9);
}

uint64_t sub_10028C4FC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10028C5F0;

  return v6(v2 + 16);
}

uint64_t sub_10028C5F0()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028C6E8(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for URL();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_10028C848;

  return v11(v7);
}

uint64_t sub_10028C848()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028C940()
{
  sub_100006810();
  (*(v0[4] + 32))(*(*(v0[2] + 64) + 40), v0[5], v0[3]);
  swift_continuation_throwingResume();
  v1 = v0[5];

  sub_100009EF4();

  return v2();
}

uint64_t sub_10028C9D0()
{
  sub_100006810();
  v1 = v0[7];
  v2 = v0[2];
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v3 = swift_allocError();
  sub_100018EF0(v3, v4);
  v5 = v0[5];

  sub_100009EF4();

  return v6();
}

uint64_t sub_10028CA5C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A2630, &qword_10057CB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028CACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = sub_10000A58C(v7);
  *v8 = v9;
  v10 = sub_10000E52C(v8);

  return sub_10028B2A8(v10, v11, v2, v3, v4, v6, v5);
}

uint64_t sub_10028CB90(double *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a2, *a3, *a1);
}

uint64_t sub_10028CBC4()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C4FC(v3, v4);
}

uint64_t sub_10028CC64(void *a1)
{
  v2 = sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
  sub_100007BF0(v2);
  v4 = *(v3 + 80);

  return sub_10028B834(a1);
}

unint64_t sub_10028CCDC()
{
  result = qword_1006A28D0;
  if (!qword_1006A28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A28D0);
  }

  return result;
}

uint64_t sub_10028CD30()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_10000A59C();

  return sub_10028A6EC(v3, v4, v5);
}

uint64_t sub_10028CDC8(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_100007BF0(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);

  return sub_100288C38(a1);
}

uint64_t sub_10028CE44()
{
  v1 = *(v0 + 16);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10028CE80()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_10000A59C();

  return sub_100289350(v3, v4, v5);
}

uint64_t sub_10028CF10()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028BD94(v3, v4);
}

uint64_t sub_10028CF9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100287D2C(a1);
}

uint64_t sub_10028CFA4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10026D814(a1, a2);
  sub_1000080D0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10028D01C(void *a1, uint64_t *a2)
{
  v4 = sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  sub_100007BF0(v4);
  v6 = *(v5 + 80);

  return sub_100287E7C(a1, a2);
}

uint64_t sub_10028D0A4()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000A58C(v5);
  *v6 = v7;
  v8 = sub_10000E52C(v6);

  return sub_10028A88C(v8, v9, v2, v4, v3);
}

uint64_t sub_10028D14C()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C6E8(v3, v4);
}

uint64_t sub_10028D1D8(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriSpeechSynthesizerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SiriSpeechSynthesizerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_10028D338()
{
  result = qword_1006A28E8;
  if (!qword_1006A28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A28E8);
  }

  return result;
}

void sub_10028D3B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_10028D408()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v64 = v16 - v15;
  v65 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v65);
  v63 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007FDC();
  v62 = v23 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = sub_100007FEC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25, v30);
  sub_100007FDC();
  v33 = v32 - v31;
  *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue] = v3;
  *(v32 - v31) = v3;
  (*(v27 + 104))(v32 - v31, enum case for DispatchPredicate.onQueue(_:), v24);
  v34 = v3;
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v33, v24);
  if (v3)
  {
    sub_100006AF0(0, &unk_1006A2950, CXInProcessProvider_ptr);
    v35 = sub_10028DA08();
    v36 = v5;
    v37 = sub_1003E15F8(v35, v36);
    v38 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_isAccountActive];
    *v38 = sub_10028DAB4;
    v38[1] = 0;
    v39 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingSessionProviderGenerator];
    *v39 = sub_10028DB0C;
    v39[1] = 0;
    v40 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingChatGenerator];
    *v40 = sub_10028DC28;
    v40[1] = 0;
    v41 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_isDestinationValid];
    *v41 = sub_10028DD80;
    v41[1] = 0;
    v42 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_destinationsGenerator];
    *v42 = sub_10028DE0C;
    v42[1] = 0;
    v60 = v36;
    v43 = sub_100021AEC(v60);
    if (v44)
    {
      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = objc_opt_self();
        v47 = String._bridgeToObjectiveC()();

        v48 = [v46 tu_contactStoreConfigurationForBundleIdentifier:v47];

LABEL_9:
        v59 = v48;
        v49 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v48];
        v50 = [objc_allocWithZone(TUContactsDataProvider) initWithContactsDataSource:v49];

        *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_contactsDataProvider] = v50;
        v67.receiver = v1;
        v67.super_class = ObjectType;
        v58 = v34;
        v51 = objc_msgSendSuper2(&v67, "initWithCapabilities:queue:", v7, v34);
        v52 = *&v51[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];
        v53 = swift_allocObject();
        *(v53 + 16) = v51;
        *(v53 + 24) = v37;
        v66[4] = sub_100290A74;
        v66[5] = v53;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 1107296256;
        v66[2] = sub_100004CEC;
        v66[3] = &unk_100622740;
        v54 = _Block_copy(v66);
        v55 = v51;
        v56 = v52;
        v57 = v37;
        static DispatchQoS.unspecified.getter();
        sub_10000EC90(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v54);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v64, v8);
        (*(v63 + 8))(v62, v65);

        sub_100005EDC();
        return;
      }
    }

    v48 = [objc_opt_self() tu_contactStoreConfigurationForBundleIdentifier:TUBundleIdentifierTinCan];
    goto LABEL_9;
  }

  __break(1u);
}

id sub_10028DA08()
{
  v0 = [objc_allocWithZone(CXProviderConfiguration) init];
  [v0 setMaximumCallGroups:1];
  [v0 setMaximumCallsPerCallGroup:1];
  [v0 setSupportsAudioOnly:1];
  [v0 setIncludesCallsInRecents:0];
  sub_10039B400();
  CXProviderConfiguration.supportedHandleTypes.setter();
  [v0 setSupportsCurrentPlatform:0];
  return v0;
}

id sub_10028DAB4(void *a1)
{
  v1 = [a1 account];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isActive];

  return v3;
}

id sub_10028DB0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a1 account];
  v8 = sub_1002E9784(a2);
  sub_10003E7C0(a3);
  v10 = v9;
  v11 = objc_allocWithZone(IDSSession);
  result = sub_100290868(v7, v8, v10);
  if (result)
  {
    v13 = result;
    sub_100006AF0(0, &qword_1006A2978, off_100616628);
    return sub_10028DBCC(v13, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10028DBCC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSession:a1 queue:a2];

  return v4;
}

void sub_10028DC28(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a2);
  v16 = [a3 handle];
  v17 = [v16 tuHandle];

  if (v17)
  {
    objc_allocWithZone(CSDIDSChat);
    [sub_10029093C(a1 v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10028DD80(void *a1, void *a2)
{
  v3 = [a1 handle];
  v4 = [v3 tuHandle];

  if (!v4)
  {
    return 0;
  }

  sub_10001B8C8(a2, &selRef_countryCode);
  if (!v5)
  {
    return 0;
  }

  return 1;
}