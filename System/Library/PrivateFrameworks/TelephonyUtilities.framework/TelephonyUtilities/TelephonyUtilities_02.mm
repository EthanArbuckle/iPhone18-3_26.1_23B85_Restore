void sub_10003719C()
{
  v0 = sub_100016F64();
  NSObject._rawHashValue(seed:)(v0);
  sub_1000515FC();
  sub_100037318();
}

id sub_1000371E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *v3;
  sub_10003719C();
  sub_100008598(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  sub_10026D814(&unk_1006A6EC8, &qword_1005880B0);
  v15 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    v17 = *v4;
    sub_10003719C();
    sub_10000C758();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  v20 = *v4;
  if (v14)
  {
    v21 = (*(v20 + 56) + 16 * v13);
    v22 = v21[1];
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_1000373D4(v13, a3, a1, a2, v20);

    return a3;
  }
}

void sub_100037318()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  v7 = *(v0 + 32);
  sub_1000052DC();
  v9 = ~v8;
  for (i = v10 & ~v8; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_100006AF0(0, v4, v2);
    v12 = *(*(v5 + 48) + 8 * i);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      break;
    }
  }

  sub_100005EDC();
}

void sub_1000373D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000F690(a1, a2, a3, a4, a5);
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
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

uint64_t sub_100037484(uint64_t a1, void *a2)
{
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
  v24 = *&v2[OBJC_IVAR___CSDDuetDonater_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a2;
  sub_10000A0F0(v25);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v32 = v26;
  v33 = &unk_100626D08;
  v27 = _Block_copy(aBlock);
  v28 = v2;
  v29 = a2;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v7 + 8))(v13, v4);
  (*(v17 + 8))(v23, v14);
}

uint64_t sub_100037694()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000376D4(char *a1, void (*a2)(char *, uint64_t), void *a3)
{
  v238 = a3;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v243 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v242 = (&v221 - v11);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v221 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for DispatchQoS();
  v252 = *(v250 - 8);
  v18 = *(v252 + 64);
  __chkstk_darwin(v250, v19);
  v249 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for DispatchTimeInterval();
  v254 = *(v247 - 8);
  v21 = *(v254 + 64);
  __chkstk_darwin(v247, v22);
  v246 = (&v221 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for DispatchTime();
  v255 = *(v24 - 8);
  v256 = v24;
  v25 = *(v255 + 64);
  v27 = __chkstk_darwin(v24, v26);
  v245 = &v221 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v248 = &v221 - v30;
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v35 = __chkstk_darwin(v31, v34);
  v239 = &v221 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v221 - v39;
  v42 = __chkstk_darwin(v38, v41);
  v44 = &v221 - v43;
  v46 = __chkstk_darwin(v42, v45);
  v240 = &v221 - v47;
  __chkstk_darwin(v46, v48);
  v241 = &v221 - v49;
  if ((sub_1000391D0(a2) & 1) == 0)
  {
    return;
  }

  v233 = v17;
  v235 = v13;
  v234 = v12;
  v232 = v40;
  v244 = v32;
  v253 = v44;
  v251 = v31;
  v236 = a2;
  v50 = [a2 status];
  v51 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10057D6A0;
  v53 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
  swift_beginAccess();
  v231 = v53;
  aBlock = *&a1[v53];

  sub_10026D814(&qword_1006A39D0, &qword_10057E8C8);
  v54 = String.init<A>(reflecting:)();
  v55 = a1;
  v57 = v56;
  *(v52 + 56) = &type metadata for String;
  v58 = sub_100009D88();
  *(v52 + 64) = v58;
  *(v52 + 32) = v54;
  *(v52 + 40) = v57;
  v237 = v50;
  LODWORD(aBlock) = v50;
  type metadata accessor for TUCallStatus(0);
  v59 = String.init<A>(reflecting:)();
  *(v52 + 96) = &type metadata for String;
  *(v52 + 104) = v58;
  *(v52 + 72) = v59;
  *(v52 + 80) = v60;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v61 = sub_10003D4D0();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10057D690;
  v63 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
  swift_beginAccess();
  v64 = v55;
  aBlock = *&v55[v63];

  v65 = String.init<A>(reflecting:)();
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v58;
  *(v62 + 32) = v65;
  *(v62 + 40) = v66;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v67 = v236;
  if ([v236 disconnectedReason])
  {
    v68 = [v67 disconnectedReason] == 6;
    if (v237 - 3 >= 2)
    {
      v69 = v251;
      v70 = v253;
      v71 = v244;
      if (v237 != 1)
      {
        v72 = v55;
        if (v237 != 6)
        {
          return;
        }

        goto LABEL_11;
      }

LABEL_17:
      v263 = 0;
      v92 = [objc_opt_self() sharedInstance];
      v93 = [v92 queue];

      v94 = swift_allocObject();
      *(v94 + 16) = &v263;
      *(v94 + 24) = v67;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1002C7C48;
      *(v95 + 24) = v94;
      v261 = sub_1002C7C44;
      v262 = v95;
      aBlock = _NSConcreteStackBlock;
      v258 = 1107296256;
      v259 = sub_10002007C;
      v260 = &unk_100624920;
      v96 = _Block_copy(&aBlock);
      v97 = v67;

      dispatch_sync(v93, v96);

      _Block_release(v96);
      LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

      if ((v93 & 1) == 0)
      {
        if (v263)
        {
          v98 = v263;
          v99 = sub_10003D4D0();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v100 = [v97 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v101 = v71[1];
          v101(v70, v69);
          v102 = v64;
          v103 = [v97 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();
          sub_100383A0C(v70, v104, v105, v106, v107, v108, v109, v110, v221, v222);
          v112 = v111;
          v101(v70, v69);
          swift_endAccess();

          v113 = [v98 groupUUID];
          v114 = v239;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v115 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
          swift_beginAccess();
          v116 = sub_100025C58(v114, *&v102[v115]);
          if (v116)
          {
            v117 = v116;
            swift_endAccess();
            v101(v114, v69);
            sub_100446668(v97);
          }

          else
          {
            swift_endAccess();
            v101(v114, v69);
          }

          v218 = [v98 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();
          v219 = sub_1003838E8(v70);
          swift_endAccess();
          v101(v70, v69);
          if (v219)
          {
            nw_activity_complete_with_reason();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v118 = [v97 provider];
          v119 = [v118 isFaceTimeProvider];

          if (v119)
          {
            v120 = sub_10003D4D0();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v121 = [v97 uniqueProxyIdentifierUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            swift_beginAccess();
            v122 = sub_1003838E8(v70);
            swift_endAccess();
            (v71[1])(v70, v69);
            if (v122)
            {
              nw_activity_complete_with_reason();
              swift_unknownObjectRelease();
            }
          }
        }

LABEL_55:
        v220 = v263;

        return;
      }

      goto LABEL_58;
    }

LABEL_14:
    v263 = 0;
    v80 = [objc_opt_self() sharedInstance];
    v81 = [v80 queue];

    v82 = swift_allocObject();
    *(v82 + 16) = &v263;
    *(v82 + 24) = v67;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1002C7B58;
    *(v83 + 24) = v82;
    v261 = sub_1002C7C44;
    v262 = v83;
    aBlock = _NSConcreteStackBlock;
    v258 = 1107296256;
    v259 = sub_10002007C;
    v260 = &unk_100624998;
    v84 = _Block_copy(&aBlock);
    v85 = v67;

    dispatch_sync(v81, v84);

    _Block_release(v84);
    LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

    v86 = v251;
    v87 = v253;
    v88 = v244;
    if ((v81 & 1) == 0)
    {
      if (!v263)
      {

        return;
      }

      v89 = v263;
      v90 = [v85 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v91 = sub_1002BE79C(v89, v87);
      v88[1](v87, v86);
      goto LABEL_55;
    }

    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  if (v237 - 3 < 2)
  {
    goto LABEL_14;
  }

  v69 = v251;
  v70 = v253;
  v71 = v244;
  if (v237 == 1)
  {
    goto LABEL_17;
  }

  if (v237 != 6)
  {
    return;
  }

  v72 = v55;
  v68 = 1;
LABEL_11:
  v237 = v68;
  v73 = [v67 callGroupUUID];
  if (v73)
  {
    v74 = v73;
    v75 = v240;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v241;
    (v71[4])(v241, v75, v69);
    v77 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v78 = sub_100025C58(v76, *&v72[v77]);
    if (v78)
    {
      v79 = v78;
      swift_endAccess();
      sub_100446668(v67);
    }

    else
    {
      swift_endAccess();
    }

    (v71[1])(v76, v69);
  }

  v241 = sub_10003D53C(v67);
  v239 = *&v72[OBJC_IVAR___CSDRTCReporter_queue];
  v123 = v245;
  static DispatchTime.now()();
  v124 = v67;
  v125 = v246;
  *v246 = 5;
  v126 = v254;
  v127 = *(v254 + 104);
  v229 = enum case for DispatchTimeInterval.seconds(_:);
  v128 = v247;
  v230 = v254 + 104;
  v228 = v127;
  v127(v125);
  v129 = v248;
  + infix(_:_:)();
  v130 = *(v126 + 8);
  v254 = v126 + 8;
  v227 = v130;
  v130(v125, v128);
  v131 = v255 + 8;
  v132 = *(v255 + 8);
  v132(v123, v256);
  v133 = swift_allocObject();
  *(v133 + 16) = v72;
  *(v133 + 24) = v124;
  v261 = sub_1002C7B74;
  v262 = v133;
  aBlock = _NSConcreteStackBlock;
  v258 = 1107296256;
  v259 = sub_100004CEC;
  v260 = &unk_1006249E8;
  v134 = _Block_copy(&aBlock);
  v231 = v72;
  v240 = v124;
  v135 = v249;
  static DispatchQoS.unspecified.getter();
  v263 = _swiftEmptyArrayStorage;
  v136 = sub_10000ED20(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  v137 = sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v138 = sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v139 = v233;
  v225 = v137;
  v224 = v138;
  v140 = v234;
  v226 = v136;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v134);
  v141 = *(v235 + 8);
  v235 += 8;
  v223 = v141;
  v141(v139, v140);
  v142 = v252 + 8;
  v143 = v135;
  v144 = v240;
  v145 = v231;
  v222 = *(v252 + 8);
  v222(v143, v250);
  v146 = v251;
  v255 = v131;
  v236 = v132;
  v132(v129, v256);

  v147 = [v144 uniqueProxyIdentifierUUID];
  v148 = v253;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v149 = v242;
  sub_10000AF74(v242, 1, 1, v146);
  swift_beginAccess();
  sub_10003D99C(v149, v148);
  swift_endAccess();
  v150 = v144;
  v151 = v144;
  v152 = v146;
  v153 = v244;
  v154 = [v151 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v155 = v243;
  sub_10003DC5C(v148, v156, v157, v158, v159, v160, v161, v162, v221, v222);
  swift_endAccess();
  v163 = v148;
  v164 = v153[1];
  v164(v163, v146);
  if (sub_100015468(v155, 1, v146) != 1)
  {
    v242 = v164;
    v252 = v142;
    v168 = v232;
    (v153[4])(v232, v155, v146);
    swift_beginAccess();
    sub_100383A30(v168, v169, v170, v171, v172, v173, v174, v175, v221, v222);
    v244 = v176;
    swift_endAccess();
    LODWORD(v243) = v145[OBJC_IVAR___CSDRTCReporter_userScoreEnabled];
    if (v243 == 1)
    {
      v177 = [v150 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v178 = objc_allocWithZone(type metadata accessor for RTCCSDCallInfo());
      v179 = v244;
      v180 = v244;
      v181 = v150;
      sub_100040584(v181, v179);
      v182 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
      swift_beginAccess();
      v183 = v241;
      v184 = *&v145[v182];
      swift_isUniquelyReferenced_nonNull_native();
      v263 = *&v145[v182];
      sub_100378A8C();
      *&v145[v182] = v263;

      swift_endAccess();
      v185 = v245;
      static DispatchTime.now()();
      v186 = v246;
      *v246 = 120;
      v187 = v247;
      v228(v186, v229, v247);
      v188 = v145;
      v189 = v248;
      + infix(_:_:)();
      v227(v186, v187);
      v190 = v236;
      v236(v185, v256);
      v191 = swift_allocObject();
      v191[2] = v188;
      v191[3] = v181;
      v192 = v238;
      v191[4] = v238;
      v261 = sub_1002C7B7C;
      v262 = v191;
      aBlock = _NSConcreteStackBlock;
      v258 = 1107296256;
      v259 = sub_100004CEC;
      v260 = &unk_100624A38;
      v193 = _Block_copy(&aBlock);
      v194 = v188;
      v195 = v181;
      v196 = v192;
      v197 = v249;
      static DispatchQoS.unspecified.getter();
      v263 = _swiftEmptyArrayStorage;
      v198 = v233;
      v199 = v234;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v193);
      v223(v198, v199);
      v222(v197, v250);
      v150 = v240;
      v152 = v251;
      v190(v189, v256);
    }

    swift_beginAccess();
    v200 = v232;
    v201 = sub_1003838E8(v232);
    swift_endAccess();
    if (v201)
    {
      [v150 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v202 = sub_1003838E8(v200);
    swift_endAccess();
    if (v202)
    {
      [v150 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    v203 = [v150 uniqueProxyIdentifierUUID];
    v204 = v253;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v205 = sub_1003838E8(v204);
    swift_endAccess();
    v206 = v242;
    v242(v204, v152);
    if (v205)
    {
      [v150 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    v206(v200, v152);
    v167 = v241;
    v207 = v244;
    v208 = v243;
    goto LABEL_46;
  }

  sub_1000099A4(v155, &unk_1006A3DD0, &unk_10057C9D0);
  v165 = [v150 provider];
  v166 = [v165 isTelephonyProvider];

  if (v166)
  {
    v167 = sub_10003DE80(v150);
  }

  else
  {
    v209 = [v150 provider];
    v210 = [v209 isFaceTimeProvider];

    v167 = v241;
    if (v210)
    {
      v211 = [v150 uniqueProxyIdentifierUUID];
      v212 = v253;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v213 = sub_1003838E8(v212);
      swift_endAccess();
      v164(v212, v146);
      if (v213)
      {
        [v150 disconnectedReason];
        nw_activity_complete_with_reason_and_underlying_error();
        swift_unknownObjectRelease();
      }

      v214 = [v150 uniqueProxyIdentifierUUID];
      v215 = v253;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v216 = sub_1003838E8(v215);
      swift_endAccess();
      v164(v215, v146);
      if (v216)
      {
        [v150 disconnectedReason];
        nw_activity_complete_with_reason_and_underlying_error();
        swift_unknownObjectRelease();
      }

      v208 = 0;
      v207 = 0;
      v167 = v241;
      goto LABEL_46;
    }
  }

  v208 = 0;
  v207 = 0;
LABEL_46:
  if (v167)
  {
    if (v208)
    {
    }

    else
    {
      v217 = sub_10003FCD0(v150, v207);
      sub_100055190(v167, v217);
    }
  }
}

uint64_t sub_10003912C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000391D0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR___CSDRTCReporter_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 queue];

    __chkstk_darwin(v14, v15);
    *&v16[-16] = a1;
    OS_dispatch_queue.sync<A>(execute:)();

    return v16[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100039390(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v60 - v11;
  v13 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v14 = *&a1[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_37;
  }

  v16 = *&a1[v13];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  v19 = a2;
  v20 = static NSObject.== infix(_:_:)();

  if (v20)
  {
LABEL_37:
    if ([a2 status] == 1 && objc_msgSend(a2, "isScreening") && objc_msgSend(a2, "isConnected") && objc_msgSend(a2, "isEndpointOnCurrentDevice"))
    {
      v21 = [a2 smartHoldingSession];
      if (!v21)
      {
        if (qword_1006A0B28 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000AF9C(v44, qword_1006BA5F8);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v63[0] = v48;
          *v47 = 136315138;
          v62 = a3;
          type metadata accessor for Triggers(0);
          v49 = String.init<A>(reflecting:)();
          v51 = sub_10002741C(v49, v50, v63);

          *(v47 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v45, v46, "creating answering machine for new call, triggers: %s", v47, 0xCu);
          sub_100009B7C(v48);
        }

        v52 = type metadata accessor for URL();
        sub_10000AF74(v12, 1, 1, v52);
        sub_1003087A4();
        sub_100009A04(v12, &unk_1006A52C0, &unk_10057D930);
        if (qword_1006A0BC8 != -1)
        {
          swift_once();
        }

        v53 = qword_1006BA780;
        *(qword_1006BA780 + 24) = &off_100626408;
        swift_unknownObjectWeakAssign();
        v54 = *(v53 + 48);
        if (v54)
        {
          sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
          v55 = a2;
          v56 = v54;
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {
            return;
          }

          v58 = *(v53 + 48);
        }

        else
        {
          v58 = 0;
        }

        *(v53 + 48) = a2;

        v59 = a2;
        sub_1003D33E0();
        return;
      }
    }

    sub_1000399FC();
    v22 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
    v23 = *&a1[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine];
    if (v23)
    {
      v24 = v23;
      sub_10042F01C();

      v23 = *&a1[v22];
    }

    *&a1[v22] = 0;

    if (qword_1006A0BC8 != -1)
    {
      swift_once();
    }

    sub_10003A864();
    if ([a2 status] == 6)
    {
      v25 = &a1[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
      swift_beginAccess();
      v26 = *(*sub_100009B14(v25, *(v25 + 3)) + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager);
      v27 = *sub_100009B14(a4, a4[3]);
      v28 = v26;
      v29 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
      v31 = v30;
      v33 = v32;
      v63[0] = Locale.identifier.getter();
      v63[1] = v34;
      v63[2] = v29;
      v63[3] = v31;
      v63[4] = v33;
      sub_100051D0C();
    }
  }

  else
  {
LABEL_16:
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5F8);
    v36 = a1;
    v61 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63[0] = v39;
      *v38 = 136315138;
      v62 = *&a1[v13];
      type metadata accessor for AnsweringMachineState();

      v40 = String.init<A>(reflecting:)();
      v42 = sub_10002741C(v40, v41, v63);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v61, v37, "Ignoring second call because we are already screening: %s", v38, 0xCu);
      sub_100009B7C(v39);
    }

    else
    {
      v43 = v61;
    }
  }
}

uint64_t sub_1000399FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  __chkstk_darwin(v2, v4);
  v6 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v64 = v63 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = (v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v23 = v24;
  (*(v19 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v18);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v18);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v63[1] = v25;
  v25 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v27 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();
  sub_10003A220(v27 + 16, &aBlock, &qword_1006A52D0, &unk_100580040);
  if (!v71)
  {
    sub_100009A04(&aBlock, &qword_1006A52D0, &unk_100580040);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5F8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "not destroying answering machine because we don't have one active", v38, 2u);
    }

    v39 = type metadata accessor for AnsweringMachineState();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    sub_10003A308();
    v43 = *&v25[v1];
    *&v25[v1] = v42;
  }

  sub_10002F0C8(&aBlock, v74);
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_21;
  }

LABEL_4:
  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA5F8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "stopping answering machine", v31, 2u);
  }

  if (*(*&v25[v1] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping))
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "we are already stopping, not calling stop again", v34, 2u);
    }

    return sub_100009B7C(v74);
  }

  v45 = *&v25[v1];

  sub_10003A72C();

  *(*&v25[v1] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) = 1;
  v46 = v75;
  v47 = v76;
  sub_100009B14(v74, v75);
  (*(v47 + 32))(v46, v47);
  v48 = *&v25[v1];
  *&aBlock = 0;
  sub_10031699C(&qword_1006A52B8, &type metadata accessor for DispatchWorkItemFlags);

  dispatch thunk of OptionSet.init(rawValue:)();
  v49 = swift_allocObject();
  *(v49 + 16) = v1;
  v72 = sub_1003169EC;
  v73 = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v70 = sub_100004CEC;
  v71 = &unk_100626518;
  _Block_copy(&aBlock);
  v50 = type metadata accessor for DispatchWorkItem();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v1;
  v54 = DispatchWorkItem.init(flags:block:)();

  v55 = *(v48 + 72);
  *(v48 + 72) = v54;

  static DispatchTime.now()();
  if (qword_1006A0A08 != -1)
  {
    swift_once();
  }

  *v6 = qword_1006A4C30;
  v57 = v65;
  v56 = v66;
  (*(v65 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v66);
  v58 = v64;
  + infix(_:_:)();
  (*(v57 + 8))(v6, v56);
  v59 = v68;
  v60 = *(v67 + 8);
  result = v60(v12, v68);
  v61 = *&v25[v1];
  if (*(v61 + 72))
  {
    v62 = *(v61 + 72);

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v60(v58, v59);
    return sub_100009B7C(v74);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A18C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A1C8()
{
  sub_100007710();
  v3 = sub_10026D814(v1, v2);
  sub_100008070(v3);
  v5 = *(v4 + 16);
  v6 = sub_100006B30();
  v7(v6);
  return v0;
}

uint64_t sub_10003A220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007674(a1, a2, a3, a4);
  sub_100008070(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10003A270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100007674(a1, a2, a3, a4);
  sub_100008070(v5);
  v7 = *(v6 + 16);
  v8 = sub_100006B30();
  v9(v8);
  return v4;
}

uint64_t type metadata accessor for AnsweringMachineState()
{
  result = qword_1006A4E78;
  if (!qword_1006A4E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A308()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100008070(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007FDC();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v6, v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 0;
  v10 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = 0;
  v12 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs) = _swiftEmptyArrayStorage;
  v13 = v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) = 0;
  v14 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock;
  sub_10000841C();
  sub_10031699C(v15, v16);
  dispatch thunk of OptionSet.init(rawValue:)();
  aBlock[4] = sub_100308310;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626428;
  _Block_copy(aBlock);
  sub_10000691C();
  v17 = type metadata accessor for DispatchWorkItem();
  sub_1000076B4(v17);
  *(v0 + v14) = DispatchWorkItem.init(flags:block:)();
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_10003A558()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

BOOL sub_10003A574()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10003A5E0()
{
  result = v0;
  v4 = *(v1 - 120);
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_10003A5FC()
{
  sub_10003A72C();
  sub_100009A04(v0 + 16, &qword_1006A52D0, &unk_100580040);

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime, &qword_1006A3C70, &unk_10057EA80);
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  v7 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);

  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock);

  v9 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock);

  v10 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);

  v11 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock);

  v12 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);

  return v0;
}

uint64_t sub_10003A72C()
{
  v1 = v0;
  if (*(v0 + 72))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock);

  dispatch thunk of DispatchWorkItem.cancel()();

  if (*(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock))
  {
    v4 = *(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock);

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  if (*(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock))
  {
    v5 = *(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  if (*(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock))
  {
    v6 = *(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock);

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  return result;
}

uint64_t sub_10003A80C()
{
  sub_10003A5FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10003A864()
{
  sub_10003A920();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B7B0(_swiftEmptyArrayStorage);
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  swift_beginAccess();
  v4 = *(v0 + 40);
  *(v0 + 40) = v3;

  v5 = *(v0 + 48);
  *(v0 + 48) = 0;

  [*(v0 + 56) invalidate];
  v6 = *(v0 + 56);
  *(v0 + 56) = 0;
}

void sub_10003A920()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [v1 utterances];
    if (v2)
    {
      v3 = v2;
      sub_100006AF0(0, &qword_1006A7A78, RTTUtterance_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }
}

void sub_10003AC84(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_callCenterObserver);
  if (v2)
  {
    v3 = [objc_msgSend(v2 "callContainer")];
    swift_unknownObjectRelease();
    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        if ([v4 status] != 6)
        {
          v14 = OBJC_IVAR___CSDAudioStateHandler_currentCall;
          v15 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall);
          p_vtable = _TtC13callservicesd37AVAudioClientMuteStateHandlerProvider.vtable;
          if (v15)
          {
            sub_100024570();
            v13 = v3;
            v17 = v15;
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              v19 = [v5 audioInterruptionProviderType];
              v20 = OBJC_IVAR___CSDAudioStateHandler_audioStateObserver;
              swift_beginAccess();
              sub_10003B3F4(a1 + v20, &v61);
              v21 = *(&v62 + 1);
              if (*(&v62 + 1))
              {
                v22 = v63;
                v23 = sub_100009B14(&v61, *(&v62 + 1));
                v57 = v19;
                v24 = *(v21 - 8);
                v25 = *(v24 + 64);
                __chkstk_darwin(v23, v23);
                v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
                (*(v24 + 16))(v27);
                sub_10003B464(&v61);
                v28 = (*(v22 + 32))(v21, v22);
                (*(v24 + 8))(v27, v21);
                v29 = v57 == v28;
                p_vtable = (_TtC13callservicesd37AVAudioClientMuteStateHandlerProvider + 24);
                if (v29)
                {

LABEL_14:
                  return;
                }
              }

              else
              {
                sub_10003B464(&v61);
              }
            }
          }

          else
          {
            v30 = v3;
          }

          if (qword_1006A0B30 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          v32 = sub_10000AF9C(v31, qword_1006BA610);
          v13 = v3;
          v57 = v32;
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v61 = v36;
            *v35 = 136315138;
            v58[0] = v5;
            sub_100024570();
            v37 = v13;
            v38 = String.init<A>(reflecting:)();
            v40 = sub_10002741C(v38, v39, &v61);

            *(v35 + 4) = v40;
            _os_log_impl(&_mh_execute_header, v33, v34, "Frontmost call changed or underlying audio session changed, configuring audio session observer for call: %s", v35, 0xCu);
            sub_100009B7C(v36);
            p_vtable = _TtC13callservicesd37AVAudioClientMuteStateHandlerProvider.vtable;
          }

          v41 = p_vtable[57];
          swift_beginAccess();
          sub_10003B3F4(v41 + a1, &v61);
          if (*(&v62 + 1))
          {
            sub_100009AB0(&v61, v58);
            sub_10003B464(&v61);
            v42 = v59;
            v43 = v60;
            sub_100009B14(v58, v59);
            (*(v43 + 48))(v42, v43);
            sub_100009B7C(v58);
          }

          else
          {
            sub_10003B464(&v61);
          }

          v44 = *(a1 + v14);
          *(a1 + v14) = v5;

          v45 = *sub_100009B14((a1 + OBJC_IVAR___CSDAudioStateHandler_factory), *(a1 + OBJC_IVAR___CSDAudioStateHandler_factory + 24));
          sub_10003B4CC(v5, &v61);
          swift_beginAccess();
          sub_10003BA6C(&v61, v41 + a1);
          swift_endAccess();
          v47 = sub_10003BADC();
          v48 = *(v46 + 24);
          if (v48)
          {
            v49 = *(v46 + 32);
            sub_10001BDB8(v46, *(v46 + 24));
            v50 = *(v49 + 16);
            v51 = swift_unknownObjectRetain();
            v50(v51, &off_10062CF20, v48, v49);
          }

          (v47)(&v61, 0);
          sub_10003B3F4(v41 + a1, &v61);
          if (*(&v62 + 1))
          {
            sub_100009AB0(&v61, v58);
            sub_10003B464(&v61);
            v52 = v59;
            v53 = v60;
            sub_100009B14(v58, v59);
            (*(v53 + 40))(v52, v53);
            sub_100009B7C(v58);
          }

          else
          {
            sub_10003B464(&v61);
          }

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v54, v55, "Began observing audioStateObserver!", v56, 2u);
          }

          goto LABEL_14;
        }
      }
    }

    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No active calls on the device, removing observers", v9, 2u);
    }

    v10 = OBJC_IVAR___CSDAudioStateHandler_audioStateObserver;
    swift_beginAccess();
    sub_10003B3F4(a1 + v10, &v61);
    if (*(&v62 + 1))
    {
      sub_100009AB0(&v61, v58);
      sub_10003B464(&v61);
      v11 = v59;
      v12 = v60;
      sub_100009B14(v58, v59);
      (*(v12 + 48))(v11, v12);
      sub_100009B7C(v58);
    }

    else
    {
      sub_10003B464(&v61);
    }

    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    swift_beginAccess();
    sub_10003BA6C(&v61, a1 + v10);
    swift_endAccess();
    v13 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall);
    *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall) = 0;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_10003B3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B464(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10003B4CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 audioInterruptionProviderType];
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = *sub_100009B14((v2 + 16), *(v2 + 40));
      v7 = sub_10003B7A8(a1);
      if (v7)
      {
        v9 = sub_10003B884(v7, v8);
        if (v9)
        {
          v10 = v9;
          *(a2 + 24) = type metadata accessor for AVAudioSessionAudioStateObserver();
          *(a2 + 32) = &off_1006303C8;
          swift_unknownObjectRelease();
          *a2 = v10;
          return result;
        }

        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      if (qword_1006A0B30 != -1)
      {
        sub_100008720();
      }

      v25 = type metadata accessor for Logger();
      sub_10000AF9C(v25, qword_1006BA610);
      v26 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      sub_100024570();
      v27 = v26;
      v28 = String.init<A>(reflecting:)();
      v30 = sub_10002741C(v28, v29, &v31);

      *(v18 + 4) = v30;
      v24 = "Audio session not found for call: %s. Returning nil";
    }

    else
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720();
      }

      v14 = type metadata accessor for Logger();
      sub_10000AF9C(v14, qword_1006BA610);
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      sub_100024570();
      v20 = v15;
      v21 = String.init<A>(reflecting:)();
      v23 = sub_10002741C(v21, v22, &v31);

      *(v18 + 4) = v23;
      v24 = "Call does not propertly configure audioInterruptionProviderType: %s";
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v24, v18, 0xCu);
    sub_100009B7C(v19);
    sub_100005F40();
    sub_100005F40();
LABEL_17:

    goto LABEL_18;
  }

  v12 = sub_1003B6CA0();
  if (v12)
  {
    v13 = v12;
    *(a2 + 24) = type metadata accessor for AVAudioClientAudioStateObserver();
    *(a2 + 32) = &off_10062CE80;
    *a2 = v13;
    return result;
  }

LABEL_18:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_10003B7A8(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3)
  {
    return [objc_opt_self() sharedInstance];
  }

  v5 = [a1 provider];
  v6 = [v5 audioSessionID];

  return [objc_allocWithZone(AVAudioSession) initProxySession:v6 autoReconnect:0];
}

void *sub_10003B884(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B30 != -1)
  {
    sub_100008720();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Configuring AVAudioSession observer", v6, 2u);
    sub_100005F40();
  }

  type metadata accessor for AVAudioSessionAudioStateObserver();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  return sub_10003B9A0(v7, a2);
}

void *sub_10003B9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[6] = a2;
  v2[7] = 0;
  v2[4] = 1;
  v2[5] = a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = v2[7];
  v5 = v2[8];
  v2[7] = sub_100430804;
  v2[8] = v3;

  sub_1000051F8(v4);

  return v2;
}

uint64_t sub_10003BA34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BB3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10003BB54()
{
  v1 = v0;
  if (qword_1006A0B30 != -1)
  {
    sub_100008720();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin observing AVAudioSession mute state change", v5, 2u);
  }

  v6 = v1[5];
  v7 = v1[6];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v1[7];
  if (v10)
  {
    v11 = result;
    v12 = v9;
    v13 = v1[8];
    ObjectType = swift_getObjectType();
    v15 = *(v7 + 128);

    v16 = v15(1, v11, v12, v10, v13, ObjectType, v7);
    sub_1000051F8(v10);

    v17 = v1[9];
    v1[9] = v16;

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003511E8;
  v13[3] = &unk_100628E90;
  v10 = _Block_copy(v13);

  v11 = [v5 addObserverForType:a1 name:v9 block:v10];

  _Block_release(v10);

  return v11;
}

void sub_10003BE00(uint64_t a1)
{
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v1 = [*(a1 + 32) callCenterObserver];
  v2 = [v1 callContainer];
  v3 = [v2 currentAudioAndVideoCalls];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v55 = 0;
    v56 = 0;
    v8 = 0;
    v57 = 0;
    v9 = 0;
    goto LABEL_48;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v55 = 0;
  v56 = 0;
  v8 = 0;
  v57 = 0;
  v9 = 0;
  v10 = *v61;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v61 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v60 + 1) + 8 * i);
      v13 = [v12 provider];
      v14 = [v13 supportsCurrentPlatform];

      if (!v14)
      {
        continue;
      }

      if ([v12 status] == 3)
      {
        if (!v9 || ([v12 callDuration], v16 = v15, objc_msgSend(v9, "callDuration"), v16 > v17))
        {
          v18 = v12;

          v9 = v18;
        }
      }

      if ([v12 status] == 1 && (objc_msgSend(v12, "isScreening") & 1) == 0)
      {
        if (!v57 || ([v12 callDuration], v20 = v19, objc_msgSend(v57, "callDuration"), v20 > v21))
        {
          v22 = v12;

          v57 = v22;
        }
      }

      if ([v12 status] == 2)
      {
        if (!v8 || ([v12 callDuration], v24 = v23, objc_msgSend(v8, "callDuration"), v24 > v25))
        {
          v26 = v12;

          v8 = v26;
        }
      }

      if ([v12 status] == 5)
      {
        if (!v6 || ([v12 callDuration], v28 = v27, objc_msgSend(v6, "callDuration"), v28 > v29))
        {
          v30 = v12;

          v6 = v30;
        }
      }

      if ([v12 status] == 4)
      {
        if (!v7 || ([v12 callDuration], v32 = v31, objc_msgSend(v7, "callDuration"), v32 > v33))
        {
          v34 = v12;

          v7 = v34;
        }
      }

      if ([v12 status] == 1 && objc_msgSend(v12, "isScreening") && objc_msgSend(v12, "screeningAnnouncementHasFinished"))
      {
        v35 = [v12 smartHoldingSession];
        if (v35)
        {
          goto LABEL_35;
        }

        if (!v55 || ([v12 callDuration], v37 = v36, objc_msgSend(v55, "callDuration"), v37 > v38))
        {
          v39 = v12;
          v35 = v55;
          v55 = v39;
LABEL_35:
        }
      }

      v40 = [*(a1 + 32) featureFlags];
      v41 = [v40 waitOnHoldEnabled];

      if (v41)
      {
        if ([v12 status] == 1)
        {
          v42 = [v12 smartHoldingSession];
          if (v42)
          {
            v43 = v42;
            if (!v56)
            {

LABEL_43:
              v48 = v12;

              v56 = v48;
              continue;
            }

            [v12 callDuration];
            v45 = v44;
            [v56 callDuration];
            v47 = v46;

            if (v45 > v47)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  }

  while (v5);
LABEL_48:

  v49 = [*(a1 + 32) callCenterObserver];
  v50 = [v49 callContainer];
  v51 = [v50 frontmostBargeCall];

  v52 = sub_100004778();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v65 = v7 != 0;
    v66 = 1024;
    v67 = v9 != 0;
    v68 = 1024;
    v69 = v57 != 0;
    v70 = 1024;
    v71 = v8 != 0;
    v72 = 1024;
    v73 = v6 != 0;
    v74 = 1024;
    v75 = v51 != 0;
    v76 = 1024;
    v77 = v55 != 0;
    v78 = 1024;
    v79 = v56 != 0;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "ringingCall %d sendingCall %d activeCall %d heldCall %d disconnectingCall %d bargeCall %d screeningCall %d waitOnHoldCall %d", buf, 0x32u);
  }

  if (v55)
  {
    v53 = v55;
  }

  else
  {
    v53 = v56;
  }

  if (v51)
  {
    v53 = v51;
  }

  if (v6)
  {
    v53 = v6;
  }

  if (v8)
  {
    v53 = v8;
  }

  if (v57)
  {
    v53 = v57;
  }

  if (v9)
  {
    v53 = v9;
  }

  if (v7)
  {
    v54 = v7;
  }

  else
  {
    v54 = v53;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v54);
}

void sub_10003CE7C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [a1 provider];
  v4 = [v3 isSystemProvider];

  *a2 = v4;
}

void sub_10003D068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE0;

  return sub_100027768();
}

uint64_t sub_10003D434(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10003D4D0()
{
  if (qword_1006ACF20 != -1)
  {
    sub_10003D514();
  }

  v1 = qword_1006ACF18;

  return v1;
}

uint64_t sub_10003D53C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - v11;
  v13 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = v4;
  v17 = sub_100025C58(v12, v15);
  swift_endAccess();
  v18 = *(v16 + 8);
  v18(v12, v3);
  if (!v17)
  {
    v36 = v16;
    v37 = v9;
    v19 = [a1 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
    swift_beginAccess();
    v17 = sub_100025C58(v12, *(v1 + v20));
    swift_endAccess();
    v18(v12, v3);
    if (!v17)
    {
      v21 = [a1 provider];
      v22 = [v21 isTinCanProvider];

      v23 = [a1 provider];
      v24 = [v23 isFaceTimeProvider];

      if ((v24 & 1) != 0 || v22)
      {
        v25 = [objc_opt_self() sharedInstance];
        v35 = [v25 activeConversationForCall:a1 backedByGroupSession:1];

        v26 = sub_10003D4D0();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10057D690;
        v28 = [a1 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v36 + 16))(v37, v12, v3);
        v29 = String.init<A>(reflecting:)();
        v31 = v30;
        v18(v12, v3);
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_100009D88();
        *(v27 + 32) = v29;
        *(v27 + 40) = v31;
        v32 = v35;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        if (v32)
        {
          v33 = [a1 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v17 = sub_1002BE79C(v32, v12);
          v18(v12, v3);
        }

        else
        {
          return sub_1002BF3E8(a1);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v17;
}

uint64_t sub_10003D99C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v7);
  v9 = *(v8 + 64);
  sub_100006688();
  __chkstk_darwin(v10, v11);
  sub_100006948();
  v12 = type metadata accessor for UUID();
  v13 = sub_100007FEC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_100007FDC();
  v19 = sub_100007DAC();
  if (sub_100015468(v19, v20, v12) == 1)
  {
    sub_100009F18();
    sub_100009A04(v21, v22, v23);
    sub_10003DC5C(a2, v24, v25, v26, v27, v28, v29, v30, v42, v43);
    (*(v15 + 8))(a2, v12);
    sub_100009F18();
    return sub_100009A04(v31, v32, v33);
  }

  else
  {
    (*(v15 + 32))(v3, a1, v12);
    v35 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100378914(v3, a2, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, *v4, v45, v46);
    *v4 = v44;
    return (*(v15 + 8))(a2, v12);
  }
}

uint64_t sub_10003DB74()
{

  return swift_once();
}

id sub_10003DB94()
{
  v2 = *(v0 - 312);

  return v2;
}

uint64_t sub_10003DBAC()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10003DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100010094();
  sub_10000C23C();
  sub_100021E24();
  if (v13)
  {
    v14 = v12;
    v15 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100021F7C();
    sub_10026D814(&qword_1006A7680, &unk_1005827D0);
    sub_10000EAB8();
    sub_1000076CC();
    v16 = *(a10 + 48);
    v17 = type metadata accessor for UUID();
    sub_100007FEC(v17);
    v19 = v18;
    v21 = *(v20 + 72) * v14;
    (*(v18 + 8))(v16 + v21, v17);
    (*(v19 + 32))(v10, *(a10 + 56) + v21, v17);
    sub_1000085E4();
    sub_100033024(v22, v23);
    sub_100007968();
    _NativeDictionary._delete(at:)();
    sub_10000F394();
  }

  else
  {
    type metadata accessor for UUID();
    sub_100008D20();
  }

  sub_100008348();

  return sub_10000AF74(v24, v25, v26, v27);
}

__n128 sub_10003DDB4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t sub_10003DDFC()
{
}

_OWORD *sub_10003DE1C()
{

  return sub_100040430();
}

void sub_10003DE64(uint64_t a1@<X8>)
{
  v3 = a1 | (v2 << 6);
  v4 = (*(v1 + 48) + 16 * v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(*(v1 + 56) + 8 * v3);
}

uint64_t sub_10003DE80(void *a1)
{
  v1 = [a1 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_10003DF24(v2, v4, 0, 0xD000000000000012, 0x8000000100565570, 0xD000000000000021, 0x8000000100565520, 0);

  return v5;
}

uint64_t sub_10003DF24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v81 = a7;
  v82 = a8;
  v80 = a6;
  v83 = a4;
  v84 = a5;
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = &v78 - v16;
  v18 = type metadata accessor for UUID();
  *&v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v18, v20);
  v79 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v8 + OBJC_IVAR___CSDRTCReporter_queue);
  *v27 = v28;
  (*(v23 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v22);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v27, v22);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_10026D814(&unk_1006A39A0, &unk_10057D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  result = kRTCReportingSessionInfoClientType;
  if (!kRTCReportingSessionInfoClientType)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v32;
  v33 = [objc_allocWithZone(NSNumber) initWithChar:27];
  v34 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  *(inited + 72) = v34;
  *(inited + 48) = v33;
  result = kRTCReportingSessionInfoClientVersion;
  if (!kRTCReportingSessionInfoClientVersion)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v35;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = 3223088;
  *(inited + 104) = 0xE300000000000000;
  result = kRTCReportingSessionInfoSessionID;
  if (!kRTCReportingSessionInfoSessionID)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v36;
  v37 = [objc_allocWithZone(NSNumber) initWithInteger:String.hashValue.getter()];
  *(inited + 168) = v34;
  *(inited + 144) = v37;
  result = kRTCReportingSessionInfoBatchEvent;
  if (!kRTCReportingSessionInfoBatchEvent)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v38;
  v39 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 216) = v34;
  *(inited + 192) = v39;
  v40 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    result = kRTCReportingSessionInfoHierarchyToken;
    v41 = v86;
    if (!kRTCReportingSessionInfoHierarchyToken)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    *&v89 = a3;
    sub_10003EBF0(&v89, v88);
    v42 = a3;
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v40;
    sub_100040430();

    v40 = v87;
  }

  else
  {
    v41 = v86;
  }

  sub_10026D814(&unk_1006A61D0, &qword_100581190);
  v43 = swift_initStackObject();
  v86 = xmmword_10057D6A0;
  *(v43 + 16) = xmmword_10057D6A0;
  result = kRTCReportingUserInfoClientName;
  v45 = v84;
  v44 = v85;
  if (!kRTCReportingUserInfoClientName)
  {
    goto LABEL_30;
  }

  *(v43 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v43 + 40) = v46;
  *(v43 + 48) = v83;
  *(v43 + 56) = v45;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v43 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v43 + 72) = v47;
  v48 = v81;
  *(v43 + 80) = v80;
  *(v43 + 88) = v48;

  v49 = Dictionary.init(dictionaryLiteral:)();
  if (v82)
  {
    v50 = [v82 conversationID];
    if (v50)
    {
      v51 = v50;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = v79;
    sub_10000AF74(v44, v52, 1, v18);
    sub_100286068(v44, v17);
    if (sub_100015468(v17, 1, v18) == 1)
    {
      goto LABEL_18;
    }

    (*(v41 + 32))(v53, v17, v18);
    result = kRTCReportingSessionInfoSamplingUUIID;
    if (kRTCReportingSessionInfoSamplingUUIID)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = UUID.uuidString.getter();
      v90 = &type metadata for String;
      *&v89 = v54;
      *(&v89 + 1) = v55;
      sub_10003EBF0(&v89, v88);
      swift_isUniquelyReferenced_nonNull_native();
      v87 = v40;
      sub_100040430();

      v40 = v87;
      (*(v41 + 8))(v53, v18);
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  sub_10000AF74(v17, 1, 1, v18);
LABEL_18:
  sub_1000099A4(v17, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_21:
  sub_10003E7C0(v40);
  v57 = v56;
  sub_10003F8F8(v49);
  v59 = v58;
  v60 = objc_allocWithZone(RTCReporting);
  v61 = sub_10003FBE8(v57, v59, _swiftEmptyArrayStorage);
  v62 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v63 = swift_allocObject();
  if (v61)
  {
    *(v63 + 16) = xmmword_10057E830;
    *&v89 = v61;
    sub_100006AF0(0, &qword_1006A3968, RTCReporting_ptr);
    *&v86 = v61;
    v64 = String.init<A>(reflecting:)();
    v66 = v65;
    *(v63 + 56) = &type metadata for String;
    v67 = sub_100009D88();
    *(v63 + 64) = v67;
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;
    *&v89 = v40;
    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v68 = String.init<A>(reflecting:)();
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v67;
    *(v63 + 72) = v68;
    *(v63 + 80) = v69;
    *&v89 = v49;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v70 = String.init<A>(reflecting:)();
    *(v63 + 136) = &type metadata for String;
    *(v63 + 144) = v67;
    *(v63 + 112) = v70;
    *(v63 + 120) = v71;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    [v86 startConfigurationWithCompletionHandler:0];
  }

  else
  {
    *(v63 + 16) = v86;
    *&v89 = v40;
    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v72 = String.init<A>(reflecting:)();
    v74 = v73;
    *(v63 + 56) = &type metadata for String;
    v75 = sub_100009D88();
    *(v63 + 64) = v75;
    *(v63 + 32) = v72;
    *(v63 + 40) = v74;
    *&v89 = v49;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v76 = String.init<A>(reflecting:)();
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v75;
    *(v63 + 72) = v76;
    *(v63 + 80) = v77;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  return v61;
}

void sub_10003E7C0(uint64_t a1)
{
  sub_100027EF4(a1);
  if (v2)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v4 = sub_10001AC80();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  sub_1004582A8();
  v8 = (v4 + 8);

  v9 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_10000B904(__clz(__rbit64(v7)) | (v9 << 6));
    v13 = *v11;
    v12 = v11[1];
    sub_100006A94(v15 + 32 * v14, v36);
    *&v35 = v13;
    *(&v35 + 1) = v12;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_10003EBF0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_10003EBF0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_10003EBF0(v32, v33);
    v16 = AnyHashable._rawHashValue(seed:)(v4[5]) & ~(-1 << *(v4 + 32));
    if (((-1 << v16) & ~*&v8[8 * (v16 >> 6)]) == 0)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v20)
        {
          if (v18)
          {
            goto LABEL_26;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (*&v8[8 * v17] != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    sub_10000FE84();
LABEL_22:
    v7 &= v7 - 1;
    sub_100007DC0();
    *&v8[v21] |= v22;
    v24 = v4[6] + 40 * v23;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    sub_10003EBF0(v33, (v4[7] + 32 * v23));
    ++v4[2];
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v3)
    {

      return;
    }

    v7 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_10003EA40(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  v4 = *(v2 + 32);
  return a1 + v3;
}

uint64_t sub_10003EA5C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
}

uint64_t sub_10003EA7C()
{
  *(v2 + v3) = v1;
  v6 = v5;
  v7 = *(v0 + 128);
  v8 = *(v6 + 8);
  return v4;
}

uint64_t sub_10003EB64(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10002741C(v2, v3, va);
}

id sub_10003EBA8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

_OWORD *sub_10003EBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003EC70()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003ECC4(uint64_t result)
{
  v1 = (result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  if (*(result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8))
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10057D690;
    v3 = *v1;
    v4 = v1[1];

    v5 = sub_10001E478(v3, v4);
    v7 = v6;

    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100009D88();
    *(v2 + 32) = v5;
    *(v2 + 40) = v7;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v8 = v1[1];
    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_10003EE24(uint64_t a1)
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
  v18[1] = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10002DA5C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D720;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v19);
}

uint64_t sub_10003F0C8()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003F100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F124(void (*a1)(void))
{
  a1(*(v1 + 24));
  v3 = sub_1000081EC();

  return _swift_deallocObject(v3, v4, v5);
}

id sub_10003F2C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [CSDAudioSessionProvider getAudioSessionFor:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10003F374(void *a1)
{
  v2 = [a1 audioInterruptionProviderType];
  if (v2 == 1)
  {
    type metadata accessor for AVAudioSessionProvider();
    swift_initStackObject();
    result = sub_10003B7A8(a1);
    if (result)
    {
      return result;
    }

    sub_1003C53C0();
    swift_allocError();
    v5 = 1;
  }

  else
  {
    if (v2 == 2)
    {
      type metadata accessor for CSDAVAudioClient();
      return swift_allocObject();
    }

    sub_1003C53C0();
    swift_allocError();
    v5 = 0;
  }

  *v4 = v5;
  return swift_willThrow();
}

id sub_10003F668(char a1)
{
  v4 = 0;
  if ([v1 muteSessionInput:a1 & 1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10003F714(uint64_t a1, char a2, char a3, void *a4)
{
  *(a1 + qword_1006A4D80) = a2;
  *(a1 + qword_1006A4D78) = a3;
  v6 = qword_1006A4D70;
  v7 = *(a1 + qword_1006A4D70);
  if (v7)
  {
    if (a4)
    {
      sub_100006AF0(0, &unk_1006A4E30, off_100616638);
      v8 = v7;
      v9 = a4;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        return sub_100019E3C();
      }
    }
  }

  else if (!a4)
  {
    return sub_100019E3C();
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  v12 = sub_100291244(a4);
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100009D88();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v15 = *(a1 + v6);
  *(a1 + v6) = a4;
  v16 = a4;

  return sub_100019E3C();
}

void sub_10003F8DC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
  *(a1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = 0;
}

void sub_10003F8F8(uint64_t a1)
{
  sub_100027EF4(a1);
  if (v2)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v4 = sub_10001AC80();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  sub_1000153A8();
  v9 = v8 & v7;
  sub_1004582A8();
  v10 = (v4 + 8);

  v11 = 0;
  if (!v9)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v9)));
    v14 = (*(v1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(v1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v53 = *v14;
    *(&v53 + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v19 = sub_1000053D0();
    v20 = sub_10003EBF0(v19, v52);
    sub_100006C58(v20, v21, v22, v23, v24, v25, v26, v27, v18, v17, v38, v40, v41, v43, v44, v46, v47, v48, v49, v50, v51);
    sub_10003EBF0(v52, &v53);
    AnyHashable._rawHashValue(seed:)(v4[5]);
    v28 = *(v4 + 32);
    sub_10000EAC4();
    v30 = *&v10[8 * v29];
    sub_10004A064();
    if (v31)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v31)
        {
          if (v33)
          {
            goto LABEL_23;
          }
        }

        if (v32 == v34)
        {
          v32 = 0;
        }

        if (*&v10[8 * v32] != -1)
        {
          sub_10000A950();
          goto LABEL_19;
        }
      }
    }

    sub_10000FE84();
LABEL_19:
    v9 &= v9 - 1;
    sub_100007DC0();
    sub_100008C78(v35, v36, v37, v39, v42, v45);
  }

  while (v9);
LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v3)
    {

      return;
    }

    v9 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_10003FAEC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id sub_10003FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1002CF320(a1, a2, a3, a4, 0);
}

uint64_t sub_10003FB38@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v1 + a1 + 8);
  v6 = (v2 + a1);
  v7 = v6[1];
  *v6 = v4;
  v6[1] = v5;
}

id sub_10003FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a3)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v3 initWithSessionInfo:v5.super.isa userInfo:v6.super.isa frameworksToCheck:v7.super.isa];

  return v8;
}

uint64_t sub_10003FCD0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for UUID();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v58 = &v57 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v24 = v25;
  (*(v20 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v19);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v24, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = &type metadata for Int;
  *&v62 = 2;
  sub_10003EBF0(&v62, v61);
  swift_isUniquelyReferenced_nonNull_native();
  v60 = &_swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v60;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = &type metadata for Int;
  *&v62 = 1;
  sub_10003EBF0(&v62, v61);
  swift_isUniquelyReferenced_nonNull_native();
  v60 = v28;
  sub_100040430();

  v29 = v60;
  v30 = objc_allocWithZone(type metadata accessor for RTCCSDCallInfo());
  v31 = a2;
  v32 = a1;
  sub_100040584(v32, a2);
  v34 = v33;
  v35 = [*(v3 + OBJC_IVAR___CSDRTCReporter_appleIDUtilities) isSignedIntoiCloud];
  v34[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud] = v35;
  v36 = [v32 callUUID];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
  swift_beginAccess();
  v39 = *(v3 + v38);
  v40 = sub_100005E74(v37);
  swift_endAccess();

  v41 = *&v34[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges];
  *&v34[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges] = v40;

  v42 = sub_100053730(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo);
  if (!v42)
  {

    return v29;
  }

  v43 = v42;
  v44 = [v32 provider];
  v45 = [v44 isTelephonyProvider];

  if (v45)
  {
    v46 = 0xD000000000000021;
    v47 = 0x8000000100565520;
    goto LABEL_18;
  }

  if (![v32 isConversation])
  {
    v47 = 0x8000000100565B30;
    v46 = 0xD000000000000024;
    goto LABEL_18;
  }

  v48 = [v32 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationGroupUUID;
  swift_beginAccess();
  sub_1002CB574(v16, *(v3 + v49));
  if (sub_100015468(v10, 1, v11) == 1)
  {
    v46 = 0x6E6F6973736573;
    sub_1000099A4(v10, &unk_1006A3DD0, &unk_10057C9D0);
    swift_endAccess();
    (*(v59 + 8))(v16, v11);
  }

  else
  {
    v51 = v58;
    v50 = v59;
    (*(v59 + 32))(v58, v10, v11);
    swift_endAccess();
    v52 = *(v50 + 8);
    v52(v16, v11);
    v53 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v54 = sub_100025C58(v51, *(v3 + v53));
    if (v54)
    {
      v55 = v54;
      swift_endAccess();
      if (*(v55 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtStart))
      {

        v52(v51, v11);
        v47 = 0xE600000000000000;
        v46 = 0x7961776F7774;
        goto LABEL_18;
      }

      v46 = 0x6E6F6973736573;
      v52(v51, v11);
    }

    else
    {
      v46 = 0x6E6F6973736573;
      swift_endAccess();
      v52(v51, v11);
    }
  }

  v47 = 0xE700000000000000;
LABEL_18:
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = &type metadata for String;
  *&v62 = v46;
  *(&v62 + 1) = v47;
  sub_10003EBF0(&v62, v61);
  swift_isUniquelyReferenced_nonNull_native();
  v60 = v43;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v56 = v60;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v62 = v56;
    sub_10003EBF0(&v62, v61);
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v29;
    sub_100040430();

    return v60;
  }

LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_100040430()
{
  sub_10003D4BC();
  sub_10000FE04(v1, v2);
  v3 = sub_100005208();
  sub_100008598(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
  v10 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_10003EB8C();
    sub_100005208();
    sub_10000C758();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v9)
  {
    sub_100009B7C((*(*v0 + 56) + 32 * v8));
    sub_100006B30();
    sub_100035CE8();

    return sub_10003EBF0(v14, v15);
  }

  else
  {
    sub_10037B364();
    sub_100049718(v18, v19, v20, v21, v22);
    sub_100035CE8();
  }
}

uint64_t type metadata accessor for RTCCSDCallInfo()
{
  result = qword_1006A6CD8;
  if (!qword_1006A6CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040584(void *a1, void *a2)
{
  v3 = v2;
  v270 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  sub_100007BAC();
  v11 = v9 - v10;
  __chkstk_darwin(v12, v13);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v14, v15);
  v267 = &v238 - v16;
  v17 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  sub_100007BAC();
  sub_10000A5F0();
  __chkstk_darwin(v20, v21);
  v256 = &v238 - v22;
  v255 = type metadata accessor for UUID();
  v23 = sub_100007FEC(v255);
  v241 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23, v27);
  v240 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v30 = sub_100007FEC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30, v35);
  sub_100007BAC();
  sub_10000A5F0();
  __chkstk_darwin(v36, v37);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v38, v39);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v40, v41);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v42, v43);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v44, v45);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v46, v47);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v48, v49);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v50, v51);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v52, v53);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v54, v55);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v56, v57);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v58, v59);
  v61 = &v238 - v60;
  v62 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeStart];
  *v62 = 0;
  v242 = v62;
  v62[8] = 1;
  v63 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeEnd];
  *v63 = 0;
  v243 = v63;
  v63[8] = 1;
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges] = 0;
  v64 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_CID];
  *v64 = 0;
  v64[1] = 0;
  v239 = v64;
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud] = 2;
  v65 = a1;
  v66 = [v65 callUUID];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID];
  *v70 = v67;
  v70[1] = v69;
  v71 = [v65 disconnectedReason];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endReason] = v71;
  v72 = [v65 providerErrorCode];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerErrorCode] = v72;
  v73 = [v65 providerEndedReason];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerEndedReason] = v73;
  v74 = [v65 isIncoming];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_incoming] = v74;
  v75 = [v65 isConnecting];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_connected] = v75;
  v76 = [v65 isConferenced];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_currentlyGrouped] = v76;
  v77 = [v65 isHostedOnCurrentDevice];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relay] = v77 ^ 1;
  v78 = [v65 isConversation];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isConversation] = v78;
  v79 = [v65 nearbyMode];
  sub_100008BB4(v79, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_nearbyMode);
  v80 = [v65 joinedFromLink];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_fromLink] = v80;
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_userScore] = -1;
  v81 = [v65 liveVoicemailStatus];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_liveVoicemailStatus] = v81;
  v82 = [v65 originatingUIType];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_originatingUIType] = v82;
  v83 = [v65 startAsOneToOneMode];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtStart] = v83;
  v84 = [v65 isOneToOneModeEnabled];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtEnd] = v84;
  Date.init()();
  v262 = v32;
  v85 = *(v32 + 32);
  v250 = OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase;
  v259 = v29;
  v261 = v32 + 32;
  v269 = v85;
  v85(&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase], v61, v29);
  v273 = 0;
  v274 = 0;
  v86 = [v65 callCenter];
  v268 = ObjectType;
  v265 = v11;
  if (v86)
  {
    v87 = v86;
    v88 = [v86 queue];
    v89 = swift_allocObject();
    *(v89 + 16) = &v273;
    *(v89 + 24) = v87;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_100053068;
    *(v90 + 24) = v89;
    v266 = v89;
    aBlock[4] = sub_1000200A4;
    aBlock[5] = v90;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002007C;
    aBlock[3] = &unk_10062A3E8;
    v91 = _Block_copy(aBlock);
    v92 = v87;

    dispatch_sync(v88, v91);

    _Block_release(v91);
    LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

    if (v92)
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v93 = v273;
    v86 = v274;
    v264 = sub_100053068;
  }

  else
  {
    v93 = 0;
    v264 = 0;
    v266 = 0;
  }

  v94 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_audioRoute];
  *v94 = v93;
  v94[1] = v86;

  v95 = [v65 provider];
  v96 = [v95 isTelephonyProvider];

  if (v96)
  {
    sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs);
    *(v97 + 8) = 1;
    sub_10000FA84(*(v98 + 3112));
    *(v99 + 8) = v100;
    sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs);
    *(v101 + 8) = v102;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_startAsHandoff] = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endDueToHandoff] = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_remoteDoesHandoff] = 0;
    sub_100017D94();
    v104 = v103;
    sub_100017D94();
    if (v104 > 10.0)
    {
      if (v105 <= 30.0)
      {
        sub_100015ACC();
        v111 = 30;
      }

      else
      {
        sub_100017D94();
        if (v106 <= 60.0)
        {
          sub_100015ACC();
          v111 = 60;
        }

        else
        {
          sub_100017D94();
          if (v107 <= 300.0)
          {
            sub_100015ACC();
            v111 = 300;
          }

          else
          {
            sub_100017D94();
            if (v108 <= 1800.0)
            {
              sub_100015ACC();
              v111 = 1800;
            }

            else
            {
              sub_100017D94();
              sub_100015ACC();
              if (v110 <= 3600.0)
              {
                v111 = 3600;
              }

              else
              {
                v111 = 10000;
              }
            }
          }
        }
      }

      *v109 = v111;
      *(v109 + 8) = 0;
      goto LABEL_62;
    }

    sub_100017248();
    if (!(v114 ^ v115 | v230))
    {
      goto LABEL_96;
    }

    if (v131 <= -9.22337204e18)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    sub_100015FEC();
    if (!v114)
    {
      goto LABEL_98;
    }

    v133 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration];
    *v133 = v132;
    v133[8] = 0;
    goto LABEL_62;
  }

  sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration);
  *(v112 + 8) = 1;
  sub_100017D94();
  sub_100017248();
  if (!(v114 ^ v115 | v230))
  {
    goto LABEL_90;
  }

  if (v113 <= -9.22337204e18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_100015FEC();
  if (!v114)
  {
    goto LABEL_92;
  }

  v117 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs];
  *v117 = v116;
  v117[8] = 0;
  v118 = [v65 startAsHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_startAsHandoff] = v118;
  v119 = [v65 endDueToHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endDueToHandoff] = v119;
  v120 = [v65 remoteDoesHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_remoteDoesHandoff] = v120;
  v121 = [v65 dateSentInvitation];
  if (v121)
  {
    v122 = v253;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v123 = v259;
    v124 = v269;
    v269(v254, v122, v259);
    v125 = [v65 dateCreated];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v126 = *(v262 + 8);
    v126(v61, v123);
    v127 = sub_10001AC14();
    (v126)(v127);
    sub_100017248();
    if (!(v114 ^ v115 | v230))
    {
      goto LABEL_93;
    }

    if (v128 <= -9.22337204e18)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_100015FEC();
    if (!v114)
    {
      goto LABEL_95;
    }

    v130 = v129;
  }

  else
  {
    v130 = 0;
    v123 = v259;
    v124 = v269;
  }

  v134 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs];
  *v134 = v130;
  v134[8] = v121 == 0;
  v135 = [v65 dateConnected];
  v136 = v262;
  v137 = v257;
  if (v135)
  {
    v138 = v135;
    v139 = v252;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v124(v137, v139, v123);
    v140 = [v65 dateStartedConnecting];
    v141 = v263;
    v142 = v258;
    if (v140)
    {
      v143 = v140;
      v144 = v248;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = v249;
      v269(v249, v144, v123);
      v124 = v269;
      Date.timeIntervalSince(_:)();
      v146 = *(v136 + 8);
      v146(v145, v123);
      v147 = sub_10001AC14();
      (v146)(v147);
      sub_100017248();
      if (!(v114 ^ v115 | v230))
      {
        goto LABEL_99;
      }

      if (v148 <= -9.22337204e18)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        return;
      }

      sub_100015FEC();
      v141 = v263;
      if (!v114)
      {
        goto LABEL_101;
      }

      v151 = 0;
      v152 = v150;
      goto LABEL_44;
    }

    v153 = sub_100018F90();
    v154(v153);
    v152 = 0;
    v151 = 1;
  }

  else
  {
    v152 = 0;
    v151 = 1;
    v141 = v263;
    v142 = v258;
  }

  v149 = &unk_1006A6000;
LABEL_44:
  v155 = &v3[v149[389]];
  *v155 = v152;
  v155[8] = v151;
  if (v270)
  {
    v156 = [v270 timebase];
    v157 = v251;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v124(v142, v157, v123);
    v158 = v250;
    swift_beginAccess();
    (*(v136 + 24))(&v3[v158], v142, v123);
    swift_endAccess();
    v159 = [v65 dateConnected];
    if (v159)
    {
      v160 = v159;
      v161 = v244;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v162 = v161;
      v124 = v269;
      v269(v245, v162, v123);
      Date.timeIntervalSince(_:)();
      v164 = v163;
      v165 = sub_100018F90();
      v166(v165);
      v167 = v242;
      *v242 = v164;
      *(v167 + 8) = 0;
    }

    v168 = [v65 dateEnded];
    if (v168)
    {
      v169 = v168;
      v170 = v124;
      v171 = v246;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v172 = v247;
      v170(v247, v171, v123);
      v141 = v263;
      Date.timeIntervalSince(_:)();
      v174 = v173;
      v175 = *(v136 + 8);
      v175(v172, v123);
      v175(v142, v123);
      v176 = v243;
      *v243 = v174;
      *(v176 + 8) = 0;
    }

    else
    {
      (*(v136 + 8))(v142, v123);
    }

    v177 = v256;
    v178 = v255;
    v179 = [v270 conversationID];
    if (v179)
    {
      v180 = v179;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v181 = 0;
    }

    else
    {
      v181 = 1;
    }

    sub_10000AF74(v141, v181, 1, v178);
    sub_100372140(v141, v177, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v177, 1, v178) != 1)
    {
      v182 = v241;
      v183 = v240;
      (*(v241 + 32))(v240, v177, v178);
      v184 = UUID.uuidString.getter();
      v186 = v185;
      (*(v182 + 8))(v183, v178);
      v187 = v239;
      v188 = v239[1];
      *v239 = v184;
      v187[1] = v186;

      goto LABEL_62;
    }
  }

  else
  {
    v177 = v256;
    sub_10000AF74(v256, 1, 1, v255);
  }

  sub_100009A04(v177, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_62:
  v189 = [v65 filteredOutReason];
  v190 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason];
  *v190 = v189;
  v190[4] = 0;
  v191 = [v65 verificationStatus];
  sub_100008BB4(v191, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_verficationStatus);
  v192 = [objc_opt_self() tu_defaults];
  v193 = [v192 silenceUnknownCallersEnabled];

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_knownCallerStatus] = v193;
  v194 = [v65 silencingUserInfo];
  sub_1000496D4();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v195, v196);
  sub_100006064();

  if (v194)
  {
    sub_100022D0C();
  }

  v197 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_returnedCall);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v198, v199);
  sub_100006064();

  if (v197)
  {
    sub_100022D0C();
  }

  v200 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSiriSuggested);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v201, v202);
  sub_100006064();

  if (v200)
  {
    sub_100022D0C();
  }

  v203 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownContact);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v204, v205);
  sub_100006064();

  if (v203)
  {
    sub_100022D0C();
  }

  v206 = v265;
  v207 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isOwnNumber);
  v208 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = sub_100023E48(v209, v210, v208);

  if (v211)
  {
    v212 = [v211 BOOLValue];
  }

  else
  {
    v212 = 2;
  }

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isVerifiedAppleCare] = v212;
  v213 = [v65 junkConfidence];
  sub_100008BB4(v213, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_junkConfidence);
  v214 = [v65 identificationCategory];
  sub_100008BB4(v214, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_identificationCategory);
  v215 = [v65 isKnownCaller];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownCaller] = v215;
  v216 = [v65 imageURL];
  if (v216)
  {
    v217 = v216;
    v218 = v267;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v219 = type metadata accessor for URL();
    v220 = 1;
    sub_10000AF74(v218, 0, 1, v219);
    sub_100009A04(v218, &unk_1006A52C0, &unk_10057D930);
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCall] = 1;
    v221 = [v65 imageURL];
    if (v221)
    {
      v222 = v221;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v220 = 0;
    }

    sub_10000AF74(v206, v220, 1, v219);
    v223 = v260;
    sub_100372140(v206, v260, &unk_1006A52C0, &unk_10057D930);
    if (sub_100015468(v223, 1, v219) == 1)
    {
      sub_100009A04(v223, &unk_1006A52C0, &unk_10057D930);
      v224 = 0;
    }

    else
    {
      v227 = URL.relativePath.getter();
      v229 = v228;
      (*(*(v219 - 8) + 8))(v223, v219);
      v230 = v227 == 0x6B636F74732FLL && v229 == 0xE600000000000000;
      if (v230)
      {

        v224 = 1;
      }

      else
      {
        v224 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  else
  {
    v225 = type metadata accessor for URL();
    v226 = v267;
    sub_10000AF74(v267, 1, 1, v225);
    sub_100009A04(v226, &unk_1006A52C0, &unk_10057D930);
    v224 = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCall] = 0;
  }

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCallWithImage] = v224 & 1;
  v231 = [v65 wasScreened];
  v232 = v268;
  if (v231)
  {
    v233 = [v65 isScreening] ^ 1;
  }

  else
  {
    LOBYTE(v233) = 0;
  }

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedThenAnswered] = v233;
  v234 = [v65 isScreening];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedUnanswered] = v234;
  v235 = [v65 commTrustScore];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_commTrustScore] = v235;
  v236 = [v65 receptionistState];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_receptionistState] = v236;
  v237 = [v65 specialUnknown];

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_specialUnknown] = v237;
  v272.receiver = v3;
  v272.super_class = v232;
  objc_msgSendSuper2(&v272, "init");

  sub_1000051F8(v264);
}

uint64_t sub_100041BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100041FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041FD0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasInEarRouteInTipiWithCompanionWatch])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void *sub_100042148@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_100042B1C(a1);
  if (v8)
  {
    v68 = a4;
    v9 = v8;
    v10 = a1;
    LOBYTE(v158[0]) = 0;
    v61 = v9;
    sub_100042D2C(v9, [v10 callSubType], a3, v135);
    v157 = v142;
    v156[0] = v139[0];
    *(v156 + 10) = *(v139 + 10);
    v155 = v138;
    v132 = v136;
    v133 = v137;
    v131 = v141;
    v130 = v140;
    v86 = v143;
    v87 = v144;
    v129 = v145;
    v128[0] = *v146;
    *(v128 + 3) = *&v146[3];
    v11 = v147;
    v85 = v148;
    v70 = v149;
    v12 = v150;
    v127[0] = *v151;
    *(v127 + 3) = *&v151[3];
    v69 = v152;
    v13 = v153;
    v14 = *&v154[5];
    *(v126 + 5) = *&v154[5];
    v126[0] = *v154;
    v15 = a3;
    swift_unknownObjectRetain();
    v16 = sub_100042BF0(v10);
    v134 = BYTE5(v16) & 1;
    v64 = sub_100042D9C(v10);
    sub_100009A04(&v155, &qword_1006A9E80, &unk_10057EFE8);
    v17 = v10;
    v72 = sub_100327704(v17);
    v84 = v18;
    v63 = v19;
    v60 = v20;
    sub_100009A04(v156, &qword_1006A9E88, &qword_100585F30);
    v83 = [v17 wantsHoldMusic];
    LOBYTE(v158[0]) = BYTE5(v16) & 1;
    v65 = v16;
    v21 = sub_100042ED4(v17, v16 & 0xFFFFFFFFFFLL | (((v16 >> 40) & 1) << 40));
    v82 = [v17 audioInterruptionOperationMode];
    if (sub_10002E930())
    {
      v80 = 0;
      v81 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = v17;
      v81 = &off_10062EEA8;
    }

    sub_100009A04(&v157, &unk_1006A61C0, &unk_100581180);
    if ([v15 sharePlayInCallsEnabled])
    {
      v79 = [v17 isSharePlayCapable];
    }

    else
    {
      v79 = 0;
    }

    v78 = [v17 mixesVoiceWithMedia];
    if ([v15 expanseBTSwitchingEnabled])
    {
      v22 = [v17 bluetoothAudioFormat];

      v77 = v22 == 1;
    }

    else
    {

      v77 = 0;
    }

    v76 = [v17 isConversation];
    v75 = [v17 mediaPlaybackOnExternalDevice];
    v74 = [v17 prefersToPlayDuringWombat];
    v23 = [v14 sessionBasedMutingEnabled];
    swift_unknownObjectRelease();
    if (v23)
    {
      v69 = [v17 isUplinkMuted];
      v13 = [v17 audioResolverShouldIgnoreUplinkMuted];
    }

    if (a2)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_10002E930() ^ 1;
    }

    v25 = [v17 screenShareAttributes];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 isWindowed];

      if ((v27 & 1) == 0)
      {
        if ([v17 isSharingScreen])
        {
          v12 = 0;
        }
      }
    }

    v66 = v13;
    v28 = [v17 provider];
    v29 = [v28 isSystemProvider];

    v67 = v12;
    if (v29)
    {
      BSAuditTokenForCurrentProcess();
      v86 = v158[0];
      v87 = v158[1];
      v129 = 0;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        v32 = v17;
        v33 = [v31 localProvider];
        if (v33 && (v34 = v33, v35 = [v33 bundleIdentifier], v34, v35))
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v85 = v38;
        }

        else
        {

          v36 = 0;
          v85 = 0;
        }
      }

      else
      {
        v36 = sub_100021AEC([v17 provider]);
        v40 = v39;

        v85 = v40;
      }
    }

    else
    {
      v36 = v11;
    }

    v71 = v72 & 0xFFFFFFFF00000001;
    v41 = v21 & 1;
    v73 = v24 & 1;
    v42 = [v17 provider];
    v43 = [v42 isFaceTimeProvider];

    if ((v43 & 1) != 0 || (v44 = [v17 provider], v45 = objc_msgSend(v44, "isTelephonyProvider"), v44, v45))
    {
      v70 = 1;
    }

    v46 = [v17 provider];

    v47 = [v46 isFaceTimeProvider];
    if (v47 && ([v17 isConversation] & 1) != 0 && (v48 = objc_msgSend(objc_opt_self(), "sharedInstance"), v49 = objc_msgSend(v48, "activeConversationForCall:", v17), v48, v49))
    {
      v50 = [v49 provider];
      v51 = [v50 isDefaultProvider];

      if ((v51 & 1) == 0)
      {
        sub_1003E09D0([v49 provider], &selRef_bundleIdentifier);
        if (v52)
        {

          v53 = [v49 provider];
          v54 = [v53 bundleIdentifier];

          v55 = v69;
          if (v54)
          {
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            v85 = v57;
          }

          else
          {

            v36 = 0;
            v85 = 0;
          }

          goto LABEL_41;
        }
      }

      v55 = v69;
    }

    else
    {
      v55 = v69;
    }

LABEL_41:
    BYTE4(__src[0]) = BYTE4(v65);
    LODWORD(__src[0]) = v65;
    v62 = v134;
    BYTE5(__src[0]) = v134;
    *(__src + 6) = v132;
    HIWORD(__src[1]) = v133;
    __src[2] = v64;
    __src[3] = v71;
    __src[4] = v84;
    __src[5] = v63;
    LOWORD(__src[6]) = v60 & 0x101;
    BYTE2(__src[6]) = v41;
    BYTE3(__src[6]) = v73;
    BYTE4(__src[6]) = v83;
    BYTE5(__src[6]) = v75;
    BYTE6(__src[6]) = v79;
    HIBYTE(__src[6]) = v78;
    LOBYTE(__src[7]) = v76;
    BYTE1(__src[7]) = v74;
    BYTE2(__src[7]) = v77;
    *(&__src[7] + 3) = v130;
    HIBYTE(__src[7]) = v131;
    __src[8] = v82;
    __src[9] = v80;
    __src[10] = v81;
    *&__src[11] = v86;
    *&__src[13] = v87;
    v59 = v129;
    LOBYTE(__src[15]) = v129;
    *(&__src[15] + 1) = v128[0];
    HIDWORD(__src[15]) = *(v128 + 3);
    __src[16] = v36;
    __src[17] = v85;
    LOBYTE(__src[18]) = v70;
    BYTE1(__src[18]) = v67;
    *(&__src[18] + 5) = *(v127 + 3);
    *(&__src[18] + 2) = v127[0];
    BYTE1(__src[19]) = v55;
    BYTE2(__src[19]) = v66;
    __src[20] = *(v126 + 5);
    *(&__src[19] + 3) = v126[0];
    memcpy(__dst, __src, sizeof(__dst));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    v91 = BYTE4(v65);
    v90 = v65;
    v92 = v62;
    v93 = v132;
    v94 = v133;
    v95 = v64;
    v96 = v71;
    v97 = v84;
    v98 = v63;
    v99 = v60 & 0x101;
    v100 = v41;
    v101 = v73;
    v102 = v83;
    v103 = v75;
    v104 = v79;
    v105 = v78;
    v106 = v76;
    v107 = v74;
    v108 = v77;
    v110 = v131;
    v109 = v130;
    v111 = v82;
    v112 = v80;
    v113 = v81;
    v114 = v86;
    v115 = v87;
    v116 = v59;
    *&v117[3] = *(v128 + 3);
    *v117 = v128[0];
    v118 = v36;
    v119 = v85;
    v120 = v70;
    v121 = v67;
    *v122 = v127[0];
    *&v122[3] = *(v127 + 3);
    v123 = v55;
    v124 = v66;
    *v125 = v126[0];
    *&v125[5] = *(v126 + 5);
    sub_100042F60(__src, v158);
    sub_100042FC0(&v90);
    memcpy(v158, __dst, 0xA8uLL);
    a4 = v68;
    return memcpy(a4, v158, 0xA8uLL);
  }

  sub_1002BA0C4(v158);
  return memcpy(a4, v158, 0xA8uLL);
}

NSString sub_100042B1C(void *a1)
{
  if (sub_10002E930())
  {
    v2 = &AVAudioSessionCategoryRingtone;
  }

  else if ([a1 audioInterruptionProviderType] == 1 && objc_msgSend(a1, "isTTY"))
  {
    v2 = &AVAudioSessionCategoryTTYCall;
  }

  else
  {
    sub_100042BE4(a1);
    if (v5)
    {
      v3 = String._bridgeToObjectiveC()();

      return v3;
    }

    if ([a1 audioInterruptionProviderType] != 1)
    {
      return 0;
    }

    v2 = &AVAudioSessionCategoryPhoneCall;
  }

  v3 = *v2;
  v4 = *v2;
  return v3;
}

uint64_t sub_100042BF0(void *a1)
{
  if (sub_10002E930())
  {
LABEL_2:
    v2 = 0;
    v3 = &_mh_execute_header;
    return v3 | (v2 << 40);
  }

  v4 = [a1 audioInterruptionProviderType];
  if (v4 == 2)
  {
    v3 = 0;
    v2 = 1;
    return v3 | (v2 << 40);
  }

  if (v4 == 1)
  {
    v6 = [a1 provider];
    v7 = [v6 isTelephonyProvider];

    if ((v7 & 1) == 0)
    {
      v8 = [a1 provider];
      v9 = [v8 isSuperboxProvider];

      if ((v9 & 1) == 0)
      {
        v10 = [a1 provider];
        v11 = [v10 audioSessionID];

        v2 = 0;
        v3 = v11;
        return v3 | (v2 << 40);
      }
    }

    goto LABEL_2;
  }

  type metadata accessor for CSDAudioInterruptionProviderType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

double sub_100042D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 57) = 1;
  result = 0.0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 256;
  *(a4 + 148) = a2;
  *(a4 + 152) = BYTE4(a2) & 1;
  *(a4 + 153) = 0;
  *(a4 + 160) = a3;
  return result;
}

id sub_100042D9C(void *a1)
{
  if (sub_10002E930())
  {
    v2 = &AVAudioSessionModeDefault;
LABEL_3:
    v3 = *v2;
    v4 = *v2;
    return v3;
  }

  if ([a1 wantsHoldMusic] && objc_msgSend(a1, "audioInterruptionProviderType") == 1)
  {
    v2 = &AVAudioSessionModeLocatePhone;
    goto LABEL_3;
  }

  sub_100042E3C(a1);
  if (!v5)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_100042E80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 26))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100042ED4(void *a1, uint64_t a2)
{
  if ((a2 & 0x10100000000) != 0)
  {
    return 1;
  }

  else
  {
    return [a1 isOnHold] ^ 1;
  }
}

uint64_t sub_100043014(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for AudioInterruptionDeferredEndDescriptor()
{
  result = qword_1006AB840;
  if (!qword_1006AB840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004308C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_1000430EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
    v8 = v5 + *(a4 + 20);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RingtoneDescriptor()
{
  result = qword_1006A97B0;
  if (!qword_1006A97B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000431D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
    v8 = v5 + *(a4 + 32);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CallTranslationDisclosureDescriptor()
{
  result = qword_1006ABDB0;
  if (!qword_1006ABDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000432B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007674(a1, a2, a3, a4);
  sub_100008070(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_100043300@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&qword_1006A3DB8, &qword_10057EBF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v190 - v10;
  v12 = type metadata accessor for SoundDescriptorAction();
  v13 = sub_100008070(v12);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v194 = v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v22 = v190 - v21;
  v24 = __chkstk_darwin(v20, v23);
  v195 = v190 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v29 = v190 - v28;
  __chkstk_darwin(v27, v30);
  v32 = v190 - v31;
  if (([a1 isEndpointOnCurrentDevice] & 1) != 0 || (a2 & 0x20) != 0)
  {
    v192 = a3;
    v193 = v12;
    v35 = [a1 provider];
    v36 = [v35 supportsCurrentPlatform];

    if (!v36)
    {
      v33 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
      v34 = v192;
      goto LABEL_17;
    }

    v37 = swift_allocBox();
    v39 = v38;
    v40 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    v196 = v39;
    v197 = v40;
    sub_10000AF74(v39, 1, 2, v40);
    if ((a2 & 0x20) != 0 && ([a1 isEndpointOnCurrentDevice] & 1) == 0)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v32, v41);
    }

    if ((a2 & 0x200) != 0 && ([a1 needsManualInCallSounds] & 1) == 0)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v32, v42);
    }

    if (a2)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v32, v43);
    }

    v190[2] = v37;
    v44 = sub_10000B6FC();
    v45 = swift_allocObject();
    *(v45 + 16) = a1;
    sub_100007C2C();
    v46 = swift_allocObject();
    v46[2] = sub_1002DD308;
    v46[3] = v45;
    v190[1] = v45;
    aBlock[4] = sub_10002E4B4;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E470;
    aBlock[3] = &unk_1006250F0;
    v47 = _Block_copy(aBlock);
    v198 = a1;

    v48 = [v44 anyCallPassesTest:v47];
    swift_unknownObjectRelease();
    _Block_release(v47);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      __break(1u);
    }

    else
    {
      if (v48)
      {
        v46 = _swiftEmptyArrayStorage;
        v50 = v193;
        v47 = v194;
        goto LABEL_22;
      }

      sub_100007C2C();
      v48 = swift_allocObject();
      sub_100015F38(v48);
      sub_10004436C(0, 1, 1, _swiftEmptyArrayStorage);
      v55 = *(v52 + 16);
      v49 = *(v52 + 24);
      v56 = v52;
      v46 = (v55 + 1);
      v47 = v194;
      if (v55 < v49 >> 1)
      {
LABEL_21:
        v50 = v193;
        sub_100010244(v52, v53, v54, v56);
        *(v57 + 32) = sub_1000445D8;
        *(v57 + 40) = v48;
LABEL_22:
        v58 = v198;
        v194 = [*(v3 + 16) activeConversationForCall:v198];
        if (sub_1000444E4(v58))
        {
          sub_100007C2C();
          v59 = swift_allocObject();
          sub_100015F38(v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = v46[2];
            v132 = sub_10000A698();
            sub_10004436C(v132, v133, v134, v46);
            v46 = v135;
          }

          v61 = v46[2];
          v60 = v46[3];
          v191 = v46;
          if (v61 >= v60 >> 1)
          {
            v136 = sub_10000A064(v60);
            sub_10004436C(v136, v137, v138, v191);
            v191 = v139;
          }

          v62 = v191;
          v191[2] = v61 + 1;
          v63 = v62 + 16 * v61;
          *(v63 + 32) = sub_100044B48;
          *(v63 + 40) = v59;
          sub_100007C2C();
          v64 = swift_allocObject();
          *(v64 + 16) = sub_100045820;
          *(v64 + 24) = v3;
          v65 = *(v62 + 16);
          v50 = *(v62 + 24);
          v46 = (v65 + 1);

          if (v65 >= v50 >> 1)
          {
            sub_1000112DC();
            v191 = v140;
          }

          sub_10000FD6C();
          *(v66 + 32) = sub_100044B48;
          *(v66 + 40) = v64;
          if (([v198 isVideo] & 1) == 0)
          {
            sub_100007C2C();
            v67 = swift_allocObject();
            *(v67 + 16) = sub_100045A38;
            *(v67 + 24) = v3;
            v68 = *(v65 + 17);
            v50 = v46[3];
            v46 = (v68 + 1);

            if (v68 >= v50 >> 1)
            {
              sub_1000112DC();
              v191 = v183;
            }

            sub_10000FD6C();
            *(v69 + 32) = sub_100044B48;
            *(v69 + 40) = v67;
          }
        }

        if ((a2 & 0x10000) != 0)
        {
          sub_100007C2C();
          v70 = swift_allocObject();
          sub_100015F38(v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = v46[2];
            v142 = sub_10000A698();
            sub_10004436C(v142, v143, v144, v46);
            v46 = v145;
          }

          sub_10000F55C();
          if (v76)
          {
            v146 = sub_10000A064(v75);
            sub_10004436C(v146, v147, v148, v149);
            v74 = v71;
          }

          sub_100010244(v71, v72, v73, v74);
          *(v77 + 32) = sub_100044B48;
          *(v77 + 40) = v70;
        }

        if ((a2 & 0x40000) != 0)
        {
          sub_100007C2C();
          v78 = swift_allocObject();
          sub_100015F38(v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = v46[2];
            v151 = sub_10000A698();
            sub_10004436C(v151, v152, v153, v46);
            v46 = v154;
          }

          sub_10000F55C();
          if (v76)
          {
            v155 = sub_10000A064(v83);
            sub_10004436C(v155, v156, v157, v158);
            v82 = v79;
          }

          sub_100010244(v79, v80, v81, v82);
          *(v84 + 32) = sub_100044B48;
          *(v84 + 40) = v78;
        }

        if (v194 && (a2 & 0x80000) != 0)
        {
          v85 = v194;
          if (![v85 ignoreLMIRequests])
          {
            sub_100007C2C();
            v87 = swift_allocObject();
            *(v87 + 16) = sub_1002DD338;
            *(v87 + 24) = v3;
            v191 = v87;

            v88 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v184 = v46[2];
              v185 = sub_10000A698();
              sub_10004436C(v185, v186, v187, v46);
              v88 = v188;
            }

            v90 = *(v88 + 16);
            v89 = *(v88 + 24);
            if (v90 >= v89 >> 1)
            {
              sub_10004436C(v89 > 1, v90 + 1, 1, v88);
              v88 = v189;
            }

            *(v88 + 16) = v90 + 1;
            v91 = v88 + 16 * v90;
            v92 = v191;
            *(v91 + 32) = sub_100044B48;
            *(v91 + 40) = v92;
            v46 = v88;
            v50 = v193;
            if ((a2 & 0x100000) == 0)
            {
LABEL_50:
              if ((a2 & 0x200000) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_64;
            }

LABEL_59:
            sub_100007C2C();
            v93 = swift_allocObject();
            sub_100015F38(v93);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = v46[2];
              v160 = sub_10000A698();
              sub_10004436C(v160, v161, v162, v46);
              v46 = v163;
            }

            sub_10000F55C();
            if (v76)
            {
              v164 = sub_10000A064(v98);
              sub_10004436C(v164, v165, v166, v167);
              v97 = v94;
            }

            sub_100010244(v94, v95, v96, v97);
            *(v99 + 32) = sub_100044B48;
            *(v99 + 40) = v93;
            if ((a2 & 0x200000) == 0)
            {
LABEL_51:
              if ((a2 & 0x400000) == 0)
              {
                goto LABEL_52;
              }

              goto LABEL_69;
            }

LABEL_64:
            sub_100007C2C();
            v100 = swift_allocObject();
            sub_100015F38(v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = v46[2];
              v169 = sub_10000A698();
              sub_10004436C(v169, v170, v171, v46);
              v46 = v172;
            }

            sub_10000F55C();
            if (v76)
            {
              v173 = sub_10000A064(v105);
              sub_10004436C(v173, v174, v175, v176);
              v104 = v101;
            }

            sub_100010244(v101, v102, v103, v104);
            *(v106 + 32) = sub_100044B48;
            *(v106 + 40) = v100;
            if ((a2 & 0x400000) == 0)
            {
LABEL_52:
              v86 = v46[2];
              if (!v86)
              {
LABEL_91:

                v125 = v196;
                swift_beginAccess();
                sub_10001810C();
                sub_100044148(v125, v192, v126);
              }

LABEL_74:
              swift_beginAccess();
              v191 = v46;
              v113 = v46 + 5;
              do
              {
                v115 = *(v113 - 1);
                v114 = *v113;
                v199[0] = v198;
                v200 = a2;

                v115(v199, &v200);

                if (sub_100015468(v11, 1, v50) == 1)
                {
                  sub_100044AE0(v11);
                }

                else
                {
                  sub_1000441A8(v11, v29, type metadata accessor for SoundDescriptorAction);
                  v116 = v195;
                  sub_100044148(v196, v195, type metadata accessor for SoundDescriptorAction);
                  sub_1000441A8(v116, v22, type metadata accessor for SoundDescriptorAction);
                  v117 = sub_100015468(v22, 2, v197);
                  if (v117)
                  {
                    if (v117 == 1)
                    {
                      v118 = 1;
                    }

                    else
                    {
                      v118 = 2;
                    }
                  }

                  else
                  {
                    sub_1000150E0();
                    sub_10004426C(v22, v119);
                    v118 = 3;
                  }

                  sub_10001810C();
                  sub_100044148(v29, v47, v120);
                  v121 = sub_100015468(v47, 2, v197);
                  if (v121)
                  {
                    if (v121 == 1)
                    {
                      v122 = 1;
                    }

                    else
                    {
                      v122 = 2;
                    }
                  }

                  else
                  {
                    sub_1000150E0();
                    sub_10004426C(v47, v123);
                    v122 = 3;
                  }

                  if (v118 < v122)
                  {
                    sub_100044208(v29, v196);
                  }

                  sub_1000082C8();
                  sub_10004426C(v29, v124);
                }

                v113 += 2;
                --v86;
              }

              while (v86);
              goto LABEL_91;
            }

LABEL_69:
            sub_100007C2C();
            v107 = v46;
            v108 = swift_allocObject();
            sub_100015F38(v108);
            v109 = v107;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v177 = *(v107 + 16);
              v178 = sub_10000A698();
              sub_10004436C(v178, v179, v180, v107);
              v109 = v181;
            }

            v111 = *(v109 + 16);
            v110 = *(v109 + 24);
            v86 = v111 + 1;
            if (v111 >= v110 >> 1)
            {
              sub_10004436C(v110 > 1, v111 + 1, 1, v109);
              v109 = v182;
            }

            *(v109 + 16) = v86;
            v112 = v109 + 16 * v111;
            *(v112 + 32) = sub_100044B48;
            *(v112 + 40) = v108;
            v46 = v109;
            goto LABEL_74;
          }
        }

        if ((a2 & 0x100000) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }
    }

    v127 = sub_10000A064(v49);
    sub_10004436C(v127, v128, v129, v130);
    v56 = v52;
    goto LABEL_21;
  }

  v33 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v34 = a3;
LABEL_17:

  return sub_10000AF74(v34, 1, 2, v33);
}

uint64_t sub_100043E94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043EE8()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100043F40(uint64_t a1)
{
  v2 = type metadata accessor for SoundDescriptorAction();
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v21[-v10];
  __chkstk_darwin(v9, v12);
  v14 = &v21[-v13];
  v15 = swift_projectBox();
  swift_beginAccess();
  sub_100044148(v15, v14, type metadata accessor for SoundDescriptorAction);
  sub_1000441A8(v14, v11, type metadata accessor for SoundDescriptorAction);
  v16 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v17 = sub_100015468(v11, 2, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    sub_10004426C(v11, type metadata accessor for SoundDescriptor);
    v18 = 3;
  }

  sub_100044148(a1, v7, type metadata accessor for SoundDescriptorAction);
  result = sub_100015468(v7, 2, v16);
  if (result)
  {
    if (result == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    result = sub_10004426C(v7, type metadata accessor for SoundDescriptor);
    v20 = 3;
  }

  if (v18 < v20)
  {
    swift_beginAccess();
    return sub_100044208(a1, v15);
  }

  return result;
}

uint64_t sub_100044148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000441A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100044208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004426C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100008070(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000442D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
    v9 = a1 + *(a3 + 32);

    return sub_100015468(v9, a2, v8);
  }
}

void sub_100044394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
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

    sub_10026D814(&qword_1006A4AC8, &unk_10057FB40);
    swift_arrayInitWithCopy();
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

uint64_t sub_1000444CC()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_1000444E4(void *a1)
{
  if (![a1 isConversation])
  {
    return 1;
  }

  result = [*(v1 + 16) activeConversationForCall:a1];
  if (result)
  {
    v4 = result;
    if ([result isOneToOneModeEnabled])
    {
      v5 = [v4 mergedRemoteMembers];
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      sub_1002DD344();
      v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_10001E550(v6);

      return v7 == 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000445D8(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_100044608@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ([a1 status] != 6 || (a2 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = [sub_10000B6FC() hasCurrentAudioCalls];
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_14;
  }

  if (![a1 isEndpointOnCurrentDevice])
  {
    goto LABEL_14;
  }

  [a1 callDuration];
  if (v9 <= 0.0 && ([a1 isOutgoing] & 1) == 0 && objc_msgSend(a1, "disconnectedReason") != 14)
  {
    goto LABEL_14;
  }

  if (![a1 needsManualInCallSounds])
  {
    goto LABEL_14;
  }

  v10 = [a1 disconnectedReason];
  if (v10 > 0x18)
  {
    goto LABEL_23;
  }

  if (((1 << v10) & 0x1CE4020) == 0)
  {
    if (v10 == 6)
    {
      v27 = *(v3 + 40);
      v28 = [a1 provider];
      LODWORD(v27) = TUCallHapticsEnabled();

      if (v27)
      {
        goto LABEL_14;
      }

LABEL_26:
      v17 = [a1 provider];
      v18 = [a1 isVideo];
      v19 = [a1 soundRegion];
      v20 = type metadata accessor for SoundDescriptor();
      v29 = *(v20 + 32);
      v30 = type metadata accessor for UUID();
      sub_10000AF74(a3 + v29, 1, 1, v30);
      v23 = 6;
      goto LABEL_19;
    }

    if (v10 == 15)
    {
      v17 = [a1 provider];
      v18 = [a1 isVideo];
      v19 = [a1 soundRegion];
      v20 = type metadata accessor for SoundDescriptor();
      v25 = *(v20 + 32);
      v26 = type metadata accessor for UUID();
      sub_10000AF74(a3 + v25, 1, 1, v26);
      v23 = 3;
      goto LABEL_19;
    }

LABEL_23:
    if (*(v3 + 24) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v11 = *(v3 + 40);
  v12 = [a1 provider];
  LODWORD(v11) = TUCallHapticsEnabled();

  if (v11)
  {
LABEL_14:
    v13 = type metadata accessor for SoundDescriptorAction();
    v14 = a3;
    v15 = 1;
    goto LABEL_15;
  }

  v17 = [a1 provider];
  v18 = [a1 isVideo];
  v19 = [a1 soundRegion];
  v20 = type metadata accessor for SoundDescriptor();
  v21 = *(v20 + 32);
  v22 = type metadata accessor for UUID();
  sub_10000AF74(a3 + v21, 1, 1, v22);
  v23 = 7;
LABEL_19:
  *a3 = v23;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + *(v20 + 36)) = 0;
  v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  sub_10000AF74(a3, 0, 2, v24);
  v13 = type metadata accessor for SoundDescriptorAction();
  v14 = a3;
  v15 = 0;
LABEL_15:

  return sub_10000AF74(v14, v15, 1, v13);
}

uint64_t sub_1000449AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);

  return sub_10000AF74(a1, v5, a3, v6);
}

uint64_t sub_100044A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v5 = sub_100015468(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100044AE0(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3DB8, &qword_10057EBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100044B4C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activeConversationForCall:a1];

  return v3;
}

uint64_t sub_100044BB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v10);
  v12 = &v44[-v11];
  v13 = type metadata accessor for SoundDescriptor();
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16, v19);
  v21 = &v44[-v20];
  if ([a1 status] == 3)
  {
    if ([a1 needsManualInCallSounds])
    {
      v22 = [a1 provider];
      v47 = a2;
      v23 = v22;
      v24 = [v22 supportsRinging];

      a2 = v47;
      if (v24)
      {
        v25 = [a1 provider];
        v45 = [v25 isFaceTimeProvider];

        v46 = [a1 provider];
        v26 = [a1 isVideo];
        v27 = [a1 soundRegion];
        v28 = *(v13 + 32);
        v29 = type metadata accessor for UUID();
        if (!v45)
        {
          sub_10000AF74(&v18[v28], 1, 1, v29);
          v38 = v46;
          *v18 = 1;
          *(v18 + 1) = v38;
          v18[16] = v26;
          *(v18 + 3) = v27;
          v18[*(v13 + 36)] = 0;
          sub_1000441A8(v18, v9, type metadata accessor for SoundDescriptor);
          v39 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
          sub_10000AF74(v9, 0, 2, v39);
          v40 = v9;
LABEL_16:
          v41 = v47;
          sub_1000441A8(v40, v47, type metadata accessor for SoundDescriptorAction);
          v42 = v41;
          v43 = 0;
          return sub_10000AF74(v42, v43, 1, v4);
        }

        sub_10000AF74(&v21[v28], 1, 1, v29);
        v30 = v46;
        *v21 = 1;
        *(v21 + 1) = v30;
        v21[16] = v26;
        *(v21 + 3) = v27;
        v21[*(v13 + 36)] = 1;
        sub_100044148(v21, v12, type metadata accessor for SoundDescriptor);
        v31 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
        sub_10000AF74(v12, 0, 2, v31);
        if ([a1 hasSentInvitation])
        {
          if ([a1 isVideo])
          {
            v32 = [sub_10000B6FC() hasCurrentAudioCalls];
            swift_unknownObjectRelease();
            if ((v32 & 1) == 0)
            {
              sub_10004426C(v21, type metadata accessor for SoundDescriptor);
LABEL_21:
              v40 = v12;
              goto LABEL_16;
            }
          }

          if (([a1 isVideo] & 1) == 0)
          {
            v33 = [sub_10000B6FC() currentCallCount];
            swift_unknownObjectRelease();
            if (v33 == 1)
            {
              v34 = [sub_10000B6FC() hasCurrentVideoCalls];
              swift_unknownObjectRelease();
              sub_10004426C(v21, type metadata accessor for SoundDescriptor);
              if (v34)
              {
                v35 = type metadata accessor for SoundDescriptorAction;
                v36 = v12;
LABEL_18:
                sub_10004426C(v36, v35);
                v42 = v47;
                v43 = 1;
                return sub_10000AF74(v42, v43, 1, v4);
              }

              goto LABEL_21;
            }
          }
        }

        sub_10004426C(v12, type metadata accessor for SoundDescriptorAction);
        v35 = type metadata accessor for SoundDescriptor;
        v36 = v21;
        goto LABEL_18;
      }
    }
  }

  return sub_10000AF74(a2, 1, 1, v4);
}

uint64_t sub_10004508C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SoundDescriptor();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [sub_10000B6FC() incomingCall];
  swift_unknownObjectRelease();
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [sub_10000B6FC() incomingVideoCall];
  swift_unknownObjectRelease();
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [sub_10000B6FC() displayedCalls];
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000B6F4(v11))
  {
    sub_10039C390(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v11 + 32);
    }

    v13 = v12;

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
    }
  }

  else
  {

    v14 = 0;
  }

  v15 = [sub_10000B6FC() activeVideoCall];
  swift_unknownObjectRelease();
  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v14;
  v18 = [sub_10000B6FC() frontmostBargeCall];
  swift_unknownObjectRelease();
  v19 = v14;
  if (!v18)
  {
LABEL_23:
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_27:
    if (!v9)
    {

      v35 = v19;
      v9 = v16;
      goto LABEL_51;
    }

    v65 = v2;
    v21 = v9;
    if (v16)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v19 = v20;
    if ([v20 status] == 1)
    {

      goto LABEL_23;
    }
  }

  v19 = v14;
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_24:
  v65 = v2;
  v21 = v7;
  if (v16)
  {
LABEL_25:
    v69 = v17;
    v70 = v9;
    v68 = a1;
    v22 = v16;
    goto LABEL_31;
  }

LABEL_29:
  if (!v19)
  {

    v35 = v21;
    goto LABEL_51;
  }

  v69 = v17;
  v70 = v9;
  v68 = a1;
  v22 = v19;
  v16 = 0;
LABEL_31:
  v67 = v7;
  v23 = v16;
  v24 = [v22 uniqueProxyIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v21;
  v29 = [v28 uniqueProxyIdentifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v25 == v30 && v27 == v32)
  {

    goto LABEL_38;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    v36 = &selRef_normalizedValue;
    if ((![v22 needsManualInCallSounds] || (objc_msgSend(v22, "isEndpointOnCurrentDevice") & 1) == 0) && (!objc_msgSend(v28, "needsManualInCallSounds") || (objc_msgSend(v28, "isEndpointOnCurrentDevice") & 1) == 0))
    {
      v37 = [v22 provider];
      v38 = [v37 identifier];

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = [v28 provider];
      v42 = [v41 identifier];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (v64 == v43 && v40 == v45)
      {

        goto LABEL_60;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = &selRef_normalizedValue;
      if (v47)
      {

LABEL_60:
        v48 = type metadata accessor for SoundDescriptorAction();
        v49 = v68;
        goto LABEL_52;
      }
    }

    if (v70 && v14)
    {
      v51 = v70;
      v52 = v69;
      if ([v51 isVideoUpgradeFromCall:v69])
      {

        v53 = [v51 v36[439]];
        v54 = [v51 isVideo];
        v64 = [v51 soundRegion];
        v55 = 5;
        v70 = v23;
        v23 = v22;
        v22 = v52;
LABEL_63:

        v56 = v65;
        v57 = *(v65 + 32);
        v58 = type metadata accessor for UUID();
        v59 = v66;
        sub_10000AF74(&v66[v57], 1, 1, v58);
        *v59 = v55;
        *(v59 + 8) = v53;
        *(v59 + 16) = v54;
        *(v59 + 24) = v64;
        *(v59 + *(v56 + 36)) = 0;
        v60 = v68;
        sub_1000441A8(v59, v68, type metadata accessor for SoundDescriptor);
        v61 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
        sub_10000AF74(v60, 0, 2, v61);
        v62 = type metadata accessor for SoundDescriptorAction();
        return sub_10000AF74(v60, 0, 1, v62);
      }
    }

    v53 = [v28 v36[439]];
    v54 = [v28 isVideo];
    v64 = [v28 soundRegion];
    v55 = 4;
    v51 = v28;
    v28 = v69;
    goto LABEL_63;
  }

LABEL_38:
  v35 = v69;

  a1 = v68;
  v9 = v70;
LABEL_51:

  v48 = type metadata accessor for SoundDescriptorAction();
  v49 = a1;
LABEL_52:

  return sub_10000AF74(v49, 1, 1, v48);
}

uint64_t sub_100045824@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SoundDescriptor();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 4) != 0 && [a1 isConnected] && objc_msgSend(a1, "needsManualInCallSounds") && (v12 = *(v3 + 40), v13 = objc_msgSend(a1, "provider"), LOBYTE(v12) = TUCallHapticsEnabled(), v13, (v12 & 1) == 0))
  {
    v16 = [a1 provider];
    v17 = [a1 isVideo];
    v18 = [a1 soundRegion];
    v19 = *(v7 + 32);
    v20 = type metadata accessor for UUID();
    sub_10000AF74(&v11[v19], 1, 1, v20);
    *v11 = 2;
    *(v11 + 1) = v16;
    v11[16] = v17;
    *(v11 + 3) = v18;
    v11[*(v7 + 36)] = 0;
    sub_1000441A8(v11, a3, type metadata accessor for SoundDescriptor);
    v21 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v21);
    v22 = type metadata accessor for SoundDescriptorAction();
    return sub_10000AF74(a3, 0, 1, v22);
  }

  else
  {
    v14 = type metadata accessor for SoundDescriptorAction();

    return sub_10000AF74(a3, 1, 1, v14);
  }
}

uint64_t sub_100045A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100045B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000080D0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100045B54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100008070(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100045BAC(void *a1, uint64_t a2)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_10000AF9C(v5, qword_1006BA628);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (sub_10000A648(v8))
  {
    v9 = sub_100006DC4();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v6, "Asked to fetch hapticDescriptor", v9, 2u);
    sub_100005F40();
  }

  v10 = *(v2 + 40);
  v11 = [a1 provider];
  LODWORD(v10) = TUCallHapticsEnabled();

  if (!v10)
  {
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54[0] = v29;
      *v28 = 136315138;
      v30 = [v25 provider];
      v31 = [v30 identifier];

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10002741C(v32, v34, v54);

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Haptics is disabled for provider: %s", v28, 0xCu);
      sub_100009B7C(v29);
      sub_100005F40();
LABEL_20:
      sub_100005F40();
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (![a1 isEndpointOnCurrentDevice])
  {
    v36 = v6;
    v26 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (sub_10000A648(v37))
    {
      v38 = sub_100006DC4();
      *v38 = 0;
      v39 = "Haptics is disabled due to call.isEndpointOnCurrentDevice";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v26, v36, v39, v38, 2u);
      goto LABEL_20;
    }

LABEL_21:

    return 0;
  }

  v12 = [a1 provider];
  v13 = [v12 supportsCurrentPlatform];

  if (!v13)
  {
    v36 = v6;
    v26 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (sub_10000A648(v40))
    {
      v38 = sub_100006DC4();
      *v38 = 0;
      v39 = "Haptics is disabled due to call.provider.supportsCurrentPlatform";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v14 = sub_10000B6FC();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002DD308;
  *(v16 + 24) = v15;
  v54[4] = sub_10002E4B4;
  v54[5] = v16;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 1107296256;
  v54[2] = sub_10002E470;
  v54[3] = &unk_10062B538;
  v17 = _Block_copy(v54);
  v18 = a1;

  v19 = [v14 anyCallPassesTest:v17];
  swift_unknownObjectRelease();
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        *sub_100006DC4() = 0;
        sub_100005FAC(&_mh_execute_header, v23, v24, "Haptics is disabled due to isVideoUpgrade");
        sub_100005F40();
      }

      return 0;
    }

    if ((sub_1000461BC(v18) & 1) != 0 && (v41 = sub_100046814(v18, a2), v42))
    {
      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        *sub_100006DC4() = 0;
        sub_100005FAC(&_mh_execute_header, v46, v47, "Haptics is selected for connected");
        sub_100005F40();
      }

      return v43;
    }

    else
    {
      v48 = sub_10004639C(v18, a2);
      if (v49)
      {
        v50 = v48;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = sub_100006DC4();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Haptics is selected for disconnected", v53, 2u);
          sub_100005F40();
        }

        return v50;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100046174()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000461BC(void *a1)
{
  if ([*(v1 + 24) isCovered])
  {
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA628);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Proximity sensor is covered, not playing connected haptics", v6, 2u);
    }

    goto LABEL_6;
  }

  v8 = [a1 provider];
  v9 = [v8 isTelephonyProvider];

  if ((v9 & 1) != 0 || ![a1 isConversation])
  {
    return 1;
  }

  result = [*(v1 + 16) activeConversationForCall:a1];
  if (result)
  {
    v4 = result;
    if (![result isOneToOneModeEnabled])
    {
LABEL_6:

      return 0;
    }

    v10 = [v4 mergedRemoteMembers];
    sub_10039FBE8();
    sub_1002DD344();
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_10001E550(v11);

    return v12 == 1;
  }

  return result;
}

uint64_t sub_10004639C(void *a1, uint64_t a2)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000AF9C(v4, qword_1006BA628);
  v6 = a1;
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = &selRef_beginMatchingExtensions;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 67110656;
    *(v10 + 4) = [v6 status];
    *(v10 + 8) = 2048;
    *(v10 + 10) = a2;
    v26 = v5;
    *(v10 + 18) = 1024;
    v11 = [sub_10000B6FC() hasCurrentAudioCalls];

    swift_unknownObjectRelease();
    *(v10 + 20) = v11;

    *(v10 + 24) = 2048;
    [v6 callDuration];
    *(v10 + 26) = v12;
    *(v10 + 34) = 1024;
    *(v10 + 36) = [v6 isOutgoing];

    *(v10 + 40) = 1024;
    *(v10 + 42) = [v6 disconnectedReason];

    *(v10 + 46) = 1024;
    *(v10 + 48) = [v6 needsManualInCallSounds];

    _os_log_impl(&_mh_execute_header, v7, v8, "Checking for disconnected haptics with following propertyies: call.status: %d, triggers: %lu, hasCurrentAudioCalls: %{BOOL}d, callDuration: %f, isOutgoing: %{BOOL}d, disconnectedReason: %d, needsManualInCallSounds: %{BOOL}d", v10, 0x34u);
    v9 = &selRef_beginMatchingExtensions;
  }

  else
  {
  }

  v13 = [v6 status];
  result = 0;
  if (v13 == 6 && (a2 & 1) != 0)
  {
    v15 = [sub_10000B6FC() hasCurrentAudioCalls];
    swift_unknownObjectRelease();
    if ((v15 & 1) == 0)
    {
      [v6 v9[85]];
      if (v16 > 0.0 || ([v6 isOutgoing] & 1) != 0 || objc_msgSend(v6, "disconnectedReason") == 14)
      {
        if ([v6 needsManualInCallSounds])
        {
          v17 = [v6 disconnectedReason];
          if (v17 <= 0x18 && ((1 << v17) & 0x1CE4060) != 0)
          {
            v18 = v6;
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 67109120;
              *(v21 + 4) = [v18 disconnectedReason];

              _os_log_impl(&_mh_execute_header, v19, v20, "Disconnected Haptics is played due to %d", v21, 8u);
            }

            else
            {

              v19 = v18;
            }

            return sub_10039D36C(1, v18);
          }

          v22 = v6;
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 67109120;
            *(v25 + 4) = [v22 disconnectedReason];

            _os_log_impl(&_mh_execute_header, v23, v24, "Disconnected Haptics is disabled due to %d", v25, 8u);
          }

          else
          {
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100046814(void *a1, char a2)
{
  if ((a2 & 4) != 0 && [a1 isConnected] && ((objc_msgSend(a1, "needsManualInCallSounds") & 1) != 0 || (v4 = objc_msgSend(a1, "provider"), v5 = objc_msgSend(v4, "isTelephonyProvider"), v4, v5) && objc_msgSend(a1, "isOutgoing")))
  {
    return sub_10039D36C(0, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000468D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

id sub_100046910(void *a1, uint64_t a2)
{
  if (*(v2 + 88) != 1 || [a1 resolvedCallStatus] != 4)
  {
    return 0;
  }

  result = [a1 shouldSuppressRingtone];
  if (result)
  {
    return *(a2 + *(type metadata accessor for AudioDescriptor() + 40));
  }

  return result;
}

uint64_t sub_100046988(uint64_t a1, uint64_t a2, int a3)
{
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13 - 8, v16);
  v18 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = v31 - v20;
  v22 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v31[1] = *(result + 16);
    v32 = v8;
    sub_100343100(v33, v21, &unk_1006A2BF0, &unk_100585F10);
    sub_100343100(v34, v18, &unk_1006A2BF0, &unk_100585F10);
    v25 = *(v14 + 80);
    v26 = (v25 + 24) & ~v25;
    v27 = (v15 + v25 + v26) & ~v25;
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    sub_10004731C(v21, v28 + v26);
    sub_10004731C(v18, v28 + v27);
    *(v28 + v27 + v15) = v35 & 1;
    aBlock[4] = sub_10004739C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100628310;
    v29 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v30 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);
    (*(v4 + 8))(v30, v3);
    (*(v36 + 8))(v12, v32);
  }

  return result;
}

uint64_t sub_100046DE0()
{
  v2 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  sub_100005EB4(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 24) & ~v4;
  v8 = (v6 + v4 + v7) & ~v4;
  v9 = *(v0 + 16);

  v10 = v0 + v7;
  v11 = type metadata accessor for AudioDescriptor();
  if (!sub_100015468(v10, 1, v11))
  {

    if (*(v10 + 40) != 1)
    {
    }

    v12 = *(v10 + 72);
    swift_unknownObjectRelease();
    v13 = *(v10 + 136);

    v14 = *(v10 + 160);
    swift_unknownObjectRelease();
    v15 = v11[5];
    v16 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
    if (!sub_100015468(v10 + v15, 1, v16))
    {
      v17 = type metadata accessor for UUID();
      sub_1000080D0(v17);
      (*(v18 + 8))(v10 + v15);
    }

    v19 = v10 + v11[6];
    if (*(v19 + 8))
    {

      v20 = *(v19 + 16);
    }

    v21 = v10 + v11[7];
    v22 = type metadata accessor for RingtoneDescriptor();
    if (!sub_100015FB0(v21))
    {
      v23 = *(v21 + 8);

      v24 = *(v22 + 20);
      v25 = type metadata accessor for URL();
      if (!sub_100007D48(v25))
      {
        sub_10000F49C(v1);
        (*(v26 + 8))(v21 + v24, v1);
      }

      v27 = *(v21 + *(v22 + 24) + 8);
    }

    v28 = v10 + v11[8];
    v29 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    if (!sub_100015468(v28, 2, v29))
    {

      v1 = *(type metadata accessor for SoundDescriptor() + 32);
      v30 = type metadata accessor for UUID();
      if (!sub_100015FB0(v28 + v1))
      {
        sub_10000F49C(v30);
        (*(v31 + 8))(v28 + v1, v30);
      }
    }

    v32 = v10 + v11[9];
    v33 = *(v32 + 8);
    if (v33)
    {
    }

    v34 = v10 + v11[12];
    v35 = type metadata accessor for CallTranslationDisclosureDescriptor();
    if (!sub_1000171FC(v35))
    {

      v36 = *(v32 + 28);
      v37 = type metadata accessor for Locale();
      sub_1000080D0(v37);
      (*(v38 + 8))(v34 + v36);
    }
  }

  v39 = v0 + v8;
  if (!sub_100015468(v0 + v8, 1, v11))
  {

    if (*(v39 + 40) != 1)
    {
    }

    v40 = *(v39 + 72);
    swift_unknownObjectRelease();
    v41 = *(v39 + 136);

    v42 = *(v39 + 160);
    swift_unknownObjectRelease();
    v43 = v11[5];
    v44 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
    if (!sub_100015468(v39 + v43, 1, v44))
    {
      v45 = type metadata accessor for UUID();
      sub_1000080D0(v45);
      (*(v46 + 8))(v39 + v43);
    }

    v47 = v39 + v11[6];
    if (*(v47 + 8))
    {

      v48 = *(v47 + 16);
    }

    v49 = v39 + v11[7];
    v50 = type metadata accessor for RingtoneDescriptor();
    if (!sub_100015FB0(v49))
    {
      v51 = *(v49 + 8);

      v52 = *(v50 + 20);
      v53 = type metadata accessor for URL();
      if (!sub_100007D48(v53))
      {
        sub_10000F49C(v1);
        (*(v54 + 8))(v49 + v52, v1);
      }

      v55 = *(v49 + *(v50 + 24) + 8);
    }

    v56 = v39 + v11[8];
    v57 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    if (!sub_100015468(v56, 2, v57))
    {

      v58 = *(type metadata accessor for SoundDescriptor() + 32);
      v59 = type metadata accessor for UUID();
      if (!sub_100015FB0(v56 + v58))
      {
        sub_10000F49C(v59);
        (*(v60 + 8))(v56 + v58, v59);
      }
    }

    v61 = v39 + v11[9];
    v62 = *(v61 + 8);
    if (v62)
    {
    }

    v63 = v39 + v11[12];
    v64 = type metadata accessor for CallTranslationDisclosureDescriptor();
    if (!sub_100018204(v64))
    {

      v65 = sub_1000162C0();
      sub_1000080D0(v65);
      (*(v66 + 8))(v63 + v39);
    }
  }

  return _swift_deallocObject(v0, v6 + v8 + 1, v4 | 7);
}

uint64_t sub_10004731C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004739C()
{
  v1 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  v8 = (v6 + 24) & ~v6;
  v9 = v0 + ((v7 + v6 + v8) & ~v6);
  v10 = v0 + v8;
  v11 = *(v0 + 16);
  return sub_100047434(v10, v9, *(v9 + v7));
}

uint64_t sub_100047434(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v77 = a3;
  v7 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v75 - v10;
  v78 = type metadata accessor for AudioDescriptor();
  v12 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78, v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + 16);
  *v21 = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v25 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057E830;
  v76 = a1;
  v27 = sub_100047B5C(a1);
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v30 = sub_100009D88();
  *(v26 + 64) = v30;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v31 = sub_100047B5C(a2);
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v30;
  *(v26 + 72) = v31;
  *(v26 + 80) = v32;
  LOBYTE(v29) = v77;
  v79 = v77 & 1;
  v33 = String.init<A>(reflecting:)();
  *(v26 + 136) = &type metadata for String;
  *(v26 + 144) = v30;
  *(v26 + 112) = v33;
  *(v26 + 120) = v34;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v35 = v29;
  if (*(v4 + 112))
  {
    v36 = *(v4 + 112);

    v37 = sub_100010B20();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    dispatch thunk of DispatchWorkItem.cancel()();

    v38 = *(v4 + 112);
    *(v4 + 112) = 0;
  }

  sub_100343100(a2, v11, &unk_1006A2BF0, &unk_100585F10);
  if (sub_100015468(v11, 1, v78) == 1)
  {
    sub_100009A5C(v11, &unk_1006A2BF0, &unk_100585F10);
    v39 = sub_100010B20();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return sub_10033DEA8();
  }

  sub_10004A200();
  sub_10026D814(&unk_1006A61A8, &qword_100581168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100581010;
  *(inited + 32) = sub_10004A2B8(v15);
  *(inited + 40) = v42;
  *(inited + 48) = v43;
  *(inited + 56) = sub_10004A6E4(v15);
  *(inited + 64) = v44;
  *(inited + 72) = v45;
  *(inited + 80) = sub_10004B838(v15);
  *(inited + 88) = v46;
  *(inited + 96) = v47;
  *(inited + 104) = sub_10004BD88(v15);
  *(inited + 112) = v48;
  *(inited + 120) = v49;
  *(inited + 128) = sub_10004C0E8(v15);
  *(inited + 136) = v50;
  *(inited + 144) = v51;
  *(inited + 152) = sub_10004C77C(v15);
  *(inited + 160) = v52;
  *(inited + 168) = v53;
  *(inited + 176) = sub_10004C2FC(v15);
  *(inited + 184) = v54;
  *(inited + 192) = v55;
  v56 = sub_10004C8E4(v15);
  v58 = v57;
  v60 = v59;
  sub_10004CB90();
  v62 = v61;
  *(v61 + 16) = 8;
  *(v61 + 200) = v56;
  *(v61 + 208) = v58;
  *(v61 + 216) = v60;

  for (i = 0; i != 192; i += 24)
  {
    v64 = v62 + i;
    v65 = *(v62 + i + 48);
    if (v65 != 255 && (v65 & 1) != 0)
    {
      v67 = *(v64 + 32);
      v66 = *(v64 + 40);
      v68 = sub_10004CC58();
      v67(v68);
      sub_10004CC68(v67, v66, v65);
    }
  }

  sub_10004FE08(v15, v76, v35 & 1);
  if (*(v62 + 16) < 8uLL)
  {
LABEL_20:
    __break(1u);
  }

  for (j = 0; j != 192; j += 24)
  {
    v70 = v62 + j;
    v71 = *(v62 + j + 48);
    if (v71 != 255 && (v71 & 1) == 0)
    {
      v73 = *(v70 + 32);
      v72 = *(v70 + 40);
      v74 = sub_10004CC58();
      v73(v74);
      sub_10004CC68(v73, v72, v71);
    }
  }

  sub_100045B00(v15, type metadata accessor for AudioDescriptor);
}

uint64_t sub_100047A18(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = a2(0);
  v7 = sub_100008070(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_100007BAC();
  __chkstk_darwin(v11, v12);
  sub_10000BB28();
  v13 = sub_10026D814(a3, a4);
  sub_100007BF0(v13);
  v15 = *(v14 + 64);
  sub_100006688();
  __chkstk_darwin(v16, v17);
  v19 = &v24 - v18;
  sub_10003A1C8();
  sub_100009F5C(v19);
  if (!v20)
  {
    sub_100047D98();
    sub_10000C3E4();
    sub_100047E50();
    sub_100007968();
    String.init<A>(reflecting:)();
    v21 = sub_100006884();
    sub_100049D70(v21, v22);
  }

  return sub_100007968();
}

uint64_t sub_100047B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047BBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_100047C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
    v10 = a1 + *(a3 + 20);

    return sub_100015468(v10, a2, v9);
  }
}

uint64_t sub_100047CB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100047D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Locale();
    v10 = a1 + *(a3 + 28);

    return sub_100015468(v10, a2, v9);
  }
}

uint64_t sub_100047D98()
{
  sub_100007710();
  v2 = v1(0);
  sub_100008070(v2);
  v4 = *(v3 + 32);
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

uint64_t sub_100047DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100047E50()
{
  sub_100007710();
  v2 = v1(0);
  sub_100008070(v2);
  v4 = *(v3 + 16);
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioInterruptionDescriptor.ProviderType(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100048B6C(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100048BE4(uint64_t a1)
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

uint64_t sub_100048C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return sub_1000359E0();
  }

  return String.init<A>(reflecting:)();
}

uint64_t sub_100048CB4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = a4 & 0x100;
  if ((a4 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001ABF4();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *(&v72 + 1) = sub_1000496D4();
    *&v71 = isa;
    sub_10000D440(*(&v72 + 1), v8, v9, v10, v11, v12, v13, v14, v56, v59, v62, v65, v68, v71);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000181C0();
    sub_100040430();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (sub_10001ABF4() == 1668047476 && a3)
    {
      *(&v72 + 1) = &type metadata for String;
      *&v71 = a2;
      *(&v71 + 1) = a3;
      sub_10000D440(1668047476, v15, v16, v17, v18, v19, v20, v21, v56, v59, v62, v65, v68, v71);

      swift_isUniquelyReferenced_nonNull_native();
      sub_1000181C0();
      sub_100040430();
    }

    else
    {
      v22 = sub_100005208();
      if (v23)
      {
        v24 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v62 = v59;
        v26 = v59[3];
        sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26);
        v27 = *(v59[6] + 16 * v24 + 8);

        sub_10003EBF0((v59[7] + 32 * v24), &v71);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      sub_10004975C(&v71);
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();
  v28 = UInt._bridgeToObjectiveC()().super.super.isa;
  v29 = sub_1000496D4();
  *(&v72 + 1) = v29;
  *&v71 = v28;
  sub_10000D440(v29, v30, v31, v32, v33, v34, v35, v36, v56, v59, v62, v65, v68, v71);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000181C0();
  sub_100040430();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();
  v37.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(&v72 + 1) = v29;
  *&v71 = v37;
  sub_10000D440(v37.super.super.isa, v38, v39, v40, v41, v42, v43, v44, v57, v60, v63, v66, v69, v71);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000181C0();
  sub_100040430();

  v45 = v61;
  if (v4)
  {
    v46 = 1701671527;
  }

  else
  {
    v46 = 1684434036;
  }

  v47 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v46];
  *(&v72 + 1) = v29;
  *&v71 = v47;
  sub_10000D440(v47, v48, v49, v50, v51, v52, v53, v54, v58, v61, v64, v67, v70, v71);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  return v45;
}

uint64_t sub_100048FF0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_100049060(a1 & 0xFFFFFFFF00000001, a2, a3, a4 & 0x101);
  v4 = Dictionary.debugDescription.getter();

  return v4;
}

uint64_t sub_100049060(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = sub_100048CB4(a1 & 0xFFFFFFFF00000001, a2, a3, a4 & 0x101);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v51 = v5;
  for (i = v50; v8; v5 = v51)
  {
    v12 = v10;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v50 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_100006A94(*(v50 + 56) + 32 * v14, &v56);
    *&v58 = v17;
    *(&v58 + 1) = v16;
    sub_10003EBF0(&v56, &v59);

LABEL_10:
    v61 = v58;
    v62[0] = v59;
    v62[1] = v60;
    v18 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {

      return i;
    }

    v19 = v61;
    sub_10003EBF0(v62, &v58);
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v18)
    {
      goto LABEL_32;
    }

    v22 = sub_10000EA0C();

    if (v22)
    {
      goto LABEL_33;
    }

    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v18)
    {
      goto LABEL_32;
    }

    v25 = sub_10000EA0C();

    if (v25)
    {
      goto LABEL_33;
    }

    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v18)
    {
LABEL_32:
    }

    else
    {
      v28 = sub_10000EA0C();

      if ((v28 & 1) == 0)
      {
        v29 = v19 == 0xD000000000000014 && 0x800000010056B800 == v18;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_100006A94(&v58, &v56);
          goto LABEL_44;
        }
      }
    }

LABEL_33:
    sub_100006A94(&v58, v55);
    if (swift_dynamicCast())
    {
      v30 = v54;
      v31 = sub_1000497C4(v54);
      if (!v32)
      {
        v33 = &type metadata for Int;
LABEL_42:
        v57 = v33;
        *&v56 = v30;
        goto LABEL_43;
      }
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_100006A94(&v58, &v56);
        goto LABEL_43;
      }

      v30 = v54;
      v31 = sub_1000497C4(v54);
      if (!v32)
      {
        v33 = &type metadata for UInt;
        goto LABEL_42;
      }
    }

    v53 = &type metadata for String;
    *&v52 = v31;
    *(&v52 + 1) = v32;
    sub_10003EBF0(&v52, &v56);
LABEL_43:
    sub_100009B7C(v55);
LABEL_44:
    sub_100006A94(&v56, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52 = i;
    v35 = sub_100005208();
    v37 = i[2];
    v38 = (v36 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_56;
    }

    v40 = v35;
    v41 = v36;
    sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
    {
      v42 = sub_100005208();
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_58;
      }

      v40 = v42;
      if (v41)
      {
LABEL_51:

        i = v52;
        v48 = (*(v52 + 56) + 32 * v40);
        sub_100009B7C(v48);
        sub_10003EBF0(v55, v48);
        sub_100009B7C(&v58);
        goto LABEL_52;
      }
    }

    else if (v41)
    {
      goto LABEL_51;
    }

    i = v52;
    *(v52 + 8 * (v40 >> 6) + 64) |= 1 << v40;
    v44 = (i[6] + 16 * v40);
    *v44 = v19;
    v44[1] = v18;
    sub_10003EBF0(v55, (i[7] + 32 * v40));
    sub_100009B7C(&v58);
    v45 = i[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_57;
    }

    i[2] = v47;
LABEL_52:
    sub_100009B7C(&v56);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      goto LABEL_10;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000494FC()
{
  if (v0[25])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100048FF0(*v0 | (*(v0 + 1) << 32), *(v0 + 1), *(v0 + 2), v1 | v0[24]);
}

uint64_t sub_100049528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1668047728;
  if (!a3)
  {
    return 1668047974;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v6 == a3)
  {

    return 1668050283;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return 1668050283;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {

    return 1668051824;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 1668051824;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
      {

        return 1668051817;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return 1668051817;
        }

        else
        {
          return 1668047476;
        }
      }
    }
  }

  return v3;
}

unint64_t sub_1000496D4()
{
  result = qword_1006A3480;
  if (!qword_1006A3480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3480);
  }

  return result;
}

void sub_100049718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000A82C(a1, a2, a3, a4, a5);
  sub_10003EBF0(v8, (*(v7 + 56) + 32 * v6));
  sub_100017180();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_10004975C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000497C4(unint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v16 = bswap64(a1);
  v7 = sub_1000499C8(&v16, &v17);
  v8 = 0;
  v9 = v7[2];
  while (1)
  {
    if (v9 == v8)
    {

      return 0;
    }

    if (*(v7 + v8 + 32))
    {
      break;
    }

    ++v8;
  }

  sub_100049A44(v8, v9, v7);
  v12 = v11;
  v14 = v13;

  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A5A38, qword_100580800);
  sub_100049AB0();
  Data.init<A>(bytes:)();
  sub_10000FA2C();
  static String.Encoding.ascii.getter();
  v10 = String.init(data:encoding:)();
  sub_100049B14(v12, v14);
  swift_unknownObjectRelease();
  return v10;
}

void *sub_100049958(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(&qword_1006A5748, &qword_100580558);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1000499C8(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100049958(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100049A44(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100049AB0()
{
  result = qword_1006A5A40;
  if (!qword_1006A5A40)
  {
    sub_10026DCB4(&qword_1006A5A38, qword_100580800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5A40);
  }

  return result;
}

uint64_t sub_100049B14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100049BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_100015468(a1, a2, v4);
}

unint64_t sub_100049C2C()
{
  type metadata accessor for UUID();
  sub_100049D18();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x444955556C6C6163;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  return 0xD000000000000027;
}

unint64_t sub_100049D18()
{
  result = qword_1006A25E0;
  if (!qword_1006A25E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A25E0);
  }

  return result;
}

uint64_t sub_100049D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100008070(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100049DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100008070(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100049E20(uint64_t *a1)
{
  if (!a1[1])
  {
    return 7104878;
  }

  v1 = *(a1 + 20);
  v2 = a1[4];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v3 = a1[3];
  v4 = v2;

  return String.init<A>(reflecting:)();
}

uint64_t sub_100049EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049FE0()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_100461B78(v3);
}

_OWORD *sub_10004A028()
{

  return sub_10003EBF0((v0 - 168), (v0 - 128));
}

uint64_t sub_10004A040()
{
  v2 = *(v0 - 96);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10004A070()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2080;
  return v2;
}

uint64_t sub_10004A090()
{

  return swift_arrayDestroy();
}

uint64_t sub_10004A0AC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10004A0DC()
{
  sub_10003EBF0((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10004A118()
{

  return swift_endAccess();
}

uint64_t sub_10004A13C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return v2;
}

uint64_t sub_10004A158(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    return sub_1000359E0();
  }

  v4 = a3;
  v5 = a2;
  return String.init<A>(reflecting:)();
}

uint64_t sub_10004A200()
{
  v2 = sub_10000EA30();
  v4 = v3(v2);
  sub_100008070(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10004A258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t (*sub_10004A2B8(uint64_t a1))()
{
  v26 = a1;
  v2 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for RingtoneDescriptor();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  v10 = __chkstk_darwin(v7, v9);
  __chkstk_darwin(v10, v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 16);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v21 = type metadata accessor for AudioDescriptor();
    sub_100343100(v26 + *(v21 + 28), v6, &qword_1006A61F0, &unk_10057D920);
    if (sub_100015468(v6, 1, v7) == 1)
    {
      sub_100009A5C(v6, &qword_1006A61F0, &unk_10057D920);
      v22 = *(v1 + 48);

      return sub_10004CDC4;
    }

    else
    {
      sub_10004A200();
      sub_10004A200();
      v24 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = v1;
      sub_10004A200();

      return sub_10034304C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A5D0()
{
  v1 = type metadata accessor for RingtoneDescriptor();
  sub_10000A880(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = v0 + v4;
  v9 = *(v0 + v4 + 8);

  v10 = *(v1 + 20);
  v11 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v4 + v10, 1, v11))
  {
    sub_10000F49C(v11);
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = *(v8 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t (*sub_10004A6E4(uint64_t a1))()
{
  v33 = a1;
  v2 = type metadata accessor for AudioDescriptor();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2, v4);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SoundDescriptor();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v8 = type metadata accessor for SoundDescriptorAction();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v1;
  v19 = *(v1 + 16);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v18, v13);
  if (v19)
  {
    v22 = *(v2 + 32);
    sub_10004B628();
    v23 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    v24 = sub_100015468(v12, 2, v23);
    if (v24)
    {
      if (v24 == 1)
      {
        return 0;
      }

      v27 = *(v32 + 56);

      return sub_10004CDC8;
    }

    else
    {
      sub_10004A200();
      sub_10004B628();
      v25 = (v6 + *(v30 + 80) + ((*(v29 + 80) + 24) & ~*(v29 + 80))) & ~*(v30 + 80);
      *(swift_allocObject() + 16) = v32;
      sub_10004A200();
      sub_10004A200();

      return sub_100342C1C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004AAAC()
{
  v1 = type metadata accessor for SoundDescriptor();
  sub_10000A880(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AudioDescriptor();
  sub_10000A880(v7);
  v9 = *(v8 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v46 = *(v11 + 64);
  v12 = *(v0 + 16);

  v13 = v0 + v4;

  v14 = *(v1 + 32);
  v15 = type metadata accessor for UUID();
  if (!sub_10000FDEC(v13 + v14))
  {
    sub_10000F49C(v15);
    (*(v16 + 8))(v13 + v14, v15);
  }

  v17 = (v0 + v10);

  if (*(v0 + v10 + 40) != 1)
  {
  }

  v18 = *(v17 + 9);
  swift_unknownObjectRelease();
  v19 = *(v17 + 17);

  v20 = *(v17 + 20);
  swift_unknownObjectRelease();
  v21 = v7[5];
  v22 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  if (!sub_100015468(&v17[v21], 1, v22))
  {
    sub_10000F49C(v15);
    (*(v23 + 8))(&v17[v21], v15);
  }

  v24 = &v17[v7[6]];
  if (*(v24 + 1))
  {

    v25 = *(v24 + 2);
  }

  v26 = &v17[v7[7]];
  v27 = type metadata accessor for RingtoneDescriptor();
  if (!sub_100015468(v26, 1, v27))
  {
    v44 = v10;
    v45 = v3;
    v28 = *(v26 + 8);

    v29 = *(v27 + 20);
    v30 = type metadata accessor for URL();
    if (!sub_100015468(v26 + v29, 1, v30))
    {
      sub_10000F49C(v30);
      (*(v31 + 8))(v26 + v29, v30);
    }

    v32 = *(v26 + *(v27 + 24) + 8);

    v10 = v44;
    v3 = v45;
  }

  v33 = &v17[v7[8]];
  v34 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v33, 2, v34))
  {

    v35 = *(v1 + 32);
    if (!sub_10000FDEC(v33 + v35))
    {
      sub_10000F49C(v15);
      (*(v36 + 8))(v33 + v35, v15);
    }
  }

  v37 = &v17[v7[9]];
  v38 = *(v37 + 1);
  if (v38)
  {
  }

  v39 = &v17[v7[12]];
  v40 = type metadata accessor for CallTranslationDisclosureDescriptor();
  if (!sub_100018204(v40))
  {

    v41 = sub_1000162C0();
    sub_1000080D0(v41);
    (*(v42 + 8))(&v37[v39]);
  }

  return _swift_deallocObject(v0, v10 + v46, v3 | v9 | 7);
}

BOOL sub_10004AE3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v105 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v105);
  v102 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_100007BAC();
  v99 = v11 - v12;
  sub_100006838();
  __chkstk_darwin(v13, v14);
  v100 = &v96 - v15;
  v16 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v17 = sub_100007FEC(v16);
  v106 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007BAC();
  v24 = v22 - v23;
  __chkstk_darwin(v25, v26);
  v28 = &v96 - v27;
  v29 = sub_10026D814(&qword_1006A81C8, &qword_100583B60);
  v30 = sub_100007BF0(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  sub_100007BAC();
  v36 = v34 - v35;
  __chkstk_darwin(v37, v38);
  v40 = &v96 - v39;
  sub_10000F3C0();
  sub_100050924(a1);
  v42 = v41;
  swift_beginAccess();
  v43 = *(v3 + 160);
  v101 = a2;
  v108 = a2;
  v109 = v42;
  v107 = v42;

  sub_1002CB078(sub_1003A6060, v43, v40);

  sub_100285FC4(v40, v36, &qword_1006A81C8, &qword_100583B60);
  v44 = v16;
  v45 = sub_100015468(v36, 1, v16);
  v103 = v40;
  v104 = v3;
  if (v45 == 1)
  {
    sub_100009A04(v36, &qword_1006A81C8, &qword_100583B60);
    v46 = v16;
  }

  else
  {
    v47 = sub_100027E34();
    sub_1002DB564(v47, v48);
    sub_100008D34();
    v98 = v28;
    sub_1003840F8(v28);
    swift_endAccess();
    v49 = sub_100006B30();
    sub_1000051F8(v49);
    if (qword_1006A0AD0 != -1)
    {
LABEL_30:
      sub_100008688();
    }

    v50 = type metadata accessor for Logger();
    sub_1000075F0(v50, qword_1006A80E0);
    v51 = v102;
    v52 = v100;
    v53 = v105;
    (*(v102 + 16))(v100, v101, v105);
    v54 = v107;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    v46 = v44;
    if (os_log_type_enabled(v55, v56))
    {
      sub_100007C08();
      v57 = sub_10000FE98();
      v96 = v57;
      v97 = sub_100005E84();
      v110[0] = v97;
      *v53 = 138412546;
      *(v53 + 4) = v54;
      *v57 = v54;
      *(v53 + 12) = 2080;
      sub_10000A298();
      sub_100050E78(v58, v59);
      v60 = v51;
      v61 = v54;
      LOBYTE(v57) = v56;
      v62 = v105;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v60 + 8))(v52, v62);
      sub_10002741C(v63, v65, v110);
      sub_100006064();
      *(v53 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v55, v57, "[SharePlayAvailabilityManager] Unregistered callback for handle: %@, callUUID: %s", v53, 0x16u);
      sub_100009A04(v96, &unk_1006A2630, &qword_10057CB40);
      sub_100007CBC();
      sub_100009B7C(v97);
      sub_100007CBC();
      sub_100005F40();
    }

    else
    {

      (*(v51 + 8))(v52, v53);
    }

    sub_1002DB508(v98);
    v3 = v104;
  }

  v66 = *(v3 + 160);
  v67 = 1 << *(v66 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v66 + 64);
  v44 = (v67 + 63) >> 6;
  v70 = *(v3 + 160);
  swift_bridgeObjectRetain_n();
  v71 = 0;
  v72 = 0;
  do
  {
    if (!v69)
    {
      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v73 >= v44)
        {
          goto LABEL_20;
        }

        v69 = *(v66 + 64 + 8 * v73);
        ++v72;
        if (v69)
        {
          v72 = v73;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v73 = v72;
LABEL_17:
    v74 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    sub_10037A8AC(*(v66 + 48) + v106[9] * (v74 | (v73 << 6)), v24);
    v75 = [*(v24 + *(v46 + 20)) isEquivalentToHandle:v107];
    sub_1002DB508(v24);
    v76 = __OFADD__(v71, v75);
    v71 += v75;
  }

  while (!v76);
  __break(1u);
LABEL_20:

  v77 = v103;
  if (sub_100015468(v103, 1, v46) != 1 && !v71)
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v78 = type metadata accessor for Logger();
    sub_1000075F0(v78, qword_1006A80E0);
    v79 = v102;
    v80 = v99;
    v81 = v105;
    (*(v102 + 16))(v99, v101, v105);
    v82 = v107;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      sub_100007C08();
      v85 = sub_10000FE98();
      v101 = v85;
      v106 = sub_100005E84();
      v110[0] = v106;
      *v81 = 138412546;
      *(v81 + 4) = v82;
      *v85 = v82;
      *(v81 + 12) = 2080;
      sub_10000A298();
      sub_100050E78(v86, v87);
      v88 = v82;
      v89 = v105;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      (*(v79 + 8))(v80, v89);
      v93 = sub_10002741C(v90, v92, v110);
      v77 = v103;

      *(v81 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v83, v84, "[SharePlayAvailabilityManager] Clearing cache entries for handle: %@, callUUID: %s", v81, 0x16u);
      sub_100009A04(v101, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100009B7C(v106);
      sub_100006868();
      sub_100005F40();
    }

    else
    {

      (*(v79 + 8))(v80, v81);
    }

    sub_100008D34();
    sub_100050EC0(v82);
    swift_endAccess();
  }

  v94 = sub_100015468(v77, 1, v46) != 1;
  sub_100009A04(v77, &qword_1006A81C8, &qword_100583B60);
  return v94;
}

uint64_t sub_10004B628()
{
  v2 = sub_10000EA30();
  v4 = v3(v2);
  sub_100008070(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

void sub_10004B680(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 conversationManager];
  v4 = [v3 activeConversations];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 state] && !objc_msgSend(v9, "avMode"))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(*(a1 + 40) + 8) + 40) groupUUID];
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resolvedAVLessConversation groupUUID: %@", buf, 0xCu);
  }
}

uint64_t sub_10004B838(uint64_t a1)
{
  v3 = type metadata accessor for AudioDescriptor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 16);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v16 = (a1 + *(v3 + 36));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    if (v18)
    {
      sub_10004B628();
      v20 = (*(v4 + 80) + 48) & ~*(v4 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      *(v21 + 24) = v17;
      *(v21 + 32) = v18;
      *(v21 + 40) = v19;
      sub_10004A200();

      v22 = sub_100342AE4;
    }

    else
    {
      v23 = *(v1 + 64);

      v22 = sub_10004D268;
    }

    v24 = v22;
    sub_10004C0A8(v17, v18, v19);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004BAB0()
{
  v2 = type metadata accessor for AudioDescriptor();
  sub_10000A880(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = (v0 + v5);
  if (*(v0 + v5 + 40) != 1)
  {
  }

  v10 = *(v9 + 9);
  swift_unknownObjectRelease();
  v11 = *(v9 + 17);

  v12 = *(v9 + 20);
  swift_unknownObjectRelease();
  v13 = v2[5];
  v14 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  if (!sub_100015468(&v9[v13], 1, v14))
  {
    v15 = type metadata accessor for UUID();
    sub_1000080D0(v15);
    (*(v16 + 8))(&v9[v13]);
  }

  v17 = &v9[v2[6]];
  if (*(v17 + 1))
  {

    v18 = *(v17 + 2);
  }

  v19 = &v9[v2[7]];
  v20 = type metadata accessor for RingtoneDescriptor();
  if (!sub_1000171FC(v20))
  {
    v21 = *(v19 + 1);

    v22 = *(v1 + 20);
    v23 = type metadata accessor for URL();
    if (!sub_100015FB0(&v19[v22]))
    {
      sub_10000F49C(v23);
      (*(v24 + 8))(&v19[v22], v23);
    }

    v25 = *&v19[*(v1 + 24) + 8];
  }

  v26 = &v9[v2[8]];
  v27 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v26, 2, v27))
  {

    v28 = *(type metadata accessor for SoundDescriptor() + 32);
    v29 = type metadata accessor for UUID();
    if (!sub_10000FDEC(v26 + v28))
    {
      sub_10000F49C(v29);
      (*(v30 + 8))(v26 + v28, v29);
    }
  }

  v31 = &v9[v2[9]];
  v32 = *(v31 + 1);
  if (v32)
  {
  }

  v33 = &v9[v2[12]];
  v34 = type metadata accessor for CallTranslationDisclosureDescriptor();
  if (!sub_100018204(v34))
  {

    v35 = sub_1000162C0();
    sub_1000080D0(v35);
    (*(v36 + 8))(&v31[v33]);
  }

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t (*sub_10004BD88(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (*(a1 + *(type metadata accessor for AudioDescriptor() + 40)))
    {
      v12 = *(v1 + 72);
      *(swift_allocObject() + 16) = v12;
      v13 = v12;
      return sub_10004D4F4;
    }

    else
    {

      return sub_100342AA0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004BF08()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_10004C090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C0A8(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a3;

    v4 = a2;
  }
}

void (*sub_10004C0E8(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = type metadata accessor for AudioDescriptor();
    v13 = *(a1 + *(v12 + 44)) | ((*(a1 + *(v12 + 44) + 4) | (*(a1 + *(v12 + 44) + 6) << 16)) << 32);
    if ((v13 & 0xFF000000000000) == 0x3000000000000)
    {
      v14 = *(v1 + 80);
      *(swift_allocObject() + 16) = v14;
      v15 = v14;
      return sub_10004D8D4;
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 28) = BYTE4(v13);
      *(v17 + 24) = v13;
      *(v17 + 29) = BYTE5(v13) & 1;
      *(v17 + 30) = BYTE6(v13);

      return sub_100342A6C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C2C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 31, 7);
}

uint64_t (*sub_10004C2FC(uint64_t a1))()
{
  v28 = a1;
  v2 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v10 = __chkstk_darwin(v7, v9);
  __chkstk_darwin(v10, v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 16);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    if ([*(v1 + 128) voiceTranslationEnabled])
    {
      v21 = type metadata accessor for AudioDescriptor();
      sub_100343100(v28 + *(v21 + 48), v6, &unk_1006A2B50, &unk_1005811A0);
      if (sub_100015468(v6, 1, v7) == 1)
      {
        sub_100009A5C(v6, &unk_1006A2B50, &unk_1005811A0);
        v22 = *(v1 + 88);
        *(swift_allocObject() + 16) = v22;
        v23 = v22;
        return sub_10004DA60;
      }

      else
      {
        sub_10004A200();
        sub_10004A200();
        v26 = (*(v27 + 80) + 24) & ~*(v27 + 80);
        *(swift_allocObject() + 16) = v1;
        sub_10004A200();

        return sub_100342A38;
      }
    }

    else
    {
      v25 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C694()
{
  v1 = (type metadata accessor for CallTranslationDisclosureDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v1[9];
  v7 = type metadata accessor for Locale();
  sub_1000080D0(v7);
  (*(v8 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t (*sub_10004C77C(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (*(a1 + *(type metadata accessor for AudioDescriptor() + 52)))
    {
      v12 = *(v1 + 96);

      return sub_10004D6F4;
    }

    else
    {

      return sub_100342A64;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C8E4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = a1 + *(type metadata accessor for AudioDescriptor() + 24);
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    if (v13)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v14;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      *(v19 + 48) = v16;
      *(v19 + 56) = v17;
      *(v19 + 64) = v18 & 1;
      *(v19 + 65) = HIBYTE(v18) & 1;

      v20 = sub_1003429B4;
    }

    else
    {
      v21 = *(v1 + 40);
      *(swift_allocObject() + 16) = v21;
      v22 = v21;
      v20 = sub_10004FC9C;
    }

    v23 = v20;
    sub_10004CB34(v14, v13, v15, v16, v17);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CADC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 66, 7);
}

uint64_t sub_10004CB34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v6 = a4;
    v7 = a5;
  }

  return result;
}

void sub_10004CB90()
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
      sub_10026D814(&unk_1006A61A8, &qword_100581168);
      v8 = sub_100016140();
      sub_10001747C(v8);
      sub_10000EC84(v9 / 24);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000F95C();
        sub_100395E08(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10026D814(&unk_1006ACA60, &qword_100588708);
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

uint64_t sub_10004CC68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CC60();
  }

  return result;
}

void sub_10004CC80()
{
  if (*(v0 + 24))
  {
    v1 = v0;
    v2 = *(v0 + 32);
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    v3 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100009D88();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    ObjectType = swift_getObjectType();
    (*(v2 + 48))(ObjectType, v2);
    v9 = *(v1 + 40);
    OS_dispatch_semaphore.wait()();
    swift_unknownObjectRelease();
  }

  sub_100008348();
}

uint64_t sub_10004CDCC()
{
  v1 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v14[-v4];
  v6 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057D690;
  v8 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  swift_beginAccess();
  sub_10004CF98(v0 + v8, v5);
  v9 = sub_10004D008(v5);
  v11 = v10;
  sub_1000099A4(v5, &qword_1006A2BE8, &unk_10057D980);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100009D88();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [*(v0 + OBJC_IVAR____TtC13callservicesd13SoundProvider_player) stopPlaying];
  v12 = type metadata accessor for SoundDescriptor();
  sub_10000AF74(v5, 1, 1, v12);
  swift_beginAccess();
  sub_10004D044(v5, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_10004CF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D044(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10004D0B4()
{
  v1 = v0;
  if (qword_1006A0B38 != -1)
  {
    sub_10000864C();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA628);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 24);
    if (v7)
    {
      v8 = *(v1 + 32);
      v9 = *(v1 + 16);
      v10 = v8;
      v11 = v7;
      v12 = sub_10039D52C(v9, v11, v8);
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_10002741C(v12, v14, &v23);

    *(v5 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping Haptic playback for activeDescriptor: %s", v5, 0xCu);
    sub_100009B7C(v6);
  }

  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  sub_100006048();

  sub_10004D4B4(v19, v20, v21);
}

void *sub_10004D26C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10004D2B8(a1, a2);
  sub_10004D3D0(&off_100620020);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10004D2B8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100049958(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10004D3D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100323838(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10004D4B4(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_10004D518()
{
  sub_10004D62C();
  sub_10004D568();
  *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor) = 1;
  v1 = (v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);
  *v1 = 0;
  v1[1] = 0;

  return sub_1000051F8(v2);
}

void sub_10004D568()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer);
  if (v1)
  {
    v3 = v1;
    if ([v3 isPlaying])
    {
      v2 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v3 stop];
    }
  }
}

void sub_10004D62C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer);
  if (v1)
  {
    v3 = v1;
    if ([v3 isSpeaking])
    {
      v2 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v3 stopSpeakingAtBoundary:0];
    }
  }
}

void sub_10004D71C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer;
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  if (v3)
  {
    v4 = v3;
    if ([v4 isPlaying])
    {
      v5 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v4 stop];
      v6 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v7 = v4;
      v8 = v6;
      sub_1003C4478(v3);
    }
  }

  v9 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer;
  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  if (v10)
  {
    v11 = v10;
    if ([v11 isPlaying])
    {
      v12 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v11 stop];
      v13 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v14 = v11;
      v15 = v13;
      sub_1003C4478(v10);
    }
  }

  v16 = *(v1 + v9);
  *(v1 + v9) = 0;

  v17 = *(v1 + v2);
  *(v1 + v2) = 0;
}

uint64_t sub_10004D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100004778();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return _MRMediaRemoteSetRouteDiscoveryMode(a3);
}

uint64_t sub_10004D990()
{
  v1 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v9 - v4;
  sub_10004DB28();
  sub_10004DAF4();
  sub_10004DA84();
  v6 = type metadata accessor for CallTranslationDisclosureDescriptor();
  sub_10000AF74(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  sub_10004DEE0(v5, v0 + v7);
  return swift_endAccess();
}

void sub_10004DA84()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer) = 0;
}

void sub_10004DAF4()
{
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback) = 0;
}

void sub_10004DB28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  if (v2)
  {
    v3 = v2;
    if ([v3 isPlaying])
    {
      v4 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v3 stop];
      v5 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
      v6 = v3;
      sub_1003C4830(v2, 0, 0, 1);
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  if (v7)
  {
    v8 = v7;
    if ([v8 isPlaying])
    {
      v9 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v8 stop];
      v10 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
      v11 = v8;
      sub_1003C4830(v7, 0, 0, 1);
    }
  }

  v12 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  if (v13)
  {
    v14 = v13;
    if ([v14 isPlaying])
    {
      v15 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v14 stop];
      v16 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
      v17 = v14;
      sub_1003C4830(v13, 0, 0, 1);
    }
  }

  v18 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
  if (v18)
  {
    v24 = v18;
    if ([v24 isPlaying])
    {
      v19 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v24 stop];
      v20 = *(v1 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
      v21 = *(v1 + v12);
      v22 = v21;
      sub_1003C4830(v21, 0, 0, 1);

      v23 = v22;
    }

    else
    {
      v23 = v24;
    }
  }
}

uint64_t sub_10004DE58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = v5 + *(a4 + 28);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004DEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DF50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_10003719C(), (v3 & 1) != 0))
  {
    sub_100015CDC(v2);
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

void sub_10004DF98()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v27 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v26 = *&v0[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v28[4] = sub_100050814;
  v28[5] = v20;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  sub_10000A600();
  v28[2] = v21;
  v28[3] = &unk_10062EE30;
  v22 = _Block_copy(v28);
  v23 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v24, v25);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v4 + 8))(v10, v1);
  (*(v13 + 8))(v19, v27);

  sub_100005EDC();
}