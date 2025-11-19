void sub_10031BA74()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v183 = v6;
  v7 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v7);
  v9 = *(v8 + 64);
  sub_100006688();
  __chkstk_darwin(v10, v11);
  v13 = &v175 - v12;
  v184 = type metadata accessor for PendingMembershipInfo();
  v14 = sub_100008070(v184);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  sub_100007BAC();
  sub_100005FEC();
  __chkstk_darwin(v18, v19);
  v21 = &v175 - v20;
  v22 = type metadata accessor for UUID();
  v23 = sub_100007FEC(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  sub_100007BAC();
  v29 = v27 - v28;
  v32 = __chkstk_darwin(v30, v31);
  v34 = &v175 - v33;
  __chkstk_darwin(v32, v35);
  v38 = &v175 - v37;
  if (qword_1006A0A88 != -1)
  {
    sub_10000A7E0();
    v185 = v174;
    swift_once();
    v36 = v185;
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    v185 = v36;
    v182 = v21;
    v180 = v3;
    v41 = [v3 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v178 = v0;
    v177 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
    sub_100006DDC(v177, v42);
    v43 = v5;
    v44 = v38;
    v45 = [v5 handle];
    v46 = *v0;
    sub_10031CB04(v44, v13);

    v47 = sub_1000079BC();
    v49 = sub_100015468(v47, v48, v184);
    v179 = v22;
    v181 = v44;
    if (v49 == 1)
    {
      sub_100009A04(v13, &qword_1006A5640, &qword_100580310);
      v50 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10057E830;
      sub_10001006C();
      v53 = *(v52 + 16);
      v54 = sub_10000C204();
      v55(v54);
      v56 = String.init<A>(reflecting:)();
      v58 = v57;
      *(v51 + 56) = &type metadata for String;
      v59 = sub_100009D88();
      *(v51 + 64) = v59;
      *(v51 + 32) = v56;
      *(v51 + 40) = v58;
      v186 = [v5 handle];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v60 = String.init<A>(reflecting:)();
      *(v51 + 96) = &type metadata for String;
      *(v51 + 104) = v59;
      *(v51 + 72) = v60;
      *(v51 + 80) = v61;
      v186 = v5;
      v62 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      v63 = v5;
      v64 = String.init<A>(reflecting:)();
      *(v51 + 136) = &type metadata for String;
      *(v51 + 144) = v59;
      *(v51 + 112) = v64;
      *(v51 + 120) = v65;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v66 = v180;
      if ([v180 shouldRespondToLetMeInRequestForMember:v63])
      {
        sub_10000E6DC();
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_10057D690;
        v68 = [v63 handle];
        sub_100016F80();
        if (v70)
        {
          v186 = v69;
          v71 = String.init<A>(reflecting:)();
          *(v67 + 56) = &type metadata for String;
          *(v67 + 64) = v59;
          *(v67 + 32) = v71;
          *(v67 + 40) = v72;
          sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
          v73 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)();

          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          *(inited + 32) = v63;
          if (sub_10000B6F4(inited))
          {
            v75 = v63;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v143 = v63;
            sub_1002F5CC8();
          }

          sub_10000844C();
          sub_1002F93D0(v144, v145, v146);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100005F0C();

          if (sub_10000B6F4(_swiftEmptyArrayStorage))
          {
            sub_10039B7D4(_swiftEmptyArrayStorage);
          }

          sub_10000844C();
          sub_1002F93D0(v161, v162, v163);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v66 addRemoteMembers:v73 otherInvitedHandles:v62 triggeredLocally:1];
        }

        else
        {
          v186 = v69;
          v121 = String.init<A>(reflecting:)();
          *(v67 + 56) = &type metadata for String;
          *(v67 + 64) = v59;
          *(v67 + 32) = v121;
          *(v67 + 40) = v122;
          sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
          v123 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)();

          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          v124 = swift_initStackObject();
          *(v124 + 16) = xmmword_10057CA80;
          *(v124 + 32) = v63;
          if (sub_10000B6F4(v124))
          {
            v125 = v63;
            sub_10039B3B8(v124);
          }

          else
          {
            swift_setDeallocating();
            v149 = v63;
            sub_1002F5CC8();
          }

          sub_10000844C();
          sub_1002F93D0(v150, v151, v152);
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v66 removePendingMembers:isa triggeredLocally:1];

          v154 = [v66 delegate];
          if (v154)
          {
            [v154 conversationChanged:v66];
            swift_unknownObjectRelease();
          }
        }
      }

      v185[1](v181, v179);
      goto LABEL_61;
    }

    v76 = v182;
    sub_1002F6F18(v13, v182);
    *&v175 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_10057DDF0;
    sub_10031DF4C(v76, v1);
    sub_100008B74();
    v78 = String.init<A>(reflecting:)();
    v79 = v22;
    v81 = v80;
    *(v77 + 56) = &type metadata for String;
    v82 = sub_100009D88();
    *(v77 + 64) = v82;
    *(v77 + 32) = v78;
    *(v77 + 40) = v81;
    sub_100016F80();
    LOBYTE(v186) = v83 & 1;
    v84 = String.init<A>(reflecting:)();
    *(v77 + 96) = &type metadata for String;
    *(v77 + 104) = v82;
    *(v77 + 72) = v84;
    *(v77 + 80) = v85;
    v186 = v43;
    v86 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    v87 = v43;
    v176 = v86;
    v88 = String.init<A>(reflecting:)();
    *(v77 + 136) = &type metadata for String;
    *(v77 + 144) = v82;
    *(v77 + 112) = v88;
    *(v77 + 120) = v89;
    v90 = v180;
    v91 = [v180 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001006C();
    (*(v92 + 16))(v29, v34, v79);
    v93 = String.init<A>(reflecting:)();
    v95 = v94;
    sub_10001006C();
    v97 = *(v96 + 8);
    v185 = (v96 + 8);
    sub_10000EA00();
    sub_10001006C();
    v97();
    *(v77 + 176) = &type metadata for String;
    *(v77 + 184) = v82;
    *(v77 + 152) = v93;
    *(v77 + 160) = v95;
    v186 = v90;
    v98 = sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    v99 = v90;
    v100 = String.init<A>(reflecting:)();
    *(v77 + 216) = &type metadata for String;
    *(v77 + 224) = v82;
    *(v77 + 192) = v100;
    *(v77 + 200) = v101;
    static os_log_type_t.default.getter();
    v102 = v175;
    os_log(_:dso:log:type:_:)();

    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v103 = swift_initStackObject();
    v175 = xmmword_10057CA80;
    *(v103 + 16) = xmmword_10057CA80;
    v180 = v87;
    *(v103 + 32) = v87;
    if (sub_10000B6F4(v103))
    {
      sub_10003DB94();
      sub_10039B3B8(v103);
      v105 = v104;
    }

    else
    {
      swift_setDeallocating();
      sub_10003DB94();
      sub_1002F5CC8();
      v105 = &_swiftEmptySetSingleton;
    }

    sub_10000844C();
    sub_1002F93D0(v106, v107, v108);
    sub_10003DDC0();
    Set._bridgeToObjectiveC()();
    sub_100010160();
    [v99 removePendingMembers:v98 triggeredLocally:1];

    v109 = &v182[*(v184 + 20)];
    v111 = *v109;
    v110 = *(v109 + 1);
    if ((*(v109 + 2) & 0x2000000000000000) == 0)
    {
      sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_delegate);
      Strong = swift_unknownObjectWeakLoadStrong();

      v113 = sub_10000EA00();
      sub_100290AC4(v113, v114);
      sub_100016F80();
      if (v115)
      {
        v116 = v97;
        if (Strong)
        {
          sub_10000EA00();
          v105 = Data._bridgeToObjectiveC()().super.isa;
          sub_100017D10(v105, "pendingMembershipTracker:willAdd:to:using:");
          v117 = sub_10000EA00();
          sub_100049B14(v117, v118);

          swift_unknownObjectRelease();
        }

        else
        {
          v147 = sub_10000EA00();
          sub_100049B14(v147, v148);
        }

        v135 = 1;
        goto LABEL_57;
      }

      if (Strong)
      {
        sub_10000EA00();
        v126 = Data._bridgeToObjectiveC()().super.isa;
        sub_100017D10(v126, "pendingMembershipTracker:willNotAdd:to:using:");

        swift_unknownObjectRelease();
      }

      v127 = [v99 rejectedMembers];
      sub_10003DDC0();
      v128 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v128 & 0xC000000000000001) == 0)
      {
        v155 = sub_10003DB94();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v186 = v128;
        v132 = v155;
LABEL_49:

        v116 = v97;
        sub_10003DDC0();
        v105 = Set._bridgeToObjectiveC()().super.isa;

        [v99 setRejectedMembers:v105];

        v156 = [v99 delegate];
        v135 = v156;
        if (v156)
        {
          [v156 conversationChanged:v99];
          v157 = sub_10000EA00();
          sub_100049B14(v157, v158);
          swift_unknownObjectRelease();
          v135 = 0;
        }

        else
        {
          v164 = sub_10000EA00();
          sub_100049B14(v164, v165);
        }

        goto LABEL_57;
      }

      if (v128 < 0)
      {
        v129 = v128;
      }

      else
      {
        v129 = v128 & 0xFFFFFFFFFFFFFF8;
      }

      sub_10003DB94();
      sub_100005F0C();
      v130 = __CocoaSet.count.getter();
      if (!__OFADD__(v130, 1))
      {
        sub_100396A04(v129, v130 + 1);
        v186 = v131;
        v132 = sub_1000079BC();
        goto LABEL_49;
      }

      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v105 = swift_initStackObject();
    *(v105 + 1) = v175;
    v105[4] = v111;
    v119 = sub_10000B6F4(v105);
    v184 = v110;
    if (v119)
    {
      sub_10000F350();
      v120 = v111;
      sub_10039B7D4(v105);
    }

    else
    {
      swift_setDeallocating();
      sub_10000F350();
      sub_10000F350();
      sub_1002F5CC8();
    }

    sub_100016F80();
    if (v134)
    {
      v116 = v97;
      sub_100035A80();
      v135 = 1;
      goto LABEL_57;
    }

    v136 = [v99 rejectedMembers];
    sub_10003DDC0();
    v137 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v137 & 0xC000000000000001) != 0)
    {
      if (v137 < 0)
      {
        v138 = v137;
      }

      else
      {
        v138 = v137 & 0xFFFFFFFFFFFFFF8;
      }

      sub_10003DB94();
      sub_100005F0C();
      v139 = __CocoaSet.count.getter();
      if (__OFADD__(v139, 1))
      {
        goto LABEL_64;
      }

      sub_100396A04(v138, v139 + 1);
      v186 = v140;
      v141 = sub_1000079BC();
    }

    else
    {
      v159 = sub_10003DB94();
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v137;
      v141 = v159;
    }

    sub_10003DDC0();
    v105 = Set._bridgeToObjectiveC()().super.isa;

    [v99 setRejectedMembers:v105];

    v160 = [v99 delegate];
    v135 = v160;
    v116 = v97;
    if (v160)
    {
      [v160 conversationChanged:v99];
      sub_100035A80();
      swift_unknownObjectRelease();
      v135 = 0;
    }

    else
    {
      sub_100035A80();
    }

LABEL_57:
    sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_messenger);
    v166 = swift_unknownObjectWeakLoadStrong();
    if (v166)
    {
      v167 = v166;
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000844C();
      sub_1002F93D0(v168, &qword_1006A2640, TUHandle_ptr);
      v169 = Set._bridgeToObjectiveC()().super.isa;

      v105 = UUID._bridgeToObjectiveC()().super.isa;
      [v167 sendDelegationResponseMessageTo:v169 conversation:v99 transactionUUID:v105 forMember:v180 withResponse:v135];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v170 = v179;
    sub_100006DDC(v177, v177[3]);
    v171 = [v180 handle];
    v172 = *v105;
    sub_10031D478(v181);

    v173 = sub_10000FC08();
    sub_10031E2FC(v173);
    (v116)(v181, v170);
LABEL_61:
    sub_100005EDC();
    return;
  }

  v185 = sub_100004778();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_100005EDC();
}

id sub_10031CA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingMembershipTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10031CB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = TUCopyIDSCanonicalAddressForHandle();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000052D0();
    swift_beginAccess();
    v7 = *(v2 + 16);

    v8 = sub_1002DB870(a1, v7);

    if (v8)
    {
      sub_1002CB814(v8, a2);
    }

    else
    {

      type metadata accessor for PendingMembershipInfo();
      v13 = sub_1000079BC();
      return sub_10000AF74(v13, v14, 1, v15);
    }
  }

  else
  {
    type metadata accessor for PendingMembershipInfo();
    v10 = sub_1000079BC();

    return sub_10000AF74(v10, v11, 1, v12);
  }
}

void *sub_10031CC20()
{
  sub_1000052D0();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {

    sub_100021E24();
    if (v3)
    {
      v4 = *(*(v1 + 56) + 8 * v2);

      return sub_100274144(v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_10031CCAC()
{
  sub_100005EF4();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v11 = v9 - v10;
  __chkstk_darwin(v12, v13);
  sub_10000C1C4();
  v65 = v14;
  v15 = sub_10026D814(&qword_1006A5650, &qword_100580320);
  v16 = sub_100007BF0(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  sub_100007BAC();
  sub_100005FEC();
  __chkstk_darwin(v20, v21);
  sub_10000C1C4();
  v68 = v22;
  sub_1000052D0();
  swift_beginAccess();
  v23 = *(v0 + 16);
  v24 = *(v23 + 64);
  v70 = v23 + 64;
  v25 = *(v23 + 32);
  sub_100007990();
  v28 = v27 & v26;
  v69 = (v29 + 63) >> 6;
  v71 = v5;
  v74 = (v5 + 32);
  v66 = v30;
  v67 = (v5 + 8);

  v31 = 0;
  v75 = v2;
  v72 = v11;
  v73 = v1;
  while (v28)
  {
    v32 = v31;
LABEL_8:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v32 << 6);
    (*(v71 + 16))(v65, *(v66 + 48) + *(v71 + 72) * v34, v2);
    v35 = *(*(v66 + 56) + 8 * v34);
    v36 = sub_10026D814(&qword_1006A5658, &qword_100580328);
    v37 = *(v36 + 48);
    v1 = v73;
    (*(v71 + 32))(v73, v65, v2);
    *(v73 + v37) = v35;
    sub_10000AF74(v73, 0, 1, v36);

    v11 = v72;
LABEL_9:
    sub_10031DFB0(v1, v68);
    v38 = sub_10026D814(&qword_1006A5658, &qword_100580328);
    if (sub_100015468(v68, 1, v38) == 1)
    {

      sub_100005EDC();
      return;
    }

    v39 = *(v68 + *(v38 + 48));
    (*v74)(v11, v68, v75);
    v40 = *(v39 + 16);
    if (v40)
    {
      sub_10026D814(&qword_1006A4808, &qword_10057F850);
      v41 = *(type metadata accessor for PendingMembershipInfo() - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = swift_allocObject();
      v45 = j__malloc_size(v44);
      if (!v42)
      {
        goto LABEL_33;
      }

      if (v45 - v43 == 0x8000000000000000 && v42 == -1)
      {
        goto LABEL_36;
      }

      v44[2] = v40;
      v44[3] = 2 * ((v45 - v43) / v42);
      sub_1002F6BDC();
      v48 = v47;
      sub_100022DDC();
      if (v48 != v40)
      {
        goto LABEL_34;
      }

      v11 = v72;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100021E24();
    v52 = _swiftEmptyDictionarySingleton[2];
    v53 = (v51 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_32;
    }

    v55 = v50;
    v56 = v51;
    sub_10026D814(&qword_1006A5660, &unk_100580330);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54))
    {
      sub_100021E24();
      v2 = v75;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_37;
      }

      v55 = v57;
    }

    else
    {
      v2 = v75;
    }

    if (v56)
    {
      v59 = _swiftEmptyDictionarySingleton[7];
      v60 = *(v59 + 8 * v55);
      *(v59 + 8 * v55) = v44;

      (*v67)(v11, v2);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v55 >> 6) + 8] |= 1 << v55;
      (*(v71 + 16))(_swiftEmptyDictionarySingleton[6] + *(v71 + 72) * v55, v11, v2);
      *(_swiftEmptyDictionarySingleton[7] + 8 * v55) = v44;
      (*(v71 + 8))(v11, v2);
      v61 = _swiftEmptyDictionarySingleton[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_35;
      }

      _swiftEmptyDictionarySingleton[2] = v63;
    }

    v1 = v73;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v69)
    {
      v64 = sub_10026D814(&qword_1006A5658, &qword_100580328);
      sub_10000AF74(v1, 1, 1, v64);
      v28 = 0;
      goto LABEL_9;
    }

    v28 = *(v70 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10031D224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000691C();
  v5 = type metadata accessor for PendingMembershipInfo();
  v6 = sub_100007BF0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = TUCopyIDSCanonicalAddressForHandle();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000052D0();
    swift_beginAccess();
    v15 = *(v2 + 16);

    sub_1002DB870(a2, v15);

    sub_10031DF4C(v2, v12);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1003793F0();

    sub_100021F04();
    v16 = *(v2 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 16);
    sub_1003793C8();
    *(v2 + 16) = v24;
    swift_endAccess();
    v17 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    sub_10000E6DC();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10057D690;
    v23 = *(v3 + 16);

    sub_10026D814(&qword_1006A5638, &qword_100580308);
    sub_10000D648();
    v19 = String.init<A>(reflecting:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100009D88();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    sub_10031DEF8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10031D478(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v10 = &v35 - v9;
  v11 = TUCopyIDSCanonicalAddressForHandle();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000052D0();
    swift_beginAccess();
    v13 = *(v2 + 16);

    v14 = sub_1002DB870(a1, v13);

    if (!v14)
    {
      v14 = _swiftEmptyDictionarySingleton;
    }

    v15 = sub_100005208();
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v14;
      v19 = v14[3];
      sub_10026D814(&unk_1006A6FD0, &qword_100580318);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19);
      v20 = v35;
      v21 = *(v35[6] + 16 * v17 + 8);

      v22 = v20[7];
      v23 = type metadata accessor for PendingMembershipInfo();
      sub_100008070(v23);
      sub_1002F6F18(v22 + *(v24 + 72) * v17, v10);
      _NativeDictionary._delete(at:)();
      v25 = v10;
      v26 = 0;
      v27 = v23;
    }

    else
    {
      v27 = type metadata accessor for PendingMembershipInfo();
      v25 = v10;
      v26 = 1;
    }

    sub_10000AF74(v25, v26, 1, v27);

    sub_100009A04(v10, &qword_1006A5640, &qword_100580310);
    sub_100021F04();
    v29 = *(v2 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + 16);
    sub_1003793C8();
    *(v2 + 16) = v36;
    swift_endAccess();
    v30 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    sub_10000E6DC();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057D690;
    v35 = *(v2 + 16);

    sub_10026D814(&qword_1006A5638, &qword_100580308);
    sub_10000D648();
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100009D88();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    sub_10031DEF8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10031D7A0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_100383E0C(a1, v4, v5, v6, v7, v8, v9, v10, v17, v18);
  swift_endAccess();

  v11 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  sub_10000E6DC();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v19 = *(v2 + 16);

  sub_10026D814(&qword_1006A5638, &qword_100580308);
  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009D88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_10031D8C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_10031D920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      v10 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v11 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10057D6A0;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100009D88();
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        *(v12 + 96) = v10;
        *(v12 + 104) = sub_1002F93D0(&qword_1006A4CE0, &qword_1006A3480, NSNumber_ptr);
        *(v12 + 72) = v22;

        v13 = v22;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        a3 = [v13 BOOLValue];

        return (a3 & 1);
      }
    }

    else
    {
      sub_100009A04(v25, &unk_1006A2D10, &unk_10057D940);
    }

    v14 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10057D6A0;
    *&v25[0] = a1;
    *(&v25[0] + 1) = a2;

    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100009D88();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    LOBYTE(v25[0]) = a3 & 1;
    v20 = String.init<A>(reflecting:)();
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return (a3 & 1);
  }

  __break(1u);
  return result;
}

id sub_10031DC2C()
{
  result = sub_10031D920(0x617369642D696D6CLL, 0xEC00000064656C62, 0);
  byte_1006A53C0 = result & 1;
  return result;
}

id sub_10031DC70()
{
  result = sub_10031D920(0xD000000000000017, 0x800000010056AE60, 0);
  byte_1006A53C1 = result & 1;
  return result;
}

uint64_t type metadata accessor for PendingMembershipInfo()
{
  result = qword_1006A55F8;
  if (!qword_1006A55F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031DD48()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100006AF0(319, &qword_1006A3DE0, TUConversationMember_ptr);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10031DDFC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10031DE24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 24))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10031DE70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_10031DEF8()
{
  result = qword_1006A5648;
  if (!qword_1006A5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5648);
  }

  return result;
}

uint64_t sub_10031DF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingMembershipInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5650, &qword_100580320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10031E020(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {

    return a1;
  }

  else
  {

    return sub_100290AC4(a2, a3);
  }
}

uint64_t sub_10031E074(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = NSObject._rawHashValue(seed:)(*(*v2 + 40));
  v5 = ~(-1 << *(v3 + 32));
  v6 = 1;
  while (1)
  {
    v7 = v4 & v5;
    v8 = (v4 & v5) >> 6;
    v9 = 1 << (v4 & v5);
    v10 = v9 & *(v3 + 56 + 8 * v8);
    if (!v10)
    {
      break;
    }

    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    v11 = *(*(v3 + 48) + 8 * v7);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      v6 = 0;
      break;
    }

    v4 = v7 + 1;
  }

  v13 = *(v3 + 16);
  v14 = v13 + v6;
  if (__OFADD__(v13, v6))
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 24);
    v16 = v29;
    if (v15 < v14 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_100396BE4();
        goto LABEL_16;
      }

      if (v15 < v14)
      {
        sub_1003994BC();
LABEL_16:
        v17 = *v29;
        v18 = NSObject._rawHashValue(seed:)(*(*v29 + 40));
        v19 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v7 = v18 & v19;
          v8 = (v18 & v19) >> 6;
          v9 = 1 << (v18 & v19);
          if ((v9 & *(v17 + 56 + 8 * v8)) == 0)
          {
            v16 = v29;
            if (v10)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
          v20 = *(*(v17 + 48) + 8 * v7);
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            break;
          }

          v18 = v7 + 1;
        }

        v16 = v29;
        if (!v10)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1003989E4();
    }

    if (v10)
    {
LABEL_24:
      v27 = *(*v16 + 48);
      result = *(v27 + 8 * v7);
      *(v27 + 8 * v7) = a1;
      return result;
    }

LABEL_21:
    v22 = *v16;
    *(*v16 + 8 * v8 + 56) |= v9;
    *(*(v22 + 48) + 8 * v7) = a1;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      result = 0;
      *(v22 + 16) = v25;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10031E2A8(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {

    sub_100049B14(a2, a3);
  }
}

uint64_t sub_10031E2FC(uint64_t a1)
{
  v2 = type metadata accessor for PendingMembershipInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10031E358()
{
  result = qword_1006A3BE0;
  if (!qword_1006A3BE0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3BE0);
  }

  return result;
}

id sub_10031E3B0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v10[4] = &off_100626B88;
  v10[0] = a1;
  v9[3] = type metadata accessor for SharedPendingMembershipBag();
  v9[4] = &off_100626B70;
  v9[0] = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100009AB0(v10, a3 + OBJC_IVAR___CSDPendingMembershipTracker_storage);
  sub_100009AB0(v9, a3 + OBJC_IVAR___CSDPendingMembershipTracker_serverBag);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for PendingMembershipTracker();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100009B7C(v9);
  sub_100009B7C(v10);
  return v6;
}

id sub_10031E494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v22[3] = v4;
  v22[4] = &off_100626B88;
  v22[0] = a1;
  v20 = type metadata accessor for SharedPendingMembershipBag();
  v21 = &off_100626B70;
  v19[0] = a2;
  v5 = objc_allocWithZone(type metadata accessor for PendingMembershipTracker());
  v6 = sub_10001BDB8(v22, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6, v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v20;
  v12 = sub_10001BDB8(v19, v20);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12, v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10031E3B0(*v9, *v15, v5);
  sub_100009B7C(v19);
  sub_100009B7C(v22);
  return v17;
}

_BYTE *storeEnumTagSinglePayload for PendingMembershipTracker.UserAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MemoryPendingMembershipTrackerStorage.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_10031E7E4()
{
  result = qword_1006A5688;
  if (!qword_1006A5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5688);
  }

  return result;
}

unint64_t sub_10031E83C()
{
  result = qword_1006A5690;
  if (!qword_1006A5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5690);
  }

  return result;
}

uint64_t sub_10031E8A0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

id sub_10031E958(uint64_t a1, void *a2)
{
  result = TUBundle();
  if (result)
  {
    v5 = result;
    v10._object = 0xE000000000000000;
    v6.value._object = 0x800000010056B140;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    v6.value._countAndFlagsBits = 0xD000000000000012;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v10)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10031E9F4(uint64_t a1)
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
        sub_10001E580(v39, v40, v41, v1);
        v11 = v10;
        v12 = [v10 value];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
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

char *sub_10031ED14(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___CSDDuetDonater_maxDuration] = 0x4024000000000000;
  *&v1[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver] = 0;
  *&v1[OBJC_IVAR___CSDDuetDonater_queue] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v12, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v11 = [v6 tu_defaults];
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v7;
  v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v9 = *&v7[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver];
  *&v7[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver] = v8;

  return v7;
}

uint64_t sub_10031EE74()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = [v0 silenceUnknownCallersEnabled];

  if (v1)
  {
    v2 = 28271;
  }

  else
  {
    v2 = 6710895;
  }

  if (v1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  sub_10026D814(&qword_1006A56E8, &qword_1005804C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000100565D90;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 88) = &protocol witness table for String;
  *(inited + 96) = &protocol witness table for String;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  sub_10026D814(&qword_1006A56F0, &unk_1005804C8);
  v8 = Dictionary.init(dictionaryLiteral:)();
  sub_10031F348(v4, v6, v8);
}

id sub_10031F00C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver];
  if (v3)
  {
    v4 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10031F0F0()
{
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
  v21 = *&v0[OBJC_IVAR___CSDDuetDonater_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  sub_10000A0F0(v22);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v28 = v23;
  v29 = &unk_100626EE8;
  v24 = _Block_copy(aBlock);
  v25 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v4 + 8))(v10, v1);
  (*(v14 + 8))(v20, v11);
}

uint64_t sub_10031F2F8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031F348(v0, v1, 0);
}

uint64_t sub_10031F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_10000AF74(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;

  sub_1002762F0();
}

uint64_t sub_10031F4BC(void *a1)
{
  if ([a1 status] == 1)
  {
    return [a1 isScreening] ^ 1;
  }

  else
  {
    return 0;
  }
}

void sub_10031F50C(id a1)
{
  v98 = type metadata accessor for UUID();
  v96 = *(v98 - 8);
  v2 = *(v96 + 64);
  __chkstk_darwin(v98, v3);
  v95 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v97 = v92 - v12;
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = sub_1003205AC(a1);
  v99 = a1;
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = [objc_opt_self() bundleIDKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      a1 = v99;
      *(&v103 + 1) = &type metadata for String;
      *&v102 = v16;
      *(&v102 + 1) = v17;
      sub_10003EBF0(&v102, v101);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v13;
      sub_100040430();

      v13 = v100;
    }

    else
    {
    }
  }

  v20 = sub_100320800(a1);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 40);
      v23 = _swiftEmptyArrayStorage;
      do
      {
        v25 = *(v22 - 1);
        v24 = *v22;
        v26 = HIBYTE(*v22) & 0xF;
        if ((*v22 & 0x2000000000000000) == 0)
        {
          v26 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          v27 = *v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = v23[2];
            sub_100017840();
            v23 = v31;
          }

          v28 = v23[2];
          if (v28 >= v23[3] >> 1)
          {
            sub_100017840();
            v23 = v32;
          }

          v23[2] = v28 + 1;
          v29 = &v23[2 * v28];
          v29[4] = v25;
          v29[5] = v24;
        }

        v22 += 2;
        --v21;
      }

      while (v21);

      if (v23[2])
      {
        v33 = [objc_opt_self() calleeContactIDsKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        *(&v103 + 1) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        *&v102 = v23;
        sub_10003EBF0(&v102, v101);
        swift_isUniquelyReferenced_nonNull_native();
        v100 = v13;
        sub_100040430();

        a1 = v99;
        v13 = v100;
      }

      else
      {

        a1 = v99;
      }
    }

    else
    {
    }
  }

  v34 = a1;
  v35 = [a1 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v35) = sub_10039C378(v36);

  if (v35)
  {
LABEL_36:
    v57 = v99;
    if ([v99 isConversation])
    {
      v58 = [objc_opt_self() sharedInstance];
      v59 = [v58 activeConversationForCall:v57];

      if (v59)
      {
        v60 = v10;
        v61 = v13;
        v62 = objc_opt_self();
        v63 = [v62 groupIDKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = [v59 messagesGroupUUID];
        if (v64)
        {
          v65 = v64;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        v67 = v98;
        sub_10000AF74(v60, v66, 1, v98);
        v68 = v97;
        sub_100286068(v60, v97);
        if (sub_100015468(v68, 1, v67))
        {
          sub_1000099A4(v68, &unk_1006A3DD0, &unk_10057C9D0);
          v69 = sub_100005208();
          if (v70)
          {
            v71 = v69;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v101[0] = v13;
            v73 = *(v13 + 24);
            sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v73);
            v74 = *&v101[0];
            v75 = *(*(*&v101[0] + 48) + 16 * v71 + 8);

            sub_10003EBF0((*(v74 + 56) + 32 * v71), &v102);
            v61 = v74;
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v102 = 0u;
            v103 = 0u;
          }

          sub_1000099A4(&v102, &unk_1006A2D10, &unk_10057D940);
          v81 = v61;
        }

        else
        {
          v77 = v95;
          v76 = v96;
          (*(v96 + 16))(v95, v68, v67);
          sub_1000099A4(v68, &unk_1006A3DD0, &unk_10057C9D0);
          v78 = UUID.uuidString.getter();
          v80 = v79;
          (*(v76 + 8))(v77, v67);
          *(&v103 + 1) = &type metadata for String;
          *&v102 = v78;
          *(&v102 + 1) = v80;
          sub_10003EBF0(&v102, v101);
          swift_isUniquelyReferenced_nonNull_native();
          v100 = v13;
          sub_100040430();

          v81 = v100;
        }

        v82 = [v62 groupNameKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = sub_100320858(v59);
        if (v84)
        {
          *(&v103 + 1) = &type metadata for String;
          *&v102 = v83;
          *(&v102 + 1) = v84;
          sub_10003EBF0(&v102, v101);
          swift_isUniquelyReferenced_nonNull_native();
          v100 = v81;
          sub_100040430();
        }

        else
        {
          v85 = sub_100005208();
          if (v86)
          {
            v87 = v85;
            v88 = swift_isUniquelyReferenced_nonNull_native();
            *&v101[0] = v81;
            v89 = *(v81 + 24);
            sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v88, v89);
            v90 = *&v101[0];
            v91 = *(*(*&v101[0] + 48) + 16 * v87 + 8);

            sub_10003EBF0((*(v90 + 56) + 32 * v87), &v102);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v102 = 0u;
            v103 = 0u;
          }

          sub_1000099A4(&v102, &unk_1006A2D10, &unk_10057D940);
        }
      }
    }
  }

  else
  {
    v93 = v10;
    v94 = v13;
    v37 = [objc_opt_self() calleeHandlesKey];
    v92[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92[2] = v38;

    v39 = [v34 remoteParticipantHandles];
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10031E9F4(v40);
    v42 = v41;

    v43 = 0;
    v44 = *(v42 + 16);
    v45 = v42 + 40;
    v46 = _swiftEmptyArrayStorage;
    v92[0] = v42 + 40;
LABEL_25:
    for (i = (v45 + 16 * v43); ; i += 2)
    {
      if (v44 == v43)
      {

        *(&v103 + 1) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        *&v102 = v46;
        sub_10003EBF0(&v102, v101);
        v56 = v94;
        swift_isUniquelyReferenced_nonNull_native();
        v100 = v56;
        sub_100040430();

        v13 = v100;
        v10 = v93;
        goto LABEL_36;
      }

      if (v43 >= *(v42 + 16))
      {
        break;
      }

      v48 = *(i - 1);
      v49 = *i;

      v50 = String._bridgeToObjectiveC()();
      v51 = [v50 destinationIdIsPseudonym];

      if ((v51 & 1) == 0)
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *&v102 = v46;
        if ((v52 & 1) == 0)
        {
          sub_10039A2E0(0, v46[2] + 1, 1);
          v46 = v102;
        }

        v54 = v46[2];
        v53 = v46[3];
        if (v54 >= v53 >> 1)
        {
          sub_10039A2E0(v53 > 1, v54 + 1, 1);
          v46 = v102;
        }

        ++v43;
        v46[2] = v54 + 1;
        v55 = &v46[2 * v54];
        v55[4] = v48;
        v55[5] = v49;
        v45 = v92[0];
        goto LABEL_25;
      }

      ++v43;
    }

    __break(1u);
  }
}

uint64_t sub_10031FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100320014, 0, 0);
}

uint64_t sub_100320014()
{
  type metadata accessor for TipEventProxy();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[18] = v2;
  v4 = async function pointer to static TipEventProxy.donate(eventIdentifier:for:with:)[1];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1003200E8;
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  return static TipEventProxy.donate(eventIdentifier:for:with:)(v8, v6, v1, v3, v7);
}

uint64_t sub_1003200E8()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100320238, 0, 0);
  }

  else
  {
    v4 = v3[18];

    v5 = v3[17];
    v6 = v3[14];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100320238()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v18 = v0[16];
  v19 = v0[15];
  v4 = v0[14];
  v17 = v0[13];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 queue];

  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v1;
  v0[6] = sub_1003207F4;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100626D80;
  v11 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v4, v5);
  (*(v18 + 8))(v3, v19);
  v12 = v0[7];

  v13 = v0[17];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10032047C()
{
  v0 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057D6A0;

  v2 = String.init<A>(reflecting:)();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  v5 = sub_100009D88();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v6 = String.init<A>(reflecting:)();
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1003205AC(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isTelephonyProvider];

  if (v3)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = [a1 provider];
  v6 = [v5 isFaceTimeProvider];

  if (!v6)
  {
    return sub_100021AEC([a1 provider]);
  }

  v7 = TUPreferredFaceTimeBundleIdentifier();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_10032072C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1002DE008;

  return sub_10031FEF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003207F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10032047C();
}

uint64_t sub_100320800(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100320858(void *a1)
{
  v1 = [a1 messagesGroupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *sub_10032091C(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void SmartHoldingController.performRequest(_:for:)(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if (([a2 isScreening] & 1) == 0)
    {
      v8 = [v6 session];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 state];

        if (!v10)
        {
          v11 = [a2 smartHoldingActiveSessionCount];
          if (v11 == -1)
          {
            __break(1u);
            return;
          }

          [a2 setSmartHoldingActiveSessionCount:v11 + 1];
        }
      }
    }

    v73 = v2;
    v12 = sub_1003229AC(v6);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = v6;
    *(v13 + 32) = v12 & 1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10032392C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1000200AC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002007C;
    aBlock[3] = &unk_100626F88;
    v15 = _Block_copy(aBlock);
    v72 = v7;
    v16 = a2;

    [v16 handleUpdatedPropertiesAfterChangesInBlock:v15];
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v18 = sub_100015D50();
      if (v18)
      {
        v19 = v18;
        v20 = [v18 state];

        if (!v20)
        {
          v62 = sub_100015D50();
          if (v62)
          {
            v63 = v62;
            v64 = [v62 events];

            sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v65 = sub_10000E6E8();

            if (v65)
            {
              v66 = [v65 text];
              v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v69 = v68;

              v70 = HIBYTE(v69) & 0xF;
              if ((v69 & 0x2000000000000000) == 0)
              {
                v70 = v67 & 0xFFFFFFFFFFFFLL;
              }

              if (v70)
              {
                v71 = *(v73 + OBJC_IVAR___CSDSmartHoldingController_analyticsHelper);
                [v65 confidenceScore];
                sub_1003B1B08();
              }
            }
          }
        }
      }

      v21 = sub_100015D50();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 state];

        if (v23 == 3)
        {
          v24 = sub_100015D50();
          if (v24)
          {
            v25 = v24;
            v26 = [v24 events];

            sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = sub_10000E6E8();

            if (v27)
            {
              v28 = *(v73 + OBJC_IVAR___CSDSmartHoldingController_analyticsHelper);
              [v27 confidenceScore];
              sub_1003B25E4();
            }
          }
        }
      }

      if ([v16 isScreening] && (v29 = objc_msgSend(v16, "smartHoldingSession")) != 0)
      {
        v30 = v29;
        v31 = *(v73 + OBJC_IVAR___CSDSmartHoldingController_controller);
        v32 = swift_allocObject();
        *(v32 + 16) = v16;
        *(v32 + 24) = v30;
        v33 = v16;
        v34 = v30;
        WaitOnHoldController.cancellationHandler.setter();
      }

      else
      {
        v35 = *(v73 + OBJC_IVAR___CSDSmartHoldingController_controller);
        WaitOnHoldController.cancellationHandler.setter();
      }

      if (qword_1006A0B60 == -1)
      {
        goto LABEL_20;
      }
    }

    sub_100008464();
    swift_once();
LABEL_20:
    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006BA6A0);
    v37 = v16;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      sub_100007BFC();
      v40 = swift_slowAlloc();
      sub_100015070();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      v75 = v37;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v42 = v37;
      v43 = String.init<A>(reflecting:)();
      v45 = sub_10002741C(v43, v44, aBlock);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Updated smart holding session on call %s", v40, 0xCu);
      sub_100009B7C(v41);
      sub_100009ED0();

      sub_100009ED0();
    }

    return;
  }

  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000AF9C(v46, qword_1006BA6A0);
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    sub_100007BFC();
    v50 = swift_slowAlloc();
    sub_100015070();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v75 = v47;
    sub_100006AF0(0, &qword_1006A56F8, TUSmartHoldingSessionRequest_ptr);
    v52 = v47;
    v53 = String.init<A>(reflecting:)();
    v55 = sub_10002741C(v53, v54, aBlock);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Invalid smart holding request %s", v50, 0xCu);
    sub_100009B7C(v51);
    sub_100009ED0();

    sub_100009ED0();
  }

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;
  v59 = objc_allocWithZone(NSError);
  v60 = sub_100323698(v56, v58, 6, 0);
  v61 = _convertErrorToNSError(_:)();

  [a2 setSmartHoldingError:v61];
  swift_willThrow();
}

id sub_100321140(void *a1, id a2, char a3)
{
  v5 = [a2 session];
  [a1 setSmartHoldingSession:v5];

  return [a1 setScreening:a3 & 1];
}

uint64_t sub_1003211C4(void *a1, void *a2, void *a3)
{
  v43 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6A0);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v16;
    v21 = v20;
    v40 = v20;
    v41 = swift_slowAlloc();
    v44 = a1;
    aBlock[0] = v41;
    *v21 = 136446210;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v22 = String.init<A>(reflecting:)();
    LOBYTE(v21) = v19;
    v24 = a2;
    v25 = v12;
    v26 = v10;
    v27 = v5;
    v28 = v11;
    v29 = v6;
    v30 = sub_10002741C(v22, v23, aBlock);

    v31 = v40;
    *(v40 + 4) = v30;
    v6 = v29;
    v11 = v28;
    v5 = v27;
    v10 = v26;
    v12 = v25;
    a2 = v24;
    _os_log_impl(&_mh_execute_header, v18, v21, "XPC connection terminated with error %{public}s", v31, 0xCu);
    sub_100009B7C(v41);

    v16 = v42;
  }

  v32 = [a2 queue];
  v33 = swift_allocObject();
  v34 = v43;
  *(v33 + 16) = v43;
  *(v33 + 24) = a2;
  aBlock[4] = sub_100323AA4;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006270F0;
  v35 = _Block_copy(aBlock);
  v36 = v34;
  v37 = a2;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_10000EE40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
}

uint64_t sub_100321610(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a1 events];
  sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a1) = [a1 isHostedOnCurrentDevice];
  v12 = objc_allocWithZone(TUSmartHoldingSession);
  v13 = sub_100323748(v8, 3, v11, 4, a1);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100323AAC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100323ACC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100627168;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = v13;

  [v17 handleUpdatedPropertiesAfterChangesInBlock:v16];

  _Block_release(v16);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t SmartHoldingController.performRequest(_:for:)()
{
  sub_100006810();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = type metadata accessor for UUID();
  v1[7] = v4;
  sub_100005EB4(v4);
  v1[8] = v5;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1003219D0()
{
  v63 = v0;
  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6A0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    sub_100007BFC();
    v7 = swift_slowAlloc();
    sub_100015070();
    v8 = swift_slowAlloc();
    v62 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v6;
    sub_100006AF0(0, &qword_1006A5718, TUSmartHoldingRequest_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v62);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing TUSmartHoldingRequest %s", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100009ED0();

    sub_100009ED0();
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 32);
  v15 = [v14 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  switch([v14 requestType])
  {
    case 1uLL:
      v16 = *(*(v0 + 48) + OBJC_IVAR___CSDSmartHoldingController_controller);
      v17 = async function pointer to WaitOnHoldController.startHoldDetection(callUUID:)[1];
      v18 = swift_task_alloc();
      *(v0 + 80) = v18;
      *v18 = v0;
      sub_10001138C(v18);
      sub_100005F24();

      return WaitOnHoldController.startHoldDetection(callUUID:)();
    case 2uLL:
      v34 = *(*(v0 + 48) + OBJC_IVAR___CSDSmartHoldingController_controller);
      v35 = async function pointer to WaitOnHoldController.stopHoldDetection(callUUID:)[1];
      v36 = swift_task_alloc();
      *(v0 + 96) = v36;
      *v36 = v0;
      sub_10001138C(v36);
      sub_100005F24();

      return WaitOnHoldController.stopHoldDetection(callUUID:)();
    case 3uLL:
      v20 = [*(v0 + 40) handle];
      if (!v20)
      {
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();
        v53 = os_log_type_enabled(v51, v52);
        v55 = *(v0 + 64);
        v54 = *(v0 + 72);
        v56 = *(v0 + 56);
        if (v53)
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Failed to start call screening: remote handle is nil", v57, 2u);
          sub_100009ED0();
        }

        (*(v55 + 8))(v54, v56);
LABEL_25:
        v58 = *(v0 + 72);

        sub_100009EF4();
        sub_100005F24();

        __asm { BRAA            X1, X16 }
      }

      v21 = v20;
      v22 = *(v0 + 48);
      v23 = sub_1003722B8();
      v25 = v24;

      *(v0 + 112) = v23;
      *(v0 + 120) = v25;
      v26 = *(v22 + OBJC_IVAR___CSDSmartHoldingController_controller);
      v27 = async function pointer to WaitOnHoldController.startScreening(callUUID:)[1];
      v28 = swift_task_alloc();
      *(v0 + 128) = v28;
      *v28 = v0;
      sub_10001138C(v28);
      sub_100005F24();

      return WaitOnHoldController.startScreening(callUUID:)();
    case 4uLL:
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      *v30 = v0;
      v30[1] = sub_1003223DC;
      v31 = *(v0 + 40);
      v32 = *(v0 + 48);
      sub_100005F24();

      return sub_100322A04();
    default:
      v38 = *(v0 + 32);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      v41 = os_log_type_enabled(v39, v40);
      v43 = *(v0 + 64);
      v42 = *(v0 + 72);
      v44 = *(v0 + 56);
      if (v41)
      {
        v45 = *(v0 + 32);
        sub_100007BFC();
        v46 = swift_slowAlloc();
        sub_100015070();
        v47 = swift_slowAlloc();
        v62 = v47;
        *v46 = 136315138;
        *(v0 + 16) = [v45 requestType];
        type metadata accessor for TUSmartHoldingRequestType(0);
        v48 = String.init<A>(reflecting:)();
        v50 = sub_10002741C(v48, v49, &v62);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unknown TUSmartHoldingRequestType %s", v46, 0xCu);
        sub_100009B7C(v47);
        sub_100009ED0();

        sub_100009ED0();
      }

      (*(v43 + 8))(v42, v44);
      goto LABEL_25;
  }
}

uint64_t sub_100321F7C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100322078()
{
  sub_100006810();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[9];

  sub_100009EF4();

  return v2();
}

uint64_t sub_1003220EC()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003221E8()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 120);
  }

  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1003222EC()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR___CSDSmartHoldingController_analyticsHelper);
  v2 = [*(v0 + 40) handle];
  if (v2)
  {
    v3 = sub_100323940(v2);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  sub_1003B13B8(*(v0 + 112), *(v0 + 120), v3, v5);

  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 72);

  sub_100009EF4();

  return v10();
}

uint64_t sub_1003223DC()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1003224D8()
{
  sub_100006810();
  v1 = *(v0 + 88);
  v2 = sub_10000A800();
  v3(v2);

  sub_100009EF4();

  return v4();
}

uint64_t sub_100322544()
{
  sub_100006810();
  v1 = *(v0 + 104);
  v2 = sub_10000A800();
  v3(v2);

  sub_100009EF4();

  return v4();
}

uint64_t sub_1003225B0()
{
  sub_100006810();
  v1 = *(v0 + 136);
  v2 = sub_10000A800();
  v3(v2);

  sub_100009EF4();

  return v4();
}

uint64_t sub_10032261C()
{
  sub_100006810();
  v1 = *(v0 + 152);
  v2 = sub_10000A800();
  v3(v2);

  sub_100009EF4();

  return v4();
}

uint64_t sub_100322720(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1003227F8;

  return SmartHoldingController.performRequest(_:for:)();
}

uint64_t sub_1003227F8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[4];
  v8 = v3[3];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[5];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[5], 0);
  }

  _Block_release(v4[5]);
  v13 = v10[1];

  return v13();
}

id sub_1003229AC(void *a1)
{
  result = [a1 session];
  if (result)
  {
    v2 = result;
    v3 = [result state];

    return (!v3 || v3 == 3);
  }

  return result;
}

uint64_t sub_100322A04()
{
  sub_100006810();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v1[11] = v3;
  sub_100005EB4(v3);
  v1[12] = v4;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v1[14] = v7;
  sub_100005EB4(v7);
  v1[15] = v8;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[17] = v11;
  sub_100005EB4(v11);
  v1[18] = v12;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100322B74()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);
  v3 = [*(v0 + 72) uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v2 + OBJC_IVAR___CSDSmartHoldingController_controller);
  v5 = async function pointer to WaitOnHoldController.endScreening(callUUID:)[1];
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_100322C4C;
  v7 = *(v0 + 168);

  return WaitOnHoldController.endScreening(callUUID:)(v7);
}

uint64_t sub_100322C4C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100322D48()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v8 = *(v0[10] + OBJC_IVAR___CSDSmartHoldingController_analyticsHelper);
  sub_1003B1B7C();
  (*(v4 + 8))(v1, v5);

  sub_100009EF4();

  return v9();
}

uint64_t sub_100322E1C()
{
  v66 = v0;
  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA6A0);
  v63 = *(v4 + 16);
  v63(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  if (v8)
  {
    sub_100007BFC();
    v12 = swift_slowAlloc();
    sub_100015070();
    v59 = swift_slowAlloc();
    v65[0] = v59;
    *v12 = 136446210;
    sub_1000181A8();
    sub_10000EE40(v13, v14);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v10 + 8);
    v18(v9, v11);
    v19 = sub_10002741C(v15, v17, v65);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error stopping smart holding for call %{public}s", v12, 0xCu);
    sub_100009B7C(v59);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v20 = [*(v0 + 72) smartHoldingSession];
  if (v20)
  {
    v21 = v20;
    if ([v20 isHostedOnCurrentDevice])
    {
      v22 = (v0 + 16);
      v63(*(v0 + 152), *(v0 + 168), *(v0 + 136));
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v27 = *(v0 + 144);
      v26 = *(v0 + 152);
      v28 = *(v0 + 136);
      v62 = v18;
      if (v25)
      {
        sub_100007BFC();
        v29 = swift_slowAlloc();
        sub_100015070();
        v60 = swift_slowAlloc();
        v65[0] = v60;
        *v29 = 136446210;
        sub_1000181A8();
        sub_10000EE40(v30, v31);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v18;
        v34 = v32;
        v36 = v35;
        v33(v26, v28);
        v37 = sub_10002741C(v34, v36, v65);
        v22 = (v0 + 16);

        *(v29 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v23, v24, "Resetting hosted TUSmartHoldingSession for call %{public}s", v29, 0xCu);
        sub_100009B7C(v60);
        sub_100009ED0();

        sub_100009ED0();
      }

      else
      {

        v18(v26, v28);
      }

      v39 = *(v0 + 120);
      v38 = *(v0 + 128);
      v40 = *(v0 + 104);
      v64 = *(v0 + 112);
      v41 = *(v0 + 88);
      v42 = *(v0 + 96);
      v43 = *(v0 + 72);
      v61 = [v43 queue];
      v44 = swift_allocObject();
      *(v44 + 16) = v43;
      *(v0 + 48) = sub_100323A94;
      *(v0 + 56) = v44;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100004CEC;
      *(v0 + 40) = &unk_100627028;
      v45 = _Block_copy(v22);
      v46 = v43;
      static DispatchQoS.unspecified.getter();
      *(v0 + 64) = _swiftEmptyArrayStorage;
      sub_10000EE40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);

      (*(v42 + 8))(v40, v41);
      (*(v39 + 8))(v38, v64);
      v47 = *(v0 + 56);

      v18 = v62;
    }

    else
    {
    }
  }

  v48 = *(v0 + 184);
  v49 = *(v0 + 160);
  v50 = *(v0 + 168);
  v52 = *(v0 + 144);
  v51 = *(v0 + 152);
  v54 = *(v0 + 128);
  v53 = *(v0 + 136);
  v55 = *(v0 + 104);
  swift_willThrow();
  v18(v50, v53);

  sub_100009EF4();
  v57 = *(v0 + 184);

  return v56();
}

uint64_t sub_1003233C8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100323A9C;
  *(v3 + 24) = v2;
  v7[4] = sub_100323ACC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10002007C;
  v7[3] = &unk_1006270A0;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 handleUpdatedPropertiesAfterChangesInBlock:v4];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

id sub_100323520(void *a1)
{
  [a1 setSmartHoldingSession:0];

  return [a1 setScreening:0];
}

id SmartHoldingController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDSmartHoldingController_controller;
  type metadata accessor for WaitOnHoldController();
  *&v0[v2] = WaitOnHoldController.__allocating_init()();
  v3 = OBJC_IVAR___CSDSmartHoldingController_analyticsHelper;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for SmartHoldingAnalyticsHelper()) init];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SmartHoldingController();
  return objc_msgSendSuper2(&v5, "init");
}

id SmartHoldingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100323698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100323748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v6 initWithUUID:isa state:a2 events:v12 requiresUserAttentionReason:a4 hostedOnCurrentDevice:a5 & 1];

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

char *sub_100323838(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10026D814(&qword_1006A5748, &qword_100580558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100323940(void *a1)
{
  v2 = [a1 isoCountryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003239D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100035FE4;

  return sub_100322720(v2, v3, v5, v4);
}

uint64_t sub_100323AE4()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100007FEC(v1);
  v39 = v3;
  v40 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2, v6);
  sub_100007FDC();
  v38 = v8 - v7;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  sub_100007FDC();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  sub_100007FDC();
  v15 = [BiomeLibrary() CommApps];
  swift_unknownObjectRelease();
  v16 = [v15 CallIntelligence];
  swift_unknownObjectRelease();
  v17 = [v16 HoldAssistFedStats];
  swift_unknownObjectRelease();
  *(v0 + 16) = v17;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  v18 = v37;
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v37 + 24) = v19;
  *(v37 + 32) = -1;
  v20 = swift_allocObject();
  swift_weakInit();
  v45 = sub_100324CAC;
  v46 = v20;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100272204;
  v44 = &unk_100627208;
  v21 = _Block_copy(&aBlock);
  v22 = v19;

  v23 = String.utf8CString.getter();
  swift_beginAccess();
  v24 = notify_register_dispatch((v23 + 32), (v37 + 32), v22, v21);
  swift_endAccess();

  _Block_release(v21);

  if (v24)
  {
    goto LABEL_2;
  }

  if (*(v37 + 32) == -1)
  {
    goto LABEL_2;
  }

  v30 = *(v37 + 24);
  v31 = swift_allocObject();
  swift_weakInit();
  v45 = sub_100324CD0;
  v46 = v31;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100272204;
  v44 = &unk_100627230;
  v32 = _Block_copy(&aBlock);
  v33 = v30;

  v34 = String.utf8CString.getter();
  swift_beginAccess();
  v35 = notify_register_dispatch((v34 + 32), (v37 + 36), v33, v32);
  swift_endAccess();

  _Block_release(v32);

  if (v35)
  {
LABEL_2:
  }

  else
  {
    v36 = *(v37 + 36);

    if (v36 != -1)
    {
      return v18;
    }
  }

  if (qword_1006A0B60 != -1)
  {
    sub_100008478();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA6A0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "BiomeStream: Failed to initialize stream: Failed to register for darwin notification", v28, 2u);
  }

  return 0;
}

uint64_t sub_1003240B4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v26 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v26);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v25 = *(v0 + 24);
  v30 = sub_100324CF4;
  v31 = v0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v28 = v20;
  v29 = &unk_100627258;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v22, v23);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v4 + 8))(v10, v1);
  (*(v13 + 8))(v19, v26);
}

uint64_t sub_1003242F4(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1006A0B60 != -1)
    {
      sub_100008478();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA6A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
    }

    sub_1003240B4();
  }

  return result;
}

uint64_t sub_100324404(uint64_t a1)
{
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BiomeStream: Deleting all events...", v5, 2u);
  }

  v6 = [*(a1 + 16) pruner];
  v7 = String._bridgeToObjectiveC()();
  v10[4] = sub_1002DBF48;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003245E0;
  v10[3] = &unk_100627280;
  v8 = _Block_copy(v10);

  [v6 deleteWithPolicy:v7 eventsPassingTest:v8];

  _Block_release(v8);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003245E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_10032463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v13 = sub_100007FEC(v48);
  v51 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchQoS();
  v22 = sub_100007FEC(v21);
  v49 = v23;
  v50 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v31 = Int._bridgeToObjectiveC()().super.super.isa;
  v32 = sub_100324978(a8);
  v33 = sub_100324984(a7);
  v34 = sub_1003249A4(a6);
  v35 = objc_allocWithZone(BMCommAppsHoldAssistFedStats);

  v36 = sub_100324BB0(isa, a1, a2, v31, v32, v33, v34, a3, a4);
  v37 = *(v47 + 24);
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  *(v38 + 24) = v36;
  v55 = sub_100324CA4;
  v56 = v38;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v53 = v39;
  v54 = &unk_1006271B8;
  v40 = _Block_copy(aBlock);

  v41 = v36;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v42, v43);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v51 + 8))(v20, v48);
  (*(v49 + 8))(v29, v50);
}

uint64_t sub_100324978(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100324984(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1005805A0[a1];
  }
}

uint64_t sub_1003249A4(unint64_t a1)
{
  if (a1 < 6)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1003249B0(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA6A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BiomeStream: Donating event...", v7, 2u);
  }

  v8 = [*(a1 + 16) source];
  [v8 sendEvent:a2];
}

uint64_t sub_100324AE0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_beginAccess();
  v2 = *(v0 + 36);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  return v0;
}

uint64_t sub_100324B58()
{
  sub_100324AE0();

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100324BB0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (!a3)
  {
    v16 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = String._bridgeToObjectiveC()();

LABEL_6:
  v18 = [v10 initWithProtoVersion:a1 remotePhoneNumber:v16 holdDuration:a4 holdAssistMLClassification:a5 holdAssistRecommendation:a6 holdAssistObservation:a7 remotePhoneNumberCountryCode:v17];

  return v18;
}

id sub_100324D04()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [result faceTimeBlocked];

  result = [v0 sharedInstance];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result faceTimeSupported];

  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA568);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "isBlocked: %{BOOL}d, isSupported: %{BOOL}d", v9, 0xEu);
  }

  return (v3 & 1 | ((v5 & 1) == 0));
}

id sub_100324E7C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isVideoConferencingAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100324EF8()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = sub_100428E24(0xD000000000000012, 0x80000001005610A0, 1);
  v2 = [v1 applicationState];
  v3 = [v2 isInstalled];

  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (sub_10000D654(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v7[1] = v3;
    sub_1000079AC();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
    sub_100006868();
  }

  return v3;
}

char *sub_10032503C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v3 = a1;
  v4 = sub_1002F344C(&off_1006209B0, v3);
  v5 = objc_allocWithZone(type metadata accessor for FaceTimeInstallationNotifier());
  v6 = sub_100326798(v3, sub_1003250F0, 0, 0, v4, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_10032515C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:a2];
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v19[4] = sub_100326C18;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100004CEC;
  v19[3] = &unk_100627410;
  v16 = _Block_copy(v19);
  v17 = a1;

  swift_unknownObjectRetain();

  [v13 performBlockAfterFirstUnlock:v16];
  _Block_release(v16);
  v18 = *(a3 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver);
  *(a3 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver) = v13;
}

void sub_1003252D8(uint64_t a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100009934(v8 + v9, &aBlock);

    if (*(&v48 + 1))
    {
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
      goto LABEL_7;
    }
  }

  else
  {
    v49 = 0;
    aBlock = 0u;
    v48 = 0u;
  }

  sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    a2(&aBlock);
    v12 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100326B84(&aBlock, v11 + v12);
    swift_endAccess();
  }

LABEL_7:
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA568);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = sub_100324EF8() & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "isFaceTimeInstalled: %{BOOL}d", v16, 8u);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
    swift_beginAccess();
    sub_100009934(v18 + v19, &aBlock);

    if (*(&v48 + 1))
    {
      sub_100009AB0(&aBlock, v44);
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
      v20 = v45;
      v21 = v46;
      sub_100009B14(v44, v45);
      (*(v21 + 16))(v51, &type metadata for Bool, 0xD00000000000001ELL, 0x800000010056B530, &type metadata for Bool, v20, v21);
      v22 = LOBYTE(v51[0]);
      sub_100009B7C(v44);
      if (v22 != 2 && (v22 & 1) != 0)
      {
        return;
      }
    }

    else
    {
      sub_1000099A4(&aBlock, &qword_1006A5868, &unk_1005805F0);
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23 || (v24 = v23, v25 = sub_100009BC8(), v24, (v25 & 1) != 0))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping to setup xpc activity since FaceTime is blocked on this device", v28, 2u);
    }

    goto LABEL_31;
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    sub_100325FA0();
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    v33 = *(v31 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver);
    *(v31 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver) = a4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = *(v34 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver);
    swift_unknownObjectRetain();

    if (v36)
    {
      v37 = swift_allocObject();
      swift_beginAccess();
      v38 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v49 = sub_100007168;
      v50 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v48 = sub_100008E3C;
      *(&v48 + 1) = &unk_100627438;
      v39 = _Block_copy(&aBlock);

      [v36 setProcessStateChanged:v39];
      _Block_release(v39);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v42 = *(v40 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver);
    swift_unknownObjectRetain();

    if (v42)
    {
      v26 = String._bridgeToObjectiveC()();
      v49 = sub_100326C28;
      v50 = a1;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v48 = sub_10032597C;
      *(&v48 + 1) = &unk_100627460;
      v43 = _Block_copy(&aBlock);

      [v42 fetchCurrentProcessStatesForBundleIdentifier:v26 completion:v43];
      swift_unknownObjectRelease();
      _Block_release(v43);
LABEL_31:
    }
  }
}

void sub_100325918(uint64_t a1)
{
  v1 = sub_1002E8C5C(a1);
  if ((v2 & 1) == 0 && v1 == 4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_100008EB4();
    }
  }
}

uint64_t sub_10032597C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1003259FC(uint64_t a1)
{
  v23 = a1;
  v22 = type metadata accessor for UUID();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v22, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Dictionary.init(dictionaryLiteral:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031E958(0xD00000000000001BLL, 0x800000010056B5C0);
  v7 = String.init(format:_:)();
  v9 = v8;

  v27 = &type metadata for String;
  *&v26 = v7;
  *(&v26 + 1) = v9;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  sub_100040430();

  v10 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031E958(0xD00000000000001DLL, 0x800000010056B5E0);
  v11 = String.init(format:_:)();
  v13 = v12;

  v27 = &type metadata for String;
  *&v26 = v11;
  *(&v26 + 1) = v13;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v10;
  sub_100040430();

  v14 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = sub_10031E958(0xD000000000000025, 0x800000010056B600);
  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v16;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v14;
  sub_100040430();

  v17 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = sub_10031E958(0xD000000000000023, 0x800000010056B630);
  v27 = &type metadata for String;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  sub_10003EBF0(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v17;
  sub_100040430();

  sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
  v20 = static IMUserNotificationCenter.shared.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v5, v22);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v23;
  IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
}

void sub_100325DEC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA568);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Not ending ScreenSharing because user didn't choose to end", v3, 2u);
    }
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA568);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "User tapped on App store button.", v7, 2u);
    }

    sub_1003262AC();
  }
}

uint64_t sub_100325FA0()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA568);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000D654(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1000079AC();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100006868();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_100326790;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003EF338;
  v13[3] = &unk_100627320;
  v10 = _Block_copy(v13);

  v11 = String.utf8CString.getter();
  xpc_activity_register((v11 + 32), empty, v10);

  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_100326190(_xpc_activity_s *a1)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA568);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeAppInstallAlertActivity: run activity fired", v4, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_100008EB4();
    }
  }
}

id sub_1003262AC()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v41 - v3;
  v5 = type metadata accessor for URL();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for URLComponents();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  URLComponents.init()();
  URLComponents.scheme.setter();
  sub_10026D814(&unk_1006A47B0, &unk_1005805E0);
  v25 = *(type metadata accessor for URLQueryItem() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_10057D690;
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if (sub_100015468(v4, 1, v5) == 1)
  {
    sub_1000099A4(v4, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC();
    }

    v28 = type metadata accessor for Logger();
    sub_10000AF9C(v28, qword_1006BA568);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (sub_10000D654(v30))
    {
      *swift_slowAlloc() = 0;
      sub_1000079AC();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      sub_100006868();
    }

    return (*(v18 + 8))(v24, v15);
  }

  (*(v8 + 32))(v14, v4, v5);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v38 = result;
    URL._bridgeToObjectiveC()(v37);
    v40 = v39;
    [v38 openURL:v39 configuration:0 completionHandler:0];

    (*(v8 + 8))(v14, v5);
    return (*(v18 + 8))(v24, v15);
  }

  __break(1u);
  return result;
}

id sub_1003266A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceTimeInstallationNotifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100326798(void *a1, void (*a2)(void *__return_ptr), uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v42 = a4;
  v43 = a5;
  ObjectType = swift_getObjectType();
  v41 = ObjectType;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = *(v44 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_lockStateObserver] = 0;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_phoneProcessObserver] = 0;
  v22 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  *v22 = 0;
  v22[1] = 0;
  v23 = &a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction];
  *v23 = 0;
  v23[8] = 1;
  a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice] = 2;
  *&a6[OBJC_IVAR___CSDFaceTimeInstallationNotifier_queue] = a1;
  v24 = a1;
  a2(aBlock);
  swift_beginAccess();
  sub_100326B84(aBlock, v21);
  swift_endAccess();
  v25 = type metadata accessor for FaceTimeInstallationNotifier();
  v48.receiver = a6;
  v48.super_class = v25;
  v26 = objc_msgSendSuper2(&v48, "init");
  v27 = swift_allocObject();
  v29 = v42;
  v28 = v43;
  v27[2] = v42;
  v27[3] = v24;
  v27[4] = v26;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = v28;
  v27[8] = ObjectType;
  aBlock[4] = sub_100326BF4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100627370;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  v32 = v26;
  v33 = v24;
  v34 = v32;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v46 + 8))(v15, v11);
  (*(v44 + 8))(v20, v45);

  v35 = swift_allocObject();
  *(v35 + 16) = v41;
  v36 = &v34[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  v38 = *&v34[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure];
  v37 = *&v34[OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure + 8];
  *v36 = sub_100326C08;
  v36[1] = v35;
  sub_1000051F8(v38);

  return v34;
}

uint64_t sub_100326B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5868, &unk_1005805F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100326D24(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100326E14()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallController_callChanged);
  v2 = *(v0 + OBJC_IVAR___CSDCallController_callChanged + 8);
  sub_1000115CC(v1);
  return v1;
}

uint64_t sub_100326EFC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCallController_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCallController_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCallController_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

char *sub_100326F1C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DeviceRestrictionController();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for DirtyCallManager());
  v9 = a2;
  v10 = sub_100317744(v9);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    DeviceRestrictionController.init(profileConnection:)();
    v12 = objc_allocWithZone(type metadata accessor for CallController());
    v13 = sub_1003271A8(a1, v10, v8, v12);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003270E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003271A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR___CSDCallController_callChanged];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a4[OBJC_IVAR___CSDCallController_dataSources] = a1;
  *&a4[OBJC_IVAR___CSDCallController_dirtyCallManager] = a2;
  v16.receiver = a4;
  v16.super_class = type metadata accessor for CallController();
  v9 = objc_msgSendSuper2(&v16, "init");
  DeviceRestrictionController.resetRestrictions()();
  v10 = *&v9[OBJC_IVAR___CSDCallController_dirtyCallManager];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_100023328;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100024F0C;
  v15[3] = &unk_1006274D0;
  v12 = _Block_copy(v15);
  swift_unknownObjectRetain();

  [v10 setCallChanged:v12];
  _Block_release(v12);

  swift_unknownObjectRelease();
  v13 = type metadata accessor for DeviceRestrictionController();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v9;
}

uint64_t sub_1003273B0(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v13[4] = a5;
  v13[5] = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003274A0;
  v13[3] = &unk_100627588;
  v11 = _Block_copy(v13);

  [v6 getPickableRoutesForCategory:v10 mode:a4 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1003274A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_100327544(uint64_t a1)
{
  v4 = 0;
  if ([v1 pickRoute:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100327640()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [swift_getObjCClassFromMetadata() isPhoneCallAudioCategory:v0];

  return v1;
}

__n128 sub_100327688(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10032769C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100327704(void *a1)
{
  v1 = a1;
  v2 = [v1 isOutgoing];
  v3 = _AXSDefaultRouteForCall();
  v4 = v1;
  sub_10032817C(v4);
  sub_10000FA2C();
  [v4 ignoresBluetoothDeviceUID];
  [v4 isEmergency];

  return v2 | (v3 << 32);
}

uint64_t sub_1003277B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 0;
  v9 = a1 ^ a5;
  if (!HIDWORD(v9) && (v9 & 1) == 0)
  {
    result = (a3 | a7) == 0;
    if (a3)
    {
      if (a7)
      {
        if (a2 == a6 && a3 == a7)
        {
          return 1;
        }

        else
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }
  }

  return result;
}

void sub_10032783C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_10003EBF0(v11, (v10 + 32 * v9));
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000A164(a1, a2, a3, a4);
  *(*(v8 + 48) + 8 * v7) = v9;
  v10 = *(v8 + 56);
  v11 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  sub_100007BF0(v11);
  sub_100328370(a3, v10 + *(v12 + 72) * a1, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
  sub_100017180();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

void sub_100327908(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  sub_100015A48(v4, v5, v6, v7);
  *(v11 + v9) = v10;
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v8, v14);
  }
}

void sub_100327948()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v10 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  sub_100007BF0(v10);
  sub_1003281EC(v1, v9 + *(v11 + 72) * v3);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_1003279D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000F690(a1, a2, a3, a4, a5);
  v7 = (*(v6 + 56) + 24 * v5);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v13);
  }
}

void sub_100327A10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100008498(a1, a2, a3, a4);
  sub_10001629C(v7, v8, v9, v10);
  v11 = type metadata accessor for UUID();
  sub_100010300(v11);
  v13 = *(v12 + 32);
  v14 = *(v12 + 72);
  v15 = sub_100015D68();
  v16(v15);
  *(*(v4 + 56) + 8 * v6) = v5;
  sub_100017180();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v17;
  }
}

void sub_100327A88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 32);
  v13 = *(v11 + 72) * v7;
  v12(v9 + v13, v6, v10);
  v12(*(v4 + 56) + v13, v5, v10);
  sub_100017180();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v14;
  }
}

void sub_100327B38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000151C4(a1, a6 + 8 * (a1 >> 6));
  sub_100035AA0(v6, v7, v8, v9, v10, v11);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    sub_100008B80(v12, v13);
  }
}

void sub_100327B74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  v8 = sub_100015F80(v4, v5, v6, v7);
  *(v11 + 8 * v8) = v10;
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v9, v14);
  }
}

void sub_100327BB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  sub_100015A48(v5, v6, v7, v8);
  sub_10003EBF0(v11, (v10 + 32 * v9));
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327BF8()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = sub_10000F690(v7, v5, v3, v9, v10);
  sub_100017D3C(v11, v12, v13, v14, v15);
  v16 = type metadata accessor for UUID();
  sub_100010300(v16);
  (*(v17 + 32))(v2 + *(v17 + 72) * v8, v6);
  sub_10000C728();
  *v18 = v4;
  v18[1] = v1;
  sub_100017180();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v19;
  }
}

uint64_t sub_100327C84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000151C4(a1, a3 + 8 * (a1 >> 6));
  *(*(v4 + 56) + 8 * result) = v5;
  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
  }

  return result;
}

void sub_100327CC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_100328314(v11, v10 + 16 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327D1C()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v10 = type metadata accessor for PendingMembershipInfo();
  sub_100007BF0(v10);
  sub_100328370(v1, v9 + *(v11 + 72) * v3, type metadata accessor for PendingMembershipInfo);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

void sub_100327D98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000151C4(a1, a6 + 8 * (a1 >> 6));
  *(v7[6] + 8 * v6) = v8;
  v9 = v7[7] + 24 * v6;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12 & 1;
  *(v9 + 17) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_100008B80(v7, v16);
  }
}

void sub_100327DF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100008498(a1, a2, a3, a4);
  sub_10001629C(v7, v8, v9, v10);
  v11 = type metadata accessor for UUID();
  sub_100010300(v11);
  v13 = *(v12 + 32);
  v14 = *(v12 + 72);
  v15 = sub_100015D68();
  v16(v15);
  v17 = *(v4 + 56);
  v18 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  sub_100007BF0(v18);
  sub_100328370(v5, v17 + *(v19 + 72) * v6, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
  sub_100017180();
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v20;
  }
}

void sub_100327E9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_1003282B8(v11, v10 + 8 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_100327EE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  *(v5[6] + 4 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v5, v10);
  }
}

void sub_100327F18()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = sub_10000F690(v7, v5, v3, v9, v10);
  sub_100017D3C(v11, v12, v13, v14, v15);
  v16 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  sub_100007BF0(v16);
  sub_100328370(v6, v2 + *(v17 + 72) * v8, type metadata accessor for SharePlayAvailabilityManager.CallAndHandle);
  sub_10000C728();
  *v18 = v4;
  v18[1] = v1;
  sub_100017180();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v19;
  }
}

void sub_100327FA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10000A164(a1, a2, a3, a4);
  *(v5[6] + v4) = v6 & 1;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1000113A0(v5, v10);
  }
}

void sub_100327FE4()
{
  sub_10000FDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = sub_10000F690(v7, v5, v3, v9, v10);
  sub_100017D3C(v11, v12, v13, v14, v15);
  v16 = type metadata accessor for UUID();
  sub_100010300(v16);
  (*(v17 + 32))(v2 + *(v17 + 72) * v8, v6);
  sub_10000C728();
  *v18 = v4;
  *(v18 + 8) = v1;
  sub_100017180();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v19;
  }
}

void sub_10032808C()
{
  sub_10000FDC4();
  v3 = v2;
  sub_10000A82C(v2, v4, v5, v6, v7);
  v9 = *(v8 + 56);
  v11 = v10(0);
  sub_100010300(v11);
  (*(v12 + 32))(v9 + *(v12 + 72) * v3, v1);
  sub_100017180();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v13;
  }
}

void sub_100328108(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000A82C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v10);
  }
}

void sub_100328138(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A164(a1, a2, a3, a4);
  v9 = sub_100015F80(v5, v6, v7, v8);
  sub_10032825C(v11, v10 + 8 * v9);
  sub_100017180();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_10032817C(void *a1)
{
  v2 = [a1 sourceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003281EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100328370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100010300(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003283D0(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 40); v1; --v1)
  {
    v3 = *i;
    i += 3;
    result = sub_100429184(v3);
  }

  return result;
}

void sub_10032841C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = 0;

  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v3 + 48) + ((v9 << 9) | (8 * v11)));
    v13 = *(type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0) + 24);
    v14 = *(a2 + v13);
    v15 = sub_1002DA664(v12);
    if (v16)
    {
      v17 = v15;
      v18 = *(a2 + v13);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(a2 + v13);
      *(a2 + v13) = 0x8000000000000000;
      v19 = a2;
      v20 = *(v25 + 24);
      sub_10026D814(&unk_1006A6FC0, &qword_100580940);
      v21 = v20;
      a2 = v19;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v21);
      v22 = *(*(v25 + 56) + 24 * v17);
      _NativeDictionary._delete(at:)();
      *(a2 + v13) = v25;

      v3 = v23;
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
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1003285B4()
{
  v1 = *(v0 + OBJC_IVAR___CSDSimulatedConversationManager_queue);
  sub_10026D814(&qword_1006A5AA8, &qword_100580840);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100328634(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  sub_100007C2C();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  sub_100007C2C();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10032E18C;
  *(v5 + 24) = v4;
  v11[4] = sub_1002C7C44;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  sub_10001718C();
  v11[2] = v6;
  v11[3] = &unk_1006279D0;
  v7 = _Block_copy(v11);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1003287AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1003285B4();
  return sub_1003287F4;
}

uint64_t sub_1003287F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_100328634(*a1);
  }

  v4 = *a1;

  sub_100328634(v5);
}

void sub_10032884C()
{
  sub_100005EF4();
  v0 = sub_10026D814(&qword_1006A5C88, &qword_100580950);
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  v8 = &v18[-v7];
  v9 = sub_10026D814(&qword_1006A5C90, &qword_100580958);
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  v17 = &v18[-v16];
  swift_beginAccess();
  sub_10026D814(&qword_1006A5C98, &qword_100580960);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100006890();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10026D814(&qword_1006A5CA0, &unk_100580968);
  sub_10001000C(&qword_1006A5CA8, &qword_1006A5C88, &qword_100580950);
  Publisher.map<A>(_:)();

  (*(v3 + 8))(v8, v0);
  sub_10001000C(&unk_1006A5CB0, &qword_1006A5C90, &qword_100580958);
  Publisher.eraseToAnyPublisher()();
  (*(v12 + 8))(v17, v9);
  sub_100005EDC();
}

uint64_t sub_100328AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100328BA4();
  }

  else
  {
    type metadata accessor for UUID();
    type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_10000EED0(&qword_1006A3BE0, &type metadata accessor for UUID);
    v6 = Dictionary.init(dictionaryLiteral:)();
  }

  *a2 = v6;
  a2[1] = v3;
}

uint64_t sub_100328BA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100328C18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*sub_100328C84(void *a1))(void *a1)
{
  v2 = sub_1002FDF84(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  sub_10000D310();
  v2[6] = static Published.subscript.modify();
  return sub_100328D10;
}

void sub_100328D10(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_100328D78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v67 = v4;
  v68 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_1000151DC();
  v66 = v8;
  v9 = sub_10026D814(&qword_1006A5C98, &qword_100580960);
  v10 = sub_100007FEC(v9);
  v74 = v11;
  v75 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  v73 = &v64 - v15;
  sub_10000D414();
  v72 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = sub_100007FEC(v72);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v27);
  sub_100007FDC();
  v65 = type metadata accessor for DispatchQoS();
  v28 = sub_100007FEC(v65);
  v64 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28, v32);
  sub_100007FDC();
  v35 = v34 - v33;
  v71 = OBJC_IVAR___CSDSimulatedConversationManager_queue;
  v36 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v69 = " conversation %@";
  v70 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000EED0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v37, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v72);
  v72 = v35;
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v71;
  *&v0[v71] = v38;
  v40 = OBJC_IVAR___CSDSimulatedConversationManager___activeGroupSessionsByGroupUUID;
  aBlock = _swiftEmptyDictionarySingleton;
  sub_10026D814(&qword_1006A5AA8, &qword_100580840);
  v41 = v73;
  Published.init(initialValue:)();
  (*(v74 + 32))(&v1[v40], v41, v75);
  v42 = &v1[OBJC_IVAR___CSDSimulatedConversationManager_localCallerID];
  *v42 = 0xD000000000000016;
  *(v42 + 1) = 0x800000010056BA80;
  v43 = [objc_allocWithZone(CSDClientManager) initWithSerialQueue:*&v1[v39]];
  *&v1[OBJC_IVAR___CSDSimulatedConversationManager_clientManager] = v43;
  v44 = type metadata accessor for SimulatedConversationManager(0);
  v83.receiver = v1;
  v83.super_class = v44;
  v45 = objc_msgSendSuper2(&v83, "init");
  v46 = OBJC_IVAR___CSDSimulatedConversationManager_queue;
  v47 = *&v45[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  sub_100006890();
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  sub_100007C2C();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10032E1D0;
  *(v49 + 24) = v48;
  v81 = sub_1002C7C44;
  v82 = v49;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_10002007C;
  v80 = &unk_100627A48;
  v50 = _Block_copy(&aBlock);
  v51 = v45;
  v52 = v47;

  dispatch_sync(v52, v50);

  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
  }

  else
  {
    v54 = *&v45[v46];
    sub_100006890();
    v55 = swift_allocObject();
    *(v55 + 16) = v51;
    v81 = sub_10032E1D8;
    v82 = v55;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_100004CEC;
    v80 = &unk_100627A98;
    v56 = _Block_copy(&aBlock);
    v57 = v54;
    v58 = v72;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_10000A184();
    sub_10000EED0(v59, v60);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10001000C(v61, &unk_1006A2960, &unk_10057D6E0);
    v62 = v66;
    v63 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);

    (*(v67 + 8))(v62, v63);
    (*(v64 + 8))(v58, v65);

    return v51;
  }

  return result;
}

void sub_100329458(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_clientManager);
  v3 = objc_opt_self();
  v4 = [v3 simulatedConversationControllerClientXPCInterface];
  [v2 setRemoteObjectInterface:v4];

  v5 = [v3 simulatedConversationControllerServerXPCInterface];
  [v2 setExportedInterface:v5];

  [v2 setExportedObject:a1];
  [v2 setRequiredConnectionCapability:@"modify-simulated-conversations"];
  v12 = sub_100329630;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100024F0C;
  v11 = &unk_100627AC0;
  v6 = _Block_copy(&v8);
  [v2 setInterruptionHandler:v6];
  _Block_release(v6);
  v12 = sub_10032963C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100024F0C;
  v11 = &unk_100627AE8;
  v7 = _Block_copy(&v8);
  [v2 setInvalidationHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100329648(void *a1)
{
  v2 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10057D690;
  *(v3 + 56) = sub_10026D814(&qword_1006A5CC0, &qword_100580978);
  *(v3 + 64) = sub_10001000C(&qword_1006A5CC8, &qword_1006A5CC0, &qword_100580978);
  *(v3 + 32) = a1;
  v4 = a1;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_100329750(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_clientManager);
  v2 = String._bridgeToObjectiveC()();
  [v1 startListeningOnMachServiceWithName:v2];
}

void sub_1003297EC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v0[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v10 + 16))(v14, v6, v7);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  (*(v10 + 32))(v17 + v15, v14, v7);
  *(v17 + v16) = v4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  sub_100007C2C();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10032E090;
  *(v18 + 24) = v17;
  v25[4] = sub_1002C7C44;
  v25[5] = v18;
  sub_100009FE4();
  v25[1] = 1107296256;
  sub_10001718C();
  v25[2] = v19;
  v25[3] = &unk_100627958;
  v20 = _Block_copy(v25);
  v21 = v0;

  v22 = v2;

  dispatch_sync(v24, v20);
  _Block_release(v20);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_100005EDC();
  }
}

uint64_t sub_100329A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37[1] = a3;
  v38 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = __chkstk_darwin(v6, v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v37 - v14;
  v16 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = v37 - v23;
  v39 = a1;
  v25 = sub_100328BA4();
  sub_1002CB8B4(a2, v25);

  v26 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v27 = sub_100015468(v24, 1, v26);
  result = sub_10032DE1C(v24);
  if (v27 == 1)
  {
    v29 = v7[2];
    v29(v15, a2, v6);
    v29(v12, a2, v6);

    v31 = sub_100329CF0(v30);
    *&v21[v26[6]] = _swiftEmptyDictionarySingleton;
    v32 = v26[8];
    *&v21[v32] = sub_1003A7258(-1);
    v29(v21, v12, v6);
    *&v21[v26[5]] = v31;
    v33 = v38;
    *&v21[v26[7]] = v38;
    v21[v26[9]] = 1;
    v34 = v7[1];
    v35 = v33;
    v34(v12, v6);
    sub_10000AF74(v21, 0, 1, v26);
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = static Published.subscript.modify();
    sub_100381EB8(v21, v15);
    v36(v40, 0);
  }

  return result;
}

void *sub_100329CF0(void *result)
{
  v1 = result;
  v9 = _swiftEmptyArrayStorage;
  v2 = result[2];
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = (result + 4);
  while (v3 < v1[2])
  {
    sub_100006A94(v5, v8);
    sub_100006A94(v8, v7);
    sub_10026D814(&qword_1006A5BE0, &qword_100580880);
    if (sub_100015A6C())
    {
      goto LABEL_8;
    }

    sub_100006A94(v8, v7);
    sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    if (sub_100015A6C())
    {
      result = [v6 _stripPotentialTokenURIWithToken:0];
      if (!result)
      {
        goto LABEL_17;
      }

LABEL_8:
      sub_100009B7C(v8);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v9;
      goto LABEL_12;
    }

    result = sub_100009B7C(v8);
LABEL_12:
    ++v3;
    v5 += 32;
    if (v2 == v3)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100329EA8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v10 = *&v1[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v6 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  (*(v6 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_100007C2C();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10032E000;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_10001718C();
  aBlock[2] = v14;
  aBlock[3] = &unk_1006278E0;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  dispatch_sync(v10, v15);
  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032A0AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v15);
  v17 = &v23[-v16];
  v18 = sub_100328BA4();
  sub_1002CB8B4(a2, v18);

  v19 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v20 = sub_100015468(v17, 1, v19);
  result = sub_10032DE1C(v17);
  if (v20 != 1)
  {
    (*(v4 + 16))(v8, a2, v3);
    sub_10000AF74(v14, 1, 1, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = static Published.subscript.modify();
    sub_100381EB8(v14, v8);
    v22(v23, 0);
  }

  return result;
}

void sub_10032A2D0()
{
  sub_100005EF4();
  v61 = v1;
  v65 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v65);
  v67 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2, v6);
  sub_1000151DC();
  v63 = v7;
  sub_10000D414();
  v66 = type metadata accessor for DispatchQoS();
  v8 = sub_100007FEC(v66);
  v64 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_1000151DC();
  v62 = v13;
  sub_10000D414();
  v55 = type metadata accessor for UUID();
  v14 = sub_100007FEC(v55);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D414();
  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = (v28 - v27);
  v30 = type metadata accessor for DispatchTime();
  v58 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v30, v33);
  v36 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v37);
  v56 = &v54 - v38;
  v60 = *(v0 + OBJC_IVAR___CSDSimulatedConversationManager_queue);
  static DispatchTime.now()();
  *v29 = 2;
  (*(v23 + 104))(v29, enum case for DispatchTimeInterval.seconds(_:), v20);
  + infix(_:_:)();
  (*(v23 + 8))(v29, v20);
  v39 = *(v31 + 8);
  v57 = v31 + 8;
  v59 = v39;
  v39(v36, v30);
  sub_100006890();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v54;
  v41 = v55;
  (*(v16 + 16))(v54, v61, v55);
  v43 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  (*(v16 + 32))(v44 + v43, v42, v41);
  v69[4] = sub_10032DFE8;
  v69[5] = v44;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 1107296256;
  sub_10000A600();
  v69[2] = v45;
  v69[3] = &unk_100627868;
  v46 = _Block_copy(v69);

  v47 = v62;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v48, v49);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v50, &unk_1006A2960, &unk_10057D6E0);
  v51 = v63;
  v52 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v56;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v46);
  (*(v67 + 8))(v51, v52);
  (*(v64 + 8))(v47, v66);
  v59(v53, v58);

  sub_100005EDC();
}

void sub_10032A7DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v4 + 16))(v8, a2, v3);
    v11 = sub_100328C84(v18);
    v12 = sub_10040BF00(v17);
    v14 = v13;
    v15 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    if (!sub_100015468(v14, 1, v15))
    {
      sub_10032A978();
    }

    (v12)(v17, 0);
    (*(v4 + 8))(v8, v3);
    (v11)(v18, 0);
  }
}

void sub_10032A978()
{
  v1 = v0;
  v2 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v66 = v2[6];
  v3 = *(v1 + v66);

  v4 = sub_1002F2270();
  v81 = v4;
  v5 = *(v1 + v2[5]);
  v68 = sub_10000B6F4(v5);
  if (!v68)
  {
LABEL_61:
    sub_10032841C(v4, v1);
    v61 = sub_10022AE64();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10057D690;
    v80 = *(v1 + v66);

    sub_10026D814(&qword_1006A5C48, &qword_100580938);
    v63 = String.init<A>(reflecting:)();
    v65 = v64;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = sub_100009D88();
    *(v62 + 32) = v63;
    *(v62 + 40) = v65;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v6 = 0;
  v75 = *(v1 + v2[7]);
  v76 = v5 & 0xC000000000000001;
  v69 = v5 + 32;
  v70 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v8 = v68;
  v67 = v1;
LABEL_3:
  if (v76)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v6 >= *(v70 + 16))
    {
      goto LABEL_64;
    }

    v10 = *(v69 + 8 * v6);
    v9 = swift_unknownObjectRetain();
  }

  if (!__OFADD__(v6++, 1))
  {
    v78 = v9;
    v12 = [v9 v7[248]];
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
    v15 = 1 << *(v13 + 32);
    v16 = (v15 + 63) >> 6;
    v17 = 56;
    if (!v16)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = *(v13 + v17);
      if (v18)
      {
        break;
      }

      v14 -= 64;
      --v16;
      v17 += 8;
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    v19 = __clz(__rbit64(v18));
    if (v19 - v15 != v14)
    {
      v20 = sub_1002E9474(v19 - v14, *(v13 + 36), 0, v13);
      v21 = v22;
    }

    else
    {
LABEL_13:

      v20 = 0;
      v21 = 0;
    }

    v23 = [v75 idsDestination];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v21)
      {
        if (v27)
        {
          if (v20 == v25 && v21 == v27)
          {
            swift_unknownObjectRelease();

            goto LABEL_59;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_56;
          }

          goto LABEL_28;
        }
      }

      else if (!v27)
      {
        goto LABEL_56;
      }
    }

    else if (!v21)
    {
      goto LABEL_56;
    }

LABEL_28:
    v30 = [v78 v7[248]];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = -1 << *(v31 + 32);
    v33 = _HashTable.startBucket.getter();
    if (v33 == 1 << *(v31 + 32))
    {
      goto LABEL_55;
    }

    v34 = sub_1002E9474(v33, *(v31 + 36), 0, v31);
    v36 = v35;

    v37 = objc_opt_self();
    v71 = v34;
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 normalizedHandleWithDestinationID:v38];

    if (!v39)
    {
LABEL_55:

LABEL_56:
      swift_unknownObjectRelease();
      goto LABEL_59;
    }

    v40 = 1 << *(v77 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v77 + 64);
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    while (1)
    {
      while (1)
      {
        if (!v42)
        {
          while (1)
          {
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
              goto LABEL_63;
            }

            if (v45 >= v43)
            {
              break;
            }

            v42 = *(v77 + 64 + 8 * v45);
            ++v44;
            if (v42)
            {
              v44 = v45;
              goto LABEL_39;
            }
          }

          if (_swiftEmptyArrayStorage[2])
          {
            sub_1003283D0(_swiftEmptyArrayStorage);

            swift_unknownObjectRelease();

            v1 = v67;
          }

          else
          {

            sub_1003A7258(-1);
            v59 = v39;
            v1 = v67;
            v60 = *(v67 + v66);
            swift_isUniquelyReferenced_nonNull_native();
            v79 = *(v67 + v66);
            sub_100379510();

            swift_unknownObjectRelease();
            v77 = v79;
            *(v67 + v66) = v79;
          }

          v8 = v68;
LABEL_59:
          if (v6 == v8)
          {
            v4 = v81;
            goto LABEL_61;
          }

          goto LABEL_3;
        }

LABEL_39:
        v46 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v47 = *(v77 + 56) + 24 * (v46 | (v44 << 6));
        v74 = *(v47 + 8);
        v72 = *(v47 + 17);
        v73 = *(v47 + 16);
        v48 = *v47;
        v49 = TUCopyIDSCanonicalAddressForHandle();
        if (v49)
        {
          break;
        }

LABEL_45:

        v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
      }

      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (v51 == v71 && v53 == v36)
      {
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10039A360(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v57 = _swiftEmptyArrayStorage[2];
      v56 = _swiftEmptyArrayStorage[3];
      v7 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
      if (v57 >= v56 >> 1)
      {
        sub_10039A360((v56 > 1), v57 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v57 + 1;
      v58 = &_swiftEmptyArrayStorage[3 * v57];
      v58[4] = v48;
      v58[5] = v74;
      *(v58 + 48) = v73;
      *(v58 + 49) = v72;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

id sub_10032B024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedConversationManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10032B130()
{
  sub_10032DB40(319, &qword_1006A5AA0, &qword_1006A5AA8, &qword_100580840, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_10032B208(char a1)
{
  v2 = [objc_allocWithZone(TUMutableConversationParticipantCapabilities) init];
  v3 = sub_10000D458([v2 setScreenSharingAvailable:1], "setGondolaCallingAvailable:");
  v4 = sub_10000D458(v3, "setSupportsLeaveContext:");
  v5 = sub_10000D458(v4, "setGftDowngradeToOneToOneAvailable:");
  v6 = sub_10000D458(v5, "setUPlusOneScreenShareAvailable:");
  sub_10000D458(v6, "setUPlusNDowngradeAvailable:");
  [v2 setSharePlayProtocolVersion:TUSharePlayProtocolVersion()];
  [v2 setPersonaAvailable:a1 & 1];
  v7 = v2;
  [v7 setVisionCallEstablishmentVersion:TUVisionCallEstablishmentVersion()];
  [v7 setVisionFeatureVersion:TUVisionFeatureVersion()];
  [v7 setUPlusOneAVLessAvailable:1];
  v8 = [objc_msgSend(objc_opt_self() "localCapabilities")];
  swift_unknownObjectRelease();
  [v7 setMomentsAvailable:v8];

  return v7;
}

BOOL sub_10032B3F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10032B368(*a1, *(a1 + 8), v3 | *(a1 + 16), *a2, *(a2 + 8), v4 | *(a2 + 16));
}

void sub_10032B438()
{
  sub_100005EF4();
  v58 = v1;
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v4;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v63);
  v65 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_1000151DC();
  v61 = v11;
  sub_10000D414();
  v64 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v64);
  v62 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_1000151DC();
  v60 = v17;
  sub_10000D414();
  v18 = type metadata accessor for UUID();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  v25 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057E830;
  *(v26 + 56) = sub_100006AF0(0, &qword_1006A5C68, TUSimulatedParticipantUpdate_ptr);
  *(v26 + 64) = sub_100290B1C(&qword_1006A5C70, &qword_1006A5C68, TUSimulatedParticipantUpdate_ptr);
  *(v26 + 32) = v3;
  v56 = v3;
  v27 = [v5 identifier];
  *(v26 + 96) = &type metadata for UInt64;
  *(v26 + 104) = &protocol witness table for UInt64;
  *(v26 + 72) = v27;
  v28 = v58;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000D310();
  *(v26 + 136) = sub_100006AF0(v30, v31, v32);
  sub_10000D310();
  *(v26 + 144) = sub_100290B1C(v33, v34, v35);
  *(v26 + 112) = isa;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v36 = v59;
  v57 = *&v59[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v21 + 16))(&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v18);
  v37 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v38 = (v23 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  (*(v21 + 32))(v39 + v37, &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v40 = v55;
  v41 = v56;
  *(v39 + v38) = v55;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v67[4] = sub_10032DFD0;
  v67[5] = v39;
  sub_100009FE4();
  v67[1] = 1107296256;
  sub_10000A600();
  v67[2] = v42;
  v67[3] = &unk_1006277F0;
  v43 = _Block_copy(v67);
  v44 = v41;
  v45 = v36;
  v46 = v40;
  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v47, v48);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v49, &unk_1006A2960, &unk_10057D6E0);
  sub_10000FA38();
  v50 = v61;
  v51 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  sub_10000C734();
  v52(v50, v51);
  v53 = sub_100017D48();
  v54(v53);

  sub_100005EDC();
}

uint64_t sub_10032B8A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v46 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v42 - v20;
  v22 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v27 = sub_100328BA4();
  sub_1002CB8B4(a2, v27);

  if (sub_100015468(v21, 1, v22) == 1)
  {
    return sub_10032DE1C(v21);
  }

  sub_10032DE84(v21, v26);
  v29 = [a3 identifier];
  v30 = *(v22 + 24);
  v31 = *&v26[v30];
  if (*(v31 + 16))
  {
    v32 = v29;
    v33 = sub_1002DA664(v29);
    if (v34)
    {
      v35 = *(v31 + 56) + 24 * v33;
      v36 = *v35;
      v44 = *(v35 + 8);
      v45 = v32;
      v43 = *(v35 + 16);
      v37 = *(v35 + 17);
      v42 = v36;
      v38 = v46;
      if (sub_1002B7B44([v46 hasSet]))
      {
        [v38 isSpatialPersonaEnabled];
      }

      v39 = v42;
      v40 = *&v26[v30];
      swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *&v26[v30];
      sub_100379510();

      *&v26[v30] = v48[0];
    }
  }

  (*(v8 + 16))(v12, a2, v7);
  sub_10032DCDC(v26, v18);
  sub_10000AF74(v18, 0, 1, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = static Published.subscript.modify();
  sub_100381EB8(v18, v12);
  v41(v48, 0);

  return sub_10032DD40(v26);
}

void sub_10032BC28()
{
  sub_100005EF4();
  v66 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v70);
  v72 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_1000151DC();
  v68 = v12;
  sub_10000D414();
  v71 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v71);
  v69 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_1000151DC();
  v67 = v18;
  sub_10000D414();
  v65 = type metadata accessor for UUID();
  v19 = sub_100007FEC(v65);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  v25 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057E830;
  sub_10000D310();
  *(v26 + 56) = sub_100006AF0(v27, v28, v29);
  sub_10000D310();
  *(v26 + 64) = sub_100290B1C(v30, v31, v32);
  *(v26 + 32) = v6;
  sub_10000D310();
  *(v26 + 96) = sub_100006AF0(v33, v34, v35);
  sub_10000D310();
  *(v26 + 104) = sub_100290B1C(v36, v37, v38);
  *(v26 + 72) = v4;
  v63 = v6;
  v39 = v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v26 + 136) = sub_100006AF0(0, &qword_1006A5C50, NSUUID_ptr);
  *(v26 + 144) = sub_100290B1C(&unk_1006A4AB0, &qword_1006A5C50, NSUUID_ptr);
  *(v26 + 112) = isa;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v41 = v66;
  v64 = *&v66[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  v42 = v65;
  (*(v21 + 16))(&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v65);
  v43 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v44 = (v23 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  (*(v21 + 32))(v45 + v43, &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v46 = v63;
  *(v45 + v44) = v63;
  *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v74[4] = sub_10032DEE8;
  v74[5] = v45;
  sub_100009FE4();
  v74[1] = 1107296256;
  sub_10000A600();
  v74[2] = v47;
  v74[3] = &unk_1006277A0;
  v48 = _Block_copy(v74);
  v49 = v46;
  v50 = v39;
  v51 = v41;
  static DispatchQoS.unspecified.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v52, v53);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10000D310();
  sub_10001000C(v54, v55, v56);
  sub_10000FA38();
  v57 = v68;
  v58 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);
  sub_10000C734();
  v59(v57, v58);
  v60 = sub_100017D48();
  v61(v60);

  sub_100005EDC();
}

void sub_10032C0B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v79 = a4;
  v82 = type metadata accessor for UUID();
  v80 = *(v82 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v82, v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v81 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100328BA4();
  sub_1002CB8B4(a2, v24);

  v84 = v19;
  if (sub_100015468(v18, 1, v19) == 1)
  {
    sub_10032DE1C(v18);
    return;
  }

  sub_10032DE84(v18, v23);
  v25 = TUCopyIDSCanonicalAddressForHandle();
  if (v25)
  {
    v26 = v25;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v83 = 0;
    v28 = 0;
  }

  v29 = *&v23[*(v84 + 20)];
  if (sub_10000B6F4(v29) < 3)
  {
    sub_10032DD40(v23);

    return;
  }

  v74 = a3;
  v75 = a2;
  v76 = v10;
  v77 = a1;
  v78 = v23;
  v30 = sub_10000B6F4(v29);
  v31 = 0;
  v32 = v29 & 0xC000000000000001;
  v33 = v29 & 0xFFFFFFFFFFFFFF8;
  v87 = v29 + 32;
  v34 = &type metadata for String;
  v85 = v29 & 0xFFFFFFFFFFFFFF8;
  v86 = v29 & 0xC000000000000001;
  while (1)
  {
    if (v31 == v30)
    {
      v59 = sub_10022AE64();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_10057D6A0;
      *(v60 + 56) = sub_10026D814(&qword_1006A5C78, &qword_100580948);
      *(v60 + 64) = sub_10001000C(&qword_1006A5C80, &qword_1006A5C78, &qword_100580948);
      *(v60 + 32) = v29;

      v61 = sub_10001E478(v83, v28);
      v63 = v62;

      *(v60 + 96) = v34;
      *(v60 + 104) = sub_100009D88();
      *(v60 + 72) = v61;
      *(v60 + 80) = v63;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v64 = v78;
      goto LABEL_41;
    }

    if (v32)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *(v33 + 16))
      {
        goto LABEL_43;
      }

      v35 = *(v87 + 8 * v31);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v31++, 1))
    {
      break;
    }

    v37 = [v35 destinationURIs];
    v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
    v40 = 1 << *(v38 + 32);
    v41 = (v40 + 63) >> 6;
    v42 = 56;
    if (!v41)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v43 = *(v38 + v42);
      if (v43)
      {
        break;
      }

      v42 += 8;
      v39 -= 64;
      if (!--v41)
      {
        goto LABEL_18;
      }
    }

    v44 = __clz(__rbit64(v43));
    if (v44 - v40 != v39)
    {
      if (-v39 < 0)
      {
        goto LABEL_44;
      }

      v45 = v44 - v39;
      if (v45 >= v40)
      {
        goto LABEL_44;
      }

      if (((*(v38 + v42) >> v44) & 1) == 0)
      {
        goto LABEL_45;
      }

      v46 = v34;
      v47 = v29;
      v48 = v28;
      v49 = (*(v38 + 48) + 16 * v45);
      v51 = *v49;
      v50 = v49[1];
      swift_bridgeObjectRetain_n();

      v52 = String._bridgeToObjectiveC()();
      v53 = TUCopyIDSCanonicalAddressForDestinationID();

      if (v53)
      {
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;
        swift_bridgeObjectRelease_n();

        v28 = v48;
        if (v48)
        {
          if (v54 == v83 && v48 == v56)
          {

            swift_unknownObjectRelease();
LABEL_37:

LABEL_38:
            sub_1003A7258(-1);
            v65 = v79;
            if (sub_1002B7B44([v79 hasSet]))
            {
              [v65 isSpatialPersonaEnabled];
            }

            v66 = v84;
            v67 = *(v84 + 24);
            v68 = v74;
            v69 = v78;
            v70 = *&v78[v67];
            swift_isUniquelyReferenced_nonNull_native();
            v88[0] = *(v69 + v67);
            sub_100379510();
            *(v69 + v67) = v88[0];
            v71 = v76;
            (*(v80 + 16))(v76, v75, v82);
            v72 = v81;
            sub_10032DCDC(v69, v81);
            sub_10000AF74(v72, 0, 1, v66);
            swift_getKeyPath();
            swift_getKeyPath();
            v73 = static Published.subscript.modify();
            sub_100381EB8(v72, v71);
            v73(v88, 0);

            v64 = v69;
LABEL_41:
            sub_10032DD40(v64);
            return;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_unknownObjectRelease();

          v29 = v47;
          v34 = v46;
          v33 = v85;
          v32 = v86;
          if (v58)
          {
            goto LABEL_37;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v29 = v47;
          v34 = v46;
          v33 = v85;
          v32 = v86;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();
        v28 = v48;
        v29 = v47;
        v34 = v46;
        v33 = v85;
        v32 = v86;
        if (!v28)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_18:
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_10032C7E0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = type metadata accessor for UUID();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a3;
  v21 = a4;
  v22 = a1;
  a6(v20, v21, v19);

  return (*(v13 + 8))(v19, v10);
}

void sub_10032C8EC()
{
  sub_100005EF4();
  v47 = v1;
  v48 = v0;
  v3 = v2;
  v4 = v1;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v52);
  v54 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_1000151DC();
  v50 = v10;
  sub_10000D414();
  v53 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v53);
  v51 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_1000151DC();
  v49 = v16;
  sub_10000D414();
  v17 = type metadata accessor for UUID();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  v24 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057D6A0;
  v27 = [v4 identifier];
  *(v26 + 56) = &type metadata for UInt64;
  *(v26 + 64) = &protocol witness table for UInt64;
  *(v26 + 32) = v27;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v26 + 96) = sub_100006AF0(0, &qword_1006A5C50, NSUUID_ptr);
  *(v26 + 104) = sub_100290B1C(&unk_1006A4AB0, &qword_1006A5C50, NSUUID_ptr);
  *(v26 + 72) = isa;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v29 = v48;
  v30 = *&v48[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  (*(v20 + 16))(v24, v3, v17);
  v31 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  (*(v20 + 32))(v33 + v31, v24, v17);
  v34 = v47;
  *(v33 + v32) = v47;
  v56[4] = sub_10032DD9C;
  v56[5] = v33;
  sub_100009FE4();
  v56[1] = 1107296256;
  sub_10000A600();
  v56[2] = v35;
  v56[3] = &unk_100627750;
  v36 = _Block_copy(v56);
  v37 = v29;
  v38 = v34;
  v39 = v49;
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_10000A184();
  sub_10000EED0(v40, v41);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v42, &unk_1006A2960, &unk_10057D6E0);
  sub_10000FA38();
  v43 = v50;
  v44 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  sub_10000C734();
  v45(v43, v44);
  (*(v51 + 8))(v39, v53);

  sub_100005EDC();
}

uint64_t sub_10032CD0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100328BA4();
  sub_1002CB8B4(a2, v25);

  if (sub_100015468(v19, 1, v20) == 1)
  {
    return sub_10032DE1C(v19);
  }

  v40 = a1;
  sub_10032DE84(v19, v24);
  v27 = [a3 identifier];
  v28 = *(v20 + 24);
  v29 = sub_1002CB950(v27, *&v24[v28]);
  if (v29)
  {

    v30 = sub_1002DA664([a3 identifier]);
    if (v31)
    {
      v32 = v30;
      v33 = *&v24[v28];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = *&v24[v28];
      v39 = *(v42[0] + 24);
      sub_10026D814(&unk_1006A6FC0, &qword_100580940);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
      v35 = v42[0];
      v36 = *(*(v42[0] + 56) + 24 * v32);
      _NativeDictionary._delete(at:)();

      *&v24[v28] = v35;
    }

    (*(v41 + 16))(v10, a2, v6);
    sub_10032DCDC(v24, v16);
    sub_10000AF74(v16, 0, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = static Published.subscript.modify();
    sub_100381EB8(v16, v10);
    v37(v42, 0);
  }

  return sub_10032DD40(v24);
}

void sub_10032D160()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v31 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v31);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = sub_10022AE64();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057D690;
  *(v21 + 56) = sub_10026D814(&qword_1006A5C30, &unk_1005859A0);
  *(v21 + 64) = sub_10001000C(&qword_1006A5C38, &qword_1006A5C30, &unk_1005859A0);
  *(v21 + 32) = v2;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = *&v0[OBJC_IVAR___CSDSimulatedConversationManager_queue];
  sub_100007C2C();
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  *(v23 + 24) = v2;
  v32[4] = sub_10032DCA8;
  v32[5] = v23;
  sub_100009FE4();
  v32[1] = 1107296256;
  sub_10000A600();
  v32[2] = v24;
  v32[3] = &unk_100627700;
  v25 = _Block_copy(v32);

  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A184();
  sub_10000EED0(v27, v28);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v29, &unk_1006A2960, &unk_10057D6E0);
  sub_10000FA38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  sub_10000C734();
  v30(v10, v3);
  (*(v13 + 8))(v19, v31);

  sub_100005EDC();
}

void sub_10032D484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v48 = a1;
  v21 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID);
  v22 = *(a1 + OBJC_IVAR___CSDSimulatedConversationManager_localCallerID + 8);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v20 normalizedHandleWithDestinationID:v23];

  if (!v24)
  {
    return;
  }

  v44 = v10;
  v45 = v9;
  v46 = v14;
  v47 = v8;
  v25 = [objc_allocWithZone(TUConversationMember) initWithHandle:v24];
  v26 = sub_10000B6F4(a2);
  v27 = _swiftEmptyArrayStorage;
  v49 = v24;
  v43 = v25;
  if (v26)
  {
    v28 = v26;
    v50 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v28 < 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v29 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(a2 + 8 * v29 + 32);
      }

      v31 = v30;
      if (![v30 value])
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        String._bridgeToObjectiveC()();
      }

      ++v29;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v32 = v50[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v28 != v29);
    v27 = v50;
  }

  v51 = v27;
  v33 = TUCopyIDSCanonicalAddressForHandle();
  v34 = v47;
  if (!v33)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v35 = v33;
  sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10032D918();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v36 = v51;
  v37 = v46;
  UUID.init()();
  *&v19[v15[6]] = _swiftEmptyDictionarySingleton;
  v38 = v15[8];
  *&v19[v38] = sub_1003A7258(-1);
  v39 = v44;
  v40 = v45;
  v41 = *(v44 + 16);
  v41(v19, v37, v45);
  *&v19[v15[5]] = v36;
  *&v19[v15[7]] = v43;
  v19[v15[9]] = 0;
  sub_10032A978();
  (*(v39 + 8))(v37, v40);
  v41(v37, v19, v40);
  sub_10032DCDC(v19, v34);
  sub_10000AF74(v34, 0, 1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = static Published.subscript.modify();
  sub_100381EB8(v34, v37);
  v42(&v50, 0);

  sub_10032DD40(v19);
}

id sub_10032D918()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() destinationWithURI:v0];

  return v1;
}

void sub_10032DA38()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10032DB40(319, &qword_1006A5B78, &qword_1006A5BE0, &qword_100580880, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10032DBA4();
      if (v2 <= 0x3F)
      {
        sub_100006AF0(319, &qword_1006A3DE0, TUConversationMember_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10032DB40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10026DCB4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10032DBA4()
{
  if (!qword_1006A5BE8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A5BE8);
    }
  }
}

__n128 sub_10032DC04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10032DC18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_10032DC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10032DCB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100328C18();
}

uint64_t sub_10032DCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DD40(uint64_t a1)
{
  v2 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DD9C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  sub_100007D00();
  v5 = *(v0 + 16);
  v7 = *(v0 + v6);

  return sub_10032CD0C(v5, v0 + v4, v7);
}

uint64_t sub_10032DE1C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DF00()
{
  v2 = type metadata accessor for UUID();
  sub_100007FEC(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100035AC4();

  v7 = sub_100007728();
  v8(v7);

  v9 = sub_100015D74();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10032E018(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10032E0A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  sub_100007D00();
  v6 = *(v1 + 16);
  v8 = *(v1 + v7);
  v9 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v6, v1 + v5, v8, v9);
}

uint64_t sub_10032E150()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10032E18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100328778();
}

uint64_t sub_10032E194@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100328BA4();
  *a1 = result;
  return result;
}

void sub_10032E228(uint64_t a1)
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
        sub_1002E9694(v38, v39, v40, v1);
        v11 = v10;
        v12 = sub_100334D28();
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
          sub_10026D814(&qword_1006A5E38, &unk_100580B98);
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

uint64_t sub_10032E554()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError();
    sub_10000A858();
    sub_100335040(v1, 255, v2);
    sub_10000BA40();
    swift_allocError();
    v4 = v3;
    v5 = type metadata accessor for UUID();
    sub_10000AF74(v4, 3, 4, v5);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_10032E5F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError();
    sub_10000A858();
    sub_100335040(v1, 255, v2);
    sub_10000BA40();
    swift_allocError();
    v4 = v3;
    v5 = type metadata accessor for UUID();
    sub_10000AF74(v4, 2, 4, v5);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_10032E69C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x726576726573626FLL;
  }

  _StringGuts.grow(_:)(19);

  v4._countAndFlagsBits = sub_1002F1B8C(a1);
  String.append(_:)(v4);

  v5._object = 0x800000010056BDA0;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  return 39;
}

BOOL sub_10032E74C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

unint64_t sub_10032E79C(uint64_t a1, char a2)
{
  _StringGuts.grow(_:)(25);

  v4._countAndFlagsBits = sub_10032E69C(a1, a2 & 1);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000016;
}

BOOL sub_10032E83C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && a1 == a3;
  }

  return (a4 & 1) != 0;
}

void sub_10032E864(uint64_t a1, Swift::UInt a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10032E8A4(Swift::UInt a1, char a2)
{
  Hasher.init(_seed:)();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v4 = a1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int sub_10032E910()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_10032E98C(void *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  type metadata accessor for CompositeActivitySessionContainerProvider.ProviderStorage();
  swift_allocObject();
  *(v1 + 120) = sub_100334CE4();
  *(v1 + 136) = "conversationManager:activitySessionContainersChanged:";
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 160) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 168) = &_swiftEmptySetSingleton;
  *(v1 + 192) = 0;
  *(v1 + 128) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompositeActivitySessionContainerProvider();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, "init");

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10032EAF0(void *a1)
{
  v2 = v1;
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006A5CD0);
  sub_10000667C();
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005274();
    v8 = sub_100005E84();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_1002F1B8C([a1 providerType]);
    v11 = sub_10002741C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering '%s' child provider on composite placeholder provider", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100006868();
  }

  v12 = *(v2 + 120);
  return sub_10032EC30(a1);
}

uint64_t sub_10032EC30(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(v2 + 4);
  [a1 providerType];
  sub_1002DB5DC(v6, v5);
  v5[8] = 0;
  sub_100382074();
  os_unfair_lock_unlock(v2 + 4);
  return sub_100335010(v6);
}

uint64_t sub_10032ECD4()
{
  sub_100006810();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  sub_100005EB4(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v9 = sub_10002F644();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10032ED90()
{
  v34 = v0;
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  v0[10] = sub_10000AF9C(v6, qword_1006A5CD0);
  v0[11] = *(v3 + 16);
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_10000B8D0();
  v8(v7);
  v9 = v5;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  if (v12)
  {
    v16 = v0[2];
    sub_10000895C();
    swift_slowAlloc();
    v31 = sub_10000D670();
    v32 = sub_100005E84();
    v33 = v32;
    *v9 = 138412546;
    *(v9 + 1) = v16;
    *v31 = v16;
    *(v9 + 6) = 2080;
    sub_1000084C8();
    sub_100335040(v17, 255, v18);
    v19 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = sub_10002741C(v20, v22, &v33);

    *(v9 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "handleActivitySessionCreationRequest %@ onContainerWithID: %s", v9, 0x16u);
    sub_1000099A4(v31, &unk_1006A2630, &qword_10057CB40);
    sub_100007CBC();
    sub_100009B7C(v32);
    sub_100007CBC();
    sub_10000E668();
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v15);
  }

  v0[13] = v23;
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_10032F028;
  v26 = v0[4];
  v27 = v0[5];
  v29 = v0[2];
  v28 = v0[3];

  return sub_10032F744();
}

uint64_t sub_10032F028()
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
    v11 = v5[5];

    return _swift_task_switch(sub_10032F174, v11, 0);
  }

  else
  {
    v13 = v5[8];
    v12 = v5[9];

    v14 = *(v9 + 8);

    return v14(v3);
  }
}

void sub_10032F174()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 32), *(v0 + 48));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v6)
  {
    sub_10000895C();
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = sub_100005E84();
    v28 = v27;
    *v12 = 136315394;
    sub_1000084C8();
    sub_100335040(v13, 255, v14);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v8(v9, v11);
    v18 = sub_10002741C(v15, v17, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v26 = v19;
    sub_10033561C(&_mh_execute_header, v20, v5, "Failed to handle activity creation request on %s: %@");
    sub_1000099A4(v26, &unk_1006A2630, &qword_10057CB40);
    sub_10000E668();
    sub_100009B7C(v27);
    sub_10000E668();
    sub_100006868();
  }

  else
  {
    v21 = *(v0 + 120);

    v8(v9, v11);
  }

  v23 = *(v0 + 64);
  v22 = *(v0 + 72);

  sub_1000276C4();
  sub_100011274();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10032F43C(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = type metadata accessor for UUID();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v5[5] = v9;
  v10 = *(v9 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;

  v12 = swift_task_alloc();
  v5[8] = v12;
  *v12 = v5;
  v12[1] = sub_10032F588;

  return sub_10032ECD4();
}

uint64_t sub_10032F588()
{
  sub_100007648();
  v2 = v1;
  sub_100005F18();
  v4 = v3[8];
  v5 = v3[7];
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[3];
  v10 = v3[2];
  v11 = *v0;
  sub_100008060();
  *v12 = v11;

  v13 = *(v7 + 8);
  v14 = sub_100008B88();
  v15(v14);
  (v5)[2](v5, v2);
  _Block_release(v5);

  sub_100009EF4();

  return v16();
}

uint64_t sub_10032F744()
{
  sub_100006810();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v5 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64);
  v1[71] = sub_100005E9C();
  v6 = type metadata accessor for UUID();
  v1[72] = v6;
  sub_100005EB4(v6);
  v1[73] = v7;
  v9 = *(v8 + 64) + 15;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v10 = sub_10002F644();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10032F85C()
{
  sub_10000C620();
  sub_100007648();
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C();
  }

  v1 = v0[67];
  v2 = type metadata accessor for Logger();
  v0[79] = sub_10000AF9C(v2, qword_1006A5CD0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    sub_100005274();
    v7 = sub_10000D670();
    *v3 = 138412290;
    *(v3 + 1) = v6;
    *v7 = v6;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting authorization for %@", v3, 0xCu);
    sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_10000E668();
  }

  v9 = v0[70];

  v10 = sub_10032E5F8();
  v0[80] = v10;
  v0[81] = 0;
  v11 = v10;
  v12 = v0[68];
  v13 = v0[67];
  v0[2] = v0;
  v0[7] = v0 + 95;
  v0[3] = sub_10032FAE4;
  v14 = swift_continuation_init();
  v0[33] = sub_10026D814(&qword_1006A5E40, &qword_100580BC0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100331448;
  v0[29] = &unk_100627C60;
  v0[30] = v14;
  [v11 requestAuthorizationForActivity:v13 withOptions:v12 completionHandler:v0 + 26];
  sub_1000066F4();

  return _swift_continuation_await(v15);
}

uint64_t sub_10032FAE4()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 656) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_100331240;
  }

  else
  {
    v6 = sub_10032FBF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032FBF8()
{
  v2 = *(v0 + 640);
  v3 = *(v0 + 760);
  swift_unknownObjectRelease();
  if (v3 != 1)
  {
    v29 = *(v0 + 632);
    v30 = *(v0 + 536);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 536);
      sub_100005274();
      v34 = sub_10000D670();
      *v30 = 138412290;
      *(v30 + 1) = v33;
      *v34 = v33;
      v35 = v33;
      sub_10000B940(&_mh_execute_header, v36, v37, "%@ was not authorized by the user");
      sub_1000099A4(v34, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_10000E668();
    }

    sub_10033560C();
    v38 = *(v0 + 600);
    v39 = *(v0 + 592);
    v40 = *(v0 + 568);

    sub_1000276C4();
    sub_100011274();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 664) = *(*(v0 + 560) + 120);
  sub_1003314CC((v0 + 440));
  v4 = *(v0 + 472);
  sub_100009B14((v0 + 440), *(v0 + 464));
  sub_1000083C0();
  v6 = *(v5 + 64);
  sub_100005E9C();
  sub_100335638();
  v7();
  *(v0 + 424) = sub_10000B960();
  *(v0 + 432) = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C((v0 + 400));
  sub_100007624();
  dispatch thunk of Sequence.makeIterator()();

  sub_100009B7C((v0 + 440));
  v8 = *(v0 + 432);
  sub_10001BDB8(v0 + 400, *(v0 + 424));
  sub_100007624();
  dispatch thunk of IteratorProtocol.next()();
  v9 = *(v0 + 480);
  *(v0 + 672) = v9;
  if (!v9)
  {
    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 552);
    sub_100009B7C((v0 + 400));
    type metadata accessor for CompositeActivitySessionContainerProviderError();
    sub_10000A858();
    sub_100335040(v46, 255, v47);
    swift_allocError();
    v49 = v48;
    (*(v43 + 16))(v48, v45, v44);
    sub_10000AF74(v49, 0, 4, v44);
    swift_willThrow();
    sub_10033560C();
    v50 = *(v0 + 600);
    v51 = *(v0 + 592);
    v52 = *(v0 + 568);

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v10 = sub_100005FFC();
  v11(v10);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 624);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  if (v14)
  {
    v66 = v13;
    sub_10000895C();
    v18 = swift_slowAlloc();
    *(v0 + 520) = sub_100007630();
    *v18 = 136315394;
    sub_1000084C8();
    sub_100335040(v19, 255, v20);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = sub_10000FC14();
    v1(v24);
    v25 = sub_10002741C(v21, v23, (v0 + 520));

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = [v9 providerType];
    v27 = 0xE900000000000065;
    v28 = 0x7469736F706D6F63;
    switch(v26)
    {
      case 0uLL:
        goto LABEL_17;
      case 1uLL:
        sub_10000BB94();
        v28 = sub_1000171A0();
        goto LABEL_17;
      case 2uLL:
        v27 = 0xE400000000000000;
        v28 = sub_10002F750();
        goto LABEL_17;
      case 3uLL:
        v27 = 0xE600000000000000;
        v28 = sub_1000113A8();
LABEL_17:
        v56 = sub_10002741C(v28, v27, (v0 + 520));

        *(v18 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v12, v66, "Delegating activity session creation request for %s to '%s' provider", v18, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40();

        goto LABEL_18;
      default:
        *(v0 + 528) = v26;
        sub_100011274();

        return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    }
  }

  v55 = sub_10000FC14();
  v1(v55);
LABEL_18:
  *(v0 + 696) = v1;
  v57 = *(v0 + 552);
  v58 = *(v0 + 536);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v0 + 704) = isa;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 488;
  *(v0 + 88) = sub_10033027C;
  v60 = swift_continuation_init();
  v61 = sub_10026D814(&qword_1006A5E50, &qword_100580BC8);
  sub_100035AD4(v61);
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_100331818;
  *(v0 + 296) = &unk_100627C88;
  *(v0 + 304) = v60;
  [v9 handleActivitySessionCreationRequestWithActivity:v58 onContainerWithID:isa completionHandler:v0 + 272];
  sub_100011274();

  return _swift_continuation_await(v62);
}

uint64_t sub_10033027C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 720) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_1003312DC;
  }

  else
  {
    v6 = sub_100330390;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100330390(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, char *a11, uint64_t a12, void (*a13)(uint64_t, uint64_t), uint64_t a14, os_log_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100335660();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  v33 = *(v30 + 704);
  v34 = *(v30 + 488);
  *(v30 + 728) = v34;

  if (v34[OBJC_IVAR___CSDActivitySessionCreationRequestResult_status])
  {
    if (v34[OBJC_IVAR___CSDActivitySessionCreationRequestResult_status] == 1)
    {
      v36 = *&v34[OBJC_IVAR___CSDActivitySessionCreationRequestResult_activitySession];
      if (v36)
      {
        v37 = *(v30 + 688);
        v38 = *(v30 + 672);
        v39 = *(v30 + 632);
        (*(v30 + 680))(*(v30 + 608), *(v30 + 552), *(v30 + 576));
        v40 = v36;
        swift_unknownObjectRetain();
        v41 = v40;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v30 + 696);
        v46 = *(v30 + 608);
        if (v44)
        {
          LODWORD(a15) = v43;
          v47 = *(v30 + 600);
          a13 = *(v30 + 696);
          v48 = *(v30 + 576);
          a12 = *(v30 + 584) + 8;
          v49 = *(v30 + 672);
          a16 = v49;
          v50 = sub_100005E84();
          a14 = swift_slowAlloc();
          a18 = a14;
          *v50 = 136315650;
          v51 = sub_1002F1B8C([v49 providerType]);
          a17 = v36;
          v53 = sub_10002741C(v51, v52, &a18);

          *(v50 + 4) = v53;
          *(v50 + 12) = 2080;
          v54 = [v41 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000084C8();
          sub_100335040(v55, 255, v56);
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v59 = v58;
          log = v42;
          a11 = v34;
          a13(v47, v48);
          v60 = sub_10002741C(v57, v59, &a18);

          *(v50 + 14) = v60;
          *(v50 + 22) = 2080;
          dispatch thunk of CustomStringConvertible.description.getter();
          sub_10003A598();
          a13(v46, v48);
          v61 = sub_100005ED0();
          sub_10002741C(v61, v62, v63);
          sub_10000667C();

          *(v50 + 24) = v46;
          _os_log_impl(&_mh_execute_header, v42, a15, "'%s' successfully created session %s on container %s", v50, 0x20u);
          swift_arrayDestroy();
          sub_100007CBC();
          sub_100005F40();

          swift_unknownObjectRelease();
        }

        else
        {
          v106 = *(v30 + 584);
          v107 = *(v30 + 576);

          swift_unknownObjectRelease();
          v45(v46, v107);
        }

        sub_100009B7C((v30 + 400));
        sub_10033560C();
        v108 = *(v30 + 600);
        v109 = *(v30 + 592);
        v110 = *(v30 + 568);

        sub_1000276C4();
        sub_100007D18();

        return v113(v111, v112, v113, v114, v115, v116, v117, v118, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      __break(1u);
      goto LABEL_46;
    }

    sub_10005161C();
    v83(*(v30 + 616), *(v30 + 552), *(v30 + 576));
    swift_unknownObjectRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v30 + 672);
      sub_10000895C();
      v87 = swift_slowAlloc();
      v88 = sub_100007630();
      *(v30 + 504) = v88;
      *v87 = 136315394;
      v89 = [v86 providerType];
      a17 = v88;
      v90 = 0x7469736F706D6F63;
      v91 = 0xE900000000000065;
      switch(v89)
      {
        case 0uLL:
          goto LABEL_23;
        case 1uLL:
          sub_1000171A0();
          sub_10000BB94();
          goto LABEL_23;
        case 2uLL:
          v91 = 0xE400000000000000;
          v90 = sub_10002F750();
          goto LABEL_23;
        case 3uLL:
          v91 = 0xE600000000000000;
          v90 = sub_1000113A8();
LABEL_23:
          a15 = *(v30 + 696);
          a16 = *(v30 + 672);
          v103 = *(v30 + 616);
          v129 = *(v30 + 576);
          v130 = *(v30 + 584) + 8;
          v131 = sub_10002741C(v90, v91, (v30 + 504));

          *(v87 + 4) = v131;
          *(v87 + 12) = 2080;
          sub_1000084C8();
          sub_100335040(v132, 255, v133);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          (a15)(v103, v129);
          v137 = sub_10002741C(v134, v136, (v30 + 504));

          *(v87 + 14) = v137;
          sub_10033561C(&_mh_execute_header, v138, v85, "'%s' does not recognize %s");
          sub_10033567C();
          sub_100007CBC();
          sub_100006868();

          swift_unknownObjectRelease();
          goto LABEL_24;
        default:
          v175 = (v30 + 512);
LABEL_42:
          *v175 = v89;
          sub_100007D18();

          return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      }
    }

    v100 = *(v30 + 696);
    v101 = *(v30 + 672);
    v102 = *(v30 + 616);
    v103 = *(v30 + 584);
    v104 = *(v30 + 576);

    swift_unknownObjectRelease();
    v105 = sub_100008B88();
    v100(v105);
LABEL_24:
    v139 = *(v30 + 432);
    sub_10001BDB8(v30 + 400, *(v30 + 424));
    sub_100007624();
    dispatch thunk of IteratorProtocol.next()();
    v140 = *(v30 + 480);
    *(v30 + 672) = v140;
    if (v140)
    {
      v141 = sub_100005FFC();
      v142(v141);
      swift_unknownObjectRetain();
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      v145 = os_log_type_enabled(v143, v144);
      v146 = *(v30 + 624);
      v147 = *(v30 + 584);
      v148 = *(v30 + 576);
      if (v145)
      {
        v186 = v144;
        sub_10000895C();
        v149 = swift_slowAlloc();
        *(v30 + 520) = sub_100007630();
        *v149 = 136315394;
        sub_1000084C8();
        sub_100335040(v150, 255, v151);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v154 = v153;
        v155 = sub_10000FC14();
        v103(v155);
        v156 = sub_10002741C(v152, v154, (v30 + 520));

        *(v149 + 4) = v156;
        *(v149 + 12) = 2080;
        v89 = [v140 providerType];
        v157 = 0x7469736F706D6F63;
        v158 = 0xE900000000000065;
        switch(v89)
        {
          case 0uLL:
            break;
          case 1uLL:
            sub_1000171A0();
            sub_10000BB94();
            break;
          case 2uLL:
            v158 = 0xE400000000000000;
            v157 = sub_10002F750();
            break;
          case 3uLL:
            v158 = 0xE600000000000000;
            v157 = sub_1000113A8();
            break;
          default:
            v175 = (v30 + 528);
            goto LABEL_42;
        }

        v176 = sub_10002741C(v157, v158, (v30 + 520));

        *(v149 + 14) = v176;
        _os_log_impl(&_mh_execute_header, v143, v186, "Delegating activity session creation request for %s to '%s' provider", v149, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40();
      }

      else
      {

        v174 = sub_10000FC14();
        v103(v174);
      }

      *(v30 + 696) = v103;
      v177 = *(v30 + 552);
      v178 = *(v30 + 536);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v30 + 704) = isa;
      *(v30 + 80) = v30;
      *(v30 + 120) = v30 + 488;
      *(v30 + 88) = sub_10033027C;
      v180 = swift_continuation_init();
      v181 = sub_10026D814(&qword_1006A5E50, &qword_100580BC8);
      sub_100035AD4(v181);
      *(v30 + 280) = 1107296256;
      *(v30 + 288) = sub_100331818;
      *(v30 + 296) = &unk_100627C88;
      *(v30 + 304) = v180;
      [v140 handleActivitySessionCreationRequestWithActivity:v178 onContainerWithID:isa completionHandler:v30 + 272];
      goto LABEL_38;
    }

    v159 = *(v30 + 584);
    v160 = *(v30 + 576);
    v161 = *(v30 + 552);
    sub_100009B7C((v30 + 400));
    type metadata accessor for CompositeActivitySessionContainerProviderError();
    sub_10000A858();
    sub_100335040(v162, 255, v163);
    sub_10000BA40();
    swift_allocError();
    v165 = v164;
    (*(v159 + 16))(v164, v161, v160);
    sub_10000AF74(v165, 0, 4, v160);
    swift_willThrow();
  }

  else
  {
    sub_10005161C();
    v64(*(v30 + 592), *(v30 + 552), *(v30 + 576));
    swift_unknownObjectRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v30 + 696);
    if (v67)
    {
      v69 = *(v30 + 672);
      v70 = *(v30 + 592);
      v71 = *(v30 + 576);
      a16 = *(v30 + 584) + 8;
      sub_10000895C();
      v72 = swift_slowAlloc();
      a17 = sub_100007630();
      a18 = a17;
      *v72 = 136315394;
      v73 = sub_1002F1B8C([v69 providerType]);
      v75 = sub_10002741C(v73, v74, &a18);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      sub_1000084C8();
      sub_100335040(v76, 255, v77);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v68(v70, v71);
      v81 = sub_10002741C(v78, v80, &a18);

      *(v72 + 14) = v81;
      sub_10033561C(&_mh_execute_header, v82, v66, "'%s' provider joined a conversation. Re-delegating request for %s to 'conversation' provider");
      sub_10033567C();
      sub_100007CBC();
      sub_100006868();
    }

    else
    {
      v92 = *(v30 + 592);
      v93 = *(v30 + 584);
      v94 = *(v30 + 576);

      v95 = sub_10000B8D0();
      (v68)(v95);
    }

    v96 = *(v30 + 664);
    v97 = *(v30 + 648);
    v98 = sub_1003318A8();
    *(v30 + 736) = v98;
    if (!v97)
    {
      v120 = v98;
      v121 = *(v30 + 576);
      v122 = *(v30 + 568);
      sub_100335188(&v34[OBJC_IVAR___CSDActivitySessionCreationRequestResult_joinedConversationUUID], v122, &unk_1006A3DD0, &unk_10057C9D0);
      v35 = sub_100015468(v122, 1, v121);
      if (v35 == 1)
      {
LABEL_46:
        __break(1u);
        return _swift_continuation_await(v35);
      }

      v123 = *(v30 + 696);
      v124 = *(v30 + 576);
      v125 = *(v30 + 568);
      v184 = *(v30 + 712);
      v185 = *(v30 + 536);
      v126 = *(v30 + 584) + 8;
      v127 = UUID._bridgeToObjectiveC()().super.isa;
      *(v30 + 744) = v127;
      v123(v125, v124);
      *(v30 + 144) = v30;
      *(v30 + 184) = v30 + 496;
      *(v30 + 152) = sub_10033104C;
      v128 = swift_continuation_init();
      *(v30 + 392) = v184;
      *(v30 + 336) = _NSConcreteStackBlock;
      *(v30 + 344) = 1107296256;
      *(v30 + 352) = sub_100331818;
      *(v30 + 360) = &unk_100627CB0;
      *(v30 + 368) = v128;
      [v120 handleActivitySessionCreationRequestWithActivity:v185 onContainerWithID:v127 completionHandler:v30 + 336];
LABEL_38:
      sub_100007D18();

      return _swift_continuation_await(v35);
    }

    v99 = *(v30 + 672);

    swift_unknownObjectRelease();
    sub_100009B7C((v30 + 400));
  }

  sub_10000E718();

  sub_100009EF4();
  sub_100007D18();

  return v167(v166, v167, v168, v169, v170, v171, v172, v173, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10033104C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 176);
  *(v1 + 752) = v4;
  v5 = *(v3 + 560);
  if (v4)
  {
    v6 = sub_100331388;
  }

  else
  {
    v6 = sub_100331160;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100331160()
{
  sub_1000066BC();
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 672);

  swift_unknownObjectRelease();
  v4 = *(v0 + 496);
  v5 = *&v4[OBJC_IVAR___CSDActivitySessionCreationRequestResult_activitySession];
  v6 = v5;

  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 400));
  sub_10000E718();

  sub_1000276C4();

  return v7(v5);
}

uint64_t sub_100331240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  v11 = *(v10 + 656);
  v12 = *(v10 + 640);
  swift_willThrow();
  swift_unknownObjectRelease();
  v13 = *(v10 + 656);
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1003312DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  v11 = v10[90];
  v12 = v10[88];
  v13 = v10[84];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100009B7C(v10 + 50);
  v14 = v10[90];
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_100331388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000C620();
  sub_100007648();
  v11 = v10[94];
  v12 = v10[93];
  v13 = v10[92];
  v14 = v10[91];
  v15 = v10[84];
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100009B7C(v10 + 50);
  v16 = v10[94];
  sub_10000E718();

  sub_100009EF4();
  sub_1000066F4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_100331448(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100009B14((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_10046A8DC(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1004630A0(v9, a2);
  }
}

uint64_t sub_1003314CC@<X0>(void *a1@<X8>)
{
  v3 = sub_10026D814(&qword_1006A5DD8, &qword_100580B40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16 - v7;
  os_unfair_lock_lock((v1 + 16));
  v9 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v23[0] = v9;
  swift_getKeyPath();
  sub_100334FBC();
  KeyPathComparator.init<A>(_:order:)();
  sub_10026D814(&qword_1006A5DE8, &qword_100580B68);
  sub_10001000C(&qword_1006A5DF0, &qword_1006A5DE8, &qword_100580B68);
  sub_10001000C(&qword_1006A5DF8, &qword_1006A5DD8, &qword_100580B40);
  v10 = Sequence.sorted<A>(using:)();
  (*(v4 + 8))(v8, v3);

  v24 = _swiftEmptyArrayStorage;
  v11 = *(v10 + 16);
  if (v11)
  {
    v17 = a1;
    v12 = v10 + 32;
    v13 = _swiftEmptyArrayStorage;
    do
    {
      sub_100335188(v12, v23, &qword_1006A5E00, &qword_100580B70);
      sub_100335188(v23, &v21, &qword_1006A5E00, &qword_100580B70);
      v19 = v21;
      sub_1003282B8(&v22, &v20);
      sub_1002DB5DC(&v20, v18);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100335010(v18);
      sub_1000099A4(&v19, &qword_1006A5E00, &qword_100580B70);
      sub_1000099A4(v23, &qword_1006A5E00, &qword_100580B70);
      if (Strong)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v24;
      }

      v12 += 16;
      --v11;
    }

    while (v11);

    a1 = v17;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  a1[3] = sub_10026D814(&qword_1006A5E08, &unk_100580B78);
  result = sub_10001000C(&qword_1006A5E10, &qword_1006A5E08, &unk_100580B78);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t *sub_100331818(uint64_t a1, void *a2, void *a3)
{
  result = sub_100009B14((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10046A8DC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10046A8E0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003318A8()
{
  os_unfair_lock_lock((v0 + 16));
  sub_1002CB9BC(1, *(v0 + 24));
  if (v6[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  sub_1000099A4(v6, &qword_1006A5E58, &qword_100580BD0);
  os_unfair_lock_unlock((v0 + 16));
  if (!Strong)
  {
    type metadata accessor for CompositeActivitySessionContainerProviderError();
    sub_100335040(&qword_1006A5E48, 255, type metadata accessor for CompositeActivitySessionContainerProviderError);
    swift_allocError();
    v3 = v2;
    v4 = type metadata accessor for UUID();
    sub_10000AF74(v3, 4, 4, v4);
    swift_willThrow();
  }

  return Strong;
}

uint64_t sub_1003319BC(void *a1)
{
  v1 = [a1 providerType];

  return sub_100331A70(v1, 0);
}

uint64_t sub_100331A08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100331A70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskPriority();
  sub_1000083C0();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v53 = &v49 - v18;
  v19 = type metadata accessor for SharePlayLatencyLogger.Event();
  sub_1000083C0();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24, v25);
  v54 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0A98 != -1)
  {
    sub_10000A19C();
  }

  v27 = type metadata accessor for Logger();
  sub_10000AF9C(v27, qword_1006A5CD0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_100005274();
    v50 = v21;
    v31 = v30;
    v32 = sub_100005E84();
    v52 = v14;
    v49 = v32;
    v55[0] = v32;
    *v31 = 136315138;
    v33 = sub_10032E69C(a1, a2 & 1);
    v51 = v3;
    v35 = v19;
    v36 = a2;
    v37 = a1;
    v38 = v8;
    v39 = v6;
    v40 = sub_10002741C(v33, v34, v55);
    v3 = v51;

    *(v31 + 4) = v40;
    v6 = v39;
    v8 = v38;
    a1 = v37;
    a2 = v36;
    v19 = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Adding observer update request from: %s", v31, 0xCu);
    sub_100009B7C(v49);
    v14 = v52;
    sub_100005F40();
    v21 = v50;
    sub_100005F40();
  }

  v41 = &enum case for SharePlayLatencyLogger.Event.observerRequestedContainerUpdate(_:);
  if ((a2 & 1) == 0)
  {
    v41 = &enum case for SharePlayLatencyLogger.Event.containerProviderRequestedContainerUpdate(_:);
  }

  v42 = v54;
  (*(v21 + 104))(v54, *v41, v19);
  static SharePlayLatencyLogger.emitEvent(_:)();
  (*(v21 + 8))(v42, v19);
  os_unfair_lock_lock((v3 + 160));
  sub_1003963F8(v55, a1, a2 & 1);
  if (*(v3 + 176))
  {
    v43 = *(v3 + 176);
  }

  else
  {
    v44 = v53;
    static TaskPriority.userInitiated.getter();
    sub_10000AF74(v44, 0, 1, v6);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v3;

    sub_1002762F0();
    v46 = *(v3 + 176);
    *(v3 + 176) = v47;
  }

  os_unfair_lock_unlock((v3 + 160));
  static Task<>.currentPriority.getter();
  Task.escalatePriority(to:)();

  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_100331E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE4;

  return sub_100331F18();
}

uint64_t sub_100331F18()
{
  sub_100006810();
  v1[20] = v0;
  v2 = type metadata accessor for SharePlayLatencyLogger.Event();
  v1[21] = v2;
  sub_100005EB4(v2);
  v1[22] = v3;
  v5 = *(v4 + 64);
  v1[23] = sub_100005E9C();
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v1[24] = v6;
  sub_100005EB4(v6);
  v1[25] = v7;
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v10 = sub_10002F644();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1003324F8()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 160);
  v6 = *v0;
  sub_100008060();
  *v7 = v6;
  *(v10 + 296) = v8;
  *(v10 + 304) = v9;

  v11 = sub_10002F644();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1003333E8()
{
  sub_10000C698();
  sub_100005F18();
  v2 = v1[42];
  v3 = v1[41];
  v4 = v1[38];
  v5 = v1[20];
  v6 = *v0;
  sub_100008060();
  *v7 = v6;

  return _swift_task_switch(sub_100333528, v5, 0);
}

uint64_t sub_100333A24(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 160));
  v2 = *(a1 + 168);
  if (*(v2 + 16))
  {
    *(a1 + 168) = &_swiftEmptySetSingleton;
  }

  else
  {
    v3 = *(a1 + 176);
    *(a1 + 176) = 0;

    v2 = 0;
  }

  os_unfair_lock_unlock((a1 + 160));
  return v2;
}

uint64_t sub_100333A84()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v8._object = 0x800000010056BDC0;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  v9 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100335040(&qword_1006A25E0, 255, &type metadata accessor for UUID);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = *(v3 + 8);
  v11(v7, v2);
  v12._countAndFlagsBits = 0x555570756F726720;
  v12._object = 0xEB000000003D4449;
  String.append(_:)(v12);
  v13 = [v1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v11(v7, v2);
  v15._countAndFlagsBits = 0x3D657461747320;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v30 = [v1 state];
  type metadata accessor for TUConversationState(0);
  _print_unlocked<A, B>(_:_:)();
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x800000010056BDE0;
  String.append(_:)(v16);
  v17 = [v1 activitySessions];
  sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10032E228(v18);
  v20 = v19;

  v30 = v20;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910);
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x696261706163205DLL;
  v25._object = 0xEF3D73656974696CLL;
  String.append(_:)(v25);
  [v1 capabilities];
  v26._countAndFlagsBits = TUConversationActivitySessionContainerCapabilities.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return v31;
}

void sub_100333E70(void *a1, uint64_t a2)
{
  if ([a1 respondsToSelector:"conversationManager:activitySessionContainersChanged:"])
  {
    sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    swift_unknownObjectRetain();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [a1 conversationManager:a2 activitySessionContainersChanged:isa];
    swift_unknownObjectRelease();
  }
}