uint64_t sub_10004E200()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004E238(void *a1, void *a2, _UNKNOWN **a3)
{
  v489 = a2;
  v491 = type metadata accessor for Date();
  sub_1000083C0();
  v488 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8, v9);
  sub_10000A5F0();
  __chkstk_darwin(v10, v11);
  sub_10000A5F0();
  __chkstk_darwin(v12, v13);
  sub_10000A5F0();
  __chkstk_darwin(v14, v15);
  v486 = &v483 - v16;
  v485 = sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  Dictionary.init(dictionaryLiteral:)();
  v17 = [a1 displayContext];
  sub_10004FCC0(v17);

  Int._bridgeToObjectiveC()();
  sub_10000C5D4();
  sub_10001740C();
  v18 = sub_100022E54();
  v19 = 0xD000000000000010;
  sub_10002F798(v18, v20, v21, v22, v23, v24, v25, v26, v483, v484);
  v27 = sub_1000077CC();
  sub_100021AEC(v27);
  v28 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  sub_100050758();
  sub_10002F700();
  sub_10001740C();
  v29 = sub_10000FF64();
  sub_10004FDE0(v29, v30, v31, v32, v33, v34, v35, v36, v483, v484);
  v37 = sub_1000077CC();
  v38 = [v37 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v492 = v28;
  sub_100050758();
  sub_10002F700();
  sub_10001740C();
  v39 = sub_10000FF64();
  sub_10004FDE0(v39, v40, v41, v42, v43, v44, v45, v46, v483, v484);
  [a1 isIncoming];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v47 = sub_10000FF64();
  sub_10004FDE0(v47, v48, v49, v50, v51, v52, v53, v54, v483, v484);
  [a1 isOnHold];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v55 = sub_10000FF64();
  sub_10004FDE0(v55, v56, 0xE700000000000000, v57, v58, v59, v60, v61, v483, v484);
  [a1 isConnected];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v62 = sub_10000FF64();
  sub_10004FDE0(v62, v63, v64, v65, v66, v67, v68, v69, v483, v484);
  [a1 status];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v70 = sub_10000FF64();
  sub_10004FDE0(v70, v71, 0xE900000000000064, v72, v73, v74, v75, v76, v483, v484);
  [a1 isConferenced];
  v77 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v78 = sub_10000FF64();
  sub_10004FDE0(v78, v79, v80, v81, v82, v83, v84, v85, v483, v484);
  [a1 callDuration];
  sub_100017248();
  if (v88 ^ v89 | v87)
  {
    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  if (v86 >= 0.0 && (v90 & 1) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  sub_100035D70();
  if (v88 ^ v89 | v87)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    sub_100007E54();
    goto LABEL_18;
  }

  sub_100035C84();
  if (!v88)
  {
    goto LABEL_85;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v91];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v92 = sub_10000FF64();
  sub_10004FDE0(v92, v93, v94, v95, v96, v97, v98, v99, v483, v484);
  [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "isJunk")}];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v100 = sub_10000FF64();
  sub_10004FDE0(v100, v101, v102, v103, v104, v105, v106, v107, v483, v484);
  v108 = v495[0];

  sub_100050758();
  swift_isUniquelyReferenced_nonNull_native();
  v495[0] = v108;
  v109 = sub_1000115A4();
  sub_10004FDE0(v109, v110, v111, v112, v113, v114, v115, v116, v483, v484);
  [a1 junkConfidence];
  sub_1000510B0();
  sub_100050758();
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v117 = sub_10000FF64();
  sub_10004FDE0(v117, v118, v119, v120, v121, v122, v123, v124, v483, v484);
  [a1 identificationCategory];
  sub_10005113C();
  sub_100050758();
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v125 = sub_10000FF64();
  sub_10004FDE0(v125, v126, v127, v128, v129, v130, v131, v132, v483, v484);
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  NSNumber.init(BOOLeanLiteral:)([a1 wasScreened]);
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v133 = sub_10000FF64();
  sub_10002F798(v133, v134, v135, v136, v137, v138, v139, v140, v483, v484);
  v141 = [a1 wasScreened];
  if (v141)
  {
    LOBYTE(v141) = [a1 isScreening] ^ 1;
  }

  a3 = &_s10Foundation3URLVMa_ptr_0;
  isa = NSNumber.init(BOOLeanLiteral:)(v141).super.super.isa;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  sub_10004FDE0(isa, 0xD000000000000012, 0x8000000100578C10, v143, v144, v145, v146, v147, v483, v484);
  [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "liveVoicemailUnavailableReason")}];
  sub_10000C304();
  sub_10001740C();
  v148 = sub_1000115A4();
  sub_10004FDE0(v148, v149, v150, v151, v152, v153, v154, v155, v483, v484);
  v156 = [a1 recordingSession];
  if (v156)
  {
    v157 = v156;
    sub_100455C24(v156);
  }

  v158 = [a1 recordingDisabledError];
  if (v158 && (v495[0] = v158, sub_10026D814(&unk_1006A2610, &qword_10057D4A0), sub_100006AF0(0, &qword_1006A2B90, NSError_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v159 = v496;
    [objc_allocWithZone(NSNumber) initWithBool:0];
    sub_10002F700();
    sub_10001740C();
    v160 = sub_10000FF64();
    sub_10004FDE0(v160, v161, v162, v163, v164, v165, v166, v167, v483, v484);
    [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v159, "code")}];
    sub_10002F700();
    sub_10001740C();
    v168 = sub_10000FF64();
    sub_10004FDE0(v168, v169, v170, v171, v172, v173, v174, v175, v483, v484);
  }

  else
  {
    [objc_allocWithZone(NSNumber) initWithBool:1];
    sub_10000C304();
    sub_10001740C();
    v176 = sub_1000115A4();
    sub_10004FDE0(v176, v177, v178, v179, v180, v181, v182, v183, v483, v484);
  }

  if (qword_1006A0C28 != -1)
  {
    goto LABEL_86;
  }

LABEL_18:
  v184 = [a1 callUUID];
  v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v186 = sub_1000513D8(v185);

  if (v186)
  {
    swift_endAccess();
    [objc_allocWithZone(a3[59]) initWithBool:1];
    sub_10002F700();
    sub_10001740C();
    v187 = sub_10000FF64();
    sub_10004FDE0(v187, v188, v189, v190, v191, v192, v193, v194, v483, v484);
    [objc_allocWithZone(a3[59]) initWithInteger:sub_1003EDCD8()];
    sub_10002F700();
    sub_10001740C();
    v195 = sub_10000FF64();
    sub_10004FDE0(v195, v196, v197, v198, v199, v200, v201, v202, v483, v484);
    sub_1003EDD40();
    sub_100017248();
    if (!(v88 ^ v89 | v87))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    sub_100035D70();
    if (v88 ^ v89 | v87)
    {
      goto LABEL_87;
    }

    sub_100035C84();
    if (!v88)
    {
      goto LABEL_88;
    }

    [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v203];
    sub_10002F700();
    sub_10001740C();
    a3 = &_s10Foundation3URLVMa_ptr_0;
    v204 = sub_10000FF64();
    sub_10002F798(v204, v205, v206, v207, v208, v209, v210, v211, v483, v484);
    v212 = [a1 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008D34();
    v213 = sub_100006C30();
    sub_100384708(v213, v214, v215, v216, v217, v218, v219, v220, v483, v484);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    [objc_allocWithZone(a3[59]) initWithBool:0];
    sub_10000C304();
    sub_10001740C();
    v221 = sub_1000115A4();
    sub_10004FDE0(v221, v222, v223, v224, v225, v226, v227, v228, v483, v484);
  }

  v229 = sub_1000077CC();
  v230 = [v229 isSystemProvider];

  if (v230)
  {
    v231 = [a1 dateSentInvitation];
    v232 = v490;
    if (v231)
    {
      v233 = v231;
      v230 = v486;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v234 = [a1 dateCreated];
      v19 = v484;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v235 = *(v488 + 8);
      v235(v19, v491);
      sub_100017248();
      if (!(v88 ^ v89 | v87))
      {
        goto LABEL_89;
      }

      if (v236 <= -9.22337204e18)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v236 >= 9.22337204e18)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v229 = v236;
      [objc_allocWithZone(a3[59]) initWithLongLong:v236];
      sub_10000C304();
      sub_10001740C();
      v237 = sub_1000115A4();
      sub_10004FDE0(v237, v238, v239, v240, v241, v242, v243, v244, v483, v484);
      v235(v486, v491);
      v19 = 0xD000000000000010;
    }
  }

  else
  {
    v232 = v490;
  }

  v245 = [a1 dateConnected];
  if (!v245)
  {
    goto LABEL_49;
  }

  v229 = v245;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v246 = [a1 dateStartedConnecting];
  if (!v246)
  {
    (*(v488 + 8))(v232, v491);
    goto LABEL_49;
  }

  v247 = v246;
  v230 = v487;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  if (v248 * 1000.0 < 0.0)
  {
    [objc_allocWithZone(a3[59]) initWithInteger:0];
    sub_10000C304();
    sub_10001740C();
    v249 = sub_1000115A4();
    sub_10004FDE0(v249, v250, v251, v252, v253, v254, v255, v256, v483, v484);
    if (qword_1006A0B10 == -1)
    {
LABEL_38:
      v257 = type metadata accessor for Logger();
      sub_1000075F0(v257, qword_1006BA5B0);
      v258 = a1;
      v229 = Logger.logObject.getter();
      v230 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v229, v230))
      {
        v259 = sub_100005274();
        v260 = sub_100005E84();
        v495[0] = v260;
        *v259 = 136315138;
        v261 = [v258 provider];
        v262 = [v261 identifier];

        v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v265 = v264;

        v266 = sub_10002741C(v263, v265, v495);

        *(v259 + 4) = v266;
        _os_log_impl(&_mh_execute_header, v229, v230, "Connection time is negative, %s is likely processing a callkit action incorrectly", v259, 0xCu);
        sub_100009B7C(v260);
        v77 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
        sub_100005F40();
        sub_100005F40();
      }

      v267 = sub_10000D544();
      (v229)(v267);
      v268 = v490;
      goto LABEL_48;
    }

LABEL_92:
    sub_1000085AC();
    goto LABEL_38;
  }

  sub_100017248();
  if (!(v88 ^ v89 | v87))
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  sub_100035D70();
  if (v88 ^ v89 | v87)
  {
    goto LABEL_93;
  }

  sub_100035C84();
  if (!v88)
  {
    goto LABEL_94;
  }

  v229 = v269;
  [objc_allocWithZone(a3[59]) initWithUnsignedLongLong:v269];
  sub_10000C304();
  sub_10001740C();
  v270 = sub_1000115A4();
  sub_10004FDE0(v270, v271, v272, v273, v274, v275, v276, v277, v483, v484);
  v278 = sub_10000D544();
  (v229)(v278);
  v268 = v232;
LABEL_48:
  (v229)(v268, v230);
LABEL_49:
  sub_10005142C(a1);
  sub_10000C304();
  sub_10001740C();
  v279 = sub_1000115A4();
  sub_10004FDE0(v279, v280, 0xE800000000000000, v281, v282, v283, v284, v285, v483, v484);
  [a1 disconnectedReason];
  [sub_100022004() initWithInt:v229];
  sub_10000C304();
  sub_10001740C();
  v286 = sub_1000115A4();
  sub_10004FDE0(v286, v287, 0xEA00000000006E6FLL, v288, v289, v290, v291, v292, v483, v484);
  v293 = v495[0];
  v294 = sub_100036F90(a1);
  if (v294)
  {
    v295 = v294;
    v230 = sub_1000077CC();
    v296 = [v230 isFaceTimeProvider];

    if (!v296)
    {

      v229 = sub_1000077CC();
      v230 = [v229 isTelephonyProvider];

      if (v230)
      {
        if (sub_100036F90(a1))
        {
          sub_10000C8EC();
          *&v496 = v298;
          *(&v496 + 1) = v299;
          AnyHashable.init<A>(_:)();
          sub_100006600(v495, v229);

          sub_100006780(v495);
        }

        else
        {
          v496 = 0u;
          v497 = 0u;
        }

        LODWORD(v229) = sub_100457574(&v496);
        [objc_allocWithZone(NSNumber) initWithInteger:v229];
        sub_10000C304();
        sub_10001740C();
        v308 = sub_1000115A4();
        sub_10004FDE0(v308, v309, v310, v311, v312, v313, v314, v315, v483, v484);
        v293 = v495[0];
        sub_1000099A4(&v496, &unk_1006A2D10, &unk_10057D940);
      }

      goto LABEL_64;
    }

    v493 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v494 = v297;
    AnyHashable.init<A>(_:)();
    sub_100006600(v495, v295);

    sub_100006780(v495);
    if (*(&v497 + 1))
    {
      type metadata accessor for TUCallFaceTimeTransportType(0);
      if (swift_dynamicCast())
      {
        if (v493 == 2)
        {
          v229 = 2;
        }

        else
        {
          v229 = v493 == 1;
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_1000099A4(&v496, &unk_1006A2D10, &unk_10057D940);
    }

    v229 = 0;
LABEL_61:
    [objc_allocWithZone(NSNumber) initWithInteger:v229];
    sub_10000C304();
    sub_10001740C();
    v300 = sub_1000115A4();
    sub_10004FDE0(v300, v301, v302, v303, v304, v305, v306, v307, v483, v484);
    v293 = v495[0];
  }

LABEL_64:
  if (v489)
  {
    v229 = "smart_hold_failure_reason";
    v316 = v489;
    sub_10000C304();
    sub_10001740C();
    v317 = sub_1000115A4();
    sub_10004FDE0(v317, v318, v319, v320, v321, v322, v323, v324, v483, v484);
  }

  else
  {
    v325 = sub_100023E48(v19 + 8, 0x8000000100578C90, v293);
    if (v325)
    {
      v229 = "smart_hold_failure_reason";
      v326 = v325;
      sub_10000C304();
      sub_10001740C();
      v327 = sub_1000115A4();
      sub_10004FDE0(v327, v328, v329, v330, v331, v332, v333, v334, v483, v484);
    }
  }

  [a1 isHostedOnCurrentDevice];
  [sub_100022004() v77[29]];
  sub_10000C304();
  sub_10001740C();
  v335 = sub_1000115A4();
  sub_10004FDE0(v335, v336, 0xE800000000000000, v337, v338, v339, v340, v341, v483, v484);
  [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "providerEndedReason")}];
  sub_10000C304();
  sub_10001740C();
  v342 = sub_1000115A4();
  sub_10004FDE0(v342, v343, v344, v345, v346, v347, v348, v349, v483, v484);
  [objc_allocWithZone(NSNumber) initWithInteger:sub_10005173C(a1)];
  sub_10000C304();
  sub_10001740C();
  v350 = sub_1000115A4();
  sub_10004FDE0(v350, v351, v352, v353, v354, v355, v356, v357, v483, v484);
  v358 = [a1 disconnectedReason];
  [objc_allocWithZone(NSNumber) v77[29]];
  sub_10000C304();
  sub_10001740C();
  v359 = sub_1000115A4();
  sub_10004FDE0(v359, v360, v361, v362, v363, v364, v365, v366, v483, v484);
  v367 = [a1 smartHoldingActiveSessionCount];
  [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(a1, "smartHoldingActiveSessionCount")}];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v368 = sub_10000FF64();
  sub_10004FDE0(v368, v369, v370, v371, v372, v373, v374, v375, v483, v484);
  [objc_allocWithZone(NSNumber) v77[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v376 = sub_1000115A4();
  sub_10004FDE0(v376, v377, v378, v379, v380, v381, v382, v383, v483, v484);
  [objc_allocWithZone(NSNumber) v77[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v384 = sub_1000115A4();
  sub_10004FDE0(v384, v385, v386, v387, v388, v389, v390, v391, v483, v484);
  v392 = [a1 wasSmartHoldingTipPresented];
  if (v367)
  {
    v393 = v392;
  }

  else
  {
    v393 = 0;
  }

  v394 = [objc_allocWithZone(NSNumber) v77[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  sub_10004FDE0(v394, v19 + 7, 0x8000000100578D30, v395, v396, v397, v398, v399, v483, v484);
  v400 = [a1 smartHoldingError];
  v401 = v400;
  if (v400)
  {
  }

  v402 = v401 != 0;
  [objc_allocWithZone(NSNumber) initWithBool:v402];
  sub_10000C304();
  sub_10001740C();
  v403 = sub_1000115A4();
  sub_10004FDE0(v403, v404, v405, v406, v407, v408, v409, v410, v483, v484);
  v411 = [a1 smartHoldingError];
  if (v411)
  {
    v412 = v411;
    swift_getErrorValue();
    v413 = v499;
    sub_1000083C0();
    v415 = v414;
    v417 = *(v416 + 64);
    __chkstk_darwin(v418, v419);
    v421 = &v483 - ((v420 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v415 + 16))(v421);

    v402 = v421;
    v422 = dispatch thunk of Error._domain.getter();
    v424 = v423;
    (*(v415 + 8))(v421, v413);
    v425 = [a1 smartHoldingError];
    if (v425)
    {
      v426 = v425;
      swift_getErrorValue();
      v427 = v498;
      sub_1000083C0();
      v429 = v428;
      v431 = *(v430 + 64);
      __chkstk_darwin(v432, v433);
      v435 = &v483 - ((v434 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v429 + 16))(v435);

      v436 = dispatch thunk of Error._code.getter();
      (*(v429 + 8))(v435, v427);
      v495[0] = v422;
      v495[1] = v424;
      v437._countAndFlagsBits = 8250;
      v437._object = 0xE200000000000000;
      String.append(_:)(v437);
      *&v496 = v436;
      v438._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v438);

      v402 = v492;
      sub_100050758();
      sub_10000C5D4();
      sub_10001740C();
      v439 = sub_100022E54();
      sub_10004FDE0(v439, v440, v441, v442, v443, v444, v445, v446, v483, v484);
    }

    else
    {
    }
  }

  [a1 commTrustScore];
  [sub_100022004() initWithInt:v402];
  sub_10000C5D4();
  sub_10001740C();
  v447 = sub_100022E54();
  sub_10002F798(v447, v448, v449, v450, v451, v452, v453, v454, v483, v484);
  [a1 receptionistState];
  [sub_100022004() initWithInt:v402];
  sub_10000C5D4();
  sub_10001740C();
  v455 = sub_100022E54();
  sub_10004FDE0(v455, v456, v457, v458, v459, v460, v461, v462, v483, v484);
  [a1 specialUnknown];
  v463 = [sub_100022004() initWithBool:v402];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10001740C();
  sub_10004FDE0(v463, 0x5F6C616963657073, 0xEF6E776F6E6B6E75, v464, v465, v466, v467, v468, v483, v484);
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v469 = type metadata accessor for Logger();
  sub_1000075F0(v469, qword_1006BA5B0);
  v470 = Logger.logObject.getter();
  v471 = static os_log_type_t.default.getter();
  if (sub_10000689C(v471))
  {
    v472 = sub_100005274();
    v473 = sub_100005E84();
    v495[0] = v473;
    *v472 = 136315138;

    Dictionary.description.getter();

    v474 = sub_100006C30();
    v477 = sub_10002741C(v474, v475, v476);

    *(v472 + 4) = v477;
    sub_10000A154();
    _os_log_impl(v478, v479, v480, v481, v482, 0xCu);
    sub_100009B7C(v473);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_10004FCC0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10001B8C8(v1, &selRef_contactName);
    if (v2)
    {

      return 1;
    }

    else
    {
      sub_10001B8C8(v1, &selRef_mapName);
      if (v3)
      {

        return 2;
      }

      else
      {
        sub_10001B8C8(v1, &selRef_suggestedName);
        if (v4)
        {

          return 3;
        }

        else
        {
          sub_10001B8C8(v1, &selRef_callDirectoryLabel);
          if (v5)
          {

            return 4;
          }

          else
          {
            v6 = [v1 location];
            if (v6)
            {

              return 5;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004FE08(const void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v74 = a3;
  v73 = a2;
  v75 = a1;
  v5 = type metadata accessor for DispatchWallTime();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  v8 = __chkstk_darwin(v5, v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v70 = &v65 - v11;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66, v13);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v65 - v18;
  v20 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  v35 = (&v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v4[2];
  *v35 = v36;
  (*(v31 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v30);
  v68 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = (*(v31 + 8))(v35, v30);
  if (v36)
  {
    v38 = type metadata accessor for AudioDescriptor();
    v39 = v75;
    sub_100343100(v75 + *(v38 + 20), v24, &unk_1006A2B60, &qword_100581170);
    if (sub_100015468(v24, 1, v25) == 1)
    {
      sub_100009A5C(v24, &unk_1006A2B60, &qword_100581170);
      v40 = v4[4];
      memcpy(v78, v39, sizeof(v78));
      sub_100343100(v73, v19, &unk_1006A2BF0, &unk_100585F10);
      if (sub_100015468(v19, 1, v38) == 1)
      {
        sub_100009A5C(v19, &unk_1006A2BF0, &unk_100585F10);
        sub_1002BA0C4(v77);
      }

      else
      {
        memcpy(v76, v19, sizeof(v76));
        sub_100042F60(v76, v79);
        sub_100045B00(v19, type metadata accessor for AudioDescriptor);
        memcpy(v79, v76, 0xA8uLL);
        ScreenSharingActivityManager.carPlayDidDisconnect()();
        memcpy(v77, v79, sizeof(v77));
      }

      memcpy(v79, v77, 0xA8uLL);
      sub_10033E150(v78, v79);
      return sub_100009A5C(v77, &unk_1006A41A0, &qword_10057EFE0);
    }

    else
    {
      sub_10004A200();
      swift_beginAccess();
      v41 = v4[15];

      sub_100050618();
      v43 = v42;

      if (v43)
      {
        v44 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10057D690;
        v46 = UUID.uuidString.getter();
        v48 = v47;
        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = sub_100009D88();
        *(v45 + 32) = v46;
        *(v45 + 40) = v48;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v49 = v4[3];
        sub_1000166CC(0);
      }

      else
      {
        v79[4] = sub_100342918;
        v79[5] = v4;
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 1107296256;
        v79[2] = sub_100004CEC;
        v79[3] = &unk_100628338;
        _Block_copy(v79);
        v77[0] = _swiftEmptyArrayStorage;
        sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);

        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = type metadata accessor for DispatchWorkItem();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        v53 = DispatchWorkItem.init(flags:block:)();

        v54 = v4[14];
        v4[14] = v53;

        v56 = v4[17];
        v55 = v4[18];

        v58 = v56(v57);

        v59 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_10057D690;
        *(v60 + 56) = &type metadata for Double;
        *(v60 + 64) = &protocol witness table for Double;
        *(v60 + 32) = v58;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v61 = v69;
        static DispatchWallTime.now()();
        v62 = v70;
        + infix(_:_:)();
        v63 = v72;
        v64 = *(v71 + 8);
        v64(v61, v72);
        OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

        v64(v62, v63);
      }

      return sub_100045B00(v29, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100050618()
{
  sub_100005EF4();
  sub_10000FC34();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007FDC();
  sub_10000D304();
  if (*(v0 + 16))
  {
    v7 = *(v0 + 40);
    sub_10000A450();
    sub_10000F1E0(v8, v9);
    sub_10000790C();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_10000C898();
    do
    {
      sub_100017E34(v10);
      if (!v11)
      {
        break;
      }

      v12 = sub_10000C2D0();
      v13(v12);
      sub_10000A450();
      sub_10000F1E0(&qword_1006A2620, v14);
      sub_10000BC34();
      v15 = sub_1000076FC();
      v16(v15);
      v10 = v0 + 1;
    }

    while ((v1 & 1) == 0);
  }

  sub_100005EDC();
}

id sub_100050758()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

void sub_1000507E8(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor;
  v2 = *(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v7 = *(v1 + 40);
  *(v1 + 26) = 0u;
  sub_10005081C(v2, v3, v4, v5, v6);
}

void sub_10005081C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_100050898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for SharePlayAvailabilityManager.CallAndHandle()
{
  result = qword_1006A8178;
  if (!qword_1006A8178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050924(void *a1)
{
  v2 = [a1 value];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();
    sub_100006064();
  }

  sub_100050CF0(a1);
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v2 isoCountryCode:v4];

  if (v5)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      if (qword_1006A0AD0 != -1)
      {
        sub_100008688();
      }

      v18 = type metadata accessor for Logger();
      sub_1000075F0(v18, qword_1006A80E0);
      v19 = v5;
      v20 = a1;

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_100005E84();
        v24 = swift_slowAlloc();
        v31 = sub_100005E84();
        *v23 = 138412802;
        *(v23 + 4) = v19;
        *(v23 + 12) = 2112;
        *(v23 + 14) = v20;
        *v24 = v5;
        v24[1] = v20;
        *(v23 + 22) = 2080;
        v19;
        v25 = v20;
        v26 = sub_100006884();
        *(v23 + 24) = sub_10002741C(v26, v27, v28);
        _os_log_impl(&_mh_execute_header, v21, v22, "[SharePlayAvailabilityManager] Normalized handle, normalized: %@ vs. handle: %@, for fn: %s", v23, 0x20u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100009B7C(v31);
        sub_100005F40();
        sub_100005F40();
      }
    }

    sub_100006048();
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v6 = type metadata accessor for Logger();
    sub_1000075F0(v6, qword_1006A80E0);
    v29 = a1;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_100007C08();
      v10 = sub_10000777C();
      v30 = sub_100005E84();
      *v9 = 138412546;
      *(v9 + 4) = v29;
      *v10 = v29;
      *(v9 + 12) = 2080;
      v11 = v29;
      v12 = sub_100006884();
      *(v9 + 14) = sub_10002741C(v12, v13, v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "[SharePlayAvailabilityManager] Cannot normalize handle: %@ as phone number, %s", v9, 0x16u);
      sub_100009A04(v10, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v30);
      sub_100005F40();
      sub_100005F40();
    }

    sub_100006048();

    v17 = v15;
  }
}

uint64_t sub_100050D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100050DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100050E78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100050EC0(_DWORD *a1)
{
  v2 = sub_10005104C(a1);
  if (v3)
  {
    sub_1003840D4(v2, v3);
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688();
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006A80E0);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      sub_100007C08();
      v7 = sub_10000FE98();
      v8 = sub_100005E84();
      v17 = v8;
      *a1 = 136315394;
      v9 = sub_10002741C(0x6C4165766F6D6572, 0xEF293A726F66286CLL, &v17);
      sub_10001866C(v9);
      sub_10000C4A4(&_mh_execute_header, v10, v11, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v12, v13, v14, v15, oslog);
      sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100009B7C(v8);
      sub_100005F40();
      sub_100005F40();
    }
  }
}

uint64_t sub_10005104C(void *a1)
{
  v1 = [a1 normalizedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000513E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100005208();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

id sub_10005142C(void *a1)
{
  [a1 isVideo];
  if ([a1 isTTY])
  {
    sub_10000D39C();
    v2._countAndFlagsBits = 1498698847;
    v2._object = 0xE400000000000000;
    String.append(_:)(v2);
  }

  if ([a1 isEmergency])
  {
    sub_10000D39C();
    v3._countAndFlagsBits = 0x6E656772656D455FLL;
    v3._object = 0xEA00000000007963;
    String.append(_:)(v3);
  }

  if ([a1 isVoicemail])
  {
    sub_10000D39C();
    v4._countAndFlagsBits = 0x616D6563696F565FLL;
    v4._object = 0xEA00000000006C69;
    String.append(_:)(v4);
  }

  if ([a1 isSOS])
  {
    sub_10000D39C();
    v5._countAndFlagsBits = 1397707615;
    v5._object = 0xE400000000000000;
    String.append(_:)(v5);
  }

  if ([a1 isRTT])
  {
    sub_10000D39C();
    v6._countAndFlagsBits = 1414812255;
    v6._object = 0xE400000000000000;
    String.append(_:)(v6);
  }

  sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  sub_100005ED0();
  return sub_100050758();
}

void sub_10005161C()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[79];
}

uint64_t sub_100051630()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10005166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a20 + 16);

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_10005173C(void *a1)
{
  v1 = [a1 initialLinkType];
  if (v1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x60403020100uLL >> (8 * v1));
  }
}

void sub_1000517AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_100051990;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000518F8;
  v7[3] = &unk_100631090;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10005188C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000518F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100051B88(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10000B6F4(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
LABEL_11:
      sub_100015C08();
      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_100051C70()
{
  result = qword_1006A7570;
  if (!qword_1006A7570)
  {
    sub_100006AF0(255, &qword_1006A34B0, off_1006165E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7570);
  }

  return result;
}

void sub_100051D0C()
{
  sub_100005EF4();
  v1 = v0;
  v68 = v2;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v15);
  v69 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = sub_100007FEC(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  sub_100007FDC();
  v32 = v31 - v30;
  v33 = v4[2].n128_u64[0];
  if (v33 - 1 > 1)
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v40 = type metadata accessor for Logger();
    sub_10000AF9C(v40, qword_1006BA5F8);
    v36 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v36, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    v72.n128_u64[0] = swift_slowAlloc();
    *v42 = 136315138;
    *&v76[0] = v33;
    type metadata accessor for TUTranscriptionAvailability(0);
    v43 = String.init<A>(reflecting:)();
    v45 = sub_10002741C(v43, v44, &v72);

    *(v42 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v41, "Invalid transcription availability passed in: %s", v42, 0xCu);
    sub_1000101A8();
    goto LABEL_12;
  }

  v64 = v29;
  v65 = v14;
  v34 = v4[1].n128_u64[1];
  v66 = v15;
  v67 = v4[1].n128_i64[0];

  if (sub_1000524B0(v4) & 1) != 0 || (sub_10029A8D0(v4))
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5F8);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_14;
    }

    v38 = swift_slowAlloc();
    v72.n128_u64[0] = swift_slowAlloc();
    *v38 = 136315138;
    v39 = sub_10002741C(v67, v34, &v72);

    *(v38 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v36, v37, "we already have the speech assets (or are fetching them): for %s, not downloading again", v38, 0xCu);
    sub_1000101A8();
LABEL_12:
    sub_100005F40();
LABEL_14:

    goto LABEL_15;
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v61 = v5;
  v46 = type metadata accessor for Logger();
  sub_10000AF9C(v46, qword_1006BA5F8);
  v76[0] = *v4;

  sub_100052980(v76, &v72);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  sub_1000529DC(v76);

  v62 = v47;
  v60 = v8;
  if (os_log_type_enabled(v47, v48))
  {
    v59 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v59 = 136315138;
    v49 = v4[1];
    v72 = *v4;
    v73 = v49;
    v74 = v4[2].n128_u64[0];

    sub_100052980(v76, v71);
    v50 = String.init<A>(reflecting:)();
    v52 = sub_10002741C(v50, v51, &v70);

    *(v59 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v62, v48, "downloadSpeechAssets for %s (it is necessary)", v59, 0xCu);
    sub_1000101A8();
    sub_100005F40();
  }

  else
  {
  }

  v53 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v54 = *&v1[v53];
  swift_isUniquelyReferenced_nonNull_native();
  v71[0] = *&v1[v53];
  sub_10037831C(1, v4);
  *&v1[v53] = v71[0];
  swift_endAccess();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  (*(v64 + 104))(v32, enum case for DispatchQoS.QoSClass.default(_:), v24);
  v63 = static OS_dispatch_queue.global(qos:)();
  (*(v64 + 8))(v32, v24);
  v55 = swift_allocObject();
  v56 = v4[1];
  *(v55 + 24) = *v4;
  *(v55 + 16) = v1;
  *(v55 + 40) = v56;
  *(v55 + 56) = v4[2].n128_u64[0];
  *(v55 + 64) = v33;
  *(v55 + 72) = v67;
  *(v55 + 80) = v34;
  *(v55 + 88) = v68 & 1;
  v74 = sub_10029C6F0;
  v75 = v55;
  v72.n128_u64[0] = _NSConcreteStackBlock;
  v72.n128_u64[1] = 1107296256;
  v73.n128_u64[0] = sub_100004CEC;
  v73.n128_u64[1] = &unk_100622928;
  v57 = _Block_copy(&v72);

  sub_100052980(v76, v71);
  v58 = v1;
  static DispatchQoS.unspecified.getter();
  v71[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v57);

  (*(v60 + 8))(v65, v61);
  (*(v69 + 8))(v23, v66);

LABEL_15:
  sub_100005EDC();
}

uint64_t sub_100052460()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1000524B0(__n128 *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  v5 = *&v1[v4];

  v6 = sub_1000527B0(a1, v5);

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000AF9C(v7, qword_1006BA5F8);
  sub_1000359F0(*a1, a1[1], v8, v9, v10, v11, v12, v13, v14, v15, v31[0], v31[1], v32.n128_i8[0], v32.n128_i64[1], v33.n128_i64[0], v33.n128_i64[1], v34, v35, v36[0], v36[1], v36[2], v36[3], v16);
  sub_100052980(v37, &v32);
  v17 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_1000529DC(v38);
  sub_1000529DC(v37);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = a1[1];
    v32 = *a1;
    v33 = v21;
    v34 = a1[2].n128_i64[0];
    sub_100052980(v38, v31);
    sub_100052980(v37, v31);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, v36);

    *(v20 + 4) = v24;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v6 & 1;
    *(v20 + 18) = 2080;
    v25 = *&v2[v4];
    sub_100052B8C();

    v26 = Dictionary.description.getter();
    v28 = v27;

    v29 = sub_10002741C(v26, v28, v36);

    *(v20 + 20) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "asset: %s, hasSpeechAsset: %{BOOL}d %s", v20, 0x1Cu);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  return v6 & 1;
}

unint64_t sub_100052710(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_10000D310();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v7);
  Hasher._finalize()();
  v9 = sub_10004A0C4();

  return sub_1000527FC(v9, v10);
}

uint64_t sub_1000527B0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_100052710(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1000527FC(uint64_t *a1, uint64_t a2)
{
  v21 = v2 + 64;
  for (i = a2 & ~(-1 << *(v2 + 32)); ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v19)
  {
    v5 = (*(v20 + 48) + 40 * i);
    v6 = *v5;
    v7 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[4];
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v10);
    v11 = Hasher._finalize()();
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v16);
    v17 = Hasher._finalize()();

    if (v11 == v17)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100052A30()
{
  _StringGuts.grow(_:)(58);
  sub_10000E540("(localeIdentifier=");
  v7 = *v0;
  v10 = v0[1];

  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  sub_10000E540(", assetIdentifier=");
  v8 = v0[2];
  v11 = v0[3];

  v2._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x616C69617661202CLL;
  v3._object = 0xEF3D7974696C6962;
  String.append(_:)(v3);
  v9 = v0[4];
  type metadata accessor for TUTranscriptionAvailability(0);
  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

__n128 sub_100052B64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100052B8C()
{
  result = qword_1006A2CE8;
  if (!qword_1006A2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CE8);
  }

  return result;
}

uint64_t sub_100052BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100052C20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100052C68()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0;
    v3 = qword_1006A0B30;
    swift_unknownObjectRetain();
    if (v3 != -1)
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
      _os_log_impl(&_mh_execute_header, v5, v6, "Removing observer for AVAudioSession mute state change", v7, 2u);
    }

    v8 = v2[5];
    v9 = v2[6];
    ObjectType = swift_getObjectType();
    v14[3] = swift_getObjectType();
    v14[0] = v1;
    v11 = AVAudioSessionInputMuteChangeNotification;
    v12 = *(v9 + 136);
    swift_unknownObjectRetain();
    v12(2, v14, v11, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_100009B7C(v14);
    v13 = v2[9];
    v2[9] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100052DF8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009B14(a2, a2[3]);
  [v3 removeObserverForType:a1 observer:_bridgeAnythingToObjectiveC<A>(_:)() name:a3];

  return swift_unknownObjectRelease();
}

void *sub_100052E74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  sub_1000051F8(v0[7]);
  v4 = v0[9];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100052EAC()
{
  sub_100052E74();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void sub_100052EE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a1 = xmmword_1005821C0;

  v5 = [a2 routeController];
  v6 = [v5 pickedRoute];

  if (!v6)
  {
    return;
  }

  v7 = *(a1 + 8);
  *a1 = xmmword_1005821D0;

  if ([v6 isBluetooth])
  {
    v8 = xmmword_1005821E0;
LABEL_8:
    v12 = v8;
    goto LABEL_9;
  }

  if ([v6 isSpeaker])
  {
    v8 = xmmword_1005821F0;
    goto LABEL_8;
  }

  if ([v6 isReceiver])
  {
    v8 = xmmword_100582200;
    goto LABEL_8;
  }

  v12 = xmmword_100582210;
  if (([v6 isWiredHeadset] & 1) == 0 && (objc_msgSend(v6, "isWiredHeadphones") & 1) == 0)
  {
    v11 = [v6 isAuxiliary];

    if ((v11 & 1) == 0)
    {
      return;
    }

    v9 = xmmword_100582220;
    goto LABEL_10;
  }

LABEL_9:

  v9 = v12;
LABEL_10:
  v10 = *(a1 + 8);
  *a1 = v9;
}

uint64_t sub_100053070()
{
  sub_100006810();
  v1 = *(v0 + 352);
  sub_1003A1B00(1);
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  sub_100015FC8(v2);

  return sub_1003465E4();
}

void sub_100053100(uint64_t a1)
{
  v6 = [*(a1 + 32) callCenter];
  v2 = [v6 conversationManager];
  v3 = [v2 handoffEligibleConversation];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005317C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 UUID];
    v9 = [v5 activitySessions];
    v31 = 138412546;
    v32 = v8;
    v33 = 2048;
    v34 = [v9 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversation: %@ activitySessions.count: %lu", &v31, 0x16u);
  }

  if (v5)
  {
    v10 = [*(a1 + 32) featureFlags];
    if ([v10 sharePlayInCallsEnabled])
    {
      v11 = [v6 isSharePlayCapable];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 provider];
    v13 = [v12 isDefaultProvider];

    if (v13 & 1) != 0 || (v11)
    {
      if ([v5 isContinuitySession])
      {
        v14 = [v5 resolvedAudioVideoMode];
      }

      else
      {
        v14 = [v5 avMode];
      }

      if (v14 <= 2)
      {
        *(*(*(a1 + 48) + 8) + 24) = qword_10057A1D8[v14];
      }

      v15 = [v5 activitySessions];
      if ([v15 count])
      {
        v16 = ([v5 state] != 0) | v11;

        if ((v16 & 1) == 0)
        {
          goto LABEL_32;
        }

        *(*(*(a1 + 48) + 8) + 24) = 2;
        v17 = [v5 activitySessions];
        v15 = [v17 anyObject];

        if (v15 && ([v15 state] == 1) | v11 & 1)
        {
          v18 = [v15 activity];
          v19 = [v18 metadata];
          v20 = [v19 context];

          if (v20)
          {
            v21 = [v20 typedIdentifier];
            v22 = [v21 isEqualToString:TUConversationActivityContextIdentifierScreenSharing];

            if (v22)
            {
              v23 = [v15 isLocallyInitiated];
              v24 = 3;
              if (!v23)
              {
                v24 = 4;
              }

              *(*(*(a1 + 56) + 8) + 24) = v24;
            }

            else
            {
              v25 = [v20 typedIdentifier];
              v26 = [v25 isEqualToString:TUConversationActivityContextIdentifierWatchTogether];

              if (v26)
              {
                v27 = *(*(a1 + 56) + 8);
                v28 = 2;
              }

              else
              {
                v29 = [v20 typedIdentifier];
                v30 = [v29 isEqualToString:TUConversationActivityContextIdentifierListenTogether];

                v27 = *(*(a1 + 56) + 8);
                if (v30)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = 5;
                }
              }

              *(v27 + 24) = v28;
            }
          }
        }
      }

      goto LABEL_32;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_32:
}

uint64_t sub_100053590()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_1000535D8(v0, v1, 0);

  return v2 & 1;
}

uint64_t sub_1000535D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v9, v10);
    sub_10004975C(v10);
    v7 = String._bridgeToObjectiveC()();
    a3 = [v3 BOOLForKey:v7];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_10004975C(v10);
  }

  return a3 & 1;
}

uint64_t sub_100053730(unint64_t *a1, void (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  sub_100007FDC();
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_10000ED20(a1, a2);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = objc_opt_self();
  sub_100007764();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v23 = 0;
  v13 = [v11 JSONObjectWithData:isa options:4 error:&v23];

  v14 = v23;
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    v15 = sub_100007764();
    sub_100049B14(v15, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = sub_100007764();
    sub_100049B14(v18, v19);

    v23 = 0u;
    v24 = 0u;
  }

  v21[0] = v23;
  v21[1] = v24;
  if (!*(&v24 + 1))
  {
    return 0;
  }

  sub_10003EBF0(v21, &v20);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  if (swift_dynamicCast())
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053974(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = sub_100007FEC(v4);
  v74 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10026D814(&qword_1006A6CE8, &qword_100582448);
  v13 = sub_100007FEC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  v20 = &v73 - v19;
  v21 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1000544C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID);
  v23 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID + 8);
  LOBYTE(v78) = 0;
  v76 = v12;
  v24 = v75;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v24)
  {
    v25 = *(v15 + 8);
    v26 = v20;
    return v25(v26, v76);
  }

  v27 = v11;
  v28 = v74;
  v75 = v4;
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs);
  LOBYTE(v78) = 1;
  sub_10000F708();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeStart);
  sub_1000103B0(2);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeEnd);
  sub_1000103B0(3);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration);
  sub_1000103B0(4);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LODWORD(v78) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endReason);
  v30 = sub_10000C74C(5);
  type metadata accessor for TUCallDisconnectedReason(v30);
  sub_100054AF0(&qword_1006A6CF8, type metadata accessor for TUCallDisconnectedReason);
  sub_10000EA80();
  sub_10000F708();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v31 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerErrorCode);
  sub_1000162EC(6);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  v32 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerEndedReason);
  sub_1000162EC(7);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs);
  sub_1000103B0(8);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_connectionTimeMs);
  sub_1000103B0(9);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v33 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relay);
  sub_1000162EC(10);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  v34 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_incoming);
  sub_10000A230(11);
  KeyedEncodingContainer.encode(_:forKey:)();
  v35 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_connected);
  sub_10000A230(12);
  KeyedEncodingContainer.encode(_:forKey:)();
  v36 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_currentlyGrouped);
  sub_10000A230(13);
  KeyedEncodingContainer.encode(_:forKey:)();
  v78 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges);
  LOBYTE(v79) = 14;
  sub_10026D814(&qword_1006A6D00, &qword_100582450);
  sub_100054D5C();
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v37 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason + 4);
  LODWORD(v78) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason);
  BYTE4(v78) = v37;
  v38 = sub_10000C74C(15);
  type metadata accessor for TUCallFilteredOutReason(v38);
  sub_100054AF0(&qword_1006A6D18, type metadata accessor for TUCallFilteredOutReason);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10000D4A4(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_verficationStatus);
  v39 = sub_10000C74C(16);
  type metadata accessor for TUCallVerificationStatus(v39);
  sub_100054AF0(&qword_1006A6D20, type metadata accessor for TUCallVerificationStatus);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v40 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_knownCallerStatus);
  sub_10000A230(17);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v41 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isOwnNumber);
  sub_10000A230(18);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v42 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isConversation);
  sub_10000A230(19);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_10000D4A4(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_nearbyMode);
  v43 = sub_10000C74C(20);
  type metadata accessor for TUCallNearbyMode(v43);
  sub_100054AF0(&qword_1006A6D28, type metadata accessor for TUCallNearbyMode);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v44 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_CID);
  v45 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_CID + 8);
  LOBYTE(v78) = 21;

  sub_100015238();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v44)
  {

    v46 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_fromLink);
    sub_10000A230(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    v47 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtStart);
    sub_10000A230(23);
    KeyedEncodingContainer.encode(_:forKey:)();
    v48 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtEnd);
    sub_10000A230(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    v49 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_returnedCall);
    sub_10000A230(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase;
    swift_beginAccess();
    (*(v28 + 16))(v27, v2 + v50, v75);
    LOBYTE(v79) = 26;
    sub_100054AF0(&qword_1006A6D30, &type metadata accessor for Date);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v27, v75);
    v51 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_startAsHandoff);
    sub_100008580(27);
    KeyedEncodingContainer.encode(_:forKey:)();
    v52 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endDueToHandoff);
    sub_100008580(28);
    KeyedEncodingContainer.encode(_:forKey:)();
    v53 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_remoteDoesHandoff);
    sub_100008580(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    v54 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSiriSuggested);
    sub_100008580(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v55 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownContact);
    sub_100008580(31);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isVerifiedAppleCare);
    sub_100008580(32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v57 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud);
    sub_100008580(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_junkConfidence);
    v59 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_junkConfidence + 8);
    LOBYTE(v79) = 34;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_identificationCategory);
    v61 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_identificationCategory + 8);
    LOBYTE(v79) = 35;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownCaller);
    sub_100008580(36);
    KeyedEncodingContainer.encode(_:forKey:)();
    v63 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_userScore);
    sub_100008580(37);
    KeyedEncodingContainer.encode(_:forKey:)();
    v64 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCall);
    sub_100008580(38);
    KeyedEncodingContainer.encode(_:forKey:)();
    v65 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCallWithImage);
    sub_100008580(39);
    KeyedEncodingContainer.encode(_:forKey:)();
    v66 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedThenAnswered);
    sub_100008580(40);
    KeyedEncodingContainer.encode(_:forKey:)();
    v67 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedUnanswered);
    sub_100008580(41);
    KeyedEncodingContainer.encode(_:forKey:)();
    v79 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_liveVoicemailStatus);
    v77 = 42;
    type metadata accessor for CSDLiveVoicemailStatus(0);
    sub_100054AF0(&qword_1006A6D38, type metadata accessor for CSDLiveVoicemailStatus);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v79) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_originatingUIType);
    v77 = 43;
    type metadata accessor for TUCallOriginatingUIType(0);
    sub_100054AF0(&qword_1006A6D40, type metadata accessor for TUCallOriginatingUIType);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v68 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_audioRoute);
    v69 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_audioRoute + 8);
    LOBYTE(v79) = 44;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v70 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_commTrustScore);
    sub_100008580(45);
    KeyedEncodingContainer.encode(_:forKey:)();
    v71 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_receptionistState);
    sub_100008580(46);
    KeyedEncodingContainer.encode(_:forKey:)();
    v72 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_specialUnknown);
    sub_100008580(47);
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v15 + 8);
    v26 = v20;
    return v25(v26, v76);
  }

  (*(v15 + 8))(v20, v76);
}

unint64_t sub_1000544C4()
{
  result = qword_1006A6CF0;
  if (!qword_1006A6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6CF0);
  }

  return result;
}

unint64_t sub_100054520(char a1)
{
  result = 0x444955556C6C6163;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
    case 3:
      result = 0x65766974616C6572;
      break;
    case 4:
    case 9:
    case 13:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F73616552646E65;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
    case 23:
    case 32:
    case 42:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x6D69547075746573;
      break;
    case 10:
      result = 0x79616C6572;
      break;
    case 11:
      result = 0x676E696D6F636E69;
      break;
    case 12:
      result = 0x657463656E6E6F63;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6D754E6E774F7369;
      break;
    case 19:
      result = 0x7265766E6F437369;
      break;
    case 20:
      result = 0x6F4D79627261656ELL;
      break;
    case 21:
      result = 4475203;
      break;
    case 22:
      result = 0x6B6E694C6D6F7266;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x64656E7275746572;
      break;
    case 26:
      result = 0x65736162656D6974;
      break;
    case 27:
      result = 0x4873417472617473;
      break;
    case 28:
      result = 0x6F54657544646E65;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x7553697269537369;
      break;
    case 31:
    case 36:
      result = 0x436E776F6E4B7369;
      break;
    case 33:
    case 41:
      result = 0xD000000000000012;
      break;
    case 34:
      result = 0x666E6F436B6E756ALL;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 37:
      result = 0x726F635372657375;
      break;
    case 38:
      result = 0x436465646E617262;
      break;
    case 39:
    case 40:
      result = 0xD000000000000014;
      break;
    case 43:
      result = 0xD000000000000011;
      break;
    case 44:
      result = 0x756F526F69647561;
      break;
    case 45:
      result = 0x737572546D6D6F63;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x556C616963657073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054AF0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RTCCSDCallInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
        JUMPOUT(0x100054C04);
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RTCCSDCallInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_100054D34()
{
  sub_100010128();
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *v0 = v1;
}

unint64_t sub_100054D5C()
{
  result = qword_1006A6D08;
  if (!qword_1006A6D08)
  {
    sub_10026DCB4(&qword_1006A6D00, &qword_100582450);
    sub_100054AF0(&qword_1006A6D10, type metadata accessor for RTCCSDRelayDeviceRoute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D08);
  }

  return result;
}

void sub_100054F38(void *a1@<X8>)
{
  v3 = *v1;
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *a1 = v4;
}

void sub_100054FF8()
{
  sub_100009EAC();
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *v0 = v1;
}

void sub_1000550B4(_DWORD *a1@<X8>)
{
  v3 = *v1;
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *a1 = v4;
}

id sub_100055190(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
  }

  v13 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D6A0;
  *(v14 + 56) = sub_100006AF0(0, &qword_1006A3968, RTCReporting_ptr);
  *(v14 + 64) = sub_100055530();
  *(v14 + 32) = a1;
  *(v14 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *(v14 + 104) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710);
  *(v14 + 72) = a2;
  v15 = a1;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10003E7C0(a2);
  v28 = 0;
  v17 = sub_100055598(v16, &v28, v15);
  v18 = v28;
  if (v17)
  {

    return v18;
  }

  else
  {
    v27 = v28;
    v20 = v28;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = sub_10003D4D0();
    static os_log_type_t.error.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10057D690;
    v28 = v21;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100009D88();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:type:_:)();
  }
}

unint64_t sub_100055530()
{
  result = qword_1006A3970;
  if (!qword_1006A3970)
  {
    sub_100006AF0(255, &qword_1006A3968, RTCReporting_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3970);
  }

  return result;
}

id sub_100055598(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 sendMessageWithDictionary:isa error:a2];

  return v6;
}

uint64_t sub_10005561C()
{
  sub_100007934();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_100055660(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isGreenTea];

  if (v4)
  {
    if ([a1 isIncoming])
    {
      if ([a1 status] == 6)
      {
        v5 = [a1 provider];
        v6 = [v5 isFaceTimeProvider];

        if (v6)
        {
          v7 = sub_100320800(a1);
          if (v7)
          {
            v8 = *(v7 + 16);

            if (v8)
            {
              v31 = sub_10003D4D0();
              static os_log_type_t.default.getter();
LABEL_9:
              os_log(_:dso:log:type:_:)();

              return;
            }
          }

          v9 = [a1 handle];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 value];

            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            v15 = [a1 handle];
            if (v15)
            {
              v16 = sub_1004450C8(v15);
              if (v17)
              {
                v18 = v16;
                v19 = v17;
                if (sub_1002A7838())
                {
                  v20 = sub_1002A7BC4(v12, v14, v18, v19);

                  v31 = sub_10003D4D0();
                  if (v20)
                  {
                    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
                    v21 = swift_allocObject();
                    *(v21 + 16) = xmmword_10057D690;
                    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
                    v22 = a1;
                    v23 = String.init<A>(reflecting:)();
                    v25 = v24;
                    *(v21 + 56) = &type metadata for String;
                    *(v21 + 64) = sub_100009D88();
                    *(v21 + 32) = v23;
                    *(v21 + 40) = v25;
                    static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)();

                    sub_1002A7418();
                    return;
                  }

                  static os_log_type_t.default.getter();
                }

                else
                {

                  v31 = sub_10003D4D0();
                  static os_log_type_t.default.getter();
                }

                goto LABEL_9;
              }
            }
          }

          v26 = sub_10003D4D0();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_10057D690;
          v28 = sub_1002A7750();
          v30 = v29;
          *(v27 + 56) = &type metadata for String;
          *(v27 + 64) = sub_100009D88();
          *(v27 + 32) = v28;
          *(v27 + 40) = v30;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
        }
      }
    }
  }
}

uint64_t sub_100055A88(uint64_t a1, void *a2)
{
  sub_100055B68();
  if (sub_100055E38(a2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v3, v4, 0);
  }

  if (sub_100055E9C(a2))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v5, v6, 0);

    sub_10031EE74();
  }

  result = sub_100055F8C(a2);
  if (result)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v8, v9, 0);
  }

  return result;
}

uint64_t sub_100055B68()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v7 = *(v19[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19[0], v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v0;
  aBlock[4] = sub_100056348;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626DD0;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v19[0]);
}

uint64_t sub_100055E9C(void *a1)
{
  if ([a1 status] != 6)
  {
    return 0;
  }

  result = [a1 isIncoming];
  if (!result)
  {
    return result;
  }

  v3 = [a1 provider];
  v4 = [v3 isTelephonyProvider];

  if (v4 && ([a1 isKnownCaller] & 1) == 0 && (sub_1003174D8(objc_msgSend(a1, "disconnectedReason"), &off_100620988) || !objc_msgSend(a1, "disconnectedReason") && (objc_msgSend(a1, "callDuration"), v5 < 10.0)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100055F8C(void *a1)
{
  result = 0;
  if ([a1 liveVoicemailStatus] == 1)
  {
    v2 = [a1 provider];
    v3 = [v2 isTelephonyProvider];

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

void sub_100056000(void *a1)
{
  v22 = sub_10031ED10;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10002E470;
  v21 = &unk_100626DF8;
  v2 = _Block_copy(&v18);

  v3 = [a1 callsPassingTest:v2];
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000B6F4(v4))
  {
    sub_10039C390(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) == 0)
    {
      v5 = *(v4 + 32);
LABEL_5:
      v6 = v5;

      v7 = v6;
      sub_10031F50C(v7);
      v9 = v8;

      goto LABEL_7;
    }

LABEL_14:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  v9 = 0;
  v6 = 0;
LABEL_7:
  v10 = [objc_opt_self() userContext];
  if (v10)
  {
    v11 = v10;
    if (v9)
    {
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v12.super.isa = 0;
    }

    v13 = [objc_opt_self() keyPathForActiveCall];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v9;
    v14[4] = v6;
    v22 = sub_100056688;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100056350;
    v21 = &unk_100626E48;
    v15 = _Block_copy(&v18);
    v16 = v6;
    v17 = a1;

    [v11 setObject:v12.super.isa forContextualKeyPath:v13 responseQueue:0 withCompletion:v15];

    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100056300()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000563A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v19 = [a2 queue];
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  aBlock[4] = sub_1000567C0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626E98;
  v21 = _Block_copy(aBlock);
  v22 = a4;
  static DispatchQoS.unspecified.getter();
  v24[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v8 + 8))(v12, v7);
  (*(v14 + 8))(v18, v13);
}

uint64_t sub_10005663C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000566C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D6A0;
  v6 = sub_1000567C8(a1);
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = sub_100056834(a2);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1000567DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  sub_10026D814(a2, a3);
  return String.init<A>(reflecting:)();
}

uint64_t sub_100057044(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100057068(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100057100(uint64_t *a1)
{
  v1 = *a1;
  sub_10005712C();
  return sub_100011264(v2, v3);
}

NSString sub_100057174@<X0>(void *a1@<X8>)
{
  result = sub_10026FE30();
  *a1 = result;
  return result;
}

uint64_t sub_1000571B4(uint64_t *a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_100057034(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000571DC(uint64_t *a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_10005703C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100057264(uint64_t *a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_100057090(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100057310@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000570E4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

_DWORD *sub_100057344@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100057378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10026D758(a1);
  *a2 = result;
  return result;
}

void *sub_1000573A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000573DC(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

uint64_t sub_1000573F0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

uint64_t sub_100057404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10005742C(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

char *sub_1000574C0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE0, &qword_100587880);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000574F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000575D8()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64) + ((v3 + 40) & ~v3);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_100007728();
  v9(v8);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100057694()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = (((v3 + 40) & ~v3) + *(v4 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_100007728();
  v9(v8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100057760()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_100007728();
  v9(v8);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005782C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057874()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000578A8()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = type metadata accessor for UUID();
  if (!sub_100015468(v0 + v4, 1, v9))
  {
    sub_10000F49C(v9);
    (*(v10 + 8))(v0 + v4, v9);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100057A10()
{
  v1 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100057AAC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100057B08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100057B44()
{
  v1 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100057C28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057C70()
{
  v1 = *(v0 + 32);

  sub_100007934();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100057CA4()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100057D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057D6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057DA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057DDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);

  return sub_100015468(a1 + v5, a2, v6);
}

uint64_t sub_100057EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);

  return sub_10000AF74(a1 + v6, a2, a2, v7);
}

uint64_t sub_100057F44()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100057FCC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005801C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058054()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100058088()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000580D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100058120()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100058170()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000582A0()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000582D0()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100058300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058338()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000583A8()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000583DC()
{
  _Block_release(*(v0 + 16));
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100058410()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100058454()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000584A8()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000584F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_1000081EC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100058550()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058588()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058634()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005866C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005874C()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v8 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10005881C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000588C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058910()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Notification();
  sub_100007FEC(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_100058A48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058A9C()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100058B10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058B48()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058B90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058BC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058C10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058C54()
{
  sub_100007934();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100058CC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058D2C()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    if (*(v0 + 56) != 1)
    {
    }

    v2 = *(v0 + 88);
    swift_unknownObjectRelease();
    v3 = *(v0 + 152);

    v4 = *(v0 + 176);
    swift_unknownObjectRelease();
  }

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100058D98()
{
  if (*(v0 + 56) != 1)
  {
  }

  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  v2 = *(v0 + 152);

  v3 = *(v0 + 176);
  swift_unknownObjectRelease();
  v4 = *(v0 + 184);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_100058E10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058E48()
{
  sub_100009B7C((v0 + 16));
  sub_100015D0C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100058E7C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_100009B7C(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100058EC4()
{
  sub_100009B7C((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

double sub_100058F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100009AB0(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100058F64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058F9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100058FE4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A4570, &qword_10057F2D0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100059024()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005906C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000590B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000590E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059174()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000591A4()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000591DC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005921C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005925C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000592B4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000592F4()
{
  sub_100007C2C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005934C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059384()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_100059474()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000594AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100059534(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_100307230();
}

uint64_t sub_1000595AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000595EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005963C()
{

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_100059674(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000596BC()
{
  v1 = type metadata accessor for Utterance();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_100007728();
  v7(v6);

  return _swift_deallocObject(v0, ((v3 + 24) & ~v3) + v5, v3 | 7);
}

uint64_t sub_10005976C()
{
  sub_100007934();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000597A8()
{
  sub_100007C2C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000597DC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100059814()
{
  v1 = *(v0 + 32);

  sub_100007934();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100059850()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100059898()
{
  sub_100007C2C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000598D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005992C()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  v7 = sub_100007728();
  v8(v7);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000599F8()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = sub_100007728();
  v8(v7);

  return _swift_deallocObject(v0, ((v3 + 56) & ~v3) + v5, v3 | 7);
}

uint64_t sub_100059AC0()
{
  v1 = *(v0 + 24);

  sub_100007934();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100059AFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059B34()
{
  v1 = *(v0 + 16);

  sub_100009B7C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100059B84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000691C();
  if (*(*(type metadata accessor for UUID() - 8) + 84) == a2)
  {
    v6 = sub_10000790C();
LABEL_8:

    return sub_100015468(v6, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for Date();
    v6 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v8 = *(v3 + *(a3 + 24));
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100059C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10000691C();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for Date();
    v10 = v4 + *(a4 + 28);
  }

  return sub_10000AF74(v10, a2, a2, v9);
}

uint64_t sub_100059D9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100059DE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059E24()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100059E5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowContactsOnly];
  *a2 = result;
  return result;
}

uint64_t sub_100059EA4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100059EF4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100059F44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059F7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059FD0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005A010()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A080()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A0E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005A134()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A16C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A300@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100328BA4();
  *a2 = result;
  return result;
}

uint64_t sub_10005A330()
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

uint64_t sub_10005A3EC()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005A420()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = sub_100007728();
  v8(v7);
  v9 = sub_100015D74();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10005A4CC()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_100007728();
  v7(v6);
  v8 = sub_100015D74();

  return _swift_deallocObject(v8, v9, v10);
}

uint64_t sub_10005A594()
{
  v2 = type metadata accessor for UUID();
  sub_100007FEC(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100035AC4();

  v7 = sub_100007728();
  v8(v7);
  v9 = *(v0 + v1);

  v10 = sub_100015D74();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10005A664()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005A754()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5D10, &qword_100580A38);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A780()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5D18, &qword_100580A40);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A7AC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5DC0, &qword_100580A60);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A7D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005A818()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005A858()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005A8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100015468(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A8F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v5, a3, v6);
}

uint64_t sub_10005A950()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A9B4()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005A9EC()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005AA78()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005AB30()
{
  v1 = type metadata accessor for Notification();
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005ABC0()
{
  swift_weakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005ABF4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  if (*(v0 + 72))
  {
    v3 = *(v0 + 80);
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005AC5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005ACA4()
{
  if (v0[2] >= 2uLL)
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005ACF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100006890();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005AD6C()
{
  v1 = type metadata accessor for UUID();
  sub_1000083C0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10005AE4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005AE84()
{
  v1 = type metadata accessor for UUID();
  sub_1000083C0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  sub_100009B7C((v0 + v8));

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

uint64_t sub_10005AF7C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005AFCC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B05C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B0E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005B124()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005B17C()
{
  v1 = sub_100018F80();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005B1BC()
{
  v1 = *(v0 + 24);

  v2 = sub_100018F80();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005B1F4()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64) + ((v3 + 32) & ~v3);

  v6 = sub_100007728();
  v7(v6);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10005B2B0()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  if (*(v0 + 40))
  {
    v6 = *(v0 + 48);
  }

  v7 = sub_10036BE98();
  v8(v7);
  v9 = sub_100006E24();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10005B378()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = sub_10003DBDC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005B3CC()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  if (*(v0 + 24))
  {
    v6 = *(v0 + 32);
  }

  v7 = sub_10036BE98();
  v8(v7);
  v9 = sub_100006E24();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10005B494()
{
  v1 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = sub_100007728();
  v8(v7);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005B564()
{
  sub_100005EF4();
  v1 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Date();
  sub_100007FEC(v6);
  v8 = v7;
  v9 = (((v3 + 16) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_10036BE98();
  v13(v12);
  (*(v8 + 8))(v0 + v9, v6);
  sub_100005EDC();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_10005B6A4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 56);

  sub_100022D00();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005B6F8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B760()
{
  sub_100007C2C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005B79C()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v7 = *(v0 + 40);
  }

  v8 = sub_10036BE98();
  v9(v8);
  v10 = sub_100006E24();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10005B85C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005B8A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B8E0()
{
  v1 = type metadata accessor for Date();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005B960()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B9B4()
{
  v1 = sub_100018F80();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005B9F0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  v3 = sub_10003DBDC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005BA38()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 48);

  v3 = sub_10003DBDC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005BA80()
{
  v1 = *(v0 + 32);

  v2 = sub_10003DBDC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005BAC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = sub_100018F80();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005BAF8()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v8);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005BBD8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_100018F80();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005BC9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BCD8()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005BD14()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005BD44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005BD84()
{
  sub_100049B14(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005BDD4()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_100049B14(v0[3], v2);
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005BE3C()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005BE70()
{
  v1 = *(v0 + 16);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005BEA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005BEF8()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005BF78()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005C048()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005C080()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005C0E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005C224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005C308()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005C404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005C4D4()
{
  v1 = sub_10026D814(&qword_1006A77C8, &qword_100583118);
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005C598(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_10005C5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_10005C644()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005C67C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_10005C6D8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10005C758()
{
  sub_100395FFC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

char *sub_10005C79C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_10005C7BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C7F4()
{
  v1 = type metadata accessor for Notification();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005C8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_10005C8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_10005C97C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C9BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CA44()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005CA78()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005CAC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CBD0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005CC20()
{
  v1 = type metadata accessor for Notification();
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005CCB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CCF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005CDF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CEA0()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005CF18()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005CF58()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005CF88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005CFC8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005CFF8()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005D09C()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005D0D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D108()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_10005D17C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_10005D1C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D208()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D26C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D2AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D2E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D31C()
{

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_10005D354()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D3B4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D3F4()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005D424()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D464()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005D494()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005D4E4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005D514()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D5B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005D608()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005D640()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005D678()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D6B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D6F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D748()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005D7A0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005D7F8()
{
  v1 = *(v0 + 16);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005D84C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D8BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005D914()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D9AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DA8C()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005DB44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DB84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DBD0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DC10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005DC9C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005DCEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DD24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005DD6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DDA4()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10005DDF4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005DE38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DE70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DEBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005DF1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005DF74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005DFC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005E02C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E064()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005E0A0()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005E0D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E120()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E1F4()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005E228()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E2A8()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005E33C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E3CC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005E3FC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005E444()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005E474()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005E4A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005E4F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E540()
{
  sub_100009B7C((v0 + 16));

  sub_100022D00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005E57C()
{
  v1 = type metadata accessor for UUID();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005E610()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E650()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005E724()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005E758()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005E818()
{
  _Block_release(*(v0 + 16));
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005E84C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v3, v4, v5);
}

char *sub_10005E88C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006AB618, &qword_100587208);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10005E8BC()
{
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005E984()
{
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10005EAE4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE0, &qword_100587880);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB10()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE8, &qword_100587888);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB3C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBF0, &qword_100587890);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB68()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBF8, &qword_100587898);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EBBC()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005EBF0()
{
  v1 = type metadata accessor for URL();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v8 + 9, v3 | 7);
}

uint64_t sub_10005ECB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005ECEC()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 48) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = sub_100007728();
  v8(v7);
  v9 = *(v0 + v4);
  swift_unknownObjectRelease();
  v10 = sub_100015D74();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10005EDBC()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);
  swift_unknownObjectRelease();
  v9 = sub_100007728();
  v10(v9);
  v11 = sub_100015D74();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_10005EE80()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005EECC()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v4, 1, v7))
  {
    sub_10000F49C(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_10005EFC0()
{
  sub_100005EF4();
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URL();
  sub_100007FEC(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_100005EDC();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_10005F0E8()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = *(v4 + 64);
  v5 = type metadata accessor for UUID();
  sub_100007FEC(v5);
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for URL();
  sub_100007FEC(v11);
  v13 = v12;
  v14 = *(v12 + 80);
  v22 = *(v15 + 64);
  if (!sub_100015468(v0 + v3, 1, v11))
  {
    (*(v13 + 8))(v0 + v3, v11);
  }

  v16 = (v3 + v23 + v8) & ~v8;
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v16, v5);

  (*(v13 + 8))(v0 + ((v17 + v14 + 8) & ~v14), v11);
  v18 = sub_100015D74();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_10005F2D0()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = sub_100007728();
  v7(v6);

  v8 = sub_100015D74();

  return _swift_deallocObject(v8, v9, v10);
}

uint64_t sub_10005F3B0()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005F50C()
{
  _Block_release(*(v0 + 32));

  sub_100008BA8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005F554()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F5CC()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005F60C()
{
  v1 = type metadata accessor for Notification();
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005F69C()
{
  v1 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005F724()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005F758()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005F7F4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10005F880()
{
  sub_100006890();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005F8B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100008BA8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005F8F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005F950()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F9B0()
{
  sub_100005EF4();
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 32) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v3 + 8);
  v10(v0 + v6, v1);

  if (*(v0 + v8))
  {
    v11 = *(v0 + v8 + 8);
  }

  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12 + 8);

  v15 = *(v0 + v13 + 8);

  v10(v0 + ((v4 + v13 + 16) & ~v4), v1);
  sub_100005EDC();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_10005FAE8()
{
  v1 = type metadata accessor for URL();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005FB88()
{
  v1 = type metadata accessor for URL();
  sub_100008070(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5 + 8);

  if (*(v0 + v6))
  {
    v8 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10005FC3C()
{
  v1 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v1);
  v25 = *(v2 + 80);
  v3 = (v25 + 32) & ~v25;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for URL();
  sub_100007FEC(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = (v5 + v9 + v3 + 2) & ~v9;
  v12 = *(v10 + 64) + 7;
  v13 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v9 + v14 + 16) & ~v9;
  v23 = (v12 + v15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 24);

  v17 = type metadata accessor for Locale();
  if (!sub_100015468(v0 + v3, 1, v17))
  {
    (*(*(v17 - 8) + 8))(v0 + v3, v17);
  }

  v18 = *(v8 + 8);
  v18(v0 + v11, v6);
  v19 = *(v0 + v13 + 8);

  v20 = *(v0 + v14);
  swift_unknownObjectRelease();
  v18(v0 + v15, v6);

  if (*(v0 + v24))
  {
    v21 = *(v0 + v24 + 8);
  }

  return _swift_deallocObject(v0, v24 + 16, v25 | v9 | 7);
}

uint64_t sub_10005FE4C()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 16) & ~v4;
  v10 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v10);
  v12 = *(v11 + 80);
  v14 = (v7 + v12 + v9 + 2) & ~v12;
  v23 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  v16 = *(v0 + 4);
  swift_unknownObjectRelease();
  v17 = *(v0 + 7);

  v18 = *(v3 + 8);
  v18(&v0[v5], v1);
  v19 = *&v0[v8 + 8];

  v18(&v0[v9], v1);
  v20 = type metadata accessor for Locale();
  if (!sub_100015468(&v0[v14], 1, v20))
  {
    (*(*(v20 - 8) + 8))(&v0[v14], v20);
  }

  if (*&v0[v24])
  {
    v21 = *&v0[v24 + 8];
  }

  return _swift_deallocObject(v0, v24 + 16, v4 | v12 | 7);
}

uint64_t sub_100060058()
{
  v2 = type metadata accessor for URL();
  sub_100007FEC(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  if (*(v0 + 16))
  {
    v7 = *(v0 + 24);
  }

  v8 = sub_10046A990(v4 + 33);
  v9(v8);

  return _swift_deallocObject(v0, v1 + v6, v4 | 7);
}

uint64_t sub_10006010C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100060158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100015468(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000AF74(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000602FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006033C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060374()
{
  v1 = (type metadata accessor for DisclosureRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v1[7];
  v7 = type metadata accessor for Locale();
  sub_100008070(v7);
  (*(v8 + 8))(v0 + v3 + v6);
  v9 = *(v0 + v3 + v1[8] + 8);

  v10 = *(v0 + v3 + v1[9] + 8);

  v11 = *(v0 + v3 + v1[10] + 8);

  sub_100009B7C((v0 + v3 + v1[11]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

char *sub_100060528(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_1000609B0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = PBReaderReadString();
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_44;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_44:
        *(a1 + 8) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_48:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100061460(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addPseudonym:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v24 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v24 & 0x7F) << v13;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100061E8C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___CSDMessagingEncryptedConversationMessage__conversationMessageBytes;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___CSDMessagingEncryptedConversationMessage__publicKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id sub_100063F24(CSDMessagingConversationLink *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationLink;
  v3 = [(CSDMessagingConversationLink *)&v7 description];
  v4 = [(CSDMessagingConversationLink *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_100064394(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v30 = objc_alloc_init(CSDMessagingConversationLinkGeneratorDescriptor);
              objc_storeStrong((a1 + 24), v30);
              v42 = 0;
              v43 = 0;
              if (!PBReaderPlaceMark() || !sub_1001B2458(v30, a2))
              {
LABEL_85:

                return 0;
              }

              goto LABEL_60;
            case 0xB:
              v14 = PBReaderReadString();
              v15 = 56;
              goto LABEL_69;
            case 0xC:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 100) |= 4u;
              while (1)
              {
                LOBYTE(v42) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v42 & 0x7F) << v23;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_77;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

LABEL_77:
              *(a1 + 48) = v29;
              goto LABEL_83;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v30 = objc_alloc_init(CSDMessagingHandle);
              objc_storeStrong((a1 + 64), v30);
LABEL_55:
              v42 = 0;
              v43 = 0;
              if (!PBReaderPlaceMark() || !sub_1000D1450(v30, a2))
              {
                goto LABEL_85;
              }

LABEL_60:
              PBReaderRecallMark();

              goto LABEL_83;
            case 8:
              *(a1 + 100) |= 2u;
              v42 = 0;
              v31 = [a2 position] + 8;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v37 = v42;
              v38 = 16;
              goto LABEL_82;
            case 9:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v42) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v42 & 0x7F) << v16;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_73;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_73:
              *(a1 + 96) = v22;
              goto LABEL_83;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v30 = objc_alloc_init(CSDMessagingHandle);
            [a1 addInvitedHandles:v30];
            goto LABEL_55;
          case 5:
            *(a1 + 100) |= 1u;
            v42 = 0;
            v33 = [a2 position] + 8;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v37 = v42;
            v38 = 8;
LABEL_82:
            *(a1 + v38) = v37;
            goto LABEL_83;
          case 6:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_69;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 80;
            goto LABEL_69;
          case 2:
            v14 = PBReaderReadData();
            v15 = 88;
            goto LABEL_69;
          case 3:
            v14 = PBReaderReadData();
            v15 = 72;
LABEL_69:
            v35 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_83:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000665FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006661C(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained sendDualSIMRingtoneMetrics];
  }

  else
  {
    if (state)
    {
      goto LABEL_6;
    }

    WeakRetained = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(WeakRetained, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(WeakRetained, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(WeakRetained, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(WeakRetained, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_activity_set_criteria(activity, WeakRetained);
  }

LABEL_6:
}

id sub_100066714(uint64_t a1, void *a2)
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received _TLTonePreferencesDidChangeNotification", v5, 2u);
  }

  return [a2 handleTLTonePreferencesDidChangeNotification];
}

void sub_100067600(uint64_t a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[CSDDualSIMRingtoneHelper sendDualSIMRingtoneMetrics]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Logging dual SIM metric event", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) subscriptionsInUse];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    v7 = &stru_100631E68;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (([v9 isSimHidden] & 1) == 0 && (objc_msgSend(v9, "isSimDataOnly") & 1) == 0)
        {
          v10 = [v9 labelID];
          v11 = [@"TLAlertTopicIncomingCall" stringByAppendingString:v10];
          v12 = +[TLToneManager sharedToneManager];
          v13 = [v12 currentToneIdentifierForAlertType:*(*(a1 + 32) + 48) topic:v11];

          if ([(__CFString *)v7 length])
          {
            v5 |= [(__CFString *)v7 isEqualToString:v13];
          }

          else
          {
            v14 = v13;

            v7 = v14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    v7 = &stru_100631E68;
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [NSNumber numberWithBool:v5 & 1];
    *buf = 136315394;
    v23 = "[CSDDualSIMRingtoneHelper sendDualSIMRingtoneMetrics]_block_invoke";
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Logging dual SIM metric event hasDifferentRingtones:%@", buf, 0x16u);
  }

  [CSDAnalyticsReporter sendDualSIMRingtoneStateEvent:v5 & 1];
}

void sub_100067A5C(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 40)) initWithQueue:*(a1 + 32)];
  v2 = qword_1006ACAB0;
  qword_1006ACAB0 = v1;
}

void sub_1000682A0(uint64_t a1)
{
  v4 = [*(a1 + 32) object];
  v2 = [v4 state];
  v3 = *(a1 + 40);
  if (v2 == 5)
  {
    [v3 endTransactionIfNecessaryForObject:v4];
  }

  else
  {
    [v3 beginTransactionIfNecessaryForObject:v4 withReason:@"handleSessionStateChanged"];
  }
}

CSDAVConferenceProvider *__cdecl sub_100068F14(id a1, NSUUID *a2, OS_dispatch_queue *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CSDAVConferenceProvider alloc] initWithClientUUID:v5 serialQueue:v4];

  return v6;
}

void sub_100069120(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = sub_100004778();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 1)
  {
    if (v4)
    {
      v43 = *(*(a1 + 32) + 16);
      *buf = 67109120;
      LODWORD(v47) = v43;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Attempted to prepare conference which has already started preparing (state=%d)", buf, 8u);
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preparing conference with configuration: %@", buf, 0xCu);
  }

  [*(a1 + 32) setState:2];
  [*(a1 + 32) setConfiguration:*(a1 + 40)];
  v6 = [*(a1 + 32) conferenceProviderCreationBlock];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 clientUUID];
  v9 = [*(a1 + 32) queue];
  v10 = (v6)[2](v6, v8, v9);
  [*(a1 + 32) setConferenceProvider:v10];

  v11 = [*(a1 + 32) conferenceProvider];

  if (!v11)
  {
    v44 = sub_100004778();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100471260();
    }

    goto LABEL_19;
  }

  v12 = *(a1 + 32);
  v13 = [v12 conferenceProvider];
  [v13 setDelegate:v12];

  v14 = [*(a1 + 40) deviceRole];
  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v47) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initializing new callID with device role %d", buf, 8u);
  }

  v16 = [*(a1 + 32) conferenceProvider];
  v17 = [*(a1 + 40) reportingHierarchyToken];
  v18 = [v16 initializeNewCallWithDeviceRole:v14 reportingHierarchyToken:v17];

  if (!v18)
  {
    v44 = sub_100004778();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1004711EC();
    }

LABEL_19:

    [*(a1 + 32) _setEndedWithReason:1 error:0];
    return;
  }

  v19 = objc_alloc_init(TUMediaTokens);
  [*(a1 + 32) setMediaTokens:v19];

  v20 = [*(a1 + 32) mediaTokens];
  [v20 setCombinedAudioStreamToken:v18];

  v21 = [*(a1 + 32) conferenceProvider];
  v22 = [v21 audioUplinkToken];
  v23 = [*(a1 + 32) mediaTokens];
  [v23 setUplinkStreamToken:v22];

  v24 = [*(a1 + 32) conferenceProvider];
  v25 = [v24 audioDownlinkToken];
  v26 = [*(a1 + 32) mediaTokens];
  [v26 setDownlinkStreamToken:v25];

  v27 = [*(a1 + 40) requiresInviteDictionary];
  v28 = *(a1 + 32);
  if (v27)
  {
    v29 = [v28 conferenceProvider];
    [*(a1 + 40) localPortraitAspectRatio];
    v31 = v30;
    v33 = v32;
    [*(a1 + 40) localLandscapeAspectRatio];
    [v29 setLocalPortraitAspectRatio:v31 localLandscapeAspectRatio:{v33, v34, v35}];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100069644;
    v45[3] = &unk_100619E30;
    v45[4] = *(a1 + 32);
    v3 = objc_retainBlock(v45);
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(a1 + 40) remoteInviteDictionary];
      *buf = 138412290;
      v47 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Fetching local invite dictionary using remote invite dictionary %@", buf, 0xCu);
    }

    v38 = [*(a1 + 32) conferenceProvider];
    v39 = [*(a1 + 32) conferenceProvider];
    v40 = [v39 callID];
    v41 = [*(a1 + 40) remoteInviteDictionary];
    v42 = [*(a1 + 32) queue];
    [v38 inviteDictionaryForCallID:v40 remoteInviteDictionary:v41 nonCellularCandidateTimeout:v3 block:v42 queue:0.0];

LABEL_14:
    return;
  }

  [v28 setState:3];
  [*(a1 + 32) _sendDelegateFinishedPreparing];
}

void sub_100069644(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004712A0();
    }

    [*(a1 + 32) _setEndedWithReason:4 error:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched local invite dictionary: %@", &v9, 0xCu);
    }

    [*(a1 + 32) setLocalInviteDictionary:v5];
    [*(a1 + 32) setState:3];
    [*(a1 + 32) _sendDelegateFinishedPreparing];
  }
}

void sub_1000698B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conferenceProvider];

  if (!v3)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v14 = "[WARN] Conference does not exist";
    v15 = v13;
    v16 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_20;
  }

  if (*(*v2 + 4) != 3)
  {
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v17 = *(*v2 + 4);
    *buf = 67109120;
    LODWORD(v32) = v17;
    v14 = "[WARN] Attempted to start conference which has not been prepared (state=%d)";
    v15 = v13;
    v16 = 8;
    goto LABEL_11;
  }

  [*v2 setState:4];
  v4 = [*(a1 + 40) type];
  if (v4 == 1)
  {
    v18 = [*(a1 + 32) conferenceProvider];
    v19 = [*(a1 + 32) configuration];
    v20 = [v19 isCaller];
    v21 = [*(a1 + 32) configuration];
    v22 = [v21 capabilities];
    v23 = [*(a1 + 40) socket];
    v30 = 0;
    LODWORD(v20) = [v18 startConnectionAsCaller:v20 capabilities:v22 socket:v23 error:&v30];
    v13 = v30;

    if (v20)
    {
      goto LABEL_13;
    }

LABEL_17:
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10047131C(v2, v13, v28);
    }

    [*v2 _setEndedWithReason:1 error:v13];
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v5 = [*(a1 + 32) conferenceProvider];
  v6 = [*(a1 + 32) configuration];
  v7 = [v6 isCaller];
  v8 = [*(a1 + 32) configuration];
  v9 = [v8 remoteInviteDictionary];
  v10 = [*(a1 + 32) configuration];
  v11 = [v10 capabilities];
  v12 = [*(a1 + 40) destination];
  v29 = 0;
  LOBYTE(v7) = [v5 startConnectionAsCaller:v7 remoteInviteDictionary:v9 capabilities:v11 destination:v12 error:&v29];
  v13 = v29;

  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*v2 configuration];
    v26 = +[NSDate date];
    [v26 timeIntervalSince1970];
    *buf = 138412546;
    v32 = v25;
    v33 = 2048;
    v34 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Successfully started connection with configuration=%@ (timestamp: %f)", buf, 0x16u);
  }

  [*v2 _setUpDidStartTimeout];
LABEL_20:
}

id sub_100069F00(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) conferenceProvider];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) conferenceProvider];
  [v4 stop];

  return [*(a1 + 32) setCapturingLocalVideo:0];
}

void sub_10006A06C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4] > 3)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Attempted to cancel a conference that has already started connecting: %@", &v7, 0xCu);
    }
  }

  else
  {
    [v2 setState:6];
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) conferenceProvider];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling cancel on conference %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 32) conferenceProvider];
    [v5 cancel];
  }
}

void sub_10006A264(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  [v2 sendData:*(a1 + 40)];
}

void sub_10006A390(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  [v2 setPeerReportingIdentifier:*(a1 + 40) sessionIdentifier:*(a1 + 48)];
}

void sub_10006A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A720(uint64_t a1)
{
  v5 = [*(a1 + 32) configuration];
  v2 = [v5 remoteInviteDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006A83C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 remoteInviteDictionary];
    v5 = *(a1 + 40);
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting remote invite dictionary from %@ to %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setRemoteInviteDictionary:v6];
}

void sub_10006A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AA10(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  *(*(*(a1 + 40) + 8) + 24) = [v2 callID];
}

void sub_10006AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AB44(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isCaller];
}

void sub_10006AC38(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 isCaller];
    v5 = *(a1 + 40);
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting caller from %d to %d", v8, 0xEu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setCaller:v6];
}

void sub_10006AE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006B690(uint64_t a1)
{
  result = [*(a1 + 32) _isMuted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10006B7F0(uint64_t a1)
{
  if ([*(a1 + 32) isAudioInjectionAllowed] && (objc_msgSend(*(a1 + 32), "featureFlags"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "relayCallRecordingEnabled"), v2, v3))
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v10 = 67109120;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting expected uplink muted to %d instead of muting conference because injection is allowed", &v10, 8u);
    }

    return [*(a1 + 32) setExpectedUplinkMuted:*(a1 + 40)];
  }

  else
  {
    result = [*(a1 + 32) _isMuted];
    if (*(a1 + 40) != result)
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) conferenceProvider];
        v10 = 67109378;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting microphoneMuted to %d for %@", &v10, 0x12u);
      }

      [*(a1 + 32) _setMuted:*(a1 + 40)];
      return [*(a1 + 32) _sendDelegateMutedChanged];
    }
  }

  return result;
}

void sub_10006BA84(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 relayCallRecordingEnabled];

  if (v3 && *(a1 + 40) != [*(a1 + 32) isAudioInjectionAllowed])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 67109120;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting audio injection allowed to %d", &v8, 8u);
    }

    if (*(a1 + 40) == 1)
    {
      [*(a1 + 32) setExpectedUplinkMuted:{objc_msgSend(*(a1 + 32), "_isMuted")}];
      [*(a1 + 32) _setMuted:0];
      *(*(a1 + 32) + 8) = *(a1 + 40);
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) expectedUplinkMuted];
        v8 = 67109120;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting uplink mute to exected uplink muted %d", &v8, 8u);
      }

      *(*(a1 + 32) + 8) = *(a1 + 40);
      [*(a1 + 32) setMuted:{objc_msgSend(*(a1 + 32), "expectedUplinkMuted")}];
    }
  }
}

void sub_10006BCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BCF4(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingAudio];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006BE1C(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _isSendingAudio];
    v5 = *(a1 + 40);

    if (v5 != v4)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v10[0] = 67109120;
        v10[1] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting sendingAudio to %d", v10, 8u);
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) conferenceProvider];
      [v9 setAudioPaused:(v8 & 1) == 0];
    }
  }
}

void sub_10006BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BFF8(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingAudio];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006C120(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _isSendingAudioData];
    v5 = *(a1 + 40);

    if (v5 != v4)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v10[0] = 67109120;
        v10[1] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting sendingAudioData to %d", v10, 8u);
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) conferenceProvider];
      [v9 setSendingAudio:v8];
    }
  }
}

void sub_10006C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006C3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006C3E4(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingVideo];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006C554(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSendingVideo];
  v3 = *(a1 + 32);
  if (*(a1 + 40) != v2)
  {
    v17 = [v3 conferenceProvider];
    if (v17)
    {
      v18 = v17;
      v19 = [*(a1 + 32) _isSendingVideoExpected];

      if (!v19)
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 40) ^ 1;
          v26 = 67109120;
          v27 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting conferenceProvider videoPaused to %d", &v26, 8u);
        }

        v22 = *(a1 + 40);
        v23 = [*(a1 + 32) conferenceProvider];
        [v23 setVideoPaused:(v22 & 1) == 0];
      }
    }

    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      v26 = 67109120;
      v27 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Setting sendingVideo to %d", &v26, 8u);
    }

    v16 = [NSNumber numberWithBool:*(a1 + 40)];
    [*(a1 + 32) setSendingVideoExpected:v16];
    goto LABEL_15;
  }

  if (v3[4] <= 3)
  {
    v4 = [v3 configuration];
    v5 = [v4 capabilities];
    v6 = [v5 isVideoPausedToStart];
    v7 = *(a1 + 40);

    if (v7 == v6)
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = v9[4];
        v11 = [v9 configuration];
        v12 = [v11 capabilities];
        v13 = [v12 isVideoPausedToStart];
        v14 = *(a1 + 40) ^ 1;
        v26 = 67109632;
        v27 = v10;
        v28 = 1024;
        v29 = v13;
        v30 = 1024;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "State is %d, updating isVideoPausedToStart from %d to %d", &v26, 0x14u);
      }

      v15 = [*(a1 + 32) configuration];
      v16 = [v15 capabilities];

      [v16 setIsVideoPausedToStart:(*(a1 + 40) & 1) == 0];
      [*(a1 + 32) updateCapabilities:v16];
LABEL_15:
    }
  }
}

void sub_10006C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006C930(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSendingVideoExpected];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006CAFC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 capabilities];
    v5 = *(a1 + 40);
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating capabilities from: %@ to %@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setCapabilities:v6];

  v8 = [*(a1 + 32) conferenceProvider];

  if (v8)
  {
    v9 = [*(a1 + 32) conferenceProvider];
    [v9 updateCapabilities:*(a1 + 40)];
  }
}

void sub_10006CCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006CDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_10006CE14(uint64_t a1)
{
  result = *(*(a1 + 32) + 152);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void sub_10006CEC4(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = NSEqualSizes(*(*(a1 + 32) + 152), *(a1 + 40));

    if (!v4)
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = NSStringFromSize(*(*(a1 + 32) + 152));
        v7 = NSStringFromSize(*(a1 + 40));
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting remoteVideoPresentationSize from %@ to %@", &v9, 0x16u);
      }

      *(*(a1 + 32) + 152) = *(a1 + 40);
      v8 = [*(a1 + 32) conferenceProvider];
      [v8 setRemoteVideoPresentationSize:{*(a1 + 40), *(a1 + 48)}];
    }
  }
}

void sub_10006D0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D194(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 20);
    v4 = *(a1 + 40);

    if (v3 != v4)
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 20);
        v7 = *(a1 + 40);
        v9[0] = 67109376;
        v9[1] = v6;
        v10 = 1024;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting remoteVideoPresentationState from %d to %d", v9, 0xEu);
      }

      *(*(a1 + 32) + 20) = *(a1 + 40);
      v8 = [*(a1 + 32) conferenceProvider];
      [v8 setRemoteVideoPresentationState:*(a1 + 40)];
    }
  }
}

void *sub_10006D364(void *result)
{
  if (*(result[4] + 16) <= 4)
  {
    v1 = result;
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100471450();
    }

    v3 = [v1[4] conferenceProvider];
    [v3 stop];

    return [v1[4] _setEndedWithReason:3 error:0];
  }

  return result;
}

void sub_10006D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D4C0(uint64_t a1)
{
  v3 = [*(a1 + 32) configuration];
  v2 = [v3 capabilities];
  *(*(*(a1 + 40) + 8) + 24) = [v2 deviceRole];
}

void sub_10006D5C4(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 capabilities];
  v4 = [v3 deviceRole];
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) configuration];
      v8 = [v7 capabilities];
      v9 = [v8 deviceRole];
      v10 = *(a1 + 40);
      v17[0] = 67109376;
      v17[1] = v9;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating device role from %d to %d", v17, 0xEu);
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) configuration];
    v13 = [v12 capabilities];
    [v13 setDeviceRole:v11];

    v14 = [*(a1 + 32) conferenceProvider];
    v15 = [*(a1 + 32) configuration];
    v16 = [v15 capabilities];
    [v14 updateCapabilities:v16];
  }
}

void sub_10006D9D0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conferenceFinishedPreparing:*(a1 + 32)];
  }
}

void sub_10006DAA4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conferenceStarted:*(a1 + 32)];
  }
}

void sub_10006DBA8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) endedWithReason:*(a1 + 48) error:*(a1 + 40)];
  }
}

void sub_10006DC80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connectionClosedForConference:*(a1 + 32)];
  }
}

void sub_10006DD54(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 mutedChangedForConference:*(a1 + 32)];
  }
}

void sub_10006DE28(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 sendingAudioChangedForConference:*(a1 + 32)];
  }
}

void sub_10006DEFC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 receivedFirstRemoteFrameForConference:*(a1 + 32)];
  }
}

void sub_10006DFD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 remoteVideoPausedForConference:*(a1 + 32)];
  }
}

void sub_10006E0A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) remoteMediaStalled:*(a1 + 40)];
  }
}

void sub_10006E1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) inputFrequencyLevelChangedTo:*(a1 + 40)];
  }
}

void sub_10006E2A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) outputFrequencyLevelChangedTo:*(a1 + 40)];
  }
}

void sub_10006E37C(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 40);
    [v3 conference:*(a1 + 32) inputLevelChangedTo:v2];
  }
}

void sub_10006E458(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 40);
    [v3 conference:*(a1 + 32) outputLevelChangedTo:v2];
  }
}

void sub_10006E530(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) changedBytesOfDataUsed:*(a1 + 40)];
  }
}

void sub_10006E634(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) didReceiveData:*(a1 + 40) forCallID:*(a1 + 48)];
  }
}

void sub_10006E7E0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = 138412802;
    v15 = v4;
    v16 = 1024;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conference=%@ didStartSession=%d error=%@", &v14, 0x1Cu);
  }

  if (*(a1 + 48) == 1 && !*(a1 + 40))
  {
    v7 = *(*(a1 + 32) + 16);
    v8 = sub_100004778();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 > 4)
    {
      if (v9)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Session is already past Connected state, not sending delegate started", &v14, 2u);
      }
    }

    else
    {
      if (v9)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully started session", &v14, 2u);
      }

      [*(a1 + 32) setState:5];
      v8 = [*(a1 + 32) _isSendingVideoExpected];
      if (v8)
      {
        v10 = sub_100004778();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 BOOLValue];
          v14 = 67109120;
          LODWORD(v15) = v11 ^ 1;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session is connected, setting videoPaused to expected value: %d", &v14, 8u);
        }

        v12 = [v8 BOOLValue];
        v13 = [*(a1 + 32) conferenceProvider];
        [v13 setVideoPaused:v12 ^ 1];
      }

      [*(a1 + 32) _sendDelegateStarted];
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100471490(a1);
    }

    [*(a1 + 32) _setEndedWithReason:5 error:*(a1 + 40)];
  }
}

void sub_10006EB08(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didStopError=%@ callMetadata=%@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v16 = 0;
  v7 = [v5 _endedReasonForDidStopError:v6 error:&v16];
  v8 = v16;
  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100471508();
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:AVConferenceSessionSentBytes];
    v12 = [*(a1 + 40) objectForKeyedSubscript:AVConferenceSessionReceivedBytes];
    v13 = [v11 integerValue];
    v14 = &v13[[v12 integerValue]];
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending delegate bytesOfDataUsageChanged: %ld", buf, 0xCu);
    }

    [*(a1 + 48) _sendDelegateBytesOfDataUsageChanged:v14];
  }

  [*(a1 + 48) _stop];
  [*(a1 + 48) _setEndedWithReason:v7 error:v8];
}

id sub_10006ED84(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  return [*(a1 + 32) _sendDelegateConnectionClosed];
}

id sub_10006F18C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didPauseAudio=%d error=%@", v6, 0x12u);
  }

  return [*(a1 + 40) _sendDelegateSendingAudioChanged];
}

void sub_10006F308(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v13 = 67109378;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didPauseVideo=%d error=%@", &v13, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5[4] > 4)
  {
    v8 = [v5 _isSendingVideoExpected];
    v6 = v8;
    if (!*(a1 + 32) && v8 && *(a1 + 48) == [v8 BOOLValue])
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v13 = 67109378;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Video was set to didPauseVideo: %d sendingVideoExpected: %@. Setting sendingVideo to sendingVideoExpected", &v13, 0x12u);
      }

      v11 = [v6 BOOLValue];
      v12 = [*(a1 + 40) conferenceProvider];
      [v12 setVideoPaused:v11 ^ 1];
    }

    else
    {
      [*(a1 + 40) setSendingVideoExpected:0];
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 16);
      v13 = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not setting sendingVideoExpected to nil since our state is %d", &v13, 8u);
    }
  }
}

id sub_10006F580(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [*(a1 + 32) setHasReceivedFirstRemoteFrame:1];
  return [*(a1 + 32) _sendDelegateReceivedFirstRemoteFrame];
}

id sub_10006F698(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "remoteVideoPaused=%d", v5, 8u);
  }

  [*(a1 + 32) setRemoteVideoPaused:*(a1 + 40)];
  return [*(a1 + 32) _sendDelegateRemoteVideoPaused];
}

id sub_10006F7EC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "remoteMediaStalled=%d", v5, 8u);
  }

  return [*(a1 + 32) _sendDelegateRemoteMediaStalled:*(a1 + 40)];
}

id sub_10006F954(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10047157C(a1);
  }

  return [*(a1 + 40) _setEndedWithReason:6 error:0];
}

void sub_100070270(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 providerByIdentifier];
  [v4 channelProviderManagerDataSource:v2 didChangeProviderByIdentifier:v3];
}

void sub_100070878(id a1)
{
  v1 = objc_alloc_init(CSDFocusStateManager);
  v2 = qword_1006ACAD0;
  qword_1006ACAD0 = v1;
}

id sub_100071CF4(CSDMessagingConversationParticipant *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationParticipant;
  v3 = [(CSDMessagingConversationParticipant *)&v7 description];
  v4 = [(CSDMessagingConversationParticipant *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_100072604(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v186) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v186 & 0x7F) << v6;
      if ((v186 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 128) |= 0x80u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v186 & 0x7F) << v14;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_310:
            v183 = 96;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_310;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v186 & 0x7F) << v91;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_314:
        *(a1 + 8) = v97;
        goto LABEL_353;
      case 3u:
        v76 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 48), v76);
        v186 = 0;
        v187 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v76, a2))
        {
          goto LABEL_355;
        }

        goto LABEL_265;
      case 4u:
        v83 = PBReaderReadData();
        v84 = 32;
        goto LABEL_262;
      case 5u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 128) |= 0x4000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v186 & 0x7F) << v46;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_288;
          }
        }

        v33 = (v48 != 0) & ~[a2 hasError];
LABEL_288:
        v184 = 112;
        goto LABEL_352;
      case 6u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 128) |= 0x40000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v186 & 0x7F) << v116;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_322;
          }
        }

        v33 = (v118 != 0) & ~[a2 hasError];
LABEL_322:
        v184 = 116;
        goto LABEL_352;
      case 7u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 128) |= 0x1000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v186 & 0x7F) << v128;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_328;
          }
        }

        v33 = (v130 != 0) & ~[a2 hasError];
LABEL_328:
        v184 = 110;
        goto LABEL_352;
      case 8u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 128) |= 0x10000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v186 & 0x7F) << v85;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_306;
          }
        }

        v33 = (v87 != 0) & ~[a2 hasError];
LABEL_306:
        v184 = 114;
        goto LABEL_352;
      case 9u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 128) |= 0x2000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v186 & 0x7F) << v140;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_334;
          }
        }

        v33 = (v142 != 0) & ~[a2 hasError];
LABEL_334:
        v184 = 111;
        goto LABEL_352;
      case 0xAu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 128) |= 0x20u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v186 & 0x7F) << v58;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v60;
        }

LABEL_294:
        v183 = 76;
        goto LABEL_345;
      case 0xBu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v186 & 0x7F) << v134;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_332;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v136;
        }

LABEL_332:
        v183 = 60;
        goto LABEL_345;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 128) |= 0x800u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v186 & 0x7F) << v40;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_286;
          }
        }

        v33 = (v42 != 0) & ~[a2 hasError];
LABEL_286:
        v184 = 109;
        goto LABEL_352;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 128) |= 0x400u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v186 & 0x7F) << v52;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_290;
          }
        }

        v33 = (v54 != 0) & ~[a2 hasError];
LABEL_290:
        v184 = 108;
        goto LABEL_352;
      case 0xEu:
        v76 = objc_alloc_init(CSDMessagingConversationParticipantAssociation);
        objc_storeStrong((a1 + 16), v76);
        v186 = 0;
        v187 = 0;
        if (!PBReaderPlaceMark() || !sub_1000609B0(v76, a2))
        {
          goto LABEL_355;
        }

        goto LABEL_265;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 128) |= 0x200000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v186 & 0x7F) << v34;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_284;
          }
        }

        v33 = (v36 != 0) & ~[a2 hasError];
LABEL_284:
        v184 = 119;
        goto LABEL_352;
      case 0x10u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v186 & 0x7F) << v77;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_304;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v79;
        }

LABEL_304:
        v183 = 24;
        goto LABEL_345;
      case 0x11u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 128) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v186 & 0x7F) << v27;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_282;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_282:
        v184 = 123;
        goto LABEL_352;
      case 0x12u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 128) |= 0x800000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v186 & 0x7F) << v104;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_318;
          }
        }

        v33 = (v106 != 0) & ~[a2 hasError];
LABEL_318:
        v184 = 121;
        goto LABEL_352;
      case 0x13u:
        v83 = PBReaderReadData();
        v84 = 64;
        goto LABEL_262;
      case 0x14u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 128) |= 0x80000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v186 & 0x7F) << v164;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_347;
          }
        }

        v33 = (v166 != 0) & ~[a2 hasError];
LABEL_347:
        v184 = 117;
        goto LABEL_352;
      case 0x15u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 128) |= 0x400000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v186 & 0x7F) << v110;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_320;
          }
        }

        v33 = (v112 != 0) & ~[a2 hasError];
LABEL_320:
        v184 = 120;
        goto LABEL_352;
      case 0x16u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 128) |= 0x200u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v186 & 0x7F) << v122;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v124;
        }

LABEL_326:
        v183 = 104;
        goto LABEL_345;
      case 0x17u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 128) |= 0x100u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v186 & 0x7F) << v158;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_344;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v160;
        }

LABEL_344:
        v183 = 100;
        goto LABEL_345;
      case 0x18u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 128) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v186 & 0x7F) << v170;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_349;
          }
        }

        v33 = (v172 != 0) & ~[a2 hasError];
LABEL_349:
        v184 = 122;
        goto LABEL_352;
      case 0x19u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 128) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v186 & 0x7F) << v70;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_300;
          }
        }

        v33 = (v72 != 0) & ~[a2 hasError];
LABEL_300:
        v184 = 124;
        goto LABEL_352;
      case 0x1Au:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 128) |= 0x40u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v186 & 0x7F) << v64;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_298;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v66;
        }

LABEL_298:
        v183 = 80;
        goto LABEL_345;
      case 0x1Bu:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 128) |= 0x20000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v186 & 0x7F) << v177;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_351;
          }
        }

        v33 = (v179 != 0) & ~[a2 hasError];
LABEL_351:
        v184 = 115;
        goto LABEL_352;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 128) |= 0x10u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v186 & 0x7F) << v21;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_280:
        v183 = 72;
        goto LABEL_345;
      case 0x1Du:
        v83 = PBReaderReadString();
        v84 = 88;
LABEL_262:
        v176 = *(a1 + v84);
        *(a1 + v84) = v83;

        goto LABEL_353;
      case 0x1Eu:
        v76 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
        objc_storeStrong((a1 + 40), v76);
        v186 = 0;
        v187 = 0;
        if (PBReaderPlaceMark() && sub_10022A638(v76, a2))
        {
LABEL_265:
          PBReaderRecallMark();

LABEL_353:
          v4 = a2;
          continue;
        }

LABEL_355:

        return 0;
      case 0x1Fu:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 128) |= 0x100000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v186 & 0x7F) << v146;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_336;
          }
        }

        v33 = (v148 != 0) & ~[a2 hasError];
LABEL_336:
        v184 = 118;
        goto LABEL_352;
      case 0x20u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 128) |= 0x8000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v186 & 0x7F) << v98;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_316;
          }
        }

        v33 = (v100 != 0) & ~[a2 hasError];
LABEL_316:
        v184 = 113;
LABEL_352:
        *(a1 + v184) = v33;
        goto LABEL_353;
      case 0x21u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v186 & 0x7F) << v152;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_340;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v154;
        }

LABEL_340:
        v183 = 56;
LABEL_345:
        *(a1 + v183) = v20;
        goto LABEL_353;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_353;
    }
  }
}