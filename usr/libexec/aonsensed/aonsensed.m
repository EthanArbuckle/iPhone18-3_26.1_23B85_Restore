uint64_t sub_100002010(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALWiFiNotification();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  v24 = v7[2];
  v24(v10, v11, v6);
  (*(*a1 + 312))(v10);
  v23 = v7[1];
  v23(v10, v6);
  corelog.getter(v5);

  v25 = v5;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v2;
    v16 = v15;
    v27 = v15;
    *v14 = 136315138;
    swift_beginAccess();
    v24(v10, v11, v6);
    v17 = ALWiFiNotification.description.getter();
    v19 = v18;
    v23(v10, v6);
    v20 = sub_10000234C(v17, v19, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "#WiFi,_onData,notif,%s", v14, 0xCu);
    sub_100002580(v16);

    return (*(v26 + 8))(v25, v22);
  }

  else
  {

    return (*(v26 + 8))(v25, v2);
  }
}

uint64_t sub_10000234C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002418(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100002524(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002580(v11);
  return v7;
}

unint64_t sub_100002418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000379E0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100002524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002580(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000025CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002678(void *a1, int a2)
{
  LODWORD(v212) = a2;
  v205 = type metadata accessor for ALWiFiNotification();
  v190 = *(v205 - 8);
  v3 = *(v190 + 64);
  __chkstk_darwin(v205);
  v189 = &v164[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v202 = *(v5 - 8);
  v6 = *(v202 + 64);
  __chkstk_darwin(v5);
  v200 = &v164[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = type metadata accessor for DispatchQoS();
  v199 = *(v201 - 8);
  v8 = *(v199 + 64);
  __chkstk_darwin(v201);
  v198 = &v164[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v197 = &v164[-v12];
  v13 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v196 = &v164[-v15];
  v182 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v191 = *(v182 - 8);
  v16 = *(v191 + 64);
  __chkstk_darwin(v182);
  v181 = &v164[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v180 = &v164[-v20];
  v193 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v203 = *(v193 - 8);
  v21 = *(v203 + 64);
  v22 = __chkstk_darwin(v193);
  v192 = &v164[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v210 = &v164[-v24];
  v25 = type metadata accessor for Logger();
  v213 = *(v25 - 8);
  v26 = *(v213 + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v164[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v27);
  v204 = &v164[-v31];
  v32 = __chkstk_darwin(v30);
  v34 = &v164[-v33];
  v35 = __chkstk_darwin(v32);
  v194 = &v164[-v36];
  __chkstk_darwin(v35);
  v38 = &v164[-v37];
  v39 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v164[-v41];
  v43 = type metadata accessor for ALWiFiScanResult();
  v207 = *(v43 - 8);
  v208 = v43;
  v44 = *(v207 + 64);
  __chkstk_darwin(v43);
  v46 = &v164[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  v48 = *(*(v47 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() < 1)
  {
    corelog.getter(v29);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "#WiFi, empty scan cache batch", v58, 2u);
    }

    return (*(v213 + 8))(v29, v25);
  }

  v49 = machContTimeSec()();
  ALWiFiScanResult.init()();
  ALTimeStamp.init(machContinuousTimeSec:)();
  v50 = type metadata accessor for ALTimeStamp();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v195 = 1;
  v185 = v50;
  v184 = v52;
  v183 = v51 + 56;
  (v52)(v42, 0, 1);
  v211 = v46;
  v53 = ALWiFiScanResult._scanTimestamp.setter();
  v54 = v212;
  v186 = v42;
  if (v212)
  {
    v188 = 0;
    v55 = v209;
  }

  else
  {
    v55 = v209;
    v188 = (*(*v209 + 200))(v53);
    v195 = v60;
  }

  corelog.getter(v38);
  sub_10000D9FC(a1, &aBlock);

  v61 = Logger.logObject.getter();
  v62 = v55;
  v63 = static os_log_type_t.default.getter();
  v64 = os_log_type_enabled(v61, v63);
  v206 = v25;
  v187 = v5;
  if (v64)
  {
    v65 = swift_slowAlloc();
    *v65 = 67240960;
    *(v65 + 4) = v54 & 1;
    *(v65 + 8) = 2050;
    *(v65 + 10) = v49;
    *(v65 + 18) = 2050;
    v66 = (*(*v62 + 224))();
    if (v67)
    {
      v68 = 0;
    }

    else
    {
      v68 = v66;
    }

    *(v65 + 20) = v68;

    *(v65 + 28) = 2050;
    v69 = AssociatedConformanceWitness;
    sub_10000D9B8(&aBlock, AssociatedTypeWitness);
    v70 = *(*(v69 + 8) + 8);
    v71 = dispatch thunk of Collection.count.getter();
    sub_100002580(&aBlock);
    *(v65 + 30) = v71;
    _os_log_impl(&_mh_execute_header, v61, v63, "#WiFi,bg,%{BOOL,public}d,now,%{public}f,last,%{public}llu,size,%{public}ld", v65, 0x26u);
    v25 = v206;
  }

  else
  {
    sub_100002580(&aBlock);
  }

  v72 = v213 + 8;
  v214 = *(v213 + 8);
  v214(v38, v25);
  v73 = a1[3];
  v74 = a1[4];
  v75 = sub_10000D9B8(a1, v73);
  v76 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v75);
  (*(v78 + 16))(&v164[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v79 = *(*(*(v74 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000DA60(&aBlock);
  dispatch thunk of Sequence.makeIterator()();
  sub_10000DAC4(&aBlock, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v81 = v215;
  v213 = v72;
  v82 = v211;
  if (!v215)
  {
LABEL_42:
    sub_100002580(&aBlock);
    v123 = swift_allocBox();
    v125 = v124;
    ALWiFiNotification.init()();
    v126 = type metadata accessor for ALWiFiNotification.NotiType();
    v127 = *(v126 - 8);
    v128 = &enum case for ALWiFiNotification.NotiType.scanCache(_:);
    if ((v212 & 1) == 0)
    {
      v128 = &enum case for ALWiFiNotification.NotiType.scan(_:);
    }

    v129 = v196;
    (*(*(v126 - 8) + 104))(v196, *v128, v126);
    (*(v127 + 56))(v129, 0, 1, v126);
    ALWiFiNotification._type.setter();
    v130 = v186;
    static ALTimeStamp.now()();
    v184(v130, 0, 1, v185);
    ALWiFiNotification._timestamp.setter();
    v132 = v207;
    v131 = v208;
    v133 = v197;
    (*(v207 + 16))(v197, v82, v208);
    (*(v132 + 56))(v133, 0, 1, v131);
    ALWiFiNotification._scanResult.setter();
    ALWiFiNotification._associatedMac.setter();
    ALWiFiNotification._simulated.setter();
    ALWiFiNotification._available.setter();
    v134 = [objc_opt_self() mainBundle];
    v135 = [v134 bundleIdentifier];

    v210 = v125;
    if (v135)
    {
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v137;
    }

    else
    {
      v138 = 0xE100000000000000;
      v136 = 95;
    }

    v139 = v209;
    aBlock = v136;
    v217 = v138;

    v140._countAndFlagsBits = 0x6F6E2E696669772ELL;
    v140._object = 0xEA00000000006974;
    String.append(_:)(v140);

    String.utf8CString.getter();

    v141 = os_transaction_create();

    v143 = (*(*v139 + 128))(v142);
    v144 = swift_allocObject();
    v144[2] = v141;
    v144[3] = v139;
    v144[4] = v123;
    AssociatedConformanceWitness = sub_10000E288;
    v221 = v144;
    aBlock = _NSConcreteStackBlock;
    v217 = 1107296256;
    v218 = sub_100003EE4;
    AssociatedTypeWitness = &unk_100408050;
    v145 = _Block_copy(&aBlock);

    v212 = v141;
    swift_unknownObjectRetain();

    v146 = v198;
    static DispatchQoS.unspecified.getter();
    v215 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    v147 = v200;
    v148 = v187;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v145);

    (*(v202 + 8))(v147, v148);
    (*(v199 + 8))(v146, v201);

    v149 = v204;
    corelog.getter(v204);

    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v215 = v153;
      *v152 = 136315138;
      v154 = v210;
      swift_beginAccess();
      v155 = v190;
      v156 = v189;
      v157 = v205;
      (*(v190 + 16))(v189, v154, v205);
      v158 = ALWiFiNotification.description.getter();
      v160 = v159;
      (*(v155 + 8))(v156, v157);
      v161 = sub_10000234C(v158, v160, &v215);

      *(v152 + 4) = v161;
      _os_log_impl(&_mh_execute_header, v150, v151, "#WiFi,processResultArray,notif,%s", v152, 0xCu);
      sub_100002580(v153);

      swift_unknownObjectRelease();

      v214(v204, v206);
    }

    else
    {
      swift_unknownObjectRelease();

      v214(v149, v206);
    }

    (*(v207 + 8))(v211, v208);
  }

  v179 = (v191 + 104);
  v178 = (v191 + 32);
  v191 += 56;
  v173 = (v203 + 16);
  v172 = v203 + 32;
  v177 = enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:);
  v171 = v203 + 8;
  v176 = enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:);
  v175 = enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:);
  v174 = enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:);
  *&v80 = 134350339;
  v169 = v80;
  while (1)
  {
    while (1)
    {
      v84 = [v81 channel];
      if (!v84)
      {
        goto LABEL_17;
      }

      v85 = v84;
      v86 = [v81 BSSID];
      if (v86)
      {
        break;
      }

LABEL_17:
      v83 = corelog.getter(v34);
      __chkstk_darwin(v83);
      v163 = v81;
      v162 = 160;
      Logger._fault(_:function:file:line:)(sub_100334D78, &v164[-32], "processResultArray(_:bg:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);

      v214(v34, v25);
      sub_10000DAC4(&aBlock, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v81 = v215;
      if (!v215)
      {
        goto LABEL_42;
      }
    }

    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    ALWiFiScanSingleAccessPoint.init()();

    v166 = v88;
    sub_10000DB14(v88, v90);
    v168 = v90;

    ALWiFiScanSingleAccessPoint._mac.setter();
    result = [v85 channel];
    if (result < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (result > 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    LOBYTE(v215) = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
    v91 = [v85 band];
    v92 = v175;
    if (v91 != 1)
    {
      v92 = v174;
    }

    if (v91 == 2)
    {
      v92 = v176;
    }

    if (v91 == 3)
    {
      v93 = v177;
    }

    else
    {
      v93 = v92;
    }

    v94 = v181;
    v95 = v182;
    (*v179)(v181, v93, v182);
    v96 = v180;
    (*v178)(v180, v94, v95);
    (*v191)(v96, 0, 1, v95);
    ALWiFiScanSingleAccessPoint._band.setter();
    result = [v81 RSSI];
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_53;
    }

    v97 = v194;
    v98 = v168;
    if (result > 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

    LOBYTE(v215) = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
    [v81 timestamp];
    NsToSec.getter();
    LOBYTE(v215) = 0;
    ALWiFiScanSingleAccessPoint._ageSec.setter();
    corelog.getter(v97);
    v99 = v81;
    v100 = v85;

    v101 = v99;
    v102 = v100;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();

    v165 = v104;
    v105 = os_log_type_enabled(v103, v104);
    v170 = v102;
    if (v105)
    {
      v106 = v98;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v215 = v108;
      *v107 = v169;
      *(v107 + 4) = [v101 timestamp];

      *(v107 + 12) = 2050;
      *(v107 + 14) = [v101 age];

      *(v107 + 22) = 2081;
      v109 = sub_10000234C(v166, v106, &v215);

      *(v107 + 24) = v109;
      v110 = v170;
      *(v107 + 32) = 1026;
      *(v107 + 34) = [v110 band];

      *(v107 + 38) = 2050;
      *(v107 + 40) = [v110 channel];

      *(v107 + 48) = 2050;
      *(v107 + 50) = [v101 RSSI];

      _os_log_impl(&_mh_execute_header, v103, v165, "#WiFi,scan,ts,%{public}llu,age,%{public}ld,mac,%{private}s,band,%{public}u,chan,%{public}ld,rssi,%{public}ld", v107, 0x3Au);
      sub_100002580(v108);
    }

    else
    {
    }

    v214(v194, v206);
    if ((v212 & 1) != 0 && [v101 wasConnectedDuringSleep])
    {
      v188 = ALWiFiScanSingleAccessPoint._mac.getter();
      v195 = v111;
    }

    (*v173)(v192, v210, v193);
    v112 = ALWiFiScanResult._accessPoints.modify();
    v114 = v113;
    v115 = *v113;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v114 = v115;
    v167 = v101;
    v117 = v112;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v115 = sub_10000DFC4(0, v115[2] + 1, 1, v115);
      *v114 = v115;
    }

    v119 = v115[2];
    v118 = v115[3];
    if (v119 >= v118 >> 1)
    {
      v115 = sub_10000DFC4(v118 > 1, v119 + 1, 1, v115);
      *v114 = v115;
    }

    v115[2] = v119 + 1;
    v120 = v203;
    v121 = v115 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119;
    v122 = v193;
    (*(v203 + 32))(v121, v192, v193);
    v117(&v215, 0);

    (*(v120 + 8))(v210, v122);
    sub_10000DAC4(&aBlock, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    v81 = v215;
    v25 = v206;
    v82 = v211;
    if (!v215)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_100003E78()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003EC0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t *sub_100003EEC()
{
  v1 = *(type metadata accessor for ALWiFiNotification() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = (*(**(v0 + 16) + 216))();
  if (v4)
  {
    (*(*v4 + 184))(v0 + v2);
  }

  result = sub_100004064();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(**result + 184);

    v6(v3);
  }

  return result;
}

uint64_t sub_10000402C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t *sub_100004064()
{
  if (qword_10048BE98 != -1)
  {
    swift_once();
  }

  return &qword_10048BEA0;
}

void sub_1000040B4()
{
  v1 = v0;
  v60 = type metadata accessor for Logger();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v60);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = machContTimeSec()();
  if (v6 - *(v1 + 72) >= *(v1 + 80))
  {
    v58 = v2;
    *(v1 + 72) = v6;
    v7 = swift_allocObject();
    v8 = sub_10032AB90(&_swiftEmptyArrayStorage);
    *(v7 + 16) = v8;
    v10 = (v1 + 48);
    v9 = *(v1 + 48);
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v8;
    v59 = v5;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(isa, 0x6D754E7663527442, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v13 = aBlock[0];
    *(v7 + 16) = aBlock[0];
    v14 = *(v1 + 56);
    v15 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v13;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v15, 0x5273704169666957, 0xED00006D754E7663, v16);
    v17 = aBlock[0];
    *(v7 + 16) = aBlock[0];
    v18 = *(v1 + 64);
    v19 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v17;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v19, 0xD000000000000015, 0x80000001003B1470, v20);
    *(v7 + 16) = aBlock[0];
    sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
    v21 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v22 = *(v7 + 16);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v22;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v21, 0xD000000000000011, 0x80000001003B1490, v23);
    v24 = aBlock[0];
    *(v7 + 16) = aBlock[0];
    v25 = *(v1 + 32);
    v26 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v24;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v26, 0xD000000000000013, 0x80000001003B14B0, v27);
    *(v7 + 16) = aBlock[0];
    v28 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v29 = *(v7 + 16);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v29;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v28, 0xD000000000000012, 0x80000001003B14D0, v30);
    *(v7 + 16) = aBlock[0];
    v31 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v32 = *(v7 + 16);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v32;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v31, 0xD000000000000010, 0x80000001003B14F0, v33);
    v34 = aBlock[0];
    *(v7 + 16) = aBlock[0];
    v35 = *(v1 + 16);
    v36 = Bool._bridgeToObjectiveC()().super.super.isa;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v34;
    *(v7 + 16) = 0x8000000000000000;
    sub_10032A8AC(v36, 0x654432706F417349, 0xEC00000065636976, v37);
    v38 = aBlock[0];
    *(v7 + 16) = aBlock[0];
    v40 = *(v1 + 24);
    v39 = (v1 + 24);
    v41 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v38;
    *(v7 + 16) = 0x8000000000000000;
    v43 = v59;
    sub_10032A8AC(v41, 0x4F4164656C696146, 0xEF73676E69503250, v42);
    *(v7 + 16) = aBlock[0];
    corelog.getter(v43);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136446210;
      swift_beginAccess();
      v48 = *(v7 + 16);
      sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);
      v49 = v7;
      v50 = v10;

      v51 = Dictionary.description.getter();
      v53 = v52;

      v54 = v51;
      v10 = v50;
      v7 = v49;
      v55 = sub_10000234C(v54, v53, aBlock);

      *(v46 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v44, v45, "CoreAnalytics, send heartbeat event: %{public}s", v46, 0xCu);
      sub_100002580(v47);

      (*(v58 + 8))(v59, v60);
    }

    else
    {

      (*(v58 + 8))(v43, v60);
    }

    v56 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10032AC9C;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032A44C;
    aBlock[3] = &unk_100407D20;
    v57 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v57);

    *v39 = 0;
    v39[1] = 0;
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
  }
}

uint64_t sub_100004700()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004738(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = __CFADD__(v2, a1);
  v4 = v2 + a1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v4;
    v5 = *(v1 + 64);
    v3 = __CFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      sub_1000040B4();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_100004790(unint64_t result)
{
  if (qword_10048BE68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_10048BE70))
  {
    if (qword_10048BE78)
    {
      return result * qword_10048BE70 / qword_10048BE78;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004820(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100004830(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100004898(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  (*(*v1 + 232))(a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100004904(void *a1)
{
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v56 - 8);
  v2 = *(v70 + 64);
  __chkstk_darwin(v56);
  v68 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ALBtAdvertisement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v63 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v62 = v18;
  __chkstk_darwin(v15);
  v20 = &v53 - v19;
  v21 = [objc_opt_self() mainBundle];
  v22 = [v21 bundleIdentifier];

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE100000000000000;
    v23 = 95;
  }

  aBlock = v23;
  v73 = v25;

  v26._countAndFlagsBits = 0x6E756F662E74622ELL;
  v26._object = 0xE900000000000064;
  String.append(_:)(v26);

  String.utf8CString.getter();

  v59 = os_transaction_create();

  sub_1000050EC(a1, v20);
  scanlog.getter(v9);
  v27 = *(v11 + 16);
  v64 = v20;
  v27(v17, v20, v10);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v55 = v10;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v9;
    v54 = v27;
    v33 = v32;
    aBlock = v32;
    *v31 = 136315138;
    v34 = ALBtAdvertisement.description.getter();
    v36 = v35;
    v37 = *(v11 + 8);
    v57 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58 = v37;
    v37(v17, v10);
    v38 = sub_10000234C(v34, v36, &aBlock);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "#BT,onDeviceFound,%s", v31, 0xCu);
    sub_100002580(v33);
    v27 = v54;

    v39 = (*(v60 + 8))(v53, v61);
  }

  else
  {

    v40 = *(v11 + 8);
    v57 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58 = v40;
    v40(v17, v10);
    v39 = (*(v60 + 8))(v9, v61);
  }

  v41 = v65;
  v42 = (*(*v65 + 112))(v39);
  v43 = v63;
  v44 = v64;
  v45 = v55;
  v27(v63, v64, v55);
  v46 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v59;
  *(v47 + 24) = v41;
  (*(v11 + 32))(v47 + v46, v43, v45);
  v76 = sub_100006494;
  v77 = v47;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100003EE4;
  v75 = &unk_100408250;
  v48 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v49 = v66;
  static DispatchQoS.unspecified.getter();
  v71 = &_swiftEmptyArrayStorage;
  sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  v50 = v68;
  v51 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);
  swift_unknownObjectRelease();

  (*(v70 + 8))(v50, v51);
  (*(v67 + 8))(v49, v69);
  v58(v44, v45);
}

uint64_t sub_100005020()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000050EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = type metadata accessor for ALBtAdvertisement.BtType();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v67);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_1004312B8, &unk_10039A810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = sub_100024A2C(&unk_1004312C0, &qword_10036D750);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v62 - v14;
  v16 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v64 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = __chkstk_darwin(v20);
  v69 = &v62 - v24;
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v70 = a2;
  ALBtAdvertisement.init()();
  v27 = [a1 bleAdvertisementTimestampMachContinuous];
  v28 = MsInSec.getter();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (is_mul_ok(v27, v28))
  {
    v65 = v8;
    v63 = v7;
    ALBtAdvertisement._machContTimeNs.setter();
    v29 = [a1 btAddressData];
    v66 = v11;
    v68 = v22;
    if (v29)
    {
      v30 = v29;
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_100005A08(v31, v33);
      sub_100005B2C(v31, v33);
    }

    [a1 bleRSSI];
    v73 = 0;
    ALBtAdvertisement._rssidB.setter();
    [a1 bleChannel];
    v72 = 0;
    ALBtAdvertisement._channel.setter();
    v34 = [a1 bleAdvertisementData];
    v35 = v67;
    if (v34)
    {
      v36 = v34;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ALBtAdvertisement._payload.setter();
    [a1 deviceFlags];
    ALBtAdvertisement._deviceFlags.setter();
    [a1 discoveryFlags];
    ALBtAdvertisement._discoveryFlags.setter();
    [a1 vendorID];
    ALBtAdvertisement._vendorID.setter();
    v37 = [a1 identifier];
    if (v37)
    {
      v38 = v37;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ALBtAdvertisement._identifier.setter();
    v39 = [a1 idsDeviceID];
    if (v39)
    {
      v40 = v39;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v41 = v69;
    ALBtAdvertisement._idsDeviceID.setter();
    if (([a1 discoveryFlags] & 0x8000) != 0 || (objc_msgSend(a1, "discoveryFlags") & 0x4000) != 0)
    {
      (*(v4 + 104))(v26, enum case for ALBtAdvertisement.BtType.type7(_:), v35);
      (*(v4 + 56))(v26, 0, 1, v35);
      ALBtAdvertisement._type.setter();
      sub_100005B80(a1, 1);
      v42 = type metadata accessor for ALBtAdvInfoType7();
      (*(*(v42 - 8) + 56))(v15, 0, 1, v42);
      ALBtAdvertisement._type7Info.setter();
    }

    if (([a1 discoveryFlags] & 0x10000) != 0)
    {
      v44 = enum case for ALBtAdvertisement.BtType.type7(_:);
    }

    else
    {
      v43 = [a1 discoveryFlags];
      v44 = enum case for ALBtAdvertisement.BtType.type7(_:);
      if ((v43 & 0x80) == 0)
      {
LABEL_19:
        ALBtAdvertisement.type.getter();
        v46 = v35;
        v47 = v68;
        (*(v4 + 104))(v68, v44, v46);
        (*(v4 + 56))(v47, 0, 1, v46);
        v48 = v66;
        v49 = *(v65 + 48);
        sub_100005CC4(v41, v66);
        sub_100005CC4(v47, v48 + v49);
        v50 = v4;
        v51 = v4;
        v52 = v41;
        v53 = *(v51 + 48);
        if (v53(v48, 1, v46) == 1)
        {
          sub_1000059A8(v47, &qword_100418C58, &unk_10039A820);
          sub_1000059A8(v52, &qword_100418C58, &unk_10039A820);
          if (v53(v48 + v49, 1, v46) == 1)
          {
            sub_1000059A8(v48, &qword_100418C58, &unk_10039A820);
LABEL_27:
            v56 = &selRef_proximityPairingProductID;
            goto LABEL_28;
          }
        }

        else
        {
          v54 = v64;
          sub_100005CC4(v48, v64);
          v55 = v46;
          if (v53(v48 + v49, 1, v46) != 1)
          {
            v57 = v50;
            v58 = *(v50 + 32);
            v59 = v63;
            v58(v63, v48 + v49, v46);
            sub_100005E70(&unk_1004312D0, &type metadata accessor for ALBtAdvertisement.BtType);
            v60 = dispatch thunk of static Equatable.== infix(_:_:)();
            v61 = *(v57 + 8);
            v61(v59, v55);
            sub_1000059A8(v68, &qword_100418C58, &unk_10039A820);
            sub_1000059A8(v69, &qword_100418C58, &unk_10039A820);
            v61(v54, v55);
            sub_1000059A8(v48, &qword_100418C58, &unk_10039A820);
            if (v60)
            {
              goto LABEL_27;
            }

LABEL_25:
            v56 = &selRef_productID;
LABEL_28:
            [a1 *v56];
            v71 = 0;
            ALBtAdvertisement._productID.setter();

            return;
          }

          sub_1000059A8(v68, &qword_100418C58, &unk_10039A820);
          sub_1000059A8(v69, &qword_100418C58, &unk_10039A820);
          (*(v50 + 8))(v54, v46);
        }

        sub_1000059A8(v48, &qword_1004312B8, &unk_10039A810);
        goto LABEL_25;
      }
    }

    (*(v4 + 104))(v26, v44, v35);
    (*(v4 + 56))(v26, 0, 1, v35);
    ALBtAdvertisement._type.setter();
    sub_100005B80(a1, 0);
    v45 = type metadata accessor for ALBtAdvInfoType7();
    (*(*(v45 - 8) + 56))(v15, 0, 1, v45);
    ALBtAdvertisement._type7Info.setter();
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1000059A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100024A2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005A08(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
LABEL_8:
    if (v2 == 2)
    {
      v6 = *(a1 + 16);
      v7 = __DataStorage._bytes.getter();
      if (v7)
      {
        v5 = v7;
        v8 = __DataStorage._offset.getter();
        v2 = v6 - v8;
        if (!__OFSUB__(v6, v8))
        {
          goto LABEL_11;
        }

LABEL_17:
        __break(1u);
      }

      return __DataStorage._length.getter();
    }

    return ALBtAdvertisement._mac.setter();
  }

  if (!v2)
  {
    return ALBtAdvertisement._mac.setter();
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = __DataStorage._bytes.getter();
  if (!v4)
  {
    return __DataStorage._length.getter();
  }

  v5 = v4;
  a1 = __DataStorage._offset.getter();
  v2 = v3 - a1;
  if (__OFSUB__(v3, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  v9 = (v2 + v5);
  result = __DataStorage._length.getter();
  if (v9)
  {
    v11 = *v9;
    return ALBtAdvertisement._mac.setter();
  }

  return result;
}

uint64_t sub_100005B2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100005B80(void *a1, char a2)
{
  v10 = a1;
  v3 = sub_100024A2C(&qword_100418C60, &qword_10036D758);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  ALBtAdvInfoType7.init()();
  [v10 deviceFlags];
  ALBtAdvInfoType7._isSameAccount.setter();
  [v10 deviceFlags];
  ALBtAdvInfoType7._isFamily.setter();
  [v10 deviceFlags];
  ALBtAdvInfoType7._isSharedHome.setter();
  if (a2)
  {
    [v10 deviceFlags];
  }

  ALBtAdvInfoType7._isLeftBud.setter();
  isLeft = ALBtAdvInfoType7._isLeftBud.getter();
  if (isLeft == 2)
  {
    v8 = v10;
  }

  else
  {
    sub_100337C48(v10, isLeft & 1, v6);
    ALBtAdvInfoType7._placement.setter();
  }
}

uint64_t sub_100005CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100005DF0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100005DF0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005E70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005EB8()
{
  result = qword_100430F50;
  if (!qword_100430F50)
  {
    sub_100024BB0(&unk_10042F300, &qword_10039A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430F50);
  }

  return result;
}

uint64_t sub_100005F1C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ALBtNotification();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  ALBtNotification.init()();

  ALBtNotification._advertisements.setter();
  ALBtNotification._isScreenOn.setter();
  ALBtNotification._simulated.setter();
  static ALTimeStamp.now()();
  v20 = type metadata accessor for ALTimeStamp();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  ALBtNotification._timestamp.setter();
  scanlog.getter(v8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v21, v22))
  {

    v32 = (*(v3 + 8))(v8, v2);
LABEL_7:
    v33 = (*(*v41 + 136))(v32);
    swift_beginAccess();
    v34 = v42;
    v35 = v43;
    (*(v42 + 16))(v17, v19, v43);
    v33(v17);
    v36 = *(v34 + 8);
    v36(v17, v35);

    return (v36)(v19, v35);
  }

  v38 = v3;
  v39 = v2;
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v44 = v24;
  *v23 = 136446466;
  swift_beginAccess();
  v25 = ALBtNotification.description.getter();
  v27 = sub_10000234C(v25, v26, &v44);

  *(v23 + 4) = v27;
  *(v23 + 12) = 2050;
  if (*(a1 + 16))
  {
    v29 = *(*(type metadata accessor for ALBtAdvertisement() - 8) + 80);
    v30 = COERCE_DOUBLE(sub_1000065B8());
    if (v31)
    {
      v30 = -1.0;
    }

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "#BT,onAdvertisements,notif,%{public}s,delayMs,%{public}f", v23, 0x16u);
    sub_100002580(v24);

    v32 = (*(v38 + 8))(v8, v39);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006494()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 24);
  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v6 = *(v2 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100374440;
  (*(v3 + 16))(v7 + v4, v0 + v4, v1);
  (*(*v5 + 248))(v7, 1);
}

uint64_t sub_1000065B8()
{
  v0 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  ALBtNotification._timestamp.getter();
  v4 = type metadata accessor for ALTimeStamp();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000059A8(v3, &qword_100418C70, qword_10039A8A0);
LABEL_3:
    *&result = 0.0;
    return result;
  }

  v7 = COERCE_DOUBLE(ALTimeStamp._machAbsoluteTimeSec.getter());
  v9 = v8;
  (*(v5 + 8))(v3, v4);
  if (v9)
  {
    *&result = v7;
  }

  else
  {
    v10 = ALBtAdvertisement._machContTimeNs.getter();
    if (v11)
    {
      goto LABEL_3;
    }

    v12 = v10;
    v13 = v7 * MsInSec.getter();
    *&result = v13 - UsToSec.getter() * v12;
  }

  return result;
}

uint64_t sub_100006748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v19 = *(v10 - 8);
  v11 = *(v19 + 64);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(**(a2 + 56) + 200))(a1);
  if (!v2)
  {
    v18[2] = 0;
    v15 = *(ALBtNotification._advertisements.getter() + 16);

    v18[1] = *(a2 + 40);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    aBlock[4] = sub_10001593C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100407E60;
    v17 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    aBlock[7] = &_swiftEmptyArrayStorage;
    sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags);
    v18[0] = v10;
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v19 + 8))(v13, v18[0]);
  }

  return result;
}

uint64_t sub_100006A6C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*a2 + 128))(v10);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  aBlock[4] = sub_100006E78;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004080C8;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v12, v19);
}

uint64_t sub_100006D3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100006D84()
{
  result = qword_100430F40;
  if (!qword_100430F40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430F40);
  }

  return result;
}

uint64_t sub_100006DDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006E78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_autoreleasePoolPush();
  sub_100006ED4(v1, v2);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100006ED4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 328))(a2);
  if (v2)
  {
    v18 = v2;
    corelog.getter(v9);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "#WiFi,eventHandler,catch,%{public}@", v14, 0xCu);
      sub_10000ACB4(v15);
    }

    (*(v6 + 8))(v9, v5);
    (*(*a1 + 296))(v18);
  }

  return result;
}

uint64_t sub_10000710C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = __chkstk_darwin(v4);
  v53 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v48[-v8];
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE100000000000000;
    v12 = 95;
  }

  v54[0] = v12;
  v54[1] = v14;

  v15._countAndFlagsBits = 0x76652E696669772ELL;
  v15._object = 0xEB00000000746E65;
  String.append(_:)(v15);

  String.utf8CString.getter();

  v16 = os_transaction_create();

  corelog.getter(v9);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = v16;
    v21 = v20;
    v51 = swift_slowAlloc();
    v54[0] = v51;
    *v21 = 136446210;
    v22 = [v17 description];
    v49 = v19;
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v9;
    v25 = v4;
    v27 = v26;

    v28 = sub_10000234C(v24, v27, v54);
    v4 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v49, "#WiFi, received event %{public}s", v21, 0xCu);
    sub_100002580(v51);

    v29 = *(v55 + 8);
    v29(v50, v25);
  }

  else
  {

    v29 = *(v55 + 8);
    v29(v9, v4);
  }

  v30 = [v17 type];
  if (v30 == 37)
  {
    (*(*v2 + 336))();
  }

  else if (v30 == 5)
  {
    v38 = (*(*v2 + 248))();
    if (v38)
    {
      v39 = v38;
      v40 = sub_1000078BC();
      (*(*v39 + 176))(v40 & 1);
    }
  }

  else
  {
    if (v30 == 3)
    {
      v31 = (*(*v2 + 248))();
      if (v31)
      {
        (*(*v31 + 176))(1);
      }

      v32 = (*(*v2 + 176))(v31);
      if (v32)
      {
        v33 = v32;
        v34 = [v32 BSSID];

        if (v34)
        {
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v32 = v35;
LABEL_24:
          (*(*v2 + 320))(v32, v37);

          return swift_unknownObjectRelease();
        }

        v32 = 0;
      }

      v37 = 0;
      goto LABEL_24;
    }

    v41 = v17;
    v42 = v4;
    corelog.getter(v53);
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134349056;
      *(v46 + 4) = [v43 type];

      _os_log_impl(&_mh_execute_header, v44, v45, "#WiFi,unhandled,evtType,%{public}ld", v46, 0xCu);
    }

    else
    {

      v44 = v43;
    }

    v29(v53, v42);
  }

  return swift_unknownObjectRelease();
}

id sub_100007728()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10000776C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000777C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000778C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000779C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000780C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000781C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007838()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100007884()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_1000078C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v7 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v68 - v13;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for Logger();
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v24 = &v68 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v68 - v26;
  v28 = __chkstk_darwin(v25);
  v31 = &v68 - v29;
  if ((a1 & 1) != 0 || (v32 = *(v2 + 40), v32 < 0.6))
  {
    corelog.getter(&v68 - v29);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "debounce.notify,force", v35, 2u);
    }

    (*(v76 + 8))(v31, v77);
    v36 = 0;
LABEL_6:
    v37 = 1;
    return sub_100008264(v36, v37);
  }

  v70 = v30;
  v39 = COERCE_DOUBLE((*(*v2 + 120))(v28));
  if (v40)
  {
    corelog.getter(v20);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "debounce.notify,1stRequest", v43, 2u);
    }

    (*(v76 + 8))(v20, v77);
    v36 = *&v39;
    goto LABEL_6;
  }

  v44 = machContTimeSec()();
  v45 = v32 + v39;
  if (v32 + v39 + -0.1 < v44)
  {
    corelog.getter(v27);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      *(v48 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "debounce.notify,pastSchedule,%{public}f", v48, 0xCu);
    }

    (*(v76 + 8))(v27, v77);
    v36 = *&v44;
    v37 = 0;
    return sub_100008264(v36, v37);
  }

  if ((*(*v2 + 144))(v32 + v39 + -0.1))
  {

    corelog.getter(v24);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134349824;
      *(v51 + 4) = v44;
      *(v51 + 12) = 2050;
      *(v51 + 14) = v39;
      *(v51 + 22) = 2050;
      *(v51 + 24) = v32;
      *(v51 + 32) = 2050;
      *(v51 + 34) = v45;
      _os_log_impl(&_mh_execute_header, v49, v50, "debounce.notify,skip,now,%{public}f,last,%{public}f,%{public}f,willRunAt,%{public}f", v51, 0x2Au);
    }

    return (*(v76 + 8))(v24, v77);
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v2;
  *(v52 + 24) = v44;
  aBlock[4] = sub_10032B278;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000025CC;
  aBlock[3] = &unk_100407D98;
  _Block_copy(aBlock);
  v78 = &_swiftEmptyArrayStorage;
  sub_100006D84();

  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = type metadata accessor for DispatchWorkItem();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  v56 = v45 + 0.6 - v44;
  result = static DispatchTime.now()();
  v57 = v56 * 1000.0;
  if (COERCE__INT64(fabs(v56 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v69 = v39;
  if (v57 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  *v7 = v57;
  v59 = v71;
  v58 = v72;
  (*(v71 + 104))(v7, enum case for DispatchTimeInterval.milliseconds(_:), v72);
  + infix(_:_:)();
  (*(v59 + 8))(v7, v58);
  v60 = v74;
  v61 = *(v73 + 8);
  v61(v12, v74);
  v62 = *(v2 + 16);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  corelog.getter(v70);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134350336;
    *(v65 + 4) = v44;
    *(v65 + 12) = 2050;
    *(v65 + 14) = v69;
    *(v65 + 22) = 2050;
    *(v65 + 24) = v32;
    *(v65 + 32) = 2050;
    *(v65 + 34) = v45;
    *(v65 + 42) = 2050;
    *(v65 + 44) = 0x3FE3333333333333;
    *(v65 + 52) = 2050;
    *(v65 + 54) = v56;
    _os_log_impl(&_mh_execute_header, v63, v64, "debounce.notify,schedule,now,%{public}f,%{public}f,%{public}f,toRunAt,%{public}f,delay,%{public}f,dispatchSec,%{public}f", v65, 0x3Eu);
  }

  (*(v76 + 8))(v70, v77);
  v66 = *(*v2 + 152);

  v66(v67);

  return (v61)(v75, v60);
}

uint64_t sub_1000081F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000822C()
{
  swift_beginAccess();
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_100008264(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v10);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v13;
    *v13 = 134349312;
    v15 = *&a1;
    if (a2)
    {
      v15 = -1.0;
    }

    *(v13 + 4) = v15;
    *(v13 + 12) = 1026;
    if ((*(*v2 + 144))())
    {

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    *(v14 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v11, v12, "debounce.callback,now,%{public}f,scheduled,%{BOOL,public}d", v14, 0x12u);
  }

  else
  {
  }

  v17 = (*(v7 + 8))(v10, v6);
  v18 = v2[4];
  v3[3](v17);
  if (a2)
  {
    a1 = machContTimeSec()();
  }

  v19 = (*(*v3 + 16))(a1, 0);
  if ((*(*v3 + 18))(v19))
  {
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  return (*(*v3 + 19))(0);
}

void sub_1000084E8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE100000000000000;
    v11 = 95;
  }

  v42[0] = v11;
  v42[1] = v13;

  v14._object = 0x80000001003B18D0;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);

  String.utf8CString.getter();

  os_transaction_create();

  v15 = [objc_allocWithZone(CWFScanParameters) init];
  [v15 setScanType:3];
  [v15 setIncludeHiddenNetworks:1];
  sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10039A710;
  *(inited + 32) = Int._bridgeToObjectiveC()();
  *(inited + 40) = Int._bridgeToObjectiveC()();
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = Int._bridgeToObjectiveC()();
  *(inited + 64) = Int._bridgeToObjectiveC()();
  sub_100008BE8(inited);
  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
  sub_10000AC14();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v15 setIncludeProperties:isa];

  v19 = (*(*v1 + 224))();
  if ((v20 & 1) == 0)
  {
    if (v19 == -1)
    {
      __break(1u);
      goto LABEL_24;
    }

    [v15 setMinimumTimestamp:v19 + 1];
  }

  corelog.getter(v8);
  v15 = v15;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    *(v23 + 4) = v15;
    *v24 = v15;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v21, v22, "#WiFi,.scanCacheUpdated,param,%{public}@", v23, 0xCu);
    sub_10000ACB4(v24);
  }

  v26 = *(v3 + 8);
  v27 = v26(v8, v2);
  v28 = (*(*v1 + 176))(v27);
  if (!v28)
  {
    swift_unknownObjectRelease();

    return;
  }

  v42[0] = 0;
  v29 = v28;
  v30 = [v28 performScanWithParameters:v15 error:v42];

  v31 = v42[0];
  if (!v30)
  {
    v35 = v42[0];
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    corelog.getter(v41);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "#WiFi,fectchScanUpdate,catch", v39, 2u);
    }

    v26(v41, v2);
    (*(*v1 + 296))(v36);

    goto LABEL_22;
  }

  sub_10000ABCC(0, &qword_100430FC0, CWFScanResult_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v8 >> 62)
  {
LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v33 = *(v8 + 32);
    }

    v34 = v33;
    (*(*v1 + 232))([v33 timestamp], 0);
  }

LABEL_17:
  v42[3] = sub_100024A2C(&qword_100430FF0, &qword_10039A730);
  v42[4] = sub_10000D908();
  v42[0] = v8;
  (*(*v1 + 304))(v42, 0);

  sub_100002580(v42);
LABEL_22:
  swift_unknownObjectRelease();
}

void sub_100008BE8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100024A2C(&unk_1004311B0, &unk_10039A790);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100008ED8(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v34 = type metadata accessor for Logger();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v9);
  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32 = a1;
    v13 = v12;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v13 = 136446466;
    v14 = *(v5 + 80);
    v35 = v14;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_10000234C(v15, v16, &v36);
    v33 = v2;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2050;
    v20 = *((*(*v1 + 144))(v19) + 16);

    *(v13 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v10, v11, "Leeching %{public}s, clients count %{public}ld", v13, 0x16u);
    sub_100002580(v31);

    a1 = v32;

    (*(v6 + 8))(v9, v34);
  }

  else
  {

    (*(v6 + 8))(v9, v34);
    v14 = *(v5 + 80);
  }

  v21 = sub_10000AB40(v14, v14);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = *(v14 - 8);
  v25 = *(v24 + 72);
  v26 = *(v24 + 80);
  swift_allocObject();
  v27 = static Array._adoptStorage(_:count:)();
  (*(v24 + 16))(v28, a1, v14);
  type metadata accessor for Array();
  (*(*v3 + 192))(v27, 1);
}

uint64_t sub_100009250()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_100009288(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DataClient();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  result = v12(a1, a2);
  if (!v3)
  {
    v16 = result;
    v17 = v15;
    v18 = (*(*v4 + 144))();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v21 = *(v8 + 72);
      do
      {
        sub_100015140(v20, v11);
        sub_1000151A4(v16, v17);
        sub_10001543C(v11);
        v20 += v21;
        --v19;
      }

      while (v19);
    }

    return sub_100005B2C(v16, v17);
  }

  return result;
}

uint64_t type metadata accessor for DataClient()
{
  result = qword_10048C030;
  if (!qword_10048C030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000946C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000094C4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  if (qword_100435370 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_100435378;
}

uint64_t sub_100009540(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1000095F8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 33) = a1;
  return result;
}

uint64_t sub_1000095F8(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v56 = &v47 - v5;
  v6 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v47 - v8;
  v9 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v54 = &v47 - v11;
  v12 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v53 = &v47 - v14;
  v15 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v48 = &v47 - v17;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1793;
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  v19 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v47 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v21 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v49 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v23 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v1 + v22, 1, 1, v23);
  v25 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v50 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v26 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v52 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  v24(v1 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, 1, 1, v23);
  v27 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v51 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v28 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  swift_beginAccess();
  v29 = *(a1 + 16);
  LOBYTE(v24) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v29;
  *(v1 + 24) = v24;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + 28);
  LOBYTE(v24) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v29;
  *(v1 + 32) = v24;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v29;
  v30 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v31 = v48;
  sub_10000A0A4(a1 + v30, v48, &qword_100418378, &qword_10036C850);
  swift_beginAccess();
  sub_10000AD64(v31, v1 + v18, &qword_100418378, &qword_10036C850);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v33 = v53;
  sub_10000A0A4(a1 + v32, v53, &qword_100418380, &qword_10036C858);
  v34 = v47;
  swift_beginAccess();
  sub_10000AD64(v33, v1 + v34, &qword_100418380, &qword_10036C858);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  v36 = v54;
  sub_10000A0A4(a1 + v35, v54, &qword_100418388, &qword_10036C860);
  v37 = v49;
  swift_beginAccess();
  sub_10000AD64(v36, v1 + v37, &qword_100418388, &qword_10036C860);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  v39 = v55;
  sub_10000A0A4(a1 + v38, v55, &qword_100418390, &qword_10036C868);
  v40 = v50;
  swift_beginAccess();
  sub_10000AD64(v39, v1 + v40, &qword_100418390, &qword_10036C868);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v41, v36, &qword_100418388, &qword_10036C860);
  v42 = v52;
  swift_beginAccess();
  sub_10000AD64(v36, v1 + v42, &qword_100418388, &qword_10036C860);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  v44 = v56;
  sub_10000A0A4(a1 + v43, v56, &qword_100418398, &qword_10036C870);

  v45 = v51;
  swift_beginAccess();
  sub_10000AD64(v44, v1 + v45, &qword_100418398, &qword_10036C870);
  swift_endAccess();
  return v1;
}

uint64_t sub_100009D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 10;
  }

  return result;
}

uint64_t sub_100009DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100009F10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

void *sub_10000A000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024A2C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 10;
    if (v10 >= 0xA)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static ALBtNotifications.serializedIndications(results:isLastBatch:)()
{
  v0 = type metadata accessor for ALBtNotifications();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALBtNotifications.init(results:isLastBatch:)();
  v5 = ALBtNotifications.serializedData()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ALBtNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALBtNotifications();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000A71C(v15);
  if (!v1)
  {
    v37 = v0;
    v38 = v6;
    v16 = v42;
    v39 = v11;
    v40 = v7;
    v41 = v8;
    sub_10000D600(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v2 = Message.serializedData(partial:)();
    v18 = v17;
    sub_1000108EC(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v36 = 0;
    v20 = v39;
    corelog.getter(v39);
    v21 = v16;
    v22 = v20;
    v23 = v38;
    v24 = v3;
    (*(v21 + 16))(v38, v37, v3);
    sub_1000150EC(v2, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    sub_100005B2C(v2, v18);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v27 = 136446466;
      v35 = v26;
      v28 = ALBtNotifications.description()();
      (*(v21 + 8))(v23, v24);
      v29 = sub_10000234C(v28._countAndFlagsBits, v28._object, &v43);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2082;
      sub_1000150EC(v2, v18);
      v30 = Data.description.getter();
      v32 = v31;
      sub_100005B2C(v2, v18);
      v33 = sub_10000234C(v30, v32, &v43);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v35, "#BT,serializedData,notif,%{public}s,data,%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v23, v24);
    }

    (*(v41 + 8))(v22, v40);
  }

  return v2;
}

uint64_t sub_10000A71C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4 - 8);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALBtNotification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (v35 - v16);
  sub_1000094C4(a1);
  sub_100009540(6);
  sub_10000B1F0(v17);
  v18 = ALBtNotifications.results.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v37 = v1;
    v38 = a1;
    v39 = v2;
    v35[1] = v18;
    v36 = v17;
    v20 = *v17;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v41 = *(v21 + 56);
    v42 = v22;
    v24 = (v21 - 8);
    v25 = v21;
    v26 = v44;
    do
    {
      v27 = v25;
      v42(v11, v23, v7);
      sub_10000B208(v26);
      (*v24)(v11, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10000D334(0, v20[2] + 1, 1, v20, &qword_100418C78, &qword_10036D760, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = sub_10000D334(v28 > 1, v29 + 1, 1, v20, &qword_100418C78, &qword_10036D760, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v20[2] = v29 + 1;
      v26 = v44;
      sub_10000D510(v44, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      v23 += v41;
      --v19;
      v25 = v27;
    }

    while (v19);

    v17 = v36;
    *v36 = v20;
    a1 = v38;
  }

  else
  {
  }

  v30 = ALBtNotifications.isLastBatch.getter();
  sub_10000D6B0(v30 & 1);
  v31 = v40;
  sub_10000D648(v17, v40, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  sub_10000D6E0(v31);
  type metadata accessor for ALProtobufUtil();
  v32 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v33 = sub_10000D600(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  static ALProtobufUtil.debug<A>(_:)(a1, v32, v33);
  return sub_1000108EC(v17, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

uint64_t sub_10000AB40(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_10000ABCC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10000AC14()
{
  result = qword_100430FE8;
  if (!qword_100430FE8)
  {
    sub_10000ABCC(255, &qword_100430FE0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430FE8);
  }

  return result;
}

uint64_t sub_10000AC7C()
{
  swift_beginAccess();
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_10000ACB4(uint64_t a1)
{
  v2 = sub_100024A2C(&unk_10042F020, &qword_100399AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000AD1C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_10000AD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024A2C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10000AF94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B058@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  v4 = a2 + v3[5];
  result = UnknownStorage.init()();
  v6 = a2 + v3[6];
  *v6 = 0;
  v6[8] = 1;
  *(a2 + v3[7]) = 2;
  return result;
}

uint64_t sub_10000B0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000B184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000B208@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ALBtAdvertisement();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v46);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v40 - v16;
  v18 = type metadata accessor for ALTimeStamp();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C1C4(a1);
  ALBtNotification._timestamp.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000059A8(v17, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_10000B7CC(v13);
    sub_10000C2C0(v13);
    (*(v19 + 8))(v22, v18);
  }

  v23 = ALBtNotification._advertisements.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v40[1] = v1;
    v41 = a1;
    v25 = *a1;
    v26 = v44 + 16;
    v27 = *(v44 + 16);
    v28 = *(v44 + 80);
    v42 = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v43 = *(v44 + 72);
    v44 = v27;
    v30 = (v26 - 8);
    v31 = v46;
    do
    {
      (v44)(v9, v29, v31);
      sub_10000C378(v6);
      sub_10000C3F4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_10000D334(0, v25[2] + 1, 1, v25, &qword_100418C88, &qword_10036D768, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        v25 = sub_10000D334(v32 > 1, v33 + 1, 1, v25, &qword_100418C88, &qword_10036D768, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v31 = v46;
      (*v30)(v9, v46);
      v25[2] = v33 + 1;
      sub_10000D510(v6, v25 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v29 += v43;
      --v24;
    }

    while (v24);

    a1 = v41;
    *v41 = v25;
  }

  else
  {
  }

  v34 = ALBtNotification._simulated.getter();
  if (v34 != 2)
  {
    sub_10000D578(v34 & 1);
  }

  isAp = ALBtNotification._isApOn.getter();
  if (isAp != 2)
  {
    sub_1002851C0(isAp & 1);
  }

  isScreen = ALBtNotification._isScreenOn.getter();
  if (isScreen != 2)
  {
    sub_10000D5A8(isScreen & 1);
  }

  type metadata accessor for ALProtobufUtil();
  v37 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v38 = sub_10000D600(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
  return static ALProtobufUtil.debug<A>(_:)(a1, v37, v38);
}

int *sub_10000B764@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10000B7CC@<X0>(uint64_t a1@<X8>)
{
  sub_10000C270(a1);
  v1 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v2 & 1) == 0)
  {
    sub_10000B840(*&v1);
  }

  v3 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v4 & 1) == 0)
  {
    sub_10000C288(*&v3);
  }

  result = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v6 & 1) == 0)
  {
    return sub_10000B878(*&result);
  }

  return result;
}

uint64_t sub_10000B840(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000B878(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000B8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B958(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v36 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 52) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 1;
  *(v1 + 60) = 0;
  v36 = (v1 + 60);
  *(v1 + 64) = 1;
  *(v1 + 72) = xmmword_10036D770;
  *(v1 + 88) = 3;
  *(v1 + 96) = 0;
  v37 = (v1 + 88);
  v38 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  v39 = (v1 + 112);
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  v40 = (v1 + 124);
  *(v1 + 152) = 0u;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0u;
  v41 = (v1 + 136);
  v42 = (v1 + 152);
  v6 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v43 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v10 = *(a1 + 32);
  LOBYTE(v8) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v8;
  swift_beginAccess();
  LODWORD(v10) = *(a1 + 44);
  LOBYTE(v8) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v10;
  *(v1 + 48) = v8;
  swift_beginAccess();
  LODWORD(v10) = *(a1 + 52);
  LOBYTE(v8) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v10;
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v10) = *(a1 + 60);
  LOBYTE(v8) = *(a1 + 64);
  v11 = v36;
  swift_beginAccess();
  *v11 = v10;
  *(v1 + 64) = v8;
  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  swift_beginAccess();
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  *(v1 + 72) = v12;
  *(v1 + 80) = v13;
  sub_10000BE4C(v12, v13);
  sub_10000CA64(v14, v15);
  swift_beginAccess();
  v16 = *(a1 + 88);
  v17 = v37;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  v18 = *(a1 + 96);
  LOBYTE(v17) = *(a1 + 104);
  v19 = v38;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 104) = v17;
  swift_beginAccess();
  v20 = *(a1 + 112);
  LOBYTE(v17) = *(a1 + 120);
  v21 = v39;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 120) = v17;
  swift_beginAccess();
  LODWORD(v20) = *(a1 + 124);
  LOBYTE(v17) = *(a1 + 128);
  v22 = v40;
  swift_beginAccess();
  *v22 = v20;
  *(v1 + 128) = v17;
  swift_beginAccess();
  v24 = *(a1 + 136);
  v23 = *(a1 + 144);
  v25 = v41;
  swift_beginAccess();
  v26 = *(v1 + 144);
  *v25 = v24;
  *(v1 + 144) = v23;

  swift_beginAccess();
  v28 = *(a1 + 152);
  v27 = *(a1 + 160);
  v29 = v42;
  swift_beginAccess();
  v30 = *(v1 + 160);
  *v29 = v28;
  *(v1 + 160) = v27;

  v31 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v32 = a1 + v31;
  v33 = v44;
  sub_10000A0A4(v32, v44, &qword_10042B8C8, &unk_100393490);

  v34 = v43;
  swift_beginAccess();
  sub_10000CA78(v33, v1 + v34);
  swift_endAccess();
  return v1;
}

uint64_t sub_10000BE4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000150EC(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000BF4C(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 52) = a1;
  *(v7 + 56) = 0;
  return result;
}

uint64_t sub_10000BFE8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 124) = a1;
  *(v7 + 128) = 0;
  return result;
}

uint64_t sub_10000C084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v9;
    v9 = v13;
    sub_10000B958(v14);
    *(v3 + v6) = v13;
  }

  swift_beginAccess();
  v15 = *(v9 + 144);
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
}

uint64_t sub_10000C128(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 96) = a1;
  *(v7 + 104) = 0;
  return result;
}

uint64_t sub_10000C1C4@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  a1[v2[7]] = 2;
  a1[v2[8]] = 2;
  a1[v2[9]] = 2;
  return result;
}

uint64_t sub_10000C288(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000C2C0(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_10000B8B0(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_10000C378@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  if (qword_10047FBA8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_10047FBB0;
}

uint64_t sub_10000C3F4()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v48 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100024A2C(&unk_1004312C0, &qword_10036D750);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v49 = type metadata accessor for ALBtAdvInfoType7();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ALBtAdvertisement.BtType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = ALBtAdvertisement._machContTimeNs.getter();
  if ((v23 & 1) == 0)
  {
    sub_10000C8FC(v22);
  }

  v24 = ALBtAdvertisement._mac.getter();
  if ((v25 & 1) == 0)
  {
    sub_10000CAE8(v24);
  }

  v26 = ALBtAdvertisement._rssidB.getter();
  if ((v26 & 0x100000000) == 0)
  {
    sub_10000CB84(v26);
  }

  v27 = ALBtAdvertisement._antennaIndex.getter();
  if ((v27 & 0x100000000) == 0)
  {
    sub_100282578(v27);
  }

  v28 = ALBtAdvertisement._payload.getter();
  if (v29 >> 60 != 15)
  {
    sub_1002828E0(v28, v29);
  }

  v30 = ALBtAdvertisement._channel.getter();
  if ((v30 & 0x100000000) == 0)
  {
    sub_10000BF4C(v30);
  }

  v31 = ALBtAdvertisement._productID.getter();
  if ((v31 & 0x100000000) == 0)
  {
    sub_10000BFE8(v31);
  }

  v32 = ALBtAdvertisement._identifier.getter();
  if (v33)
  {
    sub_10000C084(v32, v33);
  }

  v34 = ALBtAdvertisement._idsDeviceID.getter();
  if (v35)
  {
    sub_100283AF0(v34, v35);
  }

  v36 = ALBtAdvertisement._deviceFlags.getter();
  if ((v37 & 1) == 0)
  {
    sub_10000C128(v36);
  }

  v38 = ALBtAdvertisement._discoveryFlags.getter();
  if ((v39 & 1) == 0)
  {
    sub_10000CC20(v38);
  }

  ALBtAdvertisement._type.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000059A8(v13, &qword_100418C58, &unk_10039A820);
    goto LABEL_32;
  }

  (*(v15 + 32))(v21, v13, v14);
  (*(v15 + 16))(v19, v21, v14);
  v40 = (*(v15 + 88))(v19, v14);
  if (v40 != enum case for ALBtAdvertisement.BtType.unknown(_:))
  {
    if (v40 == enum case for ALBtAdvertisement.BtType.type7(_:))
    {
      v41 = 1;
      goto LABEL_31;
    }

    if (v40 == enum case for ALBtAdvertisement.BtType.type18(_:))
    {
      v41 = 2;
      goto LABEL_31;
    }

    (*(v15 + 8))(v19, v14);
  }

  v41 = 0;
LABEL_31:
  sub_10000CCBC(v41);
  (*(v15 + 8))(v21, v14);
LABEL_32:
  ALBtAdvertisement._type7Info.getter();
  v42 = v49;
  if ((*(v7 + 48))(v6, 1, v49) == 1)
  {
    return sub_1000059A8(v6, &unk_1004312C0, &qword_10036D750);
  }

  v44 = v47;
  (*(v7 + 32))(v47, v6, v42);
  v45 = v48;
  sub_10000CD54(v48);
  sub_10000D1D8(v45);
  return (*(v7 + 8))(v44, v42);
}

uint64_t sub_10000C8FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

uint64_t sub_10000C9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_10000CA64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005B2C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CAE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_10000CB84(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 44) = a1;
  *(v7 + 48) = 0;
  return result;
}

uint64_t sub_10000CC20(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 112) = a1;
  *(v7 + 120) = 0;
  return result;
}

uint64_t sub_10000CCBC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_10000B958(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 88) = a1;
  return result;
}

uint64_t sub_10000CD54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100024A2C(&qword_100418C60, &qword_10036D758);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  sub_10000D0E4(a1);
  isSame = ALBtAdvInfoType7._isSameAccount.getter();
  if (isSame != 2)
  {
    sub_10000D178(isSame & 1);
  }

  v15 = ALBtAdvInfoType7._isFamily.getter();
  if (v15 != 2)
  {
    sub_10000D148(v15 & 1);
  }

  isShared = ALBtAdvInfoType7._isSharedHome.getter();
  if (isShared != 2)
  {
    sub_10000D1A8(isShared & 1);
  }

  isLeft = ALBtAdvInfoType7._isLeftBud.getter();
  if (isLeft != 2)
  {
    sub_1002857D4(isLeft & 1);
  }

  v18 = ALBtAdvInfoType7._isCase.getter();
  if (v18 != 2)
  {
    sub_1002858DC(v18 & 1);
  }

  ALBtAdvInfoType7._placement.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000059A8(v5, &qword_100418C60, &qword_10036D758);
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v11, v13, v6);
  v20 = (*(v7 + 88))(v11, v6);
  if (v20 != enum case for ALBtAdvInfoType7.Placement.unknown(_:))
  {
    if (v20 == enum case for ALBtAdvInfoType7.Placement.inEar(_:))
    {
      v21 = 1;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.outOfEar(_:))
    {
      v21 = 2;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.inCase(_:))
    {
      v21 = 3;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.onEar(_:))
    {
      v21 = 4;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.offEar(_:))
    {
      v21 = 5;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.onNeck(_:))
    {
      v21 = 6;
      goto LABEL_29;
    }

    if (v20 == enum case for ALBtAdvInfoType7.Placement.disabled(_:))
    {
      v21 = 7;
      goto LABEL_29;
    }

    (*(v7 + 8))(v11, v6);
  }

  v21 = 0;
LABEL_29:
  sub_1002859E8(v21);
  return (*(v7 + 8))(v13, v6);
}

int *sub_10000D0E4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 8;
  return result;
}

uint64_t sub_10000D148(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_10000D178(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_10000D1A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D1D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_10000B958(v16);
    *(v2 + v8) = v15;
  }

  sub_10000B8B0(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000CA78(v7, v11 + v18);
  return swift_endAccess();
}

size_t sub_10000D334(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10000D510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D578(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D5A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10000D600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D6B0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D6E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418398, &qword_10036C870);
  return swift_endAccess();
}

uint64_t sub_10000D84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D8B4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  return result;
}

unint64_t sub_10000D908()
{
  result = qword_100430FF8;
  if (!qword_100430FF8)
  {
    sub_100024BB0(&qword_100430FF0, &qword_10039A730);
    sub_100006E30(&qword_100431000, &qword_100431008, &qword_10039A738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430FF8);
  }

  return result;
}

void *sub_10000D9B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D9FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000DA60(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DAC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_10000DB14(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v33 = a1;
  v34 = a2;
  v31 = 58;
  v32 = 0xE100000000000000;
  sub_10000DF10();
  sub_10000DF64();

  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  result = v34;
  v3 = HIBYTE(v34) & 0xF;
  v4 = v33 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v5 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v34 & 0x1000000000000000) == 0)
  {
    if ((v34 & 0x2000000000000000) != 0)
    {
      v31 = v33;
      v32 = v34 & 0xFFFFFFFFFFFFFFLL;
      if (v33 == 43)
      {
        if (v3)
        {
          v6 = (v3 - 1);
          if (v3 != 1)
          {
            v9 = 0;
            v21 = &v31 + 1;
            while (1)
            {
              v22 = *v21;
              v23 = v22 - 48;
              if ((v22 - 48) >= 0xA)
              {
                if ((v22 - 65) < 6)
                {
                  v23 = v22 - 55;
                }

                else
                {
                  if ((v22 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v23 = v22 - 87;
                }
              }

              if (v9 >> 60)
              {
                break;
              }

              v9 = 16 * v9 + v23;
              ++v21;
              if (!--v6)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_84;
        }

LABEL_96:
        __break(1u);
        return result;
      }

      if (v33 != 45)
      {
        if (v3)
        {
          v9 = 0;
          v26 = &v31;
          while (1)
          {
            v27 = *v26;
            v28 = v27 - 48;
            if ((v27 - 48) >= 0xA)
            {
              if ((v27 - 65) < 6)
              {
                v28 = v27 - 55;
              }

              else
              {
                if ((v27 - 97) > 5)
                {
                  goto LABEL_84;
                }

                v28 = v27 - 87;
              }
            }

            if (v9 >> 60)
            {
              break;
            }

            v9 = 16 * v9 + v28;
            v26 = (v26 + 1);
            if (!--v3)
            {
LABEL_83:
              LOBYTE(v6) = 0;
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      if (v3)
      {
        v6 = (v3 - 1);
        if (v3 != 1)
        {
          v9 = 0;
          v14 = &v31 + 1;
          while (1)
          {
            v15 = *v14;
            v16 = v15 - 48;
            if ((v15 - 48) >= 0xA)
            {
              if ((v15 - 65) < 6)
              {
                v16 = v15 - 55;
              }

              else
              {
                if ((v15 - 97) > 5)
                {
                  goto LABEL_84;
                }

                v16 = v15 - 87;
              }
            }

            if (v9 >> 60)
            {
              break;
            }

            v13 = 16 * v9 >= v16;
            v9 = 16 * v9 - v16;
            if (!v13)
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v6 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
        result = v34;
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v17 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            if (v6)
            {
              v18 = v6 + 1;
              while (1)
              {
                v19 = *v18;
                v20 = v19 - 48;
                if ((v19 - 48) >= 0xA)
                {
                  if ((v19 - 65) < 6)
                  {
                    v20 = v19 - 55;
                  }

                  else
                  {
                    if ((v19 - 97) > 5)
                    {
                      goto LABEL_84;
                    }

                    v20 = v19 - 87;
                  }
                }

                if (v9 >> 60)
                {
                  goto LABEL_84;
                }

                v9 = 16 * v9 + v20;
                ++v18;
                if (!--v17)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_85;
          }

          goto LABEL_84;
        }

        goto LABEL_95;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v9 = 0;
          if (v6)
          {
            while (1)
            {
              v24 = *v6;
              v25 = v24 - 48;
              if ((v24 - 48) >= 0xA)
              {
                if ((v24 - 65) < 6)
                {
                  v25 = v24 - 55;
                }

                else
                {
                  if ((v24 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v25 = v24 - 87;
                }
              }

              if (v9 >> 60)
              {
                goto LABEL_84;
              }

              v9 = 16 * v9 + v25;
              ++v6;
              if (!--v4)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_85;
        }

LABEL_84:
        v9 = 0;
        LOBYTE(v6) = 1;
        goto LABEL_85;
      }

      if (v4 >= 1)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          if (v6)
          {
            v10 = v6 + 1;
            while (1)
            {
              v11 = *v10;
              v12 = v11 - 48;
              if ((v11 - 48) >= 0xA)
              {
                if ((v11 - 65) < 6)
                {
                  v12 = v11 - 55;
                }

                else
                {
                  if ((v11 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v12 = v11 - 87;
                }
              }

              if (v9 >> 60)
              {
                goto LABEL_84;
              }

              v13 = 16 * v9 >= v12;
              v9 = 16 * v9 - v12;
              if (!v13)
              {
                goto LABEL_84;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_83;
              }
            }
          }

LABEL_85:
          v29 = v6;
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      __break(1u);
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v9 = sub_100334590(v33, v34, 16);
  v29 = v30;
LABEL_86:

  if (v29)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

unint64_t sub_10000DF10()
{
  result = qword_1004311C8;
  if (!qword_1004311C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004311C8);
  }

  return result;
}

unint64_t sub_10000DF64()
{
  result = qword_1004311D0;
  if (!qword_1004311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004311D0);
  }

  return result;
}

size_t sub_10000DFC4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&qword_1004311C0, &qword_100399AB0);
  v10 = *(type metadata accessor for ALWiFiScanSingleAccessPoint() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ALWiFiScanSingleAccessPoint() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000E1A8()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_10000E1E0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_10000E234(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_10000E290(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v6 = (*(*v1 + 152))(v5);
  v6(a1);
}

uint64_t sub_10000E44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v46);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ALWiFiNotification();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v13 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - v15;
  v17 = v47;
  result = (*(**(a2 + 48) + 200))(a1);
  if (!v17)
  {
    v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v11;
    v38 = a2;
    v39 = v10;
    v19 = v40;
    v47 = 0;
    ALWiFiNotification._scanResult.getter();
    v20 = type metadata accessor for ALWiFiScanResult();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_1000059A8(v16, &unk_10042F310, &unk_100399860);
      v22 = 0;
    }

    else
    {
      v23 = ALWiFiScanResult._accessPoints.getter();
      (*(v21 + 8))(v16, v20);
      v22 = *(v23 + 16);
    }

    v24 = v19;
    v25 = v36;
    v26 = v37;
    v27 = v41;
    v28 = v12;
    (*(v41 + 16))(v36, a1, v37);
    v29 = v27;
    v30 = v25;
    v31 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v38;
    (*(v29 + 32))(v32 + v31, v30, v26);
    *(v32 + ((v28 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    aBlock[4] = sub_100003EEC;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100407EB0;
    v33 = _Block_copy(aBlock);

    v34 = v39;
    static DispatchQoS.unspecified.getter();
    aBlock[7] = &_swiftEmptyArrayStorage;
    sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    v35 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v44 + 8))(v24, v35);
    (*(v42 + 8))(v34, v43);
  }

  return result;
}

uint64_t sub_10000E964()
{
  v1 = type metadata accessor for ALWiFiNotification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t static ALWiFiNotifications.serializedIndications(results:isLastBatch:)()
{
  v0 = type metadata accessor for ALWiFiNotifications();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALWiFiNotifications.init(_results:_isLastBatch:)();
  v5 = ALWiFiNotifications.serializedData()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ALWiFiNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALWiFiNotifications();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000EF88(v15);
  if (!v1)
  {
    v40 = v0;
    v41 = v6;
    v16 = v45;
    v42 = v11;
    v43 = v7;
    v44 = v8;
    sub_100013A88(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v2 = Message.serializedData(partial:)();
    v18 = v17;
    sub_100014DD8(v15, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v39 = 0;
    v20 = v42;
    corelog.getter(v42);
    v21 = v16;
    v22 = v20;
    v23 = v41;
    v24 = v3;
    (*(v21 + 16))(v41, v40, v3);
    sub_1000150EC(v2, v18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    sub_100005B2C(v2, v18);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v27 = 136446466;
      v38 = v26;
      v28 = ALWiFiNotifications.description.getter();
      v29 = v23;
      v31 = v30;
      (*(v21 + 8))(v29, v24);
      v32 = sub_10000234C(v28, v31, &v46);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      sub_1000150EC(v2, v18);
      v33 = Data.description.getter();
      v35 = v34;
      sub_100005B2C(v2, v18);
      v36 = sub_10000234C(v33, v35, &v46);

      *(v27 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v25, v38, "#WiFi,serializedData,notif,%{public}s,data,%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v23, v24);
    }

    (*(v44 + 8))(v22, v43);
  }

  return v2;
}

uint64_t sub_10000EF88@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4 - 8);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALWiFiNotification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v40 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (v35 - v16);
  sub_1000094C4(a1);
  sub_100009540(4);
  sub_10000F3AC(v17);
  v18 = ALWiFiNotifications.results.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v37 = v1;
    v38 = a1;
    v39 = v2;
    v35[1] = v18;
    v36 = v17;
    v20 = *v17;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v41 = *(v21 + 56);
    v42 = v22;
    v24 = (v21 - 8);
    v25 = v21;
    v26 = v44;
    do
    {
      v27 = v25;
      v42(v11, v23, v7);
      sub_10000F3C4(v26);
      (*v24)(v11, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000133BC(0, v20[2] + 1, 1, v20, &qword_10041C7A0, &qword_100374190, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = sub_1000133BC(v28 > 1, v29 + 1, 1, v20, &qword_10041C7A0, &qword_100374190, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v20[2] = v29 + 1;
      v26 = v44;
      sub_100013598(v44, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      v23 += v41;
      --v19;
      v25 = v27;
    }

    while (v19);

    v17 = v36;
    *v36 = v20;
    a1 = v38;
  }

  else
  {
  }

  v30 = ALWiFiNotifications.isLastBatch.getter();
  sub_100014654(v30 & 1);
  v31 = v40;
  sub_100014A4C(v17, v40, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  sub_100014AB4(v31);
  type metadata accessor for ALProtobufUtil();
  v32 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v33 = sub_100013A88(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  static ALProtobufUtil.debug<A>(_:)(a1, v32, v33);
  return sub_100014DD8(v17, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t sub_10000F3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v68 = &v61 - v13;
  v14 = type metadata accessor for ALWiFiScanResult();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  __chkstk_darwin(v14);
  v63 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v62 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v61 - v22;
  v67 = type metadata accessor for ALTimeStamp();
  v24 = *(v67 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v67);
  v61 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v61 - v29;
  v31 = type metadata accessor for ALWiFiNotification.NotiType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v61 - v37;
  v39 = a1;
  sub_10000FBD0(a1);
  ALWiFiNotification._type.getter();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000059A8(v30, &qword_10041C798, &qword_100374188);
  }

  else
  {
    (*(v32 + 32))(v38, v30, v31);
    (*(v32 + 16))(v36, v38, v31);
    v40 = sub_10000FC08(v36);
    sub_10000FF18(v40);
    (*(v32 + 8))(v38, v31);
  }

  ALWiFiNotification._timestamp.getter();
  v41 = v67;
  v42 = (*(v24 + 48))(v23, 1, v67);
  v43 = v68;
  if (v42 == 1)
  {
    sub_1000059A8(v23, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    v44 = v61;
    (*(v24 + 32))(v61, v23, v41);
    v45 = v62;
    sub_10000B7CC(v62);
    sub_100010EFC(v45);
    (*(v24 + 8))(v44, v41);
  }

  ALWiFiNotification._scanResult.getter();
  v47 = v69;
  v46 = v70;
  if ((*(v69 + 48))(v43, 1, v70) == 1)
  {
    sub_1000059A8(v43, &unk_10042F310, &unk_100399860);
  }

  else
  {
    v48 = v63;
    (*(v47 + 32))(v63, v43, v46);
    v49 = v64;
    sub_10001153C(v64);
    sub_100013778(v49);
    (*(v47 + 8))(v48, v46);
  }

  v50 = ALWiFiNotification._associatedMac.getter();
  if ((v51 & 1) == 0)
  {
    v52 = v65;
    v53 = v50;
    sub_100013AE8(v65);
    sub_100013E34(1);
    v54 = v66;
    sub_100012470(v66);
    sub_100013E64(v54);
    sub_100013FB8(v54);
    sub_100012C18(v53);
    sub_100013E64(v54);
    sub_1000141E8(v52);
  }

  v55 = ALWiFiNotification._simulated.getter();
  if (v55 != 2)
  {
    sub_100014540(v55 & 1);
  }

  v56 = ALWiFiNotification._available.getter();
  if (v56 != 2)
  {
    sub_100014588(v56 & 1);
  }

  isAp = ALWiFiNotification._isApAwake.getter();
  if (isAp != 2)
  {
    sub_1001032FC(isAp & 1);
  }

  type metadata accessor for ALProtobufUtil();
  v58 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v59 = sub_100013A88(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
  return static ALProtobufUtil.debug<A>(_:)(v39, v58, v59);
}

uint64_t sub_10000FB48@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_10000FC08(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiNotification.NotiType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiNotification.NotiType.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.available(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.power(_:))
  {
    return 2;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanReady(_:))
  {
    return 3;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scan(_:))
  {
    return 4;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanError(_:))
  {
    return 5;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanErrorBusy(_:))
  {
    return 6;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.linkStatus(_:))
  {
    return 7;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.roam(_:))
  {
    return 8;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.backgroundEntry(_:))
  {
    return 9;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.backgroundExit(_:))
  {
    return 10;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.trackingAvailable(_:))
  {
    return 11;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.wow(_:))
  {
    return 12;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanCache(_:))
  {
    return 13;
  }

  if (v4 != enum case for ALWiFiNotification.NotiType.peerRanging(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 14;
}

uint64_t sub_10000FE54(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v14);

    *(v9 + v11) = v18;
    v14 = v18;
  }

  v19 = *a5;
  result = swift_beginAccess();
  *(v14 + v19) = a1;
  return result;
}

uint64_t sub_10000FF80(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v43 - v5;
  v6 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v43 - v8;
  v9 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - v11;
  v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  v44 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v18 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v45 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v46 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v47 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  v48 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  v50 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  v51 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  v22 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v22, v12, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v12, v1 + v13, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v23 = a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v22) = *v23;
  LOBYTE(v23) = *(v23 + 4);
  swift_beginAccess();
  *v15 = v22;
  *(v15 + 4) = v23;
  v24 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  swift_beginAccess();
  *(v1 + v16) = v24;
  v25 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  swift_beginAccess();
  *(v1 + v17) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v44;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  v29 = v49;
  sub_10000A0A4(a1 + v28, v49, &qword_10041CB30, &qword_100374560);
  v30 = v45;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_10041CB30, &qword_100374560);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  v32 = v52;
  sub_10000A0A4(a1 + v31, v52, &qword_10041CB38, &qword_100374568);
  v33 = v46;
  swift_beginAccess();
  sub_10000AD64(v32, v1 + v33, &qword_10041CB38, &qword_100374568);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v47;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v48;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  LOBYTE(v38) = *(a1 + v38);
  v39 = v50;
  swift_beginAccess();
  *(v1 + v39) = v38;
  v40 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v40);
  v41 = v51;
  swift_beginAccess();
  *(v1 + v41) = a1;
  return v1;
}

uint64_t sub_100010578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void *sub_1000106D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100010820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000108EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001094C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_100010A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100010B80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100010CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 28);
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 33) != 7)
  {
    v13 = *(v9 + 33);
    sub_100010EA8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100011070(v9, a1, a2, a3);
  sub_100011314(v9, a1, a2, a3);
  sub_100011A34(v9, a1, a2, a3);
  sub_100011CF8(v9, a1, a2, a3);
  sub_100011F20(v9, a1, a2, a3);
  sub_100012148(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

unint64_t sub_100010EA8()
{
  result = qword_100418B88;
  if (!qword_100418B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418B88);
  }

  return result;
}

uint64_t sub_100010EFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_10000FF80(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_100011070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418378, &qword_10036C850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418378, &qword_10036C850);
  }

  sub_10000D84C(v8, v13, type metadata accessor for Proto_Gpsd_Response);
  sub_100012428(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for Proto_Gpsd_Response);
}

uint64_t sub_1000112AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Indication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418380, &qword_10036C858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418380, &qword_10036C858);
  }

  sub_10000D84C(v8, v13, type metadata accessor for Proto_Gpsd_Indication);
  sub_100012428(&qword_100418BF8, type metadata accessor for Proto_Gpsd_Indication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for Proto_Gpsd_Indication);
}

uint64_t sub_10001153C@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v41 = *(v37 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ALTimeStamp();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011A1C(a1);
  ALWiFiScanResult._scanTimestamp.getter();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000059A8(v16, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_10000B7CC(v12);
    sub_100012370(v12);
    (*(v18 + 8))(v21, v17);
  }

  v22 = ALWiFiScanResult._accessPoints.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = a1;
    v36 = v22;
    v24 = *a1;
    v25 = v37;
    v26 = *(v41 + 16);
    v27 = v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v38 = *(v41 + 72);
    v39 = v26;
    v41 += 16;
    v28 = (v41 - 8);
    do
    {
      v39(v8, v27, v25);
      sub_100012470(v5);
      sub_100012688();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000133BC(0, v24[2] + 1, 1, v24, &qword_10041C7B0, &qword_1003741A0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        v24 = sub_1000133BC(v29 > 1, v30 + 1, 1, v24, &qword_10041C7B0, &qword_1003741A0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      (*v28)(v8, v25);
      v24[2] = v30 + 1;
      sub_100013598(v5, v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v27 += v38;
      --v23;
    }

    while (v23);

    a1 = v35;
    *v35 = v24;
  }

  else
  {
  }

  type metadata accessor for ALProtobufUtil();
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v32 = sub_100013A88(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  return static ALProtobufUtil.debug<A>(_:)(a1, v31, v32);
}

uint64_t sub_100011A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418388, &qword_10036C860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418388, &qword_10036C860);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t sub_100011C5C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  v4 = &a2[*(v3 + 20)];
  UnknownStorage.init()();
  v5 = *(v3 + 24);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_100011CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418390, &qword_10036C868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418390, &qword_10036C868);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  sub_100012428(&qword_1004184A8, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t sub_100011F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418388, &qword_10036C860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418388, &qword_10036C860);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t sub_100012148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_100418398, &qword_10036C870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418398, &qword_10036C870);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  sub_100012428(&qword_1004184C0, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

uint64_t sub_100012370(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100012428(unint64_t *a1, void (*a2)(uint64_t))
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

int *sub_100012470@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[8]) = 4;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 4;
  v8 = a1 + result[14];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_100012524()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    sub_100012428(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100012688()
{
  v0 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v39 - v2;
  v42 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v42);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v39 - v8;
  v9 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = ALWiFiScanSingleAccessPoint._mac.getter();
  if ((v22 & 1) == 0)
  {
    sub_100012C18(v21);
  }

  v23 = ALWiFiScanSingleAccessPoint._ssid.getter();
  if (v24)
  {
    sub_1000FFAD4(v23, v24);
  }

  v25 = ALWiFiScanSingleAccessPoint._rssidB.getter();
  if ((v25 & 0x100000000) == 0)
  {
    sub_100012ED8(v25);
  }

  v26 = ALWiFiScanSingleAccessPoint._channel.getter();
  if ((v26 & 0x100000000) == 0)
  {
    sub_100012F28(v26);
  }

  v27 = ALWiFiScanSingleAccessPoint._ageSec.getter();
  if ((v27 & 0x100000000) == 0)
  {
    sub_10001330C(*&v27);
  }

  v28 = ALWiFiScanSingleAccessPoint._isMoving.getter();
  if (v28 != 2)
  {
    sub_100100104(v28 & 1);
  }

  v29 = ALWiFiScanSingleAccessPoint._frequencyKhz.getter();
  if ((v29 & 0x100000000) == 0)
  {
    sub_1001002F8(v29);
  }

  v30 = ALWiFiScanSingleAccessPoint._isAph.getter();
  if (v30 != 2)
  {
    sub_1000FFFFC(v30 & 1);
  }

  ALWiFiScanSingleAccessPoint._band.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000059A8(v12, &qword_10042F320, &qword_100399870);
    goto LABEL_28;
  }

  (*(v14 + 32))(v20, v12, v13);
  (*(v14 + 16))(v18, v20, v13);
  v31 = (*(v14 + 88))(v18, v13);
  if (v31 != enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:))
  {
    if (v31 == enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:))
    {
      v32 = 1;
      goto LABEL_27;
    }

    if (v31 == enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:))
    {
      v32 = 2;
      goto LABEL_27;
    }

    if (v31 == enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:))
    {
      v32 = 3;
      goto LABEL_27;
    }

    (*(v14 + 8))(v18, v13);
  }

  v32 = 0;
LABEL_27:
  sub_100013344(v32);
  (*(v14 + 8))(v20, v13);
LABEL_28:
  ALWiFiScanSingleAccessPoint._mode.getter();
  v33 = v42;
  if ((*(v4 + 48))(v3, 1, v42) == 1)
  {
    return sub_1000059A8(v3, &qword_10041C780, &qword_100374180);
  }

  v35 = v41;
  (*(v4 + 32))(v41, v3, v33);
  v36 = v40;
  (*(v4 + 16))(v40, v35, v33);
  v37 = (*(v4 + 88))(v36, v33);
  if (v37 != enum case for ALWiFiScanSingleAccessPoint.Mode.unknown(_:))
  {
    if (v37 == enum case for ALWiFiScanSingleAccessPoint.Mode.ibss(_:))
    {
      v38 = 1;
      goto LABEL_38;
    }

    if (v37 == enum case for ALWiFiScanSingleAccessPoint.Mode.infra(_:))
    {
      v38 = 2;
      goto LABEL_38;
    }

    if (v37 == enum case for ALWiFiScanSingleAccessPoint.Mode.others(_:))
    {
      v38 = 3;
      goto LABEL_38;
    }

    (*(v4 + 8))(v36, v33);
  }

  v38 = 0;
LABEL_38:
  sub_1000FFCF0(v38);
  return (*(v4 + 8))(v35, v33);
}

uint64_t sub_100012C18(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_100012C64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100012DA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100012ED8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100012F28(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100012F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_10000B8B0(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100013374(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100013718(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10001317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100012F60(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
      sub_100013374(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    if (*(v5 + v8[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v8[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v8[9]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v9 = v5 + v8[5];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10001330C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100013344(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_100013374(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1000133BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100013598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  v8 = (v4 + *(result + 20));
  if (v8[1])
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v9 = *v8;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v10 = (v4 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  v12 = (v4 + *(v7 + 28));
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100013718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100013778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_10000FF80(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CB38, &qword_100374568);
  return swift_endAccess();
}

uint64_t sub_100013900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000139CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100013A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013AE8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(a1 + *(v2 + 20)) = 2;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_100013B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 40) & 1) == 0)
  {
    v12 = *(v9 + 32);
    dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    v13 = *(v9 + 44);
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 56) & 1) == 0)
  {
    v14 = *(v9 + 52);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 64) & 1) == 0)
  {
    v15 = *(v9 + 60);
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  v16 = *(v9 + 80);
  if (v16 >> 60 != 15)
  {
    v17 = *(v9 + 72);
    sub_1000150EC(v17, *(v9 + 80));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    sub_10000CA64(v17, v16);
  }

  sub_100013F1C(v9);
  sub_10001435C(v9);
  sub_1000143F4(v9);
  sub_1000145D0(v9);
  sub_100014684(v9);
  sub_100014948(v9);
  sub_100014720(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100013E34(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_100013E64(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CB28, &qword_100374558);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100013F1C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 3)
  {
    sub_100014194();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100013FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_10041CB28, &qword_100374558);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000112AC(v6, a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[8]) = 4;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + v8[11]) = 2;
  *(a1 + v8[12]) = 2;
  *(a1 + v8[13]) = 4;
  v15 = a1 + v8[14];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_10041CB28, &qword_100374558);
  }

  return result;
}

unint64_t sub_100014194()
{
  result = qword_1004183B8;
  if (!qword_1004183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004183B8);
  }

  return result;
}

uint64_t sub_1000141E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_10000FF80(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000112AC(a1, v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v17, &qword_10041CB30, &qword_100374560);
  return swift_endAccess();
}

uint64_t sub_10001435C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v3 = *(a1 + 96);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000143F4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v3 = *(a1 + 112);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014478(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v14);

    *(v9 + v11) = v18;
    v14 = v18;
  }

  v19 = *a5;
  result = swift_beginAccess();
  *(v14 + v19) = a1 & 1;
  return result;
}

uint64_t sub_1000145D0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 124);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014654(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_100014684(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 144);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10042B8C8, &unk_100393490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10042B8C8, &unk_100393490);
  }

  sub_10000B8B0(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  sub_100013374(&qword_10042B970, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100013718(v13, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

uint64_t sub_100014948(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000149E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014AB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418390, &qword_10036C868);
  return swift_endAccess();
}

uint64_t sub_100014C38()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_100014E38(v0);
  sub_100014EB0(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100014D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100014DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100014E38(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014EB0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 40)) != 8)
  {
    v3 = *(a1 + *(result + 40));
    sub_10028A1BC();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014F3C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse, &qword_100418378, &qword_10036C850);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication, &qword_100418380, &qword_10036C858);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse, &qword_100418388, &qword_10036C860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication, &qword_100418390, &qword_10036C868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, &qword_100418388, &qword_10036C860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication, &qword_100418398, &qword_10036C870);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100015060()
{
  sub_10000CA64(v0[9], v0[10]);
  v1 = v0[18];

  v2 = v0[20];

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info, &qword_10042B8C8, &unk_100393490);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000150EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100015140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000151A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DataClient();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v27 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v17);
  sub_100015140(v3, v12);
  sub_100015140(v3, v10);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v27[0] = a1;
    v27[1] = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543618;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v20 + 4) = Strong;
    *v21 = Strong;
    sub_10001543C(v12);
    *(v20 + 12) = 1024;
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    sub_10001543C(v10);
    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "leeching to %{public}@, valid %{BOOL}d", v20, 0x12u);
    sub_1000059A8(v21, &unk_10042F020, &qword_100399AE0);
  }

  else
  {
    sub_10001543C(v10);

    sub_10001543C(v12);
  }

  (*(v14 + 8))(v17, v13);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    NSXPCConnection.onData(_:)();
  }
}

uint64_t sub_10001543C(uint64_t a1)
{
  v2 = type metadata accessor for DataClient();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NSXPCConnection.onData(_:)()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  aBlock[4] = sub_1003035EC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003035F0;
  aBlock[3] = &unk_100406A38;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100024A2C(&qword_10042EF70, &qword_1003990F8);
  if (swift_dynamicCast())
  {
    v10 = v15[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v10 onData:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    xpclog.getter(v5);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid proxy", v14, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100015720()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015758(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000157A0()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
    sub_100012428(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v6 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t *sub_10001593C()
{
  v1 = *(v0 + 16);
  result = sub_100004064();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(**result + 192);

    v3(v1);
  }

  return result;
}

uint64_t sub_1000159B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  result = sub_100015C9C(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = (v8 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
    swift_beginAccess();
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
    swift_beginAccess();
    if (*(v8 + v12) != 15)
    {
      sub_100015F84();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
    swift_beginAccess();
    if (*(v8 + v13) != 15)
    {
      sub_1001989AC();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
    swift_beginAccess();
    if (*(v8 + v14) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100015FE4(v8, a1, a2, a3);
    sub_1000169F4(v8, a1, a2, a3);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100015C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

void sub_100015EC4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = __CFADD__(v2, a1);
  v4 = v2 + a1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = v4;
    sub_1000040B4();
  }
}

uint64_t sub_100015EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100015F84()
{
  result = qword_100423C40;
  if (!qword_100423C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C40);
  }

  return result;
}

uint64_t sub_100015FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CB30, &qword_100374560);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB30, &qword_100374560);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
}

uint64_t sub_10001620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_1000162D0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000162D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CB28, &qword_100374558);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB28, &qword_100374558);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

uint64_t sub_1000164EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    v17 = *(v5 + v10[8]);
    sub_100198A00();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100016704(v5);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100016968(v5);
  sub_1000168F0(v5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100016704(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10001677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000167F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100016874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000168F0(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100016968(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if (*(a1 + *(result + 52)) != 4)
  {
    v3 = *(a1 + *(result + 52));
    sub_100016F4C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000169F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CB38, &qword_100374568);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CB38, &qword_100374568);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t sub_100016C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  sub_10000A0A4(a1 + *(v14 + 24), v8, &qword_10041CA30, &qword_100374460);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v8, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100016E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100016C1C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

unint64_t sub_100016F4C()
{
  result = qword_1004183C0;
  if (!qword_1004183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004183C0);
  }

  return result;
}

uint64_t sub_100016FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10001703C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState, &qword_10041CB30, &qword_100374560);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan, &qword_10041CB38, &qword_100374568);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000170F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 249)
  {
    v12 = *(a1 + a3[8]);
    if (v12 <= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = *(a1 + a3[8]);
    }

    v14 = v13 - 6;
    if (v12 >= 6)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100024A2C(&qword_100418368, &qword_10036C840);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v17 = sub_100024A2C(&qword_100418370, &qword_10036C848);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100017284(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 249)
  {
    *(a1 + a4[8]) = a2 + 6;
    return result;
  }

  v13 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10001740C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000174B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100017618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000176D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100017828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

unint64_t sub_100017A64(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100017A74(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100017A84(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100017A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100017B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_100017CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100017E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100017F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1000180E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_100018294(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10001844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1000185F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10001869C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xD)
    {
      v11 = 13;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 13;
    if (v10 >= 0xD)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  return result;
}

uint64_t sub_1000188BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 250)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000189F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 250)
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100018B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 249)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100018C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100018DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100018EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100018FD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 251)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 4;
    if (v14 >= 4)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100019160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 251)
  {
    *(a1 + a4[7]) = a2 + 4;
  }

  else
  {
    v15 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000193C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ExtensionFieldValueSet();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_100019568(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ExtensionFieldValueSet();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_100019714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100019780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000197F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000198AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100019DFC(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

uint64_t sub_100019E0C(uint64_t a1)
{
  if ((a1 + 1) < 8)
  {
    return a1 + 1;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_100019E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100019EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 4;
  }

  return result;
}

uint64_t sub_100019F9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001A048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001A114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 183)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0x48)
    {
      v11 = 72;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 72;
    if (v10 >= 0x48)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001A248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 183)
  {
    *(a1 + *(a4 + 20)) = a2 + 72;
  }

  else
  {
    v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001A468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10001A524(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 236)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 0x13)
    {
      v15 = 19;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 19;
    if (v14 >= 0x13)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10001A6B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 236)
  {
    *(a1 + a4[7]) = a2 + 19;
  }

  else
  {
    v15 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10001A83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}