uint64_t sub_1003033B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID) == a1 && *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID + 8) == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusAppBundleID);
    v7 = *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusAppBundleID + 8);
  }

  else
  {
    if (qword_1006A0980 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v8 = off_1006A4BB8 + 64;
      v9 = 1 << *(off_1006A4BB8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(off_1006A4BB8 + 8);
      v12 = (v9 + 63) >> 6;
      v26 = off_1006A4BB8;
      v13 = swift_bridgeObjectRetain_n();
      v15 = 0;
      if (v11)
      {
        break;
      }

LABEL_12:
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v12)
        {

          return 0;
        }

        v11 = *&v8[8 * v16];
        ++v15;
        if (v11)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_24:
      sub_1000083FC();
    }

    while (1)
    {
      v16 = v15;
LABEL_15:
      v17 = *(v26[7] + ((v16 << 9) | (8 * __clz(__rbit64(v11)))));
      v27[0] = a1;
      v27[1] = a2;
      __chkstk_darwin(v13, v14);
      v25[2] = v27;
      swift_bridgeObjectRetain_n();
      sub_10045E238(sub_100304294, v25, v17);
      v19 = v18;

      if (v19)
      {
        break;
      }

      v11 &= v11 - 1;

      v15 = v16;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v21 = sub_10000A798();
    v23 = sub_1002CB47C(v21, v22, v17);
    if (!v24)
    {
      v23 = sub_1002CB47C(5459817, 0xE300000000000000, v17);
    }

    v6 = v23;
  }

  return v6;
}

float sub_100303B30()
{
  if (qword_1006A09F8 != -1)
  {
    swift_once();
  }

  return *&dword_1006A4C20;
}

double sub_100303ED4()
{
  if (qword_1006A0A60 != -1)
  {
    swift_once();
  }

  return *&qword_1006A4C88;
}

uint64_t sub_100304084(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

id sub_1003040C0()
{
  v1 = &v0[OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusAppBundleID];
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000100569D00;
  v2 = &v0[OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID];
  *v2 = 0xD00000000000001ALL;
  *(v2 + 1) = 0x8000000100569D20;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SharedConversationServerBag();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100304164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConversationServerBag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100304210()
{
  result = qword_1006A4CE0;
  if (!qword_1006A4CE0)
  {
    sub_1000496D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4CE0);
  }

  return result;
}

void sub_1003042B4()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v52 = (v9 - v10);
  sub_100006838();
  __chkstk_darwin(v11, v12);
  v14 = &v52 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v55[0] = 0;
  v20 = [v16 removeItemAtURL:v18 error:v55];

  if (v20)
  {
    v21 = v55[0];
  }

  else
  {
    v22 = v55[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v23 = [v15 defaultManager];
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v55[0] = 0;
  v30 = [v23 copyItemAtURL:v26 toURL:v28 error:v55];

  if (v30)
  {
    sub_100005EDC();

    v33 = v31;
  }

  else
  {
    v53 = v55[0];
    v34 = v55[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006BA670);
    v37 = *(v5 + 16);
    v37(v14, v1, v2);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55[0] = v53;
      *v40 = 136315394;
      v37(v52, v14, v2);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
      v44 = sub_10000A7B0();
      v45(v44);
      v46 = sub_10002741C(v41, v43, v55);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v54 = v35;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v47 = String.init<A>(reflecting:)();
      v49 = sub_10002741C(v47, v48, v55);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error copying completed greeting to %s: %s", v40, 0x16u);
      sub_100011344();
      sub_10000F674();
      sub_100005F40();
    }

    else
    {

      v50 = sub_10000A7B0();
      v51(v50);
    }

    sub_100005EDC();
  }
}

void sub_1003046D0()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v11 = (v9 - v10);
  __chkstk_darwin(v12, v13);
  v15 = v53 - v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  URL.absoluteString.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fileExistsAtPath:v18];

  if (v19)
  {
LABEL_2:
    sub_100005EDC();
    return;
  }

  v20 = [v16 defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v57[0] = 0;
  v24 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v57];

  if (!v24)
  {
    v55 = v57[0];
    v28 = v57[0];
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA670);
    v31 = *(v5 + 16);
    v31(v15, v1, v2);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v54 = v33;
      v35 = v34;
      v55 = swift_slowAlloc();
      v56 = v29;
      v57[0] = v55;
      *v35 = 136315394;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v36 = String.init<A>(reflecting:)();
      v38 = sub_10002741C(v36, v37, v57);
      v53[1] = v32;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v31(v11, v15, v2);
      v40 = String.init<A>(reflecting:)();
      v42 = v41;
      v43 = sub_10000A7B0();
      v44(v43);
      v45 = sub_10002741C(v40, v42, v57);

      *(v35 + 14) = v45;
      sub_10000E6C8();
      _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      sub_100011344();
      sub_10000F674();
      sub_100005F40();
    }

    else
    {

      v51 = sub_10000A7B0();
      v52(v51);
    }

    goto LABEL_2;
  }

  sub_100005EDC();

  v27 = v25;
}

void sub_100304AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for UUID();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23, v28);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v32 = sub_100007FEC(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32, v37);
  v39 = &a9 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL.temporaryDirectory.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v25 + 8))(v30, v22);
  URL.appendingPathComponent(_:)();

  (*(v34 + 8))(v39, v31);
  sub_100005EDC();
}

void sub_100304C20()
{
  sub_100005EF4();
  v1 = v0;
  v132 = v2;
  v3 = type metadata accessor for URL();
  v4 = sub_100007FEC(v3);
  v131 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007BAC();
  v128 = (v9 - v10);
  sub_100006838();
  __chkstk_darwin(v11, v12);
  sub_100005F58();
  v126 = v13;
  sub_100006838();
  __chkstk_darwin(v14, v15);
  sub_100005F58();
  v127 = v16;
  sub_100006838();
  __chkstk_darwin(v17, v18);
  sub_100005F58();
  v20 = v19;
  sub_100006838();
  __chkstk_darwin(v21, v22);
  sub_100005F58();
  v24 = v23;
  sub_100006838();
  v27 = __chkstk_darwin(v25, v26);
  v29 = &v118 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v118 - v32;
  sub_100304AAC(v31, v34, v35, v36, v37, v38, v39, v40, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  sub_1003046D0();
  v133 = v1;
  URL.lastPathComponent.getter();
  v130 = v33;
  URL.appendingPathComponent(_:)();

  v41 = objc_opt_self();
  v42 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v43 = [v41 defaultManager];
  v134 = v29;
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v136[0] = 0;
  LODWORD(v29) = [v43 removeItemAtURL:v45 error:v136];

  if (v29)
  {
    v47 = v136[0];
  }

  else
  {
    v48 = v136[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v49 = v20;
  v50 = v24;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v51 = type metadata accessor for Logger();
  v52 = sub_10000AF9C(v51, qword_1006BA670);
  v53 = v131;
  v54 = v131 + 16;
  v55 = *(v131 + 16);
  v55(v50, v133, v3);
  v55(v49, v134, v3);
  v123 = v52;
  v56 = Logger.logObject.getter();
  HIDWORD(v122) = static os_log_type_t.info.getter();
  v57 = os_log_type_enabled(v56, BYTE4(v122));
  v124 = v55;
  v125 = v54;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v129 = v49;
    v59 = v58;
    v120 = swift_slowAlloc();
    v136[0] = v120;
    *v59 = 136315394;
    v60 = v53;
    v61 = v127;
    v55(v127, v50, v3);
    v62 = String.init<A>(reflecting:)();
    v121 = v41;
    v63 = v62;
    v119 = v56;
    v65 = v64;
    v66 = *(v60 + 8);
    v66(v50, v3);
    v67 = sub_10002741C(v63, v65, v136);

    *(v59 + 4) = v67;
    *(v59 + 12) = 2080;
    v68 = v59;
    v69 = v129;
    v55(v61, v129, v3);
    v70 = String.init<A>(reflecting:)();
    v72 = v71;
    v129 = v66;
    v66(v69, v3);
    v42 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
    v73 = sub_10002741C(v70, v72, v136);
    v41 = v121;

    *(v68 + 14) = v73;
    v74 = v119;
    _os_log_impl(&_mh_execute_header, v119, BYTE4(v122), "Copy file (%s) to temp location (%s)", v68, 0x16u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40();

    v53 = v131;
  }

  else
  {

    v75 = *(v53 + 8);
    v75(v49, v3);
    v129 = v75;
    v75(v50, v3);
  }

  v76 = [v41 v42[209]];
  v77 = v133;
  URL._bridgeToObjectiveC()(v78);
  v80 = v79;
  URL._bridgeToObjectiveC()(v81);
  v83 = v82;
  v136[0] = 0;
  v84 = [v76 copyItemAtURL:v80 toURL:v82 error:v136];

  if (v84)
  {
    v85 = v136[0];
    v129(v130, v3);
    (*(v53 + 32))(v132, v134, v3);
    v86 = 0;
  }

  else
  {
    v87 = v136[0];
    v88 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v89 = v126;
    v90 = v124;
    v124(v126, v77, v3);
    v91 = v128;
    v90(v128, v134, v3);
    swift_errorRetain();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    v133 = v92;
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      HIDWORD(v122) = v93;
      v95 = v94;
      v123 = swift_slowAlloc();
      v136[0] = v123;
      *v95 = 136315650;
      v96 = v127;
      v90(v127, v89, v3);
      v97 = String.init<A>(reflecting:)();
      v98 = v89;
      v99 = v97;
      v100 = v53;
      v102 = v101;
      v131 = v100 + 8;
      v103 = v129;
      v129(v98, v3);
      v104 = sub_10002741C(v99, v102, v136);

      *(v95 + 4) = v104;
      *(v95 + 12) = 2080;
      v105 = v128;
      v90(v96, v128, v3);
      v106 = String.init<A>(reflecting:)();
      v108 = v107;
      v103(v105, v3);
      v109 = sub_10002741C(v106, v108, v136);

      *(v95 + 14) = v109;
      *(v95 + 22) = 2080;
      v135 = v88;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v110 = String.init<A>(reflecting:)();
      v112 = sub_10002741C(v110, v111, v136);

      *(v95 + 24) = v112;
      sub_10000E6C8();
      _os_log_impl(v113, v114, v115, v116, v117, 0x20u);
      swift_arrayDestroy();
      sub_10000F674();
      sub_100005F40();
    }

    else
    {

      v103 = v129;
      v129(v91, v3);
      v103(v89, v3);
    }

    v103(v134, v3);
    v103(v130, v3);
    v86 = 1;
  }

  sub_10000AF74(v132, v86, 1, v3);
  sub_100005EDC();
}

_BYTE *sub_10030547C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100305558()
{
  result = qword_1006A4CF8;
  if (!qword_1006A4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4CF8);
  }

  return result;
}

_BYTE *sub_1003055AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100305694()
{
  result = qword_1006A4D00;
  if (!qword_1006A4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4D00);
  }

  return result;
}

uint64_t sub_10030578C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1006A4D10);
  v4 = *(v2 + qword_1006A4D10);
  v5 = *(v2 + qword_1006A4D10 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

uint64_t sub_1003057AC(uint64_t a1)
{
  v3 = *(v1 + qword_1006A4D68);

  sub_10001AFD0(v4, a1);
  LOBYTE(a1) = v5;

  if ((a1 & 1) == 0)
  {
    v7 = *(v1 + qword_1006A4D10);
    if (v7)
    {
      v8 = *(v1 + qword_1006A4D10 + 8);

      v7(v9);

      return sub_1000051F8(v7);
    }
  }

  return result;
}

uint64_t sub_100305850(uint64_t a1)
{
  v2 = *(v1 + qword_1006A4D68);
  *(v1 + qword_1006A4D68) = a1;
  sub_1003057AC(v2);
}

void sub_100305898()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v28 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v27 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 queue];

  v22 = swift_allocObject();
  memcpy((v22 + 16), v1, 0x48uLL);
  v30[4] = sub_100308250;
  v30[5] = v22;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v23;
  v30[3] = &unk_100626360;
  v24 = _Block_copy(v30);
  sub_10001C174(v1, &v29);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v25, v26, &unk_10057D6E0);
  sub_100008B50();
  sub_100007C38();
  _Block_release(v24);

  (*(v28 + 8))(v10, v2);
  (*(v13 + 8))(v19, v27);

  sub_100005EDC();
}

void sub_100305AF0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 pushHostedCallsToDestination:*(a1 + 48)];
}

void sub_100305B60()
{
  sub_100005EF4();
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_100007FEC(v0);
  v25 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1, v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v24 = type metadata accessor for DispatchQoS();
  v9 = sub_100007FEC(v24);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 queue];

  v26[4] = sub_100305D78;
  v26[5] = 0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v20;
  v26[3] = &unk_100626310;
  v21 = _Block_copy(v26);
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v22, v23, &unk_10057D6E0);
  sub_100008B50();
  sub_100007C38();
  _Block_release(v21);

  (*(v25 + 8))(v8, v0);
  (*(v11 + 8))(v17, v24);
  sub_100005EDC();
}

void sub_100305D78()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 pullRelayingCallsFromClient];
}

void sub_100305DD8()
{
  sub_100005EF4();
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v175 = *((swift_isaMask & *v0) + 0x50);
  v176 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_100007FEC(AssociatedTypeWitness);
  v177 = v5;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v4, v8);
  v162 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v152 - v13;
  v159 = v15;
  __chkstk_darwin(v12, v16);
  v174 = &v152 - v17;
  sub_10000D414();
  v18 = type metadata accessor for DispatchPredicate();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = v26 - v25;
  v28 = *(v1 + qword_1006A4D40);
  *(v26 - v25) = v28;
  (*(v21 + 104))(v26 - v25, enum case for DispatchPredicate.onQueue(_:), v18);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v27, v18);
  if ((v28 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v30 = qword_1006BA380;
    v168 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    v166 = xmmword_10057D690;
    *(v31 + 16) = xmmword_10057D690;
    v32 = *(v1 + qword_1006A4D50);
    v199[0] = sub_1003EE88C();
    v33 = type metadata accessor for Array();
    v34 = sub_10031E8A0(v199, v33);
    v163 = v1;
    v35 = v34;
    v37 = v36;

    *(v31 + 56) = &type metadata for String;
    v167 = sub_100009D88();
    *(v31 + 64) = v167;
    *(v31 + 32) = v35;
    *(v31 + 40) = v37;
    v38 = v163;
    static os_log_type_t.default.getter();
    v169 = v30;
    os_log(_:dso:log:type:_:)();

    v184 = &_swiftEmptySetSingleton;
    v40 = *(v38 + qword_1006A4D28);
    v39 = *(v38 + qword_1006A4D28 + 8);

    v42 = v40(v41);

    v44 = *(v38 + qword_1006A4D30);
    v43 = *(v38 + qword_1006A4D30 + 8);

    v46 = v44(v45);

    v47 = *(v38 + qword_1006A4D80);
    v1 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    if (v47 == 1 && (v42 & 1) != 0 && (v46 & 1) != 0)
    {
      break;
    }

    v52 = v47 ^ 1;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10057D6A0;
    LOBYTE(v199[0]) = v52;
    v54 = String.init<A>(reflecting:)();
    AssociatedTypeWitness = v167;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = AssociatedTypeWitness;
    *(v53 + 32) = v54;
    *(v53 + 40) = v55;
    LOBYTE(v199[0]) = (v42 & 1) == 0;
    v56 = String.init<A>(reflecting:)();
    *(v53 + 96) = &type metadata for String;
    *(v53 + 104) = AssociatedTypeWitness;
    *(v53 + 72) = v56;
    *(v53 + 80) = v57;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_9:
    v58 = *(v38 + qword_1006A4D70);
    if (!v58 || (v59 = [v58 v1[144]]) == 0)
    {
LABEL_23:
      sub_100305850(v184);
      sub_100005EDC();
      return;
    }

    v60 = 0;
    v61 = 1 << v184[32];
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v184 + 7);
    v64 = (v61 + 63) >> 6;
    while (v63)
    {
      v65 = v60;
LABEL_20:
      v66 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      if (*(*(v184 + 6) + 72 * (v66 | (v65 << 6)) + 40) == 1)
      {

        goto LABEL_23;
      }
    }

    while (1)
    {
      v65 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v65 >= v64)
      {
        v67 = v59;
        sub_1002BA89C(v67, v193);
        v194 = *v193;
        v195 = *&v193[16];
        v196 = *&v193[32];
        v197 = 1;
        *v198 = *&v193[41];
        *&v198[15] = *&v193[56];
        sub_10001C174(&v194, v183);
        sub_10001C1D0(v181, &v194);

        memcpy(v182, v181, 0x48uLL);
        sub_1002F6EC4(v182);
        *v183 = *v193;
        *&v183[16] = *&v193[16];
        *&v183[32] = *&v193[32];
        v183[40] = 1;
        *&v183[41] = *&v193[41];
        *&v183[56] = *&v193[56];
        sub_1002F6EC4(v183);
        goto LABEL_23;
      }

      v63 = *&v184[8 * v65 + 56];
      ++v60;
      if (v63)
      {
        v60 = v65;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    sub_100008134();
  }

  v48 = sub_1003EE88C();
  v49 = Array.startIndex.getter();
  v180 = v49;
  v50 = Array.endIndex.getter();
  v51 = v174;
  if (v49 == v50)
  {
LABEL_7:

    v1 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    goto LABEL_9;
  }

  v164 = v38 + qword_1006A4D38;
  v165 = v14;
  v178 = (v177 + 16);
  v171 = (v177 + 32);
  v172 = qword_1006A4D78;
  v161 = qword_1006A4D58;
  v170 = v177 + 8;
  v157 = qword_1006A4D70;
  v173 = v48;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v69 = *(v177 + 16);
    v69(v51, (v48 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v49), AssociatedTypeWitness);
LABEL_27:
    Array.formIndex(after:)(&v180);
    (*v171)(v14, v51, AssociatedTypeWitness);
    v70 = *(v38 + v172);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v72 = AssociatedConformanceWitness;
    if (v70 != 1)
    {
      goto LABEL_31;
    }

    v73 = *(AssociatedConformanceWitness + 16);
    v74 = sub_10000B8B0();
    v76 = v75(v74);
    if (v77)
    {
      v78 = v76;
      v79 = v77;
      v81 = *v164;
      v80 = *(v164 + 8);

      v82 = v81(v78, v79);
      v51 = v174;
      v83 = v82;

      if (v83)
      {
        v84 = [v83 canReceiveRelayedGFTCalls];

        if (v84)
        {
LABEL_31:
          v51 = v72 + 16;
          v85 = *(v72 + 16);
          v86 = sub_10000B8B0();
          v87 = v85(v86);
          if (!v88)
          {
            goto LABEL_34;
          }

          v89 = v87;
          v90 = v88;
          v92 = *v164;
          v91 = *(v164 + 8);

          v93 = v92(v89, v90);
          v38 = v163;
          v94 = v93;

          if (!v94)
          {
            goto LABEL_34;
          }

          v95 = [v94 canReceiveRelayedCalls];

          if ((v95 & 1) == 0)
          {
            sub_100015F74();
            v14 = v165;
          }

          else
          {
LABEL_34:
            v96 = v85;
            v97 = sub_10000B8B0();
            v14 = v165;
            if (sub_1002BAA28(v97, v98))
            {
              v99 = sub_100035A64();
              *(v99 + 16) = v166;
              v100 = sub_10000A148();
              v102 = sub_10031E8A0(v100, v101);
              v103 = v167;
              *(v99 + 56) = &type metadata for String;
              *(v99 + 64) = v103;
              *(v99 + 32) = v102;
              *(v99 + 40) = v104;
              static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)();
              goto LABEL_36;
            }

            sub_100009AB0(v38 + v161, &v194);
            v113 = sub_100307D30(&v194, AssociatedTypeWitness, v72);
            sub_100009B7C(&v194);
            if (v113)
            {
              v69(v162, v14, AssociatedTypeWitness);
              v114 = v113;
              sub_1002BAA98(v114, AssociatedTypeWitness, v72, &v185);
              v115 = v186;
              if (v186)
              {
                v116 = v185;
                v117 = v189;
                v182[0] = v187;
                v179[0] = *v190;
                *(v179 + 3) = *&v190[3];
                v181[0] = v192;
                if (v188 == 13)
                {
                  sub_100015F74();
                  v14 = v165;
                  v118 = sub_10000A148();
                  v119 = v115;
                  v121 = v120;
                  v122(v118);

                  *&v194 = v116;
                  *(&v194 + 1) = v119;
                  v195 = v182[0];
                  v196 = 13;
                  v197 = v121;
                  sub_100018194();
                  sub_10000C708();
LABEL_45:
                  v51 = v174;
                  goto LABEL_46;
                }

                v132 = *(v38 + v157);
                v158 = v191;
                v156 = v114;
                if (!v132)
                {
                  v142 = v188;
                  v14 = v165;
                  v51 = v174;
                  goto LABEL_75;
                }

                v154 = v188;
                v155 = v185;
                v160 = v189;
                v133 = [v132 remoteDevice];
                if (!v133)
                {
                  goto LABEL_65;
                }

                v14 = v133;
                v116 = v165;
                v134 = sub_10000B8B0();
                v135 = v96(v134);
                v137 = v136;
                v138 = [v14 uniqueIDOverride];
                if (v138)
                {
                  v116 = v138;
                  v153 = v135;
                  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v140 = v139;

                  if (v137)
                  {
                    if (v140)
                    {
                      v141 = v153 == v51 && v137 == v140;
                      if (!v141)
                      {
                        v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v116)
                        {
LABEL_70:
                          v142 = v154;
                          goto LABEL_74;
                        }

LABEL_65:
                        v142 = v154;
                        v143 = *(v38 + v157);
                        if (v143)
                        {
                          v144 = [v143 remoteDestination];
                          sub_10000FDAC();
                          v117 = v160;
                          if (v145)
                          {
                            v146 = v145;
                            sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
                            v147 = static NSObject.== infix(_:_:)();

                            v117 = v160;
                            v141 = (v147 & 1) == 0;
                            v116 = v155;
                            if (!v141)
                            {
                              v117 = 1;
                            }
                          }
                        }

                        else
                        {
                          sub_10000FDAC();
                          v117 = v160;
                        }

LABEL_75:
                        v160 = v117;
                        v199[0] = v116;
                        v199[1] = v115;
                        v200 = v182[0];
                        v201 = v142;
                        v202 = v117;
                        sub_100018194();
                        v203 = v158;
                        *(v148 + 56) = v181[0];
                        sub_10001C174(v199, v193);
                        sub_10001C1D0(v183, v199);

                        memcpy(v193, v183, sizeof(v193));
                        sub_1002F6EC4(v193);
                        sub_100015F74();
                        v149 = sub_10000A148();
                        v150(v149);
                        *&v194 = v116;
                        *(&v194 + 1) = v115;
                        v195 = v182[0];
                        v196 = v142;
                        v197 = v160;
                        sub_100018194();
                        sub_10000C708();
                        goto LABEL_46;
                      }

                      v142 = v154;

LABEL_73:

LABEL_74:
                      sub_10000FDAC();
                      goto LABEL_75;
                    }

                    goto LABEL_62;
                  }

                  if (!v140)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  if (!v137)
                  {
                    v142 = v154;
                    goto LABEL_73;
                  }

LABEL_62:
                }

                goto LABEL_65;
              }

              static os_log_type_t.error.getter();
              v126 = sub_100035A64();
              *(v126 + 16) = v166;
              v127 = sub_10000A148();
              v129 = sub_10031E8A0(v127, v128);
              v130 = v167;
              *(v126 + 56) = &type metadata for String;
              *(v126 + 64) = v130;
              *(v126 + 32) = v129;
              *(v126 + 40) = v131;
              os_log(_:dso:log:type:_:)();

LABEL_36:
            }

            sub_100015F74();
          }

          v123 = sub_10000A148();
          v124(v123);
          goto LABEL_45;
        }
      }
    }

    v105 = sub_100035A64();
    *(v105 + 16) = v166;
    v106 = sub_10000A148();
    v108 = sub_10031E8A0(v106, v107);
    v109 = v167;
    *(v105 + 56) = &type metadata for String;
    *(v105 + 64) = v109;
    *(v105 + 32) = v108;
    *(v105 + 40) = v110;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100015F74();
    v111 = sub_10000A148();
    v112(v111);
LABEL_46:
    v48 = v173;
    v125 = Array.endIndex.getter();
    v49 = v180;
    if (v180 == v125)
    {
      goto LABEL_7;
    }
  }

  v151 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v159 == 8)
  {
    *&v194 = v151;
    v69 = *v178;
    (*v178)(v51, &v194, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_100306B40(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10057D690;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v2 = String.init<A>(reflecting:)();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100009D88();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

void sub_100306C68()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v36 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  sub_10000F9FC();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v9);
  v34 = v11;
  v35 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = [v2 relayClientTransport];
  if (v2)
  {
    v19 = v2;
    if ([v19 isHostedOnCurrentDevice] && objc_msgSend(v19, "hasRelaySupport:", 2))
    {
      v20 = [v19 provider];
      v21 = [v20 isSystemProvider];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v19 needsConversationOrVideoRelaySupport];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = *&v0[qword_1006A4D40];
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = v21;
  *(v24 + 25) = v22;
  *(v24 + 32) = v18;
  v37[4] = sub_10030823C;
  v37[5] = v24;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v37[2] = v25;
  v37[3] = &unk_1006262E8;
  v26 = _Block_copy(v37);
  v27 = v0;
  v28 = v18;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v29, v30, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  v31 = *(v36 + 8);
  v32 = sub_100006884();
  v33(v32);
  (*(v34 + 8))(v17, v35);

  sub_100005EDC();
}

uint64_t sub_100306F58()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 queue];

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  aBlock[4] = sub_100308258;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006263B0;
  v14 = _Block_copy(aBlock);
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v5, v1);
  (*(v6 + 8))(v10, v18);
}

void sub_100307238()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10000F9FC();
  v11 = *(v0 + qword_1006A4D40);
  *v1 = v11;
  v12 = sub_100011364(v7);
  v13(v12);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  v16 = sub_100006884();
  v17(v16);
  if ((v11 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10057D690;
    v39 = sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
    *(v18 + 56) = v39;
    v38 = sub_100308148();
    *(v18 + 64) = v38;
    *(v18 + 32) = v3;
    v41 = v3;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v40 = v0;
    v37 = qword_1006A4D68;
    v19 = *(v0 + qword_1006A4D68);
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v0 = v21 & *(v19 + 56);
    v22 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v23 = 0;
    if (v0)
    {
      break;
    }

LABEL_7:
    while (1)
    {
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v3 >= v22)
      {

        static os_log_type_t.error.getter();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10057D6A0;
        *(v32 + 56) = v39;
        *(v32 + 64) = v38;
        *(v32 + 32) = v41;
        v33 = *(v40 + v37);
        *(v32 + 96) = sub_10026D814(&qword_1006A4E18, &qword_10057FE58);
        *(v32 + 104) = sub_10001000C(&unk_1006A4E20, &qword_1006A4E18, &qword_10057FE58);
        *(v32 + 72) = v33;
        v34 = v41;

        os_log(_:dso:log:type:_:)();

        goto LABEL_21;
      }

      v0 = *(v19 + 56 + 8 * v3);
      ++v23;
      if (v0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_100008134();
  }

  while (1)
  {
    v3 = v23;
LABEL_10:
    memcpy(v43, (*(v19 + 48) + 72 * (__clz(__rbit64(v0)) | (v3 << 6))), 0x48uLL);
    v24 = v43[0];
    v25 = v43[1];
    sub_10001C174(v43, &v42);
    v26 = [v41 uniqueIdentifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v24 == v27 && v25 == v29)
    {

      goto LABEL_20;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      break;
    }

    v0 &= v0 - 1;
    sub_1002F6EC4(v43);
    v23 = v3;
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_20:

  v35 = *(v40 + qword_1006A4D18);
  v36 = *(v40 + qword_1006A4D18 + 8);

  v35(v43);

  sub_1002F6EC4(v43);
LABEL_21:
  sub_100005EDC();
}

void sub_10030768C()
{
  sub_100005EF4();
  v62 = v1;
  v60 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v65 = v10 - v9;
  sub_10000D414();
  v66 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v66);
  v64 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007FDC();
  v63 = v17 - v16;
  sub_10000D414();
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = (v26 - v25);
  v61 = type metadata accessor for DispatchWallTime();
  v28 = sub_100007FEC(v61);
  v30 = v29;
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v28, v33);
  v36 = v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v37);
  v39 = v59 - v38;
  sub_10000D414();
  v40 = type metadata accessor for DispatchPredicate();
  v41 = sub_100007FEC(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41, v46);
  sub_100007FDC();
  v49 = v48 - v47;
  v50 = *(v0 + qword_1006A4D40);
  *(v48 - v47) = v50;
  (*(v43 + 104))(v48 - v47, enum case for DispatchPredicate.onQueue(_:), v40);
  v59[1] = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v49, v40);
  if (v50)
  {
    static DispatchWallTime.now()();
    *v27 = TUTransferTimeout();
    (*(v21 + 104))(v27, enum case for DispatchTimeInterval.seconds(_:), v18);
    + infix(_:_:)();
    (*(v21 + 8))(v27, v18);
    v59[0] = *(v30 + 8);
    v51 = v61;
    (v59[0])(v36, v61);
    v70[4] = v60;
    v70[5] = v62;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v70[2] = v52;
    v70[3] = &unk_100626298;
    v53 = _Block_copy(v70);

    v54 = v63;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v55, v56, &unk_10057D6E0);
    v57 = v65;
    v58 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v53);
    (*(v67 + 8))(v57, v58);
    (*(v64 + 8))(v54, v66);
    (v59[0])(v39, v51);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100307AFC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  sub_10000F9FC();
  v9 = *(v0 + qword_1006A4D40);
  *v1 = v9;
  v10 = sub_100011364(v5);
  v11(v10);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v14 = sub_100006884();
  v15(v14);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_5:
    sub_100008134();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v16 = *(v0 + qword_1006A4D20);
  v17 = *(v0 + qword_1006A4D20 + 8);

  v16(v18);
}

void sub_100307C68(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + qword_1006A4D48) "callContainer")];
  swift_unknownObjectRelease();
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v4 = v2;
      v3 = v1;
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  sub_100306C68();
}

id sub_100307D30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = a1[3];
    v11 = a1[4];
    sub_100009B14(a1, v10);
    v12 = (*(v11 + 8))(v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 24))(a2, a3);
  if (v13)
  {
    if (v12)
    {
    }

    else
    {
      sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
      return sub_10001BA24();
    }
  }

  return v12;
}

void sub_100307E5C(uint64_t a1, char a2, char a3, void *a4)
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
        goto LABEL_9;
      }
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
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

LABEL_9:
  sub_100305DD8();
}

void sub_100308034(uint64_t a1)
{
  v2 = *(a1 + qword_1006A4D10 + 8);
  sub_1000051F8(*(a1 + qword_1006A4D10));
  sub_100015C8C(qword_1006A4D18);
  sub_100015C8C(qword_1006A4D20);
  sub_100015C8C(qword_1006A4D28);
  sub_100015C8C(qword_1006A4D30);
  sub_100015C8C(qword_1006A4D38);

  v3 = *(a1 + qword_1006A4D48);
  swift_unknownObjectRelease();

  sub_100009B7C((a1 + qword_1006A4D58));
  v4 = *(a1 + qword_1006A4D68);

  v5 = *(a1 + qword_1006A4D70);
}

unint64_t sub_100308148()
{
  result = qword_1006A4E10;
  if (!qword_1006A4E10)
  {
    sub_100006AF0(255, &qword_1006A2C28, TURoute_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4E10);
  }

  return result;
}

uint64_t sub_1003081B4(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = _HashTable.occupiedBucket(after:)();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100308274(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_100308310()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "voicemail timeout block running", v3, 2u);
  }

  v4 = [objc_opt_self() sharedInstance];
  [v4 disconnectAllCalls];
}

uint64_t sub_100308434()
{
  if (qword_1006A0A10 != -1)
  {
    swift_once();
  }

  v0 = qword_1006A4C38;
  if (qword_1006A0A18 != -1)
  {
    swift_once();
  }

  result = v0 + qword_1006A4C40;
  if (__OFADD__(v0, qword_1006A4C40))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100308500()
{
  v1 = (v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource);
  sub_100005298();
  v2 = *sub_100009B14(v1, v1[3]);
  sub_100434ED8();
  return v3 & 1;
}

uint64_t sub_100308588()
{
  v1 = (v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource);
  sub_100005298();
  v2 = *sub_100009B14(v1, v1[3]);
  return sub_1004353B4();
}

id sub_1003085D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "creating answeringMachine with configuration: %@", v12, 0xCu);
    sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
  }

  v15 = sub_100006AF0(0, &qword_1006A5368, AVCAnsweringMachine_ptr);
  swift_getObjectType();
  v16 = a3;
  v17 = v9;
  swift_unknownObjectRetain();
  result = sub_100317424(v17, a2, a3);
  if (result)
  {
    v19 = &off_1006263D8;
  }

  else
  {
    v15 = 0;
    v19 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = result;
  a4[3] = v15;
  a4[4] = v19;
  return result;
}

void sub_1003087A4()
{
  sub_100005EF4();
  v2 = v0;
  v210 = v3;
  v214 = v4;
  v207 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v207);
  v206 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v205 = v11 - v10;
  v12 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v13 = sub_100007BF0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  sub_10000F4E8();
  v208 = v17;
  sub_100006838();
  v20 = __chkstk_darwin(v18, v19);
  v22 = &v201 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v201 - v24;
  v26 = type metadata accessor for URL();
  v27 = sub_100007FEC(v26);
  v213 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27, v31);
  sub_10000F4E8();
  v209 = v32;
  sub_100006838();
  __chkstk_darwin(v33, v34);
  sub_10000C1C4();
  v211 = v35;
  v36 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v36);
  v38 = *(v37 + 64);
  sub_100006688();
  __chkstk_darwin(v39, v40);
  sub_10000B8BC();
  v41 = type metadata accessor for DispatchPredicate();
  v42 = sub_100007FEC(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42, v47);
  sub_10000E4F4();
  v48 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v1 = v48;
  (*(v44 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v41);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  (*(v44 + 8))(v1, v41);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v212 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_featureFlags);
  if ([v212 receptionistEnabled])
  {
    v50 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
    v51 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v53 = Strong;
      v54 = [Strong receptionistState];

      if (v54 == 3)
      {
        goto LABEL_7;
      }
    }

    v55 = *(v0 + v50);
    v56 = swift_unknownObjectWeakLoadStrong();
    if (v56)
    {
      v57 = v56;
      v58 = [v56 receptionistState];

      if (v58 == 4)
      {
LABEL_7:
        v59 = *(v0 + v50);
        v219 = 0;
        v217 = 0u;
        v218 = 0u;
        sub_100008D34();

        sub_1000432B0(&v217, v59 + 16, &qword_1006A52D0, &unk_100580040);
        swift_endAccess();
      }
    }
  }

  v60 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v61 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  sub_100005298();
  sub_10003A220(v61 + 16, &v217, &qword_1006A52D0, &unk_100580040);
  v62 = *(&v218 + 1);
  sub_100009A04(&v217, &qword_1006A52D0, &unk_100580040);
  if (v62)
  {
    if (qword_1006A0B28 == -1)
    {
LABEL_10:
      v63 = type metadata accessor for Logger();
      sub_1000075F0(v63, qword_1006BA5F8);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (sub_10000A648(v65))
      {
        v66 = sub_100006DC4();
        sub_100008944(v66);
        sub_10001628C();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        sub_10000E668();
      }

      goto LABEL_64;
    }

LABEL_66:
    sub_100008018();
    swift_once();
    goto LABEL_10;
  }

  v72 = [objc_allocWithZone(AVCAnsweringMachineConfiguration) init];
  v73 = [v212 receptionistEnabled];
  v204 = v60;
  if (v73)
  {
    v74 = v214;
    if ([v214 isKnownCaller] && objc_msgSend(v74, "receptionistState") == 1)
    {
      v75 = v26;
      v76 = 0;
    }

    else
    {
      v75 = v26;
      v76 = sub_100059674([v74 receptionistState], &off_1006208A8);
    }

    [v72 setIsMessageCaptioningEnabled:v76];
    v79 = [v74 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v80 = type metadata accessor for UUID();
    isa = 0;
    if (sub_100015468(v0, 1, v80) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v82 = *(*(v80 - 8) + 8);
      v83 = sub_10000BA34();
      v84(v83);
    }

    [v72 setReportingSamplingUUID:isa];

    v78 = v214;
    if ([v214 receptionistState])
    {
      v85 = 3;
    }

    else
    {
      v85 = 1;
    }

    [v72 setUsage:v85];
    v26 = v75;
    v77 = v213;
  }

  else
  {
    [v72 setIsMessageCaptioningEnabled:1];
    v77 = v213;
    v78 = v214;
  }

  [v72 setIsMessageRecordingEnabled:{objc_msgSend(v72, "isMessageCaptioningEnabled")}];
  sub_10003A220(v210, v22, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v22, 1, v26) == 1)
  {
    v0 += OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
    sub_100022CBC();
    sub_10000D420();
    sub_100437B94();
    if (sub_100015468(v22, 1, v26) != 1)
    {
      sub_100009A04(v22, &unk_1006A52C0, &unk_10057D930);
    }
  }

  else
  {
    (*(v77 + 32))(v25, v22, v26);
    sub_100007C20();
    sub_10000AF74(v86, v87, v88, v26);
  }

  if (sub_100015468(v25, 1, v26) == 1)
  {
    sub_100009A04(v25, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000075F0(v89, qword_1006BA5F8);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (sub_10000A648(v91))
    {
      v92 = sub_100006DC4();
      sub_100008944(v92);
      sub_10001628C();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      sub_10000E668();
    }
  }

  else
  {
    v203 = v49;
    v98 = v211;
    (*(v77 + 32))(v211, v25, v26);
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_1000075F0(v99, qword_1006BA5F8);
    v100 = *(v77 + 16);
    v101 = v209;
    v202 = v77 + 16;
    v201 = v100;
    v100(v209, v98, v26);
    v210 = v0;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = sub_100005274();
      v105 = sub_100005E84();
      *&v217 = v105;
      *v104 = 136315138;
      sub_100011374();
      sub_10031699C(v106, v107);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v26;
      v111 = v110;
      v112 = v101;
      v113 = *(v213 + 8);
      v113(v112, v109);
      v114 = sub_10002741C(v108, v111, &v217);
      v26 = v109;

      *(v104 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v102, v103, "greeting = %s", v104, 0xCu);
      sub_100009B7C(v105);
      v78 = v214;
      sub_100005F40();
      v98 = v211;
      sub_100005F40();
    }

    else
    {

      v116 = v101;
      v113 = *(v77 + 8);
      v113(v116, v26);
    }

    URL._bridgeToObjectiveC()(v115);
    v118 = v117;
    [v72 setAnnouncementAsset:v117];

    sub_1002A8978(v72, v78);
    v119 = v72;
    v120 = v210;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 16777472;
      *(v123 + 4) = [v119 source];

      sub_1000079AC();
      _os_log_impl(v124, v125, v126, v127, v128, 5u);
      v78 = v214;
      sub_100005F40();
    }

    else
    {

      v121 = v119;
    }

    v130 = *(v2 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineCreationBlock);
    v129 = *(v2 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineCreationBlock + 8);

    v130(&v215, v119, v2, v203);

    if (v216)
    {
      sub_10002F0C8(&v215, &v217);
      v131 = v204;
      v132 = *(v2 + v204);
      sub_100009AB0(&v217, &v215);
      sub_100008D34();

      sub_1000432B0(&v215, v132 + 16, &qword_1006A52D0, &unk_100580040);
      swift_endAccess();

      v133 = *(v2 + v131);
      swift_unknownObjectWeakAssign();
      v134 = *(v2 + v131);
      sub_100022CBC();
      sub_10000D420();

      sub_100438D58(v78, v135, v136, v137, v138, v139, v140, v141, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
      v143 = v142;
      v145 = v144;
      v146 = (v134 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
      v147 = *(v134 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle + 8);
      *v146 = v148;
      v146[1] = v149;

      v150 = (v134 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);
      v151 = *(v134 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID + 8);
      *v150 = v143;
      v150[1] = v145;
      v152 = v214;

      if (([v152 isRTT] & 1) != 0 || objc_msgSend(v152, "isTTY"))
      {
        if (![v212 receptionistEnabled])
        {
          goto LABEL_55;
        }

        v153 = [v152 lastReceptionistMessage];
        v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v155;

        v157 = HIBYTE(v156) & 0xF;
        v158 = v154 & 0xFFFFFFFFFFFFLL;
        v159 = v214;
        if ((v156 & 0x2000000000000000) == 0)
        {
          v157 = v158;
        }

        if (v157)
        {
          if (qword_1006A0BC8 != -1)
          {
            sub_10003DB74();
          }

          v160 = [v159 lastReceptionistMessage];
          v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v163 = v162;

          v164 = [v214 callUUID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100317550();

          v165 = v161;
          v152 = v214;
          sub_1003D3158(v165, v163, v120, v113);
        }

        else
        {
LABEL_55:
          v212 = v113;
          v173 = v211;
          if (qword_1006A0BC8 != -1)
          {
            sub_10003DB74();
          }

          v174 = v208;
          v201(v208, v173, v26);
          sub_100007C20();
          sub_10000AF74(v175, v176, v177, v26);
          v178 = v205;
          static Locale.current.getter();
          v179 = Locale.identifier.getter();
          v181 = v180;
          (*(v206 + 8))(v178, v207);
          v182 = v214;
          v183 = [v214 callUUID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100317550();

          sub_1003D2DEC(v174, v179, v181, v120, v113);
          v152 = v182;

          sub_100009A04(v174, &unk_1006A52C0, &unk_10057D930);
          v113 = v212;
        }
      }

      v184 = v152;
      v185 = v219;
      sub_100009B14(&v217, *(&v218 + 1));
      v186 = *(v185 + 8);
      v187 = sub_100005EC4();
      [v184 setAnsweringMachineStreamToken:{v188(v187, v185)}];
      v189 = v219;
      sub_100009B14(&v217, *(&v218 + 1));
      v190 = *(v189 + 24);
      v191 = sub_100005EC4();
      v192(v191, v189);
      v193 = v184;
      v194 = Logger.logObject.getter();
      LOBYTE(v189) = static os_log_type_t.default.getter();
      if (sub_10000BB44(v189))
      {
        v195 = sub_100005274();
        *v195 = 134217984;
        *(v195 + 4) = [v193 answeringMachineStreamToken];

        sub_10000FBFC();
        _os_log_impl(v196, v197, v198, v199, v195, 0xCu);
        sub_100005F40();
        v193 = v119;
      }

      else
      {

        v194 = v119;
      }

      v200 = v211;

      v113(v200, v26);
      sub_100009B7C(&v217);
    }

    else
    {
      sub_100009A04(&v215, &qword_1006A52D0, &unk_100580040);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      if (sub_10000BB44(v167))
      {
        *sub_100006DC4() = 0;
        sub_1000079AC();
        _os_log_impl(v168, v169, v170, v171, v172, 2u);
        sub_100006868();
      }

      else
      {
      }

      v113(v98, v26);
    }
  }

LABEL_64:
  sub_100005EDC();
}

void sub_100309760()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  v6 = sub_100007BF0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007FDC();
  v24 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v10 = type metadata accessor for GreetingsDataSource();
  v11 = [v3 queue];
  v12 = v1;
  static Locale.current.getter();
  sub_1004341EC();
  v14 = v13;
  v15 = type metadata accessor for AnsweringMachineState();
  v16 = sub_1000076B4(v15);
  sub_10003A308();
  v17 = [objc_allocWithZone(CHManager) init];
  v18 = [objc_allocWithZone(TUFeatureFlags) init];
  v25[3] = v10;
  v25[4] = &off_1006305D8;
  v25[0] = v14;
  v19 = objc_allocWithZone(ObjectType);
  v20 = sub_10001BDB8(v25, v10);
  v21 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v20, v20);
  sub_10000E598();
  (*(v22 + 16))(&selRef_fetchCurrentProcessStatesForBundleIdentifier_);
  v23 = v14;
  sub_100316F50(v24, v3, "fetchCurrentProcessStatesForBundleIdentifier:", v16, v17, v18, v19);

  sub_100009B7C(v25);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}

void sub_1003099D8()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000E598();
  v26 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v26);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v2;
  v14[4] = v0;
  v27[4] = sub_100316F44;
  v27[5] = v14;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v27[2] = v15;
  v27[3] = &unk_100626950;
  _Block_copy(v27);
  sub_10000B934();

  v16 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v17, v18);
  v19 = sub_10001E3B8();
  sub_10026D814(v19, v20);
  sub_100008434();
  sub_100317520(v21);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v4);
  v22 = sub_100015A08();
  v23(v22);
  v24 = sub_100007C7C();
  v25(v24);

  sub_100005EDC();
}

void sub_100309BE8(uint64_t a1, unint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002741C(a1, a2, v39);
    _os_log_impl(&_mh_execute_header, v8, v9, "settingCustomReply: %s", v10, 0xCu);
    sub_100009B7C(v11);
  }

  v40 = ObjectType;
  v41 = &off_100626418;
  v39[0] = a3;
  v12 = &a3[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
  swift_beginAccess();
  v13 = *(v12 + 3);
  v14 = *(v12 + 4);
  sub_10001BDB8(v12, v13);
  v15 = *(v14 + 32);
  v16 = a3;
  v15(v39, v13, v14);
  swift_endAccess();
  v17 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v18 = *&v16[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if ([Strong receptionistState] == 4)
    {
      if ([v20 isKnownCaller] && (*(*&v16[v17] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) & 1) == 0)
      {

        v34 = (*&v16[v17] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);
        v35 = v34[1];
        *v34 = a1;
        v34[1] = a2;
      }

      else
      {
        v21 = *sub_100009B14(v12, *(v12 + 3));
        v22 = v20;
        sub_10043D55C(a1, a2, 0xD00000000000001ELL, 0x800000010056A5B0, v20, v23, v24, v25, v36, v37, v38, v39[0], v39[1], v39[2], v40, v41, v42, v43, v44, v45);
      }
    }

    else
    {
      v26 = v20;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39[0] = v30;
        *v29 = 136315138;
        [v26 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v31 = String.init<A>(reflecting:)();
        v33 = sub_10002741C(v31, v32, v39);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "setCustomReply call not in waitingForUserResponse %s, ignoring", v29, 0xCu);
        sub_100009B7C(v30);
      }

      else
      {
      }
    }
  }
}

void sub_10030A004()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_10000E598();
  v23 = type metadata accessor for DispatchQoS();
  v6 = sub_100007FEC(v23);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v24[4] = sub_100316F3C;
  v24[5] = v10;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v11;
  v24[3] = &unk_100626900;
  v12 = _Block_copy(v24);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v14, v15);
  v16 = sub_10001E3B8();
  sub_10026D814(v16, v17);
  sub_100008434();
  sub_100317520(v18);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  v19 = sub_100015A08();
  v20(v19);
  v21 = sub_100007C7C();
  v22(v21);

  sub_100005EDC();
}

void sub_10030A208(uint64_t a1)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "startReceptionistReply", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (([Strong isKnownCaller]& 1) != 0 && [v20 receptionistState]== 1 || ([v20 isKnownCaller]& 1) == 0 && [v20 receptionistState]== 3)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, ".ringing|.initialResponse -> .waitingForUserResponse", v10, 2u);
      }

      [v20 setReceptionistState:4];
    }

    else
    {
      v20 = v20;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 67109378;
        *(v15 + 4) = [v20 isKnownCaller];

        *(v15 + 8) = 2080;
        [v20 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v17 = String.init<A>(reflecting:)();
        v19 = sub_10002741C(v17, v18, &v21);

        *(v15 + 10) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "startReceptionistReply call in invalid state isKnown=%{BOOL}d receptionistState=%s, ignoring", v15, 0x12u);
        sub_100009B7C(v16);

        return;
      }
    }
  }

  else
  {
    v20 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v20, v11, "no call for receptionist", v12, 2u);
    }
  }
}

uint64_t sub_10030A5E0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v3 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v4 = type metadata accessor for AnsweringMachineState();
  v5 = sub_1000076B4(v4);

  sub_10003A308();
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v8 = *(v1 + v2);
  sub_100005298();
  v9 = *(v3 + 80);
  swift_beginAccess();
  v10 = *(v8 + 80);
  *(v8 + 80) = v9;

  v11 = *(v1 + v2);
  sub_10031755C(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  v12 = *(v1 + v2);
  sub_10031755C(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);

  v13 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration + 8);
  v14 = *(v1 + v2) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
  *v14 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration);
  *(v14 + 8) = v13;
  sub_10003FB38(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);

  v15 = *(v1 + v2);
  sub_10003FB38(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);

  v16 = *(v1 + v2);
  *(v16 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio);
  v17 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);

  v18 = *(v16 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);
  *(v16 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs) = v17;
}

uint64_t sub_10030A7E0(uint64_t a1)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop timeout block running", v5, 2u);
  }

  v6 = type metadata accessor for AnsweringMachineState();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_10003A308();
  v10 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v9;
}

void sub_10030A8F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v93 = &v87 - v7;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000AF9C(v54, qword_1006BA5F8);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_20;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Requesting captions provider with stream streamToken == 0. Will not create client.", v57, 2u);
    goto LABEL_19;
  }

  v22 = [objc_allocWithZone(AVCCaptionsClient) initWithDelegate:v2 streamToken:a1];
  if (!v22)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000AF9C(v58, qword_1006BA5F8);
    v55 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v55, v59))
    {
      goto LABEL_20;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v95[0] = v61;
    *v60 = 136315138;
    v96 = a1;
    v62 = String.init<A>(reflecting:)();
    v64 = sub_10002741C(v62, v63, v95);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v55, v59, "Failed to create AVCCaptionsClient with stream token %s.", v60, 0xCu);
    sub_100009B7C(v61);

LABEL_19:

LABEL_20:

    return;
  }

  v14 = v22;
  v89 = v9;
  if (qword_1006A0B28 != -1)
  {
LABEL_28:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000AF9C(v23, qword_1006BA5F8);
  v90 = v14;
  v25 = v14;
  v91 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v92 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v88 = v2;
    v30 = v29;
    v95[0] = swift_slowAlloc();
    *v30 = 136315394;
    v96 = a1;
    v31 = String.init<A>(reflecting:)();
    v33 = sub_10002741C(v31, v32, v95);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v96 = v25;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v34 = v25;
    v2 = v88;
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, v95);

    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Captions client created for token %s: %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  v38 = &v2[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
  swift_beginAccess();
  v39 = *sub_100009B14(v38, *(v38 + 3));
  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v41 = v40;

  Locale.identifier.getter();

  v42 = sub_10030B2E8(v41);
  if ((v42 & 0x100) != 0)
  {
    v65 = v2;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v96 = v69;
      *v68 = 136315138;
      v70 = *sub_100009B14(v38, *(v38 + 3));
      LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
      v72 = v71;

      Locale.identifier.getter();

      v94 = v72;
      type metadata accessor for TUTranscriptionAvailability(0);
      v73 = String.init<A>(reflecting:)();
      v75 = sub_10002741C(v73, v74, &v96);

      *(v68 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to create AVCCaptionsClient taskHint from availability %s.", v68, 0xCu);
      sub_100009B7C(v69);
    }
  }

  else
  {
    v43 = v42;
    v44 = [objc_allocWithZone(AVCCaptionsConfig) init];
    v45 = *sub_100009B14(v38, *(v38 + 3));
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();

    Locale.identifier.getter();
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v89 + 8))(v13, v8);
    [v44 setLocale:isa];

    [v44 setTaskHint:v43];
    [v44 setUsage:2];
    [v44 setExplicitLanguageFilterEnabled:TUIsProfanityAllowedForUseCase() ^ 1];
    v47 = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v50 = 136315394;
      v51 = [v47 locale];
      if (v51)
      {
        v52 = v51;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v76 = v93;
      sub_10000AF74(v93, v53, 1, v8);
      v77 = sub_100291258(v76);
      v79 = v78;
      sub_100009A04(v76, &qword_1006A5360, &qword_10057CB80);
      v80 = sub_10002741C(v77, v79, &v96);

      *(v50 + 4) = v80;
      *(v50 + 12) = 2080;
      LOBYTE(v94) = v43;
      type metadata accessor for AVCCaptionsTaskHint(0);
      v81 = String.init<A>(reflecting:)();
      v83 = sub_10002741C(v81, v82, &v96);

      *(v50 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v48, v49, "Captions client configure with locale: %s and taskHint: %s.", v50, 0x16u);
      swift_arrayDestroy();
    }

    v84 = v92;
    [v92 configureCaptions:v47];
    [v84 enableCaptions:1];

    v85 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
    v86 = *(v85 + 56);
    *(v85 + 56) = v90;
  }
}

uint64_t sub_10030B2E8(unint64_t a1)
{
  v1 = 1u >> (a1 & 7);
  v2 = a1;
  if (a1 > 2)
  {
    v1 = 1;
    v2 = 0;
  }

  return v2 | (v1 << 8);
}

void sub_10030B314()
{
  sub_100015A18();
  sub_10000D420();
  sub_100440AF8();
}

void sub_10030B500()
{
  sub_100015A18();
  sub_10000D420();
  sub_1004413BC();
}

void sub_10030B628()
{
  sub_100015A18();
  sub_10000D420();
  sub_10044193C();
}

void sub_10030B92C()
{
  sub_100015A18();
  sub_10000D420();
  sub_100442294();
}

uint64_t sub_10030B96C()
{
  sub_100015A18();
  sub_10000D420();
  return sub_100440624() & 1;
}

void sub_10030BA24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  __chkstk_darwin(v2, v4);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v44 - v14;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16, v18);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *&v1[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v24 = v25;
  (*(v20 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v19);
  v46 = v25;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v24, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v26 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v27 = *&v1[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v29 = Strong;
  if ([Strong receptionistState] != 2 || !objc_msgSend(*&v1[OBJC_IVAR___CSDAnsweringMachineController_featureFlags], "receptionistEnabled") || (sub_10030BF40() & 1) == 0)
  {

    return;
  }

  v45 = *&v1[v26];
  aBlock[0] = 0;
  v44[1] = sub_10031699C(&qword_1006A52B8, &type metadata accessor for DispatchWorkItemFlags);

  dispatch thunk of OptionSet.init(rawValue:)();
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  *(v30 + 24) = v29;
  aBlock[4] = sub_1003169E4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006264C8;
  _Block_copy(aBlock);
  v31 = type metadata accessor for DispatchWorkItem();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v1;
  v24 = v29;
  v35 = DispatchWorkItem.init(flags:block:)();

  v16 = &unk_1006BA000;
  v36 = *(v45 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);
  *(v45 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = v35;

  static DispatchTime.now()();
  if (qword_1006A0A20 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  *v6 = qword_1006A4C48;
  v38 = v47;
  v37 = v48;
  (*(v47 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v48);
  + infix(_:_:)();
  (*(v38 + 8))(v6, v37);
  v39 = v50;
  v40 = *(v49 + 8);
  v40(v12, v50);
  v41 = *&v1[v26];
  v42 = v16[108];
  if (*(v41 + v42))
  {
    v43 = *(v41 + v42);

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v40(v15, v39);
  }

  else
  {
    __break(1u);
  }
}

id sub_10030BF40()
{
  if ([v0 callStatus] == 1)
  {
    return [v0 isScreening];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030BF84(uint64_t a1, void *a2)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "callerPauseInfoTimeoutBlock", v7, 2u);
  }

  v8 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v9 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v10 = *(v9 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);
  *(v9 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = 0;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "waitingForCallerInfo -> ringing", v13, 2u);
  }

  [a2 setShouldSuppressRingtone:0];
  [a2 setReceptionistState:3];
  sub_1000399FC();
  v14 = *(a1 + v8) + 64;

  return swift_unknownObjectWeakAssign();
}

void sub_10030C284()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v65 = v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v70 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007FDC();
  v68 = v15 - v14;
  sub_10000D414();
  v69 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v69);
  v67 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  v66 = v22 - v21;
  sub_10000D414();
  v23 = type metadata accessor for DispatchPredicate();
  v24 = sub_100007FEC(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24, v29);
  sub_10000E598();
  v30 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v1 = v30;
  v31 = sub_100006B90(v26);
  v32(v31);
  v30;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v1, v23);
  if (v33)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v34 = type metadata accessor for Logger();
  sub_1000075F0(v34, qword_1006BA5F8);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v71[0] = sub_100007630();
    *v37 = 136315394;
    v38 = String.init<A>(reflecting:)();
    v40 = sub_10002741C(v38, v39, v71);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v41 = sub_1002910C8(v4);
    v43 = sub_10002741C(v41, v42, v71);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Answering machine didStart=%s error=%s", v37, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  if (v6)
  {
    sub_100007C2C();
    v44 = swift_allocObject();
    *(v44 + 16) = v2;
    *(v44 + 24) = v65;
    v71[4] = sub_100316F34;
    v71[5] = v44;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v71[2] = v45;
    v71[3] = &unk_1006268B0;
    v46 = _Block_copy(v71);
    v47 = v2;
    v48 = v65;
    static DispatchQoS.unspecified.getter();
    sub_10000841C();
    sub_10031699C(v49, v50);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10000528C();
    sub_10001000C(v51, v52, v53);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);
    (*(v70 + 8))(v68, v8);
    (*(v67 + 8))(v66, v69);
  }

  else
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (sub_10000689C(v55))
    {
      v56 = sub_100006DC4();
      *v56 = 0;
      sub_10000C1F8();
      _os_log_impl(v57, v58, v59, v60, v56, 2u);
      sub_100005F40();
    }

    v61 = [objc_opt_self() sharedInstance];
    [v61 disconnectAllCalls];

    v62 = type metadata accessor for AnsweringMachineState();
    v63 = sub_1000076B4(v62);
    sub_10003A308();
    v64 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
    *&v2[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = v63;
  }

  sub_100005EDC();
}

void sub_10030C860(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), char *a4)
{
  v491 = a3;
  v7 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v7);
  v9 = *(v8 + 64);
  sub_100006688();
  __chkstk_darwin(v10, v11);
  sub_100317544();
  v480 = v12;
  v13 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v13);
  v15 = *(v14 + 64);
  sub_100006688();
  __chkstk_darwin(v16, v17);
  sub_100317544();
  v466 = v18;
  sub_10000D414();
  v19 = type metadata accessor for Date();
  v20 = sub_100007FEC(v19);
  v461 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20, v24);
  sub_10000F4E8();
  v459 = v25;
  sub_100006838();
  __chkstk_darwin(v26, v27);
  sub_10000C1C4();
  v460 = v28;
  sub_10000D414();
  v29 = type metadata accessor for URL.DirectoryHint();
  v30 = sub_100007FEC(v29);
  v478 = v31;
  v479 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30, v34);
  sub_100007FDC();
  v477 = v36 - v35;
  sub_10000D414();
  v37 = type metadata accessor for URL();
  v38 = sub_100007FEC(v37);
  v493 = v39;
  v494 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38, v42);
  sub_10000F4E8();
  v468 = v43;
  sub_100006838();
  __chkstk_darwin(v44, v45);
  sub_100005F58();
  v463 = v46;
  sub_100006838();
  __chkstk_darwin(v47, v48);
  sub_100005F58();
  v462 = v49;
  sub_100006838();
  __chkstk_darwin(v50, v51);
  sub_100005F58();
  v481 = v52;
  sub_100006838();
  __chkstk_darwin(v53, v54);
  sub_100005F58();
  v470 = v55;
  sub_100006838();
  __chkstk_darwin(v56, v57);
  sub_100005F58();
  v482 = v58;
  sub_100006838();
  __chkstk_darwin(v59, v60);
  sub_10000C1C4();
  v486 = v61;
  sub_10000D414();
  v62 = type metadata accessor for Utterance();
  v488 = sub_100007FEC(v62);
  v489 = v63;
  v65 = *(v64 + 64);
  __chkstk_darwin(v488, v66);
  sub_100007FDC();
  v487 = v68 - v67;
  v485 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v69 = sub_100008070(v485);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69, v72);
  sub_10000F4E8();
  v471 = v73;
  sub_100006838();
  __chkstk_darwin(v74, v75);
  sub_100005F58();
  v467 = v76;
  sub_100006838();
  __chkstk_darwin(v77, v78);
  sub_100005F58();
  v465 = v79;
  sub_100006838();
  __chkstk_darwin(v80, v81);
  sub_100005F58();
  v469 = v82;
  sub_100006838();
  __chkstk_darwin(v83, v84);
  sub_100005F58();
  v473 = v85;
  sub_100006838();
  __chkstk_darwin(v86, v87);
  sub_100005F58();
  v475 = v88;
  sub_100006838();
  __chkstk_darwin(v89, v90);
  sub_100005F58();
  v474 = v91;
  sub_100006838();
  __chkstk_darwin(v92, v93);
  sub_100005F58();
  v476 = v94;
  sub_100006838();
  __chkstk_darwin(v95, v96);
  sub_100005F58();
  v484 = v97;
  sub_100006838();
  __chkstk_darwin(v98, v99);
  sub_100005F58();
  v483 = v100;
  sub_100006838();
  __chkstk_darwin(v101, v102);
  v104 = &v456 - v103;
  v105 = type metadata accessor for DispatchPredicate();
  v106 = sub_100007FEC(v105);
  v108 = v107;
  v110 = *(v109 + 64);
  __chkstk_darwin(v106, v111);
  sub_100007FDC();
  v114 = v113 - v112;
  v490 = inited;
  v115 = *(inited + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *(v113 - v112) = v115;
  (*(v108 + 104))(v113 - v112, enum case for DispatchPredicate.onQueue(_:), v105);
  v116 = v115;
  LOBYTE(v115) = _dispatchPreconditionTest(_:)();
  (*(v108 + 8))(v114, v105);
  if ((v115 & 1) == 0)
  {
    goto LABEL_121;
  }

  v464 = v19;
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    v117 = type metadata accessor for Logger();
    sub_1000075F0(v117, qword_1006BA5F8);
    sub_10003A220(v491, v104, &unk_1006A52C0, &unk_10057D930);
    swift_errorRetain();
    v492 = inited;
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v498[0] = sub_100007630();
      *v120 = 67109634;
      *(v120 + 4) = a2 & 1;
      *(v120 + 8) = 2080;
      v121 = sub_10029142C(v104);
      v123 = v122;
      sub_100009A04(v104, &unk_1006A52C0, &unk_10057D930);
      v124 = sub_10002741C(v121, v123, v498);

      *(v120 + 10) = v124;
      *(v120 + 18) = 2080;
      v125 = sub_1002910C8(a4);
      a2 = v126;
      v127 = sub_10002741C(v125, v126, v498);

      *(v120 + 20) = v127;
      _os_log_impl(&_mh_execute_header, v118, v119, "Answering machine didStop=%{BOOL}d messageRecordingURL=%s error=%s", v120, 0x1Cu);
      swift_arrayDestroy();
      sub_100005F40();
      sub_10000E668();

      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {

      sub_100009A04(v104, &unk_1006A52C0, &unk_10057D930);
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    swift_errorRetain();
    v128 = _convertErrorToNSError(_:)();
    v129 = [v128 code];

    if (v129 == 32028)
    {
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.default.getter();
      if (sub_10000689C(v131))
      {
        v132 = sub_100006DC4();
        sub_100017D04(v132);
        sub_10000A154();
        _os_log_impl(v133, v134, v135, v136, v137, 2u);
        sub_100008AE8();
      }

      return;
    }

LABEL_12:
    v138 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
    a4 = v490;
    v139 = *&v490[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v159 = type metadata accessor for AnsweringMachineState();
      v160 = sub_1000076B4(v159);
      sub_10003A308();
      v161 = *&a4[v138];
      *&a4[v138] = v160;
      goto LABEL_90;
    }

    v141 = Strong;
    if (*(v139 + 72))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v142 = *&a4[v138];
    v143 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions;
    v144 = *(v142 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    v472 = v138;
    if (v144)
    {
      a2 = v144;
      v145 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_10000F96C())
      {
        v146 = sub_100005274();
        v147 = v141;
        v148 = swift_slowAlloc();
        *v146 = 138412290;
        *(v146 + 4) = a2;
        *v148 = v144;
        v149 = a2;
        sub_10000C1F8();
        _os_log_impl(v150, v151, v152, v153, v146, 0xCu);
        sub_100009A04(v148, &unk_1006A2630, &qword_10057CB40);
        v141 = v147;
        v138 = v472;
        sub_100005F40();
        sub_100006868();
      }

      v154 = *&a4[v138];

      v155 = v487;
      sub_10030E9A4(a2, v487);
      sub_100008D34();
      sub_100461A8C();
      v156 = *(*(v154 + 80) + 16);
      sub_100461B90(v156);
      v157 = *(v154 + 80);
      *(v157 + 16) = v156 + 1;
      (*(v489 + 32))(v157 + ((*(v489 + 80) + 32) & ~*(v489 + 80)) + *(v489 + 72) * v156, v155, v488);
      *(v154 + 80) = v157;
      swift_endAccess();

      v142 = *&a4[v138];
      v143 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions;
      v158 = *(v142 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    }

    else
    {
      v158 = 0;
    }

    *(v142 + v143) = 0;

    v485 = swift_allocBox();
    v458 = v162;
    sub_100007928();
    v163 = v494;
    sub_10000AF74(v164, v165, v166, v494);
    if (![*&a4[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] receptionistEnabled])
    {
      goto LABEL_29;
    }

    v167 = v141;
    if (![v167 receptionistState])
    {
      break;
    }

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.default.getter();
    if (sub_10000689C(v169))
    {
      v170 = sub_100006DC4();
      sub_100017D04(v170);
      sub_10000A154();
      _os_log_impl(v171, v172, v173, v174, v175, 2u);
      sub_100008AE8();
    }

    v176 = v473;
    sub_10003A220(v491, v473, &unk_1006A52C0, &unk_10057D930);
    sub_10000A7C0(v176);
    v457 = v141;
    if (v228)
    {
      sub_100009A04(v176, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v483 = v167;
      v278 = v493;
      (*(v493 + 32))(v481, v176, v163);
      v279 = v482;
      static URL.temporaryDirectory.getter();
      URL.lastPathComponent.getter();
      v280 = v484;
      URL.appendingPathComponent(_:)();

      v491 = *(v278 + 8);
      v491(v279, v163);
      sub_100007C20();
      sub_10000AF74(v281, v282, v283, v163);
      v284 = v458;
      sub_1000432B0(v280, v458, &unk_1006A52C0, &unk_10057D930);

      v285 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100317538();

      if (sub_10000F96C())
      {
        v287 = sub_100005274();
        v486 = sub_100005E84();
        v498[0] = v486;
        *v287 = 136315138;
        sub_100005298();
        sub_10003A220(v458, v280, &unk_1006A52C0, &unk_10057D930);
        v288 = sub_10029142C(v280);
        v290 = v289;
        v163 = v494;
        sub_100009A04(v280, &unk_1006A52C0, &unk_10057D930);
        v291 = v288;
        v138 = v472;
        v292 = sub_10002741C(v291, v290, v498);

        *(v287 + 4) = v292;
        sub_10000A154();
        _os_log_impl(v293, v294, v295, v296, v297, 0xCu);
        sub_100009B7C(v486);
        v284 = v458;
        sub_100005F40();
        sub_100008AE8();
      }

      v298 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v299);
      a2 = v300;
      swift_beginAccess();
      v301 = v469;
      sub_10003A220(v284, v469, &unk_1006A52C0, &unk_10057D930);
      sub_10000A7C0(v301);
      v303 = v491;
      if (v228)
      {
        goto LABEL_124;
      }

      v304 = v301;
      URL._bridgeToObjectiveC()(v302);
      v305 = sub_10000C614();
      v303(v305, v163);
      v498[0] = 0;
      v306 = [v298 copyItemAtURL:a2 toURL:v301 error:v498];

      if (v306)
      {
        v307 = v498[0];
        v303(v481, v163);
        a4 = v490;
        v167 = v483;
      }

      else
      {
        v308 = v498[0];
        a2 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v309 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_100317538();

        if (sub_10000F96C())
        {
          v310 = sub_100005274();
          v311 = sub_100005E84();
          v498[0] = v311;
          *v310 = 136315138;
          v497[0] = a2;
          swift_errorRetain();
          sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
          v312 = String.init<A>(reflecting:)();
          sub_10002741C(v312, v313, v498);
          sub_10000B934();
          v163 = v494;

          *(v310 + 4) = v138;
          v138 = v472;
          sub_10000C1F8();
          _os_log_impl(v314, v315, v316, v317, v310, 0xCu);
          sub_100009B7C(v311);
          sub_100005F40();
          sub_100006868();

          v491(v481, v163);
        }

        else
        {

          v303(v481, v163);
        }

        v167 = v483;
        v318 = v484;
        sub_100007928();
        sub_10000AF74(v319, v320, v321, v163);
        sub_1000432B0(v318, v284, &unk_1006A52C0, &unk_10057D930);
        a4 = v490;
      }
    }

    v322 = [v167 receptionistState];

    if (v322 == 3 && [v167 status] != 6)
    {
      v367 = [v167 isScreening];

      if (v367)
      {

        v483 = v167;
        v368 = *&a4[v138];
        sub_100005298();
        v369 = *(v368 + 80);
        v370 = *(v369 + 16);
        v371 = _swiftEmptyArrayStorage;
        if (v370)
        {
          v497[0] = _swiftEmptyArrayStorage;

          sub_10039A2E0(0, v370, 0);
          v371 = v497[0];
          v491 = *(v489 + 16);
          v372 = *(v489 + 80);
          v482 = v369;
          v373 = v369 + ((v372 + 32) & ~v372);
          v486 = *(v489 + 72);
          v489 += 16;
          v374 = (v489 - 8);
          do
          {
            v375 = v487;
            v376 = v488;
            v377 = sub_10000BB1C();
            (v491)(v377);
            Utterance.text.getter();
            sub_100317550();
            (*v374)(v375, v376);
            v497[0] = v371;
            v379 = v371[2];
            v378 = v371[3];
            if (v379 >= v378 >> 1)
            {
              sub_10039A2E0(v378 > 1, v379 + 1, 1);
              v371 = v497[0];
            }

            v371[2] = v379 + 1;
            v380 = &v371[2 * v379];
            v380[4] = v163;
            v380[5] = v138;
            v373 += v486;
            --v370;
          }

          while (v370);

          a4 = v490;
          v138 = v472;
        }

        v497[0] = v371;
        sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910);
        BidirectionalCollection<>.joined(separator:)();

        v381 = sub_10000BA34();
        v383 = sub_10030ED74(v381, v382);
        v385 = v384;

        v386 = objc_allocWithZone(TUReceptionistSession);
        sub_100005EC4();

        v387 = sub_10031689C(0, 0, v383, v385);

        v388 = Logger.logObject.getter();
        static os_log_type_t.default.getter();

        v389 = sub_1000066DC();
        v490 = v383;
        v491 = v387;
        if (v389)
        {
          v390 = sub_100005274();
          v497[0] = sub_100005E84();
          *v390 = 136315138;
          v391 = sub_10001E478(v383, v385);
          v393 = sub_10002741C(v391, v392, v497);

          *(v390 + 4) = v393;
          sub_10000FBFC();
          _os_log_impl(v394, v395, v396, v397, v390, 0xCu);
          sub_1000444B0();
          v138 = v472;
          sub_100005F40();
          v387 = v491;
          sub_100005F40();
        }

        v398 = v464;
        v399 = v466;
        v400 = v483;
        [v483 setReceptionistSession:v387];
        if (v385)
        {

          String._bridgeToObjectiveC()();
          sub_100005EC4();
        }

        else
        {
          v388 = 0;
        }

        [v400 updatePredictedNameFromReceptionist:v388];

        v401 = *&a4[v138];
        sub_100005298();
        v402 = *(v401 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);
        *(v401 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances) = *(v401 + 80);

        v403 = *&a4[v138];
        v404 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
        sub_100005298();
        sub_10003A220(v403 + v404, v399, &qword_1006A3C70, &unk_10057EA80);
        if (sub_100015468(v399, 1, v398) == 1)
        {
          sub_100009A04(v399, &qword_1006A3C70, &unk_10057EA80);
        }

        else
        {
          v406 = v460;
          v405 = v461;
          (*(v461 + 32))(v460, v399, v398);

          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v408 = v407;
          v409 = *(v405 + 8);
          v410 = sub_10000BB1C();
          v409(v410);
          Date.timeIntervalSinceReferenceDate.getter();
          v412 = v411;
          (v409)(v406, v398);
          v413 = v403 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
          *v413 = v408 - v412;
          *(v413 + 8) = 0;
        }

        v415 = v493;
        v414 = v494;
        v416 = v465;
        v417 = v458;
        sub_100005298();
        sub_10003A220(v417, v416, &unk_1006A52C0, &unk_10057D930);
        sub_10000A7C0(v416);
        if (v228)
        {
          sub_100009A04(v416, &unk_1006A52C0, &unk_10057D930);
          v422 = v472;
        }

        else
        {
          v418 = *(v415 + 32);
          v419 = v462;
          v420 = sub_1000276B4();
          v421(v420);
          v422 = v472;
          v423 = *&a4[v472];
          v424 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs;

          sub_100461A74();
          v425 = *(*(v423 + v424) + 16);
          sub_100461B78(v425);
          v426 = *(v423 + v424);
          sub_100017CE8(v425 + 1);
          v414 = v494;
          sub_10000F33C();
          v427();
          *(v423 + v424) = v426;
          (*(v415 + 8))(v419, v414);
        }

        v428 = v483;
        sub_10030A5E0();
        v429 = *&a4[v422];
        swift_beginAccess();
        v430 = *(v429 + 80);
        *(v429 + 80) = _swiftEmptyArrayStorage;

        if (v385)
        {

          v431 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_1000066DC())
          {
            v432 = sub_100005274();
            v495[0] = sub_100005E84();
            *v432 = 136315138;
            v433 = v490;
            *(v432 + 4) = sub_10002741C(v490, v385, v495);
            sub_10000FBFC();
            _os_log_impl(v434, v435, v436, v437, v432, 0xCu);
            sub_1000444B0();
            sub_100005F40();
            sub_100005F40();
          }

          else
          {

            v433 = v490;
          }

          v438 = v491;
          v450 = &a4[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
          sub_100022CBC();
          v451 = *sub_100009B14(v450, *(v450 + 3));
          v452 = v483;
          sub_10043D55C(v433, v385, 0xD00000000000001CLL, 0x800000010056A5D0, v457, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);

          return;
        }

        v439 = Logger.logObject.getter();
        v440 = static os_log_type_t.default.getter();
        if (sub_10000BB44(v440))
        {
          *sub_100006DC4() = 0;
          sub_1000079AC();
          _os_log_impl(v441, v442, v443, v444, v445, 2u);
          v428 = v483;
          sub_100005F40();
        }

        v446 = v484;
        sub_100007928();
        sub_10000AF74(v447, v448, v449, v414);
        sub_1003087A4();

        sub_100009A04(v446, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_90;
      }
    }

    else
    {
    }

    v323 = [v167 receptionistState];

    if (v323 == 7)
    {
      v324 = [v167 isScreening];

      if (v324)
      {
        v325 = v458;
        sub_100022CBC();
        v326 = v325;
        v327 = v467;
        sub_10003A220(v326, v467, &unk_1006A52C0, &unk_10057D930);
        sub_10000A7C0(v327);
        if (v228)
        {
          goto LABEL_71;
        }

        v138 = v493;
        v328 = *(v493 + 32);
        v492 = 0;
        v329 = sub_1000276B4();
        v330(v329);
        v331 = *&a4[v472];
        v332 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs;

        sub_100461A74();
        sub_100049FE0();
        v333 = *(v331 + v332);
        sub_100017CE8(a2 + 1);
        sub_10000F33C();
        v334();
        v335 = sub_10003EA7C();
        goto LABEL_72;
      }
    }

    else
    {
    }

    v337 = v458;
    sub_100022CBC();
    v338 = v337;
    v327 = v471;
    sub_10003A220(v338, v471, &unk_1006A52C0, &unk_10057D930);
    sub_10000A7C0(v327);
    if (v228)
    {
LABEL_71:
      sub_100009A04(v327, &unk_1006A52C0, &unk_10057D930);
      goto LABEL_73;
    }

    v138 = v493;
    v339 = *(v493 + 32);
    v340 = sub_1000276B4();
    v341(v340);
    v342 = *&a4[v472];
    v343 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs;

    sub_100461A74();
    sub_100049FE0();
    v344 = *(v342 + v343);
    sub_100017CE8(a2 + 1);
    sub_10000F33C();
    v345();
    v335 = sub_10003EA7C();
LABEL_72:
    v336(v335, v163);

LABEL_73:
    sub_10026D814(&unk_1006A5318, &qword_100580060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D6A0;
    v346 = *&a4[v138];
    *(inited + 32) = *(v346 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);
    *(inited + 40) = *(v346 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);

    v347 = _swiftEmptyArrayStorage;
    for (i = 32; ; i += 8)
    {
      if (i == 48)
      {
        swift_setDeallocating();
        sub_1002F5CB4();
        type metadata accessor for TaskPriority();
        sub_100007928();
        sub_10000AF74(v360, v361, v362, v363);
        v364 = swift_allocObject();
        v364[2] = 0;
        v364[3] = 0;
        v364[4] = a4;
        v364[5] = v347;
        v365 = v457;
        v364[6] = v485;
        v364[7] = v365;

        v366 = a4;
        sub_1002762F0();

        goto LABEL_90;
      }

      v104 = *(inited + i);
      a2 = *(v104 + 2);
      v349 = v347[2];
      v350 = v349 + a2;
      if (__OFADD__(v349, a2))
      {
        break;
      }

      v351 = *(inited + i);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v350 > v347[3] >> 1)
      {
        if (v349 <= v350)
        {
          v353 = v349 + a2;
        }

        else
        {
          v353 = v349;
        }

        sub_1004701CC(isUniquelyReferenced_nonNull_native, v353, 1, v347);
        v347 = v354;
      }

      if (*(v104 + 2))
      {
        if ((v347[3] >> 1) - v347[2] < a2)
        {
          goto LABEL_119;
        }

        v355 = (*(v493 + 80) + 32) & ~*(v493 + 80);
        v356 = *(v493 + 72);
        swift_arrayInitWithCopy();

        if (a2)
        {
          v357 = v347[2];
          v358 = __OFADD__(v357, a2);
          v359 = v357 + a2;
          if (v358)
          {
            goto LABEL_120;
          }

          v347[2] = v359;
        }
      }

      else
      {

        if (a2)
        {
          goto LABEL_118;
        }
      }
    }

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
    sub_100008018();
    swift_once();
  }

LABEL_29:
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.default.getter();
  if (sub_10000689C(v178))
  {
    v179 = sub_100006DC4();
    sub_100017D04(v179);
    sub_10000A154();
    _os_log_impl(v180, v181, v182, v183, v184, 2u);
    sub_100008AE8();
  }

  v185 = v491;
  v186 = v483;
  sub_10003A220(v491, v483, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v186);
  if (v228)
  {
    sub_10000528C();
    sub_100009A04(v187, v188, v189);
    v190 = v475;
    sub_10003A220(v185, v475, &unk_1006A52C0, &unk_10057D930);
    v191 = a4;
    v192 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_1000066DC())
    {
      v193 = swift_slowAlloc();
      v498[0] = sub_100007630();
      *v193 = 136315394;
      v194 = v141;
      v195 = sub_10029142C(v190);
      v196 = v190;
      v198 = v197;
      sub_100009A04(v196, &unk_1006A52C0, &unk_10057D930);
      v199 = sub_10002741C(v195, v198, v498);

      *(v193 + 4) = v199;
      *(v193 + 12) = 2080;
      v200 = *&a4[v138];
      v201 = swift_unknownObjectWeakLoadStrong();
      sub_100291454(v201);
      sub_100317550();

      v202 = sub_10002741C(v198, v138, v498);
      v138 = v472;

      *(v193 + 14) = v202;
      v141 = v194;
      sub_10000FBFC();
      _os_log_impl(v203, v204, v205, v206, v193, 0x16u);
      swift_arrayDestroy();
      sub_10000E668();
      sub_100008AE8();
    }

    else
    {

      sub_100009A04(v190, &unk_1006A52C0, &unk_10057D930);
    }

    if ([v141 screeningAnnouncementHasFinished])
    {
      v229 = 2;
    }

    else
    {
      v229 = 5;
    }

    [v141 setLiveVoicemailStatus:v229];
    v230 = type metadata accessor for AnsweringMachineState();
    v231 = sub_1000076B4(v230);
    sub_10003A308();

    v232 = *&a4[v138];
    *&a4[v138] = v231;
    goto LABEL_51;
  }

  v457 = v141;
  v207 = v493;
  v208 = *(v493 + 32);
  v209 = sub_10000BA34();
  v488 = v211;
  v489 = v210;
  v211(v209);
  v212 = v482;
  static URL.temporaryDirectory.getter();
  v498[0] = URL.lastPathComponent.getter();
  v498[1] = v213;
  v215 = v477;
  v214 = v478;
  v216 = v163;
  v217 = v479;
  (*(v478 + 104))(v477, enum case for URL.DirectoryHint.inferFromPath(_:), v479);
  sub_10001E364();
  v218 = v484;
  URL.appending<A>(component:directoryHint:)();
  v219 = v217;
  v220 = v216;
  (*(v214 + 8))(v215, v219);

  v221 = v207 + 8;
  v222 = *(v207 + 8);
  v222(v212, v216);
  sub_100007C20();
  sub_10000AF74(v223, v224, v225, v216);
  v226 = v458;
  sub_1000432B0(v218, v458, &unk_1006A52C0, &unk_10057D930);
  v227 = v476;
  sub_10003A220(v226, v476, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v227);
  v491 = v222;
  if (v228)
  {
    sub_100009A04(v227, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v233 = v470;
    v488(v470, v227, v220);
    v234 = *&v490[v472];
    v235 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs;

    sub_100461A74();
    sub_100049FE0();
    v236 = *(v234 + v235);
    *(v236 + 16) = v207 + 1;
    (*(v493 + 16))(v236 + ((*(v493 + 80) + 32) & ~*(v493 + 80)) + *(v493 + 72) * v207, v233, v220);
    *(v234 + v235) = v236;
    v222(v233, v220);
  }

  v237 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100317538();

  if (sub_10000F96C())
  {
    v238 = sub_100005274();
    v239 = sub_100005E84();
    v498[0] = v239;
    *v238 = 136315138;
    sub_100005298();
    v489 = v221;
    v240 = v226;
    v241 = v484;
    sub_10003A220(v240, v484, &unk_1006A52C0, &unk_10057D930);
    v242 = sub_10029142C(v241);
    v244 = v243;
    v245 = v241;
    v226 = v458;
    v220 = v494;
    sub_100009A04(v245, &unk_1006A52C0, &unk_10057D930);
    v246 = sub_10002741C(v242, v244, v498);

    *(v238 + 4) = v246;
    sub_10000A154();
    _os_log_impl(v247, v248, v249, v250, v251, 0xCu);
    sub_100009B7C(v239);
    sub_100006868();
    sub_100008AE8();
  }

  v138 = v472;
  v252 = v474;
  v253 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v254);
  v256 = v255;
  sub_100005298();
  sub_10003A220(v226, v252, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v252);
  if (!v228)
  {
    v258 = v252;
    URL._bridgeToObjectiveC()(v257);
    v259 = sub_10000C614();
    v260 = v491;
    v491(v259, v220);
    v496[0] = 0;
    v261 = [v253 copyItemAtURL:v256 toURL:v252 error:v496];

    if (v261)
    {
      v262 = v496[0];
      v260(v486, v220);
      a4 = v490;
      goto LABEL_73;
    }

    v263 = v496[0];
    v264 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v265 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100317538();

    if (sub_10000F96C())
    {
      v266 = sub_100005274();
      v267 = sub_100005E84();
      v496[0] = v267;
      *v266 = 136315138;
      v495[6] = v264;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v268 = String.init<A>(reflecting:)();
      sub_10002741C(v268, v269, v496);
      sub_10000B934();
      v220 = v494;

      *(v266 + 4) = v138;
      v138 = v472;
      sub_10000C1F8();
      _os_log_impl(v270, v271, v272, v273, v266, 0xCu);
      sub_100009B7C(v267);
      sub_100005F40();
      sub_100006868();
    }

    v274 = v457;
    v275 = type metadata accessor for AnsweringMachineState();
    v276 = sub_1000076B4(v275);
    sub_10003A308();

    v260(v486, v220);
    v277 = *&v490[v138];
    *&v490[v138] = v276;
LABEL_51:

LABEL_90:

    return;
  }

  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_10030E9A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10026D814(&qword_1006A52E8, &unk_100580050);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  v48 = type metadata accessor for Caption();
  v10 = sub_100007FEC(v48);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = *(v2 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *(v27 - v26) = v29;
  (*(v22 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v19);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v28, v19);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_100316A04(a1);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = result;
  v33 = sub_10000B6F4(result);
  if (!v33)
  {
    goto LABEL_12;
  }

  v34 = v33;
  result = sub_10039A340(0, v33 & ~(v33 >> 63), 0);
  if (v34 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v46 = a2;
  v35 = 0;
  v47 = v32 & 0xC000000000000001;
  v36 = v32;
  do
  {
    if (v47)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v32 + 8 * v35 + 32);
    }

    v38 = v37;
    [v37 confidence];
    [v38 range];
    CaptionRange.init(_:)();
    type metadata accessor for CaptionRange();
    sub_100007C20();
    sub_10000AF74(v39, v40, v41, v42);
    Caption.init(confidence:range:)();

    v44 = _swiftEmptyArrayStorage[2];
    v43 = _swiftEmptyArrayStorage[3];
    if (v44 >= v43 >> 1)
    {
      sub_10039A340(v43 > 1, v44 + 1, 1);
    }

    ++v35;
    _swiftEmptyArrayStorage[2] = v44 + 1;
    (*(v12 + 32))(_swiftEmptyArrayStorage + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v44, v18, v48);
    v32 = v36;
  }

  while (v34 != v35);
LABEL_12:

  result = sub_100316A74(a1);
  if (v45)
  {
    [a1 utteranceNumber];
    [a1 utteranceStartTimestamp];
    [a1 utteranceDuration];
    return Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10030ED74(uint64_t a1, uint64_t a2)
{
  sub_100006AF0(0, &qword_1006A5328, NLTagger_ptr);
  sub_10026D814(&qword_1006A5330, &qword_100580080);
  sub_100007934();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 32) = NLTagSchemeNameType;
  v5 = NLTagSchemeNameType;
  v6 = sub_1003141D4();
  sub_100316D0C(a1, a2, v6);
  sub_10026D814(&qword_1006A5338, &qword_100580088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = NLTagPersonalName;
  v8 = NLTagPersonalName;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();

  v9 = 0;
  if (_swiftEmptyArrayStorage[2] == 1)
  {
    v9 = _swiftEmptyArrayStorage[4];
    v10 = _swiftEmptyArrayStorage[5];
  }

  return v9;
}

uint64_t sub_10030EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v7[22] = *(v15 + 64);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10030F0CC, 0, 0);
}

uint64_t sub_10030F0CC()
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[26] = sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v4))
  {
    v5 = sub_100006DC4();
    sub_100008944(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending audio files to be concatenated", v0, 2u);
    sub_10000E668();
  }

  v6 = v1[10];

  v7 = *(v6 + OBJC_IVAR___CSDAnsweringMachineController_audioFileManager);
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_10030F208;
  v9 = v1[24];
  v10 = v1[11];

  return sub_1002DEAC0(v9, v10);
}

uint64_t sub_10030F208()
{
  v2 = *v1;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_100007BC8();
  *v8 = v7;
  *(v9 + 224) = v0;

  if (v0)
  {
    v10 = sub_10030F624;
  }

  else
  {
    v10 = sub_10030F314;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10030F314()
{
  v29 = v0[25];
  v2 = v0[22];
  v1 = v0[23];
  v22 = v1;
  v3 = v0[20];
  v4 = v0[21];
  v24 = v0[19];
  v31 = v0[18];
  v32 = v0[17];
  v30 = v0[15];
  v27 = v0[16];
  v28 = v0[14];
  v5 = v0[12];
  v23 = v0[13];
  v6 = v0[10];
  v7 = *(v4 + 32);
  v7(v29, v0[24], v3);
  v25 = v3;
  v26 = *&v6[OBJC_IVAR___CSDAnsweringMachineController_queue];
  v8 = v1;
  v9 = v3;
  (*(v4 + 16))(v8, v29, v3);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v7(v12 + v10, v22, v9);
  *(v12 + v11) = v23;
  v0[6] = sub_100316DB4;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100626838;
  v13 = _Block_copy(v0 + 2);
  v14 = v6;

  v15 = v23;
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_10000841C();
  sub_10031699C(v16, v17);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v18, &unk_1006A2960, &unk_10057D6E0);
  sub_10000BA34();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v30 + 8))(v27, v28);
  (*(v31 + 8))(v24, v32);
  (*(v4 + 8))(v29, v25);
  v19 = v0[7];

  sub_100015448();

  sub_100009EF4();

  return v20();
}

uint64_t sub_10030F624()
{
  v19 = v0;
  v1 = v0[28];
  v2 = v0[26];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v18 = v7;
    *v6 = 136446210;
    v0[8] = v5;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to export concatenated audio file %{public}s", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100006868();
    sub_10000E668();
  }

  v11 = v0[28];
  v12 = v0[10];
  v13 = type metadata accessor for AnsweringMachineState();
  v14 = sub_1000076B4(v13);
  sub_10003A308();

  v15 = *(v12 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  *(v12 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v14;

  sub_100015448();

  sub_100009EF4();

  return v16();
}

uint64_t sub_10030F7CC(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v176 = a3;
  v178 = a1;
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v165 = v151 - v8;
  v9 = sub_10026D814(&qword_1006A5340, &qword_100580090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v164 = v151 - v12;
  v162 = type metadata accessor for MessageQuality();
  v161 = *(v162 - 8);
  v13 = *(v161 + 64);
  __chkstk_darwin(v162, v14);
  v163 = v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10026D814(&unk_1006A5348, &qword_100580098);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v160 = v151 - v19;
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v25 = v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v157 = v151 - v27;
  v171 = type metadata accessor for UUID();
  v173 = *(v171 - 8);
  v28 = *(v173 + 64);
  v30 = __chkstk_darwin(v171, v29);
  v170 = v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v169 = v151 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v174 = v151 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v172 = v151 - v40;
  __chkstk_darwin(v39, v41);
  v177 = v151 - v42;
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = __chkstk_darwin(v43, v46);
  v159 = v151 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v48;
  __chkstk_darwin(v47, v49);
  v51 = v151 - v50;
  v52 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v53 = *(*(v52 - 8) + 64);
  v55 = __chkstk_darwin(v52 - 8, v54);
  v168 = v151 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v57);
  v59 = v151 - v58;
  v60 = swift_projectBox();
  swift_beginAccess();
  sub_10003A220(v60, v59, &unk_1006A52C0, &unk_10057D930);
  v61 = v43;
  LODWORD(v60) = sub_100015468(v59, 1, v43);
  sub_100009A04(v59, &unk_1006A52C0, &unk_10057D930);
  if (v60 == 1)
  {
    v62 = *&v178[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
    if (*(v62 + 8))
    {
      v63 = 0.0;
    }

    else
    {
      v63 = *v62;
    }
  }

  else
  {
    sub_1003106F8();
    v63 = v64;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v166 = sub_10000AF9C(v65, qword_1006BA5F8);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v66, v67);
  v175 = v51;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v179[0] = v70;
    *v69 = 136315138;
    v180 = v63;
    v71 = String.init<A>(reflecting:)();
    v73 = v44;
    v74 = sub_10002741C(v71, v72, v179);

    *(v69 + 4) = v74;
    v44 = v73;
    v61 = v43;
    _os_log_impl(&_mh_execute_header, v66, v67, "receptionist creatingMessage duration: %s", v69, 0xCu);
    sub_100009B7C(v70);
    v51 = v175;
  }

  v167 = *(v44 + 16);
  v167(v51, v176, v61);
  v156 = sub_100310AD0(a4);
  if (v156 & 1) != 0 || (v75 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState, (*(*&v178[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio)) || sub_100310BE4(v51))
  {
    sub_100310FB0(a4);
    if (v76)
    {
      v77 = v51;
      v78 = COERCE_DOUBLE(a4);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = v44;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v179[0] = v83;
        *v82 = 136315138;
        v180 = v78;
        sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
        v84 = *&v78;
        v85 = String.init<A>(reflecting:)();
        v87 = sub_10002741C(v85, v86, v179);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v79, v80, "Call has an unsupported provider. Call: %s", v82, 0xCu);
        sub_100009B7C(v83);

        (*(v81 + 8))(v77, v61);
      }

      else
      {

        (*(v44 + 8))(v77, v61);
      }

      v90 = type metadata accessor for AnsweringMachineState();
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      v93 = swift_allocObject();
      sub_10003A308();
      v94 = *&v178[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
      *&v178[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = v93;
    }

    else
    {
      [a4 setLiveVoicemailStatus:1];
      v88 = [a4 handle];
      if (v88)
      {
        v155 = sub_1004450C8(v88);
        v154 = v89;
      }

      else
      {
        v155 = 0;
        v154 = 0;
      }

      v95 = v171;
      v166 = v44;
      v96 = [a4 conversationID];
      if (v96)
      {
        v97 = v96;
        v98 = v172;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v99 = *(v173 + 32);
        v100 = v157;
        v99(v157, v98, v95);
        sub_10000AF74(v100, 0, 1, v95);
        v99(v177, v100, v95);
      }

      else
      {
        v101 = v157;
        sub_10000AF74(v157, 1, 1, v95);
        UUID.init()();
        if (sub_100015468(v101, 1, v95) != 1)
        {
          sub_100009A04(v101, &unk_1006A3DD0, &unk_10057C9D0);
        }
      }

      v157 = a4;
      v102 = [a4 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      if (sub_100015468(v25, 1, v95) == 1)
      {
        v103 = v173;
        (*(v173 + 16))(v174, v177, v95);
        v104 = &off_1006A5000;
        if (sub_100015468(v25, 1, v95) != 1)
        {
          sub_100009A04(v25, &unk_1006A3DD0, &unk_10057C9D0);
        }
      }

      else
      {
        v103 = v173;
        (*(v173 + 32))(v174, v25, v95);
        v104 = &off_1006A5000;
      }

      v153 = type metadata accessor for Message();
      UUID.init()();
      v105 = *(v103 + 16);
      v105(v169, v174, v95);
      v105(v170, v177, v95);
      v106 = v159;
      v152 = v61;
      v167(v159, v175, v61);
      sub_10000AF74(v168, 1, 1, v61);
      v151[2] = MessageStoreProvider.identifierString.getter();
      v151[1] = v107;
      v108 = v104[66];
      v109 = v178;
      v110 = *&v108[v178];
      v111 = *(v110 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle + 8);
      v151[0] = *(v110 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
      v112 = *(v110 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);
      swift_beginAccess();
      v113 = *(v110 + 80);
      v180 = v112;

      sub_100413E38(v114);
      v115 = v160;
      Transcript.init(utterances:)();
      v116 = type metadata accessor for Transcript();
      sub_10000AF74(v115, 0, 1, v116);
      v117 = (*&v108[v109] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);
      v119 = *v117;
      v118 = v117[1];
      (*(v161 + 104))(v163, enum case for MessageQuality.raw(_:), v162);
      v120 = type metadata accessor for Summary();
      sub_10000AF74(v164, 1, 1, v120);

      LOBYTE(v180) = 1;
      v121 = Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)();
      v122 = type metadata accessor for TaskPriority();
      sub_10000AF74(v165, 1, 1, v122);
      v123 = v152;
      v167(v106, v176, v152);
      v124 = v166;
      v125 = (*(v166 + 80) + 56) & ~*(v166 + 80);
      v126 = swift_allocObject();
      *(v126 + 2) = 0;
      *(v126 + 3) = 0;
      v127 = v157;
      *(v126 + 4) = v109;
      *(v126 + 5) = v127;
      *(v126 + 6) = v121;
      (*(v124 + 32))(&v126[v125], v106, v123);
      v128 = v109;
      v129 = v127;
      v130 = v121;
      sub_1002762F0();

      v131 = *(v173 + 8);
      v132 = v171;
      v131(v174, v171);
      v131(v177, v132);
      (*(v124 + 8))(v175, v123);
      v133 = type metadata accessor for AnsweringMachineState();
      v134 = *(v133 + 48);
      v135 = *(v133 + 52);
      v136 = swift_allocObject();
      sub_10003A308();
      v137 = *&v108[v109];
      *&v108[v109] = v136;
    }
  }

  else
  {
    v138 = a4;
    v139 = v44;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "Answering machine stopped, we got no audio and it wasn't an RTT call not saving voicemail", v142, 2u);
    }

    v143 = v178;
    if (*(*&v178[v75] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio))
    {
      v144 = 3;
    }

    else
    {
      v144 = 4;
    }

    [v138 setLiveVoicemailStatus:v144];
    (*(v139 + 8))(v51, v61);
    v145 = type metadata accessor for AnsweringMachineState();
    v146 = *(v145 + 48);
    v147 = *(v145 + 52);
    v148 = swift_allocObject();
    sub_10003A308();
    v149 = *&v143[v75];
    *&v143[v75] = v148;
  }
}

void sub_1003106F8()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  sub_10000B8BC();
  v7 = type metadata accessor for Date();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v8, v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v30 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    sub_100008018();
    swift_once();
    goto LABEL_4;
  }

  v20 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v32 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
  v33 = *(v32 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration);
  v34 = *(v32 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration + 8);
  v35 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
  sub_100005298();
  sub_10003A220(v32 + v35, v0, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v0, 1, v7) != 1)
  {
    v52 = *(v10 + 32);
    sub_10000528C();
    v53();
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v54 = *(v10 + 8);
    v54(v16, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v54(v19, v7);
    return;
  }

  sub_100009A04(v0, &qword_1006A3C70, &unk_10057EA80);
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v36 = type metadata accessor for Logger();
  sub_1000075F0(v36, qword_1006BA5F8);
  v37 = v0;
  v38 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v39 = sub_100005274();
    v40 = sub_100005E84();
    v55 = v40;
    *v39 = 136315138;
    v41 = *&v1[v20];
    Strong = swift_unknownObjectWeakLoadStrong();
    v43 = sub_100291454(Strong);
    v45 = v44;

    v46 = sub_10002741C(v43, v45, &v55);

    *(v39 + 4) = v46;
    sub_10000A154();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    sub_100009B7C(v40);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_100310AD0(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_10000E598();
  v11 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v2 = v11;
  v12 = sub_100006B90(v7);
  v13(v12);
  v14 = v11;
  _dispatchPreconditionTest(_:)();
  v15 = sub_100033364();
  result = v16(v15);
  if (v11)
  {
    if ([a1 isRTT])
    {
      return 1;
    }

    else
    {
      return [a1 isTTY];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100310BE4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_24;
  }

  URL._bridgeToObjectiveC()(v11);
  a1 = v12;
  if (qword_1006A0A00 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v13 = sub_1000FCB74(a1, qword_1006A4C28);

    if (!v13)
    {
      return 0;
    }

    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = a1;
      v32 = v18;
      *v17 = 136315138;

      sub_10026D814(&qword_1006A5358, &qword_1005800B8);
      v19 = String.init<A>(reflecting:)();
      v21 = sub_10002741C(v19, v20, &v32);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "powerLevels=%s", v17, 0xCu);
      sub_100009B7C(v18);
    }

    v22 = sub_10000B6F4(a1);
    v23 = 0;
    while (1)
    {
      v24 = v22 != v23;
      if (v22 == v23)
      {
LABEL_19:

        return v24;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v25 = *(a1 + 8 * v23 + 32);
      }

      v26 = v25;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      Float.init(truncating:)();
      v28 = v27;
      if (qword_1006A09F8 != -1)
      {
        swift_once();
      }

      v29 = *&dword_1006A4C20;

      ++v23;
      if (v29 < v28)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }
}

uint64_t sub_100310FB0(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_10000E598();
  v11 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v2 = v11;
  v12 = sub_100006B90(v7);
  v13(v12);
  v14 = v11;
  _dispatchPreconditionTest(_:)();
  v15 = sub_100033364();
  result = v16(v15);
  if (v11)
  {
    v18 = [a1 provider];
    v19 = [v18 isTelephonyProvider];

    if (v19)
    {
      return 1;
    }

    else
    {
      v20 = [a1 provider];
      v21 = [v20 isFaceTimeProvider];

      if (v21)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100311114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for URL();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100311210, 0, 0);
}

uint64_t sub_100311210()
{
  v1 = *(v0 + 40);
  sub_100311F40(*(v0 + 48));
  if (*(v1 + OBJC_IVAR___CSDAnsweringMachineController_messageStoreController))
  {
    v2 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_messageStoreController);
  }

  else
  {
    v2 = type metadata accessor for MessageStoreController();
    static MessageStoreController.shared.getter();
    sub_10000691C();
  }

  *(v0 + 104) = v2;
  v3 = async function pointer to MessageStoreController.saveMessage(_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_100311318;
  v5 = *(v0 + 56);

  return MessageStoreController.saveMessage(_:)(v5);
}

uint64_t sub_100311318()
{
  v2 = *v1;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 112);
  *v4 = *v1;
  *(v3 + 120) = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v8 = sub_1003119CC;
  }

  else
  {
    v8 = sub_100311454;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100311454()
{
  v74 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v1 = v0[15];
  v68 = type metadata accessor for Logger();
  sub_1000075F0(v68, qword_1006BA5F8);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v4 = sub_1000066DC();
  v5 = v0[15];
  v6 = v0[13];
  if (v4)
  {
    v7 = sub_100005274();
    v8 = sub_100005E84();
    v73[0] = v8;
    *v7 = 136315138;
    v0[4] = v5;
    type metadata accessor for Message();
    v9 = v5;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, v73);

    *(v7 + 4) = v12;
    sub_10000FBFC();
    _os_log_impl(v13, v14, v15, v16, v7, 0xCu);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
    v17 = v0[13];
  }

  v18 = *(v0[5] + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[8];
  v22 = *(v18 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);
  v72 = *(v18 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  sub_100413E0C(v23);
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v64 = *(v20 + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057D690;
  v26 = *(v20 + 16);
  (v26)(v25 + v24, v21, v19);
  sub_100413E0C(v25);
  v27 = *(v72 + 16);
  if (v27)
  {
    v28 = v72 + v24;
    v70 = (v0[10] + 8);
    v71 = objc_opt_self();
    v29 = v64;
    v67 = v26;
    do
    {
      v30 = v0[8];
      (v26)(v0[12], v28, v0[9]);
      v31 = [v71 defaultManager];
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      v0[2] = 0;
      v35 = [v31 removeItemAtURL:v33 error:v0 + 2];

      v36 = v0[2];
      if (v35)
      {
        v37 = v0[12];
        v38 = v0[9];
        v39 = *v70;
        v40 = v36;
        v39(v37, v38);
      }

      else
      {
        v41 = v36;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006A0B28 != -1)
        {
          sub_100008018();
          swift_once();
        }

        v42 = v0[11];
        v43 = v0[12];
        v44 = v0[9];
        sub_10000AF9C(v68, qword_1006BA5F8);
        sub_10000528C();
        v26();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v0[11];
        v69 = v0[12];
        v49 = v0[9];
        if (v47)
        {
          v66 = v46;
          v50 = sub_100005274();
          v73[0] = sub_100005E84();
          *v50 = 136315138;
          sub_100011374();
          sub_10031699C(&qword_1006A3BD0, v51);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          v65 = *v70;
          v55 = sub_10000BA34();
          v56(v55);
          v57 = sub_10002741C(v52, v54, v73);
          v29 = v64;

          *(v50 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v45, v66, "Failed to remove audio file at URL %s", v50, 0xCu);
          sub_1000444B0();
          sub_100005F40();
          sub_100005F40();

          v65(v69, v49);
        }

        else
        {

          v58 = *v70;
          v59 = sub_10000BA34();
          v58(v59);
          (v58)(v69, v49);
        }

        v26 = v67;
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v61 = v0[11];
  v60 = v0[12];

  sub_100009EF4();

  return v62();
}

uint64_t sub_1003119CC()
{
  v71 = v0;
  v2 = v0[13];

  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v3 = v0[16];
  v64 = type metadata accessor for Logger();
  sub_1000075F0(v64, qword_1006BA5F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v5 = sub_1000066DC();
  v6 = v0[16];
  if (v5)
  {
    v7 = sub_100005274();
    v8 = sub_100005E84();
    v70[0] = v8;
    *v7 = 136315138;
    v0[3] = v6;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v9 = String.init<A>(reflecting:)();
    sub_10002741C(v9, v10, v70);
    sub_10000B934();

    *(v7 + 4) = v1;
    sub_10000FBFC();
    _os_log_impl(v11, v12, v13, v14, v7, 0xCu);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
  }

  v15 = *(v0[5] + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  v19 = *(v15 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);
  v69 = *(v15 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  sub_100413E0C(v20);
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v21 = *(v17 + 72);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10057D690;
  v68 = *(v17 + 16);
  (v68)(v23 + v22, v18, v16);
  sub_100413E0C(v23);
  v24 = *(v69 + 16);
  if (v24)
  {
    v25 = v69 + v22;
    v66 = (v0[10] + 8);
    v67 = objc_opt_self();
    v63 = v21;
    do
    {
      v26 = v0[8];
      (v68)(v0[12], v25, v0[9]);
      v27 = [v67 defaultManager];
      URL._bridgeToObjectiveC()(v28);
      v30 = v29;
      v0[2] = 0;
      v31 = [v27 removeItemAtURL:v29 error:v0 + 2];

      v32 = v0[2];
      if (v31)
      {
        v33 = v0[12];
        v34 = v0[9];
        v35 = *v66;
        v36 = v32;
        v35(v33, v34);
      }

      else
      {
        v37 = v32;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006A0B28 != -1)
        {
          sub_100008018();
          swift_once();
        }

        v38 = v0[11];
        v39 = v0[12];
        v40 = v0[9];
        sub_10000AF9C(v64, qword_1006BA5F8);
        sub_10000528C();
        v68();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        v43 = os_log_type_enabled(v41, v42);
        v44 = v0[11];
        v65 = v0[12];
        v45 = v0[9];
        if (v43)
        {
          log = v41;
          v46 = sub_100005274();
          v61 = sub_100005E84();
          v70[0] = v61;
          *v46 = 136315138;
          sub_100011374();
          sub_10031699C(&qword_1006A3BD0, v47);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          v60 = *v66;
          v51 = sub_10000BA34();
          v52(v51);
          v53 = sub_10002741C(v48, v50, v70);

          *(v46 + 4) = v53;
          _os_log_impl(&_mh_execute_header, log, v42, "Failed to remove audio file at URL %s", v46, 0xCu);
          sub_100009B7C(v61);
          sub_100005F40();
          sub_100005F40();

          v60(v65, v45);
        }

        else
        {

          v54 = *v66;
          v55 = sub_10000BA34();
          v54(v55);
          (v54)(v65, v45);
        }

        v21 = v63;
      }

      v25 += v21;
      --v24;
    }

    while (v24);
  }

  v57 = v0[11];
  v56 = v0[12];

  sub_100009EF4();

  return v58();
}

void sub_100311F40(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_callHistoryManager);
  v4 = [a1 callHistoryIdentifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [v3 updateMessageStatusFor:v4 with:isa];

  v6 = [a1 callHistoryIdentifier];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v3 updateAutoAnsweredReasonFor:v6 with:1];

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
  }
}

void sub_100312234()
{
  sub_100005EF4();
  v261 = v2;
  v4 = v3;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  sub_100317544();
  v250 = v10;
  sub_10000D414();
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v256 = (v19 - v18);
  sub_10000D414();
  v20 = type metadata accessor for DispatchTime();
  v21 = sub_100007FEC(v20);
  v258 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21, v25);
  sub_10000F4E8();
  v252 = v26;
  sub_100006838();
  __chkstk_darwin(v27, v28);
  sub_100005F58();
  v247 = v29;
  sub_100006838();
  __chkstk_darwin(v30, v31);
  sub_100005F58();
  v257 = v32;
  sub_100006838();
  __chkstk_darwin(v33, v34);
  sub_10000C1C4();
  v251 = v35;
  sub_10000D414();
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v37 = sub_100008070(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  sub_100007FDC();
  v249 = v42 - v41;
  v43 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v43);
  v45 = *(v44 + 64);
  sub_100006688();
  __chkstk_darwin(v46, v47);
  sub_100317544();
  v259 = v48;
  sub_10000D414();
  v49 = type metadata accessor for DispatchPredicate();
  v50 = sub_100007FEC(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50, v55);
  sub_10000E598();
  v264 = v0;
  v56 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v1 = v56;
  v57 = sub_100006B90(v52);
  v58(v57);
  v255 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  (*(v52 + 8))(v1, v49);
  if (v56)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v59 = type metadata accessor for Logger();
  v60 = sub_10000AF9C(v59, qword_1006BA5F8);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v253 = v14;
  v254 = v11;
  v248 = v36;
  if (sub_10000BB44(v62))
  {
    v63 = sub_100005274();
    v265 = sub_100005E84();
    *v63 = 136315138;
    v64 = v4;
    v65 = String.init<A>(reflecting:)();
    v67 = sub_10002741C(v65, v66, &v265);

    *(v63 + 4) = v67;
    v68 = v20;
    sub_10000FBFC();
    _os_log_impl(v69, v70, v71, v72, v63, 0xCu);
    sub_1000444B0();
    sub_100005F40();
    sub_100008AE8();
  }

  else
  {

    v64 = v4;
    v68 = v20;
  }

  if ((v64 & 1) == 0)
  {
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v62 = sub_100005274();
      v75 = v60;
      v76 = sub_100005E84();
      v265 = v76;
      *v62 = 136315138;
      v77 = sub_1002910C8(v261);
      v79 = sub_10002741C(v77, v78, &v265);

      *(v62 + 4) = v79;
      sub_1000079AC();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
      sub_100009B7C(v76);
      v60 = v75;
      sub_100005F40();
      sub_100006868();
    }
  }

  v85 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  sub_10001864C();
  *(v86 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v88 = Strong;
    [Strong setScreeningAnnouncementHasFinished:1];
  }

  v89 = *&v264[v85];

  static Date.now.getter();
  type metadata accessor for Date();
  sub_100007C20();
  sub_10000AF74(v90, v91, v92, v93);
  v94 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
  sub_100008D34();
  sub_1000432B0(v259, v89 + v94, &qword_1006A3C70, &unk_10057EA80);
  swift_endAccess();

  if ([*&v264[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] receptionistEnabled] && ((sub_10001864C(), (v95 = swift_unknownObjectWeakLoadStrong()) == 0) || (v96 = v95, v97 = objc_msgSend(v95, "receptionistState"), v96, v97)))
  {
    v98 = v264;
    v99 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_10000F96C())
    {
      v262 = v60;
      v100 = v98;
      v101 = sub_100005274();
      v102 = sub_100005E84();
      v265 = v102;
      *v101 = 136315138;
      sub_10001864C();
      v103 = swift_unknownObjectWeakLoadStrong();
      if (v103)
      {
        v104 = v103;
        [v103 receptionistState];

        type metadata accessor for TUCallReceptionistState(0);
        v105 = String.init<A>(reflecting:)();
        v107 = v106;
      }

      else
      {
        v107 = 0xE300000000000000;
        v105 = 7104878;
      }

      v114 = sub_10002741C(v105, v107, &v265);

      *(v101 + 4) = v114;
      sub_10000C1F8();
      _os_log_impl(v115, v116, v117, v118, v101, 0xCu);
      sub_100009B7C(v102);
      sub_100005F40();
      sub_100005F40();

      v98 = v100;
      v60 = v262;
    }

    else
    {
    }

    sub_10001864C();
    v120 = *(v119 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage + 8);
    if (v120)
    {
      v121 = *(v119 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);
      v122 = *(v119 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage + 8);

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();
      if (sub_10000BB44(v124))
      {
        v125 = sub_100006DC4();
        *v125 = 0;
        sub_10000FBFC();
        _os_log_impl(v126, v127, v128, v129, v125, 2u);
        sub_100005F40();
      }

      v130 = OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
      sub_100005298();
      sub_100009AB0(&v98[v130], &v265);
      v131 = sub_100009B14(&v265, v268);
      sub_10001864C();
      v132 = swift_unknownObjectWeakLoadStrong();
      v133 = *v131;
      sub_10043D55C(v121, v120, 0xD00000000000001ELL, 0x800000010056A5B0, v132, v134, v135, v136, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);

      sub_100009B7C(&v265);
    }

    else
    {
      v137 = swift_unknownObjectWeakLoadStrong();
      if (v137)
      {
        v62 = v137;
        switch([v62 receptionistState])
        {
          case 1u:
            if ([v62 isKnownCaller])
            {

              v184 = Logger.logObject.getter();
              v185 = static os_log_type_t.default.getter();
              if (sub_10000A648(v185))
              {
                v186 = sub_100006DC4();
                sub_100008944(v186);
                sub_10001628C();
                _os_log_impl(v187, v188, v189, v190, v191, 2u);
                sub_10000E668();
              }

              v192 = objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine());
              v193 = sub_10000C614();
              v194 = sub_10042EB08(v193);
              v195 = *&v98[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine];
              *&v98[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine] = v194;

              break;
            }

            v211 = Logger.logObject.getter();
            v212 = static os_log_type_t.default.getter();
            if (sub_10000689C(v212))
            {
              v213 = sub_100006DC4();
              sub_100017D04(v213);
              sub_10000A154();
              _os_log_impl(v214, v215, v216, v217, v218, 2u);
              sub_100008AE8();
            }

            [v62 setReceptionistState:2];
            v219 = *&v264[v85];
            v265 = 0;
            sub_10000841C();
            sub_10031699C(v220, v221);

            dispatch thunk of OptionSet.init(rawValue:)();
            sub_100007C2C();
            v222 = swift_allocObject();
            *(v222 + 16) = v98;
            *(v222 + 24) = v62;
            v269 = sub_100316B5C;
            v270 = v222;
            v265 = _NSConcreteStackBlock;
            v266 = 1107296256;
            v267 = sub_100004CEC;
            v268 = &unk_1006267C0;
            _Block_copy(&v265);
            sub_10000691C();
            v223 = type metadata accessor for DispatchWorkItem();
            sub_1000076B4(v223);
            v224 = v98;
            v225 = v62;
            v226 = DispatchWorkItem.init(flags:block:)();

            v227 = *(v219 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock);
            *(v219 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = v226;

            static DispatchTime.now()();
            if (qword_1006A0A28 != -1)
            {
              swift_once();
            }

            *v256 = qword_1006A4C50;
            (*(v253 + 104))(v256, enum case for DispatchTimeInterval.seconds(_:), v254);
            sub_10000BB1C();
            + infix(_:_:)();
            (*(v253 + 8))(v256, v254);
            v110 = *(v258 + 8);
            v228 = sub_10001E3B8();
            v110(v228);
            sub_10001864C();
            if (*(v229 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock))
            {
              v230 = *(v229 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock);

              sub_10031757C();

              v113 = v251;
              goto LABEL_20;
            }

            goto LABEL_69;
          case 3u:
            v263 = v60;
            v196 = v68;

            v197 = *&v264[v85];
            v265 = 0;
            sub_10000841C();
            sub_10031699C(v198, v199);

            dispatch thunk of OptionSet.init(rawValue:)();
            sub_100007C2C();
            v200 = swift_allocObject();
            *(v200 + 16) = v98;
            *(v200 + 24) = v62;
            v269 = sub_100316B54;
            v270 = v200;
            v265 = _NSConcreteStackBlock;
            v266 = 1107296256;
            v267 = sub_100004CEC;
            v268 = &unk_100626770;
            _Block_copy(&v265);
            sub_10000691C();
            v201 = type metadata accessor for DispatchWorkItem();
            sub_1000076B4(v201);
            v202 = v98;
            v260 = v62;
            v203 = DispatchWorkItem.init(flags:block:)();

            v204 = *(v197 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock);
            *(v197 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = v203;

            static DispatchTime.now()();
            if (qword_1006A0A30 != -1)
            {
              swift_once();
            }

            *v256 = qword_1006A4C58;
            (*(v253 + 104))(v256, enum case for DispatchTimeInterval.seconds(_:), v254);
            + infix(_:_:)();
            (*(v253 + 8))(v256, v254);
            v205 = *(v258 + 8);
            v206 = sub_10000BB1C();
            v205(v206);
            sub_10001864C();
            if (*(v207 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock))
            {
              v208 = *(v207 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock);

              sub_10031757C();

              (v205)(v247, v196);
              v209 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
              if (*&v202[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine])
              {
                v210 = v260;
              }

              else
              {
                v242 = Logger.logObject.getter();
                v243 = static os_log_type_t.default.getter();
                if (sub_10000A648(v243))
                {
                  v244 = sub_100006DC4();
                  sub_100017D04(v244);
                  _os_log_impl(&_mh_execute_header, v242, v263, "waiting for user response: playing ringback", v205, 2u);
                  sub_100008AE8();
                }

                objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine());
                v245 = sub_10042EB08(v260);
                v210 = *&v202[v209];
                *&v202[v209] = v245;
              }

              goto LABEL_65;
            }

            __break(1u);
LABEL_69:
            __break(1u);
            return;
          case 4u:

            v171 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
            if (*&v98[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine])
            {
            }

            else
            {
              v231 = Logger.logObject.getter();
              v232 = static os_log_type_t.default.getter();
              if (sub_10000A648(v232))
              {
                v233 = sub_100006DC4();
                sub_100008944(v233);
                sub_10001628C();
                _os_log_impl(v234, v235, v236, v237, v238, 2u);
                sub_10000E668();
              }

              v239 = objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine());
              v240 = sub_10000C614();
              v241 = sub_10042EB08(v240);
              v210 = *&v98[v171];
              *&v98[v171] = v241;
LABEL_65:
            }

            break;
          case 5u:
          case 6u:
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();
            if (sub_10000A648(v139))
            {
              v140 = sub_100006DC4();
              sub_100008944(v140);
              sub_10001628C();
              _os_log_impl(v141, v142, v143, v144, v145, 2u);
              sub_10000E668();
            }

            [v62 setReceptionistState:7];
            sub_10030A5E0();
            v146 = Logger.logObject.getter();
            v147 = static os_log_type_t.default.getter();
            if (sub_10000A648(v147))
            {
              v148 = sub_100006DC4();
              sub_100008944(v148);
              sub_10001628C();
              _os_log_impl(v149, v150, v151, v152, v153, 2u);
              sub_10000E668();
            }

            URL.init(fileURLWithPath:)();
            type metadata accessor for URL();
            sub_100007C20();
            sub_10000AF74(v154, v155, v156, v157);
            sub_1003087A4();

            sub_100009A04(v250, &unk_1006A52C0, &unk_10057D930);
            break;
          case 7u:

            v158 = Logger.logObject.getter();
            v159 = static os_log_type_t.default.getter();
            if (sub_10000689C(v159))
            {
              v160 = sub_100006DC4();
              sub_100017D04(v160);
              sub_10000A154();
              _os_log_impl(v161, v162, v163, v164, v165, 2u);
              sub_100008AE8();
            }

            static DispatchTime.now()();
            *v256 = sub_100308434();
            v166 = sub_100006B90(v253);
            v167(v166);
            sub_100016ECC();
            v110 = (v253 + 8);
            (*(v253 + 8))(v256, v254);
            v168 = sub_100051608();
            ((v253 + 8))(v168);
            sub_10001864C();
            v170 = *(v169 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock);

            sub_10031757C();

            goto LABEL_19;
          default:
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v172, v173))
            {
              v174 = sub_100005274();
              v175 = sub_100005E84();
              v265 = v175;
              *v174 = 136315138;
              [v62 receptionistState];
              type metadata accessor for TUCallReceptionistState(0);
              v176 = String.init<A>(reflecting:)();
              v178 = sub_10002741C(v176, v177, &v265);

              *(v174 + 4) = v178;
              sub_10001628C();
              _os_log_impl(v179, v180, v181, v182, v183, 0xCu);
              sub_100009B7C(v175);
              sub_100008AE8();
              sub_10000E668();
            }

            else
            {
            }

            break;
        }
      }
    }
  }

  else
  {
    static DispatchTime.now()();
    *v256 = sub_100308434();
    v108 = sub_100006B90(v253);
    v109(v108);
    sub_100016ECC();
    v110 = (v253 + 8);
    (*(v253 + 8))(v256, v254);
    v111 = sub_100051608();
    ((v253 + 8))(v111);
    v112 = *(*&v264[v85] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock);

    sub_10031757C();
LABEL_19:

    v113 = v62;
LABEL_20:
    (v110)(v113, v68);
  }

  sub_100005EDC();
}

uint64_t sub_1003133F8(uint64_t a1, void *a2)
{
  v85 = a2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v83 = v80 - v6;
  v91 = type metadata accessor for Utterance();
  v7 = *(v91 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v91, v9);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v80 - v14;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000AF9C(v16, qword_1006BA5F8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "callerInfoTimeoutBlock", v20, 2u);
  }

  v21 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v22 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v23 = *(v22 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock);
  *(v22 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = 0;

  v86 = v21;
  v24 = *(a1 + v21);
  swift_beginAccess();
  v25 = *(v24 + 80);
  v26 = *(v25 + 16);
  v27 = _swiftEmptyArrayStorage;
  v87 = v17;
  v84 = v7;
  if (v26)
  {
    v81 = v12;
    v82 = a1;
    v93 = _swiftEmptyArrayStorage;

    sub_10039A2E0(0, v26, 0);
    v27 = v93;
    v28 = (v7 + 16);
    v29 = *(v7 + 16);
    v30 = *(v7 + 80);
    v80[1] = v25;
    v31 = v25 + ((v30 + 32) & ~v30);
    v88 = v28[7];
    v89 = v29;
    v90 = v28;
    v32 = (v28 - 1);
    do
    {
      v33 = v91;
      v89(v15, v31, v91);
      v34 = Utterance.text.getter();
      v36 = v35;
      (*v32)(v15, v33);
      v93 = v27;
      v38 = v27[2];
      v37 = v27[3];
      if (v38 >= v37 >> 1)
      {
        sub_10039A2E0(v37 > 1, v38 + 1, 1);
        v27 = v93;
      }

      v27[2] = v38 + 1;
      v39 = &v27[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
      v31 += v88;
      --v26;
    }

    while (v26);

    v12 = v81;
    a1 = v82;
  }

  v93 = v27;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  if (v40 || v42 != 0xE000000000000000)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {

    v43 = 1;
  }

  v44 = v84;
  v45 = *(*(a1 + v86) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
  v90 = v45;
  if (!v45)
  {
    goto LABEL_19;
  }

  sub_10030E9A4(v45, v12);
  v46 = Utterance.text.getter();
  v48 = v47;
  (*(v44 + 8))(v12, v91);
  if (!v46 && v48 == 0xE000000000000000)
  {

LABEL_19:
    v49 = 1;
    goto LABEL_21;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_21:
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v93 = v53;
    *v52 = 136315138;
    v92 = v43 & 1;
    v54 = String.init<A>(reflecting:)();
    v56 = sub_10002741C(v54, v55, &v93);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "areUtterancesEmpty: %s", v52, 0xCu);
    sub_100009B7C(v53);
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v93 = v60;
    *v59 = 136315138;
    v92 = v49 & 1;
    v61 = String.init<A>(reflecting:)();
    v63 = sub_10002741C(v61, v62, &v93);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "isLastCaptionsNilOrEmpty: %s", v59, 0xCu);
    sub_100009B7C(v60);
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  if (v43 & v49)
  {
    v67 = v85;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "waitingForCallerInfo -> voicemail", v68, 2u);
    }

    [v67 setReceptionistState:6];
    v69 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
    if (v69)
    {
      v70 = v69;
      sub_10042F01C();
    }

    sub_10030A5E0();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "creating answering machine becase caller info timed out with empty utterance", v73, 2u);
    }

    v74 = type metadata accessor for URL();
    v75 = v83;
    sub_10000AF74(v83, 1, 1, v74);
    sub_1003087A4();

    return sub_100009A04(v75, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v77 = v85;
    if (v66)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "waitingForCallerInfo -> ringing", v78, 2u);
    }

    [v77 setShouldSuppressRingtone:0];
    [v77 setReceptionistState:3];
    sub_1000399FC();

    v79 = *(a1 + v86);
    return swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_100313C60(uint64_t a1, void *a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v25 - v7;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA5F8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ringingTimeoutBlock", v12, 2u);
  }

  v13 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v14 = *(v13 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock);
  *(v13 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = 0;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "ringing -> voicemail", v17, 2u);
  }

  [a2 setReceptionistState:6];
  v18 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
  if (v18)
  {
    v19 = v18;
    sub_10042F01C();
  }

  sub_10030A5E0();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "creating answering machine because ringing timed out", v22, 2u);
  }

  v23 = type metadata accessor for URL();
  sub_10000AF74(v8, 1, 1, v23);
  sub_1003087A4();
  return sub_100009A04(v8, &unk_1006A52C0, &unk_10057D930);
}

uint64_t sub_100313FA0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *(v10 - v9) = v12;
  (*(v5 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v11, v2);
  if (v12)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_1000075F0(v14, qword_1006BA5F8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_10000689C(v16))
  {
    v17 = sub_100006DC4();
    sub_100017D04(v17);
    sub_10000A154();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    sub_100008AE8();
  }

  v23 = [objc_opt_self() sharedInstance];
  [v23 disconnectAllCalls];

  v24 = type metadata accessor for AnsweringMachineState();
  v25 = sub_1000076B4(v24);
  sub_10003A308();
  v26 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  *(v1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v25;
}

id sub_1003141D4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithTagSchemes:isa];

  return v2;
}

uint64_t sub_10031424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v6 = __chkstk_darwin(a1, a2);
    if (sub_10045E360())
    {
      String.subscript.getter();
      v7 = static String._fromSubstring(_:)();
      v9 = v8;

      sub_100461A44();
      v10 = *(*a5 + 16);
      sub_100461B48(v10);

      v11 = *a5;
      *(v11 + 16) = v10 + 1;
      v12 = v11 + 16 * v10;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    else
    {
    }
  }

  return 1;
}

void sub_100314378()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_10000E598();
  v28 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v28);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v4;
  *(v16 + 32) = v2;
  *(v16 + 40) = v0;
  v29[4] = sub_100316B44;
  v29[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v29[2] = v17;
  v29[3] = &unk_100626720;
  v18 = _Block_copy(v29);
  v19 = v6;
  swift_errorRetain();
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v21, v22);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v23, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v24 = sub_100015A08();
  v25(v24);
  v26 = sub_100007C7C();
  v27(v26);

  sub_100005EDC();
}

uint64_t sub_1003145A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);
  v8 = a1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v11 = 136315650;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v12 = v8;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, v25);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    v19 = sub_1002910C8(a3);
    v21 = sub_10002741C(v19, v20, v25);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Captions didEnableCaptions: client: %s enabled: %s error: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v22 = *(a4 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();
  v23 = *(v22 + 80);
  *(v22 + 80) = _swiftEmptyArrayStorage;
}

void sub_100314874()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_10000E598();
  v28 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v28);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v3;
  *(v15 + 32) = v1;
  v29[4] = sub_100316B34;
  v29[5] = v15;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v29[2] = v16;
  v29[3] = &unk_1006266D0;
  v17 = _Block_copy(v29);
  v18 = v5;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v19, v20);
  v21 = sub_10001E3B8();
  sub_10026D814(v21, v22);
  sub_100008434();
  sub_100317520(v23);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v24 = sub_100015A08();
  v25(v24);
  v26 = sub_100007C7C();
  v27(v26);

  sub_100005EDC();
}

void sub_100314A90(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5F8);
  v6 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315650;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v20);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = sub_1002910C8(a3);
    v18 = sub_10002741C(v16, v17, &v20);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Captions didDisableCaptions: client: %s enabled: %s error: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100314DE4()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_100007FEC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E598();
  v31 = type metadata accessor for DispatchQoS();
  v15 = sub_100007FEC(v31);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_10000E4F4();
  v30 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v7;
  v32[4] = v5;
  v32[5] = v21;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v32[2] = v22;
  v32[3] = v3;
  v23 = _Block_copy(v32);
  v24 = v9;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v25, v26);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v27, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  v28 = sub_100022DFC();
  v29(v28);
  (*(v17 + 8))(v1, v31);

  sub_100005EDC();
}

void sub_100315010(void *a1, uint64_t a2, const char *a3)
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5F8);
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v17 = sub_100007630();
    *v8 = 136315394;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for AVCCaptionsReason(0);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v7, a3, v8, 0x16u);
    swift_arrayDestroy();
    sub_100006868();
    sub_100005F40();
  }

  else
  {
  }
}

void sub_100315280()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_10000E598();
  v25 = type metadata accessor for DispatchQoS();
  v8 = sub_100007FEC(v25);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007C2C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v0;
  v26[4] = sub_100316AD8;
  v26[5] = v12;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v13;
  v26[3] = &unk_1006265E0;
  v14 = _Block_copy(v26);
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v16, v17);
  v18 = sub_10001E3B8();
  sub_10026D814(v18, v19);
  sub_100008434();
  sub_100317520(v20);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  v21 = sub_100015A08();
  v22(v21);
  v23 = sub_100007C7C();
  v24(v23);

  sub_100005EDC();
}

uint64_t sub_100315488(char a1, uint64_t a2)
{
  v4 = sub_10022AD98();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  *(v5 + 56) = &type metadata for Bool;
  *(v5 + 64) = &protocol witness table for Bool;
  *(v5 + 32) = a1;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v7 = *(a2 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  *(v7 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) = a1;
  *(v7 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 1;
  return result;
}

void sub_1003155D4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_10000E598();
  v28 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v28);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v2;
  *(v14 + 32) = v4;
  v29[4] = sub_1003169F4;
  v29[5] = v14;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v29[2] = v15;
  v29[3] = &unk_100626590;
  v16 = _Block_copy(v29);
  v17 = v0;
  v18 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v19, v20);
  v21 = sub_10001E3B8();
  sub_10026D814(v21, v22);
  sub_100008434();
  sub_100317520(v23);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  v24 = sub_100015A08();
  v25(v24);
  v26 = sub_100007C7C();
  v27(v26);

  sub_100005EDC();
}

void sub_1003157E8(char *a1, int a2, void *a3)
{
  v6 = type metadata accessor for Utterance();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  *(*&a1[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 1;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000AF9C(v12, qword_1006BA5F8);
  v14 = a3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v77 = v13;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v76 = v6;
    v79[0] = v19;
    *v18 = 136315394;
    LODWORD(v78) = a2;
    type metadata accessor for AVCCaptionsSource(0);
    v20 = String.init<A>(reflecting:)();
    v22 = sub_10002741C(v20, v21, v79);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v78 = v14;
    sub_100006AF0(0, &qword_1006A52E0, AVCCaptionsResult_ptr);
    v23 = v14;
    v24 = String.init<A>(reflecting:)();
    v26 = sub_10002741C(v24, v25, v79);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Captions updated: source: %s captions: %s", v18, 0x16u);
    swift_arrayDestroy();
    v6 = v76;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "sendCaptionsMessageToClient", v29, 2u);
  }

  v30 = *&a1[v11];
  v31 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock;
  if (*(v30 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock))
  {
    v32 = *(v30 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);

    dispatch thunk of DispatchWorkItem.cancel()();

    v30 = *&a1[v11];
    v31 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock;
    v33 = *(v30 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock);
  }

  *(v30 + v31) = 0;

  if ((*(*&a1[v11] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) & 1) == 0)
  {
    if ([*&a1[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] LVMEverywhere])
    {
      v34 = a1;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v74 = v7;
        v39 = v38;
        v79[0] = v38;
        *v37 = 136315138;
        v76 = v6;
        v40 = v14;
        v78 = *&v34[OBJC_IVAR___CSDAnsweringMachineController_callStateController];
        v41 = v78;
        sub_100006AF0(0, &qword_1006A52D8, off_1006165F0);
        v42 = v41;
        v43 = String.init<A>(reflecting:)();
        v45 = sub_10002741C(v43, v44, v79);

        *(v37 + 4) = v45;
        v14 = v40;
        v6 = v76;
        _os_log_impl(&_mh_execute_header, v35, v36, "self.callStateController %s", v37, 0xCu);
        sub_100009B7C(v39);
        v7 = v74;
      }

      v46 = *&v34[OBJC_IVAR___CSDAnsweringMachineController_callStateController];
      v47 = *&a1[v11];
      Strong = swift_unknownObjectWeakLoadStrong();
      [v46 sendCaptionsMessageToClientForCall:Strong withCaptions:v14];
    }

    v49 = *(*&a1[v11] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    if (v49)
    {
      v50 = v49;
      v51 = [v50 utteranceNumber];
      if (v51 != [v14 utteranceNumber])
      {
        v76 = v6;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "updating transcript with lastCaptions", v54, 2u);
        }

        v55 = *&a1[v11];

        v56 = v75;
        sub_10030E9A4(v14, v75);
        swift_beginAccess();
        sub_100461A8C();
        v57 = v14;
        v58 = *(*(v55 + 80) + 16);
        sub_100461B90(v58);
        v59 = *(v55 + 80);
        *(v59 + 16) = v58 + 1;
        v60 = v59 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v58;
        v14 = v57;
        v61 = v56;
        v6 = v76;
        (*(v7 + 32))(v60, v61, v76);
        *(v55 + 80) = v59;
        swift_endAccess();
      }
    }

    v62 = v6;
    v63 = [v14 utteranceComplete];
    v64 = *&a1[v11];
    if (v63)
    {
      v65 = *&a1[v11];

      v66 = v14;
      v67 = v75;
      sub_10030E9A4(v66, v75);
      swift_beginAccess();
      sub_100461A8C();
      v68 = *(*(v64 + 80) + 16);
      sub_100461B90(v68);
      v69 = *(v64 + 80);
      *(v69 + 16) = v68 + 1;
      (*(v7 + 32))(v69 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v68, v67, v62);
      *(v64 + 80) = v69;
      swift_endAccess();

      v70 = *&a1[v11];
      v71 = *(v70 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
      *(v70 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = 0;

      sub_10030BA24();
    }

    else
    {
      v72 = *(v64 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
      *(v64 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = v14;
      v73 = v14;
    }
  }
}

void sub_100315F8C()
{
  sub_100005EF4();
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_100007FEC(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  sub_10000E598();
  v20 = type metadata accessor for DispatchQoS();
  v5 = sub_100007FEC(v20);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v21[4] = sub_10031616C;
  v21[5] = 0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v21[2] = v9;
  v21[3] = &unk_100626540;
  v10 = _Block_copy(v21);
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v11, v12);
  v13 = sub_10001E3B8();
  sub_10026D814(v13, v14);
  sub_100008434();
  sub_100317520(v15);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  v16 = sub_100015A08();
  v17(v16);
  v18 = sub_100007C7C();
  v19(v18);
  sub_100005EDC();
}

void sub_10031616C()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Captions server did die", v2, 2u);
  }
}

void sub_100316348()
{
  sub_100316450();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100316450()
{
  if (!qword_1006A9D10)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A9D10);
    }
  }
}

void sub_1003164DC()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_10000E598();
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_10000E4F4();
  v16 = type metadata accessor for Utterance();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  v35[1] = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  (*(v19 + 16))(v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v16);
  v23 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  (*(v19 + 32))(v24 + v23, v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v40[4] = sub_10031693C;
  v40[5] = v24;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v40[2] = v25;
  v40[3] = &unk_100626478;
  v26 = _Block_copy(v40);
  v27 = v0;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_10000841C();
  sub_10031699C(v28, v29);
  v30 = sub_10001E3B8();
  sub_10026D814(v30, v31);
  sub_100008434();
  sub_100317520(v32);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  v33 = sub_100022DFC();
  v34(v33);
  (*(v36 + 8))(v1, v37);

  sub_100005EDC();
}

void sub_1003167A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();

  sub_100461A8C();
  v4 = *(*(v3 + 80) + 16);
  sub_100461B90(v4);
  v5 = *(v3 + 80);
  *(v5 + 16) = v4 + 1;
  v6 = type metadata accessor for Utterance();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(v3 + 80) = v5;
  swift_endAccess();

  sub_10030BA24();
}

id sub_10031689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithSummary:v6 predictedName:v7];

  return v8;
}

void sub_10031693C()
{
  v1 = type metadata accessor for Utterance();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1003167A4(v3, v4);
}

uint64_t sub_10031699C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100316A04(void *a1)
{
  v1 = [a1 tokens];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &unk_1006A52F0, AVCCaptionsToken_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100316A74(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100316B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100316C20;
  v9 = sub_10000C408();

  return sub_10030EF30(v9, v10, v11, v12, v13, v14, v6);
}

uint64_t sub_100316C20()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100007BC8();
  *v3 = v2;

  sub_100009EF4();

  return v4();
}

void sub_100316D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setString:v4];
}

uint64_t sub_100316D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_10031424C(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_100316D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100461C38() & 1;
}

uint64_t sub_100316DB4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10030F7CC(v3, v4, v0 + v2, v5);
}

uint64_t sub_100316E44()
{
  v2 = type metadata accessor for URL();
  sub_100007BF0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1003174D4;
  v11 = sub_10000C408();

  return sub_100311114(v11, v12, v13, v14, v15, v16, v17);
}

char *sub_100316F50(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7)
{
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for GreetingsDataSource();
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_messageStoreController] = 0;
  v49[3] = v15;
  v49[4] = &off_1006305D8;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_lockStateObserver] = 0;
  v49[0] = a3;
  v16 = OBJC_IVAR___CSDAnsweringMachineController_audioFileManager;
  if (qword_1006A07C0 != -1)
  {
    swift_once();
  }

  *&a7[v16] = qword_1006BA1D8;
  v17 = OBJC_IVAR___CSDAnsweringMachineController_serverBag;
  v18 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());

  *&a7[v17] = [v18 init];
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine] = 0;
  v19 = &a7[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineCreationBlock];
  *v19 = sub_1003085D8;
  *(v19 + 1) = 0;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver] = a1;
  v42 = a1;
  v20 = [a2 queue];
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_queue] = v20;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5F8);
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "callStateController=%@", v25, 0xCu);
    sub_100009A04(v26, &unk_1006A2630, &qword_10057CB40);
  }

  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callStateController] = v22;
  sub_100009AB0(v49, &a7[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource]);
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = a4;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callHistoryManager] = a5;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] = a6;
  v48.receiver = a7;
  v48.super_class = ObjectType;
  v28 = v22;

  v29 = a5;
  v30 = a6;
  v44 = ObjectType;
  v45 = &off_100626418;
  aBlock[0] = objc_msgSendSuper2(&v48, "init");
  v31 = aBlock[0] + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
  swift_beginAccess();
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  sub_10001BDB8(v31, v32);
  v34 = *(v33 + 32);
  v35 = aBlock[0];
  v34(aBlock, v32, v33);
  swift_endAccess();
  v36 = OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver;
  result = *&v35[OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:67108901];
    v38 = *&v35[v36];
    if (v38)
    {
      swift_unknownObjectRetain();

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100009AB0(v49, v47);
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      sub_10002F0C8(v47, v40 + 24);
      v45 = sub_10002F128;
      v46 = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100028100;
      v44 = &unk_1006269C8;
      v41 = _Block_copy(aBlock);

      [v38 setCallChanged:v41];
      _Block_release(v41);

      swift_unknownObjectRelease();
      sub_100009B7C(v49);
      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100317424(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100317520(unint64_t *a1)
{

  return sub_10001000C(a1, v1, v2);
}

uint64_t sub_10031755C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  *(v2 + a1) = *(v1 + a1);
}

uint64_t sub_10031757C()
{
  v2 = *(v0 - 216);

  return OS_dispatch_queue.asyncAfter(deadline:execute:)();
}

uint64_t sub_10031763C()
{
  v1 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  v2 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8);
  sub_1000115CC(v1);
  return v1;
}

uint64_t sub_100317724(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

id sub_100317744(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___CSDDirtyCallManager_callChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_1003178A0(uint64_t a1)
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
        sub_1002E944C(v40, v41, v42, v1);
        v11 = v10;
        v12 = [v11 handle];
        v13 = [v12 value];
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
          sub_10026D814(&unk_1006A3C40, &unk_100580340);
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

uint64_t sub_100317C84()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100317D6C()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100317DB4()
{
  type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  type metadata accessor for SharedPendingMembershipBag();
  v1 = swift_allocObject();
  sub_10031E494(v0, v1);
  sub_100005F0C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v0;
}

void sub_100317E54()
{
  sub_100005EF4();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA80;
  *(inited + 32) = v6;
  if (sub_10000B6F4(inited))
  {
    v18 = v6;
    sub_10039B3B8(inited);
    v20 = v19;
  }

  else
  {
    swift_setDeallocating();
    v21 = v6;
    sub_1002F5CC8();
    v20 = &_swiftEmptySetSingleton;
  }

  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000844C();
  sub_1002F93D0(v22, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000790C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 removePendingMembers:isa triggeredLocally:v2 & 1];

  sub_100006DDC((v27 + OBJC_IVAR___CSDPendingMembershipTracker_storage), *(v27 + OBJC_IVAR___CSDPendingMembershipTracker_storage + 24));
  v24 = [v4 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [v6 handle];
  v26 = *v20;
  sub_10031D478(v16);

  (*(v10 + 8))(v16, v7);
  sub_100005EDC();
}

uint64_t sub_1003180F4(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  sub_100006DDC(v13, v14);
  v15 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *v1;
  sub_10031D7A0(v12);
  return (*(v6 + 8))(v12, v3);
}

void sub_100318250()
{
  sub_100005EF4();
  v0 = type metadata accessor for PendingMembershipInfo();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  v12 = *sub_100009B14(v10, v11);
  v13 = sub_10031CC20();
  v14 = v13[2];
  if (v14)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_10031DF4C(v15, v9);
      *(v9 + *(v0 + 24));
      sub_10031E2FC(v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  sub_1002F1D1C(_swiftEmptyArrayStorage);
  sub_100005EDC();
}

void sub_100318524()
{
  sub_100005EF4();
  v0 = type metadata accessor for PendingMembershipInfo();
  v1 = sub_100007FEC(v0);
  v53 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1, v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for UUID();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007BAC();
  v18 = v16 - v17;
  __chkstk_darwin(v19, v20);
  sub_10000C1C4();
  v56 = v21;
  v22 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  v24 = *sub_100009B14(v22, v23);
  sub_10031CCAC();
  v26 = v25;
  sub_10026D814(&qword_1006A5678, &qword_100580358);
  static _DictionaryStorage.copy(original:)();
  v27 = 0;
  v28 = *(v26 + 64);
  v49 = v26 + 64;
  v29 = *(v26 + 32);
  sub_100007990();
  v32 = v31 & v30;
  v48 = (v33 + 63) >> 6;
  v57 = v12;
  v54 = v34 + 8;
  v55 = v34;
  v51 = v18;
  v52 = v9;
  v50 = v26;
  if (v32)
  {
    while (1)
    {
      v35 = __clz(__rbit64(v32));
      v58 = (v32 - 1) & v32;
LABEL_8:
      v39 = v35 | (v27 << 6);
      v60 = *(v57 + 72) * v39;
      (*(v57 + 16))(v56, *(v26 + 48) + v60, v9);
      v40 = *(*(v26 + 56) + 8 * v39);
      v59 = *(v57 + 32);
      v59(v18, v56, v9);
      v41 = *(v40 + 16);
      if (v41)
      {

        specialized ContiguousArray.reserveCapacity(_:)();
        v42 = v40 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v43 = *(v53 + 72);
        do
        {
          sub_10031DF4C(v42, v8);
          *(v8 + *(v0 + 24));
          sub_10031E2FC(v8);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v44 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v42 += v43;
          --v41;
        }

        while (v41);

        v18 = v51;
        v9 = v52;
        v26 = v50;
      }

      *(v54 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v59(v55[6] + v60, v18, v9);
      *(v55[7] + 8 * v39) = _swiftEmptyArrayStorage;
      v45 = v55[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      v55[2] = v47;
      v32 = v58;
      if (!v58)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v36 = v27;
    while (1)
    {
      v27 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v27 >= v48)
      {

        sub_100005EDC();
        return;
      }

      ++v36;
      if (*(v49 + 8 * v27))
      {
        sub_100007C8C();
        v58 = v38 & v37;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100318950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v23;
  a20 = v24;
  v234 = v20;
  v220 = v25;
  v222 = v26;
  v236 = v27;
  v227 = v28;
  v226 = v29;
  v228 = v30;
  v230 = type metadata accessor for PendingMembershipInfo();
  v31 = sub_100008070(v230);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  sub_100007BAC();
  v229 = v35 - v36;
  __chkstk_darwin(v37, v38);
  sub_10000C1C4();
  v233 = v39;
  v40 = type metadata accessor for Date();
  v41 = sub_100007FEC(v40);
  isUniquelyReferenced_nonNull_native = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41, v46);
  sub_100007FDC();
  v242 = v48 - v47;
  v231 = 0;
  v49 = type metadata accessor for UUID();
  v50 = sub_100007FEC(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50, v53);
  sub_100007BAC();
  v56 = __chkstk_darwin(v54, v55);
  v58 = &v214 - v57;
  __chkstk_darwin(v56, v59);
  v63 = &v214 - v62;
  if (qword_1006A0A88 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    if (byte_1006A53C0)
    {
      goto LABEL_3;
    }

    v217 = v61;
    v235 = v63;
    v218 = v60;
    v225 = v49;
    if (!v236)
    {
      v92 = v222;
      v93 = sub_100369594(v222);
      if (v93)
      {
        v94 = v93;
        v221 = isUniquelyReferenced_nonNull_native;
        v95 = [v92 groupUUID];
        if (v95)
        {
          v96 = v95;
          v219 = v40;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v97 = v218;
          v98 = v94;
          v99 = *(v218 + 16);
          v100 = v235;
          v101 = v225;
          v99(v235, v58, v225);
          v102 = sub_100004778();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_10057D6A0;
          v99(v217, v100, v101);
          v104 = String.init<A>(reflecting:)();
          v106 = v105;
          *(v103 + 56) = &type metadata for String;
          v107 = sub_100009D88();
          *(v103 + 64) = v107;
          *(v103 + 32) = v104;
          *(v103 + 40) = v106;
          v108 = v98;
          v255[0] = v98;

          sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
          sub_10000D648();
          v109 = String.init<A>(reflecting:)();
          *(v103 + 96) = &type metadata for String;
          *(v103 + 104) = v107;
          *(v103 + 72) = v109;
          *(v103 + 80) = v110;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          (*(v97 + 8))(v58, v101);
          goto LABEL_80;
        }
      }

LABEL_3:
      *&v246 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_100005EDC();

      return;
    }

    v221 = isUniquelyReferenced_nonNull_native;
    v219 = v40;
    v216 = v236;
    v66 = [v216 activeRemoteParticipants];
    isUniquelyReferenced_nonNull_native = off_100616608;
    sub_100006AF0(0, &qword_1006A4530, off_100616608);
    sub_10000844C();
    sub_1002F93D0(v67, &qword_1006A4530, off_100616608);
    sub_10000790C();
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = sub_10001E550(v49);
    if (v68)
    {
      break;
    }

    v91 = _swiftEmptyArrayStorage;
LABEL_38:
    v232 = sub_1002F1FE8(v91);
    v58 = [v216 memberHandlesEligibleForLinkApproval];
    v111 = sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000844C();
    sub_1002F93D0(v112, &qword_1006A2640, TUHandle_ptr);
    sub_10031E894();
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v249 = &_swiftEmptySetSingleton;
    v49 = &type metadata for String;
    v214 = v21;
    v224 = TUHandle_ptr;
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v58 = v21;
      }

      else
      {
        v58 = (v21 & 0xFFFFFFFFFFFFFF8);
      }

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v21 = v250;
      v113 = v251;
      v114 = v252;
      v40 = v253;
      isUniquelyReferenced_nonNull_native = v254;
    }

    else
    {
      v115 = -1 << *(v21 + 32);
      v113 = v21 + 56;
      v114 = ~v115;
      v116 = -v115;
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      else
      {
        v117 = -1;
      }

      isUniquelyReferenced_nonNull_native = v117 & *(v21 + 56);

      v40 = 0;
    }

    v118 = (v114 + 64) >> 6;
    v241 = v232 & 0xC000000000000001;
    v119 = v232 & 0xFFFFFFFFFFFFFF8;
    if (v232 < 0)
    {
      v119 = v232;
    }

    v223 = v119;
    v215 = v232 + 56;
    v245 = v111;
    v238 = v21;
    v237 = (v114 + 64) >> 6;
    v240 = v113;
    v239 = v114;
    if (v21 < 0)
    {
      goto LABEL_56;
    }

LABEL_50:
    v120 = v40;
    v63 = isUniquelyReferenced_nonNull_native;
    v22 = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_54:
      sub_100007C8C();
      v244 = v122 & v121;
      v124 = *(*(v21 + 48) + ((v22 << 9) | (8 * v123)));
      if (!v124)
      {
LABEL_79:
        sub_100022DDC();
        v139 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        sub_10000E6DC();
        v140 = swift_allocObject();
        v246 = xmmword_10057D690;
        *(v140 + 16) = xmmword_10057D690;
        v141 = v249;
        v248 = v249;

        sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
        v142 = String.init<A>(reflecting:)();
        v144 = v143;
        *(v140 + 56) = &type metadata for String;
        v145 = sub_100009D88();
        *(v140 + 64) = v145;
        *(v140 + 32) = v142;
        *(v140 + 40) = v144;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)();

        v146 = sub_100004778();
        sub_10000E6DC();
        v147 = swift_allocObject();
        *(v147 + 16) = v246;
        v148 = sub_10000D33C(v256);
        *(v147 + 56) = &type metadata for String;
        *(v147 + 64) = v145;
        *(v147 + 32) = v148;
        *(v147 + 40) = v149;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)();

        v150 = sub_100004778();
        sub_10000E6DC();
        v151 = swift_allocObject();
        *(v151 + 16) = v246;
        v152 = sub_10000D33C(&v246);
        *(v151 + 56) = &type metadata for String;
        *(v151 + 64) = v145;
        v108 = v141;
        *(v151 + 32) = v152;
        *(v151 + 40) = v153;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)();

        v154 = v216;
        v155 = [v216 groupUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_80:

        *&v246 = v108;
        v156 = v242;
        Date.init()();
        v157 = v233;
        UUID.init()();
        v158 = v230;
        (*(v221 + 16))(v157 + *(v230 + 28), v156, v219);
        v159 = (v157 + *(v158 + 20));
        v160 = v226;
        *v159 = v108;
        v159[1] = v160;
        v161 = v227;
        v159[2] = v227;
        v162 = v228;
        *(v157 + *(v158 + 24)) = v228;
        sub_100290AC4(v160, v161);
        v163 = v162;
        v164 = sub_100004778();
        v245 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_10057E830;
        sub_10031DF4C(v157, v229);
        v166 = String.init<A>(reflecting:)();
        v168 = v167;
        *(v165 + 56) = &type metadata for String;
        v169 = sub_100009D88();
        *(v165 + 64) = v169;
        *(v165 + 32) = v166;
        *(v165 + 40) = v168;
        v170 = v218;
        (*(v218 + 16))(v217, v235, v225);
        v171 = String.init<A>(reflecting:)();
        *(v165 + 96) = &type metadata for String;
        *(v165 + 104) = v169;
        *(v165 + 72) = v171;
        *(v165 + 80) = v172;
        v249 = [v163 handle];
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        v173 = String.init<A>(reflecting:)();
        *(v165 + 136) = &type metadata for String;
        *(v165 + 144) = v169;
        *(v165 + 112) = v173;
        *(v165 + 120) = v174;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)();

        v175 = sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_storage);
        sub_100006DDC(v175, v175[3]);
        v176 = [v163 handle];
        v177 = *v164;
        v178 = sub_10001E3F8();
        v179 = v231;
        sub_10031D224(v178, v180);
        if (v179)
        {

          v181 = sub_100004778();
          sub_10000E6DC();
          v182 = swift_allocObject();
          *(v182 + 16) = xmmword_10057D690;
          v249 = v179;
          swift_errorRetain();
          sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
          v183 = String.init<A>(reflecting:)();
          *(v182 + 56) = &type metadata for String;
          *(v182 + 64) = v169;
          *(v182 + 32) = v183;
          *(v182 + 40) = v184;
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)();

          sub_10031E2FC(v157);
          (*(v221 + 8))(v242, v219);
          (*(v170 + 8))(v235, v225);
LABEL_98:
          sub_100005EDC();
          return;
        }

        v22 = v221;

        isa = Date._bridgeToObjectiveC()().super.isa;
        [v163 setDateReceivedLetMeIn:isa];

        v186 = Date._bridgeToObjectiveC()().super.isa;
        [v163 setDateInitiatedLetMeIn:v186];

        v21 = v163;
        if (v236)
        {
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          *(inited + 32) = v163;
          v188 = sub_10000B6F4(inited);
          v40 = v233;
          if (v188)
          {
            v189 = v236;
            v190 = v236;
            v191 = v163;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v189 = v236;
            v195 = v236;
            v196 = v163;
            sub_1002F5CC8();
          }

          sub_100015A3C();
          sub_100006AF0(v197, v198, v199);
          sub_10000844C();
          sub_100015A3C();
          sub_1002F93D0(v200, v201, v202);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v189 addPendingMembers:&qword_1006A3DE0 triggeredLocally:1];
        }

        else
        {
          sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_delegate);
          Strong = swift_unknownObjectWeakLoadStrong();
          v40 = v233;
          if (Strong)
          {
            v193 = Strong;
            v194 = UUID._bridgeToObjectiveC()().super.isa;
            [v193 pendingMembershipTracker:v234 didTrack:v163 forGroupUUID:v194];

            swift_unknownObjectRelease();
          }
        }

        if (qword_1006A0A90 == -1)
        {
LABEL_92:
          if (byte_1006A53C1)
          {

            v203 = sub_100004778();
            static os_log_type_t.default.getter();
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)();
          }

          else
          {
            v204 = swift_unknownObjectWeakLoadStrong();
            if (v204)
            {
              v205 = v204;
              sub_10000844C();
              sub_1002F93D0(v206, v207, v208);
              v209 = Set._bridgeToObjectiveC()().super.isa;

              v210 = UUID._bridgeToObjectiveC()().super.isa;
              [v205 sendDelegationMessageTo:v209 conversation:v236 link:v222 transactionUUID:v210 forMember:v21];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          sub_10031E2FC(v40);
          (*(v22 + 8))(v242, v219);
          (*(v218 + 8))(v235, v225);
          goto LABEL_98;
        }

LABEL_107:
        sub_1000151A4();
        goto LABEL_92;
      }

LABEL_58:
      *&v246 = v124;
      if (v241)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v126 = v255[0];
        v127 = v255[1];
        v128 = v256[0];
        v129 = v256[1];
        v40 = v256[2];
      }

      else
      {
        v126 = v232;
        v130 = -1 << *(v232 + 32);
        v128 = ~v130;
        v131 = -v130;
        if (v131 < 64)
        {
          v132 = ~(-1 << v131);
        }

        else
        {
          v132 = -1;
        }

        v40 = v132 & *(v232 + 56);

        v129 = 0;
        v127 = v215;
      }

      v243 = v128;
      v49 = (v128 + 64) >> 6;
      while (1)
      {
        v21 = v40;
        isUniquelyReferenced_nonNull_native = v129;
        if (v126 < 0)
        {
          v58 = (v126 & 0x7FFFFFFFFFFFFFFFLL);
          v137 = __CocoaSet.Iterator.next()();
          if (!v137)
          {
            goto LABEL_76;
          }

          v247 = v137;
          swift_dynamicCast();
          v58 = v248;
          if (!v248)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v133 = v129;
          v63 = v40;
          if (!v40)
          {
            while (1)
            {
              v129 = v133 + 1;
              if (__OFADD__(v133, 1))
              {
                break;
              }

              if (v129 >= v49)
              {
                goto LABEL_76;
              }

              v63 = *(v127 + 8 * v129);
              ++v133;
              if (v63)
              {
                goto LABEL_70;
              }
            }

            __break(1u);
            goto LABEL_100;
          }

LABEL_70:
          sub_100007C8C();
          v40 = v135 & v134;
          v58 = *(*(v126 + 48) + ((v129 << 9) | (8 * v136)));
          if (!v58)
          {
LABEL_76:
            sub_100022CD8();

            v40 = v22;
            isUniquelyReferenced_nonNull_native = v244;
            v49 = &type metadata for String;
LABEL_77:
            v113 = v240;
            v21 = v238;
            v118 = v237;
            if ((v238 & 0x8000000000000000) == 0)
            {
              goto LABEL_50;
            }

LABEL_56:
            v58 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
            v125 = __CocoaSet.Iterator.next()();
            if (!v125)
            {
              goto LABEL_79;
            }

            v247 = v125;
            swift_dynamicCast();
            v124 = v248;
            v22 = v40;
            v244 = isUniquelyReferenced_nonNull_native;
            if (!v248)
            {
              goto LABEL_79;
            }

            goto LABEL_58;
          }
        }

        v138 = [v58 isEquivalentToHandle:{v246, v214}];

        if (v138)
        {
          sub_100022CD8();
          v58 = &v249;
          sub_100396370(&v248, v246);

          v40 = v22;
          isUniquelyReferenced_nonNull_native = v244;
          v49 = &type metadata for String;
          goto LABEL_77;
        }
      }
    }

    while (1)
    {
      v22 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        break;
      }

      if (v22 >= v118)
      {
        goto LABEL_79;
      }

      v63 = *(v113 + 8 * v22);
      ++v120;
      if (v63)
      {
        goto LABEL_54;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v211 = v61;
    v212 = v63;
    v213 = v60;
    swift_once();
    v61 = v211;
    v63 = v212;
    v60 = v213;
  }

  v40 = v68;
  v249 = _swiftEmptyArrayStorage;
  v58 = &v249;
  specialized ContiguousArray.reserveCapacity(_:)();
  v250 = sub_10001E578(v49);
  v251 = v69;
  LOBYTE(v252) = v70 & 1;
  if (v40 < 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  v71 = 0;
  v72 = v49 & 0xFFFFFFFFFFFFFF8;
  if (v49 < 0)
  {
    v72 = v49;
  }

  *&v246 = v72;
  v245 = v49 + 56;
  v63 = &a17;
  v244 = v49 + 64;
  while (1)
  {
    if (__OFADD__(v71++, 1))
    {
      goto LABEL_101;
    }

    isUniquelyReferenced_nonNull_native = v250;
    v21 = v251;
    v22 = v252;
    v74 = sub_10000C204();
    sub_1002E966C(v74, v75, v22, v49);
    v77 = v76;
    [v76 handle];

    v58 = &v249;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v78 = v249[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if ((v49 & 0xC000000000000001) == 0)
    {
      if (v22)
      {
        goto LABEL_109;
      }

      if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
      {
        goto LABEL_102;
      }

      v63 = 1;
      v58 = (1 << *(v49 + 32));
      if (isUniquelyReferenced_nonNull_native >= v58)
      {
        goto LABEL_102;
      }

      v79 = isUniquelyReferenced_nonNull_native >> 6;
      v80 = *(v245 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
      v63 = v80 >> isUniquelyReferenced_nonNull_native;
      if (((v80 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
      {
        goto LABEL_103;
      }

      v63 = *(v49 + 36);
      if (v63 != v21)
      {
        goto LABEL_104;
      }

      v81 = v80 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
      if (v81)
      {
        v63 = isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
        v58 = (__clz(__rbit64(v81)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v82 = v79 << 6;
        v83 = v79 + 1;
        v84 = (v244 + 8 * v79);
        while (v83 < (v58 + 63) >> 6)
        {
          v85 = *v84++;
          v22 = v85;
          v82 += 64;
          ++v83;
          if (v85)
          {
            v86 = sub_10000C204();
            sub_100010000(v86, v87, 0);
            v58 = (__clz(__rbit64(v22)) + v82);
            goto LABEL_31;
          }
        }

        v88 = sub_10000C204();
        sub_100010000(v88, v89, 0);
      }

LABEL_31:
      v90 = *(v49 + 36);
      v250 = v58;
      v251 = v90;
      LOBYTE(v252) = 0;
      goto LABEL_32;
    }

    if (!v22)
    {
      break;
    }

    sub_10000C204();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    }

    else
    {
      isUniquelyReferenced_nonNull_native = 1;
    }

    sub_10026D814(&qword_1006A5670, &qword_100580350);
    sub_10000D648();
    v58 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    (v58)(v255, 0);
LABEL_32:
    if (v71 == v40)
    {

      sub_100010000(v250, v251, v252);
      v91 = v249;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
}

void sub_100319F0C()
{
  sub_100005EF4();
  v94 = v1;
  v95 = v0;
  v3 = v2;
  v5 = v4;
  v93 = v6;
  v8 = v7;
  v9 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v9);
  v11 = *(v10 + 64);
  sub_100006688();
  __chkstk_darwin(v12, v13);
  v15 = &v89 - v14;
  v16 = type metadata accessor for PendingMembershipInfo();
  v17 = sub_100008070(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_100007BAC();
  v23 = v21 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v89 - v26;
  v28 = type metadata accessor for Date();
  v29 = sub_100007FEC(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29, v34);
  sub_100007FDC();
  v38 = v37 - v36;
  if (qword_1006A0A88 != -1)
  {
    v87 = v35;
    sub_10000A7E0();
    swift_once();
    v35 = v87;
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    if (qword_1006A0A90 != -1)
    {
      v88 = v35;
      sub_1000151A4();
      v35 = v88;
    }

    if ((byte_1006A53C1 & 1) == 0)
    {
      v41 = v35;
      Date.init()();
      v42 = type metadata accessor for UUID();
      sub_100008070(v42);
      (*(v43 + 16))(v27, v3);
      v44 = v16[7];
      v91 = v41;
      v92 = v31;
      v45 = *(v31 + 16);
      v90 = v38;
      v45(&v27[v44], v38, v41);
      v46 = &v27[v16[5]];
      *v46 = v5;
      *(v46 + 8) = xmmword_1005800E0;
      *&v27[v16[6]] = v8;
      v47 = &v95[OBJC_IVAR___CSDPendingMembershipTracker_storage];
      v48 = sub_100009B14(&v95[OBJC_IVAR___CSDPendingMembershipTracker_storage], *&v95[OBJC_IVAR___CSDPendingMembershipTracker_storage + 24]);
      v49 = v5;
      v50 = v8;
      v51 = [v50 handle];
      v52 = *v48;
      v53 = v94;
      sub_10031CB04(v94, v15);

      if (sub_100015468(v15, 1, v16) == 1)
      {
        sub_100009A04(v15, &qword_1006A5640, &qword_100580310);
      }

      else
      {
        sub_1002F6F18(v15, v23);
        v54 = v23 + v16[5];
        v52 = *v54;
        v55 = *(v54 + 8);
        v56 = *(v54 + 16);
        sub_100015A3C();
        sub_10031E020(v57, v58, v59);
        sub_10031E2FC(v23);
        sub_100015A3C();
        sub_10031E2A8(v60, v61, v62);
        if ((v56 & 0x2000000000000000) == 0)
        {
          sub_10031E2FC(v27);
          (*(v92 + 8))(v90, v91);
LABEL_15:
          sub_100005EDC();
          return;
        }
      }

      sub_100006DDC(v47, *(v47 + 3));
      v63 = v50;
      v64 = [v50 handle];
      v65 = *v52;
      sub_10031D224(v27, v53);
      v66 = v90;

      isa = Date._bridgeToObjectiveC()().super.isa;
      [v63 setDateReceivedLetMeIn:isa];

      v68 = v93;
      if (v93)
      {
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057CA80;
        *(inited + 32) = v63;
        v70 = sub_10000B6F4(inited);
        v71 = v92;
        if (v70)
        {
          v72 = v63;
          v73 = v68;
          sub_10039B3B8(inited);
        }

        else
        {
          swift_setDeallocating();
          v79 = v63;
          v80 = v68;
          sub_1002F5CC8();
        }

        sub_100015A3C();
        sub_100006AF0(v81, v82, v83);
        sub_10000844C();
        sub_100015A3C();
        sub_1002F93D0(v84, v85, v86);
        sub_10000790C();
        Set._bridgeToObjectiveC()();
        sub_100010160();
        [v68 addPendingMembers:&qword_1006A3DE0 triggeredLocally:0];

        sub_10031E2FC(v27);
        (*(v71 + 8))(v66, v91);
      }

      else
      {
        v74 = v95;
        Strong = swift_unknownObjectWeakLoadStrong();
        v76 = v92;
        if (Strong)
        {
          v77 = Strong;
          v78 = UUID._bridgeToObjectiveC()().super.isa;
          [v77 pendingMembershipTracker:v74 didTrack:v63 forGroupUUID:v78];
          swift_unknownObjectRelease();
        }

        sub_10031E2FC(v27);
        (*(v76 + 8))(v66, v91);
      }

      goto LABEL_15;
    }
  }

  v95 = sub_100004778();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_100005EDC();
}

void sub_10031A75C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for UUID();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v7;
  v21 = v5;
  v22 = v3;
  v23 = v9;
  v1(v20, v21, v22, v19);

  (*(v13 + 8))(v19, v10);
  sub_100005EDC();
}

void sub_10031A98C()
{
  sub_100005EF4();
  v233 = v0;
  v234 = v2;
  v231 = v3;
  v235 = v4;
  v6 = v5;
  v232 = v7;
  v8 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v8);
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v14 = v217 - v13;
  v15 = type metadata accessor for PendingMembershipInfo();
  v16 = sub_100008070(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  sub_100007BAC();
  v22 = v20 - v21;
  __chkstk_darwin(v23, v24);
  sub_10000C1C4();
  v26 = v25;
  v27 = type metadata accessor for UUID();
  v28 = sub_100007FEC(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28, v33);
  sub_100007BAC();
  v36 = v34 - v35;
  __chkstk_darwin(v37, v38);
  sub_100005FEC();
  __chkstk_darwin(v39, v40);
  v42 = v217 - v41;
  if (qword_1006A0A88 != -1)
  {
    sub_10000A7E0();
    swift_once();
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    if (qword_1006A0A90 != -1)
    {
      sub_1000151A4();
    }

    if ((byte_1006A53C1 & 1) == 0)
    {
      v229 = v27;
      v230 = v30;
      v45 = [v235 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = *(v233 + OBJC_IVAR___CSDPendingMembershipTracker_storage + 24);
      v227 = (v233 + OBJC_IVAR___CSDPendingMembershipTracker_storage);
      sub_100006DDC((v233 + OBJC_IVAR___CSDPendingMembershipTracker_storage), v46);
      v47 = v42;
      v48 = [v6 handle];
      v49 = *v45;
      sub_10031CB04(v47, v14);

      if (sub_100015468(v14, 1, v15) == 1)
      {
        sub_100009A04(v14, &qword_1006A5640, &qword_100580310);
        v50 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_10057D6A0;
        v53 = v229;
        v52 = v230;
        v54 = *(v230 + 16);
        v55 = sub_10001E3F8();
        v56(v55);
        v57 = String.init<A>(reflecting:)();
        v59 = v58;
        *(v51 + 56) = &type metadata for String;
        v60 = sub_100009D88();
        *(v51 + 64) = v60;
        *(v51 + 32) = v57;
        *(v51 + 40) = v59;
        v237[0] = [v6 handle];
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        v61 = String.init<A>(reflecting:)();
        *(v51 + 96) = &type metadata for String;
        *(v51 + 104) = v60;
        *(v51 + 72) = v61;
        *(v51 + 80) = v62;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)();

        (*(v52 + 8))(v47, v53);
LABEL_30:
        sub_100005EDC();
        return;
      }

      v224 = v47;
      v228 = v26;
      sub_1002F6F18(v14, v26);
      v226 = sub_100004778();
      v221 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1005800F0;
      sub_10031DF4C(v26, v22);
      v64 = String.init<A>(reflecting:)();
      v66 = v65;
      *(v63 + 56) = &type metadata for String;
      v67 = sub_100009D88();
      *(v63 + 64) = v67;
      *(v63 + 32) = v64;
      *(v63 + 40) = v66;
      LOBYTE(v237[0]) = v232 & 1;
      v68 = String.init<A>(reflecting:)();
      *(v63 + 96) = &type metadata for String;
      *(v63 + 104) = v67;
      *(v63 + 72) = v68;
      *(v63 + 80) = v69;
      v237[0] = v6;
      v70 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      v218 = v6;
      v220 = v70;
      v71 = String.init<A>(reflecting:)();
      *(v63 + 136) = &type metadata for String;
      *(v63 + 144) = v67;
      *(v63 + 112) = v71;
      *(v63 + 120) = v72;
      v73 = v231;
      v237[0] = v231;
      v74 = sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v225 = v73;
      sub_1000052F4();
      *(v75 - 256) = v74;
      v76 = String.init<A>(reflecting:)();
      *(v63 + 176) = &type metadata for String;
      *(v63 + 184) = v67;
      *(v63 + 152) = v76;
      *(v63 + 160) = v77;
      v78 = v229;
      v79 = v230;
      v80 = v230 + 16;
      v81 = *(v230 + 16);
      v81(v1, v234, v229);
      v82 = String.init<A>(reflecting:)();
      *(v63 + 216) = &type metadata for String;
      *(v63 + 224) = v67;
      *(v63 + 192) = v82;
      *(v63 + 200) = v83;
      v84 = [v235 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v223 = v80;
      v222 = v81;
      v81(v36, v1, v78);
      v85 = v79;
      v86 = v67;
      v87 = String.init<A>(reflecting:)();
      v89 = v88;
      v91 = *(v85 + 8);
      v90 = v85 + 8;
      v231 = v91;
      v91(v1, v78);
      *(v63 + 256) = &type metadata for String;
      *(v63 + 264) = v67;
      *(v63 + 232) = v87;
      *(v63 + 240) = v89;
      v92 = v228;
      static os_log_type_t.default.getter();
      v93 = v226;
      os_log(_:dso:log:type:_:)();

      v94 = v92 + *(v15 + 20);
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 16);
      if ((v97 & 0x2000000000000000) != 0)
      {
        v226 = *(v94 + 8);
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        v219 = v95;
        v134 = v95;
        v135 = v225;
        if (static NSObject.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
        {
          v136 = v92;
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          v138 = v218;
          *(inited + 32) = v218;
          if (sub_10000B6F4(inited))
          {
            v139 = v138;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v186 = v138;
            sub_1002F5CC8();
          }

          v187 = v224;
          v188 = v226;
          v189 = v235;
          sub_10000844C();
          sub_1002F93D0(v190, v191, v192);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v189 removePendingMembers:v138 triggeredLocally:1];

          v193 = [v189 delegate];
          if (v193)
          {
            [v193 conversationChanged:v189];
            swift_unknownObjectRelease();
          }

          v194 = *sub_100009B14(v227, v227[3]);
          sub_10031D478(v187);
          sub_10031E2A8(v219, v188, v97);
          sub_10031E2FC(v136);
          v179 = v187;
          v180 = v229;
        }

        else
        {
          v160 = sub_100004778();
          v161 = sub_100015D30();
          *(v161 + 16) = xmmword_10057CA70;
          v237[0] = v134;
          v162 = v134;
          sub_1000052F4();
          v164 = *(v163 - 256);
          v165 = String.init<A>(reflecting:)();
          *(v161 + 56) = &type metadata for String;
          *(v161 + 64) = v86;
          *(v161 + 32) = v165;
          *(v161 + 40) = v166;
          v237[0] = v135;
          v167 = v135;
          v168 = String.init<A>(reflecting:)();
          *(v161 + 96) = &type metadata for String;
          *(v161 + 104) = v86;
          *(v161 + 72) = v168;
          *(v161 + 80) = v169;
          v170 = sub_100008B74();
          v171 = v229;
          v172 = v97;
          v173 = v222;
          v222(v170);
          sub_100008B74();
          v174 = String.init<A>(reflecting:)();
          *(v161 + 136) = &type metadata for String;
          *(v161 + 144) = v86;
          v176 = sub_10001ABE4(v174, v175);
          v173(v176);
          sub_100008B74();
          v177 = String.init<A>(reflecting:)();
          *(v161 + 176) = &type metadata for String;
          *(v161 + 184) = v86;
          *(v161 + 152) = v177;
          *(v161 + 160) = v178;
          static os_log_type_t.default.getter();
          sub_100008378();
          os_log(_:dso:log:type:_:)();

          sub_10031E2A8(v219, v226, v172);
          sub_10031E2FC(v228);
          v179 = sub_10000FC08();
          v180 = v171;
        }

        v231(v179, v180);
        goto LABEL_30;
      }

      v98 = *v94;

      sub_100290AC4(v96, v97);
      v99 = v225;
      sub_100422818();
      v230 = v90;
      if ((v100 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
      {
        v235 = sub_100004778();
        v140 = sub_100015D30();
        *(v140 + 16) = xmmword_10057CA70;
        v237[0] = v95;
        sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
        v141 = String.init<A>(reflecting:)();
        *(v140 + 56) = &type metadata for String;
        *(v140 + 64) = v86;
        *(v140 + 32) = v141;
        *(v140 + 40) = v142;
        v237[0] = v99;
        v143 = v99;
        sub_1000052F4();
        v145 = *(v144 - 256);
        v146 = String.init<A>(reflecting:)();
        *(v140 + 96) = &type metadata for String;
        *(v140 + 104) = v86;
        *(v140 + 72) = v146;
        *(v140 + 80) = v147;
        v148 = sub_100008B74();
        v149 = v92;
        v150 = v229;
        v151 = v97;
        v152 = v222;
        v222(v148);
        sub_100008B74();
        v153 = String.init<A>(reflecting:)();
        *(v140 + 136) = &type metadata for String;
        *(v140 + 144) = v86;
        v155 = sub_10001ABE4(v153, v154);
        v152(v155);
        sub_100008B74();
        v156 = String.init<A>(reflecting:)();
        *(v140 + 176) = &type metadata for String;
        *(v140 + 184) = v86;
        *(v140 + 152) = v156;
        *(v140 + 160) = v157;
        static os_log_type_t.default.getter();
        v158 = v235;
        os_log(_:dso:log:type:_:)();
        sub_100049B14(v96, v151);

        sub_10031E2FC(v149);
        v159 = sub_10000FC08();
        v231(v159, v150);
        goto LABEL_30;
      }

      v219 = v95;
      v226 = v96;
      v217[1] = v97;
      v101 = [v235 kickedMembers];
      sub_10000844C();
      sub_1002F93D0(v102, v103, v104);
      sub_10000790C();
      v105 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003178A0(v105);
      v107 = v106;

      v108 = [v99 value];
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;

      v237[0] = v109;
      v237[1] = v111;
      __chkstk_darwin(v112, v113);
      v217[-2] = v237;
      LOBYTE(v108) = sub_100013094();

      if (v108)
      {

        v114 = sub_100004778();
        v115 = sub_100015D30();
        *(v115 + 16) = xmmword_10057CA70;
        v237[0] = v107;
        sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        v116 = String.init<A>(reflecting:)();
        *(v115 + 56) = &type metadata for String;
        *(v115 + 64) = v86;
        *(v115 + 32) = v116;
        *(v115 + 40) = v117;
        v237[0] = v99;
        v118 = v99;
        sub_1000052F4();
        v120 = *(v119 - 256);
        v121 = String.init<A>(reflecting:)();
        *(v115 + 96) = &type metadata for String;
        *(v115 + 104) = v86;
        *(v115 + 72) = v121;
        *(v115 + 80) = v122;
        v123 = v228;
        v124 = v229;
        v125 = v222;
        (v222)(v1, v228, v229);
        sub_10001E3F8();
        v126 = String.init<A>(reflecting:)();
        *(v115 + 136) = &type metadata for String;
        *(v115 + 144) = v86;
        v128 = sub_10001ABE4(v126, v127);
        v125(v128);
        sub_10001E3F8();
        v129 = String.init<A>(reflecting:)();
        *(v115 + 176) = &type metadata for String;
        *(v115 + 184) = v86;
        *(v115 + 152) = v129;
        *(v115 + 160) = v130;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)();
        sub_100027E9C();
        sub_100049B14(v131, v132);

        sub_10031E2FC(v123);
        v133 = sub_10000FC08();
        v231(v133, v124);
        goto LABEL_30;
      }

      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v181 = swift_initStackObject();
      *(v181 + 16) = xmmword_10057CA80;
      v182 = v218;
      *(v181 + 32) = v218;
      v183 = sub_10000B6F4(v181);
      v184 = v231;
      if (v183)
      {
        v185 = v182;
        sub_10039B3B8(v181);
      }

      else
      {
        swift_setDeallocating();
        v195 = v182;
        sub_1002F5CC8();
      }

      v196 = v235;
      sub_100018F70();
      Set._bridgeToObjectiveC()();
      sub_10031E894();

      [v196 removePendingMembers:v109 triggeredLocally:1];

      v237[0] = v219;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (v232)
      {
        if (!Strong)
        {
LABEL_46:
          v207 = swift_unknownObjectWeakLoadStrong();
          if (v207)
          {
            v208 = v207;
            sub_10000844C();
            sub_1002F93D0(v209, v210, v211);
            sub_10000790C();
            Set._bridgeToObjectiveC()();
            sub_10031E894();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v208 sendDelegationResponseMessageTo:v109 conversation:v196 transactionUUID:isa forMember:v182 withResponse:v232 & 1];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v213 = *sub_100009B14(v227, v227[3]);
          v214 = v224;
          sub_10031D478(v224);
          sub_100027E9C();
          sub_100049B14(v215, v216);
          sub_10031E2FC(v228);
          v184(v214, v229);
          goto LABEL_30;
        }

        sub_100027E9C();
        v109 = Data._bridgeToObjectiveC()().super.isa;
        sub_100035DEC(v109, "pendingMembershipTracker:willAdd:to:using:");
      }

      else
      {
        if (Strong)
        {
          sub_100027E9C();
          v198 = Data._bridgeToObjectiveC()().super.isa;
          sub_100035DEC(v198, "pendingMembershipTracker:willNotAdd:to:using:");

          swift_unknownObjectRelease();
        }

        v109 = [v196 rejectedMembers];
        sub_100018F70();
        v199 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v199 & 0xC000000000000001) != 0)
        {
          if (v199 >= 0)
          {
            v199 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v200 = v182;
          v201 = __CocoaSet.count.getter();
          if (__OFADD__(v201, 1))
          {
            __break(1u);
            return;
          }

          sub_100396A04(v199, v201 + 1);
          v236 = v202;
          v203 = v200;
          isUniquelyReferenced_nonNull_native = 1;
        }

        else
        {
          v205 = v182;
          sub_10031E894();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v236 = v199;
          v203 = v109;
        }

        sub_100018F70();
        Set._bridgeToObjectiveC()();
        sub_10031E894();

        [v196 setRejectedMembers:v109];

        v206 = [v196 delegate];
        if (!v206)
        {
          goto LABEL_46;
        }

        [v206 conversationChanged:v196];
      }

      swift_unknownObjectRelease();
      goto LABEL_46;
    }
  }

  v235 = sub_100004778();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_100005EDC();
}