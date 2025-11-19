id sub_10034C9B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_communicationTrustManager;
  type metadata accessor for CommunicationTrustManager();
  *&v0[v3] = static CommunicationTrustManager.shared.getter();
  v4 = OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_configurationProvider;
  *&v1[v4] = [objc_allocWithZone(TUConfigurationProvider) init];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_10034CAD0()
{
  result = qword_1006AB5C0;
  if (!qword_1006AB5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB5C0);
  }

  return result;
}

unint64_t sub_10034CB14()
{
  result = qword_1006A7BB0;
  if (!qword_1006A7BB0)
  {
    type metadata accessor for CommunicationTrustScoreOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7BB0);
  }

  return result;
}

unint64_t sub_10034CB60()
{
  result = qword_1006A63A0;
  if (!qword_1006A63A0)
  {
    sub_10026DCB4(&qword_1006A6398, &unk_100581650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63A0);
  }

  return result;
}

uint64_t sub_10034CBC4(void *a1)
{
  v1 = [a1 ISOCountryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10034CC28(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest] = 2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ConversationLocalParticipantBlobTracker();
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectRelease();

  return v6;
}

void sub_10034CD4C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = *&v0[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v9 - v8) = v11;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v1);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v10, v1);
  if (v11)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA568);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136315394;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v18 = v14;
    v19 = String.init<A>(reflecting:)();
    v21 = sub_10002741C(v19, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong state];
      sub_10000EA74();
      swift_unknownObjectRelease();
      type metadata accessor for TUConversationState(0);
      v23 = String.init<A>(reflecting:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    sub_10002741C(v23, v25, &v31);
    sub_10000EA74();

    *(v17 + 14) = v18;
    sub_1000113C8();
    _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    swift_arrayDestroy();
    sub_10000EA64();

    sub_100009ED0();
  }

  sub_10034D4FC();
}

void sub_10034D040(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *&v1[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v12, v3);
  if (v13)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA568);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    sub_100015070();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315394;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v21 = v16;
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v25);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s received request to update localParticiapntBlob, deliverOverPush: %{BOOL}d", v19, 0x12u);
    sub_100009B7C(v20);
    sub_100009ED0();

    sub_100009ED0();
  }

  sub_10034DE44(a1 & 1);
}

void sub_10034D4FC()
{
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_100007FEC(v72);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v70[11] = v18 - v17;
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = sub_100007FEC(v19);
  v70[7] = v21;
  v70[8] = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20, v24);
  sub_100007FDC();
  v70[6] = v26 - v25;
  v71 = type metadata accessor for DispatchTime();
  v27 = sub_100007FEC(v71);
  v70[10] = v28;
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v27, v31);
  v70[5] = v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v70[9] = v70 - v35;
  v36 = type metadata accessor for DispatchPredicate();
  v37 = sub_100007FEC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37, v42);
  sub_100007FDC();
  v45 = v44 - v43;
  v73 = v0;
  v70[4] = OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue;
  v46 = *&v0[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v44 - v43) = v46;
  (*(v39 + 104))(v44 - v43, enum case for DispatchPredicate.onQueue(_:), v36);
  v47 = v46;
  v48 = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v45, v36);
  if (v48)
  {
    v70[1] = v13;
    v70[2] = v9;
    v70[3] = v10;
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v49 = type metadata accessor for Logger();
  sub_10000AF9C(v49, qword_1006BA568);
  v50 = v73;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v70[0] = v3;
    v53 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v53 = 136315394;
    v75 = v50;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v54 = v50;
    v55 = String.init<A>(reflecting:)();
    v57 = sub_10002741C(v55, v56, &aBlock);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = v54[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest];
    if (v58 == 2)
    {
      v59 = 0xE300000000000000;
      v60 = 7104878;
    }

    else
    {
      LOBYTE(v75) = v58 & 1;
      v60 = String.init<A>(reflecting:)();
      v59 = v61;
    }

    v62 = sub_10002741C(v60, v59, &aBlock);

    *(v53 + 14) = v62;
    sub_1000113C8();
    _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
  }

  v68 = OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest;
  v69 = v50[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest];
  if (v69 != 2)
  {
    sub_10034DE44(v69 & 1);
    v50[v68] = 2;
  }
}

void sub_10034DDF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10034D4FC();
  }
}

void sub_10034DE44(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *&v1[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    sub_10000852C();
    swift_once();
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([Strong state] == 3)
    {
      v17 = [v16 localCSDParticipant];
      if (v17)
      {
        v18 = v17;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000AF9C(v19, qword_1006BA568);
        v20 = v1;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          sub_100007BFC();
          v74 = a1;
          v23 = swift_slowAlloc();
          sub_100015070();
          v73 = swift_slowAlloc();
          v75 = v73;
          *v23 = 136315138;
          type metadata accessor for ConversationLocalParticipantBlobTracker();
          v24 = v20;
          v25 = String.init<A>(reflecting:)();
          v27 = sub_10002741C(v25, v26, &v75);

          *(v23 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v21, v22, "%s Local participant blob will be updated", v23, 0xCu);
          sub_100009B7C(v73);
          sub_10000EA64();

          a1 = v74;
          sub_100009ED0();
        }

        v28 = swift_unknownObjectWeakLoadStrong();
        v29 = v28;
        v30 = &selRef_sendLocalParticipant_;
        if ((a1 & 1) == 0)
        {
          v30 = &selRef_updateLocalParticipantInfo_;
        }

        [v28 *v30];

        swift_unknownObjectRelease();
        return;
      }

      if (qword_1006A0AF8 != -1)
      {
        sub_10000852C();
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000AF9C(v60, qword_1006BA568);
      v61 = v1;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        sub_100007BFC();
        v64 = swift_slowAlloc();
        sub_100015070();
        v65 = swift_slowAlloc();
        v75 = v65;
        *v64 = 136315138;
        type metadata accessor for ConversationLocalParticipantBlobTracker();
        v66 = v61;
        v67 = String.init<A>(reflecting:)();
        v69 = sub_10002741C(v67, v68, &v75);

        *(v64 + 4) = v69;
        sub_100005FCC(&_mh_execute_header, v70, v71, "%s Conversation state is joined but has no localParticipant.");
        sub_100009B7C(v65);
        sub_100009ED0();

        sub_10000EA64();
      }

      sub_10034E7D4();
      swift_allocError();
      *v72 = 1;
    }

    else
    {
      if (qword_1006A0AF8 != -1)
      {
        sub_10000852C();
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000AF9C(v47, qword_1006BA568);
      v48 = v1;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        sub_100007BFC();
        v51 = swift_slowAlloc();
        sub_100015070();
        v52 = swift_slowAlloc();
        v75 = v52;
        *v51 = 136315138;
        type metadata accessor for ConversationLocalParticipantBlobTracker();
        v53 = v48;
        v54 = String.init<A>(reflecting:)();
        v56 = sub_10002741C(v54, v55, &v75);

        *(v51 + 4) = v56;
        sub_100005FCC(&_mh_execute_header, v57, v58, "%s Conversation state is not joined, not executing deferred requests.");
        sub_100009B7C(v52);
        sub_100009ED0();

        sub_10000EA64();
      }

      sub_10034E7D4();
      swift_allocError();
      *v59 = 0;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_28;
  }

LABEL_13:
  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA568);
  v32 = v1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    sub_100007BFC();
    v35 = swift_slowAlloc();
    sub_100015070();
    v36 = swift_slowAlloc();
    v75 = v36;
    *v35 = 136315138;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v37 = v32;
    v38 = String.init<A>(reflecting:)();
    v40 = sub_10002741C(v38, v39, &v75);

    *(v35 + 4) = v40;
    sub_10001823C();
    _os_log_impl(v41, v42, v43, v44, v45, v46);
    sub_100009B7C(v36);
    sub_100009ED0();

    sub_100009ED0();
  }

  sub_10034E780();
  swift_allocError();
  swift_willThrow();
}

id sub_10034E4E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationLocalParticipantBlobTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034E5D8(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10034E670(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_10034E748()
{
  v1 = [v0 localConversationParticipantWithData];

  return v1;
}

unint64_t sub_10034E780()
{
  result = qword_1006A63F0;
  if (!qword_1006A63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63F0);
  }

  return result;
}

unint64_t sub_10034E7D4()
{
  result = qword_1006A63F8;
  if (!qword_1006A63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63F8);
  }

  return result;
}

_BYTE *sub_10034E830(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10034E908(_BYTE *result, int a2, int a3)
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

unint64_t sub_10034E9B4()
{
  result = qword_1006A6400;
  if (!qword_1006A6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6400);
  }

  return result;
}

unint64_t sub_10034EA0C()
{
  result = qword_1006A6408[0];
  if (!qword_1006A6408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006A6408);
  }

  return result;
}

uint64_t sub_10034EA60(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10034EB1C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  sub_100008540();

  sub_100008540();
  sub_100008540();
  v4 = *(v0 + *(v3 + 136));
  swift_unknownObjectRelease();
  sub_100008540();
  v6 = *(v0 + *(v5 + 144));

  sub_100008540();
  v8 = *(v0 + *(v7 + 152));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10034EC04()
{
  sub_10034EB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_10034EC74()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_10034ECF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying + 8);

    v1(v3);

    sub_1000051F8(v1);
  }
}

id sub_10034EDC0()
{
  v1 = [v0 configuration];

  return v1;
}

uint64_t sub_10034EDFC(uint64_t a1)
{
  [v1 setPlaybackObserver:a1];

  return swift_unknownObjectRelease();
}

void sub_10034EE44(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  sub_10034EE50(a1, a2);
}

void sub_10034EE50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10034EF10;
    v4[3] = &unk_100628DD8;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 playWithCompletionHandler:v3];
  _Block_release(v3);
}

void sub_10034EF10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_10034F004()
{
  v0 = objc_allocWithZone(type metadata accessor for RingtoneProviderAlertPlaybackObserver());

  return [v0 init];
}

uint64_t sub_10034F038()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return v0;
}

uint64_t sub_10034F088()
{
  sub_10034F038();

  return _swift_deallocClassInstance(v0, 96, 7);
}

void *sub_10034F0E0()
{
  v1 = [objc_allocWithZone(CNContactStore) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  v0[5] = dispatch_semaphore_create(0);
  v0[6] = dispatch_semaphore_create(0);
  v0[7] = [objc_allocWithZone(TUFeatureFlags) init];
  v0[8] = sub_10034EFB0;
  v0[9] = 0;
  v0[10] = sub_10034F004;
  v0[11] = 0;
  return v0;
}

void sub_10034F178(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_10034F418(a1);
  if (!v1[3])
  {
    goto LABEL_6;
  }

  v4 = v1[4];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  sub_100006AF0(0, &unk_1006A6610, TLAlertConfiguration_ptr);
  v26 = v3;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    v9 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100008348();
  }

  else
  {
LABEL_6:
    v13 = v2[8];
    v12 = v2[9];

    v14 = v13(v3);
    v16 = v15;

    if (v14)
    {
      v18 = v2[10];
      v17 = v2[11];

      v20 = v18(v19);

      sub_10034FF8C(v20, v14, v16, v2);

      sub_100008348();

      swift_unknownObjectRelease();
    }

    else
    {
      v22 = sub_100004778();
      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10057D690;
      *(v23 + 56) = sub_100006AF0(0, &unk_1006A6610, TLAlertConfiguration_ptr);
      *(v23 + 64) = sub_100290B1C(&qword_1006A6620, &unk_1006A6610, TLAlertConfiguration_ptr);
      *(v23 + 32) = v3;
      v24 = v3;
      os_log(_:dso:log:type:_:)();

      sub_100008348();
    }
  }
}

id sub_10034F418(uint64_t *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v101 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v96 - v10;
  v12 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v96 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v96 - v23;
  v25 = a1[1];
  v108 = &v96 - v23;
  v109 = v3;
  v105 = v4;
  if (v25)
  {
    v26 = sub_100350514(*a1, v25);
    if (v26)
    {
      v27 = v26;
      v97 = v11;
      v102 = v1;
      v103 = a1;
      v99 = v17;
      v28 = sub_10001B8C8(v26, &selRef_sound);
      v30 = v29;
      v31 = sub_10001B8C8(v27, &selRef_vibration);
      v107 = v32;
      v33 = [v27 ignoreMute];
      v98 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10057CA70;
      *(v34 + 56) = sub_100006AF0(0, &qword_1006A6640, CNActivityAlert_ptr);
      *(v34 + 64) = sub_100290B1C(&unk_1006A6648, &qword_1006A6640, CNActivityAlert_ptr);
      *(v34 + 32) = v27;
      v35 = v27;
      v100 = v28;
      v36 = v30;
      v37 = sub_10001E478(v28, v30);
      v39 = v38;
      *(v34 + 96) = &type metadata for String;
      v40 = sub_100009D88();
      *(v34 + 104) = v40;
      *(v34 + 72) = v37;
      *(v34 + 80) = v39;
      v41 = v107;
      v104 = v31;
      v42 = sub_10001E478(v31, v107);
      *(v34 + 136) = &type metadata for String;
      *(v34 + 144) = v40;
      *(v34 + 112) = v42;
      *(v34 + 120) = v43;
      v106 = v33;
      LOBYTE(v110) = v33;
      v44 = String.init<A>(reflecting:)();
      *(v34 + 176) = &type metadata for String;
      *(v34 + 184) = v40;
      *(v34 + 152) = v44;
      *(v34 + 160) = v45;
      static os_log_type_t.default.getter();
      v46 = v98;
      os_log(_:dso:log:type:_:)();

      if (v36)
      {

        v47 = 0;
        v48 = 1;
        v1 = v102;
        a1 = v103;
        v24 = v108;
        v3 = v109;
        v17 = v99;
        goto LABEL_12;
      }

      v1 = v102;
      a1 = v103;
      v24 = v108;
      v3 = v109;
      v4 = v105;
      v17 = v99;
      v11 = v97;
    }

    else
    {
      v107 = 0;
      v104 = 0;
      v100 = 0;
      v106 = 0;
      v3 = v109;
    }
  }

  else
  {
    v107 = 0;
    v104 = 0;
    v100 = 0;
    v106 = 0;
  }

  v49 = type metadata accessor for RingtoneDescriptor();
  sub_1003507C4(a1 + *(v49 + 20), v21);
  if (sub_100015468(v21, 1, v3) == 1)
  {
    sub_1002E1320(v21);
    v36 = 0;
    v48 = 1;
  }

  else
  {
    v102 = v1;
    v103 = a1;
    v50 = *(v4 + 32);
    v50(v11, v21, v3);
    v51 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10057D690;
    URL._bridgeToObjectiveC()(&unk_10057D000);
    v54 = v53;
    *(v52 + 56) = sub_100006AF0(0, &qword_1006A6630, NSURL_ptr);
    v24 = v108;
    *(v52 + 64) = sub_100290B1C(&qword_1006A6638, &qword_1006A6630, NSURL_ptr);
    *(v52 + 32) = v54;
    v3 = v109;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v50(v24, v11, v3);
    v1 = v102;
    a1 = v103;
    v48 = 0;
    v36 = 0;
  }

  v47 = 1;
  v41 = v107;
LABEL_12:
  sub_10000AF74(v24, v48, 1, v3);
  v107 = *(v1 + 56);
  v55 = [v107 dualSIMRingtoneEnabled];
  v56 = 0;
  v57 = 0;
  if (v47 && v55)
  {
    v58 = (a1 + *(type metadata accessor for RingtoneDescriptor() + 24));
    v57 = v58[1];
    if (v57)
    {
      v56 = *v58;
      v59 = v58[1];
      swift_bridgeObjectRetain_n();
      v60 = v36;
      v61 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10057D690;
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = sub_100009D88();
      *(v62 + 32) = v56;
      *(v62 + 40) = v57;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v36 = v60;
      v24 = v108;
    }

    else
    {
      v56 = 0;
    }
  }

  v103 = v56;
  v63 = [objc_allocWithZone(TLAlertConfiguration) initWithType:1];
  [v63 setShouldRepeat:1];
  if ((v47 & 1) == 0)
  {
    v64 = v100;
    v65 = v36;
    v66 = String._bridgeToObjectiveC()();
    [v63 setToneIdentifier:v66];

    v67 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10057D690;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = sub_100009D88();
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v24 = v108;
  }

  if (v41)
  {
    v69 = v104;
    v70 = String._bridgeToObjectiveC()();
    [v63 setVibrationIdentifier:v70];

    v71 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_10057D690;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = sub_100009D88();
    *(v72 + 32) = v69;
    *(v72 + 40) = v41;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v3 = v109;
  }

  sub_1003507C4(v24, v17);
  if (sub_100015468(v17, 1, v3) == 1)
  {
    sub_1002E1320(v17);
  }

  else
  {
    v73 = v17;
    v74 = v105;
    v75 = v101;
    (*(v105 + 32))(v101, v73, v3);
    URL._bridgeToObjectiveC()(v76);
    v78 = v77;
    [v63 setExternalToneFileURL:v77];

    v79 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_10057D690;
    URL._bridgeToObjectiveC()(&unk_10057D000);
    v82 = v81;
    *(v80 + 56) = sub_100006AF0(0, &qword_1006A6630, NSURL_ptr);
    *(v80 + 64) = sub_100290B1C(&qword_1006A6638, &qword_1006A6630, NSURL_ptr);
    *(v80 + 32) = v82;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v24 = v108;

    (*(v74 + 8))(v75, v109);
  }

  if ([v107 dualSIMRingtoneEnabled])
  {
    if (!v57)
    {
      goto LABEL_28;
    }

    v110 = 0xD000000000000018;
    v111 = 0x800000010056DC60;
    v83 = v103;
    v84._countAndFlagsBits = v103;
    v84._object = v57;
    String.append(_:)(v84);
    v85 = String._bridgeToObjectiveC()();

    [v63 setTopic:v85];

    v86 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_10057D690;
    *(v87 + 56) = &type metadata for String;
    *(v87 + 64) = sub_100009D88();
    *(v87 + 32) = v83;
    *(v87 + 40) = v57;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

LABEL_28:
  v88 = v106;
  [v63 setShouldIgnoreRingerSwitch:v106];
  v89 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_10057D690;
  LOBYTE(v110) = v88;
  v91 = String.init<A>(reflecting:)();
  v93 = v92;
  *(v90 + 56) = &type metadata for String;
  *(v90 + 64) = sub_100009D88();
  *(v90 + 32) = v91;
  *(v90 + 40) = v93;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (*(a1 + *(type metadata accessor for RingtoneDescriptor() + 28)) == 1)
  {
    v94 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    [v63 setToneIdentifier:TLToneIdentifierNone];
    [v63 setExternalToneFileURL:0];
  }

  sub_1002E1320(v24);
  return v63;
}

uint64_t sub_10034FF8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  v9 = (a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  v10 = *(a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  v11 = *(a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying + 8);
  *v9 = sub_1003502D4;
  v9[1] = v8;
  swift_unknownObjectRetain();

  sub_1000051F8(v10);
  ObjectType = swift_getObjectType();
  v13 = *(a3 + 24);
  v14 = swift_unknownObjectRetain();
  v13(v14, ObjectType, a3);
  v15 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D690;
  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A6628, &unk_1005819E0);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100009D88();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a2;
  v20[4] = a3;
  v21 = *(a3 + 40);
  swift_unknownObjectRetain();

  v21(sub_100350508, v20, ObjectType, a3);

  v22 = a4[6];
  OS_dispatch_semaphore.wait()();
  v23 = a4[3];
  a4[3] = a2;
  a4[4] = a3;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

Swift::Int sub_1003501C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A6628, &unk_1005819E0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100009D88();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = *(a3 + 48);
  return OS_dispatch_semaphore.signal()();
}

id sub_1003502E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  OS_dispatch_semaphore.signal()();
  v7 = *(a3 + 40);
  OS_dispatch_semaphore.signal()();
  v8 = sub_100004778();
  if (a1 == 5)
  {
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D6A0;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_100009D88();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v14 = sub_1002910C8(a2);
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;
    os_log(_:dso:log:type:_:)();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D6A0;
  result = NSStringFromTLAlertPlaybackCompletionType();
  if (result)
  {
    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v16 + 56) = &type metadata for String;
    v22 = sub_100009D88();
    *(v16 + 64) = v22;
    *(v16 + 32) = v19;
    *(v16 + 40) = v21;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v23 = String.init<A>(reflecting:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v22;
    *(v16 + 72) = v23;
    *(v16 + 80) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  __break(1u);
  return result;
}

id sub_100350508(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1003502E0(a1, a2, v2[2]);
}

id sub_100350514(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = String._bridgeToObjectiveC()();
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  v9 = CNContactCallAlertKey;
  *(v8 + 32) = CNContactCallAlertKey;
  v10 = v9;
  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = 0;
  v12 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:isa error:&v22];

  if (!v12)
  {
    v15 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = _convertErrorToNSError(_:)();
    v17 = [v16 code];

    if (v17 == 200)
    {
    }

    else
    {
      v18 = sub_100004778();
      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057D6A0;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_100009D88();
      *(v19 + 32) = a1;
      *(v19 + 40) = a2;

      v20 = _convertErrorToNSError(_:)();
      *(v19 + 96) = sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
      *(v19 + 104) = sub_100290B1C(&qword_1006A6658, &qword_1006A2B90, NSError_ptr);
      *(v19 + 72) = v20;
      os_log(_:dso:log:type:_:)();
    }

    return 0;
  }

  v13 = v22;
  v14 = [v12 callAlert];

  return v14;
}

uint64_t sub_1003507C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100350868(uint64_t a1, void *a2, void (**a3)(void, void))
{
  sub_1003512DC();
  v5 = NSDictionary.init(dictionaryLiteral:)();
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = v5;
  [a2 setAudioIOProperties:isa propertyErrors:&v9];

  v7 = v9;
  v9 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v9)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v8 = Dictionary._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, v8);

  _Block_release(a3);
}

id sub_100350AF8()
{
  v1 = [v0 category];

  return v1;
}

id sub_100350B34()
{
  v1 = [v0 mode];

  return v1;
}

id sub_100350BF4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v2 = [v0 setActivationContext:isa error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350CE4()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v2 = [v0 setHostProcessAttribution:isa error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  v8 = 0;
  LODWORD(a3) = [v3 setMXSessionProperty:v5 value:a3 error:&v8];

  if (a3)
  {
    return v8;
  }

  v7 = v8;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350EA4(char a1, SEL *a2)
{
  v5 = 0;
  if ([v2 *a2])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350F64(char a1, uint64_t a2)
{
  v5 = 0;
  if ([v2 setActive:a1 & 1 withOptions:a2 error:&v5])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10035102C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if ([v3 setCategory:a1 mode:a2 options:a3 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100351140(uint64_t a1, SEL *a2)
{
  v5 = 0;
  if ([v2 *a2])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1003511E8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_1003512DC()
{
  result = qword_1006A6668;
  if (!qword_1006A6668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A6668);
  }

  return result;
}

unint64_t sub_100351320(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100351354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10036BD58();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1003513A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100351320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003513DC(uint64_t a1)
{
  v2 = sub_10036BD58();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100351418(uint64_t a1)
{
  v2 = sub_10036BD58();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100351474(uint64_t a1, uint64_t a2)
{
  v4 = sub_10036BD58();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_1003514C8()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(TUConversationLinkDescriptorXPCClientDataSource) init];
  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A41D0;
  v2 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());
  sub_100369AB8(v0, v1, [v2 init]);
  sub_100010264();
  swift_deallocPartialClassInstance();
  return v0;
}

uint64_t sub_10035166C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDConversationLinkManager_delegate);
  *(v1 + OBJC_IVAR___CSDConversationLinkManager_delegate) = a1;
  return swift_unknownObjectRelease();
}

void *sub_100351684()
{
  sub_10000E564();
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057DEC0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v0 + 40) = [v1 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v2 = sub_10000C350();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v6 = sub_10003EB80();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100007BFC();
    v8 = swift_slowAlloc();
    sub_100015DC0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v4;
    *v9 = v4;
    v10 = v4;
    sub_10000C654(&_mh_execute_header, v11, v12, "Fetching activated links with predicate %@");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100018250();

    sub_100009ED0();
  }

  v13 = sub_100351AC4();
  return v13;
}

void *sub_100351874()
{
  sub_10000E564();
  v0 = [objc_opt_self() tu_predicateForConversationLinkDescriptorsIsDeleted:1];
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5E0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v4 = sub_10003EB80();
  if (os_log_type_enabled(v4, v5))
  {
    sub_100007BFC();
    v6 = swift_slowAlloc();
    sub_100015DC0();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v2;
    *v7 = v2;
    v8 = v2;
    sub_10000C654(&_mh_execute_header, v9, v10, "Fetching deleted links with predicate %@");
    sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100018250();

    sub_100009ED0();
  }

  v11 = sub_100351AC4();
  return v11;
}

id sub_1003519EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
  sub_100007694();
  Array._bridgeToObjectiveC()();
  sub_100010264();

  return 0;
}

void *sub_100351AC4()
{
  sub_10000E564();
  v2 = v1;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_100007BFC();
    v7 = swift_slowAlloc();
    sub_100015DC0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching links with predicate %@", v7, 0xCu);
    sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100018250();
  }

  v10 = *&v0[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_10000C740();
  v13 = [v11 v12];
  if (v13)
  {
    v14 = v13;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = 0;

    v17 = sub_10000B6F4(v15);
    if (v17)
    {
      v18 = v17;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v18 < 0)
      {
        __break(1u);
      }

      v19 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        [objc_allocWithZone(TUConversationLink) initWithDescriptor:v20];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v18 != v19);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v24 = 0;
    sub_10000C58C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v26 = sub_10003A5B4();
    if (os_log_type_enabled(v26, v27))
    {
      sub_100007BFC();
      swift_slowAlloc();
      sub_100015FDC();
      v28 = swift_slowAlloc();
      MEMORY[0] = 138412290;
      swift_errorRetain();
      MEMORY[4] = _swift_stdlib_bridgeErrorToNSError();
      *v28 = MEMORY[4];
      sub_1000079AC();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_100009A04(v28, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_10000EA64();
    }

    return swift_willThrow();
  }
}

void sub_100351E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v25;
  a22 = v26;
  v27 = v23;
  sub_100010060();
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057DEC0;
  v29 = objc_opt_self();
  *(v28 + 32) = [v29 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v28 + 40) = [v29 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v30 = sub_10000C350();
  v31 = *(v27 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  *(v32 + 24) = v22;
  a13 = sub_10036A9C4;
  a14 = v32;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v33;
  a12 = &unk_100629AE8;
  v34 = _Block_copy(&a9);
  v35 = v30;
  sub_10000667C();

  sub_10000D494();
  [v36 v37];
  _Block_release(v34);

  sub_10000B980();
}

uint64_t sub_100351FC0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v6 = _swiftEmptyArrayStorage;
  result = sub_10000B6F4(a1);
  if (!result)
  {
LABEL_13:
    a3(v6, a2);
    goto LABEL_14;
  }

  v8 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v10];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v9;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v8 != v9);
  a3(_swiftEmptyArrayStorage, a2);
LABEL_14:
}

void sub_1003521B8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_100352264()
{
  sub_100005EF4();
  v62 = v2;
  v63 = v0;
  v60 = v4;
  v61 = v3;
  v64 = v6;
  v65 = v5;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v10, v15);
  v59 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  sub_10000BB28();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000075F0(v18, qword_1006BA5E0);
  v19 = *(v12 + 16);
  v19(v1, v65, v9);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v57 = v12;
  v58 = v8;
  if (v22)
  {
    v23 = sub_100007C08();
    v56 = v19;
    v24 = v23;
    v55 = swift_slowAlloc();
    v66 = v55;
    *v24 = 136315394;
    sub_100017230();
    sub_100369F50(v25, v26);
    HIDWORD(v54) = v21;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v12 + 8);
    v31 = v9;
    v30(v1, v9);
    v32 = sub_10002741C(v27, v29, &v66);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    v33 = sub_10029147C(v8);
    sub_10002741C(v33, v34, &v66);
    sub_100010264();

    *(v24 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v20, BYTE4(v54), "Link manager asked to generate link for groupUUID %s with invitedHandles: %s", v24, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    v19 = v56;
    sub_100009ED0();
  }

  else
  {

    (*(v12 + 8))(v1, v9);
    v31 = v9;
  }

  v35 = v59;
  v19(v59, v65, v31);
  v36 = v57;
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = (v14 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v36 + 4))(v42 + v37, v35, v31);
  v43 = (v42 + v38);
  v45 = v62;
  v44 = v63;
  *v43 = v60;
  v43[1] = v45;
  *(v42 + v39) = v44;
  v46 = v64;
  *(v42 + v40) = v64;
  *(v42 + v41) = v58;
  *(v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;

  v44;
  v47 = v46;
  sub_10035E798(v65, sub_10036A900, v42, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);

  sub_100005EDC();
}

void sub_100352614(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v51 = a2;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v49 = a1;
    v50 = a4;
    v21 = qword_1006A0B20;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA5E0);
    (*(v16 + 16))(v20, a3, v15);
    v24 = v22;
    v25 = v51;
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v46 = v27;
      v47 = v26;
      v48 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v28 = 136315650;
      sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v16 + 8))(v20, v15);
      v34 = sub_10002741C(v31, v33, &v52);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v24;
      *v29 = v49;
      *(v28 + 22) = 2112;
      v35 = v24;
      if (v25)
      {
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v39 = v50;
      v40 = v47;
      v41 = v46;
      *(v28 + 24) = v36;
      v29[1] = v37;
      _os_log_impl(&_mh_execute_header, v40, v41, "Refusing generation of a link descriptor for groupUUID %s as one already exists %@ (error: %@", v28, 0x20u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();

      sub_100009B7C(v30);
    }

    else
    {

      (*(v16 + 8))(v20, v15);
      v39 = v50;
    }

    v42 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v24];
    v43 = objc_allocWithZone(NSError);
    v44 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 5, 0);
    (v39)(v42, v44);
  }

  else
  {
    v38 = sub_100366E70();
    sub_100360184(a3, a7, a8, 1, a9, a4, a5, v38);
  }
}

void sub_100352BE0(uint64_t a1, void *a2, uint64_t a3, char *a4, void *a5)
{
  v34 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a5);
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA5E0);

  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = a1;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v31 = v10;
    v21 = v20;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v21 = 136315394;
    v33 = a4;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v32 = v9;
    v19 = a1;
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v22 = Set.description.getter();
    v24 = sub_10002741C(v22, v23, &v35);
    a4 = v33;

    *(v21 + 4) = v24;
    v9 = v32;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    v25 = v29;
    *v29 = v16;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Link manager asked to generate link with invitedHandles: %s, originatorHandle: %@", v21, 0x16u);
    sub_100009A04(v25, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v30);

    v10 = v31;
  }

  UUID.init()();
  v27 = sub_100366E70();
  _Block_copy(a5);
  sub_10035EB60(v14, v16, v19, 1, v34, a4, a5, v27);
  (*(v10 + 8))(v14, v9);
  _Block_release(a5);
  _Block_release(a5);
}

void sub_100352FFC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000AF9C(v11, qword_1006BA5E0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100033378())
  {
    sub_100007BFC();
    v14 = swift_slowAlloc();
    sub_100015DC0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    sub_100008968(&_mh_execute_header, v17, v18, "Link manager asked to generate TUConversationLinkDescriptor for received TUConversationLink %@ (not locally owned)");
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100018250();
  }

  v19 = [v12 pseudonym];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [objc_opt_self() tu_predicateForConversationLinkDescriptorsWithPseudonym:v19];

  v21 = *&v6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_100015D0C();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a3 & 1;
  *(v22 + 48) = v6;
  v28[4] = sub_10036A8E0;
  v28[5] = v22;
  sub_10000A204();
  v28[1] = 1107296256;
  sub_10000A8B8();
  v28[2] = v23;
  v28[3] = &unk_1006299D0;
  v24 = _Block_copy(v28);
  v25 = v12;
  v26 = v20;

  v27 = v6;

  [v21 conversationLinkDescriptorsWithPredicate:v26 limit:1 offset:0 completion:v24];
  _Block_release(v24);
}

uint64_t sub_100353254(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), void *a5, int a6, uint64_t a7)
{
  v108 = a7;
  v107 = a6;
  v110 = a4;
  v111 = a5;
  v9 = type metadata accessor for Date();
  v109 = *(v9 - 8);
  v10 = *(v109 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v100 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v100 - v26;
  v28 = [a3 originatorHandle];
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = v28;
  v106 = v9;
  v30 = [a3 groupUUID];
  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = v30;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = [a3 creationDate];
  if (!v32)
  {
    (*(v19 + 8))(v27, v18);
LABEL_14:

LABEL_15:
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000AF9C(v41, qword_1006BA5E0);
    v42 = a3;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Received link %@ missing required field", v45, 0xCu);
      sub_100009A04(v46, &unk_1006A2630, &qword_10057CB40);
    }

    sub_100369E94();
    v48 = swift_allocError();
    *v49 = 13;
    v110(0, v48);
  }

  v33 = v32;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = [a3 expirationDate];
  if (!v34)
  {

    (*(v109 + 8))(v17, v106);
    (*(v19 + 8))(v27, v18);
    goto LABEL_15;
  }

  v35 = v34;
  v105 = v19;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = sub_100369594(a3);
  if (!v36)
  {

    v70 = *(v109 + 8);
    v71 = v106;
    v70(v14, v106);
    v70(v17, v71);
    (*(v105 + 8))(v27, v18);
    goto LABEL_15;
  }

  v103 = v36;
  v104 = swift_allocObject();
  v102 = v18;
  if (!a1 || !sub_10000B6F4(a1))
  {
    goto LABEL_21;
  }

  sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
  v37 = (a1 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 32);
  v38 = v37;
  [v37 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_100006AF0(0, &unk_1006A6780, TUConversationLinkOriginator_ptr);
    v51 = sub_100353E3C(v29);
    (*(v105 + 16))(v24, v27, v18);
    v101 = v51;
    v52 = [a3 pseudonym];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v54;

    v55 = [a3 publicKey];
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
    v60 = v24;
    v61 = v101;
    v62 = sub_1003F7684(v60, v101, v53, v100, v56, v58);
    v40 = v104;
    *(v104 + 16) = v62;
    [v62 setActivated:1];
    v63 = *(v40 + 16);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v63 setCreationDate:isa];

    v39 = *(v40 + 16);
    goto LABEL_22;
  }

  v39 = v118;
  if (v107)
  {
    v40 = v104;
    *(v104 + 16) = v118;
LABEL_22:
    v65 = v39;
    v66 = Date._bridgeToObjectiveC()().super.isa;
    [v65 setExpirationDate:v66];

    sub_10036962C(v103, *(v40 + 16));
    v67 = *(v40 + 16);
    sub_1003698E0(a3, &selRef_linkName);
    if (v68)
    {
      v69 = String._bridgeToObjectiveC()();
    }

    else
    {
      v69 = 0;
    }

    v72 = v111;
    v73 = v108;
    [v67 setName:v69];

    v74 = swift_allocObject();
    v74[2] = v110;
    v74[3] = v72;
    v74[4] = v40;
    if (v107)
    {
      swift_beginAccess();
      v75 = *(v40 + 16);

      v76 = v75;
      sub_1003540EC();

      v111 = *(v73 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_10057CA80;
      v78 = *(v40 + 16);
      *(v77 + 32) = v78;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v79 = v78;
      v80.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v116 = sub_10036A8F4;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_1003541FC;
      v115 = &unk_100629A70;
      v81 = _Block_copy(&aBlock);

      [v111 addOrUpdateConversationLinkDescriptors:v80.super.isa completion:v81];
    }

    else
    {
      v111 = *(v73 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_10057CA80;
      swift_beginAccess();
      v83 = *(v40 + 16);
      *(v82 + 32) = v83;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);

      v84 = v83;
      v80.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v116 = sub_10036A8F4;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_1003541FC;
      v115 = &unk_100629A48;
      v81 = _Block_copy(&aBlock);

      [v111 addConversationLinkDescriptors:v80.super.isa completion:v81];
    }

    _Block_release(v81);

    v85 = *(v108 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    sub_1003EFBF8();

    v86 = *(v109 + 8);
    v87 = v106;
    v86(v14, v106);
    v86(v17, v87);
    (*(v105 + 8))(v27, v102);
  }

  v88 = v106;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000AF9C(v89, qword_1006BA5E0);
  v90 = v39;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = v18;
    v95 = swift_slowAlloc();
    *v93 = 138412290;
    *(v93 + 4) = v90;
    *v95 = v90;
    v96 = v90;
    _os_log_impl(&_mh_execute_header, v91, v92, "%@ already existed and isUpdate: NO, ignoring", v93, 0xCu);
    sub_100009A04(v95, &unk_1006A2630, &qword_10057CB40);
    v18 = v94;
    v88 = v106;
  }

  sub_100369E94();
  v97 = swift_allocError();
  *v98 = 5;
  v110(0, v97);

  v99 = *(v109 + 8);
  v99(v14, v88);
  v99(v17, v88);
  (*(v105 + 8))(v27, v18);
  return swift_deallocUninitializedObject();
}

id sub_100353E3C(void *a1)
{
  if (qword_1006A0C10 != -1)
  {
    swift_once();
  }

  sub_1004330F4();
  v2 = sub_1004333C0();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithIdentifier:v4 revision:v2 handle:a1];

  return v5;
}

void sub_100353F10(char a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:*(a5 + 16)];
    a3(v8, a2);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_beginAccess();
      v14 = *(a5 + 16);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to persist link %@", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
    }

    a3(0, a2);
  }
}

void sub_1003540EC()
{
  v1 = v0;
  if (qword_1006A0C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004330F4();
  v4 = v3;
  v5 = sub_1004333C0();
  v6 = [v1 originator];
  v7 = [v6 handle];

  v8 = objc_allocWithZone(TUConversationLinkOriginator);
  v9 = sub_1003F7774(v2, v4, v5, v7);
  [v1 setOriginator:v9];
}

void sub_1003541FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100354334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = objc_opt_self();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 tu_predicateForConversationLinkDescriptorsWithPseudonym:v36];

  v38 = *&v24[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_100015D0C();
  v39 = swift_allocObject();
  v39[2] = v24;
  v39[3] = v30;
  v39[4] = v28;
  v39[5] = v34;
  v39[6] = v32;
  a13 = sub_10036A880;
  a14 = v39;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v40;
  a12 = &unk_1006298E0;
  v41 = _Block_copy(&a9);
  v42 = v37;
  v43 = v24;
  sub_1000115CC(v30);

  sub_10000C740();
  [v44 v45];
  _Block_release(v41);

  sub_10036BED4();
}

void sub_100354474(unint64_t a1, uint64_t a2, char *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v19 = *(a1 + 32);
  }

  v20 = v19;
  [v19 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    v21 = v35;
    [v35 setActivated:1];
    Date.init()();
    v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v32 = a6;
    isa = v22.super.isa;
    (*(v14 + 8))(v18, v13);
    [v21 setCreationDate:isa];

    [v21 setDeletionDate:0];
    sub_1003540EC();
    v33 = *&a3[OBJC_IVAR___CSDConversationLinkManager_dataSource];
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10057CA80;
    *(v24 + 32) = v21;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v25 = v21;
    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v28 = v32;
    v27[4] = a3;
    v27[5] = v28;
    v27[6] = a7;
    aBlock[4] = sub_10036A8B0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003541FC;
    aBlock[3] = &unk_100629930;
    v29 = _Block_copy(aBlock);
    sub_1000115CC(a4);
    v30 = a3;

    [v33 addOrUpdateConversationLinkDescriptors:v26 completion:v29];
    _Block_release(v29);

    return;
  }

LABEL_9:
  if (a4)
  {
    a4(0, 0);
  }
}

uint64_t sub_1003547F4(char a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v25 - v20;
  if (a3)
  {
    a3(a1 & 1, a2);
  }

  Date.init()();
  sub_100366E70();
  Date.addingTimeInterval(_:)();
  v22 = *(v13 + 8);
  v22(v18, v12);
  sub_100359550(a6, v26, v21, 0, 0);
  result = (v22)(v21, v12);
  if (a1)
  {
    v24 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    return sub_1003EFB64();
  }

  return result;
}

void sub_100354A48()
{
  sub_100005EF4();
  v144 = v2;
  v145 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = sub_100007BF0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v128[-v13];
  v15 = type metadata accessor for UUID();
  v16 = sub_100007FEC(v15);
  v138 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007BAC();
  __chkstk_darwin(v21, v22);
  sub_10001C9F4();
  __chkstk_darwin(v23, v24);
  v26 = &v128[-v25];
  v147 = type metadata accessor for Date();
  v27 = sub_100007FEC(v147);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27, v32);
  sub_100007BAC();
  v139 = (v33 - v34);
  sub_100006838();
  __chkstk_darwin(v35, v36);
  v146 = &v128[-v37];
  v38 = objc_opt_self();
  v140 = v7;
  v141 = v5;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 tu_predicateForConversationLinkDescriptorsWithPseudonym:v39];

  v142 = v0;
  v41 = *(v0 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v150[0] = 0;
  v148 = v40;
  sub_10000C740();
  v44 = [v42 v43];
  v45 = v150[0];
  p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
  if (v44)
  {
    v47 = v44;
    v137 = v41;
    v48 = sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v45;

    if (sub_10000B6F4(v49))
    {
      v136 = v48;
      sub_10039C390(0, (v49 & 0xC000000000000001) == 0, v49);
      if ((v49 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v49 + 32);
      }

      v143 = v51;
      v52 = v29;

      [v143 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
      if (swift_dynamicCast())
      {
        v53 = v149;
        [v149 setActivated:1];
        v54 = v146;
        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v57 = *(v52 + 8);
        v56 = v52 + 8;
        v135 = v57;
        v57(v54, v147);
        [v53 setCreationDate:isa];

        [v53 setDeletionDate:0];
        sub_100285FC4(v144, v14, &unk_1006A3DD0, &unk_10057C9D0);
        if (sub_100015468(v14, 1, v15) == 1)
        {
          sub_100009A04(v14, &unk_1006A3DD0, &unk_10057C9D0);
        }

        else
        {
          v60 = v138;
          (*(v138 + 32))(v26, v14, v15);
          if (qword_1006A0B20 != -1)
          {
            sub_10000854C();
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          sub_1000075F0(v61, qword_1006BA5E0);
          (*(v60 + 16))(v1, v26, v15);
          v144 = v53;
          v62 = v53;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();

          v65 = sub_10003EB80();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = sub_100007C08();
            v131 = v67;
            v132 = swift_slowAlloc();
            v150[0] = v132;
            *v67 = 136315394;
            v68 = [v62 groupUUID];
            v133 = v62;
            v69 = v60;
            v70 = v68;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100017230();
            sub_100369F50(v71, v72);
            v130 = v63;
            v73 = dispatch thunk of CustomStringConvertible.description.getter();
            v134 = v56;
            v75 = v74;
            v129 = v64;
            v76 = *(v69 + 8);
            v77 = sub_100005334();
            v76(v77);
            v78 = sub_10002741C(v73, v75, v150);

            v79 = v131;
            *(v131 + 1) = v78;
            *(v79 + 6) = 2080;
            dispatch thunk of CustomStringConvertible.description.getter();
            sub_10000A224();
            (v76)(v1, v15);
            v62 = v133;
            v80 = sub_100006B30();
            v83 = sub_10002741C(v80, v81, v82);

            *(v79 + 14) = v83;
            v84 = v130;
            _os_log_impl(&_mh_execute_header, v130, v129, "In activating link, updating the groupUUID from %s to %s", v79, 0x16u);
            swift_arrayDestroy();
            sub_100009ED0();

            sub_100018250();
          }

          else
          {

            v76 = *(v60 + 8);
            (v76)(v1, v15);
          }

          v85 = UUID._bridgeToObjectiveC()().super.isa;
          [v62 setGroupUUID:v85];

          (v76)(v26, v15);
          v53 = v144;
        }

        v86 = v145;
        if (v145)
        {
          if (qword_1006A0B20 != -1)
          {
            sub_10000854C();
            swift_once();
          }

          v87 = type metadata accessor for Logger();
          sub_1000075F0(v87, qword_1006BA5E0);

          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v88, v89))
          {
            sub_100007BFC();
            v90 = swift_slowAlloc();
            v91 = sub_100005E84();
            v144 = v53;
            v92 = v91;
            v150[0] = v91;
            *v90 = 136315138;
            v93 = sub_10036BEA8();
            sub_100006AF0(v93, v94, TUHandle_ptr);
            sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
            v95 = Set.description.getter();
            v97 = sub_10002741C(v95, v96, v150);

            *(v90 + 4) = v97;
            sub_10000C1F8();
            _os_log_impl(v98, v99, v100, v101, v90, 0xCu);
            sub_100009B7C(v92);
            v53 = v144;
            sub_100009ED0();

            sub_100009ED0();
          }

          sub_1003696E4(v86, v53);
        }

        sub_1003540EC();
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        sub_100007934();
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_10057CA80;
        *(v102 + 32) = v53;
        v103 = v53;
        sub_100051648();
        Array._bridgeToObjectiveC()();
        sub_10000667C();

        v150[0] = 0;
        v104 = [v137 addOrUpdateConversationLinkDescriptors:v53 error:v150];

        if (v104)
        {
          v105 = *(v142 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
          v106 = v150[0];
          sub_1003EFB64();
          v107 = v139;
          Date.init()();
          sub_100366E70();
          v108 = v146;
          Date.addingTimeInterval(_:)();
          v109 = v107;
          v110 = v147;
          v111 = v135;
          v135(v109, v147);
          sub_10000C740();
          sub_100359550(v112, v113, v114, v115, v116);
          v111(v108, v110);
          [objc_allocWithZone(TUConversationLink) initWithDescriptor:v53];

          goto LABEL_32;
        }

        v117 = v150[0];

        _convertNSErrorToError(_:)();
        swift_willThrow();

        p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
        goto LABEL_27;
      }

      v59 = v143;
    }

    else
    {

      v59 = v148;
    }

    goto LABEL_32;
  }

  v58 = v150[0];
  sub_10000667C();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_27:
  if (p_inst_meths[356] != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v118 = type metadata accessor for Logger();
  sub_1000075F0(v118, qword_1006BA5E0);
  swift_errorRetain();
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v119, v120))
  {
    sub_100007BFC();
    v121 = swift_slowAlloc();
    sub_100015DC0();
    v122 = swift_slowAlloc();
    *v121 = 138412290;
    swift_errorRetain();
    v123 = _swift_stdlib_bridgeErrorToNSError();
    *(v121 + 4) = v123;
    *v122 = v123;
    sub_10000C1F8();
    _os_log_impl(v124, v125, v126, v127, v121, 0xCu);
    sub_100009A04(v122, &unk_1006A2630, &qword_10057CB40);
    sub_10000EA64();

    sub_100009ED0();
  }

  else
  {
  }

LABEL_32:
  sub_100005EDC();
}

void sub_1003556E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v28 = *&v25[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  v29 = sub_1003557B4();
  sub_100007C2C();
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  a13 = sub_10036A878;
  a14 = v30;
  sub_10000A204();
  sub_100015220();
  a11 = v31;
  a12 = &unk_100629890;
  v32 = _Block_copy(&a9);
  v33 = v25;
  v34 = v27;

  [v28 conversationLinkDescriptorCountWithPredicate:v29 completion:v32];
  _Block_release(v32);

  sub_10000B980();
}

id sub_1003557B4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100581AB0;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 tu_predicateForConversationLinkDescriptorsWithActivated:0];
  *(v7 + 40) = [v8 tu_predicateForConversationLinkDescriptorsWithOriginatorHandle:v0];
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v6, v1);
  v10 = [v8 tu_predicateForConversationLinkDescriptorsWithExpirationDateAfter:isa];

  *(v7 + 48) = v10;
  return sub_10000C350();
}

void sub_100355BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100355CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(int64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v30 = *&v25[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  v31 = sub_1003557B4();
  sub_100007934();
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  a13 = sub_10036A868;
  a14 = v32;
  sub_10000A204();
  sub_100015220();
  a11 = v33;
  a12 = &unk_1006297F0;
  v34 = _Block_copy(&a9);
  v35 = v25;
  v36 = v29;

  [v30 conversationLinkDescriptorCountWithPredicate:v31 completion:v34];
  _Block_release(v34);

  sub_10000B980();
}

void sub_100355DA0(int64_t a1, uint64_t a2, char *a3, char a4, void *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA5E0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v18 + 4) = v20;
    *v19 = v21;
    _os_log_impl(&_mh_execute_header, v27, v17, "Fetching conversation link descriptor count failed with error %@", v18, 0xCu);
    sub_100009A04(v19, &unk_1006A2630, &qword_10057CB40);
  }

  else
  {
    if (sub_100367024() > a1 || (a4 & 1) != 0 && sub_100367024() == a1)
    {
      UUID.init()();
      sub_10035F6CC(v15, a5, 0, 0, 0, a3, [*&a3[OBJC_IVAR___CSDConversationLinkManager_serverBag] inactiveLinkPseudonymExpiry]);
      (*(v11 + 8))(v15, v10);
      return;
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA5E0);
    v26 = a3;
    v27 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v23))
    {

      v25 = v26;
      goto LABEL_19;
    }

    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = a1;
    *(v24 + 12) = 2048;
    *(v24 + 14) = sub_100367024();

    _os_log_impl(&_mh_execute_header, v27, v23, "Count of inactive links ({public}%ld) reached the cache limit ({public}%ld); not provisioning another.", v24, 0x16u);
  }

LABEL_18:
  v25 = v27;
LABEL_19:
}

void sub_100356130(void *a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5E0);
    v11 = a1;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Provisioned inactive link %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  swift_errorRetain();
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v4;
    *v7 = a1;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v8 = v4;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to provision inactive link %@ %@", v6, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

LABEL_10:

    return;
  }
}

void sub_100356488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = *(v22 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v30 = sub_1003557B4();
  sub_100007C2C();
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v26;
  a13 = sub_10036A860;
  a14 = v31;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v32;
  a12 = &unk_1006297A0;
  v33 = _Block_copy(&a9);

  sub_10000C740();
  [v34 v35];
  _Block_release(v33);

  sub_10000B980();
}

void sub_100356564(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a1 && sub_10000B6F4(a1))
  {
    sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    v8 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v6];
  }

  else
  {
    v8 = 0;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA5E0);
  v15 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v15;
    *v13 = v8;
    v14 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Asked for inactive link, returning: %@", v12, 0xCu);
    sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
  }

  a3(v8, a2);
}

id sub_1003567F8()
{
  v2 = *(v0 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v3 = sub_1003557B4();
  sub_10000C740();
  v6 = [v4 v5];

  if (v6)
  {
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    sub_100007694();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = 0;

    if (sub_10000B6F4(v7))
    {
      v9 = (v7 & 0xC000000000000001);
      sub_10039C390(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_10036BEA8();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 32);
      }

      sub_10000667C();

      v11 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v7 & 0xC000000000000001];

      v12 = v11;
    }

    else
    {

      v11 = 0;
    }

    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000075F0(v14, qword_1006BA5E0);
    v15 = v11;
    v16 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v17 = sub_10003A5B4();
    if (os_log_type_enabled(v17, v18))
    {
      sub_100007BFC();
      swift_slowAlloc();
      sub_100015FDC();
      v19 = swift_slowAlloc();
      *v1 = 138412290;
      *(v1 + 4) = v15;
      *v19 = v11;
      sub_1000079AC();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_100009A04(v19, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_10000EA64();
    }

    else
    {
    }
  }

  else
  {
    v13 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v11;
}

void sub_100356ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_self();
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 tu_predicateForConversationLinkDescriptorsWithPseudonym:v35];

  if (v33)
  {
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    sub_100008BA8();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10057DEC0;
    *(v37 + 32) = v36;
    v38 = v36;
    *(v37 + 40) = [v34 tu_predicateForConversationLinkDescriptorsWithActivated:1];
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v36 = sub_10000C350();
  }

  v39 = *(v27 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v40 = swift_allocObject();
  *(v40 + 16) = v31;
  *(v40 + 24) = v29;
  a13 = sub_10036BE18;
  a14 = v40;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v41;
  a12 = &unk_100629750;
  v42 = _Block_copy(&a9);

  sub_10000D494();
  [v43 v44];
  _Block_release(v42);

  sub_10036BED4();
}

void sub_100356D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v4 = *(a3 + 16);
  v5 = sub_100006B30();
  v8 = v6;
  v7(v5);
}

void *sub_100356D94(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v35 = v1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = objc_opt_self();
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v37 = v17;
    v38 = v15;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v36 = *(v16 + 56);
    v14 = v16;
    v19 = (v16 - 8);
    do
    {
      v37(v12, v18, v3);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v21 = [v38 tu_predicateForConversationLinkDescriptorsWithGroupUUID:isa];

      v22 = *v19;
      v23 = sub_10000B8B0();
      v24(v23);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v25 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v36;
      --v13;
    }

    while (v13);
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    sub_10000667C();
    v26 = sub_100421378();
    v27 = *(v35 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    sub_10000D494();
    v30 = [v28 v29];
    if (v30)
    {
      v31 = v30;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = 0;
    }

    else
    {
      v33 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v14;
}

void sub_100357130()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR___CSDConversationLinkManager_service] hasActiveAccounts])
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000075F0(v2, qword_1006BA5E0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_100006DC4();
      *v5 = 0;
      sub_10000C1F8();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      sub_100009ED0();
    }

    v10 = *&v1[OBJC_IVAR___CSDConversationLinkManager_dataSource];
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    aBlock[4] = sub_10036A6FC;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000A8B8();
    aBlock[2] = v12;
    aBlock[3] = &unk_1006295E8;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    sub_10000C740();
    [v15 v16];
    _Block_release(v13);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000075F0(v17, qword_1006BA5E0);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = sub_100006DC4();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "validateAllLinks: No active accounts on the service, skipping link validation for now", v19, 2u);
      sub_100009ED0();
    }
  }
}

void sub_100357370(NSObject *a1, unint64_t i, uint64_t (*a3)(id *))
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = (v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v10, v13);
  __chkstk_darwin(v14, v15);
  v19 = v114 - v18;
  if (!a1 || i)
  {
    if (qword_1006A0B20 == -1)
    {
LABEL_4:
      v20 = type metadata accessor for Logger();
      sub_10000AF9C(v20, qword_1006BA5E0);
      swift_errorRetain();
      v124 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        if (i)
        {
          swift_errorRetain();
          v24 = _swift_stdlib_bridgeErrorToNSError();
          v25 = v24;
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        *(v22 + 4) = v24;
        *v23 = v25;
        _os_log_impl(&_mh_execute_header, v124, v21, "No descriptors fetched -- validation over {error: %@}", v22, 0xCu);
        sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
      }

      v53 = v124;

      return;
    }

LABEL_59:
    swift_once();
    goto LABEL_4;
  }

  v116 = v17;
  v117 = v16;
  Date.init(timeIntervalSinceNow:)();
  v26 = _swiftEmptyArrayStorage;
  v132 = _swiftEmptyArrayStorage;
  v27 = sub_10000B6F4(a1);
  v119 = v6;
  v120 = v7;
  v121 = v19;
  v123 = a3;
  v124 = a1;
  v118 = v12;
  if (v27)
  {
    v28 = v27;
    if (v27 < 1)
    {
      __break(1u);
      return;
    }

    v29 = 0;
    v30 = a1 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = a1[v29 + 4].isa;
      }

      v32 = v31;
      v33 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v31];
      if ([v33 isLocallyCreated])
      {
        v34 = v32;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v26 = v132;
        a1 = v124;
      }

      else
      {
      }

      ++v29;
    }

    while (v28 != v29);
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_10000AF9C(v35, qword_1006BA5E0);
  v38 = v120;
  v37 = v121;
  v39 = v116;
  v40 = v119;
  v115 = *(v120 + 16);
  v115(v116, v121, v119);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v122 = v26;
  v114[1] = v36;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    aBlock = v114[0];
    *v44 = 136315394;
    sub_100369F50(&unk_1006A6740, &type metadata accessor for Date);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v116 = *(v38 + 8);
    v116(v39, v40);
    v48 = sub_10002741C(v45, v47, &aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);

    v49 = Array.description.getter();
    v51 = v50;

    v52 = sub_10002741C(v49, v51, &aBlock);
    v26 = v122;

    *(v44 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "validateAllLinks: Links expiration must be newer than date %s for descriptors: %s", v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v116 = *(v38 + 8);
    v116(v39, v40);
  }

  v54 = v123;
  v55 = v118;
  v115(v118, v37, v40);
  v56 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v57 = swift_allocObject();
  (*(v38 + 32))(v57 + v56, v55, v40);
  v133 = v26;
  v134 = sub_10036A704;
  v135 = v57;
  *(swift_allocObject() + 16) = v54;

  v58 = v54;
  sub_10026D814(&unk_1006A6798, &unk_100581B50);
  LazyFilterSequence.filter(_:)();

  v60 = aBlock;
  v59 = v127;
  v61 = v128;

  v123 = v59;
  sub_100369BCC(v60, v59);
  v63 = v62;
  v64 = sub_10000B6F4(v60);
  v118 = v58;
  if (v63 != v64)
  {

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v133 = v68;
      *v67 = 134218242;
      v69 = v123;
      sub_100369BCC(v60, v123);
      v71 = v70;
      v72 = sub_10000B6F4(v60);
      sub_100369CA4(v71, v72, v60, v69);
      *(v67 + 4) = v73;

      *(v67 + 12) = 2080;
      aBlock = v60;
      v127 = v69;
      v128 = v61;
      v129 = sub_1003584E8;
      v130 = 0;

      sub_10026D814(&qword_1006A67A8, &unk_100581B60);
      v74 = String.init<A>(reflecting:)();
      v76 = sub_10002741C(v74, v75, &v133);

      *(v67 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "validateAllLinks: We have some invalid links to cleanup {count: %ld, pseudonyms: %s}", v67, 0x16u);
      sub_100009B7C(v68);
    }

    else
    {
    }

    if (_TUIsInternalInstall())
    {
      v77 = [objc_opt_self() tu_defaults];
      v78 = String._bridgeToObjectiveC()();
      v79 = [v77 BOOLForKey:v78 withDefault:0];

      if (v79)
      {
        v80 = sub_10000B6F4(v60);

        for (i = 0; ; ++i)
        {
          if (v80 == i)
          {

            v58 = v118;
            goto LABEL_46;
          }

          if ((v60 & 0xC000000000000001) != 0)
          {
            v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v81 = *(v60 + 8 * i + 32);
          }

          v82 = v81;
          if (__OFADD__(i, 1))
          {
            break;
          }

          aBlock = v81;
          if (v123(&aBlock))
          {
            sub_1003650F4();
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

LABEL_46:
    v83 = swift_allocObject();
    v83[2] = sub_100358540;
    v83[3] = 0;
    v84 = v123;
    v83[4] = v60;
    v83[5] = v84;
    v83[6] = v61;
    v83[7] = sub_1003584E8;
    v83[8] = 0;
    v133 = v60;
    v134 = v84;
    v135 = v61;
    v136 = sub_10036A7C0;
    v137 = v83;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1003690C0(&v133);

    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v85 = sub_100421378();
    v86 = *(v58 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    v87 = swift_allocObject();
    v87[2] = v58;
    v87[3] = v60;
    v87[4] = v84;
    v87[5] = v61;
    v130 = sub_10036A7CC;
    v131 = v87;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_100355BE4;
    v129 = &unk_1006296B0;
    v88 = _Block_copy(&aBlock);
    v89 = v58;

    [v86 removeConversationLinkDescriptorsWithPredicate:v85 deleteReason:5 completion:v88];
    _Block_release(v88);
  }

  sub_10036618C();
  v91 = v90;
  if (*(v90 + 16))
  {
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v125 = v91;
      aBlock = v95;
      *v94 = 134218242;
      *(v94 + 4) = *(v91 + 16);
      *(v94 + 12) = 2080;

      sub_10026D814(&unk_1006A3C60, &unk_10057D910);
      v96 = String.init<A>(reflecting:)();
      v98 = sub_10002741C(v96, v97, &aBlock);

      *(v94 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "validateAllLinks: We have some deleted links to remove from database {count: %ld, pseudonyms: %s}", v94, 0x16u);
      sub_100009B7C(v95);
    }

    v99 = *(v91 + 16);
    if (v99)
    {
      aBlock = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v100 = objc_opt_self();
      v101 = (v91 + 40);
      do
      {
        v102 = *(v101 - 1);
        v103 = *v101;

        v104 = String._bridgeToObjectiveC()();
        v105 = [v100 tu_predicateForConversationLinkDescriptorsWithPseudonym:v104];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v106 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v101 += 2;
        --v99;
      }

      while (v99);

      v107 = aBlock;
    }

    else
    {

      v107 = _swiftEmptyArrayStorage;
    }

    sub_100274264(v107);
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v108 = sub_100421378();
    v109 = v118;
    v110 = *(v118 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    v111 = swift_allocObject();
    v111[2] = v109;
    v111[3] = v60;
    v111[4] = v123;
    v111[5] = v61;
    v130 = sub_10036A838;
    v131 = v111;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_100355BE4;
    v129 = &unk_100629700;
    v112 = _Block_copy(&aBlock);
    v113 = v109;

    [v110 removeLinkDescriptorsFromDataSourceWithPredicate:v108 completion:v112];
    _Block_release(v112);

    swift_bridgeObjectRelease_n();

    v116(v121, v119);
  }

  else
  {
    v116(v121, v40);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10035829C(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 expirationDate];
  if (v8)
  {
    v9 = v8;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = static Date.> infix(_:_:)();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "validateAllLinks: no valid expirationDate", v14, 2u);
    }

    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_100358460(id *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___CSDConversationLinkManager_service);
  v3 = [*a1 pseudonym];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v2 checkValidityForSelfPseudonymString:v3];

  return v4 ^ 1;
}

void sub_1003584E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pseudonym];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_100358540(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 tu_predicateForConversationLinkDescriptorsWithPseudonym:v6];

  *a2 = v7;
}

void sub_1003585B4()
{
  sub_10000D698();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000075F0(v8, qword_1006BA5E0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100007C08();
    sub_100015DC0();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    if (v5)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 14) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, v1, v11, 0x16u);
    sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100009ED0();
  }

  if (NSNotFound.getter() == v7 || (v15 = *(v3 + OBJC_IVAR___CSDConversationLinkManager_delegate)) == 0)
  {
    sub_100006048();
  }

  else
  {
    v16 = *(v3 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    swift_unknownObjectRetain();
    v17 = sub_100006694();
    sub_100369300(v17, v18);
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 linkManager:v3 removedLinkDescriptorsFromIDSSignal:isa];

    sub_100006048();

    swift_unknownObjectRelease();
  }
}

void sub_1003589B0(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6, char *a7, uint64_t a8)
{
  if (a1)
  {
    v15 = objc_allocWithZone(TUConversationLink);
    v16 = a1;
    v48 = [v15 initWithDescriptor:v16];
    if ([v48 isLocallyCreated])
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000AF9C(v17, qword_1006BA5E0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v47 = a8;
        v20 = a6;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10002741C(a3, a4, aBlock);
        _os_log_impl(&_mh_execute_header, v18, v19, "Asking IDS to revoke pseudonym %s because it was locally generated for link being invalidated", v21, 0xCu);
        sub_100009B7C(v22);

        a6 = v20;
        a8 = v47;
      }

      sub_1003650F4();
      v23 = *&a7[OBJC_IVAR___CSDConversationLinkManager_service];
      v24 = [v48 pseudonym];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = swift_allocObject();
      v25[2] = a5;
      v25[3] = a6;
      v25[4] = a7;
      v25[5] = v48;
      v25[6] = a8;
      aBlock[4] = sub_10036A6E4;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629598;
      v26 = _Block_copy(aBlock);
      sub_1000115CC(a5);
      v27 = a7;
      v28 = v48;

      [v23 revokePseudonymString:v24 completionHandler:v26];

      _Block_release(v26);
    }

    else
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA5E0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = a3;
        v43 = a5;
        v44 = a8;
        v45 = a6;
        v46 = v41;
        aBlock[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_10002741C(v42, a4, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing link with pseudonym %s from storage without invalidating as it's not locally created", v40, 0xCu);
        sub_100009B7C(v46);
        a6 = v45;
        a8 = v44;
        a5 = v43;
      }

      sub_10035921C(v48, a8, a5, a6);
    }
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5E0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10002741C(a3, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "Asked to invalidate link for pseudonym %s but none was found.", v33, 0xCu);
      sub_100009B7C(v34);
    }

    if (a5)
    {
      v35 = a2;
      if (!a2)
      {
        v36 = objc_allocWithZone(NSError);
        v35 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      }

      swift_errorRetain();
      a5(0, v35);
    }
  }
}

void sub_100358FB0(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym invalidation failed with error %@)", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
    }

    if (a3)
    {
      a3(0, a2);
    }
  }

  else
  {
    sub_10035921C(a6, a7, a3, a4);
  }
}

uint64_t sub_10035921C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA5E0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100033378())
  {
    sub_100007BFC();
    v34 = v5;
    v13 = swift_slowAlloc();
    v33 = a2;
    v14 = sub_100005E84();
    var58[0] = v14;
    *v13 = 136315138;
    v15 = [v11 pseudonym];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10002741C(v16, v18, var58);

    *(v13 + 4) = v19;
    sub_100008968(&_mh_execute_header, v20, v21, "Removing conversation link for pseudonym %s");
    sub_100009B7C(v14);
    a2 = v33;
    sub_100009ED0();

    sub_100009ED0();
  }

  v22 = [v11 pseudonym];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_100007C2C();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = sub_100006694();
  sub_1000115CC(v27);
  sub_10035EA6C(v23, v25, a2, sub_10036A60C, v26, v28, v29, v30, v32, v33, v34, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], vars8);
}

uint64_t sub_100359424(uint64_t result, uint64_t a2, uint64_t (*a3)(_BOOL8, uint64_t))
{
  if (a3)
  {
    v5 = NSNotFound.getter() != result;
    return a3(v5, a2);
  }

  return result;
}

void sub_1003596B8(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v21 = a1;
    sub_100362958(v21, a8, a5, a6);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5E0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10002741C(a3, a4, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Asked to renew link for pseudonym %s but none was found.", v17, 0xCu);
      sub_100009B7C(v18);
    }

    if (a5)
    {
      v19 = a2;
      if (!a2)
      {
        v20 = objc_allocWithZone(NSError);
        v19 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      }

      swift_errorRetain();
      a5(0, v19);
    }
  }
}

void sub_100359BEC(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, char *, id), uint64_t a6, uint64_t a7)
{
  v101 = a3;
  v102 = a5;
  v12 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v94 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v100 = a7;
    v27 = a6;
    v28 = a1;
    [v28 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v97 = v28;
      v29 = *&v100[OBJC_IVAR___CSDConversationLinkManager_service];
      v99 = v109;
      v30 = [v109 pseudonym];
      if (!v30)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = String._bridgeToObjectiveC()();
      }

      v31 = [v29 pseudonymForPseudonymString:v30];

      v32 = v27;
      v98 = v20;
      if (v31)
      {
        if (!sub_100366D2C(v31))
        {
          v79 = [v31 properties];
          v80 = [v79 expirationDate];

          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v22 + 8))(v26, v21);
          v33 = v99;
          [v99 setExpirationDate:isa];

          sub_1003540EC();
          v82 = v100;
          v83 = *&v100[OBJC_IVAR___CSDConversationLinkManager_dataSource];
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_10057CA80;
          *(v84 + 32) = v33;
          sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
          v85 = v33;
          v86 = Array._bridgeToObjectiveC()().super.isa;

          v87 = swift_allocObject();
          *(v87 + 16) = v85;
          *(v87 + 24) = v82;
          v107 = sub_10036A588;
          v108 = v87;
          aBlock = _NSConcreteStackBlock;
          v104 = 1107296256;
          v105 = sub_1003541FC;
          v106 = &unk_1006294D0;
          v88 = _Block_copy(&aBlock);
          v89 = v85;
          v90 = v82;

          [v83 addOrUpdateConversationLinkDescriptors:v86 completion:v88];

          _Block_release(v88);
          v78 = 1;
          v67 = v97;
LABEL_29:
          v17 = v98;
          if (!v102)
          {

            return;
          }

          v91 = [v33 expirationDate];
          if (v91)
          {
            v92 = v91;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v93 = 0;
          }

          else
          {
            v93 = 1;
          }

          sub_10000AF74(v17, v93, 1, v21);
          v102(v78, v17, 0);

          goto LABEL_35;
        }

        v33 = v99;
      }

      else
      {
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_10000AF9C(v42, qword_1006BA5E0);
        v33 = v99;
        v43 = v99;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v96 = v27;
          v47 = v46;
          v95 = swift_slowAlloc();
          aBlock = v95;
          *v47 = 136315138;
          v48 = [v43 pseudonym];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = sub_10002741C(v49, v51, &aBlock);
          v33 = v99;

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v44, v45, "Could not retrieve IDS pseudonym object for pseudonym string %s", v47, 0xCu);
          sub_100009B7C(v95);

          v32 = v96;
        }
      }

      v96 = v32;
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10000AF9C(v53, qword_1006BA5E0);
      v54 = v33;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v57 = 136315138;
        v59 = [v54 pseudonym];
        v95 = v21;
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = v61;
        v33 = v99;
        v65 = sub_10002741C(v64, v63, &aBlock);
        v66 = &selRef_normalizedValue;

        *(v57 + 4) = v65;
        v21 = v95;
        _os_log_impl(&_mh_execute_header, v55, v56, "Removing invalid conversation link with pseudonym %s", v57, 0xCu);
        sub_100009B7C(v58);

        v67 = v97;
        v68 = v100;
      }

      else
      {

        v67 = v97;
        v68 = v100;
        v66 = &selRef_normalizedValue;
      }

      sub_1003650F4();
      v69 = [v54 v66[506]];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = swift_allocObject();
      v73[2] = v101;
      v73[3] = a4;
      v73[4] = v68;
      v73[5] = v54;
      v74 = v54;
      v68;

      sub_10035EA6C(v70, v72, 3, sub_10036A57C, v73, v75, v76, v77, v94, v95, v96, v97, v98, v99, v100, v101, v102, aBlock, v104, v105, v106, v107, v108, v109);

      v78 = 0;
      goto LABEL_29;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000AF9C(v34, qword_1006BA5E0);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v21;
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_10002741C(v101, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "Asked to check validity of link for pseudonym %s but none was found.", v37, 0xCu);
    sub_100009B7C(v39);
    v21 = v38;
  }

  if (v102)
  {
    sub_10000AF74(v17, 1, 1, v21);
    v40 = a2;
    if (!a2)
    {
      v41 = objc_allocWithZone(NSError);
      v40 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    v102(0, v17, v40);

LABEL_35:
    sub_100009A04(v17, &qword_1006A3C70, &unk_10057EA80);
  }
}

void sub_10035A5BC(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    sub_1003EFB64();
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA5E0);
    v8 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v10 = 136315394;
      v13 = [v8 pseudonym];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10002741C(v14, v16, &v21);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v10 + 14) = v18;
      *v11 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Saving expiration date for pseudonym %s failed with error %@", v10, 0x16u);
      sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v12);
    }
  }
}

void sub_10035A804(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a3, a4, &v24);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Removal of invalid conversation link with pseudonym %%%s failed with error %@", v13, 0x16u);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v15);
    }
  }

  else
  {
    v18 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v18)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057CA80;
      *(v19 + 32) = a6;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v20 = a6;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 linkManager:a5 removedLinkDescriptorsFromValidityCheck:isa];

      swift_unknownObjectRelease();
    }

    v22 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    sub_1003EFB64();
  }
}

void sub_10035ABA0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v15 - v11;
  sub_100285FC4(a2, &v15 - v11, &qword_1006A3C70, &unk_10057EA80);
  v13 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(v12, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, a1 & 1, isa, a3);
}

void sub_10035ADC8(void *a1, void *a2, void *a3, void (*a4)(void, id), uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v15 = a1;
    [v15 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v16 = v40;
      sub_100369938(a7, a8, v40);
      sub_1003540EC();
      v38 = *&a6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057CA80;
      *(v17 + 32) = v16;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v18 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      v20[2] = v15;
      v20[3] = a4;
      v20[4] = a5;
      v20[5] = a6;
      v20[6] = a3;
      v20[7] = a7;
      v20[8] = a8;
      aBlock[4] = sub_10036A4E4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629430;
      v21 = _Block_copy(aBlock);
      v22 = v15;
      sub_1000115CC(a4);
      v23 = a6;
      v24 = a3;

      [v38 addOrUpdateConversationLinkDescriptors:isa completion:v21];
      _Block_release(v21);

      return;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA5E0);
  v26 = a3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    v31 = [v26 pseudonym];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10002741C(v32, v34, aBlock);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Asked to set link name for pseudonym %s but none was found.", v29, 0xCu);
    sub_100009B7C(v30);
  }

  if (a4)
  {
    v36 = a2;
    if (!a2)
    {
      v37 = objc_allocWithZone(NSError);
      v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    a4(0, v36);
  }
}

void sub_10035B1C0(char a1, void *a2, void *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5E0);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v44 = a8;
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v18 = 136315138;
      v19 = [v15 pseudonym];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = a4;
      v23 = v22;

      v24 = sub_10002741C(v20, v23, &v45);
      a4 = v21;

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updated link name for pseudonym %s", v18, 0xCu);
      sub_100009B7C(v43);

      a8 = v44;
    }

    sub_100369990(a8, a9, a7);
    if (a4)
    {
      a4(a7, 0);
    }

    v25 = *(a6 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    sub_1003EFB64();
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000AF9C(v27, qword_1006BA5E0);
    v28 = a3;
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v31 = 136315394;
      v34 = [v28 pseudonym];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10002741C(v35, v37, &v45);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v31 + 14) = v39;
      *v32 = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saving link name for pseudonym %s failed with error %@", v31, 0x16u);
      sub_100009A04(v32, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v33);

      if (!a4)
      {
        return;
      }
    }

    else
    {

      if (!a4)
      {
        return;
      }
    }

    v41 = a2;
    if (!a2)
    {
      v42 = objc_allocWithZone(NSError);
      v41 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    a4(0, v41);
  }
}

void sub_10035B71C(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void, void))
{
  if ([a1 type] == 10 && objc_msgSend(a1, "hasLink"))
  {
    v7 = sub_1003DD48C(a1);
    if (v8 >> 60 != 15)
    {
      v9 = v7;
      v10 = v8;
      v11 = [objc_allocWithZone(CSDMessagingEncryptedConversationMessage) init];
      if (v11)
      {
        v12 = v11;
        v13 = [a2 publicKey];
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = objc_allocWithZone(type metadata accessor for LetMeInRequestorKeyAgreement());
        v39 = sub_1002BB864(v14, v16);
        v40 = sub_1002BC008(v9, v10);
        v42 = v41;
        v44 = v43;
        v46 = v45;

        isa = Data._bridgeToObjectiveC()().super.isa;
        [v12 setConversationMessageBytes:isa];

        v48 = Data._bridgeToObjectiveC()().super.isa;
        [v12 setPublicKey:v48];

        (a4)[2](a4, v12, v39, 0);
        sub_100290B6C(v9, v10);
        sub_100049B14(v44, v46);
        sub_100049B14(v40, v42);

LABEL_17:

        _Block_release(a4);
        return;
      }

      sub_100290B6C(v9, v10);
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA5E0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to retrieve the data bytes from the let me in request, or failed to init a CSDMessagingEncryptedConversationMessage", v35, 2u);
    }

    v36 = objc_allocWithZone(NSError);
    v37 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 7, 0);
    v38 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, 0, v38);

    goto LABEL_17;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5E0);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v22 = 136315394;
    [v19 type];
    type metadata accessor for CSDMessagingConversationMessageType(0);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, &v49);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    [v19 hasLink];
    v26 = String.init<A>(reflecting:)();
    v28 = sub_10002741C(v26, v27, &v49);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to encrypt let me in request because either the type was wrong (%s or missing the link (%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v29 = objc_allocWithZone(NSError);
  v30 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 7, 0);
  v31 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, 0, v31);

  _Block_release(a4);
}

void sub_10035C00C()
{
  sub_100005EF4();
  v80 = v0;
  v81 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SymmetricKey();
  v7 = sub_100007FEC(v6);
  v82 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_100007FDC();
  v12 = sub_10026D814(&qword_1006A6790, &qword_100581B48);
  v13 = sub_100007BF0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v79 - v17;
  v19 = type metadata accessor for ConversationLinkKeyAgreement();
  v20 = sub_100008070(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  if ([v5 type] != 16 || !objc_msgSend(v5, "hasLink") || !objc_msgSend(v5, "hasIsLetMeInApproved"))
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000075F0(v30, qword_1006BA5E0);
    v31 = v5;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_10;
    }

    v34 = sub_100005E84();
    v83[0] = swift_slowAlloc();
    *v34 = 136315650;
    v84 = [v31 type];
    type metadata accessor for CSDMessagingConversationMessageType(0);
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, v83);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    LOBYTE(v84) = [v31 hasLink] ^ 1;
    v38 = String.init<A>(reflecting:)();
    v40 = sub_10002741C(v38, v39, v83);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2080;
    LOBYTE(v84) = [v31 hasIsLetMeInApproved] ^ 1;
    v41 = String.init<A>(reflecting:)();
    v43 = sub_10002741C(v41, v42, v83);

    *(v34 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to encrypt let me in response because either the type was wrong (%s, missing the link %s, or approval was not specified (%s)", v34, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    goto LABEL_9;
  }

  v27 = v26;
  v28 = [v3 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = sub_10035E580();

  if (!v29)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000075F0(v50, qword_1006BA5E0);
    v32 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v51))
    {
      goto LABEL_10;
    }

    v52 = sub_100006DC4();
    sub_100008944(v52);
    sub_100008A90(&_mh_execute_header, v53, v54, "Failed to retrieve link");
LABEL_9:
    sub_100009ED0();

LABEL_10:

    goto LABEL_11;
  }

  v79 = v29;
  sub_1003DF994(v18);
  if (sub_100015468(v18, 1, v19) == 1)
  {
    sub_100009A04(v18, &qword_1006A6790, &qword_100581B48);
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000075F0(v44, qword_1006BA5E0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (sub_10000A648(v46))
    {
      v47 = sub_100006DC4();
      sub_100008944(v47);
      sub_100008A90(&_mh_execute_header, v48, v49, "Failed to initialize key agreement from link's private key, or private key is absent, aborting.");
      sub_100009ED0();
    }
  }

  else
  {
    sub_10036A424(v18, v27);
    sub_1003DD48C(v5);
    if (v55 >> 60 != 15)
    {
      sub_10000C130();
      v56 = [objc_allocWithZone(CSDMessagingEncryptedConversationMessage) init];
      if (v56)
      {
        v57 = v56;
        v83[0] = v80;
        v83[1] = v81;
        sub_100290AC4(v80, v81);
        SymmetricKey.init<A>(data:)();
        v58 = sub_100005334();
        v70 = sub_10039C6E0(v58, v59);
        v72 = v71;
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v57 setConversationMessageBytes:isa];
        v74 = sub_100005334();
        sub_100290B6C(v74, v75);

        sub_100049B14(v70, v72);
        v76 = *(v82 + 8);
        v77 = sub_10000B8B0();
        v78(v77);
        sub_10036A364(v27);
        goto LABEL_11;
      }

      v60 = sub_100005334();
      sub_100290B6C(v60, v61);
    }

    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000075F0(v62, qword_1006BA5E0);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = sub_100006DC4();
      *v65 = 0;
      sub_10000C1F8();
      _os_log_impl(v66, v67, v68, v69, v65, 2u);
      sub_100009ED0();
    }

    sub_10036A364(v27);
  }

LABEL_11:
  sub_100005EDC();
}

void sub_10035C968()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v13 = [v9 value];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = *(v1 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
  sub_1003F03A8();

  v18 = *(v1 + OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager);
  sub_1003D91DC(v11, v9, v7, v5, v3);
  sub_100005EDC();
}

void sub_10035CF84(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, unint64_t, id), uint64_t a8)
{
  v61 = a8;
  v62 = a7;
  v59[1] = a6;
  v60 = a3;
  v11 = type metadata accessor for SymmetricKey();
  v59[0] = *(v11 - 8);
  v12 = *(v59[0] + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = v59 - v18;
  v20 = sub_10026D814(&qword_1006A6790, &qword_100581B48);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = v59 - v23;
  v25 = type metadata accessor for ConversationLinkKeyAgreement();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v27);
  v29 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006BA5E0);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        v43 = v42;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      *(v40 + 4) = v42;
      *v41 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to retrieve link with error %@) triggering link recovery for LMI", v40, 0xCu);
      sub_100009A04(v41, &unk_1006A2630, &qword_10057CB40);
    }

    v44 = v62;
    sub_10035C968();
    v45 = objc_allocWithZone(NSError);
    v60 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    v44(0, 0, 0xF000000000000000, v60);
    v46 = v60;
  }

  else
  {
    v30 = a1;
    sub_1003DF994(v24);
    if (sub_100015468(v24, 1, v25) == 1)
    {
      sub_100009A04(v24, &qword_1006A6790, &qword_100581B48);
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000AF9C(v31, qword_1006BA5E0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to initialize key agreement from link's private key, or private key is absent, aborting.", v34, 2u);
      }

      v35 = objc_allocWithZone(NSError);
      v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 8, 0);
      v62(0, 0, 0xF000000000000000, v36);
    }

    else
    {
      sub_10036A424(v24, v29);
      sub_10039C97C(v16, a4);
      v48 = v47;
      (*(v59[0] + 32))(v19, v16, v11);
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000AF9C(v49, qword_1006BA5E0);
      v50 = v48;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v50;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "decryptedLetMeInRequest: %@", v53, 0xCu);
        sub_100009A04(v54, &unk_1006A2630, &qword_10057CB40);
      }

      v56 = v50;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v57 = v63;
      v58 = v64;
      v62(v50, v63, v64, 0);
      sub_100049B14(v57, v58);

      (*(v59[0] + 8))(v19, v11);
      sub_10036A364(v29);
    }
  }
}

void sub_10035D7F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, isa);
}

uint64_t sub_10035D8A0(void *a1)
{
  if (![a1 hasConversationMessageBytes])
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006BA5E0);
    v9 = a1;
    v3 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v10))
    {

      return 0;
    }

    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = [v9 hasPublicKey];
    *(v11 + 8) = 1024;
    *(v11 + 10) = [v9 hasConversationMessageBytes];

    sub_100008A6C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xEu);
    goto LABEL_11;
  }

  if (LetMeInRequestorKeyAgreement.isExhausted.getter())
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000075F0(v2, qword_1006BA5E0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v4))
    {
      goto LABEL_14;
    }

    v5 = sub_100006DC4();
    sub_100008944(v5);
    sub_100008A90(&_mh_execute_header, v6, v7, "Failed to decrypt let me in response because the requestor's key agreement has already been used to decrypt a response.");
LABEL_11:
    sub_100009ED0();

LABEL_14:

    return 0;
  }

  result = sub_1003699E8(a1);
  if (v18 >> 60 != 15)
  {
    v19 = result;
    v20 = v18;
    v21 = sub_1002BC560(result, v18);
    sub_100290B6C(v19, v20);
    return v21;
  }

  __break(1u);
  return result;
}

void sub_10035DB98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100581AB0;
  v9 = objc_opt_self();
  *(v8 + 32) = [v9 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 tu_predicateForConversationLinkDescriptorsWithPseudonym:v10];

  *(v8 + 40) = v11;
  v12 = [v9 tu_predicateForConversationLinkDescriptorsWithPrivateKey:0];
  v13 = [objc_opt_self() notPredicateWithSubpredicate:v12];

  *(v8 + 48) = v13;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  v14 = sub_10000C350();
  v15 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v39 = 0;
  v16 = [v15 conversationLinkDescriptorsWithPredicate:v14 limit:0 offset:0 error:&v39];
  v17 = v39;
  if (v16)
  {
    v18 = v16;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v17;

    if (sub_10000B6F4(v19))
    {
      sub_10039C390(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v19 + 32);
      }

      v22 = v21;

      v38 = sub_100364914(v22, a1);
      (a5)[2](a5, v38, 0);
    }

    else
    {

      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000AF9C(v31, qword_1006BA5E0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Cannot add invited member handles for pseudonym %%@ because no link matching this pseudonym was found", v34, 2u);
      }

      v35 = objc_allocWithZone(NSError);
      v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      v37 = _convertErrorToNSError(_:)();
      (a5)[2](a5, 0, v37);
    }
  }

  else
  {
    v23 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA5E0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to add invited member handles with error %@)", v27, 0xCu);
      sub_100009A04(v28, &unk_1006A2630, &qword_10057CB40);
    }

    swift_errorRetain();
    v30 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v30);
  }

  _Block_release(a5);
}

void sub_10035E1D0(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
  if (a1)
  {
    sub_1003EFEA4();
  }

  else
  {
    sub_1003EFC4C();
  }
}

void sub_10035E2F8(char a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a2 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
  sub_1003F63E0(a1);
  v5 = String._bridgeToObjectiveC()();
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_10035E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;
  v31 = v30;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10057DEC0;
  v33 = objc_opt_self();
  sub_10000B8B0();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 tu_predicateForConversationLinkDescriptorsWithPseudonym:v34];

  *(v32 + 32) = v35;
  *(v32 + 40) = [v33 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_100007694();
  v36 = sub_10000C350();
  v37 = *(v27 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v38 = swift_allocObject();
  *(v38 + 16) = v31;
  *(v38 + 24) = v29;
  a13 = sub_10036BE18;
  a14 = v38;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v39;
  a12 = &unk_100629390;
  v40 = _Block_copy(&a9);
  v41 = v36;
  sub_10000667C();

  sub_10000D494();
  [v42 v43];
  _Block_release(v40);

  sub_10036BED4();
}

id sub_10035E580()
{
  sub_10000E564();
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057DEC0;
  v2 = objc_opt_self();
  sub_10000B8B0();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 tu_predicateForConversationLinkDescriptorsWithPseudonym:v3];

  *(v1 + 32) = v4;
  *(v1 + 40) = [v2 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_100007694();
  v5 = sub_10000C350();
  v6 = *&v0[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_10000D494();
  v9 = [v7 v8];
  v10 = 0;
  if (v9)
  {
    v11 = v9;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = 0;

    if (sub_10000B6F4(v12))
    {
      sub_10039C390(0, (v12 & 0xC000000000000001) == 0, v12);
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v12 + 32);
      }

      v10 = v14;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v15 = 0;
    sub_10000C58C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

void sub_10035E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v30 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v32 = [v30 tu_predicateForConversationLinkDescriptorsWithGroupUUID:isa];

  v33 = *(v25 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = v27;
  a13 = sub_10036A498;
  a14 = v34;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v35;
  a12 = &unk_100629340;
  v36 = _Block_copy(&a9);
  v37 = v32;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v38 v39];
  _Block_release(v36);

  sub_10000B980();
}

void sub_10035E8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = objc_opt_self();
  sub_100006694();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 tu_predicateForConversationLinkDescriptorsWithPseudonym:v30];

  v32 = *(v22 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  *(v33 + 24) = v26;
  a13 = sub_10036BE18;
  a14 = v33;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v34;
  a12 = &unk_1006292F0;
  v35 = _Block_copy(&a9);
  v36 = v31;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v37 v38];
  _Block_release(v35);

  sub_10000B980();
}

void sub_10035E9CC()
{
  sub_10004A0D0();
  if (v1)
  {
    v2 = v1;
    v1 = sub_10000B6F4(v1);
    if (v1)
    {
      sub_10039C390(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v1 = *(v2 + 4);
      }
    }
  }

  v3 = v1;
  v0();
}

void sub_10035EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  sub_10004A0D0();
  v32 = objc_opt_self();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 tu_predicateForConversationLinkDescriptorsWithPseudonym:v33];

  v35 = *(v25 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  a13 = v31;
  a14 = v29;
  sub_10000A204();
  sub_100015220();
  a11 = v36;
  a12 = &unk_1006292A0;
  v37 = _Block_copy(&a9);

  [v35 removeConversationLinkDescriptorsWithPredicate:v34 deleteReason:v24 completion:v37];
  _Block_release(v37);

  sub_10036BED4();
}

void sub_10035EB60(unint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char *a6, void (**a7)(void, void, void), double a8)
{
  v120 = a5;
  v121 = a1;
  v119 = a4;
  v123 = a3;
  v124 = type metadata accessor for UUID();
  v122 = *(v124 - 8);
  v12 = *(v122 + 64);
  v14 = __chkstk_darwin(v124, v13);
  v117 = v15;
  v118 = &isa - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v114 = &isa - v17;
  v18 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &isa - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ConversationLinkKeyAgreement();
  v115 = *(v24 - 8);
  v25 = *(v115 + 64);
  v27 = __chkstk_darwin(v24 - 8, v26);
  v116 = &isa - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v30 = &isa - v29;
  v31 = swift_allocObject();
  v125 = a6;
  v126 = v31;
  *(v31 + 16) = a7;
  v33 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  v32 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement + 8];
  v34 = a7;
  _Block_copy(a7);

  v127 = v30;
  v33(v35);

  v36 = TUNormalizedHandleForTUHandle();
  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = v36;
  sub_10005104C(v36);
  if (!v38)
  {

LABEL_10:
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000AF9C(v49, qword_1006BA5E0);
    v50 = a2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "Cannot normalize value for originator handle %@", v53, 0xCu);
      sub_100009A04(v54, &unk_1006A2630, &qword_10057CB40);
    }

    v56 = objc_allocWithZone(NSError);
    v47 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 10, 0);
    v48 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v48);
    goto LABEL_15;
  }

  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v39 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v41 = v40;
  (*(v19 + 8))(v23, v18);
  if (v41 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000AF9C(v42, qword_1006BA5E0);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to generate publicKey compact representation for private key, was compactRepresentable set to true when initializing the private key?", v45, 2u);
    }

    v46 = objc_allocWithZone(NSError);
    v47 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
    v48 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v48);

LABEL_15:
    goto LABEL_16;
  }

  v113 = v39;
  v112 = a7;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_10000AF9C(v57, qword_1006BA5E0);
  v58 = v122;
  v59 = *(v122 + 16);
  v60 = v114;
  v61 = v124;
  v109 = v122 + 16;
  v108 = v59;
  v59(v114, v121, v124);
  v62 = v123;

  v63 = a2;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  v66 = os_log_type_enabled(v64, v65);
  v111 = v37;
  v110 = v41;
  if (v66)
  {
    v67 = v58;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock[0] = v107;
    *v68 = 136316162;
    sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
    isa = v64;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v60;
    v73 = v72;
    (*(v67 + 8))(v71, v61);
    v74 = sub_10002741C(v70, v73, aBlock);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2112;
    *(v68 + 14) = v63;
    *v69 = v63;
    *(v68 + 22) = 2080;
    v75 = v63;
    v76 = sub_10029147C(v62);
    LOBYTE(v67) = v65;
    v78 = sub_10002741C(v76, v77, aBlock);

    *(v68 + 24) = v78;
    *(v68 + 32) = 1024;
    *(v68 + 34) = v119 & 1;
    *(v68 + 38) = 2080;
    v61 = v124;
    v128 = v120;
    type metadata accessor for TUConversationLinkLifetimeScope(0);
    v79 = String.init<A>(reflecting:)();
    v81 = sub_10002741C(v79, v80, aBlock);

    *(v68 + 40) = v81;
    v82 = isa;
    _os_log_impl(&_mh_execute_header, isa, v67, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v68, 0x30u);
    sub_100009A04(v69, &unk_1006A2630, &qword_10057CB40);

    swift_arrayDestroy();
  }

  else
  {

    (*(v58 + 8))(v60, v61);
  }

  v107 = *&v125[OBJC_IVAR___CSDConversationLinkManager_service];
  v83 = v107;
  v114 = String._bridgeToObjectiveC()();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10057D690;
  v85 = [v83 name];
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  *(v84 + 32) = v86;
  *(v84 + 40) = v88;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v89 = v118;
  v108(v118, v121, v61);
  v90 = v116;
  sub_10036A3C0(v127, v116);
  v91 = v122;
  v92 = (*(v122 + 80) + 48) & ~*(v122 + 80);
  v121 = (v92 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + v117 + 31) & 0xFFFFFFFFFFFFFFF8;
  v94 = (*(v115 + 80) + v93 + 8) & ~*(v115 + 80);
  v95 = swift_allocObject();
  v96 = v125;
  v97 = v126;
  *(v95 + 2) = sub_10036BE20;
  *(v95 + 3) = v97;
  v98 = v111;
  *(v95 + 4) = v96;
  *(v95 + 5) = v98;
  (*(v91 + 32))(&v95[v92], v89, v124);
  v99 = &v95[v121];
  v100 = v110;
  *v99 = v113;
  *(v99 + 1) = v100;
  v99[16] = v119 & 1;
  *&v95[v93] = v123;
  sub_10036A424(v90, &v95[v94]);
  *&v95[(v25 + v94 + 7) & 0xFFFFFFFFFFFFFFF8] = v120;
  aBlock[4] = sub_10036BE90;
  aBlock[5] = v95;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A07DC;
  aBlock[3] = &unk_100629D68;
  v101 = _Block_copy(aBlock);

  v102 = v125;
  v48 = v98;
  v103 = v113;
  sub_1002EAE60(v113, v100);

  v104 = v114;
  v105 = isa;
  [v107 provisionPseudonymForHandle:v48 featureID:v114 scopeID:0 expiryDuration:isa allowedServices:v101 completionHandler:a8];
  _Block_release(v101);

  sub_100290B6C(v103, v100);
  v34 = v112;
LABEL_16:

  sub_10036A364(v127);

  _Block_release(v34);
}

uint64_t sub_10035F6CC(unint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char *a6, double a7)
{
  v111 = a5;
  v112 = a1;
  v110 = a4;
  v114 = a3;
  v113 = type metadata accessor for UUID();
  v115 = *(v113 - 8);
  v10 = *(v115 + 64);
  v12 = __chkstk_darwin(v113, v11);
  v109 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v98 - v14;
  v16 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ConversationLinkKeyAgreement();
  v107 = *(v22 - 8);
  v23 = *(v107 + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v108 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v28 = &v98 - v27;
  v116 = a6;
  v30 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  v29 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement + 8];

  v117 = v28;
  v30(v31);

  v32 = TUNormalizedHandleForTUHandle();
  if (v32)
  {
    v33 = v32;
    sub_10005104C(v32);
    if (v34)
    {

      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v35 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v37 = v36;
      (*(v17 + 8))(v21, v16);
      if (v37 >> 60 == 15)
      {
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_10000AF9C(v38, qword_1006BA5E0);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Unable to generate publicKey compact representation for private key, was compactRepresentable set to true when initializing the private key?", v41, 2u);
        }

        v42 = objc_allocWithZone(NSError);
        v43 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
        sub_100356130(0, v43);
      }

      else
      {
        v105 = v37;
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v102 = v33;
        v52 = type metadata accessor for Logger();
        sub_10000AF9C(v52, qword_1006BA5E0);
        v53 = *(v115 + 16);
        v54 = v113;
        v104 = v115 + 16;
        v103 = v53;
        v53(v15, v112, v113);
        v55 = v114;

        v56 = a2;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v59 = os_log_type_enabled(v57, v58);
        v106 = v35;
        if (v59)
        {
          v60 = swift_slowAlloc();
          LODWORD(v100) = v58;
          v61 = v60;
          v62 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          aBlock[0] = v101;
          *v61 = 136316162;
          sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = v54;
          v66 = v65;
          (*(v115 + 8))(v15, v64);
          v67 = sub_10002741C(v63, v66, aBlock);

          *(v61 + 4) = v67;
          *(v61 + 12) = 2112;
          *(v61 + 14) = v56;
          *v62 = v56;
          *(v61 + 22) = 2080;
          v68 = v56;
          v69 = sub_10029147C(v55);
          v71 = sub_10002741C(v69, v70, aBlock);

          *(v61 + 24) = v71;
          *(v61 + 32) = 1024;
          *(v61 + 34) = v110 & 1;
          *(v61 + 38) = 2080;
          v118 = v111;
          type metadata accessor for TUConversationLinkLifetimeScope(0);
          v72 = String.init<A>(reflecting:)();
          v74 = sub_10002741C(v72, v73, aBlock);

          *(v61 + 40) = v74;
          _os_log_impl(&_mh_execute_header, v57, v100, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v61, 0x30u);
          sub_100009A04(v62, &unk_1006A2630, &qword_10057CB40);

          swift_arrayDestroy();
        }

        else
        {

          (*(v115 + 8))(v15, v54);
        }

        v100 = *&v116[OBJC_IVAR___CSDConversationLinkManager_service];
        v75 = v100;
        v101 = String._bridgeToObjectiveC()();
        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_10057D690;
        v77 = [v75 name];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        *(v76 + 32) = v78;
        *(v76 + 40) = v80;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v81 = v109;
        v82 = v113;
        v103(v109, v112, v113);
        v83 = v108;
        sub_10036A3C0(v117, v108);
        v84 = v115;
        v85 = (*(v115 + 80) + 48) & ~*(v115 + 80);
        v112 = (v85 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v86 = (v85 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
        v87 = (*(v107 + 80) + v86 + 8) & ~*(v107 + 80);
        v88 = swift_allocObject();
        *(v88 + 2) = sub_100356130;
        *(v88 + 3) = 0;
        v89 = v102;
        *(v88 + 4) = v116;
        *(v88 + 5) = v89;
        (*(v84 + 32))(&v88[v85], v81, v82);
        v90 = &v88[v112];
        v91 = v106;
        v92 = v105;
        *v90 = v106;
        *(v90 + 1) = v92;
        v90[16] = v110 & 1;
        *&v88[v86] = v114;
        sub_10036A424(v83, &v88[v87]);
        *&v88[(v23 + v87 + 7) & 0xFFFFFFFFFFFFFFF8] = v111;
        aBlock[4] = sub_10036BE90;
        aBlock[5] = v88;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002A07DC;
        aBlock[3] = &unk_100629840;
        v93 = _Block_copy(aBlock);

        v94 = v116;
        v43 = v89;
        sub_1002EAE60(v91, v92);

        v95 = v101;
        v96 = isa;
        [v100 provisionPseudonymForHandle:v43 featureID:v101 scopeID:0 expiryDuration:isa allowedServices:v93 completionHandler:a7];
        _Block_release(v93);

        sub_100290B6C(v91, v92);
      }

      goto LABEL_21;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000AF9C(v44, qword_1006BA5E0);
  v45 = a2;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "Cannot normalize value for originator handle %@", v48, 0xCu);
    sub_100009A04(v49, &unk_1006A2630, &qword_10057CB40);
  }

  v51 = objc_allocWithZone(NSError);
  v43 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 10, 0);
  sub_100356130(0, v43);
LABEL_21:

  return sub_10036A364(v117);
}

uint64_t sub_100360184(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, double a8)
{
  v144 = a6;
  v145 = a7;
  v138 = a5;
  v139 = a1;
  v137 = a4;
  v141 = a3;
  v140 = type metadata accessor for UUID();
  v12 = sub_100007FEC(v140);
  v142 = v13;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v12, v16);
  v136 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v125 - v19;
  v21 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  sub_100007FDC();
  v30 = v29 - v28;
  v31 = type metadata accessor for ConversationLinkKeyAgreement();
  v32 = sub_100005EB4(v31);
  v134 = v33;
  v35 = *(v34 + 64);
  v37 = __chkstk_darwin(v32, v36);
  v135 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  sub_10000BB28();
  v143 = v8;
  v40 = *&v8[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  v39 = *&v8[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement + 8];

  v146 = v9;
  v40(v41);

  v42 = TUNormalizedHandleForTUHandle();
  if (v42)
  {
    v43 = v42;
    sub_10005104C(v42);
    if (v44)
    {

      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v45 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v47 = v46;
      (*(v24 + 8))(v30, v21);
      if (v47 >> 60 == 15)
      {
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_1000075F0(v48, qword_1006BA5E0);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (sub_10000A648(v50))
        {
          *sub_100006DC4() = 0;
          sub_100008A6C();
          _os_log_impl(v51, v52, v53, v54, v55, 2u);
          sub_100009ED0();
        }

        v56 = objc_allocWithZone(NSError);
        v57 = sub_1000162D8();
        v59 = sub_100323698(v57, v58, 0, 0);
        v60 = sub_10036BEA8();
        v144(v60);
      }

      else
      {
        v132 = v47;
        v133 = v45;
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        sub_1000075F0(v78, qword_1006BA5E0);
        v79 = *(v142 + 16);
        v80 = v140;
        v130 = v142 + 16;
        v129 = v79;
        v79(v20, v139, v140);
        v81 = v141;

        v82 = a2;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();

        v85 = os_log_type_enabled(v83, v84);
        v131 = v43;
        if (v85)
        {
          swift_slowAlloc();
          LODWORD(v127) = v84;
          sub_100015FDC();
          v86 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          aBlock[0] = v128;
          *v84 = 136316162;
          sub_100017230();
          sub_100369F50(v87, v88);
          isa = v83;
          dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v80;
          sub_10000A224();
          (*(v142 + 8))(v20, v80);
          v90 = sub_100006B30();
          v93 = sub_10002741C(v90, v91, v92);

          *(v84 + 4) = v93;
          *(v84 + 12) = 2112;
          *(v84 + 14) = v82;
          *v86 = v82;
          *(v84 + 22) = 2080;
          v94 = v82;
          v95 = sub_10029147C(v81);
          sub_10002741C(v95, v96, aBlock);
          sub_10000667C();

          *(v84 + 24) = v20;
          *(v84 + 32) = 1024;
          *(v84 + 34) = v137 & 1;
          *(v84 + 38) = 2080;
          v147 = v138;
          type metadata accessor for TUConversationLinkLifetimeScope(0);
          v97 = String.init<A>(reflecting:)();
          sub_10002741C(v97, v98, aBlock);
          sub_10000667C();

          *(v84 + 40) = v20;
          v99 = isa;
          _os_log_impl(&_mh_execute_header, isa, v127, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v84, 0x30u);
          sub_100009A04(v86, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          swift_arrayDestroy();
          sub_100009ED0();

          sub_10000EA64();
        }

        else
        {

          (*(v142 + 8))(v20, v80);
          v89 = v80;
        }

        v127 = *&v143[OBJC_IVAR___CSDConversationLinkManager_service];
        v100 = v127;
        v128 = String._bridgeToObjectiveC()();
        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        sub_100008BA8();
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_10057D690;
        v102 = [v100 name];
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        *(v101 + 32) = v103;
        *(v101 + 40) = v105;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v106 = v136;
        v129(v136, v139, v89);
        v107 = v135;
        sub_10036A3C0(v146, v135);
        v108 = v142;
        v109 = (*(v142 + 80) + 48) & ~*(v142 + 80);
        v110 = (v109 + v15 + 31) & 0xFFFFFFFFFFFFFFF8;
        v111 = (*(v134 + 80) + v110 + 8) & ~*(v134 + 80);
        v112 = swift_allocObject();
        v113 = v145;
        *(v112 + 2) = v144;
        *(v112 + 3) = v113;
        v114 = v108;
        v115 = v131;
        *(v112 + 4) = v143;
        *(v112 + 5) = v115;
        (*(v114 + 32))(&v112[v109], v106, v140);
        v116 = &v112[(v109 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
        v117 = v132;
        *v116 = v133;
        *(v116 + 1) = v117;
        v116[16] = v137 & 1;
        *&v112[v110] = v141;
        sub_10036A424(v107, &v112[v111]);
        *&v112[(v35 + v111 + 7) & 0xFFFFFFFFFFFFFFF8] = v138;
        aBlock[4] = sub_10036A488;
        aBlock[5] = v112;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002A07DC;
        aBlock[3] = &unk_100629228;
        v118 = _Block_copy(aBlock);

        v119 = v143;
        v59 = v115;
        v120 = v133;
        v121 = v132;
        sub_1002EAE60(v133, v132);

        v122 = v128;
        v123 = isa;
        [v127 provisionPseudonymForHandle:v59 featureID:v128 scopeID:0 expiryDuration:isa allowedServices:v118 completionHandler:a8];
        _Block_release(v118);

        sub_100290B6C(v120, v121);
      }

      goto LABEL_21;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000075F0(v61, qword_1006BA5E0);
  v62 = a2;
  v63 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v64 = sub_10003FB78();
  if (os_log_type_enabled(v64, v65))
  {
    sub_100007BFC();
    swift_slowAlloc();
    sub_100015FDC();
    v66 = swift_slowAlloc();
    *a2 = 138412290;
    *(a2 + 1) = v62;
    *v66 = v62;
    v67 = v62;
    sub_10000D368();
    _os_log_impl(v68, v69, v70, v71, v72, v73);
    sub_100009A04(v66, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_10000EA64();
  }

  v74 = objc_allocWithZone(NSError);
  v75 = sub_1000162D8();
  v59 = sub_100323698(v75, v76, 10, 0);
  v77 = sub_10036BEA8();
  v144(v77);
LABEL_21:

  return sub_10036A364(v146);
}

void sub_100360B7C(void *a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, char *a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v90 = a7;
  v91 = a8;
  v89 = a6;
  v94 = a5;
  v95 = a1;
  v96 = a3;
  v97 = a4;
  v92 = a12;
  v93 = a13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA5E0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to provision pseudonym with error from IDS: %@)", v29, 0xCu);
      sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);
    }

    swift_errorRetain();
    v96(0, a2);
  }

  else
  {
    v84 = a9;
    v85 = a10;
    v86 = v19;
    v87 = v15;
    v88 = a11;
    v32 = v95;
    if (v95)
    {
      sub_100006AF0(0, &unk_1006A6780, TUConversationLinkOriginator_ptr);
      v33 = v89;
      v34 = v32;
      v35 = sub_100353E3C(v33);
      (*(v21 + 16))(v25, v90, v20);
      v36 = v35;
      v37 = [v34 URI];
      v38 = [v37 prefixedURI];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
      v43 = v91;
      v44 = v84;
      sub_100290AC4(v91, v84);
      v45 = v25;
      v46 = v34;
      v47 = sub_1003F7684(v45, v36, v39, v41, v43, v44);
      [v47 setActivated:v85 & 1];
      v48 = v86;
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v50 = *(v87 + 8);
      v50(v48, v14);
      [v47 setCreationDate:isa];

      v51 = [v34 properties];
      v52 = [v51 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = Date._bridgeToObjectiveC()().super.isa;
      v50(v48, v14);
      [v47 setExpirationDate:v53];

      if (v88)
      {
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
        v54.super.isa = Set._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v54.super.isa = 0;
      }

      v61 = v93;
      v62 = v94;
      [v47 setInvitedHandles:v54.super.isa];

      v63 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
      sub_100369A44(v63, v64, v47);
      [v47 setLinkLifetimeScope:v61];
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_10000AF9C(v65, qword_1006BA5E0);
      v66 = v46;
      v67 = v47;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412546;
        *(v70 + 4) = v66;
        *(v70 + 12) = 2112;
        *(v70 + 14) = v67;
        *v71 = v95;
        v71[1] = v67;
        v72 = v66;
        v73 = v67;
        _os_log_impl(&_mh_execute_header, v68, v69, "Successfully provisioned pseudonym %@ and link descriptor %@", v70, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
      }

      v74 = *&v62[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_10057CA80;
      *(v75 + 32) = v67;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v76 = v67;
      v77 = Array._bridgeToObjectiveC()().super.isa;

      v78 = swift_allocObject();
      v79 = v97;
      v78[2] = v96;
      v78[3] = v79;
      v78[4] = v76;
      v78[5] = v62;
      aBlock[4] = sub_10036A48C;
      aBlock[5] = v78;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629278;
      v80 = _Block_copy(aBlock);
      v81 = v76;

      v82 = v62;

      [v74 addConversationLinkDescriptors:v77 completion:v80];
      _Block_release(v80);
    }

    else
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000AF9C(v55, qword_1006BA5E0);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to provision pseudonym with error from IDS, pseudonym was nil", v58, 2u);
      }

      v59 = objc_allocWithZone(NSError);
      v95 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
      v96(0, v95);
      v60 = v95;
    }
  }
}

uint64_t sub_1003614A0(char a1, uint64_t a2, uint64_t (*a3)(id, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    return a3(0, a2);
  }

  v9 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:a5];
  a3(v9, a2);

  v10 = *(a6 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
  return sub_1003EFB64();
}

uint64_t sub_10036153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100361560, 0, 0);
}

uint64_t sub_100361560()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = type metadata accessor for Date();
  *v6 = v0;
  v6[1] = sub_10036166C;
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001ALL, 0x800000010056E2B0, sub_10036A1D0, v4, v7);
}

uint64_t sub_10036166C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  sub_100008060();
  *v4 = v3;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003617A0, 0, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1003617A0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_10036198C(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v47 = a5;
  v44 = a3;
  v45 = a4;
  v48 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48, v10);
  v12 = v43 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v18 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = v43 - v20;
  if (a1)
  {
    v45 = v8;
    v22 = a1;
    if (sub_100362588(v22))
    {
      static Date.now.getter();
      v43[1] = a6;
      [*(a6 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkRenewalExtensionTime];
      Date.addingTimeInterval(_:)();
      v23 = *(v14 + 8);
      v44 = v14 + 8;
      v46 = v23;
      (v23)(v18, v13);
      v24 = v45;
      (*(v45 + 16))(v12, v47, v48);
      (*(v14 + 16))(v18, v21, v13);
      v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v26 = (v9 + *(v14 + 80) + v25) & ~*(v14 + 80);
      v27 = swift_allocObject();
      (*(v24 + 32))(v27 + v25, v12, v48);
      (*(v14 + 32))(v27 + v26, v18, v13);
      sub_100362958(v22, v21, sub_10036A280, v27);

      (v46)(v21, v13);
    }

    else
    {
      if (v46)
      {
        v39 = v46;
      }

      else
      {
        v40 = objc_allocWithZone(NSError);
        v39 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 15, 0);
      }

      v49 = v39;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v29 = v44;
    v28 = v45;
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5E0);
    v31 = v46;
    swift_errorRetain();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_10002741C(v29, v28, &v49);
      *(v34 + 12) = 2112;
      if (v31)
      {
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v34 + 14) = v37;
      *v35 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Asked to renew link for pseudonym %s but none was found %@", v34, 0x16u);
      sub_100009A04(v35, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v36);
    }

    v41 = v31;
    if (!v31)
    {
      v42 = objc_allocWithZone(NSError);
      v41 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    v49 = v41;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100361EBC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA5E0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = a2;
      v27 = v17;
      *v16 = 136315138;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v18 = String.init<A>(reflecting:)();
      v20 = sub_10002741C(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Renewing pseudonym failed with error %s", v16, 0xCu);
      sub_100009B7C(v17);
    }

    v27 = a2;
    sub_10026D814(&qword_1006A6778, &unk_100581B38);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA5E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v23, v24, "Renewing pseudonym succeeded %{BOOL}d", v25, 8u);
    }

    (*(v8 + 16))(v12, a4, v7);
    sub_10026D814(&qword_1006A6778, &unk_100581B38);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100362288(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Date();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v3[7] = v11;
  a3;
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_1003623D0;

  return sub_10036153C(v9, v10, v12);
}

uint64_t sub_1003623D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 16);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100010264();

    isa = 0;
    v9 = v4;
  }

  else
  {
    v11 = v2[4];
    v10 = v2[5];
    v12 = v2[3];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v10, v12);
    v4 = 0;
    v9 = isa;
  }

  v13 = v2[6];
  (v13)[2](v13, isa, v4);

  _Block_release(v13);

  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_100362588(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v11 = [a1 expirationDate];
  if (!v11)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000075F0(v23, qword_1006BA5E0);
    v24 = a1;
    v25 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v26 = sub_10003FB78();
    if (os_log_type_enabled(v26, v27))
    {
      sub_100007BFC();
      v28 = swift_slowAlloc();
      sub_100015DC0();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v24;
      *v29 = v24;
      v30 = v24;
      sub_100008A6C();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_100009A04(v29, &unk_1006A2630, &qword_10057CB40);
      sub_10000EA64();

      sub_100009ED0();
    }

    return 0;
  }

  v12 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  if (v13 < 0.0)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000075F0(v14, qword_1006BA5E0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!sub_10000D654(v16))
    {
      goto LABEL_18;
    }

    v17 = sub_100006DC4();
    sub_10000D6E8(v17);
    sub_1000079AC();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
LABEL_17:
    sub_100009ED0();

LABEL_18:

    v49 = *(v7 + 8);
    v50 = sub_100006884();
    v51(v50);
    return 0;
  }

  v36 = sub_1003F7AA0(a1);
  if (v37 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000075F0(v38, qword_1006BA5E0);
    v39 = a1;
    v15 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v15, v40))
    {
      goto LABEL_18;
    }

    sub_100007BFC();
    v41 = swift_slowAlloc();
    sub_100015DC0();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v39;
    *v42 = v39;
    v43 = v39;
    sub_100006BC4();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    sub_100009A04(v42, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    goto LABEL_17;
  }

  sub_100290B6C(v36, v37);
  result = Date.timeIntervalSinceNow.getter();
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v53 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v53 < 1.84467441e19)
  {
    v54 = v53;
    v55 = [*(v2 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkRemainingTimeBeforeAutoRenewal];
    v56 = *(v7 + 8);
    v57 = sub_100006884();
    v58(v57);
    return v55 > v54;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100362958(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  v169 = a2;
  v8 = type metadata accessor for DispatchTime();
  v9 = sub_100007FEC(v8);
  v168 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007BAC();
  v166 = v14 - v15;
  sub_100006838();
  __chkstk_darwin(v16, v17);
  v167 = &v151 - v18;
  v164 = type metadata accessor for DispatchWorkItemFlags();
  v19 = sub_100008070(v164);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100007FDC();
  v165 = v24 - v23;
  v25 = type metadata accessor for Date();
  v26 = sub_100007FEC(v25);
  v162 = v27;
  v163 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26, v30);
  v160 = v31;
  v161 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B20 != -1)
  {
LABEL_54:
    sub_10000854C();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000075F0(v32, qword_1006BA5E0);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    sub_100007BFC();
    v36 = swift_slowAlloc();
    sub_100015DC0();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Asking to renew pseudonym for %@", v36, 0xCu);
    sub_100009A04(v37, &unk_1006A2630, &qword_10057CB40);
    sub_10000EA64();

    sub_100009ED0();
  }

  [v33 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    v158 = v4;
    v156 = v8;
    v159 = v178;
    v157 = v33;
    v39 = [v33 originator];
    v40 = [v39 identifier];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = *&v170[OBJC_IVAR___CSDConversationLinkManager_service];
    v8 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
    v45 = [v44 localDeviceUniqueID];
    if (v45)
    {
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      if (v41 == v47 && v43 == v49)
      {

LABEL_35:
        v94 = v170;
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.default.getter();

        v97 = sub_10003A5B4();
        if (os_log_type_enabled(v97, v98))
        {
          v155 = a4;
          sub_100007BFC();
          v99 = swift_slowAlloc();
          v100 = sub_100005E84();
          aBlock = v100;
          *v99 = 136315138;
          v101 = [v44 localDeviceUniqueID];
          if (v101)
          {
            v102 = v101;
            v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          sub_10001E478(v103, v105);
          sub_10000C130();

          v138 = sub_100005334();
          v141 = sub_10002741C(v138, v139, v140);

          *(v99 + 4) = v141;
          _os_log_impl(&_mh_execute_header, v95, v96, "The local device (%s) generated this link, sending renew request now.", v99, 0xCu);
          sub_100009B7C(v100);
          sub_100009ED0();

          sub_100009ED0();

          a4 = v155;
        }

        else
        {
        }

        v142 = v157;
        v143 = [v157 pseudonym];
        if (!v143)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = String._bridgeToObjectiveC()();
        }

        isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100015D0C();
        v145 = swift_allocObject();
        *(v145 + 2) = a3;
        *(v145 + 3) = a4;
        v146 = v159;
        *(v145 + 4) = v159;
        *(v145 + 5) = v94;
        *(v145 + 6) = v142;
        v176 = sub_100369F94;
        v177 = v145;
        sub_100006028();
        v173 = 1107296256;
        v174 = sub_100363A5C;
        v175 = &unk_100629070;
        v147 = _Block_copy(&aBlock);
        v148 = v142;
        v149 = v94;
        sub_1000115CC(a3);
        v150 = v146;

        [v44 renewPseudonymString:v143 expirationDate:isa completionHandler:v147];
        _Block_release(v147);

        return;
      }

      sub_100008DB8();
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v66 = [v44 localDeviceUniqueID];
    if (v66)
    {
      v67 = v66;
      v155 = a4;
      v154 = a3;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      sub_100008BA8();
      a4 = swift_allocObject();
      *(a4 + 16) = xmmword_10057D690;
      v152 = v68;
      *(a4 + 32) = v68;
      *(a4 + 40) = v70;
      v153 = v70;

      v71 = [v44 devices];
      sub_100006AF0(0, &qword_1006A4470, IDSDevice_ptr);
      a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      a3 = sub_10000B6F4(a1);
      v72 = 0;
      v171 = a1 & 0xC000000000000001;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      while (a3 != v72)
      {
        if (v171)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v72 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v73 = *(a1 + 8 * v72 + 32);
        }

        v74 = v73;
        if (__OFADD__(v72, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v75 = sub_1003698E0(v73, &selRef_uniqueID);
        if (!v76)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v77 = v75;
        v78 = v76;
        v8 = *(a4 + 16);
        if (v8 >= *(a4 + 24) >> 1)
        {
          sub_100017840();
          a4 = v80;
        }

        *(a4 + 16) = v8 + 1;
        v79 = a4 + 16 * v8;
        *(v79 + 32) = v77;
        *(v79 + 40) = v78;
        ++v72;
      }

      aBlock = a4;

      sub_1003686C0(&aBlock);

      v81 = sub_1003C970C(v152, v153, aBlock);
      v83 = v82;

      v84 = v154;
      if ((v83 & 1) == 0)
      {
        v115 = v162;
        v114 = v163;
        v116 = *(v162 + 16);
        v171 = v81;
        v117 = v161;
        v116(v161, v169, v163);
        v118 = (*(v115 + 80) + 56) & ~*(v115 + 80);
        v119 = swift_allocObject();
        v120 = v170;
        v121 = v159;
        *(v119 + 2) = v170;
        *(v119 + 3) = v121;
        v122 = v157;
        *(v119 + 4) = v157;
        *(v119 + 5) = v84;
        *(v119 + 6) = v155;
        (*(v115 + 32))(&v119[v118], v117, v114);
        v176 = sub_100369EE8;
        v177 = v119;
        sub_100006028();
        v173 = 1107296256;
        v174 = sub_100004CEC;
        v175 = &unk_100629020;
        _Block_copy(&aBlock);
        v178 = _swiftEmptyArrayStorage;
        v123 = v122;
        v124 = v120;
        v125 = sub_10000C58C();
        sub_1000115CC(v125);
        sub_100369F50(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
        v126 = v121;
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v127 = type metadata accessor for DispatchWorkItem();
        v128 = *(v127 + 48);
        v129 = *(v127 + 52);
        swift_allocObject();
        v130 = DispatchWorkItem.init(flags:block:)();

        v131 = *&v122[OBJC_IVAR___CSDConversationLinkManager_renewPseudonymTask];
        *&v122[OBJC_IVAR___CSDConversationLinkManager_renewPseudonymTask] = v130;

        sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
        v132 = static OS_dispatch_queue.main.getter();
        v133 = v166;
        static DispatchTime.now()();
        v134 = v167;
        + infix(_:_:)();
        v135 = *(v168 + 8);
        v136 = v133;
        v137 = v156;
        v135(v136, v156);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v135(v134, v137);
        return;
      }

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (sub_10000A648(v86))
      {
        v87 = sub_100006DC4();
        sub_100008944(v87);
        sub_100008A90(&_mh_execute_header, v88, v89, "Could not find index of our own uniqueID, aborting...");
        sub_100009ED0();
      }

      if (v84)
      {
        v90 = objc_allocWithZone(NSError);
        v91 = sub_1000162D8();
        v93 = sub_100323698(v91, v92, 9, 0);
        v84(0, v93);
        goto LABEL_43;
      }
    }

    else
    {
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (sub_10000A648(v107))
      {
        v108 = sub_100006DC4();
        sub_100008944(v108);
        sub_100008A90(&_mh_execute_header, v109, v110, "No IDS unique ID found, cannot schedule renew.");
        sub_100009ED0();
      }

      if (a3)
      {
        v111 = objc_allocWithZone(NSError);
        v112 = sub_1000162D8();
        v93 = sub_100323698(v112, v113, 9, 0);
        a3(0, v93);
LABEL_43:
      }
    }
  }

  else
  {
    v52 = v33;
    v53 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v54 = sub_10003FB78();
    if (os_log_type_enabled(v54, v55))
    {
      sub_100007BFC();
      v56 = swift_slowAlloc();
      sub_100015DC0();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v52;
      *v57 = v52;
      v58 = v52;
      sub_100008A6C();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      sub_100009A04(v57, &unk_1006A2630, &qword_10057CB40);
      sub_10000EA64();

      sub_100009ED0();
    }

    if (a3)
    {
      sub_100369E94();
      v64 = swift_allocError();
      *v65 = 3;
      a3(0, v64);
    }
  }
}

uint64_t sub_100363654(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, objc_class *a6, char *a7, void *a8)
{
  v47 = a8;
  v48 = a7;
  v46 = a6;
  v50 = a5;
  v51 = a4;
  LODWORD(v49) = a1;
  v10 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v20 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v23 = &v44 - v22;
  sub_100285FC4(a2, v14, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    result = sub_100009A04(v14, &qword_1006A3C70, &unk_10057EA80);
  }

  else
  {
    v25 = *(v16 + 32);
    v25(v23, v14, v15);
    if (!a3)
    {
      v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v45 = v25;
      isa = v26.super.isa;
      v28 = v46;
      [(objc_class *)v46 setExpirationDate:v26.super.isa];

      sub_1003540EC();
      [(objc_class *)v28 setDeletionDate:0];
      v49 = *&v48[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057CA80;
      *(v29 + 32) = v28;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v30 = v28;
      v46 = Array._bridgeToObjectiveC()().super.isa;

      (*(v16 + 16))(v20, v23, v15);
      v31 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v32 = (v17 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v47;
      v45(v34 + v31, v20, v15);
      v36 = (v34 + v32);
      v37 = v50;
      v38 = v51;
      *v36 = v51;
      v36[1] = v37;
      v39 = v48;
      *(v34 + v33) = v48;
      aBlock[4] = sub_100369FA4;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_1006290C0;
      v40 = _Block_copy(aBlock);
      v41 = v35;
      sub_1000115CC(v38);
      v42 = v39;

      v43 = v46;
      [v49 addOrUpdateConversationLinkDescriptors:v46 completion:v40];
      _Block_release(v40);

      return (*(v16 + 8))(v23, v15);
    }

    result = (*(v16 + 8))(v23, v15);
  }

  if (v51)
  {
    return v51(v49 & 1, a3);
  }

  return result;
}

uint64_t sub_100363A5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v19 - v11;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for Date();
    v16 = 0;
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = 1;
  }

  sub_10000AF74(v12, v16, 1, v15);

  v17 = a4;
  v14(a2, v12, a4);

  return sub_100009A04(v12, &qword_1006A3C70, &unk_10057EA80);
}

void sub_100363D2C(void *a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5, char *a6)
{
  if (a1 && ([a1 mutableCopy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v28;
    v11 = *&a6[OBJC_IVAR___CSDConversationLinkManager_service];
    v12 = [v28 pseudonym];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = v10;
    v14[5] = a6;
    aBlock[4] = sub_10036A028;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100363A5C;
    aBlock[3] = &unk_100629138;
    v15 = _Block_copy(aBlock);
    sub_1000115CC(a4);
    v16 = v10;
    v17 = a6;

    [v11 renewPseudonymString:v12 expirationDate:isa completionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA5E0);
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create mutable descriptor for descriptor %@", v22, 0xCu);
      sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
    }

    if (a4)
    {
      sub_100369E94();
      v25 = swift_allocError();
      *v26 = 3;
      a4(0, v25);
    }
  }
}

uint64_t sub_100364060(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, objc_class *a6, char *a7)
{
  v48 = a6;
  v49 = a7;
  v51 = a4;
  LODWORD(v50) = a1;
  v10 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v44 - v21;
  sub_100285FC4(a2, v14, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    result = sub_100009A04(v14, &qword_1006A3C70, &unk_10057EA80);
  }

  else
  {
    v46 = a5;
    v24 = *(v16 + 32);
    v24(v22, v14, v15);
    if (!a3)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v26 = v48;
      [(objc_class *)v48 setExpirationDate:isa];

      sub_1003540EC();
      v50 = *&v49[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10057CA80;
      *(v27 + 32) = v26;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v28 = v26;
      v48 = Array._bridgeToObjectiveC()().super.isa;

      v29 = v16;
      v45 = v16;
      v30 = *(v16 + 16);
      v31 = v47;
      v30(v47, v22, v15);
      v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v33 = (v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v28;
      v24((v35 + v32), v31, v15);
      v36 = (v35 + v33);
      v37 = v51;
      v38 = v46;
      *v36 = v51;
      v36[1] = v38;
      v39 = v49;
      *(v35 + v34) = v49;
      aBlock[4] = sub_10036A11C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629188;
      v40 = _Block_copy(aBlock);
      v41 = v28;
      sub_1000115CC(v37);
      v42 = v39;

      v43 = v48;
      [v50 addOrUpdateConversationLinkDescriptors:v48 completion:v40];
      _Block_release(v40);

      return (*(v45 + 8))(v22, v15);
    }

    result = (*(v16 + 8))(v22, v15);
  }

  if (v51)
  {
    return v51(v50 & 1, a3);
  }

  return result;
}

void sub_10036446C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v61 = v10;
  v12 = v11;
  v13 = type metadata accessor for Date();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v60 = v12;
  if ((v12 & 1) == 0)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000075F0(v40, qword_1006BA5E0);
    v41 = v9;
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = sub_10003A5B4();
    if (os_log_type_enabled(v44, v45))
    {
      v59 = v5;
      v57 = v3;
      v46 = sub_100007C08();
      sub_100015DC0();
      v47 = swift_slowAlloc();
      v48 = sub_100005E84();
      v62 = v48;
      *v46 = 136315394;
      v49 = [v41 pseudonym];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_10002741C(v50, v52, &v62);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2112;
      if (v61)
      {
        swift_errorRetain();
        v54 = _swift_stdlib_bridgeErrorToNSError();
        v55 = v54;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      v3 = v57;
      v5 = v59;
      *(v46 + 14) = v54;
      *v47 = v55;
      _os_log_impl(&_mh_execute_header, v42, v43, v1, v46, 0x16u);
      sub_100009A04(v47, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009B7C(v48);
      sub_100009ED0();

      sub_100018250();

      if (!v59)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!v5)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    v5(v60 & 1, v61);
    goto LABEL_19;
  }

  v58 = v5;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA5E0);
  (*(v16 + 16))(v22, v7, v13);
  v24 = v9;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_100007C08();
    v62 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = [v24 pseudonym];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v3;
    v32 = v31;

    v33 = sub_10002741C(v29, v32, &v62);
    v3 = v30;

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    sub_10002F654();
    sub_100369F50(v34, v35);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v16 + 8))(v22, v13);
    v39 = sub_10002741C(v36, v38, &v62);

    *(v27 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v25, v26, "Updated expiration date for pseudonym %s to %s", v27, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    (*(v16 + 8))(v22, v13);
  }

  v5 = v58;
  if (v58)
  {
    goto LABEL_18;
  }

LABEL_19:
  v56 = *(v3 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
  sub_1003EFB64();
  sub_100005EDC();
}

id sub_100364914(_DWORD *a1, unint64_t a2)
{
  v4 = a1;
  v5 = sub_1003F7AAC(a1);
  v6 = &_swiftEmptySetSingleton;
  if (v5)
  {
    v6 = v5;
  }

  v59 = v6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v2 = &qword_1006A2640;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v60[4];
    v7 = v60[5];
    v9 = v60[6];
    v8 = v60[7];
    v10 = v60[8];
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = (a2 + 56);
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = (v13 & *(a2 + 56));

    v8 = 0;
  }

  v14 = &selRef_setWindowed_;
  while (1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v15 = v8;
      v16 = v10;
      v17 = v8;
      if (!v10)
      {
        while (1)
        {
          v17 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= ((v9 + 64) >> 6))
          {
            goto LABEL_47;
          }

          v16 = v7[v17];
          ++v15;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_58:
        sub_10000854C();
        swift_once();
        goto LABEL_52;
      }

LABEL_15:
      v57 = (v16 - 1) & v16;
      v2 = *(*(a2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v2)
      {
        break;
      }

      goto LABEL_19;
    }

    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      break;
    }

    v58 = v18;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    swift_dynamicCast();
    v2 = v60[0];
    v17 = v8;
    v57 = v10;
    v14 = &selRef_setWindowed_;
    if (!v60[0])
    {
      break;
    }

LABEL_19:
    if ([v2 v14[470]] == 1)
    {

      v8 = v17;
      v10 = v57;
    }

    else
    {
      v19 = [v2 v14[470]];
      if (v19 == 1)
      {
        v20 = [v2 value];
        if (!v20)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          String._bridgeToObjectiveC()();
          sub_10000667C();
        }

        v21 = [objc_opt_self() normalizedGenericHandleForValue:v20];
        goto LABEL_34;
      }

      if (v19 == 2)
      {
        v22 = [v2 value];
        if (!v22)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = String._bridgeToObjectiveC()();
        }

        sub_100050CF0(v2);
        if (v23)
        {
          v20 = String._bridgeToObjectiveC()();
        }

        else
        {
          v20 = 0;
        }

        v24 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v22 isoCountryCode:v20];

LABEL_43:
        if (v24)
        {
          sub_100396370(v60, v24);
        }

        else
        {
        }

        v8 = v17;
        v10 = v57;
        v14 = &selRef_setWindowed_;
      }

      else
      {
        if (v19 == 3)
        {
          v20 = [v2 value];
          if (!v20)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            String._bridgeToObjectiveC()();
            sub_10000667C();
          }

          v21 = [objc_opt_self() normalizedEmailAddressHandleForValue:v20];
LABEL_34:
          v24 = v21;
          goto LABEL_43;
        }

        v55 = v4;
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000AF9C(v25, qword_1006BA5E0);
        v26 = v2;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          sub_100007BFC();
          log = v27;
          v29 = swift_slowAlloc();
          sub_100015DC0();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v2;
          v2 = v26;
          _os_log_impl(&_mh_execute_header, log, v28, "Unknown handle type used for invited handle %@", v29, 0xCu);
          sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          sub_100009ED0();
        }

        else
        {
        }

        v8 = v17;
        v10 = v57;
        v4 = v55;
        v14 = &selRef_setWindowed_;
      }
    }
  }

LABEL_47:
  sub_10031E890();
  [v4 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    sub_10036962C(v59, v58);
    sub_1003540EC();
    v31 = *(v56 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    sub_100007934();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10057CA80;
    *(v32 + 32) = v58;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v33 = v58;
    sub_10000C58C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v60[0] = 0;
    v35 = [v31 addOrUpdateConversationLinkDescriptors:isa error:v60];

    if (v35)
    {
      v36 = *(v56 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
      v37 = v60[0];
      sub_1003EFB64();
      v38 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v2];
    }

    else
    {
      v38 = v60[0];

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    return v38;
  }

  if (qword_1006A0B20 != -1)
  {
    goto LABEL_58;
  }

LABEL_52:
  v39 = type metadata accessor for Logger();
  sub_10000AF9C(v39, qword_1006BA5E0);
  v40 = v4;
  v41 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  v42 = sub_10003FB78();
  if (os_log_type_enabled(v42, v43))
  {
    sub_100007BFC();
    swift_slowAlloc();
    sub_100015FDC();
    v44 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 1) = v40;
    *v44 = v40;
    v45 = v40;
    sub_10000D368();
    _os_log_impl(v46, v47, v48, v49, v50, v51);
    sub_100009A04(v44, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_10000EA64();
  }

  sub_100369E94();
  swift_allocError();
  *v52 = 3;
  swift_willThrow();
  return v38;
}

void sub_1003650F4()
{
  sub_100005EF4();
  v89 = v1;
  v91 = v2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v4 = sub_100007BF0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100007BAC();
  v10 = v8 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v86 - v13;
  v15 = type metadata accessor for Date();
  v16 = sub_100007FEC(v15);
  v90 = v17;
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v16, v20);
  __chkstk_darwin(v21, v22);
  sub_10000BB28();
  if (_TUIsInternalInstall())
  {
    v23 = [objc_opt_self() tu_defaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24 withDefault:0];

    if (v25)
    {
      v87 = v0;
      v88 = v15;
      Date.init()();
      v26 = objc_allocWithZone(TUConversationLink);
      v27 = [v26 initWithDescriptor:v91];
      *&v92 = 0xD00000000000001ALL;
      *(&v92 + 1) = 0x800000010056E0D0;
      v28 = [v27 pseudonym];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33 = String._bridgeToObjectiveC()();

      v34 = String._bridgeToObjectiveC()();
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(90);
      v35._countAndFlagsBits = 0xD000000000000058;
      v35._object = 0x800000010056E110;
      String.append(_:)(v35);
      v86 = v27;
      v36 = [v27 URL];
      if (v36)
      {
        v37 = v36;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = type metadata accessor for URL();
      sub_10000AF74(v10, v38, 1, v39);
      sub_1002A01B0(v10, v14);
      v40 = sub_100015468(v14, 1, v39);
      v41 = v87;
      if (v40 == 1)
      {
        sub_100009A04(v14, &unk_1006A52C0, &unk_10057D930);
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v42 = URL.absoluteString.getter();
        v43 = v44;
        (*(*(v39 - 8) + 8))(v14, v39);
      }

      v45 = objc_opt_self();
      v46 = sub_10001E478(v42, v43);
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      v50 = sub_10000B8B0();
      v57 = sub_100369794(v50, v51, v52, v53, v54, v55, v56, 0xE700000000000000, 0, v45);

      if (v57)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
      }

      v58 = v90;
      v92 = v97;
      v93 = v98;
      if (*(&v98 + 1))
      {
        sub_100006AF0(0, &unk_1006A6758, IMUserNotification_ptr);
        if (sub_10036BEB4())
        {
          v59 = v96;
          goto LABEL_17;
        }
      }

      else
      {
        sub_100009A04(&v92, &unk_1006A2D10, &unk_10057D940);
      }

      v59 = 0;
LABEL_17:
      [v59 setUsesNotificationCenter:0];
      if (v59)
      {
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10036987C(v60, v61, v59);
        v62 = objc_opt_self();
        v63 = v59;
        if ([v62 sharedInstance])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
        }

        v92 = v97;
        v93 = v98;
        if (*(&v98 + 1))
        {
          sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
          if (sub_10036BEB4())
          {
            v90 = v96;
            v64 = v88;
            (*(v58 + 2))(&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v88);
            v65 = (v58[80] + 32) & ~v58[80];
            v66 = swift_allocObject();
            v67 = v86;
            v68 = v91;
            *(v66 + 16) = v86;
            *(v66 + 24) = v68;
            (*(v58 + 4))(v66 + v65, &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v64);
            *(v66 + v65 + v19) = v89 & 1;
            v94 = sub_100369E08;
            v95 = v66;
            *&v92 = _NSConcreteStackBlock;
            *(&v92 + 1) = 1107296256;
            *&v93 = sub_10028BAD0;
            *(&v93 + 1) = &unk_100628FD0;
            v69 = _Block_copy(&v92);
            v70 = v63;
            v71 = v67;
            v41 = v87;
            v72 = v71;
            v73 = v68;

            v74 = v90;
            [v90 addUserNotification:v70 listener:0 completionHandler:v69];
            _Block_release(v69);

            v75 = v70;
            v76 = v70;
LABEL_31:

            (*(v58 + 1))(v41, v88);
            goto LABEL_32;
          }
        }

        else
        {

          sub_100009A04(&v92, &unk_1006A2D10, &unk_10057D940);
        }
      }

      if (qword_1006A0B20 != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_1000075F0(v77, qword_1006BA5E0);
      v76 = Logger.logObject.getter();
      v78 = static os_log_type_t.fault.getter();
      v79 = sub_10000D654(v78);
      v75 = v86;
      if (v79)
      {
        v80 = sub_100006DC4();
        sub_10000D6E8(v80);
        sub_1000079AC();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        sub_10000EA64();

        v70 = v59;
      }

      else
      {
        v70 = v76;
        v76 = v59;
      }

      goto LABEL_31;
    }
  }

LABEL_32:
  sub_100005EDC();
}

void sub_10036618C()
{
  sub_100005EF4();
  v123 = v2;
  v132 = type metadata accessor for Date();
  v3 = sub_100007FEC(v132);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v125 = (v9 - v10);
  sub_100006838();
  __chkstk_darwin(v11, v12);
  v118 = &v117 - v13;
  sub_100006838();
  v16 = __chkstk_darwin(v14, v15);
  v18 = &v117 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v117 - v21;
  __chkstk_darwin(v20, v23);
  v130 = &v117 - v24;
  sub_100006838();
  __chkstk_darwin(v25, v26);
  v126 = &v117 - v27;
  sub_100006838();
  __chkstk_darwin(v28, v29);
  sub_10001C9F4();
  __chkstk_darwin(v30, v31);
  v33 = &v117 - v32;
  Date.init(timeIntervalSinceNow:)();
  if (qword_1006A0B20 != -1)
  {
LABEL_105:
    sub_10000854C();
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000075F0(v34, qword_1006BA5E0);
  v35 = *(v5 + 16);
  v35(v1, v33, v132);
  v129 = v0;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v119 = v33;
  if (v38)
  {
    sub_100007BFC();
    v39 = swift_slowAlloc();
    *&v127 = v39;
    v133 = sub_100005E84();
    v134[0] = v133;
    *v39 = 136315138;
    sub_10002F654();
    sub_100369F50(v40, v41);
    LODWORD(v124) = v37;
    v42 = v22;
    v43 = v132;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v47 = *(v5 + 8);
    v5 += 8;
    v48 = v43;
    v22 = v42;
    v131 = v47;
    v47(v1, v48);
    v49 = sub_10002741C(v44, v46, v134);
    v33 = v119;

    v50 = v127;
    *(v127 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v36, v124, "Links deletion date must be before %s", v50, 0xCu);
    sub_100009B7C(v133);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v51 = *(v5 + 8);
    v5 += 8;
    v131 = v51;
    v51(v1, v132);
  }

  v52 = v132;
  v35(v126, v33, v132);
  v35(v130, v33, v52);
  v0 = v123;
  v53 = sub_10000B6F4(v123);
  v54 = v0 & 0xC000000000000001;
  v55 = v0 & 0xFFFFFFFFFFFFFF8;
  v133 = (v0 + 32);

  v1 = 0;
  *&v56 = 138412290;
  v127 = v56;
  v128 = v22;
  v124 = v53;
  while (v53 != v1)
  {
    if (v54)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v55 + 16))
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v57 = *&v123[8 * v1 + 32];
    }

    v0 = v57;
    v58 = [v57 deletionDate];
    if (v58)
    {
      v59 = v58;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v59) = static Date.< infix(_:_:)();
      v131(v22, v132);

      if (v59)
      {
        v53 = v1;
        break;
      }
    }

    else
    {
      v60 = v0;
      v0 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (sub_100033378())
      {
        sub_100007BFC();
        v61 = swift_slowAlloc();
        sub_100015DC0();
        v62 = swift_slowAlloc();
        *v61 = v127;
        *(v61 + 4) = v60;
        *v62 = v60;
        v63 = v60;
        _os_log_impl(&_mh_execute_header, v0, v33, "getDeletedPseudonyms: no deleted descriptors for %@", v61, 0xCu);
        sub_100009A04(v62, &unk_1006A2630, &qword_10057CB40);
        v22 = v128;
        sub_100009ED0();

        v53 = v124;
        sub_100009ED0();
      }
    }

    v64 = __OFADD__(v1++, 1);
    if (v64)
    {
      goto LABEL_97;
    }
  }

  v65 = sub_10000B6F4(v123);
  v33 = v65;
  if (v65 < v53)
  {
    v122 = -1;
    v120 = v53;
LABEL_24:
    v0 = v123;
    v121 = sub_10000B6F4(v123);
    v66 = sub_10000B6F4(v0);
    v67 = 0;
    v128 = v5;
    while (2)
    {
      v64 = __OFADD__(v67, v122);
      v68 = v67 + v122;
      if (v64)
      {
        goto LABEL_98;
      }

      if (v33 == v121)
      {
LABEL_99:
        __break(1u);
      }

      else
      {
        v124 = v68;
        while (1)
        {
          v0 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v33 = v1;
            v0 = v124;
            goto LABEL_65;
          }

          if (v0 == v66)
          {
            break;
          }

          if (v54)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v0 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            if (v0 >= *(v55 + 16))
            {
              goto LABEL_63;
            }

            v69 = v133[v0];
          }

          v70 = v69;
          v71 = [v69 deletionDate];
          if (v71)
          {
            v72 = v71;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v1 = static Date.< infix(_:_:)();
            v131(v18, v132);

            if (v1)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v73 = v70;
            v74 = Logger.logObject.getter();
            v1 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v74, v1))
            {
              sub_100007BFC();
              v22 = swift_slowAlloc();
              sub_100015DC0();
              v75 = swift_slowAlloc();
              *v22 = v127;
              *(v22 + 4) = v73;
              *v75 = v73;
              v76 = v73;
              _os_log_impl(&_mh_execute_header, v74, v1, "getDeletedPseudonyms: no deleted descriptors for %@", v22, 0xCu);
              sub_100009A04(v75, &unk_1006A2630, &qword_10057CB40);
              v5 = v128;
              sub_100009ED0();

              sub_100018250();
            }
          }

          ++v33;
        }

        v0 = v66;
LABEL_43:
        v33 = v0;
        v67 = v124;
        if (v0 != v120)
        {
          continue;
        }

        if (!v124)
        {
          goto LABEL_92;
        }

        v134[0] = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v124 & ~(v124 >> 63), 0);
        v0 = v124;
        v122 = v134[0];
        v33 = sub_10000B6F4(v123);
        v1 = 0;
        v18 = v118;
        while (v33 != v1)
        {
          if (v54)
          {
            v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v1 >= *(v55 + 16))
            {
              goto LABEL_103;
            }

            v77 = *&v123[8 * v1 + 32];
          }

          v78 = v77;
          v79 = [v77 deletionDate];
          if (v79)
          {
            v80 = v79;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v5 = static Date.< infix(_:_:)();
            v131(v18, v132);

            if (v5)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v81 = v78;
            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v82, v83))
            {
              sub_100007BFC();
              swift_slowAlloc();
              sub_100015FDC();
              v22 = swift_slowAlloc();
              *v5 = v127;
              *(v5 + 4) = v81;
              *v22 = v81;
              v84 = v81;
              sub_10000D368();
              _os_log_impl(v85, v86, v87, v88, v89, v90);
              sub_100009A04(v22, &unk_1006A2630, &qword_10057CB40);
              sub_100018250();

              sub_10000EA64();
            }
          }

          v64 = __OFADD__(v1++, 1);
          v0 = v124;
          if (v64)
          {
            goto LABEL_104;
          }
        }

LABEL_65:
        v18 = v123;
        if ((v0 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v120 = sub_10000B6F4(v123);
        v91 = sub_10000B6F4(v18);
        v92 = 0;
        while (2)
        {
          if (v92 < v0)
          {
            v0 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              goto LABEL_101;
            }

            sub_10039C390(v33, v54 == 0, v18);
            v121 = v0;
            if (v54)
            {
              v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v93 = v133[v33];
            }

            v0 = v93;
            v94 = [v0 pseudonym];
            v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v95;

            v97 = v122;
            v134[0] = v122;
            v5 = *(v122 + 16);
            v98 = *(v122 + 24);
            v18 = (v5 + 1);
            if (v5 >= v98 >> 1)
            {
              v0 = v134;
              sub_10039A2E0(v98 > 1, v5 + 1, 1);
              v97 = v134[0];
            }

            *(v97 + 16) = v18;
            v99 = v97 + 16 * v5;
            *(v99 + 32) = v1;
            *(v99 + 40) = v96;
            if (v33 != v120)
            {
              v122 = v97;
              v18 = v123;
              while (1)
              {
                v0 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

                if (v0 == v91)
                {
                  break;
                }

                if (v54)
                {
                  v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if ((v0 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_94;
                  }

                  if (v0 >= *(v55 + 16))
                  {
                    goto LABEL_95;
                  }

                  v100 = v133[v0];
                }

                v1 = v100;
                v101 = [v100 deletionDate];
                if (v101)
                {
                  v102 = v101;
                  v22 = v18;
                  v103 = v125;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v5 = static Date.< infix(_:_:)();
                  v104 = v103;
                  v18 = v22;
                  v131(v104, v132);

                  if (v5)
                  {
                    goto LABEL_91;
                  }
                }

                else
                {
                  v1 = v1;
                  v105 = Logger.logObject.getter();
                  static os_log_type_t.default.getter();

                  v106 = sub_10003EB80();
                  if (os_log_type_enabled(v106, v107))
                  {
                    sub_100007BFC();
                    swift_slowAlloc();
                    sub_100015FDC();
                    v22 = swift_slowAlloc();
                    *v5 = v127;
                    *(v5 + 4) = v1;
                    *v22 = v1;
                    v108 = v1;
                    sub_10000D368();
                    _os_log_impl(v109, v110, v111, v112, v113, v114);
                    sub_100009A04(v22, &unk_1006A2630, &qword_10057CB40);
                    sub_100018250();

                    sub_10000EA64();
                  }
                }

                ++v33;
              }

              v0 = v91;
LABEL_91:
              v33 = v0;
              v0 = v124;
              v92 = v121;
              v5 = v128;
              if (v121 != v124)
              {
                continue;
              }

              goto LABEL_92;
            }

            goto LABEL_102;
          }

          break;
        }
      }

      break;
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v53 != v65)
  {
    v122 = 1;
    v120 = v65;
    v33 = v53;
    goto LABEL_24;
  }

LABEL_92:

  v115 = v131;
  v116 = v132;
  v131(v130, v132);
  v115(v126, v116);
  v115(v119, v116);
  sub_100005EDC();
}