uint64_t sub_1003BB59C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1003BB6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString + 8);

  return v1;
}

uint64_t sub_1003BB708(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_10000A34C();
}

void sub_1003BB720()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_endedReason] = 0;
  v19 = &v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredCapabilities] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredLackOfCapabilities] = 0;
  (*(v12 + 16))(&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID], v8, v9);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v23 = *(v12 + 8);
  v23(v18, v9);
  v24 = &v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_clientUUIDString];
  *v24 = v20;
  v24[1] = v22;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue] = v5;
  *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager] = v3;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for SimulatedIDSGroupSessionProvider();
  v25 = v5;
  v26 = v3;
  v27 = objc_msgSendSuper2(&v29, "init");
  sub_1003297EC();

  v23(v8, v9);
  sub_100005EDC();
}

void sub_1003BBA0C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v121 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v121);
  v115 = v6;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v5, v9);
  v118 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v113 = &v111 - v13;
  v14 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v14);
  v16 = *(v15 + 64);
  sub_100006688();
  __chkstk_darwin(v17, v18);
  v20 = &v111 - v19;
  v21 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v22 = sub_100008070(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = sub_100007FEC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30, v35);
  sub_100007FDC();
  sub_100007654();
  v36 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue);
  *v1 = v36;
  (*(v32 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v29);
  v37 = v36;
  v38 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v1, v29);
  if (v38)
  {
    v39 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager);
    v40 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID;
    v41 = sub_1003285B4();
    v120 = v40;
    sub_1002CB8B4(v2 + v40, v41);

    if (sub_100015468(v20, 1, v21) == 1)
    {
      sub_100009A04(v20, &unk_1006A7600, &unk_100584E50);
      goto LABEL_42;
    }

    v114 = v4;
    sub_10032DE84(v20, v28);
    v42 = sub_10022AE64();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v43 = sub_100009F00();
    *(v43 + 16) = xmmword_10057D690;
    v122 = v2;
    v44 = sub_1003BCD20();
    *(v43 + 56) = sub_10026D814(&qword_1006A8DB0, &qword_100584E48);
    *(v43 + 64) = sub_1000182CC(&unk_1006A8DB8);
    *(v43 + 32) = v44;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v111 = v21;
    v112 = v28;
    v119 = *(v28 + *(v21 + 24));
    v28 = *(v119 + 16);
    if (!v28)
    {
      v53 = *(v115 + 16);
      v2 = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v63 = _swiftEmptyArrayStorage;
LABEL_13:
      v123 = v53;
      v124 = v63;
      v64 = v113;
      v53(v113, v122 + v120, v121);
      v65 = *(v112 + *(v111 + 32));
      v66 = [*(v112 + *(v111 + 28)) idsDestination];
      v28 = v114;
      if (v66)
      {
        v67 = v66;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      v71 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      sub_100008C18(v64, v65, 1, v68, v70);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }

    v124 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v45 = v119;
    v47 = sub_1000057CC(v119);
    v49 = v48;
    v116 = (v115 + 16);
    v117 = v45 + 64;
    v115 = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while ((v47 & 0x8000000000000000) == 0 && v47 < 1 << *(v45 + 32))
    {
      if (((*(v117 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_45;
      }

      if (*(v45 + 36) != v49)
      {
        goto LABEL_46;
      }

      v50 = *(v45 + 56) + 24 * v47;
      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *v116;
      v54 = v118;
      LODWORD(v123) = v46;
      v53(v118, v122 + v120, v121);
      v55 = v51;
      v56 = [v55 value];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v58;

      v59 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      sub_100008C18(v54, v52, 1, v57, v2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = *(v124 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v45 = v119;
      v61 = sub_10045956C(v47, v49, v123 & 1, v119);
      v47 = v61;
      v49 = v62;
      if (!--v28)
      {
        sub_100010000(v61, v62, v46 & 1);
        v63 = v124;
        v2 = v115;
        goto LABEL_13;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_17:
  sub_10000FED4();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v72 = v124;
  v117 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100006AF0(0, &qword_1006A8E10, IDSGroupSessionActiveParticipant_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_100016364(isa, "sessionProvider:didReceiveActiveParticipants:success:");

    swift_unknownObjectRelease();
  }

  v111 = v72;
  v115 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100006AF0(0, &qword_1006A8E10, IDSGroupSessionActiveParticipant_ptr);
    v74 = Array._bridgeToObjectiveC()().super.isa;
    sub_100016364(v74, "sessionProvider:didReceiveActiveLightweightParticipants:success:");

    swift_unknownObjectRelease();
  }

  v75 = v119;
  v2 = v119 + 64;
  v76 = 1 << *(v119 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v119 + 64);
  v116 = ((v76 + 63) >> 6);
  v113 = (v28 + 56);
  swift_bridgeObjectRetain_n();
  v79 = 0;
  while (v78)
  {
LABEL_30:
    v81 = __clz(__rbit64(v78));
    v78 &= v78 - 1;
    v82 = *(v75 + 56) + 24 * (v81 | (v79 << 6));
    v83 = *v82;
    v84 = *(v82 + 8);
    v85 = *(v82 + 16);
    v86 = *(v82 + 17);
    if (v28 < 2)
    {
LABEL_35:
      v91 = objc_allocWithZone(CSDConversationParticipant);
      v92 = v83;
      v93 = sub_1003BECD4(v84, v92, 0, 0xC000000000000000);
      [v93 setSpatialPersonaEnabled:v86];
      sub_100006AF0(0, &qword_1006A8E18, TUConversationParticipantCapabilities_ptr);
      v94 = sub_10032B208(v85);
      [v93 setCapabilities:v94];

      [v93 setAudioVideoMode:2];
      v95 = v118;
      v123(v118, v122 + v120, v121);
      v96 = [v92 value];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = objc_allocWithZone(IDSGroupSessionActiveParticipant);
      v101 = sub_100008C18(v95, v84, 1, v97, v99);
      v102 = [objc_opt_self() participantWithCSDConversationParticipant:v93];
      sub_1003F7B24(v102);
      if (v103 >> 60 == 15)
      {
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v105 = Strong;
          sub_10000FED4();
          v106 = Data._bridgeToObjectiveC()().super.isa;
          [v105 sessionProvider:v122 didReceiveDataBlob:v106 forParticipant:v101];

          v107 = sub_10000FED4();
          sub_100290B6C(v107, v108);

          swift_unknownObjectRelease();
        }

        else
        {

          v109 = sub_10000FED4();
          sub_100290B6C(v109, v110);
        }
      }

      v28 = v114;
      v75 = v119;
    }

    else if (*(v28 + 16))
    {
      v87 = *(v28 + 40);
      v88 = static Hasher._hash(seed:_:)();
      v89 = ~(-1 << *(v28 + 32));
      while (1)
      {
        v90 = v88 & v89;
        if (((*&v113[((v88 & v89) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v88 & v89)) & 1) == 0)
        {
          break;
        }

        v88 = v90 + 1;
        if (*(*(v28 + 48) + 8 * v90) == v84)
        {
          goto LABEL_35;
        }
      }
    }
  }

  while (1)
  {
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v80 >= v116)
    {
      break;
    }

    v78 = *(v2 + 8 * v80);
    ++v79;
    if (v78)
    {
      v79 = v80;
      goto LABEL_30;
    }
  }

  sub_10032DD40(v112);
LABEL_42:
  sub_100005EDC();
}

void sub_1003BC3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v5 = *(a1 + *(v4 + 24));

  v7 = sub_1002F2270(v6);
  v8 = *(a2 + *(v4 + 24));

  v10 = sub_1002F2270(v9);

  v47 = sub_1003BEEB4(v7, v10);
  v46 = sub_1003BEEB4(v10, v7);

  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = v14;
  v17 = 0;
  v48 = _swiftEmptyArrayStorage;
  v49 = v8;
  v50 = v5;
  while (v16)
  {
    v18 = v16;
LABEL_10:
    v16 = (v18 - 1) & v18;
    if (*(v5 + 16))
    {
      v54 = (v18 - 1) & v18;
      v20 = *(v8 + 56) + 24 * (__clz(__rbit64(v18)) | (v17 << 6));
      v21 = *v20;
      v51 = *(v20 + 17);
      v52 = *(v20 + 16);
      v53 = *(v20 + 8);
      v22 = sub_1002DA664(v53);
      v16 = v54;
      if (v23)
      {
        v24 = *(v5 + 56) + 24 * v22;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 17);
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        v29 = v21;
        v30 = v26;
        v31 = static NSObject.== infix(_:_:)();

        v16 = v54;
        v8 = v49;
        v5 = v50;
        if (v31 & 1) == 0 || v53 != v25 || ((v52 ^ v27) & 1) != 0 || ((v51 ^ v28))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = v48[2];
            sub_1004704F8();
            v48 = v35;
          }

          v32 = v48[2];
          v33 = v32 + 1;
          v16 = v54;
          if (v32 >= v48[3] >> 1)
          {
            sub_1004704F8();
            v16 = v54;
            v33 = v32 + 1;
            v48 = v36;
          }

          v48[2] = v33;
          v48[v32 + 4] = v53;
        }
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v15)
    {
      break;
    }

    v18 = *(v11 + 8 * v19);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  if (*(v47 + 16))
  {

    v43 = v48;
LABEL_25:
    if (*(v47 + 16) || *(v43 + 16))
    {
      v45 = sub_1002F3BB0(v43, v47, v37, v38, v39, v40, v41, v42);
    }

    else
    {

      v45 = 1;
    }

    sub_1003BBA0C();

    sub_1003BED58(v45);
    return;
  }

  v44 = *(v46 + 16);

  v43 = v48;
  if (v44 || v48[2])
  {
    goto LABEL_25;
  }
}

void sub_1003BC71C()
{
  sub_100005EF4();
  v2 = v0;
  v3 = sub_10026D814(&qword_1006A6DA0, &qword_100584E60);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  v9 = &v33 - v8;
  v10 = sub_10026D814(&qword_1006A8DC8, &qword_100584E68);
  sub_100007FEC(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_100006688();
  __chkstk_darwin(v15, v16);
  sub_100007654();
  v17 = sub_10026D814(&qword_1006A8DD0, &qword_100584E70);
  v34 = sub_100007FEC(v17);
  v35 = v18;
  v20 = *(v19 + 64);
  sub_100006688();
  __chkstk_darwin(v21, v22);
  v24 = &v33 - v23;
  v25 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager);
  sub_10032884C();
  v36 = v26;
  sub_10026D814(&qword_1006A8DD8, qword_100584E78);
  sub_10001000C(&unk_1006A8DE0, &qword_1006A8DD8, qword_100584E78);
  Publisher.dropFirst(_:)();

  v36 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue);
  v27 = v36;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000AF74(v9, 1, 1, v28);
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  sub_10001000C(&unk_1006A8DF0, &qword_1006A8DC8, &qword_100584E68);
  sub_100378020();
  v29 = v27;
  Publisher.receive<A>(on:options:)();
  sub_100009A04(v9, &qword_1006A6DA0, &qword_100584E60);

  (*(v12 + 8))(v1, v10);
  sub_100006890();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001000C(&unk_1006A8E00, &qword_1006A8DD0, &qword_100584E70);
  v30 = v34;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v24, v30);
  v32 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription);
  *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription) = v31;

  sub_100005EDC();
}

uint64_t sub_1003BCA8C(uint64_t *a1)
{
  v2 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v26 - v18;
  v21 = *a1;
  v20 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID;
    sub_1002CB8B4(result + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID, v21);
    if (sub_100015468(v10, 1, v11) == 1)
    {

      v25 = v10;
      return sub_100009A04(v25, &unk_1006A7600, &unk_100584E50);
    }

    sub_10032DE84(v10, v19);
    sub_1002CB8B4(v23 + v24, v20);
    if (sub_100015468(v7, 1, v11) == 1)
    {
      sub_10032DD40(v19);

      v25 = v7;
      return sub_100009A04(v25, &unk_1006A7600, &unk_100584E50);
    }

    sub_10032DE84(v7, v16);
    sub_1003BC3B0(v19, v16);

    sub_10032DD40(v16);
    return sub_10032DD40(v19);
  }

  return result;
}

id sub_1003BCE7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_1003BCECC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination + 8);

  return v1;
}

void sub_1003BCF20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1003BCF98(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_destination + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_10000A34C();
}

uint64_t sub_1003BD0E8()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1003BD178()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v59 = v4;
  v60 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v57 = v9 - v8;
  v58 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v58);
  v56 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v55 = v16 - v15;
  v17 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v18 = sub_100008070(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v25);
  v27 = *(v26 + 64);
  sub_100006688();
  __chkstk_darwin(v28, v29);
  v31 = &v54 - v30;
  v32 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v33 = sub_100009F00();
  *(v33 + 16) = xmmword_10057D690;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v35 = TULoggableStringForObject();

  if (v35)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100009D88();
    *(v33 + 32) = v36;
    *(v33 + 40) = v38;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v39 = *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager];
    v40 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID;
    v41 = sub_1003285B4();
    sub_1002CB8B4(&v1[v40], v41);

    if (sub_100015468(v31, 1, v17))
    {
      sub_100009A04(v31, &unk_1006A7600, &unk_100584E50);
    }

    else
    {
      sub_10032DCDC(v31, v24);
      sub_100009A04(v31, &unk_1006A7600, &unk_100584E50);
      v42 = *(v24 + *(v17 + 32));
      sub_10032DD40(v24);
      sub_1003BC71C();
      v43 = *&v1[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue];
      v44 = swift_allocObject();
      *(v44 + 16) = v1;
      *(v44 + 24) = v42;
      sub_10000A0F0(v44);
      sub_1000081D4(COERCE_DOUBLE(1107296256));
      v62[2] = v45;
      v62[3] = &unk_10062CC48;
      v46 = _Block_copy(v62);
      v47 = v1;
      v48 = v55;
      static DispatchQoS.unspecified.getter();
      v61 = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10000826C();
      sub_10001000C(v49, v50, &unk_10057D6E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);
      v51 = *(v59 + 8);
      v52 = sub_10000FED4();
      v53(v52);
      (*(v56 + 8))(v48, v58);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BD5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_10026D814(&qword_1006A5358, &qword_1005800B8);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 sessionProvider:a1 didJoinGroupWithParticipantIdentifiers:isa localParticipantIdentifier:a2 error:0];

    swift_unknownObjectRelease();
  }

  v17 = *(a1 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager);
  v18 = OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID;
  v19 = sub_1003285B4();
  sub_1002CB8B4(a1 + v18, v19);

  if (sub_100015468(v13, 1, v4))
  {
    sub_100009A04(v13, &unk_1006A7600, &unk_100584E50);
  }

  else
  {
    sub_10032DCDC(v13, v8);
    sub_100009A04(v13, &unk_1006A7600, &unk_100584E50);
    v20 = v8[*(v4 + 36)];
    sub_10032DD40(v8);
    if (v20)
    {
      sub_10032A2D0();
      return;
    }
  }

  sub_1003BBA0C();
}

void sub_1003BD8C4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_100007654();
  v11 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = sub_100009F00();
  *(v12 + 16) = xmmword_10057D690;
  *(v12 + 56) = sub_10026D814(&qword_1006A8DB0, &qword_100584E48);
  *(v12 + 64) = sub_1000182CC(&unk_1006A8DB8);
  *(v12 + 32) = v3;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v13 = *(v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager);
  (*(v7 + 16))(v1, v0 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID, v4);
  v14 = sub_1003287AC(v24);
  v15 = sub_10040BF00(v23);
  v17 = v16;
  v18 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  if (!sub_100015468(v17, 1, v18))
  {

    v20 = sub_100329CF0(v19);
    v21 = *(v18 + 20);
    v22 = *(v17 + v21);
    *(v17 + v21) = v20;
  }

  (v15)(v23, 0);
  (*(v7 + 8))(v1, v4);
  v14(v24, 0);
  sub_10032A2D0();
  sub_100005EDC();
}

void sub_1003BDD30()
{
  sub_100005EF4();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v36 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  sub_100007654();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v9);
  v34 = v11;
  v35 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = sub_100009F00();
  *(v19 + 16) = xmmword_10057D690;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = TULoggableStringForObject();

  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100009D88();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v25 = *&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription];
    *&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupSessionSubscription] = 0;

    v26 = *&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_simulatedConversationManager];
    sub_100329EA8(&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_groupUUID]);
    v27 = *&v2[OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_queue];
    sub_100006890();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    sub_10000A0F0(v28);
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v37[2] = v29;
    v37[3] = &unk_10062CBF8;
    v30 = _Block_copy(v37);
    v31 = v2;
    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v32, v33, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v36 + 8))(v1, v3);
    (*(v34 + 8))(v17, v35);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BE060(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result sessionProvider:a1 didLeaveGroupWithError:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003BE0E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

void sub_1003BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = [objc_allocWithZone(type metadata accessor for SimulatedDataCryptor()) init];
  (a4)[2](a4, v9);

  _Block_release(a4);
}

void sub_1003BE4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  a5[2](a5, a1);

  _Block_release(a5);
}

uint64_t sub_1003BE608(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredCapabilities);
  *(v1 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredCapabilities) = a1;
  return sub_10000A34C();
}

Class sub_1003BE634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

void sub_1003BE6C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_1003BE754(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredLackOfCapabilities);
  *(v1 + OBJC_IVAR____TtC13callservicesd32SimulatedIDSGroupSessionProvider_requiredLackOfCapabilities) = a1;
  return sub_10000A34C();
}

uint64_t sub_1003BE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a4)
  {
LABEL_3:
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
}

id sub_1003BE948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedIDSGroupSessionProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SimulatedIDSGroupSessionProvider()
{
  result = qword_1006A8D98;
  if (!qword_1006A8D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003BEAC0()
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

id sub_1003BEBAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  if (a7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a6, a7);
  }

  v18 = [v8 initWithGroupUUID:v15.super.isa participantIdentifier:a2 isKnown:a3 & 1 participantURI:v16 pushToken:isa];

  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(a1, v19);
  return v18;
}

id sub_1003BECD4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v4 initWithIdentifier:a1 handle:a2 avcData:isa];

  sub_100049B14(a3, a4);
  return v10;
}

unint64_t sub_1003BED58(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1003BED80(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEEE0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

void sub_1003BEF3C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_1003BEFAC()
{
  result = [objc_allocWithZone(type metadata accessor for SimulatedIDSService()) init];
  qword_1006BA768 = result;
  return result;
}

id sub_1003BEFDC()
{
  if (qword_1006A0BA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA768;

  return v1;
}

uint64_t sub_1003BF0AC()
{
  v1 = *(v0 + OBJC_IVAR___CSDSimulatedIDSService_name);
  v2 = *(v0 + OBJC_IVAR___CSDSimulatedIDSService_name + 8);

  return v1;
}

char *sub_1003BF0E8()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for SimulatedConversationManager(0)) init];
  v3 = OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues;
  *&v1[v3] = [objc_opt_self() weakToStrongObjectsMapTable];
  *&v1[OBJC_IVAR___CSDSimulatedIDSService_groupSessionSubscription] = 0;
  v4 = OBJC_IVAR___CSDSimulatedIDSService_idsService;
  v5 = objc_allocWithZone(IDSService);
  *&v1[v4] = sub_1003C1FE0(0x6574616C756D6973, 0xE900000000000064);
  v6 = &v1[OBJC_IVAR___CSDSimulatedIDSService_name];
  *v6 = 0x6574616C756D6973;
  *(v6 + 1) = 0xE900000000000064;
  *&v1[OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account] = 1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SimulatedIDSService();
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *&v7[OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager];
  v9 = v7;
  v10 = v8;
  sub_10032884C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10026D814(&qword_1006A8DD8, qword_100584E78);
  sub_10001000C(&unk_1006A8DE0, &qword_1006A8DD8, qword_100584E78);
  v11 = Publisher<>.sink(receiveValue:)();

  v12 = *&v9[OBJC_IVAR___CSDSimulatedIDSService_groupSessionSubscription];
  *&v9[OBJC_IVAR___CSDSimulatedIDSService_groupSessionSubscription] = v11;

  return v9;
}

void sub_1003BF2E8(uint64_t *a1)
{
  v2 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v70 = &v67 - v8;
  v9 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v71 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v67 = &v67 - v15;
  v73 = sub_10026D814(&qword_1006A8EE8, &qword_100584ED0);
  v16 = *(*(v73 - 8) + 64);
  v18 = __chkstk_darwin(v73, v17);
  v68 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v67 - v21;
  v24 = *a1;
  v23 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;

    v29 = 0;
    if (v27)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v23 + 64 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
        do
        {
LABEL_9:
          v31 = __clz(__rbit64(v27)) | (v29 << 6);
          v32 = *(v23 + 48);
          v33 = type metadata accessor for UUID();
          (*(*(v33 - 8) + 16))(v22, v32 + *(*(v33 - 8) + 72) * v31, v33);
          v34 = *(v74 + 72);
          v35 = *(v23 + 56) + v34 * v31;
          v36 = &v22[*(v73 + 48)];
          sub_10032DCDC(v35, v36);
          if (*(v24 + 16) && (sub_100021E24(), (v38 & 1) != 0))
          {
            v39 = v71;
            sub_10032DCDC(*(v24 + 56) + v37 * v34, v71);
            v40 = v67;
            sub_10032DE84(v39, v67);
            v41 = v36;
            v42 = v70;
            sub_10032DCDC(v41, v70);
            sub_10000AF74(v42, 0, 1, v75);
            sub_1003BF8A4(v40, v42);
            sub_1000099A4(v42, &unk_1006A7600, &unk_100584E50);
            sub_10032DD40(v40);
          }

          else if ((*(v36 + *(v75 + 36)) & 1) == 0)
          {
            sub_1003BFE7C(v36);
          }

          v27 &= v27 - 1;
          sub_1000099A4(v22, &qword_1006A8EE8, &qword_100584ED0);
        }

        while (v27);
      }
    }

    v67 = v23;

    v43 = 1 << *(v24 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v24 + 64);
    v46 = (v43 + 63) >> 6;
    v71 = v24;

    v47 = 0;
    v48 = v68;
    if (v45)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v46)
      {

        return;
      }

      v45 = *(v24 + 64 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        do
        {
LABEL_23:
          v50 = __clz(__rbit64(v45)) | (v47 << 6);
          v51 = v71;
          v52 = *(v71 + 48);
          v53 = type metadata accessor for UUID();
          (*(*(v53 - 8) + 16))(v48, v52 + *(*(v53 - 8) + 72) * v50, v53);
          v54 = *(v51 + 56);
          v55 = *(v74 + 72);
          v56 = *(v73 + 48);
          sub_10032DCDC(v54 + v55 * v50, v48 + v56);
          v57 = v67;
          if (*(v67 + 16) && (sub_100021E24(), (v59 & 1) != 0))
          {
            v60 = *(v57 + 56) + v58 * v55;
            v61 = v69;
            sub_10032DCDC(v60, v69);
            sub_10000AF74(v61, 0, 1, v75);
            v62 = v61;
          }

          else
          {
            v63 = v69;
            v64 = v75;
            sub_10000AF74(v69, 1, 1, v75);
            sub_1000099A4(v63, &unk_1006A7600, &unk_100584E50);
            v65 = v70;
            v66 = v64;
            v48 = v68;
            sub_10000AF74(v70, 1, 1, v66);
            sub_1003BF8A4(v48 + v56, v65);
            v62 = v65;
          }

          v45 &= v45 - 1;
          sub_1000099A4(v62, &unk_1006A7600, &unk_100584E50);
          sub_1000099A4(v48, &qword_1006A8EE8, &qword_100584ED0);
        }

        while (v45);
      }
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_1003BF8A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v36[-v14];
  v16 = type metadata accessor for UUID();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  (*(v19 + 16))(v24 - v23, a1, v16);
  v26 = *(a1 + *(v5 + 24));

  v28 = sub_1002F2270(v27);
  sub_1003C3C30(a2, v15);
  if (sub_100015468(v15, 1, v5) == 1)
  {
    v29 = &_swiftEmptySetSingleton;
  }

  else
  {
    sub_10032DE84(v15, v10);
    v30 = *(v10 + *(v5 + 24));

    v29 = sub_1002F2270(v31);
    sub_10032DD40(v10);
  }

  v32 = sub_1003BEEE0(v29, v28, sub_1003C275C, sub_1003C3168);

  __chkstk_darwin(v33, v34);
  *&v36[-32] = a1;
  *&v36[-24] = v25;
  *&v36[-16] = v2;
  sub_1003BED80(sub_1003C3CA0, &v36[-48], v32);

  return (*(v19 + 8))(v25, v16);
}

uint64_t sub_1003BFB20(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v48 = a4;
  v49 = a3;
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  result = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v25 = *(a2 + *(result + 24));
  if (*(v25 + 16))
  {
    result = sub_1002DA664(v23);
    if (v26)
    {
      v47 = v4;
      v27 = *(*(v25 + 56) + 24 * result);
      v28 = objc_allocWithZone(CSDMessagingConversationParticipantDidLeaveContext);
      v29 = v27;
      v30 = [v28 init];
      v31 = v30;
      if (v30)
      {
        [v30 setLeaveReason:0];
      }

      (*(v18 + 16))(v22, v49, v17);
      result = TUCopyIDSCanonicalAddressForHandle();
      if (result)
      {
        v32 = result;
        v49 = v29;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        Date.init()();
        if (v31)
        {
          v35 = sub_1003F7B24(v31);
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0xF000000000000000;
        }

        sub_10000AF74(v11, 1, 1, v17);
        v38 = objc_allocWithZone(IDSGroupSessionParticipantUpdate);
        v39 = sub_1003C2044(v22, 0, v23, v46, v34, 2, 0, 0, v16, 0, 0xF000000000000000, v35, v37, 0, 0, v11);
        v40 = [objc_allocWithZone(IDSMessageContext) init];
        v41 = swift_allocObject();
        v42 = v48;
        v41[2] = v48;
        v41[3] = v39;
        v41[4] = v40;
        v42;
        v43 = v39;
        v44 = v40;
        sub_1003C06E0(sub_1003C3D08, v41);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1003BFE7C(uint64_t a1)
{
  v21 = 1;
  v1 = *(a1 + *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 24));
  v2 = *(v1 + 64);
  v3 = 1 << *(v1 + 32);
  sub_10000C830();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v10 = v9;
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(v1 + 48) + 8 * v12);
    v14 = *(v1 + 56) + 24 * v12;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    if (*(v14 + 17))
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = *v14;
    sub_1003BFFC0(v13, v18, v15, v17 | v16, a1, &v21, v20);
  }

  while (v6);
  while (1)
  {
LABEL_3:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }
}

void sub_1003BFFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  v82 = a3;
  v83 = a7;
  v87 = a6;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v81 = &v74 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v84 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UUID();
  v17 = *(v85 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v85, v19);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(CSDMessagingConversationParticipantDidJoinContext) init];
  if (v21)
  {
    v76 = v17;
    v78 = a2;
    v22 = *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 20);
    v77 = a5;
    v23 = *(a5 + v22);
    v80 = _swiftEmptyArrayStorage;
    v89 = _swiftEmptyArrayStorage;
    v24 = sub_10000B6F4(v23);
    v25 = v23 & 0xC000000000000001;
    v26 = v23 & 0xFFFFFFFFFFFFFF8;
    v74 = v23;
    v27 = v23 + 32;
    v79 = v21;
    v75 = v21;
    v28 = 0;
    v29 = &type metadata for String;
    v30 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
    v88 = v24;
    while (1)
    {
      if (v28 == v24)
      {
        sub_1002F1D1C(v80);
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v54 = v75;
        [v75 setTuConversationMembers:isa];

        [v54 setVideo:1];
        [v54 setVideoEnabled:1];
        v21 = v79;
        v17 = v76;
        a5 = v77;
        goto LABEL_25;
      }

      if (v25)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_33;
        }

        v31 = *(v27 + 8 * v28);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v33 = [v31 v30[248]];
      v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = 0;
      v36 = 1 << *(v34 + 32);
      v37 = (v36 + 63) >> 6;
      v38 = 56;
      if (!v37)
      {
        break;
      }

      while (1)
      {
        v39 = *(v34 + v38);
        if (v39)
        {
          break;
        }

        v38 += 8;
        v35 -= 64;
        if (!--v37)
        {
          goto LABEL_13;
        }
      }

      v40 = __clz(__rbit64(v39));
      if (v40 - v36 == v35)
      {
        break;
      }

      if (-v35 < 0)
      {
        goto LABEL_34;
      }

      v41 = v40 - v35;
      if (v41 >= v36)
      {
        goto LABEL_34;
      }

      if (((*(v34 + v38) >> v40) & 1) == 0)
      {
        goto LABEL_35;
      }

      v42 = (*(v34 + 48) + 16 * v41);
      v43 = v27;
      v44 = v26;
      v45 = v25;
      v46 = v30;
      v47 = v29;
      v48 = *v42;
      v49 = v42[1];

      v50 = String._bridgeToObjectiveC()();
      v29 = v47;
      v30 = v46;
      v25 = v45;
      v26 = v44;
      v27 = v43;
      v24 = v88;

      v51 = TUHandleForIDSCanonicalAddress();

      if (v51)
      {
        v52 = [objc_allocWithZone(TUConversationMember) initWithHandle:v51];
        swift_unknownObjectRelease();

        if (v52)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v80 = v89;
        }
      }

      else
      {
LABEL_14:
        swift_unknownObjectRelease();
      }
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_25:
  v55 = [objc_allocWithZone(CSDMessagingConversationMessage) init];
  v56 = v55;
  if (v55)
  {
    [v55 setAvMode:2];
  }

  [v21 setMessage:v56];
  (*(v17 + 16))(v86, a5, v85);
  v57 = *v87;
  v58 = TUCopyIDSCanonicalAddressForHandle();
  if (!v58)
  {
    goto LABEL_36;
  }

  v59 = v58;
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  Date.init()();
  if (v21)
  {
    v63 = sub_1003F7B24(v21);
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xF000000000000000;
  }

  v66 = v81;
  sub_10000AF74(v81, 1, 1, v85);
  v67 = objc_allocWithZone(IDSGroupSessionParticipantUpdate);
  v68 = sub_1003C2044(v86, v57, v82, v60, v62, 1, 0, 0, v84, 0, 0xF000000000000000, v63, v65, 0, 0, v66);
  v69 = [objc_allocWithZone(IDSMessageContext) init];
  *v87 = 0;
  v70 = swift_allocObject();
  v71 = v83;
  v70[2] = v83;
  v70[3] = v68;
  v70[4] = v69;
  v71;
  v72 = v68;
  v73 = v69;
  sub_1003C06E0(sub_1003C3D40, v70);
}

uint64_t sub_1003C0628(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 respondsToSelector:"service:account:receivedGroupSessionParticipantUpdate:context:"];
  if (result)
  {
    v9 = *(a2 + OBJC_IVAR___CSDSimulatedIDSService_idsService);
    swift_unknownObjectRetain();
    v10 = sub_1003C0C80();
    [a1 service:v9 account:v10 receivedGroupSessionParticipantUpdate:a3 context:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C06E0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v43);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v42 = v10 - v9;
  v45 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v45);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v41 = v18 - v17;
  v38 = type metadata accessor for NSFastEnumerationIterator();
  v19 = sub_100007FEC(v38);
  v37 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  v48 = OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues;
  v49 = v2;
  v27 = [*(v2 + OBJC_IVAR___CSDSimulatedIDSService_delegatesToQueues) keyEnumerator];
  NSEnumerator.makeIterator()();

  v44 = (v5 + 8);
  v28 = &unk_1006A8ED8;
  v39 = (v13 + 8);
  v40 = v26;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v57)
    {
      break;
    }

    sub_10003EBF0(&v56, &aBlock);
    sub_10026D814(v28, &unk_100584EC0);
    if (swift_dynamicCast())
    {
      v29 = v55;
      v30 = [*(v49 + v48) objectForKey:v55];
      if (v30)
      {
        v31 = v30;
        v32 = swift_allocObject();
        v32[2] = a1;
        v32[3] = a2;
        v32[4] = v29;
        v53 = sub_1003C23F0;
        v54 = v32;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v51 = sub_100004CEC;
        v52 = &unk_10062CCC0;
        v33 = v28;
        v34 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        static DispatchQoS.unspecified.getter();
        v55 = _swiftEmptyArrayStorage;
        sub_10000EFE8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v35 = v34;
        v28 = v33;
        v26 = v40;
        _Block_release(v35);
        swift_unknownObjectRelease();

        (*v44)(v42, v43);
        (*v39)(v41, v45);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return (*(v37 + 8))(v26, v38);
}

id sub_1003C0C80()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account;
  v13 = *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account);
  v14 = v13;
  if (v13 == 1)
  {
    v15 = (*(v1 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
    v16 = *v15;
    v17 = v15[1];

    UUID.init()();
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v5 + 8))(v11, v2);
    v21 = objc_allocWithZone(IDSAccount);
    v14 = sub_1003C22F4(v16, v17, v18, v20, 0x6574616C756D6973, 0xE900000000000064);
    v22 = *(v1 + v12);
    *(v1 + v12) = v14;
    v23 = v14;
    sub_1003C23D0(v22);
  }

  sub_1003C23E0(v13);
  return v14;
}

void sub_1003C0E50(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account);
  *(v1 + OBJC_IVAR___CSDSimulatedIDSService____lazy_storage___account) = a1;
  sub_1003C23D0(v2);
}

uint64_t sub_1003C0EC8()
{
  sub_1003C1080();
  sub_1002F62FC();
  v1 = v0;

  return v1;
}

uint64_t sub_1003C0FCC()
{
  v1 = (*(v0 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_1003C1080()
{
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v2 = (*(v0 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager) + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
  v3 = v2[1];
  *(inited + 32) = *v2;
  *(inited + 40) = v3;

  sub_10039B534();
}

void sub_1003C1758(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1003C17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v22 - v14;
  UUID.init(uuidString:)();
  v16 = type metadata accessor for UUID();
  if (sub_100015468(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = *(v9 + OBJC_IVAR___CSDSimulatedIDSService_simulatedConversationManager);
    v18 = objc_allocWithZone(type metadata accessor for SimulatedIDSGroupSessionProvider());

    v19 = v17;
    v20 = a9;
    v21 = a7;
    sub_1003BB720();
  }
}

id sub_1003C1A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003C1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (a5)[2](a5, isa, 0);

  _Block_release(a5);
}

void sub_1003C1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void))
{
  a8[2](a8, 1, 0);

  _Block_release(a8);
}

id sub_1003C1FE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

id sub_1003C2044(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = String._bridgeToObjectiveC()();

  v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (a11 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a10, a11);
  }

  if (a13 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a12, a13);
  }

  if (a14)
  {
    sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a15)
    {
LABEL_9:
      v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_12;
    }
  }

  else
  {
    v21.super.isa = 0;
    if (a15)
    {
      goto LABEL_9;
    }
  }

  v22.super.isa = 0;
LABEL_12:
  v23 = type metadata accessor for UUID();
  v24 = 0;
  if (sub_100015468(a16, 1, v23) != 1)
  {
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(a16, v23);
  }

  LOBYTE(v28) = a8 & 1;
  v25 = [v32 initWithGroupUUID:v16.super.isa isInitiator:a2 & 1 participantIdentifier:a3 participantDestinationID:v17 participantUpdateType:a6 participantUpdateSubtype:a7 fromServer:v28 serverDate:v18.super.isa participantData:isa clientContextData:v20 members:v21.super.isa participantIDs:v22.super.isa relaySessionID:v24];

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(a9, v26);
  (*(*(v23 - 8) + 8))(a1, v23);
  return v25;
}

id sub_1003C22F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = String._bridgeToObjectiveC()();

LABEL_8:
  v12 = [v6 initWithLoginID:v9 uniqueID:v10 serviceName:v11];

  return v12;
}

void sub_1003C23D0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1003C23E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1003C2420(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v4 = result + 56;
    v3 = *(result + 56);
    v5 = 1 << *(result + 32);
    sub_10000C830();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    if (!v8)
    {
      goto LABEL_4;
    }

    do
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (*(v2 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      sub_100428F00();
    }

    while (v8);
    while (1)
    {
LABEL_4:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1003C2540(uint64_t a1)
{
  v3 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for Participant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v22[0] = v9 + 8;
    v22[1] = v9 + 16;

    for (i = 0; v17; result = sub_1000099A4(v7, &unk_1006A8EF0, &qword_100584ED8))
    {
      v20 = i;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v9 + 16))(v14, *(a1 + 48) + *(v9 + 72) * (v21 | (v20 << 6)), v8);
      sub_10042919C();
      (*(v9 + 8))(v14, v8);
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(a1 + 56 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003C275C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100429184(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void (*sub_1003C2854(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t)))(char *, unint64_t, uint64_t)
{
  v4 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v75 - v11;
  v13 = type metadata accessor for Participant();
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13, v15);
  v94 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v75 - v20;
  __chkstk_darwin(v19, v22);
  v91 = &v75 - v24;
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v81 = v9;
  v76 = 0;
  v26 = a1 + 56;
  v25 = *(a1 + 56);
  v27 = -1 << *(a1 + 32);
  v85 = ~v27;
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v25;
  v82 = (63 - v27) >> 6;
  v84 = (v23 + 32);
  v92 = (a2 + 56);
  v89 = v23;
  v95 = v23 + 16;
  v96 = (v23 + 8);
  v86 = a1;

  v30 = 0;
  v83 = a1 + 56;
  v78 = v12;
LABEL_6:
  v31 = v29;
  v32 = v30;
  v93 = v30;
  if (v29)
  {
LABEL_12:
    a1 = (v31 - 1) & v31;
    v35 = v86;
    v89[2](v12, *(v86 + 48) + v89[9] * (__clz(__rbit64(v31)) | (v32 << 6)), v13);
    v36 = 0;
    v33 = v12;
    v34 = v32;
LABEL_13:
    sub_10000AF74(v33, v36, 1, v13);
    v97 = v35;
    v98 = v26;
    v99 = v85;
    v100 = v34;
    v101 = a1;
    if (sub_100015468(v33, 1, v13) == 1)
    {
      goto LABEL_46;
    }

    v80 = *v84;
    v80(v91, v33, v13);
    v37 = *(a2 + 5);
    v79 = sub_10000EFE8(&unk_1006A4860, &type metadata accessor for Participant);
    v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v90 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v26 = v38 & v90;
      if (((1 << (v38 & v90)) & v92[(v38 & v90) >> 6]) == 0)
      {
        (*v96)(v91, v13);
        v30 = v34;
        v29 = a1;
        v26 = v83;
        v12 = v78;
        goto LABEL_6;
      }

      v87 = 1 << v26;
      v88 = v26 >> 6;
      v32 = a2;
      v39 = *(a2 + 6);
      v40 = v89;
      v93 = v89[9];
      v41 = v89[2];
      (v41)(v21, v39 + v93 * v26, v13);
      v42 = sub_10000EFE8(&unk_1006A8F00, &type metadata accessor for Participant);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = v40[1];
      (a2)(v21, v13);
      if (v43)
      {
        break;
      }

      v38 = v26 + 1;
      a2 = v32;
    }

    v89 = v41;
    v90 = v42;
    v44 = (a2)(v91, v13);
    v46 = *(v32 + 32);
    v77 = ((1 << v46) + 63) >> 6;
    v29 = 8 * v77;
    if ((v46 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v91 = a2;
      v78 = &v75;
      __chkstk_darwin(v44, v45);
      v47 = &v75 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v47, v92, v29);
      v48 = *&v47[8 * v88] & ~v87;
      v49 = *(v32 + 16);
      v87 = v47;
      *&v47[8 * v88] = v48;
      v50 = v49 - 1;
      v33 = v81;
      v51 = v83;
      v52 = v82;
      v53 = v86;
      a2 = v32;
      v54 = v89;
      while (1)
      {
        v88 = v50;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v55 = v34;
LABEL_29:
        v56 = __clz(__rbit64(a1));
        v57 = (a1 - 1) & a1;
        (v54)(v33, *(v53 + 48) + (v56 | (v55 << 6)) * v93, v13);
        v58 = 0;
LABEL_30:
        sub_10000AF74(v33, v58, 1, v13);
        v97 = v53;
        v98 = v51;
        v99 = v85;
        v100 = v34;
        v101 = v57;
        if (sub_100015468(v33, 1, v13) == 1)
        {
          sub_1000099A4(v33, &unk_1006A8EF0, &qword_100584ED8);
          sub_1003EB370(v87, v77, v88, a2);
          a2 = v70;
          goto LABEL_42;
        }

        v89 = v57;
        v59 = v54;
        v80(v94, v33, v13);
        v60 = *(a2 + 5);
        v61 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v62 = a2;
        v63 = ~(-1 << *(a2 + 32));
        do
        {
          v64 = v61 & v63;
          v65 = (v61 & v63) >> 6;
          v66 = 1 << (v61 & v63);
          if ((v66 & v92[v65]) == 0)
          {
            (v91)(v94, v13);
            a2 = v62;
            v53 = v86;
            v33 = v81;
            v51 = v83;
            v52 = v82;
            v54 = v59;
            a1 = v89;
            goto LABEL_23;
          }

          (v59)(v21, *(v62 + 6) + v64 * v93, v13);
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v91)(v21, v13);
          v61 = v64 + 1;
        }

        while ((v67 & 1) == 0);
        (v91)(v94, v13);
        v68 = *(v87 + 8 * v65);
        *(v87 + 8 * v65) = v68 & ~v66;
        v69 = (v68 & v66) == 0;
        a2 = v62;
        v53 = v86;
        v33 = v81;
        v51 = v83;
        v52 = v82;
        v54 = v59;
        a1 = v89;
        if (v69)
        {
          goto LABEL_23;
        }

        v50 = v88 - 1;
        if (__OFSUB__(v88, 1))
        {
          __break(1u);
        }

        if (v88 == 1)
        {

          a2 = &_swiftEmptySetSingleton;
          goto LABEL_42;
        }
      }

      while (1)
      {
        v55 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v55 >= v52)
        {
          v57 = 0;
          v58 = 1;
          goto LABEL_30;
        }

        a1 = *(v51 + 8 * v55);
        ++v34;
        if (a1)
        {
          v34 = v55;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1000099A4(v33, &unk_1006A8EF0, &qword_100584ED8);
LABEL_42:
      sub_100022DDC();
      return a2;
    }
  }

  else
  {
    v33 = v12;
    v34 = v30;
    while (1)
    {
      v32 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v32 >= v82)
      {
        a1 = 0;
        v36 = 1;
        v35 = v86;
        goto LABEL_13;
      }

      v31 = *(v26 + 8 * v32);
      ++v34;
      if (v31)
      {
        v12 = v33;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v72 = swift_slowAlloc();
  v73 = v76;
  v74 = sub_1003C3B20(v72, v77, v92, v77, v32, v26, &v97);
  if (!v73)
  {
    a2 = v74;

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void *sub_1003C3168(unint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v41 = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v45 = ~v8;
  v46 = a1 + 56;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 7;
  v13 = 1;
  v47 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    sub_100022DDC();
    return v3;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
  v17 = v3[5];
  v18 = static Hasher._hash(seed:_:)();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = v18 & v20;
    v6 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & v12[v6]) == 0)
    {
      v4 = v14;
      v6 = v46;
      a1 = v47;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(v3[6] + 8 * v4) == v2)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v49 = v45;
  v50 = v14;
  v51 = v10;
  v48[0] = v47;
  v48[1] = v46;
  v13 = (63 - v19) >> 6;
  v2 = 8 * v13;

  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v42 = v13;
    v43 = &v41;
    __chkstk_darwin(v21, v22);
    v13 = &v41 - v23;
    memcpy(&v41 - v23, v3 + 7, v2);
    v24 = v3[2];
    *(v13 + 8 * v6) &= ~v7;
    v25 = v24 - 1;
    v4 = 1;
    v7 = v46;
    v6 = v47;
LABEL_19:
    v44 = v25;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v27 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v27)));
      v28 = v3[5];
      v29 = static Hasher._hash(seed:_:)();
      v30 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v31 = v29 & v30;
        v32 = (v29 & v30) >> 6;
        v33 = 1 << (v29 & v30);
        if ((v33 & v12[v32]) == 0)
        {
          break;
        }

        v29 = v31 + 1;
        if (*(v3[6] + 8 * v31) == v2)
        {
          v34 = *(v13 + 8 * v32);
          *(v13 + 8 * v32) = v34 & ~v33;
          if ((v34 & v33) == 0)
          {
            goto LABEL_20;
          }

          v25 = v44 - 1;
          if (__OFSUB__(v44, 1))
          {
            __break(1u);
          }

          if (v44 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v26 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v26 >= v11)
      {
        sub_1003EB660(v13, v42, v44, v3);
        v3 = v35;
        goto LABEL_35;
      }

      v10 = *(v7 + 8 * v26);
      ++v14;
      if (v10)
      {
        v14 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = v41;
  v39 = sub_1003C3BA8(v37, v13, v3 + 7, v13, v3, v4, v48);
  if (!v38)
  {
    v40 = v39;

    v45 = v49;
    v3 = v40;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_1003C3554(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v44 = a2;
  v9 = sub_10026D814(&unk_1006A8EF0, &qword_100584ED8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Participant();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v55 = &v44 - v22;
  v23 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v24 = v23 - 1;
  v46 = a1;
  v47 = (v15 + 32);
  v51 = a3 + 56;
  v52 = v15 + 16;
  v53 = (v15 + 8);
  v54 = a3;
  v48 = v13;
  v49 = a5;
  while (1)
  {
    v45 = v24;
LABEL_3:
    v26 = *a5;
    v25 = a5[1];
    v27 = a5[2];
    v28 = a5[3];
    v29 = a5[4];
    v50 = v27;
    if (!v29)
    {
      break;
    }

    v30 = v28;
LABEL_9:
    v31 = (v29 - 1) & v29;
    (*(v15 + 16))(v13, *(v26 + 48) + *(v15 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v14);
    v32 = 0;
LABEL_10:
    sub_10000AF74(v13, v32, 1, v14);
    *a5 = v26;
    a5[1] = v25;
    a5[2] = v50;
    a5[3] = v28;
    a5[4] = v31;
    if (sub_100015468(v13, 1, v14) == 1)
    {
      sub_1000099A4(v13, &unk_1006A8EF0, &qword_100584ED8);
      v43 = v54;

      sub_1003EB370(v46, v44, v45, v43);
      return;
    }

    (*v47)(v55, v13, v14);
    v33 = v54;
    v34 = *(v54 + 40);
    sub_10000EFE8(&unk_1006A4860, &type metadata accessor for Participant);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = ~(-1 << *(v33 + 32));
    do
    {
      v37 = v35 & v36;
      v38 = (v35 & v36) >> 6;
      v39 = 1 << (v35 & v36);
      if ((v39 & *(v51 + 8 * v38)) == 0)
      {
        (*v53)(v55, v14);
        v13 = v48;
        a5 = v49;
        goto LABEL_3;
      }

      (*(v15 + 16))(v20, *(v54 + 48) + *(v15 + 72) * v37, v14);
      sub_10000EFE8(&unk_1006A8F00, &type metadata accessor for Participant);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v15 + 8);
      v41(v20, v14);
      v35 = v37 + 1;
    }

    while ((v40 & 1) == 0);
    v41(v55, v14);
    v42 = v46[v38];
    v46[v38] = v42 & ~v39;
    v13 = v48;
    a5 = v49;
    if ((v42 & v39) == 0)
    {
      goto LABEL_3;
    }

    v24 = v45 - 1;
    if (__OFSUB__(v45, 1))
    {
      goto LABEL_23;
    }

    if (v45 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= ((v27 + 64) >> 6))
    {
      v31 = 0;
      v32 = 1;
      goto LABEL_10;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003C39A4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v16 = *(a3 + 40);
    v17 = static Hasher._hash(seed:_:)();
    v18 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v11 + 8 * v20)) == 0)
      {
        break;
      }

      v17 = v19 + 1;
      if (*(*(a3 + 48) + 8 * v19) == v15)
      {
        v22 = a1[v20];
        a1[v20] = v22 & ~v21;
        if ((v22 & v21) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      sub_1003EB660(a1, a2, v10, a3);
      return;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1003C3B20(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1003C3554(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1003C3BA8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1003C39A4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1003C3C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3CC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003C3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))();
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v6 == v5)
    {

      return v6 != v5;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_100009AB0(i, v24);
    sub_100009B14(v24, v25);
    v8 = sub_10000811C();
    v10 = v9(v8);
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      goto LABEL_15;
    }

    v15 = sub_10000A354();

    if (v15)
    {
      goto LABEL_16;
    }

    sub_100009B14(v24, v25);
    v16 = sub_10000811C();
    v18 = v17(v16);
    v20 = v19;
    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
    {
LABEL_15:

LABEL_16:

      sub_100009B7C(v24);
      return v6 != v5;
    }

    v23 = sub_10000A354();

    if (v23)
    {
      goto LABEL_16;
    }

    result = sub_100009B7C(v24);
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C3F24()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1003C3F7C(uint64_t a1)
{
  v2 = [v1 entriesForContact:a1];
  if (v2)
  {
    v3 = v2;
    sub_1003C4020();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1002F3E70();
  v5 = v4;

  return v5;
}

unint64_t sub_1003C4020()
{
  result = qword_1006A4850;
  if (!qword_1006A4850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4850);
  }

  return result;
}

id sub_1003C4064(void *a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  [v11 setDeviceFamily:{objc_msgSend(ObjCClassFromMetadata, "currentDeviceFamily")}];
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);
  [v11 setWindowUUID:isa];

  sub_1000496D4();
  v13 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 contentRect];
  v18 = [objc_opt_self() valueWithRect:{v14, v15, v16, v17}];
  [a1 pointPixelScale];
  v19 = Float._bridgeToObjectiveC()().super.super.isa;
  [v11 setResolutionAttributesWithContentScale:v13 contentRect:v18 displayScale:v19];

  v20 = [a1 contentType];
  if (v20)
  {
    if (v20 == 1)
    {
      [v11 setStyle:2];
    }

    else
    {
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000AF9C(v21, qword_1006BA568);
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        v32 = [v22 contentType];
        v27 = String.init<A>(reflecting:)();
        v29 = sub_10002741C(v27, v28, &v33);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Unknown AVCScreenCaptureAttributesContentType: %s", v25, 0xCu);
        sub_100009B7C(v26);
      }
    }
  }

  else
  {
    [v11 setStyle:3];
  }

  [v11 setWindowed:{objc_msgSend(v11, "style") == 3}];
  [a1 displayID];
  v30 = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v11 setDisplayID:v30];

  return v11;
}

uint64_t sub_1003C4478(void *a1)
{
  v2 = v1;
  v42 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000083C0();
  v46 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  sub_1000083C0();
  v44 = v11;
  v45 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v41 = v17;
  sub_1000083C0();
  v19 = v18;
  v21 = *(v20 + 64);
  v24 = __chkstk_darwin(v22, v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v40 - v28;
  v30 = OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber;
  swift_beginAccess();
  v31 = *&v2[v30];
  sub_1002A8914();
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v40 = *(v19 + 8);
  v40(v26, v17);
  v33 = swift_allocObject();
  v34 = v42;
  v33[2] = v2;
  v33[3] = v34;
  v33[4] = v31;
  aBlock[4] = sub_1003C51C4;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062CE38;
  v35 = _Block_copy(aBlock);
  v36 = v34;
  v37 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v38 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v35);

  (*(v46 + 8))(v9, v38);
  (*(v44 + 8))(v16, v45);
  return (v40)(v29, v41);
}

void sub_1003C4830(void *a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a4 & 1) != 0 || (v8 = OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber, swift_beginAccess(), *(v4 + v8) == a3))
    {
      v9 = (v4 + OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber);
      swift_beginAccess();
      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      swift_endAccess();
      v10 = a2 << 13;
      v11 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      v16 = sub_100009D88();
      *(v12 + 64) = v16;
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      v17 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v16;
      *(v12 + 72) = v17;
      *(v12 + 80) = v18;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v19 = [a1 audioSession];
      v29[0] = 0;
      LODWORD(v10) = [v19 setPreferredMicrophoneInjectionMode:v10 error:v29];

      v20 = v29[0];
      if (v10)
      {

        v21 = v20;
      }

      else
      {
        v22 = v29[0];
        v23 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v24 = sub_100010B20();
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10057D690;
        v29[0] = v23;
        swift_errorRetain();
        sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
        v26 = String.init<A>(reflecting:)();
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = v16;
        *(v25 + 32) = v26;
        *(v25 + 40) = v27;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }
    }

    else
    {
      v28 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

id sub_1003C4B7C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_DelayTimeInSecondsToAllowAudioRingBufferToClear] = 0x3FE0624DD2F1A9FCLL;
  *&v0[OBJC_IVAR____TtC13callservicesd28MicrophoneInjectionUtilities_mMessageSequenceNumber] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id uplinkAndDownlinkAudioPlayer(for:delegate:volume:)(uint64_t a1, uint64_t a2, float a3)
{
  swift_getObjectType();

  return sub_1003C4C58(a1, a2, a3);
}

id sub_1003C4C58(uint64_t a1, uint64_t a2, float a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v39[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v39[-1] - v14;
  v16 = *(v7 + 16);
  v16(&v39[-1] - v14, a1, v6);
  v17 = objc_allocWithZone(AVAudioPlayer);
  v18 = sub_10039F99C(v15);
  [v18 setNumberOfLoops:0];
  *&v19 = a3;
  [v18 setVolume:v19];
  [v18 setDelegate:a2];
  v20 = [objc_opt_self() auxiliarySession];
  v39[0] = 0;
  if ([v20 setCategory:AVAudioSessionCategoryVoiceOver withOptions:1 error:v39])
  {
    v21 = v39[0];
    [v18 setAudioSession:v20];
    v22 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10057D6A0;
    v16(v12, a1, v6);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100009D88();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    *(v23 + 96) = &type metadata for Float;
    *(v23 + 104) = &protocol witness table for Float;
    *(v23 + 72) = a3;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v27 = v39[0];
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = sub_100010B20();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D6A0;
    v16(v12, a1, v6);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    v34 = sub_100009D88();
    *(v30 + 64) = v34;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v39[0] = v28;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v35 = String.init<A>(reflecting:)();
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v34;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v18;
}

unint64_t sub_1003C5070()
{
  result = qword_1006A8F10;
  if (!qword_1006A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InjectionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003C51D0(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1003C5204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003C5588();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1003C5258@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003C51D0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003C528C(uint64_t a1)
{
  v2 = sub_1003C5588();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1003C52C8(uint64_t a1)
{
  v2 = sub_1003C5588();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1003C5324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003C5588();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

unint64_t sub_1003C53C0()
{
  result = qword_1006A8F78;
  if (!qword_1006A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F78);
  }

  return result;
}

unint64_t sub_1003C542C()
{
  result = qword_1006A8F80;
  if (!qword_1006A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F80);
  }

  return result;
}

unint64_t sub_1003C5484()
{
  result = qword_1006A8F88;
  if (!qword_1006A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F88);
  }

  return result;
}

unint64_t sub_1003C54DC()
{
  result = qword_1006A8F90;
  if (!qword_1006A8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F90);
  }

  return result;
}

unint64_t sub_1003C5534()
{
  result = qword_1006A8F98;
  if (!qword_1006A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F98);
  }

  return result;
}

unint64_t sub_1003C5588()
{
  result = qword_1006A8FA0;
  if (!qword_1006A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8FA0);
  }

  return result;
}

void sub_1003C55DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA610);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Begin observing AVAudioClient mute state change", v7, 2u);
      sub_100005F40();
    }

    v13[4] = a1;
    v13[5] = a2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1003C57F4;
    v13[3] = &unk_10062CED0;
    v8 = _Block_copy(v13);
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA610);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Removing observer for AVAudioClient mute state change", v12, 2u);
      sub_100005F40();

      sub_1000115CC(0);
    }

    else
    {
    }

    v8 = 0;
  }

  [objc_opt_self() setMuteStateChangedHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1003C57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void *sub_1003C5878()
{
  v1 = type metadata accessor for AVAudioClientMuteStateHandlerProvider();
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = 0;
  v0[6] = 0;
  v2 = swift_allocObject();
  v0[10] = v1;
  v0[11] = &off_10062CEC0;
  v0[7] = v2;
  v0[4] = 2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = v0[5];
  v5 = v0[6];
  v0[5] = sub_1003C5E18;
  v0[6] = v3;

  sub_1000051F8(v4);

  return v0;
}

uint64_t sub_1003C592C(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA610);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 67109378;
      *(v8 + 4) = a1 & 1;
      *(v8 + 8) = 2080;
      type metadata accessor for AVCAudioClientMuteReason(0);
      v10 = String.init<A>(reflecting:)();
      v12 = sub_10002741C(v10, v11, &v14);

      *(v8 + 10) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Handling avAudioClientMuteStateChanged %{BOOL}d with muteReason %s", v8, 0x12u);
      sub_100009B7C(v9);
    }

    v13 = sub_1003C5BF4(a2);
    sub_1003C5B84(a1 & 1, v13);
  }

  return result;
}

uint64_t sub_1003C5AEC()
{
  sub_100009AB0(v0 + 56, v4);
  sub_100009B14(v4, v4[3]);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1000115CC(v1);
  sub_1003C55DC(v1, v2);
  sub_1000051F8(v1);
  return sub_100009B7C(v4);
}

uint64_t sub_1003C5B84(uint64_t result, char a2)
{
  if (*(v2 + 16))
  {
    v4 = result;
    swift_unknownObjectRetain();
    sub_1003C6BAC(v4 & 1, a2 & 1, 2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C5BF4(uint64_t result)
{
  if (result != 1)
  {
    v11[7] = v1;
    v11[8] = v2;
    if (result)
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720();
      }

      v3 = type metadata accessor for Logger();
      sub_10000AF9C(v3, qword_1006BA610);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11[0] = v7;
        *v6 = 136315138;
        type metadata accessor for AVCAudioClientMuteReason(0);
        v8 = String.init<A>(reflecting:)();
        v10 = sub_10002741C(v8, v9, v11);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v4, v5, "Unknown AVCAudioClientMuteReason %s defaulting to MuteProvenance.clientInitiated", v6, 0xCu);
        sub_100009B7C(v7);
        sub_100005F40();
        sub_100005F40();
      }
    }

    return 0;
  }

  return result;
}

void *sub_1003C5D3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  sub_1000051F8(v0[5]);
  sub_100009B7C(v0 + 7);
  return v0;
}

uint64_t sub_1003C5D6C()
{
  sub_1003C5D3C();

  return _swift_deallocClassInstance(v0, 96, 7);
}

id sub_1003C5E20(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_1002A2154(0xD000000000000017, 0x8000000100572870);
  if (!v4)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringForKey:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0x8000000100572890;
    v8 = 0xD00000000000004BLL;
  }

  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat];
  *v12 = v8;
  v12[1] = v10;
  v15.receiver = v11;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithQueue:", a1);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_1003C5FC8(void *a1)
{
  v3 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = v19 - v6;
  result = [a1 remoteMember];
  if (result)
  {
    v9 = result;
    v10 = [result handle];

    v11 = [v10 value];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v19[2] = v12;
    v19[3] = v14;
    v15 = *(v1 + OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat + 8);
    v19[0] = *(v1 + OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat);
    v19[1] = v15;
    v16 = type metadata accessor for Locale();
    sub_10000AF74(v7, 1, 1, v16);
    sub_10001E364();

    StringProtocol.range<A>(of:options:range:locale:)();
    v18 = v17;
    sub_1003C620C(v7);

    if (v18)
    {
      [a1 setFilteredOutReason:9];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C620C(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1003C6274(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v5 = type metadata accessor for AVAudioSessionProvider();
  v16[3] = v5;
  v16[4] = &off_1006275B0;
  v16[0] = swift_allocObject();
  type metadata accessor for AudioStateObserverFactory();
  v6 = swift_allocObject();
  v7 = sub_10001BDB8(v16, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7, v7);
  v10 = (&v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v6[5] = v5;
  v6[6] = &off_1006275B0;
  v6[2] = v12;
  sub_100009B7C(v16);
  v13 = sub_1003C6D7C(a1, a2, v4, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_1003C643C(int a1, char a2, uint64_t a3)
{
  v23 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v22 = *(result + OBJC_IVAR___CSDAudioStateHandler_queue);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a3;
    *(v19 + 32) = a2 & 1;
    *(v19 + 33) = v23 & 1;
    aBlock[4] = sub_1003C7134;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CFF8;
    v20 = _Block_copy(aBlock);
    v21 = v18;
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v6 + 8))(v10, v5);
    (*(v12 + 8))(v16, v11);
  }

  return result;
}

void sub_1003C6700(char *a1, id a2, char a3, char a4)
{
  v6 = OBJC_IVAR___CSDAudioStateHandler_currentCall;
  v7 = *&a1[OBJC_IVAR___CSDAudioStateHandler_currentCall];
  if (!v7)
  {
LABEL_10:
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000AF9C(v20, qword_1006BA610);
    v21 = a1;
    v42 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v22))
    {
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v23 = 136315650;
      type metadata accessor for CSDAudioInterruptionProviderType(0);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_10002741C(v24, v25, &v43);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = *&a1[v6];
      if (v27)
      {
        [v27 audioInterruptionProviderType];
        v28 = String.init<A>(reflecting:)();
        v30 = v29;
      }

      else
      {
        v30 = 0xE300000000000000;
        v28 = 7104878;
      }

      v35 = sub_10002741C(v28, v30, &v43);

      *(v23 + 14) = v35;
      *(v23 + 22) = 2080;
      v36 = *&a1[v6];
      v37 = v36;
      v38 = sub_100291454(v36);
      v40 = v39;

      v41 = sub_10002741C(v38, v40, &v43);

      *(v23 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v42, v22, "Mute state changed handler invoked for %s despite frontmost call not being configured for %s: %s", v23, 0x20u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_20;
  }

  v42 = v7;
  if ([v42 audioInterruptionProviderType]!= a2)
  {

    goto LABEL_10;
  }

  if (a3)
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA610);
    v11 = v42;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43 = v15;
      *v14 = 67109378;
      *(v14 + 4) = a4 & 1;
      *(v14 + 8) = 2080;
      sub_100024570();
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = sub_10002741C(v17, v18, &v43);

      *(v14 + 10) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Mute state changed handler invoked, performing setUplinkMuted %{BOOL}d for call: %s", v14, 0x12u);
      sub_100009B7C(v15);
    }

    [*&a1[OBJC_IVAR___CSDAudioStateHandler_delegate] performSetUplinkMuted:a4 & 1 forCall:v11 userInitiated:0];
    return;
  }

  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA610);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Mute state changed handler invoked but muteReason was clientInitiated: muteReason should already be set on call", v34, 2u);
  }

LABEL_20:
}

uint64_t sub_1003C6BAC(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler);
  if (v4)
  {
    v7 = result;
    v8 = *(v3 + OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler + 8);

    v4(v7 & 1, a2 & 1, a3);

    return sub_1000051F8(v4);
  }

  return result;
}

id sub_1003C6C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioStateHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003C6D7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for AudioStateObserverFactory();
  v18[3] = v8;
  v18[4] = &off_10062C320;
  v18[0] = a4;
  v9 = objc_allocWithZone(type metadata accessor for AudioStateHandler());
  v10 = sub_10001BDB8(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10, v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1003C6EA4(a1, a2, a3, *v13, v9);
  sub_100009B7C(v18);
  return v15;
}

char *sub_1003C6EA4(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v27[3] = type metadata accessor for AudioStateObserverFactory();
  v27[4] = &off_10062C320;
  v27[0] = a4;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_currentCall] = 0;
  v10 = &a5[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a5[OBJC_IVAR___CSDAudioStateHandler_audioStateObserver];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_queue] = a1;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_delegate] = a2;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_callCenterObserver] = a3;
  sub_100009AB0(v27, &a5[OBJC_IVAR___CSDAudioStateHandler_factory]);
  v26.receiver = a5;
  v26.super_class = type metadata accessor for AudioStateHandler();
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = objc_msgSendSuper2(&v26, "init");
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  v17 = *&v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  v18 = *&v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler + 8];
  *v16 = sub_1003C7128;
  v16[1] = v15;
  v19 = v14;

  sub_1000051F8(v17);

  v20 = OBJC_IVAR___CSDAudioStateHandler_callCenterObserver;
  result = *&v19[OBJC_IVAR___CSDAudioStateHandler_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:-2147483647];
    v22 = *&v19[v20];
    if (v22)
    {
      swift_unknownObjectRetain();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      aBlock[4] = sub_10002FE20;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100028100;
      aBlock[3] = &unk_10062CF58;
      v24 = _Block_copy(aBlock);

      [v22 setCallChanged:v24];
      _Block_release(v24);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100009B7C(v27);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003C71A8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = sub_1003C7950(v2, v3, v1, &selRef_cellularDataEnabledForBundleId_);

    return (v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C721C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TinCanIDSProviderDelegateCapabilities();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1003C72C4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = TUPreferredFaceTimeBundleIdentifier();
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    LOBYTE(v2) = sub_1003C7950(v3, v5, v1, &selRef_wifiAllowedForBundleId_);
    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C736C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v36 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v35 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for IDSProviderDelegateCapabilities();
  v29 = objc_msgSendSuper2(&v38, "init");
  sub_1002A8914();
  (*(v22 + 104))(v28, enum case for DispatchQoS.QoSClass.background(_:), v19);
  v30 = v29;
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v28, v19);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1003C7948;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D138;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v36 + 8))(v9, v1);
  (*(v12 + 8))(v18, v35);

  return v30;
}

void sub_1003C76B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003C72C4();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    (*((swift_isaMask & *v2) + 0x68))();
  }
}

id sub_1003C7870(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result *a2];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C78EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003C7950(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 *a4];

  return v7;
}

id sub_1003C79AC()
{
  swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = sub_1003C7A28(result);
    swift_deallocPartialClassInstance();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C7A28(void *a1)
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B81C(_swiftEmptyArrayStorage);
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  v5 = objc_allocWithZone(v1);
  *&v5[OBJC_IVAR___CSDConversationInvitationResolver_deviceInvitationPreferences] = v4;
  v8.receiver = v5;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

uint64_t sub_1003C7ADC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a3)
  {
    v8 = *(a2 + 16);
    v9 = (a2 + 32);
    v10 = a3;
    v11 = v8 + 1;
    while (--v11)
    {
      v12 = v9 + 2;
      v13 = *v9;

      sub_1003C833C(v10, v13);
      v15 = v14;

      v9 = v12;
      if (v15)
      {
        goto LABEL_7;
      }
    }

    sub_1003C80A8(*(v4 + OBJC_IVAR___CSDConversationInvitationResolver_deviceInvitationPreferences), 0, v10, a1);
    if (v16 == 2)
    {
LABEL_7:
      v17 = (a2 + 40);
      v18 = v8 + 1;
      while (--v18)
      {
        v19 = v17 + 16;
        v20 = *v17;
        v21 = *(v17 - 1);

        sub_1003C80A8(v22, v20, v10, a1);
        v24 = v23;
        v25 = v23;

        v17 = v19;
        if (v25 != 2)
        {
          goto LABEL_13;
        }
      }

      return a4 & 1;
    }

    v24 = v16;
LABEL_13:

    a4 = v24;
  }

  return a4 & 1;
}

uint64_t sub_1003C7C74(void *a1, void *a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v7 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 32) = v8;
  *(inited + 40) = 0;
  LOBYTE(a2) = sub_1003C7ADC(a3, inited, a2, 1u);
  swift_setDeallocating();
  sub_1002F5D1C();
  return a2 & 1;
}

uint64_t sub_1003C7DC0(void *a1, void *a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = a3;
  *(inited + 40) = 1;

  v7 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 48) = v8;
  *(inited + 56) = 0;
  LOBYTE(a2) = sub_1003C7ADC(4, inited, a2, 1u);
  swift_setDeallocating();
  sub_1002F5D1C();
  return a2 & 1;
}

BOOL sub_1003C7F60(void *a1, void *a2)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v5 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 32) = v6;
  *(inited + 40) = 0;
  LOBYTE(a2) = sub_1003C7ADC(8, inited, a2, 0);
  swift_setDeallocating();
  sub_1002F5D1C();
  return (a2 & 1) == 0;
}

void sub_1003C80A8(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003C8570();
    sub_1003C85B4();
    Set.Iterator.init(_cocoa:)();
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1003C8570(), swift_dynamicCast(), (v14 = v20) == 0))
      {
LABEL_20:
        sub_100022DDC();
        return;
      }

      goto LABEL_16;
    }

    v12 = v7;
    v13 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v8 = (v13 - 1) & v13;
    v14 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_16:
    v15 = [v14 handleType];
    if (v15 == [a3 type])
    {
      if ([v14 notificationStyles])
      {
        sub_100022DDC();

        return;
      }

      v16 = [v14 notificationStyles];

      if ((a4 & ~v16) == 0 || (a2 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v13 = *(v5 + 8 * v7);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003C833C(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003C8570();
    sub_1003C85B4();
    Set.Iterator.init(_cocoa:)();
    v2 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v19 = v5;
  v11 = (v5 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v18 = [v16 handleType];
        if (v18 == [a1 type])
        {
          break;
        }

        v6 = v14;
        v7 = v15;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = __CocoaSet.Iterator.next()();
        if (v17)
        {
          v20 = v17;
          sub_1003C8570();
          swift_dynamicCast();
          v16 = v21;
          v14 = v6;
          v15 = v7;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      [v16 notificationStyles];
      sub_100008758();
    }

    else
    {
LABEL_19:
      sub_100008758();
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1003C8570()
{
  result = qword_1006A2680;
  if (!qword_1006A2680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2680);
  }

  return result;
}

unint64_t sub_1003C85B4()
{
  result = qword_1006A2688;
  if (!qword_1006A2688)
  {
    sub_1003C8570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2688);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationInvitationResolver.InvitationPreferencesPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003C86EC()
{
  result = qword_1006A92E8;
  if (!qword_1006A92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A92E8);
  }

  return result;
}

void *sub_1003C8740(uint64_t a1, void *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession();
    sub_10000F030(&qword_1006A4890, &type metadata accessor for ActivitySession);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = _swiftEmptyArrayStorage;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v35 = (v13 - 1) & v13;
    v15 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
LABEL_31:
      sub_10031E890();

      return v11;
    }

    while (1)
    {
      v17 = dispatch thunk of ActivitySession.activity.getter();
      v18 = [v17 isStaticActivity];

      if (v18)
      {
        v27 = 0u;
        v28 = 0u;
      }

      else
      {
        v19 = [objc_opt_self() activitySessionWithCSDConversationActivitySession:v15 fromConversation:a2 forStorage:1];
        v20 = dispatch thunk of ActivitySession.activity.getter();
        v21 = [v20 originator];

        if (!v21)
        {
          result = [v19 activity];
          if (!result)
          {
            goto LABEL_33;
          }

          v21 = result;
          [result setOriginatorHandle:0];
        }

        *(&v28 + 1) = sub_100006AF0(0, &qword_1006A9340, off_100616658);
        *&v27 = v19;
      }

      if (*(&v28 + 1))
      {
        sub_10003EBF0(&v27, v29);
        sub_10003EBF0(v29, &v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = v11[2];
          sub_1004705AC();
          v11 = v24;
        }

        v22 = v11[2];
        if (v22 >= v11[3] >> 1)
        {
          sub_1004705AC();
          v11 = v25;
        }

        v11[2] = v22 + 1;
        result = sub_10003EBF0(&v27, &v11[4 * v22 + 4]);
      }

      else
      {
        result = sub_1000099A4(&v27, &unk_1006A2D10, &unk_10057D940);
      }

      v6 = v14;
      v7 = v35;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        *&v27 = v16;
        type metadata accessor for ActivitySession();
        swift_dynamicCast();
        v15 = *&v29[0];
        v14 = v6;
        v35 = v7;
        if (*&v29[0])
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1003C8AD4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A4530, off_100616608);
    sub_10000CE3C(&qword_1006A5668, &qword_1006A4530, off_100616608);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
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

  v10 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_10031E890();
      return v10;
    }

    while (1)
    {
      v17 = [objc_opt_self() participantWithCSDConversationParticipant:v15];
      v23 = sub_100006AF0(0, &qword_1006A9338, off_100616678);
      *&v22 = v17;

      if (v23)
      {
        sub_10003EBF0(&v22, v24);
        sub_10003EBF0(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v10[2];
          sub_1004705AC();
          v10 = v20;
        }

        v18 = v10[2];
        if (v18 >= v10[3] >> 1)
        {
          sub_1004705AC();
          v10 = v21;
        }

        v10[2] = v18 + 1;
        result = sub_10003EBF0(&v22, &v10[4 * v18 + 4]);
      }

      else
      {
        result = sub_1000099A4(&v22, &unk_1006A2D10, &unk_10057D940);
      }

      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        *&v22 = v16;
        sub_100006AF0(0, &qword_1006A4530, off_100616608);
        swift_dynamicCast();
        v15 = *&v24[0];
        v13 = v5;
        v14 = v6;
        if (*&v24[0])
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C8DD0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
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

  v10 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_10031E890();
      return v10;
    }

    while (1)
    {
      v17 = [objc_opt_self() memberWithTUConversationMember:v15];
      v23 = sub_100006AF0(0, &qword_1006A21E8, off_100616670);
      *&v22 = v17;

      if (v23)
      {
        sub_10003EBF0(&v22, v24);
        sub_10003EBF0(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v10[2];
          sub_1004705AC();
          v10 = v20;
        }

        v18 = v10[2];
        if (v18 >= v10[3] >> 1)
        {
          sub_1004705AC();
          v10 = v21;
        }

        v10[2] = v18 + 1;
        result = sub_10003EBF0(&v22, &v10[4 * v18 + 4]);
      }

      else
      {
        result = sub_1000099A4(&v22, &unk_1006A2D10, &unk_10057D940);
      }

      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        *&v22 = v16;
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v15 = *&v24[0];
        v13 = v5;
        v14 = v6;
        if (*&v24[0])
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C90CC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
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

  v10 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_27:
      sub_10031E890();
      return v10;
    }

    while (1)
    {
      v17 = [objc_opt_self() memberWithTUConversationMember:v15];
      if ([v15 validationSource] == 1)
      {
        [v17 setValidationSource:1];
      }

      v23 = sub_100006AF0(0, &qword_1006A21E8, off_100616670);
      *&v22 = v17;

      if (v23)
      {
        sub_10003EBF0(&v22, v24);
        sub_10003EBF0(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v10[2];
          sub_1004705AC();
          v10 = v20;
        }

        v18 = v10[2];
        if (v18 >= v10[3] >> 1)
        {
          sub_1004705AC();
          v10 = v21;
        }

        v10[2] = v18 + 1;
        result = sub_10003EBF0(&v22, &v10[4 * v18 + 4]);
      }

      else
      {
        result = sub_1000099A4(&v22, &unk_1006A2D10, &unk_10057D940);
      }

      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        *&v22 = v16;
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v15 = *&v24[0];
        v13 = v5;
        v14 = v6;
        if (*&v24[0])
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C93F4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v27;
    v3 = v28;
    v5 = v29;
    v4 = v30;
    v6 = v31;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
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

    v4 = 0;
  }

  v10 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v4;
    v12 = v6;
    v13 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_28:
      sub_10031E890();
      return v10;
    }

    while (1)
    {
      v17 = [objc_opt_self() handleWithTUHandle:v15];
      if (v17)
      {
        v18 = v17;
        v26 = sub_100006AF0(0, &qword_1006AA800, off_100616680);
        *&v25 = v18;
        sub_10003EBF0(&v25, &v23);
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      if (*(&v24 + 1))
      {
        sub_10003EBF0(&v23, &v25);
        sub_10003EBF0(&v25, &v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = v10[2];
          sub_1004705AC();
          v10 = v21;
        }

        v19 = v10[2];
        if (v19 >= v10[3] >> 1)
        {
          sub_1004705AC();
          v10 = v22;
        }

        v10[2] = v19 + 1;
        result = sub_10003EBF0(&v23, &v10[4 * v19 + 4]);
      }

      else
      {
        result = sub_1000099A4(&v23, &unk_1006A2D10, &unk_10057D940);
      }

      v4 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        *&v23 = v16;
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        v15 = v25;
        v13 = v4;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1003C9798()
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  sub_10000F9FC();
  strcpy(v15, "conversation-");
  HIWORD(v15[1]) = -4864;
  v9 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v5 + 8))(v1, v2);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

void sub_1003C98BC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v91 - v11;
  v13 = type metadata accessor for UUID();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v23)
  {
    v91 = v23;
    v92 = v1;
    v24 = v23;
    v25 = [v3 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = *(v16 + 8);
    v29(v22, v13);
    sub_1003CE928(v26, v28, v24, &selRef_setUUIDString_);
    v30 = [v3 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = UUID.uuidString.getter();
    v33 = v32;
    v29(v22, v13);
    sub_1003CE928(v31, v33, v24, &selRef_setGroupUUIDString_);
    v34 = [v3 messagesGroupUUID];
    if (v34)
    {
      v35 = v34;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    sub_10000AF74(v9, v36, 1, v13);
    sub_100286068(v9, v12);
    if (sub_100015468(v12, 1, v13) == 1)
    {
      sub_1000099A4(v12, &unk_1006A3DD0, &unk_10057C9D0);
      v37 = 0;
    }

    else
    {
      UUID.uuidString.getter();
      v29(v12, v13);
      v37 = String._bridgeToObjectiveC()();
    }

    [v24 setMessagesGroupUUIDString:v37];

    sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
    v38 = [v3 activitySessions];
    type metadata accessor for ActivitySession();
    sub_10000F030(&qword_1006A4890, &type metadata accessor for ActivitySession);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v3;
    sub_1003C8740(v39, v40);

    v41 = sub_1003EF6B0();
    [v24 setActivitySessions:v41];

    v42 = [v40 stagedActivitySession];
    if (v42)
    {
      v43 = v42;
      v44 = [objc_opt_self() activitySessionWithTUConversationActivitySession:v42 fromConversation:v40 forStorage:1];
      [v24 setStagedActivitySession:v44];
    }

    v45 = [v40 avMode];
    if (v45 >> 31)
    {
      __break(1u);
    }

    else
    {
      [v24 setAvMode:v45];
      v46 = [v40 localMember];
      v47 = [objc_opt_self() memberWithTUConversationMember:v46];

      [v24 setLocalMember:v47];
      [v24 setLocallyCreated:{objc_msgSend(v40, "isLocallyCreated")}];
      v48 = [v40 initiator];
      v49 = [objc_opt_self() handleWithTUHandle:v48];

      [v24 setInitiator:v49];
      v50 = [v40 activeRemoteParticipants];
      sub_100007DD4();
      sub_100006AF0(v51, v52, v53);
      sub_100007DD4();
      sub_10000CE3C(v54, v55, v56);
      v57 = sub_100015B50();

      sub_1003C8AD4(v57);

      v58 = sub_1003EF6B0();
      [v24 setActiveRemoteParticipants:v58];

      v59 = [v40 activeLightweightParticipants];
      v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C8AD4(v60);

      v61 = sub_1003EF6B0();
      [v24 setActiveLightweightParticipants:v61];

      v62 = [v40 remoteMembers];
      sub_100007DD4();
      sub_100006AF0(v63, v64, v65);
      sub_100007DD4();
      sub_10000CE3C(v66, v67, v68);
      v69 = sub_100015B50();

      sub_1003C8DD0(v69);

      v70 = sub_1003EF6B0();
      [v24 setRemoteMembers:v70];

      v71 = [v40 lightweightMembers];
      v72 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C90CC(v72);

      v73 = sub_1003EF6B0();
      [v24 setLightweightMembers:v73];

      v74 = [v40 otherInvitedHandles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v75 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C93F4(v75);

      v76 = sub_1003EF6B0();
      [v24 setOtherInvitedHandles:v76];

      v77 = [v40 report];
      v78 = [objc_allocWithZone(CSDMessagingConversationReport) initWithTUConversationReport:v77];

      [v24 setReportData:v78];
      v79 = [v40 link];
      if (v79)
      {
        v80 = v79;
        v81 = [objc_opt_self() linkWithTUConversationLink:v79 includeGroupUUID:1];
        [v24 setLink:v81];
      }

      v82 = [v40 provider];
      v83 = [v82 identifier];

      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      sub_1003CE928(v84, v86, v24, &selRef_setConversationProviderIdentifier_);
      if ([v24 hasUUIDString] && objc_msgSend(v24, "hasGroupUUIDString") && objc_msgSend(v24, "hasLocalMember") && objc_msgSend(v24, "hasInitiator"))
      {

        goto LABEL_21;
      }

      if (qword_1006A0AA0 == -1)
      {
LABEL_20:
        static os_log_type_t.error.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_10057D690;
        v93 = v24;
        v88 = sub_10031E8A0(&v93, v92);
        v90 = v89;
        *(v87 + 56) = &type metadata for String;
        *(v87 + 64) = sub_100009D88();
        *(v87 + 32) = v88;
        *(v87 + 40) = v90;
        os_log(_:dso:log:type:_:)();

        goto LABEL_21;
      }
    }

    sub_100008134();
    goto LABEL_20;
  }

LABEL_21:
  sub_100005EDC();
}

id sub_1003CA2DC(void *a1, void *a2, char *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &a3[OBJC_IVAR___CSDConversationPersistenceController_storage];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *&a3[OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver] = 0;
  *&a3[OBJC_IVAR___CSDConversationPersistenceController_queue] = a1;
  sub_100006AF0(0, &qword_1006A2E88, NSUserDefaults_ptr);
  v17 = a1;
  sub_1002A1E7C(aBlock);
  swift_beginAccess();
  sub_100326B84(aBlock, v16);
  swift_endAccess();
  v18 = type metadata accessor for ConversationPersistenceController();
  v36.receiver = a3;
  v36.super_class = v18;
  v19 = objc_msgSendSuper2(&v36, "init");
  v20 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(v19 + v20, aBlock, &qword_1006A5868, &unk_1005805F0);
  if (v33)
  {

    sub_1000099A4(aBlock, &qword_1006A5868, &unk_1005805F0);
  }

  else
  {
    sub_1000099A4(aBlock, &qword_1006A5868, &unk_1005805F0);
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = v17;
    v21[4] = v19;
    v21[5] = sub_1003250F0;
    v21[6] = 0;
    v34 = sub_1003CE9F8;
    v35 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    v33 = &unk_10062D380;
    v22 = _Block_copy(aBlock);
    v23 = a2;
    v24 = v19;
    v25 = v17;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000F030(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v30 + 8))(v10, v6);
    (*(v28 + 8))(v15, v29);
  }

  return v19;
}

void sub_1003CA6CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:a2];
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v15[4] = sub_1003CEA08;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100004CEC;
  v15[3] = &unk_10062D3F8;
  v12 = _Block_copy(v15);
  v13 = a1;

  [v9 performBlockAfterFirstUnlock:v12];
  _Block_release(v12);
  v14 = *(a3 + OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver);
  *(a3 + OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver) = v9;
}

void sub_1003CA82C(uint64_t a1, void (*a2)(void *__return_ptr))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2(v6);
    v5 = OBJC_IVAR___CSDConversationPersistenceController_storage;
    swift_beginAccess();
    sub_100326B84(v6, v4 + v5);
    swift_endAccess();
  }
}

id sub_1003CA8C8(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConversationPersistenceController());
  v3 = sub_1003CA2DC(a1, 0, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1003CA974(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v42[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v42[-1] - v12;
  result = TUSimulatedModeEnabled();
  if ((result & 1) == 0)
  {
    result = [a1 isFromStorage];
    if ((result & 1) == 0)
    {
      v15 = [a1 remoteMembers];
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = sub_10001E550(v16);

      if (v17 >= 2)
      {
        sub_100006AF0(0, &qword_1006A9330, off_100616650);
        v18 = a1;
        sub_1003C98BC();
        if (v19)
        {
          v20 = v19;
          if (qword_1006A0AA0 != -1)
          {
            swift_once();
          }

          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_10057D690;
          v22 = [v18 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 16))(v10, v13, v4);
          v23 = String.init<A>(reflecting:)();
          v25 = v24;
          (*(v5 + 8))(v13, v4);
          *(v21 + 56) = &type metadata for String;
          *(v21 + 64) = sub_100009D88();
          *(v21 + 32) = v23;
          *(v21 + 40) = v25;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v26 = OBJC_IVAR___CSDConversationPersistenceController_storage;
          swift_beginAccess();
          sub_100335188(a2 + v26, v46, &qword_1006A5868, &unk_1005805F0);
          if (v47)
          {
            sub_100009AB0(v46, v43);
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
            v27 = v44;
            v28 = v45;
            sub_100009B14(v43, v44);
            v29 = sub_1003F7B24(v20);
            if (v30 >> 60 == 15)
            {
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v42[2] = 0;
            }

            else
            {
              v31 = &type metadata for Data;
            }

            v42[0] = v29;
            v42[1] = v30;
            v42[3] = v31;
            v37 = sub_1003C9798();
            (*(v28 + 8))(v42, v37, v38, v27, v28);

            sub_1000099A4(v42, &unk_1006A2D10, &unk_10057D940);
            sub_100009B7C(v43);
          }

          else
          {
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
          }

          sub_1003C9798();
          sub_1003CD89C();

          sub_100335188(a2 + v26, v46, &qword_1006A5868, &unk_1005805F0);
          if (v47)
          {
            sub_100009AB0(v46, v43);
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
            v39 = v44;
            v40 = v45;
            sub_100009B14(v43, v44);
            (*(v40 + 24))(v39, v40);

            return sub_100009B7C(v43);
          }

          else
          {

            return sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
          }
        }

        else
        {
          if (qword_1006A0AA0 != -1)
          {
            swift_once();
          }

          static os_log_type_t.error.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_10057D690;
          v33 = [v18 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 16))(v10, v13, v4);
          v34 = String.init<A>(reflecting:)();
          v36 = v35;
          (*(v5 + 8))(v13, v4);
          *(v32 + 56) = &type metadata for String;
          *(v32 + 64) = sub_100009D88();
          *(v32 + 32) = v34;
          *(v32 + 40) = v36;
          os_log(_:dso:log:type:_:)();
        }
      }
    }
  }

  return result;
}

void sub_1003CB008()
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
  v32 = sub_100007CD8();
  v15 = sub_100007FEC(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v31 = *&v0[OBJC_IVAR___CSDConversationPersistenceController_queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 24) = v0;
  v33[4] = v5;
  v33[5] = v24;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v33[2] = v25;
  v33[3] = v3;
  v26 = _Block_copy(v33);
  v27 = v7;
  v28 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v29, v30);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v11 + 8))(v1, v8);
  (*(v17 + 8))(v23, v32);

  sub_100005EDC();
}

uint64_t sub_1003CB20C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = v27 - v12;
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  v15 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v10, v13, v4);
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  (*(v5 + 8))(v13, v4);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009D88();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v19 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(a2 + v19, v31, &qword_1006A5868, &unk_1005805F0);
  if (v32)
  {
    sub_100009AB0(v31, v28);
    sub_1000099A4(v31, &qword_1006A5868, &unk_1005805F0);
    v20 = v29;
    v21 = v30;
    sub_100009B14(v28, v29);
    memset(v27, 0, sizeof(v27));
    v22 = sub_1003C9798();
    (*(v21 + 8))(v27, v22, v23, v20, v21);

    sub_1000099A4(v27, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v28);
  }

  else
  {
    sub_1000099A4(v31, &qword_1006A5868, &unk_1005805F0);
  }

  sub_1003C9798();
  sub_1003CDCF4();

  sub_100335188(a2 + v19, v31, &qword_1006A5868, &unk_1005805F0);
  if (!v32)
  {
    return sub_1000099A4(v31, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100009AB0(v31, v28);
  sub_1000099A4(v31, &qword_1006A5868, &unk_1005805F0);
  v24 = v29;
  v25 = v30;
  sub_100009B14(v28, v29);
  (*(v25 + 24))(v24, v25);
  return sub_100009B7C(v28);
}

void sub_1003CB638()
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
  v18 = v17 - v16;
  v19 = *&v0[OBJC_IVAR___CSDConversationPersistenceController_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v26[4] = sub_1003CE9A0;
  v26[5] = v20;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v21;
  v26[3] = &unk_10062D268;
  v22 = _Block_copy(v26);
  v23 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v24, v25);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v5 + 8))(v1, v2);
  (*(v12 + 8))(v18, v9);

  sub_100005EDC();
}

uint64_t sub_1003CB840(uint64_t a1)
{
  v2 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  v25 = v2;
  sub_100335188(a1 + v2, v30, &qword_1006A5868, &unk_1005805F0);
  if (!v31)
  {
    return sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100009AB0(v30, v27);
  sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  v3 = v28;
  v4 = v29;
  sub_100009B14(v27, v28);
  v5 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  (*(v4 + 16))(v26, v5, 0xD00000000000001ALL, 0x8000000100572B30, v5, v3, v4);
  v6 = *&v26[0];
  result = sub_100009B7C(v27);
  if (v6)
  {
    v8 = 0;
    v23 = a1;
    v24 = *(v6 + 16);
    v9 = &qword_1006A5868;
    v10 = &unk_1005805F0;
    v11 = (v6 + 40);
    while (v24 != v8)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = *(v11 - 1);
      v13 = *v11;
      sub_100335188(a1 + v25, v30, v9, v10);
      if (v31)
      {
        sub_100009AB0(v30, v27);

        sub_1000099A4(v30, v9, v10);
        v14 = v6;
        v15 = v10;
        v16 = v9;
        v18 = v28;
        v17 = v29;
        sub_100009B14(v27, v28);
        memset(v26, 0, sizeof(v26));
        v19 = *(v17 + 8);
        v20 = v17;
        v9 = v16;
        v10 = v15;
        v6 = v14;
        a1 = v23;
        v19(v26, v12, v13, v18, v20);
        sub_1000099A4(v26, &unk_1006A2D10, &unk_10057D940);
        sub_100009B7C(v27);
      }

      else
      {

        sub_1000099A4(v30, v9, v10);
      }

      sub_1003CDCF4();

      v11 += 2;
      ++v8;
    }

    sub_100335188(a1 + v25, v30, &qword_1006A5868, &unk_1005805F0);
    if (!v31)
    {
      return sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
    }

    sub_100009AB0(v30, v27);
    sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
    v21 = v28;
    v22 = v29;
    sub_100009B14(v27, v28);
    (*(v22 + 24))(v21, v22);
    return sub_100009B7C(v27);
  }

  return result;
}

void sub_1003CBBA0()
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
  v13 = sub_100007CD8();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v23 = *&v0[OBJC_IVAR___CSDConversationPersistenceController_queue];
  v24 = swift_allocObject();
  v24[2] = v0;
  v24[3] = v5;
  v24[4] = v3;
  v30[4] = sub_1003CE994;
  v30[5] = v24;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v25;
  v30[3] = &unk_10062D218;
  v26 = _Block_copy(v30);
  v27 = v0;

  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v28, v29);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v9 + 8))(v1, v6);
  (*(v16 + 8))(v22, v13);

  sub_100005EDC();
}

void sub_1003CBDBC(uint64_t a1, void (*a2)(_BYTE *, _BYTE *, _BYTE *, void, id, id, void *, void *, void *, unint64_t, id, id *, void *, uint64_t, void *, id *, uint64_t, _BOOL8), uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v167 = &v147[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9, v11);
  v168 = &v147[-v13];
  __chkstk_darwin(v12, v14);
  v170 = &v147[-v15];
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v169 = &v147[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20, v22);
  v171 = &v147[-v23];
  sub_1003CE0A8();
  v24 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  v179 = v24;
  sub_100335188(a1 + v24, &v185, &qword_1006A5868, &unk_1005805F0);
  if (!v187)
  {
    sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
    return;
  }

  v166 = a2;
  sub_100009AB0(&v185, &v182);
  sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
  v25 = v183;
  v26 = v184;
  sub_100009B14(&v182, v183);
  v27 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  (*(v26 + 16))(&v180, v27, 0xD00000000000001ALL, 0x8000000100572B30, v27, v25, v26);
  v28 = v180;
  sub_100009B7C(&v182);
  if (!v28)
  {
    return;
  }

  v178 = *(v28 + 16);
  if (!v178)
  {
LABEL_145:

    return;
  }

  v163 = a3;
  v29 = 0;
  v177 = v28 + 32;
  v165 = (v17 + 32);
  v164 = (v17 + 8);
  v175 = xmmword_10057D690;
  v176 = v28;
  v174 = v16;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    v30 = (v177 + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_100335188(a1 + v179, &v185, &qword_1006A5868, &unk_1005805F0);
    if (v187)
    {
      break;
    }

    sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
LABEL_17:
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v46 = swift_allocObject();
    *(v46 + 16) = v175;
    v185 = v31;
    v186 = v32;
    v47 = String.init<A>(reflecting:)();
    v49 = v48;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_100009D88();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    os_log(_:dso:log:type:_:)();

LABEL_20:
    v28 = v176;
LABEL_54:
    if (++v29 == v178)
    {
      goto LABEL_145;
    }
  }

  sub_100009AB0(&v185, &v182);

  sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
  v33 = v183;
  v34 = v184;
  sub_100009B14(&v182, v183);
  v35 = *(v34 + 16);
  v36 = v34;
  v37 = v174;
  v35(&v180, &type metadata for Data, v31, v32, &type metadata for Data, v33, v36);
  v38 = v180;
  sub_100009B7C(&v182);
  if (*(&v38 + 1) >> 60 == 15)
  {
    goto LABEL_17;
  }

  v39 = objc_allocWithZone(CSDMessagingConversation);
  sub_100290AC4(v38, *(&v38 + 1));
  v172 = v38;
  v40 = sub_100290A00(v38, *(&v38 + 1));
  v173 = *(&v38 + 1);
  if (!v40)
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v50 = swift_allocObject();
    *(v50 + 16) = v175;
    v185 = v31;
    v186 = v32;

    v51 = String.init<A>(reflecting:)();
    v53 = v52;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100009D88();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    os_log(_:dso:log:type:_:)();

    sub_100335188(a1 + v179, &v185, &qword_1006A5868, &unk_1005805F0);
    if (v187)
    {
      sub_100009AB0(&v185, &v182);
      sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
      v54 = v183;
      v55 = v184;
      sub_100009B14(&v182, v183);
      v180 = 0u;
      v181 = 0u;
      (*(v55 + 8))(&v180, v31, v32, v54, v55);
      sub_1000099A4(&v180, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(&v182);
    }

    else
    {
      sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
    }

    v28 = v176;
    v56 = v172;
    sub_1003CDCF4();
    v57 = v56;
    goto LABEL_53;
  }

  v41 = v40;
  if (![v40 hasUUIDString] || !objc_msgSend(v41, "hasGroupUUIDString") || !objc_msgSend(v41, "hasLocalMember") || !objc_msgSend(v41, "hasInitiator"))
  {
    goto LABEL_47;
  }

  sub_10001B8C8(v41, &selRef_uUIDString);
  if (!v42)
  {
    goto LABEL_160;
  }

  v43 = v170;
  UUID.init(uuidString:)();
  v44 = v43;

  if (sub_100015468(v43, 1, v37) == 1)
  {
    v45 = v43;
    goto LABEL_30;
  }

  v58 = *v165;
  (*v165)(v171, v44, v37);
  sub_10001B8C8(v41, &selRef_groupUUIDString);
  if (!v59)
  {
    goto LABEL_161;
  }

  v60 = v168;
  UUID.init(uuidString:)();

  if (sub_100015468(v60, 1, v37) == 1)
  {
    (*v164)(v171, v37);
    v45 = v60;
LABEL_30:
    sub_1000099A4(v45, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_47:
    v75 = a1;
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v76 = swift_allocObject();
    *(v76 + 16) = v175;
    v185 = v41;
    sub_100006AF0(0, &qword_1006A9330, off_100616650);
    v77 = v41;
    v78 = String.init<A>(reflecting:)();
    v80 = v79;
    *(v76 + 56) = &type metadata for String;
    *(v76 + 64) = sub_100009D88();
    *(v76 + 32) = v78;
    *(v76 + 40) = v80;
    os_log(_:dso:log:type:_:)();

    a1 = v75;
    sub_100335188(v75 + v179, &v185, &qword_1006A5868, &unk_1005805F0);
    if (v187)
    {
      sub_100009AB0(&v185, &v182);
      sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
      v81 = v183;
      v82 = v184;
      sub_100009B14(&v182, v183);
      v180 = 0u;
      v181 = 0u;
      (*(v82 + 8))(&v180, v31, v32, v81, v82);
      sub_1000099A4(&v180, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(&v182);
    }

    else
    {
      sub_1000099A4(&v185, &qword_1006A5868, &unk_1005805F0);
    }

    v28 = v176;
    sub_1003CDCF4();

    v57 = v172;
LABEL_53:
    sub_100290B6C(v57, v173);

    goto LABEL_54;
  }

  v58(v169, v60, v37);
  v61 = [v41 localMember];
  if (!v61)
  {
    goto LABEL_162;
  }

  v62 = v61;
  v63 = [v61 tuConversationMember];

  if (!v63)
  {
LABEL_46:
    v74 = *v164;
    (*v164)(v169, v37);
    v74(v171, v37);
    goto LABEL_47;
  }

  v64 = [v41 initiator];
  if (!v64)
  {
    goto LABEL_163;
  }

  v65 = v64;
  v66 = [v64 tuHandle];

  v156 = v66;
  if (!v66)
  {
LABEL_45:

    goto LABEL_46;
  }

  v67 = [v41 remoteMembers];
  if (!v67 || (v68 = v67, v185 = 0, sub_100006AF0(0, &qword_1006A21E8, off_100616670), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v68, (v162 = v185) == 0))
  {
LABEL_44:

    goto LABEL_45;
  }

  v69 = [v41 activeRemoteParticipants];
  if (!v69 || (v70 = v69, v185 = 0, v161 = sub_100006AF0(0, &qword_1006A9338, off_100616678), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v70, (v159 = v185) == 0))
  {

    goto LABEL_44;
  }

  v71 = [v41 lightweightMembers];
  if (v71)
  {
    v72 = v71;
    v185 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v73 = v185;
    if (!v185)
    {
      v73 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  v160 = v73;
  v83 = [v41 activeLightweightParticipants];
  if (v83)
  {
    v84 = v83;
    v185 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v85 = v185;
    if (!v185)
    {
      v85 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  v157 = v85;
  sub_10001B8C8(v41, &selRef_messagesGroupUUIDString);
  v152 = v63;
  if (v86)
  {

    sub_10001B8C8(v41, &selRef_messagesGroupUUIDString);
    if (!v87)
    {
      goto LABEL_164;
    }

    UUID.init(uuidString:)();
  }

  else
  {
    sub_10000AF74(v167, 1, 1, v37);
  }

  v148 = [v41 locallyCreated];
  v185 = _swiftEmptyArrayStorage;
  v88 = v162;
  v161 = sub_10000B6F4(v162);
  v89 = 0;
  v158 = v88 & 0xC000000000000001;
  v90 = v88 & 0xFFFFFFFFFFFFFF8;
  v155 = _swiftEmptyArrayStorage;
  while (v161 != v89)
  {
    if (v158)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v89 >= *(v90 + 16))
      {
        goto LABEL_149;
      }

      v91 = v162[v89 + 4];
    }

    v92 = (v89 + 1);
    if (__OFADD__(v89, 1))
    {
      goto LABEL_150;
    }

    v93 = v91;
    v94 = [v91 tuConversationMember];

    ++v89;
    if (v94)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v155 = v185;
      v89 = v92;
    }
  }

  v185 = _swiftEmptyArrayStorage;
  v95 = v160;
  v161 = sub_10000B6F4(v160);
  v96 = 0;
  v158 = v95 & 0xC000000000000001;
  v97 = v95 & 0xFFFFFFFFFFFFFF8;
  v154 = _swiftEmptyArrayStorage;
  while (v161 != v96)
  {
    if (v158)
    {
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v96 >= *(v97 + 16))
      {
        goto LABEL_151;
      }

      v98 = v160[v96 + 4];
    }

    v99 = v98;
    v100 = (v96 + 1);
    if (__OFADD__(v96, 1))
    {
      goto LABEL_152;
    }

    v101 = [v98 tuConversationMember];
    if ([v99 hasValidationSource] && objc_msgSend(v99, "validationSource") == 1)
    {
      if (!v101)
      {

LABEL_88:
        ++v96;
        continue;
      }

      v102 = v101;
      [v102 setValidationSource:1];
    }

    else
    {

      if (!v101)
      {
        goto LABEL_88;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v154 = v185;
    v96 = v100;
  }

  v149 = a1;
  v185 = _swiftEmptyArrayStorage;
  v103 = v159;
  v104 = sub_10000B6F4(v159);
  v105 = 0;
  v161 = (v103 & 0xC000000000000001);
  v106 = v103 & 0xFFFFFFFFFFFFFF8;
  v151 = _swiftEmptyArrayStorage;
  while (v104 != v105)
  {
    if (v161)
    {
      v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v105 >= *(v106 + 16))
      {
        goto LABEL_154;
      }

      v107 = v159[v105 + 4];
    }

    v108 = v107;
    v109 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      goto LABEL_153;
    }

    v110 = [v107 csdConversationParticipant];

    ++v105;
    if (v110)
    {
      v158 = v110;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v151 = v185;
      v105 = v109;
    }
  }

  v185 = _swiftEmptyArrayStorage;
  v111 = v157;
  v112 = sub_10000B6F4(v157);
  v113 = 0;
  v161 = (v111 & 0xC000000000000001);
  v114 = v111 & 0xFFFFFFFFFFFFFF8;
  v150 = _swiftEmptyArrayStorage;
  while (v112 != v113)
  {
    if (v161)
    {
      v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v113 >= *(v114 + 16))
      {
        goto LABEL_155;
      }

      v115 = v157[v113 + 4];
    }

    v116 = v115;
    v117 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      goto LABEL_156;
    }

    v118 = [v115 csdConversationParticipant];

    ++v113;
    if (v118)
    {
      v158 = v118;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v150 = v185;
      v113 = v117;
    }
  }

  v119 = [v41 otherInvitedHandles];
  a1 = v149;
  if (v119 && (v120 = v119, v185 = 0, sub_100006AF0(0, &qword_1006AA800, off_100616680), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v120, (v121 = v185) != 0))
  {
    v185 = _swiftEmptyArrayStorage;
    v161 = sub_10000B6F4(v121);
    v122 = 0;
    v158 = v121 & 0xC000000000000001;
    v123 = v121;
    v124 = v121 & 0xFFFFFFFFFFFFFF8;
    v153 = _swiftEmptyArrayStorage;
    while (v161 != v122)
    {
      if (v158)
      {
        v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v122 >= *(v124 + 16))
        {
          goto LABEL_158;
        }

        v125 = *(v123 + 8 * v122 + 32);
      }

      v126 = (v122 + 1);
      if (__OFADD__(v122, 1))
      {
        goto LABEL_157;
      }

      v127 = v125;
      v128 = [v125 tuHandle];

      ++v122;
      if (v128)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v153 = v185;
        v122 = v126;
      }
    }

    a1 = v149;
    v129 = v153;
  }

  else
  {
    v129 = _swiftEmptyArrayStorage;
  }

  if (![v41 hasReportData])
  {

    v162 = [objc_allocWithZone(TUConversationReport) init];
LABEL_135:
    v161 = [v41 tuConversationLink];
    v132 = [v41 activitySessions];
    if (v132)
    {
      v133 = v132;
      v185 = 0;
      sub_100006AF0(0, &qword_1006A9340, off_100616658);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v185)
      {
        v134 = v185;
      }

      else
      {
        v134 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v134 = _swiftEmptyArrayStorage;
    }

    v135 = sub_10001B8C8(v41, &selRef_conversationProviderIdentifier);
    v137 = v136;
    v138 = [v41 hasAvMode];
    v153 = v129;
    if (v138)
    {
      v139 = [v41 avMode];
      if ((v139 & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      v140 = v137;
      v141 = v139;
    }

    else
    {
      v140 = v137;
      v141 = 2;
    }

    v185 = v151;
    sub_100414310(v150);
    v142 = v185;
    v158 = v185;
    v159 = [v41 stagedActivitySession];
    v145 = v141;
    v146 = v141 == 0;
    v160 = v140;
    v143 = v156;
    v166(v171, v169, v167, v148, v152, v156, v155, v154, v153, v142, v161, v162, v134, v135, v140, v159, v145, v146);

    sub_100290B6C(v172, v173);
    sub_1000099A4(v167, &unk_1006A3DD0, &unk_10057C9D0);
    v144 = *v164;
    (*v164)(v169, v37);
    v144(v171, v37);
    goto LABEL_20;
  }

  v130 = [v41 reportData];
  if (v130)
  {
    v131 = v130;

    v162 = [v131 tuConversationReport];

    goto LABEL_135;
  }

LABEL_165:
  __break(1u);
}

void sub_1003CD5DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v46 = a5;
  v47 = a6;
  v44 = a4;
  v45 = a19;
  v40 = a13;
  v41 = a15;
  v39 = a10;
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v35 - v23;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v42 = UUID._bridgeToObjectiveC()().super.isa;
  sub_100335188(a3, v24, &unk_1006A3DD0, &unk_10057C9D0);
  v25 = type metadata accessor for UUID();
  v26 = 0;
  if (sub_100015468(v24, 1, v25) != 1)
  {
    v26 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v25 - 8) + 8))(v24, v25);
  }

  v36 = a16;
  v37 = a12;
  v38 = a11;
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A4530, off_100616608);
  v30.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A9340, off_100616658);
  v31.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v41)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  v34 = v42;
  v33 = isa;
  (*(v45 + 16))(v45, isa, v42, v26, v44 & 1, v46, v47, v27.super.isa, v28.super.isa, v29.super.isa, v30.super.isa, v38, v37, v31.super.isa, v32, v36, a17, a18);
}

void sub_1003CD89C()
{
  sub_100005EF4();
  v4 = sub_100016384();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10000F9FC();
  v11 = *(v0 + OBJC_IVAR___CSDConversationPersistenceController_queue);
  *v1 = v11;
  v12 = sub_1000114A8(v7);
  v13(v12);
  v14 = v11;
  _dispatchPreconditionTest(_:)();
  v15 = sub_100015E10();
  v16(v15);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_100008134();
    goto LABEL_9;
  }

  v17 = sub_10000D4DC();
  sub_100017DEC(v17, v18, &qword_1006A5868, &unk_1005805F0);
  if (v43)
  {
    sub_100009AB0(&v41, v38);
    sub_1000099A4(&v41, &qword_1006A5868, &unk_1005805F0);
    v19 = v40;
    sub_100009B14(v38, v39);
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v20 = *(v19 + 16);
    sub_100017318();
    v21();
    v4 = v37[0];
    sub_100009B7C(v38);
    if (v37[0])
    {

      goto LABEL_7;
    }
  }

  else
  {
    sub_1000099A4(&v41, &qword_1006A5868, &unk_1005805F0);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_7:
  v41 = v3;
  v42 = v2;
  __chkstk_darwin(v22, v23);
  v24 = sub_100013094();

  if (v24)
  {
    goto LABEL_14;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_19;
  }

LABEL_9:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10057D690;
  v41 = v3;
  v42 = v2;

  v28 = String.init<A>(reflecting:)();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100009D88();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = v4[2];
    sub_100017840();
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v31 = v4[2];
  if (v31 >= v4[3] >> 1)
  {
    sub_100017840();
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v4[2] = v31 + 1;
  v32 = &v4[2 * v31];
  v32[4] = v3;
  v32[5] = v2;
LABEL_14:
  sub_100017DEC(isUniquelyReferenced_nonNull_native, v26, &qword_1006A5868, &unk_1005805F0);
  if (v43)
  {
    sub_100009AB0(&v41, v38);
    sub_1000099A4(&v41, &qword_1006A5868, &unk_1005805F0);
    v33 = v40;
    sub_100009B14(v38, v39);
    v37[3] = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v37[0] = v4;
    v34 = *(v33 + 8);
    sub_100017318();
    v35();
    sub_1000099A4(v37, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v38);
  }

  else
  {

    sub_1000099A4(&v41, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100005EDC();
}

void sub_1003CDCF4()
{
  sub_100005EF4();
  v4 = sub_100016384();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10000F9FC();
  v11 = *(v0 + OBJC_IVAR___CSDConversationPersistenceController_queue);
  *v1 = v11;
  v12 = sub_1000114A8(v7);
  v13(v12);
  v14 = v11;
  _dispatchPreconditionTest(_:)();
  v15 = sub_100015E10();
  v16(v15);
  if (v11)
  {
    v17 = sub_10000D4DC();
    sub_100017DEC(v17, v18, &qword_1006A5868, &unk_1005805F0);
    if (!v44)
    {
      goto LABEL_13;
    }

    sub_100009AB0(v43, v40);
    sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);
    v19 = v42;
    sub_100009B14(v40, v41);
    v1 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v20 = *(v19 + 16);
    sub_100017318();
    v21();
    v4 = v39[0];
    sub_100009B7C(v40);
    if (!v39[0])
    {
LABEL_14:
      sub_100005EDC();
      return;
    }

    v22 = sub_1003C970C(v3, v2, v39[0]);
    if (v23)
    {

      goto LABEL_14;
    }

    v11 = v22;
    if (qword_1006A0AA0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008134();
LABEL_7:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10057D690;
  v43[0] = v3;
  v43[1] = v2;

  v25 = String.init<A>(reflecting:)();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100009D88();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100470D34(v4);
    v4 = v38;
  }

  v28 = *(v4 + 16);
  if (v11 < v28)
  {
    v29 = v28 - 1;
    v30 = v28 - 1 - v11;
    v31 = v4 + 16 * v11;
    v32 = *(v31 + 40);
    sub_100060528((v31 + 48), v30, (v31 + 32));
    *(v4 + 16) = v29;

    sub_100017DEC(v33, v34, &qword_1006A5868, &unk_1005805F0);
    if (v44)
    {
      sub_100009AB0(v43, v40);
      sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);
      v35 = v42;
      sub_100009B14(v40, v41);
      v39[3] = v1;
      v39[0] = v4;
      v36 = *(v35 + 8);
      sub_100017318();
      v37();
      sub_1000099A4(v39, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(v40);
      goto LABEL_14;
    }

LABEL_13:
    sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1003CE0A8()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  sub_10000F9FC();
  v10 = *&v2[OBJC_IVAR___CSDConversationPersistenceController_queue];
  *v1 = v10;
  v11 = sub_1000114A8(v6);
  v12(v11);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v1, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(&v2[v14], v28, &qword_1006A5868, &unk_1005805F0);
  if (v29)
  {
    sub_100009AB0(v28, v25);
    sub_1000099A4(v28, &qword_1006A5868, &unk_1005805F0);
    v15 = v27;
    sub_100009B14(v25, v26);
    v16 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v17 = *(v15 + 16);
    sub_100017318();
    v18();
    sub_100009B7C(v25);
    if (!v24[0])
    {
      return;
    }

    v30 = v24[0];
    sub_1003CE568(&v30, v2);
    v20 = *(v30 + 16);
    if (v20 >= v19)
    {
      sub_1003CE48C(v19, v20);
      sub_100335188(&v2[v14], v28, &qword_1006A5868, &unk_1005805F0);
      if (v29)
      {
        sub_100009AB0(v28, v25);
        sub_1000099A4(v28, &qword_1006A5868, &unk_1005805F0);
        v21 = v27;
        sub_100009B14(v25, v26);
        v24[3] = v16;
        v24[0] = v30;
        v22 = *(v21 + 8);
        sub_100017318();
        v23();
        sub_1000099A4(v24, &unk_1006A2D10, &unk_10057D940);
        sub_100009B7C(v25);
        return;
      }

      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_8:
  sub_1000099A4(v28, &qword_1006A5868, &unk_1005805F0);
}

id sub_1003CE3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationPersistenceController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003CE48C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100420424(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100060528((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1003CE568(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v39 = *(*a1 + 16);
  v4 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  v37 = a2;
  v48 = a2;
  v40 = v4;
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  for (i = &qword_1006A5868; ; i = v10)
  {
    if (v39 == v6)
    {
      v15 = v37;

      v16 = *(v3 + 16);
LABEL_27:

      return;
    }

    v8 = *(v3 + v5 + 32);
    v9 = *(v3 + v5 + 40);
    sub_100335188(v48 + v40, v46, i, &unk_1005805F0);
    if (!v47)
    {
      sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);

      goto LABEL_9;
    }

    sub_100009AB0(v46, v43);

    v10 = i;
    sub_1000099A4(v46, i, &unk_1005805F0);
    v12 = v44;
    v11 = v45;
    sub_100009B14(v43, v44);
    (*(v11 + 16))(&v41, &type metadata for Data, v8, v9, &type metadata for Data, v12, v11);
    v13 = v41;
    v14 = v42;
    sub_100009B7C(v43);
    if (v14 >> 60 == 15)
    {
      break;
    }

    sub_100290B6C(v13, v14);

    ++v6;
    v5 += 16;
  }

LABEL_9:
  v17 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v18 = *(v3 + 16);
      if (v17 == v18)
      {
        v15 = v37;
        goto LABEL_27;
      }

      if (v17 >= v18)
      {
        break;
      }

      v19 = v3 + v5;
      v20 = *(v3 + v5 + 48);
      v21 = *(v3 + v5 + 56);
      sub_100335188(v48 + v40, v46, &qword_1006A5868, &unk_1005805F0);
      if (v47)
      {
        sub_100009AB0(v46, v43);

        sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
        v22 = v44;
        v23 = v45;
        sub_100009B14(v43, v44);
        (*(v23 + 16))(&v41, &type metadata for Data, v20, v21, &type metadata for Data, v22, v23);
        v24 = v41;
        v25 = v42;
        sub_100009B7C(v43);
        if (v25 >> 60 == 15)
        {
        }

        else
        {
          sub_100290B6C(v24, v25);

          if (v17 != v6)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_29;
            }

            v26 = *(v3 + 16);
            if (v6 >= v26)
            {
              goto LABEL_30;
            }

            if (v17 >= v26)
            {
              goto LABEL_31;
            }

            v27 = (v3 + 32 + 16 * v6);
            v29 = *v27;
            v28 = v27[1];
            v31 = *(v19 + 48);
            v30 = *(v19 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100470D34(v3);
              v3 = v36;
            }

            v32 = v3 + 16 * v6;
            v33 = *(v32 + 40);
            *(v32 + 32) = v31;
            *(v32 + 40) = v30;

            if (v17 >= *(v3 + 16))
            {
              goto LABEL_32;
            }

            v34 = v3 + v5;
            v35 = *(v3 + v5 + 56);
            *(v34 + 48) = v29;
            *(v34 + 56) = v28;

            *a1 = v3;
          }

          ++v6;
        }
      }

      else
      {
        sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
      }

      ++v17;
      v5 += 16;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
}

void sub_1003CE928(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_1003CEA1C(uint64_t a1)
{
  sub_1003CED1C(a1);
  v2 = sub_1002F1DF4(v1);
  sub_1003CEA7C(v2);
  v4 = v3;

  return v4 & 1;
}

void sub_1003CEA7C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
    sub_10000CE3C(&qword_1006A3890, &unk_1006A47D0, CXHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v2 = a1 + 56;
    v6 = *(a1 + 56);
    v3 = ~(-1 << *(a1 + 32));
    sub_1000082B4();
    v5 = v7 & v8;

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_17;
      }

      sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
      swift_dynamicCast();
      v12 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_10:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_14:
    v13 = v1;
    v14 = [v12 value];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 allowCallForDestinationID:v14 providerIdentifier:v16];

    LODWORD(v16) = [v17 isFromBlockList];
    v1 = v13;
    if (v16)
    {
LABEL_17:
      sub_100022DDC();
      return;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1003CED1C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v44;
    v2 = v45;
    v4 = v46;
    v3 = v47;
    v5 = v48;
  }

  else
  {
    v2 = a1 + 56;
    v6 = *(a1 + 56);
    v4 = ~(-1 << *(a1 + 32));
    sub_1000082B4();
    v5 = v7 & v8;

    v3 = 0;
  }

  v39 = v4;
  v9 = (v4 + 64) >> 6;
  v40 = v2;
  v41 = v1;
LABEL_5:
  v10 = v3;
  v11 = v5;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr), swift_dynamicCast(), v15 = v43, v3 = v10, v14 = v11, !v43))
    {
LABEL_29:
      sub_100022DDC();
      return;
    }

LABEL_15:
    v16 = [v15 handles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v17 & 0xC000000000000001;
    v42 = v14;
    if ((v17 & 0xC000000000000001) != 0)
    {
      __CocoaSet.startIndex.getter();
      v19 = __CocoaSet.endIndex.getter();
      v21 = v20;
      sub_10000A148();
      v22 = static __CocoaSet.Index.== infix(_:_:)();
      sub_100010000(v19, v21, 1);
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = 0;
      v24 = (v17 + 56);
      v25 = 1 << *(v17 + 32);
      v26 = (v25 + 63) >> 6;
      if (v26)
      {
        while (!*v24)
        {
          v23 -= 64;
          --v26;
          ++v24;
          if (!v26)
          {
            goto LABEL_21;
          }
        }

        v28 = *(v17 + 36);
        if (__clz(__rbit64(*v24)) - v25 != v23)
        {
LABEL_24:
          v33 = sub_10000A148();
          sub_10001E580(v33, v34, v18 != 0, v17);
          v32 = v35;
          v36 = sub_10000A148();
          sub_100010000(v36, v37, v18 != 0);
          goto LABEL_25;
        }
      }

      else
      {
LABEL_21:
        v27 = *(v17 + 36);
      }
    }

    v29 = sub_10000A148();
    sub_100010000(v29, v30, v31);
    v32 = 0;
LABEL_25:
    v1 = v41;

    v38 = [objc_opt_self() handleWithTUHandle:v32];

    v10 = v3;
    v5 = v42;
    v11 = v42;
    v9 = (v4 + 64) >> 6;
    v2 = v40;
    if (v38)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_5;
    }
  }

  v12 = v10;
  v13 = v11;
  v3 = v10;
  if (v11)
  {
LABEL_11:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v9)
    {
      goto LABEL_29;
    }

    v13 = *(v2 + 8 * v3);
    ++v12;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1003CF2FC()
{
  sub_1003CF4DC(319, &qword_1006A93E0, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  if (v0 <= 0x3F)
  {
    sub_1003CF530(319, &qword_1006A93E8);
    if (v1 <= 0x3F)
    {
      sub_1003CF4DC(319, &qword_1006A93F0, type metadata accessor for RingtoneDescriptor);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SoundDescriptorAction();
        if (v3 <= 0x3F)
        {
          sub_1003CF530(319, &qword_1006A93F8);
          if (v4 <= 0x3F)
          {
            sub_1003CF530(319, &qword_1006A9400);
            if (v5 <= 0x3F)
            {
              sub_1003CF530(319, &qword_1006A9408);
              if (v6 <= 0x3F)
              {
                sub_1003CF4DC(319, &qword_1006ABE50, type metadata accessor for CallTranslationDisclosureDescriptor);
                if (v7 <= 0x3F)
                {
                  sub_1003CF530(319, &unk_1006A9410);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1003CF4DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1003CF530(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1003CF57C(char *a1, char *a2)
{
  v146 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v4 = sub_100008070(v146);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = *(*(sub_10026D814(&unk_1006A2B50, &unk_1005811A0) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v12, v13);
  v144 = (&v134 - v14);
  v145 = sub_10026D814(&unk_1006ABE90, &qword_100585598);
  sub_100008070(v145);
  v16 = *(v15 + 64);
  sub_100006688();
  __chkstk_darwin(v17, v18);
  v20 = &v134 - v19;
  v150 = type metadata accessor for RingtoneDescriptor();
  v21 = sub_100008070(v150);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  sub_100007FDC();
  v147 = (v26 - v25);
  v27 = *(*(sub_10026D814(&qword_1006A61F0, &unk_10057D920) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v28, v29);
  v148 = (&v134 - v30);
  v149 = sub_10026D814(&qword_1006A9460, &qword_1005855A0);
  sub_100008070(v149);
  v32 = *(v31 + 64);
  sub_100006688();
  __chkstk_darwin(v33, v34);
  v151 = &v134 - v35;
  v36 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  v37 = sub_100008070(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  sub_100007FDC();
  v43 = v42 - v41;
  v44 = *(*(sub_10026D814(&unk_1006A2B60, &qword_100581170) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v45, v46);
  v48 = &v134 - v47;
  v49 = sub_10026D814(&qword_1006A9468, &qword_1005855A8);
  sub_100008070(v49);
  v51 = *(v50 + 64);
  sub_100006688();
  __chkstk_darwin(v52, v53);
  v55 = &v134 - v54;
  memcpy(v156, a1, sizeof(v156));
  memcpy(__dst, a2, 0xA8uLL);
  if ((sub_100400614(v156, __dst) & 1) == 0)
  {
    return 0;
  }

  v140 = v10;
  v141 = v20;
  v56 = type metadata accessor for AudioDescriptor();
  v57 = *(v56 + 20);
  v58 = *(v49 + 48);
  v142 = a1;
  v143 = v56;
  sub_100343100(&a1[v57], v55, &unk_1006A2B60, &qword_100581170);
  v59 = &a2[v57];
  v60 = a2;
  sub_100343100(v59, &v55[v58], &unk_1006A2B60, &qword_100581170);
  sub_100009F5C(v55);
  if (v61)
  {
    sub_100009F5C(&v55[v58]);
    if (v61)
    {
      sub_100009A04(v55, &unk_1006A2B60, &qword_100581170);
      goto LABEL_13;
    }

LABEL_10:
    v62 = &qword_1006A9468;
    v63 = &qword_1005855A8;
    v64 = v55;
LABEL_11:
    sub_100009A04(v64, v62, v63);
    return 0;
  }

  sub_100343100(v55, v48, &unk_1006A2B60, &qword_100581170);
  sub_100009F5C(&v55[v58]);
  if (v61)
  {
    sub_100049DC8(v48, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
    goto LABEL_10;
  }

  sub_100047DF0(&v55[v58], v43, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  v65 = static UUID.== infix(_:_:)();
  sub_100049DC8(v43, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  sub_100049DC8(v48, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  sub_100009A04(v55, &unk_1006A2B60, &qword_100581170);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v66 = v143[6];
  v67 = *&v142[v66];
  v68 = *&v142[v66 + 8];
  v69 = *&v142[v66 + 16];
  v70 = *&v142[v66 + 24];
  v71 = *&v142[v66 + 32];
  v72 = *&v142[v66 + 40];
  v73 = &v60[v66];
  v74 = *v73;
  v75 = *(v73 + 1);
  v76 = *(v73 + 2);
  v77 = *(v73 + 3);
  v78 = *(v73 + 4);
  v79 = *(v73 + 20);
  if (!v68)
  {
    if (!v75)
    {
      v134 = *(v73 + 2);
      v135 = v60;
      v93 = v67;
      v94 = v74;
      v95 = v69;
      sub_10004CB34(v67, 0, v69, v70, v71);
      sub_10004CB34(v94, 0, v134, v77, v78);
      sub_10005081C(v93, 0, v95, v70, v71);
      goto LABEL_21;
    }

LABEL_18:
    v137 = v67;
    v138 = v69;
    v90 = v74;
    v91 = v76;
    v139 = v70;
    v136 = v77;
    sub_10004CB34(v67, v68, v69, v70, v71);
    sub_10004CB34(v90, v75, v91, v77, v78);
    sub_10005081C(v137, v68, v138, v139, v71);
    sub_10005081C(v90, v75, v91, v136, v78);
    return 0;
  }

  if (!v75)
  {
    goto LABEL_18;
  }

  v135 = v60;
  v154[0] = v74;
  v154[1] = v75;
  v154[2] = v76;
  v154[3] = v77;
  v154[4] = v78;
  v155 = v79 & 0x101;
  v152[0] = v67;
  v152[1] = v68;
  v152[2] = v69;
  v152[3] = v70;
  v152[4] = v71;
  v153 = v72 & 0x101;
  v137 = v67;
  v138 = v69;
  v139 = v70;
  sub_10004CB34(v67, v68, v69, v70, v71);
  v80 = sub_100017324();
  sub_10004CB34(v80, v81, v82, v83, v84);
  LODWORD(v134) = sub_1003B6354(v152, v154);
  v85 = sub_100017324();
  sub_10005081C(v85, v86, v87, v88, v89);
  sub_10005081C(v137, v68, v138, v139, v71);
  if ((v134 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v96 = v142;
  v97 = *(v149 + 48);
  v98 = v151;
  sub_100343100(&v142[v143[7]], v151, &qword_1006A61F0, &unk_10057D920);
  v99 = v135;
  sub_1000114B8();
  if (sub_100015468(v98, 1, v150) == 1)
  {
    sub_100009F5C(v98 + v97);
    if (!v61)
    {
      goto LABEL_28;
    }

    sub_100009A04(v98, &qword_1006A61F0, &unk_10057D920);
  }

  else
  {
    v100 = v148;
    sub_100343100(v98, v148, &qword_1006A61F0, &unk_10057D920);
    sub_100009F5C(v98 + v97);
    if (v61)
    {
      sub_100049DC8(v100, type metadata accessor for RingtoneDescriptor);
LABEL_28:
      v62 = &qword_1006A9460;
      v63 = &qword_1005855A0;
LABEL_29:
      v64 = v98;
      goto LABEL_11;
    }

    v101 = v98 + v97;
    v102 = v147;
    sub_100047DF0(v101, v147, type metadata accessor for RingtoneDescriptor);
    v103 = sub_1003D4814(v100, v102);
    sub_100049DC8(v102, type metadata accessor for RingtoneDescriptor);
    sub_100049DC8(v100, type metadata accessor for RingtoneDescriptor);
    sub_100009A04(v98, &qword_1006A61F0, &unk_10057D920);
    if ((v103 & 1) == 0)
    {
      return 0;
    }
  }

  v104 = v143;
  if ((sub_10033BC20(&v96[v143[8]], &v99[v143[8]]) & 1) == 0)
  {
    return 0;
  }

  v105 = v104[9];
  v106 = &v96[v105];
  v107 = *&v96[v105 + 8];
  v108 = &v99[v105];
  v109 = v108[1];
  if (v107)
  {
    if (!v109)
    {
      return 0;
    }

    v110 = *v106;
    v111 = *(v106 + 2);
    v112 = *v108;
    v113 = v108[2];
    v114 = v113;
    v115 = v109;
    v116 = v110;
    v117 = v113;
    v96 = v142;
    v104 = v143;
    v118 = sub_10039D420(v116, v107, v111, v112, v115, v117);

    if (!v118)
    {
      return 0;
    }
  }

  else if (v109)
  {
    return 0;
  }

  v119 = v104[10];
  v120 = v96[v119];
  v121 = v99[v119];
  if (v120)
  {
    if (!v121)
    {
      return 0;
    }
  }

  else if (v121)
  {
    return 0;
  }

  v122 = v104[11];
  v123 = *&v96[v122] | ((*&v96[v122 + 4] | (v96[v122 + 6] << 16)) << 32);
  v124 = *&v99[v122] | ((*&v99[v122 + 4] | (v99[v122 + 6] << 16)) << 32);
  v125 = v124 & 0xFF000000000000;
  if ((v123 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v125 != 0x3000000000000)
    {
      return 0;
    }
  }

  else if (v125 == 0x3000000000000 || !sub_10029CDE8(v123 & 0xFF000000000000 | (((v123 >> 40) & 1) << 40) | v123 & 0xFFFFFFFFFFLL, v125 | (((v124 >> 40) & 1) << 40) | v124 & 0xFFFFFFFFFFLL))
  {
    return 0;
  }

  v126 = *(v145 + 48);
  v98 = v141;
  sub_100343100(&v96[v104[12]], v141, &unk_1006A2B50, &unk_1005811A0);
  sub_1000114B8();
  if (sub_100015468(v98, 1, v146) == 1)
  {
    sub_100009F5C(v98 + v126);
    if (!v61)
    {
      goto LABEL_53;
    }

    sub_100009A04(v98, &unk_1006A2B50, &unk_1005811A0);
  }

  else
  {
    v127 = v144;
    sub_100343100(v98, v144, &unk_1006A2B50, &unk_1005811A0);
    sub_100009F5C(v98 + v126);
    if (v61)
    {
      sub_100049DC8(v127, type metadata accessor for CallTranslationDisclosureDescriptor);
LABEL_53:
      v62 = &unk_1006ABE90;
      v63 = &qword_100585598;
      goto LABEL_29;
    }

    v128 = v98 + v126;
    v129 = v140;
    sub_100047DF0(v128, v140, type metadata accessor for CallTranslationDisclosureDescriptor);
    v130 = sub_100449CDC(v127, v129);
    sub_100049DC8(v129, type metadata accessor for CallTranslationDisclosureDescriptor);
    sub_100049DC8(v127, type metadata accessor for CallTranslationDisclosureDescriptor);
    sub_100009A04(v98, &unk_1006A2B50, &unk_1005811A0);
    if ((v130 & 1) == 0)
    {
      return 0;
    }
  }

  v131 = v143[13];
  v132 = v96[v131];
  v133 = v99[v131];
  if (v132)
  {
    if ((v133 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v133)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1003CFFA8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v9 - v8) = v11;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v1);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v10, v1);
  if (v11)
  {
    v14 = *(v0 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D00B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

uint64_t sub_1003D00D4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
    if (v12)
    {
      v13 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler + 8);
      v14 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
      sub_1000115CC(v12);

      v16 = sub_1003B6810(v15, a1);

      if ((v16 & 1) == 0)
      {
        v12(v17);
      }

      return sub_1000051F8(v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D0250(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
  *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes) = a1;
  sub_1003D00D4(v2);
}

id sub_1003D0298(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1003D030C(char **a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_22:
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D690;
  v37 = sub_100016F14();
  *(v15 + 56) = v37;
  v36 = sub_10000F078(&qword_1006A4E10, sub_100016F14);
  *(v15 + 64) = v36;
  *(v15 + 32) = a1;
  v39 = a1;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v38 = v1;
  v35 = OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes;
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
  v17 = sub_10000B6F4(v16);

  v18 = 0;
  a1 = &selRef_setWindowed_;
  while (1)
  {
    if (v17 == v18)
    {

      static os_log_type_t.error.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10057D6A0;
      *(v30 + 56) = v37;
      *(v30 + 64) = v36;
      *(v30 + 32) = v39;
      v31 = *(v38 + v35);
      *(v30 + 96) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
      sub_10000A5C0();
      *(v30 + 104) = sub_10001000C(v32, &unk_1006A7B70, &qword_100584DB0);
      *(v30 + 72) = v31;
      v33 = v39;

      os_log(_:dso:log:type:_:)();
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v21 = [v19 uniqueIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v39 uniqueIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v22 == v26 && v24 == v28)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v18;
    if (v1)
    {
    }
  }
}

uint64_t sub_1003D0718(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v59 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v64 = v10 - v9;
  v65 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v65);
  v63 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007FDC();
  v62 = v17 - v16;
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = (v26 - v25);
  v60 = type metadata accessor for DispatchWallTime();
  v28 = sub_100007FEC(v60);
  v30 = v29;
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v28, v33);
  v36 = v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v37);
  v39 = v58 - v38;
  v40 = type metadata accessor for DispatchPredicate();
  v41 = sub_100007FEC(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41, v46);
  sub_100007FDC();
  v49 = v48 - v47;
  v50 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v48 - v47) = v50;
  (*(v43 + 104))(v48 - v47, enum case for DispatchPredicate.onQueue(_:), v40);
  v58[1] = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  result = (*(v43 + 8))(v49, v40);
  if (v50)
  {
    static DispatchWallTime.now()();
    *v27 = TUTransferTimeout();
    (*(v21 + 104))(v27, enum case for DispatchTimeInterval.seconds(_:), v18);
    + infix(_:_:)();
    (*(v21 + 8))(v27, v18);
    v58[0] = *(v30 + 8);
    v52 = v39;
    v53 = v60;
    (v58[0])(v36, v60);
    aBlock[4] = v59;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062D470;
    v54 = _Block_copy(aBlock);

    v55 = v62;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_10000F078(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v56 = v64;
    v57 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v54);
    (*(v66 + 8))(v56, v57);
    (*(v63 + 8))(v55, v65);
    (v58[0])(v52, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D0CE4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_5:
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D690;
  *(v15 + 56) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
  sub_10000A5C0();
  *(v15 + 64) = sub_10001000C(v16, &unk_1006A7B70, &qword_100584DB0);
  *(v15 + 32) = a1;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return sub_1003D0250(v17);
}

id sub_1003D0EC4()
{
  v1 = sub_100432E00(v0);
  if (v2 || (v5 = [v0 localSenderIdentity]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, "handle"), v6, v7) && (v1 = sub_1004450C8(v7), v8))
  {
    v3 = v1;
LABEL_3:
    sub_1002DE970();
    return sub_100389560(2, v3);
  }

  v9 = [v0 localSenderIdentity];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 handle];

    if (v11)
    {
      v12 = [v11 value];

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1003D0FF4()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A94B0);
  v1 = sub_10000AF9C(v0, qword_1006A94B0);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003D10DC()
{
  v1 = v0[2];
  v2 = sub_1003D1628();
  v0[3] = v2;
  v3 = sub_10000B6F4(v2);
  v4 = IDSServiceNameFaceTimeMulti;
  v0[4] = v3;
  v0[5] = v4;
  v5 = v0[3];
  if (v3)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = v0[5];
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v3);
      }

      v6 = *(v5 + 32);
    }

    v7 = v0[2];
    v0[6] = v6;
    v0[7] = 1;
    v8 = v7[7];
    sub_100009B14(v7 + 3, v7[6]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[8] = v9;
    v10 = async function pointer to dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)[1];
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    sub_10000877C(v11);
    v3 = sub_10000A378();

    return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v3);
  }

  v12 = v0[3];

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_1003D138C(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1003D14AC, 0, 0);
}

uint64_t sub_1003D14AC()
{
  v1 = *(v0 + 80);

  if (v1)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);
    if (v3 != *(v0 + 32))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = *(v0 + 56);
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v2 = *(v4 + 8 * v3 + 32);
      }

      *(v0 + 48) = v2;
      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v6 = *(v0 + 40);
        v7 = *(v0 + 16);
        *(v0 + 56) = v5;
        v8 = v7[7];
        sub_100009B14(v7 + 3, v7[6]);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 64) = v9;
        v10 = async function pointer to dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)[1];
        v11 = swift_task_alloc();
        *(v0 + 72) = v11;
        *v11 = v0;
        sub_10000877C();
        v2 = sub_10000A378();

        return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
    }
  }

  else
  {
    v12 = *(v0 + 24);
  }

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1003D1628()
{
  v1 = [*(v0 + 16) handle];
  if (v1)
  {
    v2 = v1;
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    result = swift_allocObject();
    *(result + 16) = xmmword_10057CA80;
    *(result + 32) = v2;
  }

  else
  {
    sub_1003D1790();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1003D16D0()
{
  v1 = *(v0 + 16);
  result = sub_1003D0EC4();
  if (!result)
  {
    sub_1003D1790();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1003D172C()
{
  sub_100009B7C((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_1003D1790()
{
  result = qword_1006A9588;
  if (!qword_1006A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharePlayTelephonyIdentityProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003D18C4()
{
  result = qword_1006A9590;
  if (!qword_1006A9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9590);
  }

  return result;
}

id sub_1003D1918()
{
  if (qword_1006A0BC0 != -1)
  {
    sub_10000AA08();
  }

  v1 = qword_1006BA778;

  return v1;
}

NSString sub_1003D1964()
{
  sub_100007CF4();
  result = String._bridgeToObjectiveC()();
  qword_1006BA770 = result;
  return result;
}

NSString sub_1003D1998()
{
  sub_100007CF4();
  result = String._bridgeToObjectiveC()();
  qword_1006BA778 = result;
  return result;
}

id sub_1003D19F4(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for ApplicationInstallationObserver());
  v4 = a1;
  *&v2[OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver] = sub_10037DC0C(v4);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CallRecordingLaunchService();
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id sub_1003D1A78()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver);
  sub_100007CF4();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 applicationRecordWithBundleID:v2];

  return v3;
}

id sub_1003D1AE4()
{
  v0 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_10026D814(&qword_1006A95D0, &qword_100585778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = sub_1004557B0(v3);

  sub_1003D2CD4(v4, v0);
  return v0;
}

id sub_1003D1BB8()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver);
  sub_100007CF4();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 isApplicationInstalledWithBundleID:v2];

  return v3;
}

uint64_t sub_1003D1C1C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100008A24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_10000E598();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003D2518(v12, a2);
  if (qword_1006A0BB8 != -1)
  {
    swift_once();
  }

  v13 = qword_1006BA770;
  sub_10029E2DC();
  if (v14)
  {
    v14 = sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  }

  sub_100017340(v14);
  sub_10000FEE0();

  return (*(v8 + 8))(v3, v2);
}