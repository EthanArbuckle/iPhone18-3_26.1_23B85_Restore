uint64_t sub_100162A94()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100162B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_100162C70()
{
  v1 = v0[5];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    return sub_10014BDC4(v4, v5, v1 + 1, v2, v3);
  }

  return result;
}

uint64_t sub_100162CBC(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(v3[3]);
  v6 = v3[4];

  a2(v3[6]);

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100162DA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100162DF4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100162E00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100162E70(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  (*(v2 + 16))(a1, a2 & 1);
  return v7(a1, a2 & 1);
}

uint64_t sub_100162ED0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_100162F68(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100162F8C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100162F98(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100162FF0(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_100163058(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100163068(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100163078(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100163100(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100163124(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016317C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1001631CC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100163204()
{
  result = qword_1002F9520;
  if (!qword_1002F9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9520);
  }

  return result;
}

unint64_t sub_100163258()
{
  result = qword_1002F9528;
  if (!qword_1002F9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9528);
  }

  return result;
}

uint64_t sub_100163928()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300D88);
  sub_1000EE91C(v4, qword_100300D88);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *sub_100164730(id a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v108 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v102 - v10;
  v11 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v107 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v102 - v15;
  __chkstk_darwin(v16);
  v109 = &v102 - v17;
  v18 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v102 - v20;
  v22 = type metadata accessor for UUID();
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = *(v116 + 64);
  v24 = __chkstk_darwin(v22);
  v114 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v111 = v6;
  v27 = *(v6 + 56);
  v112 = v6 + 56;
  v115 = v27;
  (v27)(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp, 1, 1, v5, v24);
  if (CKRecord.recordType.getter() == 0x6563697665444141 && v28 == 0xEE0064726F636552)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_100169560();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
LABEL_13:

      sub_1000EEE6C(v3 + v26, &qword_1002F7EF0, &unk_100226C90);
      type metadata accessor for AADeviceRecord();
      v41 = *((swift_isaMask & *v3) + 0x30);
      v42 = *((swift_isaMask & *v3) + 0x34);
      swift_deallocPartialClassInstance();
      return v3;
    }
  }

  v30 = [a1 encryptedValues];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 objectForKeyedSubscript:v31];

  if (!v32 || (v121 = v32, v106 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100226100;
    *(v38 + 56) = sub_1000EEE20();
    *(v38 + 64) = sub_1001695B4(&qword_1002F7BE0, sub_1000EEE20);
    *(v38 + 32) = a1;
    a1 = a1;
    os_log(_:dso:log:_:_:)();

    sub_100169560();
    swift_allocError();
    *v39 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v104 = v2;
  v105 = v5;
  v33 = v120;
  v103 = v119;
  v34 = [a1 recordID];
  v35 = [v34 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v37 = v116;
  v36 = v117;
  if ((*(v116 + 48))(v21, 1, v117) == 1)
  {

    sub_1000EEE6C(v21, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_9;
  }

  v44 = v114;
  (*(v37 + 32))(v114, v21, v36);
  (*(v37 + 16))(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier, v44, v36);
  v45 = (v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
  *v45 = v103;
  v45[1] = v33;
  v46 = String._bridgeToObjectiveC()();
  v47 = [v30 objectForKeyedSubscript:v46];

  v48 = v105;
  if (v47 && (v119 = v47, swift_dynamicCast()))
  {
    v49 = v121;
  }

  else
  {
    if (qword_1002F7A78 != -1)
    {
      swift_once();
    }

    v49 = byte_1002F9540;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) = v49;
  v103 = 0xD000000000000017;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v30 objectForKeyedSubscript:v50];

  if (v51 && (v119 = v51, swift_dynamicCast()))
  {
    v52 = v121;
  }

  else
  {
    if (qword_1002F7A80 != -1)
    {
      swift_once();
    }

    v52 = byte_1002F9541;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) = v52;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v30 objectForKeyedSubscript:v53];

  if (v54)
  {
    v119 = v54;
    v55 = v109;
    v56 = swift_dynamicCast() ^ 1;
    v57 = v55;
  }

  else
  {
    v55 = v109;
    v57 = v109;
    v56 = 1;
  }

  v115(v57, v56, 1, v48);
  swift_beginAccess();
  sub_10013261C(v55, v3 + v26);
  swift_endAccess();
  v58 = String._bridgeToObjectiveC()();
  v59 = [v30 objectForKeyedSubscript:v58];

  if (v59 && (v119 = v59, swift_dynamicCast()))
  {
    v60 = v121;
  }

  else
  {
    if (qword_1002F7A88 != -1)
    {
      swift_once();
    }

    v60 = byte_1002F9542;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) = v60;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v30 objectForKeyedSubscript:v61];

  if (v62 && (v119 = v62, swift_dynamicCast()))
  {
    v63 = v121;
  }

  else
  {
    if (qword_1002F7A90 != -1)
    {
      swift_once();
    }

    v63 = byte_1002F9543;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) = v63;
  v64 = String._bridgeToObjectiveC()();
  v65 = [v30 objectForKeyedSubscript:v64];

  if (v65 && (v119 = v65, swift_dynamicCast()))
  {
    v66 = v121;
  }

  else
  {
    if (qword_1002F7A98 != -1)
    {
      swift_once();
    }

    v66 = byte_1002F9544;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) = v66;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v30 objectForKeyedSubscript:v67];

  if (v68 && (v119 = v68, swift_dynamicCast()))
  {
    v69 = v121;
  }

  else
  {
    if (qword_1002F7AA0 != -1)
    {
      swift_once();
    }

    v69 = byte_1002F9545;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) = v69;
  v70 = String._bridgeToObjectiveC()();
  v71 = [v30 objectForKeyedSubscript:v70];

  v72 = v113;
  if (v71 && (v119 = v71, swift_dynamicCast()))
  {
    v73 = v121;
  }

  else
  {
    if (qword_1002F7AA8 != -1)
    {
      swift_once();
    }

    v73 = byte_1002F9546;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) = v73;
  v74 = String._bridgeToObjectiveC()();
  v75 = [v30 objectForKeyedSubscript:v74];

  if (v75 && (v119 = v75, swift_dynamicCast()))
  {
    v76 = v121;
  }

  else
  {
    if (qword_1002F7AB0 != -1)
    {
      swift_once();
    }

    v76 = byte_1002F9547;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) = v76;
  v77 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v77];
  [v77 finishEncoding];
  v78 = [v77 encodedData];
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = (v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata);
  *v82 = v79;
  v82[1] = v81;
  v83 = [a1 modificationDate];
  if (v83)
  {
    v84 = v108;
    v85 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v116 + 8))(v114, v117);
    v86 = v111;
    v87 = *(v111 + 32);
    v88 = v84;
    v89 = v105;
    v87(v72, v88, v105);
    v115(v72, 0, 1, v89);
    v90 = v110;
    v87(v110, v72, v89);
  }

  else
  {
    v89 = v105;
    v91 = v115;
    v115(v72, 1, 1, v105);
    v92 = [a1 creationDate];
    v86 = v111;
    if (v92)
    {
      v93 = v108;
      v94 = v91;
      v95 = v92;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v116 + 8))(v114, v117);
      v96 = *(v86 + 32);
      v97 = v107;
      v96(v107, v93, v89);
      v94(v97, 0, 1, v89);
      v72 = v113;
      v90 = v110;
      v96(v110, v97, v89);
      v98 = (*(v86 + 48))(v72, 1, v89);
    }

    else
    {
      v99 = v107;
      v91(v107, 1, 1, v89);
      v90 = v110;
      static Date.now.getter();
      swift_unknownObjectRelease();
      (*(v116 + 8))(v114, v117);
      v100 = *(v86 + 48);
      if (v100(v99, 1, v89) != 1)
      {
        sub_1000EEE6C(v99, &qword_1002F7EF0, &unk_100226C90);
      }

      v89 = v105;
      v98 = v100(v72, 1, v105);
    }

    if (v98 != 1)
    {
      sub_1000EEE6C(v72, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v86 + 32))(v3 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate, v90, v89);
  v101 = type metadata accessor for AADeviceRecord();
  v118.receiver = v3;
  v118.super_class = v101;
  v3 = objc_msgSendSuper2(&v118, "init");

  return v3;
}

void (*sub_100165768(uint64_t a1, uint64_t a2, unint64_t a3, void *a4))(uint64_t, uint64_t)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = &v54 - v16;
  v58 = v10;
  v59 = v9;
  v17 = *(v10 + 56);
  v60 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v55 = v17;
  (v17)(&v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp], 1, 1, v9, v15);
  v18 = &v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v65 = a1;
  v61 = v20;
  v22(&v4[v19], a1);
  v63 = a2;
  v64 = a3;
  sub_1000EE9F4(a2, a3);
  v62 = a4;
  v23 = [a4 bluetoothAddress];
  if (!v23)
  {
    v29 = 2;
    goto LABEL_10;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || v25 == 0xD000000000000011 && 0x8000000100267AA0 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v29 = 3;
LABEL_10:
    sub_100169560();
    swift_allocError();
    *v30 = v29;
    swift_willThrow();

    sub_1000EF870(v63, v64);
    v31 = *(v21 + 8);
    v32 = v61;
    v31(v65, v61);
    sub_1000EF870(*v18, *(v18 + 1));
    v31(&v4[v19], v32);
    sub_1000EEE6C(&v4[v60], &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for AADeviceRecord();
    v33 = *((swift_isaMask & *v4) + 0x30);
    v34 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
    return v31;
  }

  v36 = &v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
  *v36 = v25;
  v36[1] = v27;
  v37 = v62;
  v38 = [v62 acceptReplyPlayPauseConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig] = v38;
  v39 = [v37 listeningModeOffAllowed];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff] = v39;
  v40 = [v37 audiogramEnrolledTimestamp];
  if (v40)
  {
    v41 = v56;
    v42 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v56;
  }

  v44 = v59;
  v55(v41, v43, 1, v59);
  v45 = v60;
  swift_beginAccess();
  sub_10013261C(v41, &v4[v45]);
  swift_endAccess();
  v46 = [v37 remoteCameraControlConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig] = v46;
  v47 = [v37 chargingReminderEnabled];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled] = v47;
  v48 = [v37 declineDismissSkipConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig] = v48;
  v49 = [v37 headGestureToggle];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode] = v49;
  v50 = [v37 healthKitDataWriteAllowed];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed] = v50;
  v51 = [v37 heartRateMonitorCapability];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability] = v51;
  v52 = v57;
  static Date.now.getter();
  (*(v58 + 32))(&v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate], v52, v44);
  v53 = type metadata accessor for AADeviceRecord();
  v66.receiver = v4;
  v66.super_class = v53;
  v31 = objc_msgSendSuper2(&v66, "init");

  sub_1000EF870(v63, v64);
  (*(v21 + 8))(v65, v61);
  return v31;
}

void *AADeviceRecord.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v86 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v81 - v8;
  v9 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v81 - v13;
  __chkstk_darwin(v14);
  v89 = &v81 - v15;
  __chkstk_darwin(v16);
  v94 = &v81 - v17;
  v18 = type metadata accessor for UUID();
  v91 = *(v18 - 1);
  v92 = v18;
  v19 = *(v91 + 64);
  __chkstk_darwin(v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000EE870(&qword_1002F9568, &qword_100229518);
  v95 = *(v93 - 8);
  v22 = *(v95 + 64);
  v23 = __chkstk_darwin(v93);
  v25 = &v81 - v24;
  v26 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v88 = v4;
  v29 = *(v4 + 56);
  v27 = v4 + 56;
  v28 = v29;
  v98 = v1;
  v90 = v3;
  (v29)(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp, 1, 1, v3, v23);
  v30 = a1[3];
  v31 = a1[4];
  v97 = a1;
  sub_1000EF78C(a1, v30);
  sub_100168D64();
  v32 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v35 = v98;
    sub_1000EF824(v97);
    sub_1000EEE6C(v35 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for AADeviceRecord();
    v36 = *((swift_isaMask & *v35) + 0x30);
    v37 = *((swift_isaMask & *v35) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v96 = v26;
    v33 = v94;
    v82 = v28;
    v83 = v27;
    v101 = 0;
    sub_1000EF8C4();
    v34 = v93;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v98;
    *(v98 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata) = *v100;
    LOBYTE(v100[0]) = 1;
    sub_1001695B4(&unk_1002F8750, &type metadata accessor for UUID);
    v40 = v92;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v91 + 32))(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier, v21, v40);
    LOBYTE(v100[0]) = 2;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = (v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v100[0]) = 3;
    *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v100[0]) = 4;
    *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v100[0]) = 5;
    v44 = v33;
    v45 = sub_1001695B4(&qword_1002F7D90, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v81 = v45;
    v46 = v96;
    swift_beginAccess();
    sub_10013261C(v44, v46 + v39);
    swift_endAccess();
    LOBYTE(v100[0]) = 6;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v47 & 0x100) != 0)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47;
    }

    *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) = v48;
    LOBYTE(v100[0]) = 7;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v49 & 0x100) != 0)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) = v50;
    LOBYTE(v100[0]) = 8;
    *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v100[0]) = 9;
    *(v98 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v100[0]) = 10;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v51 & 0x100) != 0)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    *(v98 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) = v52;
    LOBYTE(v100[0]) = 11;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v53 & 0x100) != 0)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    v55 = v98;
    *(v98 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) = v54;
    v56 = v87;
    static Date.now.getter();
    v57 = *(v88 + 32);
    v94 = (v88 + 32);
    v96 = v57;
    v57(&v55[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate], v56, v90);
    v58 = type metadata accessor for AADeviceRecord();
    v99.receiver = v55;
    v99.super_class = v58;
    v35 = objc_msgSendSuper2(&v99, "init");
    LOBYTE(v100[0]) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v98 = *(v88 + 48);
    if ((v98)(v89, 1, v90) == 1)
    {
      v59 = v35;
      v92 = objc_autoreleasePoolPush();
      v60 = v59 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata;
      isa = sub_100169D38(*(v59 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata), *(v59 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8));
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v62 = isa;
      v100[0] = isa;
      sub_1001675F4(v100);
      objc_autoreleasePoolPop(v92);
      v63 = [v62 modificationDate];

      if (v63)
      {
        v64 = v87;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v95 + 8))(v25, v34);
        v65 = v85;
        v66 = v90;
        v67 = v96;
        v96(v85, v64, v90);
        v82(v65, 0, 1, v66);
        v67(v86, v65, v66);
      }

      else
      {
        v82(v85, 1, 1, v90);
        v92 = objc_autoreleasePoolPush();
        v70 = sub_100169D38(*v60, *(v60 + 1));
        if (!v70)
        {
          v70 = sub_1000F89F4().super.isa;
        }

        v71 = v70;
        v100[0] = v70;
        sub_1001675F4(v100);
        objc_autoreleasePoolPop(v92);
        v72 = [v71 creationDate];

        if (v72)
        {
          v73 = v87;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v95 + 8))(v25, v34);
          v74 = v84;
          v75 = v73;
          v76 = v90;
          v77 = v96;
          v96(v84, v75, v90);
          v82(v74, 0, 1, v76);
          v77(v86, v74, v76);
        }

        else
        {
          v78 = v84;
          v79 = v90;
          v82(v84, 1, 1, v90);
          static Date.now.getter();
          (*(v95 + 8))(v25, v34);
          if ((v98)(v78, 1, v79) != 1)
          {
            sub_1000EEE6C(v84, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v98)(v85, 1, v90) != 1)
        {
          sub_1000EEE6C(v85, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v98)(v89, 1, v90) != 1)
      {
        sub_1000EEE6C(v89, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v68 = *(v95 + 8);
      v69 = v35;
      v68(v25, v34);
      v96(v86, v89, v90);
    }

    v80 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v88 + 40))(v35 + v80, v86, v90);
    swift_endAccess();
    sub_1000EF824(v97);
  }

  return v35;
}

unint64_t sub_100166B78(char a1)
{
  result = 0x74654D64756F6C63;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
    case 12:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x7473654764616568;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100166D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100169134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100166D2C(uint64_t a1)
{
  v2 = sub_100168D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166D68(uint64_t a1)
{
  v2 = sub_100168D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AADeviceRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AADeviceRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AADeviceRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - v10;
  v12 = sub_1000EE870(&unk_1002F9580, &qword_100229520);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100168D64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8);
  v38 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata);
  v39 = v18;
  v37 = 0;
  sub_1000EE9F4(v38, v18);
  sub_1000EF9D8();
  v19 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {
    sub_1000EF870(v38, v39);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v36 = v7;
    sub_1000EF870(v38, v39);
    LOBYTE(v38) = 1;
    type metadata accessor for UUID();
    sub_1001695B4(&qword_1002F8340, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
    v22 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8);
    LOBYTE(v38) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig);
    LOBYTE(v38) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff);
    LOBYTE(v38) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(v2 + v25, v11);
    v37 = 5;
    sub_1001695B4(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
    v26 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig);
    v37 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled);
    v37 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig);
    v37 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode);
    v37 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed);
    v37 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability);
    v37 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v34 + 16))(v36, v2 + v32, v35);
    v40 = 12;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v34 + 8))(v36, v35);
    return (*(v13 + 8))(v16, 0);
  }
}

uint64_t sub_100167500()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_100167544@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001675F4(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v7 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v9 = &v53 - v8;
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v53 - v14;
  __chkstk_darwin(v15);
  v57 = &v53 - v16;
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100226100;
  v18 = *a1;
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000EE954();
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  [v18 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v61 = v2;
  v23 = (v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
  v25 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
  v24 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8);
  if (!*(&v62 + 1))
  {
    goto LABEL_7;
  }

  if (v62 == __PAIR128__(v24, v25))
  {

    goto LABEL_8;
  }

  v26 = *v23;
  v27 = v23[1];
  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v28 & 1) == 0)
  {
LABEL_7:
    *(&v63 + 1) = &type metadata for String;
    v64 = &protocol witness table for String;
    *&v62 = v25;
    *(&v62 + 1) = v24;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v29 = v61;
  v30 = *(v61 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig);
  if (BYTE1(v62))
  {
    v31 = v57;
  }

  else
  {
    v31 = v57;
    if (v62 == v30)
    {
      goto LABEL_12;
    }
  }

  *(&v63 + 1) = &type metadata for UInt8;
  v64 = &protocol witness table for UInt8;
  LOBYTE(v62) = v30;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_12:
  v60 = 0xD000000000000017;
  CKRecordKeyValueSetting.subscript.getter();
  v32 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff);
  if (BYTE1(v62))
  {
    v33 = v56;
  }

  else
  {
    v33 = v56;
    if (v62 == v32)
    {
      goto LABEL_16;
    }
  }

  *(&v63 + 1) = &type metadata for Int8;
  v64 = &protocol witness table for Int8;
  LOBYTE(v62) = v32;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_16:
  v56 = "allowNoiseManagementOff";
  v34 = v59;
  CKRecordKeyValueSetting.subscript.getter();
  v35 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v36 = v61;
  swift_beginAccess();
  v37 = *(v55 + 48);
  sub_10013250C(v31, v9);
  v38 = v36 + v35;
  v39 = v34;
  sub_10013250C(v38, &v9[v37]);
  v40 = *(v58 + 48);
  if (v40(v9, 1, v34) == 1)
  {
    sub_1000EEE6C(v31, &qword_1002F7EF0, &unk_100226C90);
    if (v40(&v9[v37], 1, v34) == 1)
    {
      sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_26;
    }
  }

  else
  {
    sub_10013250C(v9, v33);
    if (v40(&v9[v37], 1, v34) != 1)
    {
      v51 = v53;
      (*(v58 + 32))(v53, &v9[v37], v34);
      sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date);
      LODWORD(v55) = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v58 + 8);
      v52(v51, v59);
      sub_1000EEE6C(v57, &qword_1002F7EF0, &unk_100226C90);
      v52(v33, v59);
      v39 = v59;
      sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
      if (v55)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    sub_1000EEE6C(v31, &qword_1002F7EF0, &unk_100226C90);
    (*(v58 + 8))(v33, v34);
  }

  sub_1000EEE6C(v9, &qword_1002F8B30, &unk_1002288C0);
LABEL_22:
  v41 = v54;
  sub_10013250C(v61 + v35, v54);
  if (v40(v41, 1, v39) == 1)
  {
    sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
  }

  else
  {
    *(&v63 + 1) = v39;
    v64 = &protocol witness table for Date;
    v42 = sub_100133584(&v62);
    (*(v58 + 32))(v42, v41, v39);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_26:
  CKRecordKeyValueSetting.subscript.getter();
  v43 = v61;
  v44 = *(v61 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig);
  if ((BYTE1(v62) & 1) != 0 || v62 != v44)
  {
    *(&v63 + 1) = &type metadata for UInt8;
    v64 = &protocol witness table for UInt8;
    LOBYTE(v62) = v44;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v45 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled);
  if ((BYTE1(v62) & 1) != 0 || v62 != v45)
  {
    *(&v63 + 1) = &type metadata for Int8;
    v64 = &protocol witness table for Int8;
    LOBYTE(v62) = v45;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v46 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig);
  if ((BYTE1(v62) & 1) != 0 || v62 != v46)
  {
    *(&v63 + 1) = &type metadata for UInt8;
    v64 = &protocol witness table for UInt8;
    LOBYTE(v62) = v46;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v47 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode);
  if ((BYTE1(v62) & 1) != 0 || v62 != v47)
  {
    *(&v63 + 1) = &type metadata for Int8;
    v64 = &protocol witness table for Int8;
    LOBYTE(v62) = v47;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v48 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed);
  if ((BYTE1(v62) & 1) != 0 || v62 != v48)
  {
    *(&v63 + 1) = &type metadata for Int8;
    v64 = &protocol witness table for Int8;
    LOBYTE(v62) = v48;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability);
  if ((BYTE1(v62) & 1) != 0 || v62 != v49)
  {
    *(&v63 + 1) = &type metadata for UInt8;
    v64 = &protocol witness table for UInt8;
    LOBYTE(v62) = v49;
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001680E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100168160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AADeviceRecord());
  result = AADeviceRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001681DC(unsigned __int8 *a1)
{
  v2 = v1;
  v55 = type metadata accessor for Date();
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v55);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v50[-v10];
  v12 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v50[-v17];
  __chkstk_darwin(v19);
  v21 = &v50[-v20];
  if (sub_10016886C(a1))
  {
    v22 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig];
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) != v22)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) = v22;
    }

    v52 = v15;
    v53 = v7;
    v23 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff];
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) != v23)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) = v23;
    }

    v24 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(&a1[v24], v21);
    v25 = v21;
    v26 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    v27 = *(v8 + 48);
    sub_10013250C(v1 + v26, v11);
    v54 = v25;
    sub_10013250C(v25, &v11[v27]);
    v28 = *(v4 + 48);
    v29 = v55;
    if (v28(v11, 1, v55) == 1)
    {
      v30 = v29;
      if (v28(&v11[v27], 1, v29) == 1)
      {
        sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
        v31 = v53;
LABEL_18:
        v40 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) != v40)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) = v40;
        }

        v41 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled];
        v42 = v54;
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) != v41)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) = v41;
        }

        v43 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) != v43)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) = v43;
        }

        v44 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) != v44)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) = v44;
        }

        v45 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) != v45)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) = v45;
        }

        v46 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability];
        if (qword_1002F7AB0 != -1)
        {
          swift_once();
        }

        if (v46 != byte_1002F9547 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) != v46)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) = v46;
        }

        static Date.now.getter();
        sub_1000EEE6C(v42, &qword_1002F7EF0, &unk_100226C90);
        v47 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
        swift_beginAccess();
        (*(v4 + 40))(v2 + v47, v31, v30);
        return swift_endAccess();
      }
    }

    else
    {
      sub_10013250C(v11, v18);
      if (v28(&v11[v27], 1, v29) != 1)
      {
        v48 = &v11[v27];
        v31 = v53;
        (*(v4 + 32))(v53, v48, v29);
        sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v4 + 8);
        v49(v31, v29);
        v49(v18, v29);
        sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
        v30 = v29;
        if (v51)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      (*(v4 + 8))(v18, v29);
      v30 = v29;
    }

    sub_1000EEE6C(v11, &qword_1002F8B30, &unk_1002288C0);
    v31 = v53;
LABEL_17:
    v39 = v52;
    sub_10013250C(v54, v52);
    swift_beginAccess();
    sub_10013261C(v39, v2 + v26);
    swift_endAccess();
    goto LABEL_18;
  }

  static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  v33 = a1;
  v34 = [v33 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000EE954();
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10016886C(unsigned __int8 *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed))
  {
    v19 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability];
    if (v19 == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability))
    {
      v20 = a1;
    }

    else
    {
      v31 = qword_1002F7AB0;
      v22 = a1;
      if (v31 != -1)
      {
        v31 = v22;
        swift_once();
        v22 = v31;
      }

      if (v19 != byte_1002F9547)
      {

        v21 = 1;
        return v21 & 1;
      }
    }

    v23 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(&a1[v23], v18);
    v24 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    v25 = *(v8 + 48);
    sub_10013250C(v18, v11);
    sub_10013250C(v1 + v24, &v11[v25]);
    v26 = *(v4 + 48);
    if (v26(v11, 1, v3) == 1)
    {

      sub_1000EEE6C(v18, &qword_1002F7EF0, &unk_100226C90);
      if (v26(&v11[v25], 1, v3) == 1)
      {
        sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
LABEL_18:
        v21 = 0;
        return v21 & 1;
      }
    }

    else
    {
      sub_10013250C(v11, v15);
      if (v26(&v11[v25], 1, v3) != 1)
      {
        (*(v4 + 32))(v7, &v11[v25], v3);
        sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();

        v29 = *(v4 + 8);
        v29(v7, v3);
        sub_1000EEE6C(v18, &qword_1002F7EF0, &unk_100226C90);
        v29(v15, v3);
        sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
        v21 = v28 ^ 1;
        return v21 & 1;
      }

      sub_1000EEE6C(v18, &qword_1002F7EF0, &unk_100226C90);
      (*(v4 + 8))(v15, v3);
    }

    sub_1000EEE6C(v11, &qword_1002F8B30, &unk_1002288C0);
    v21 = 1;
    return v21 & 1;
  }

  v21 = 1;
  return v21 & 1;
}

unint64_t sub_100168D64()
{
  result = qword_1002F9570;
  if (!qword_1002F9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9570);
  }

  return result;
}

uint64_t type metadata accessor for AADeviceRecord()
{
  result = qword_1002F95D0;
  if (!qword_1002F95D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100168E04(uint64_t a1)
{
  result = sub_1001695B4(&qword_1002F9590, type metadata accessor for AADeviceRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168E5C(uint64_t a1)
{
  *(a1 + 8) = sub_1001695B4(&qword_1002F9598, type metadata accessor for AADeviceRecord);
  result = sub_1001695B4(&qword_1002F95A0, type metadata accessor for AADeviceRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_100168EE8()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001328D8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Date();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100169030()
{
  result = qword_1002F95E8;
  if (!qword_1002F95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F95E8);
  }

  return result;
}

unint64_t sub_100169088()
{
  result = qword_1002F95F0;
  if (!qword_1002F95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F95F0);
  }

  return result;
}

unint64_t sub_1001690E0()
{
  result = qword_1002F95F8;
  if (!qword_1002F95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F95F8);
  }

  return result;
}

uint64_t sub_100169134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026E230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026E270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026E290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026E2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7473654764616568 && a2 == 0xEF65646F4D657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010026E2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_100169560()
{
  result = qword_1002F9610;
  if (!qword_1002F9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9610);
  }

  return result;
}

uint64_t sub_1001695B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100169610()
{
  result = qword_1002F9620;
  if (!qword_1002F9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9620);
  }

  return result;
}

uint64_t sub_100169664(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1001698E0(v2, a1, a2, &v7);
  objc_autoreleasePoolPop(v5);
  return v7;
}

id sub_10016971C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(id *))
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100169D38(*v4, *(v4 + 8));
  if (!v8)
  {
    v8 = a3(v4);
  }

  v11 = v8;
  v9 = v8;
  a4(&v11);
  objc_autoreleasePoolPop(v7);
  return v9;
}

void *sub_1001697BC(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v7 = isa;
  v5 = isa;
  sub_10011A7B0(&v7);
  objc_autoreleasePoolPop(v3);
  return v5;
}

id sub_100169858(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(id *))
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100169D38(*(v4 + *(a1 + 24)), *(v4 + *(a1 + 24) + 8));
  if (!v9)
  {
    v9 = a3(v4);
  }

  v12 = v9;
  v10 = v9;
  a4(&v12);
  objc_autoreleasePoolPop(v8);
  return v10;
}

uint64_t sub_1001698E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(a3 + 32))(a2, a3);
  v10 = v9;
  isa = sub_100169D38(v8, v9);
  sub_1000EF870(v8, v10);
  if (!isa)
  {
    isa = sub_1001699AC(a1, a2, a3).super.isa;
  }

  v13 = isa;
  result = (*(a3 + 64))(&v13, a2, a3);
  *a4 = isa;
  return result;
}

CKRecord sub_1001699AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  (*(*(a3 + 8) + 32))(a2);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v13 = (*(a3 + 24))(a2, a3);
  v15 = v14;
  v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16._object = v17;
  v18._countAndFlagsBits = v13;
  v18._object = v15;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
  v20._countAndFlagsBits = v10;
  v20._object = v12;
  v21.super.isa = CKRecordID.init(recordName:zoneID:)(v20, isa).super.isa;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100226100;
  v23 = *(a3 + 16);
  v24 = v23(a2, a3);
  v26 = v25;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1000EE954();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v27._countAndFlagsBits = v23(a2, a3);
  return CKRecord.init(recordType:recordID:)(v27, v21);
}

id sub_100169C78()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_100169D38(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
LABEL_8:
    if (v3 != v4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v2)
  {
    v3 = a1;
    v4 = a1 >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_1000EE9F4(a1, a2);
  v8 = sub_100169C78();
  sub_1000EF870(a1, a2);
  v10 = [objc_allocWithZone(CKRecord) initWithCoder:v8];
  if (!v10)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v11 = v10;

  return v11;
}

id sub_100169F94()
{
  result = [objc_allocWithZone(type metadata accessor for CloudPushService()) init];
  qword_100300E00 = result;
  return result;
}

id sub_10016A020()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates] = _swiftEmptyDictionarySingleton;
  v17 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue;
  v16[1] = sub_100115C10();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10016D834(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = &v0[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushEnvironment];
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v12;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection] = 0;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher] = 0;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher] = 0;
  v13 = type metadata accessor for CloudPushService();
  v18.receiver = v1;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, "init");
  static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  return v14;
}

void sub_10016A394()
{
  v1 = objc_opt_self();
  if (![v1 isBuddyComplete])
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_10016D788;
    v24 = v12;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1001742E0;
    v22 = &unk_1002BFF90;
    v13 = _Block_copy(&aBlock);

    v14 = [v1 addBuddyCompleteObserver:v13];
    _Block_release(v13);
    v15 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher;
    goto LABEL_15;
  }

  v2 = [v1 isFirstUnlocked];
  static os_log_type_t.default.getter();
  if (!v2)
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_10016D790;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1001742E0;
    v22 = &unk_1002BFFB8;
    v17 = _Block_copy(&aBlock);

    v14 = [v1 addFirstUnlockObserver:v17];
    _Block_release(v17);
    v15 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher;
LABEL_15:
    v18 = *&v0[v15];
    *&v0[v15] = v14;

    return;
  }

  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v0;
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    String.append(_:)(v9);

    v10 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
    v11 = sub_100102B48("com.apple.bluetooth.user.setupAPS", 33, 2);
    sub_10016AA9C(v11, v8, 0xD000000000000018, 0x800000010026E7C0, 0xD00000000000001BLL, 0x800000010026E7A0);
  }

  else
  {
    static os_log_type_t.error.getter();

    os_log(_:dso:log:_:_:)();
  }
}

void sub_10016A840()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100226100;
  v1 = [objc_opt_self() isBuddyComplete];
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 64) = &protocol witness table for Bool;
  *(v0 + 32) = v1;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10016A394();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher] = 0;
  }
}

void sub_10016A9A4()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10016A394();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher];
    *&v2[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher] = 0;
  }
}

uint64_t sub_10016AA9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v29 = *(v15 - 8);
  v30 = v15;
  v16 = *(v29 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100115C10();
  v28 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v20 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a1;
  aBlock[4] = sub_10016D798;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0008;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  v23 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v31 + 8))(v14, v11);
  return (*(v29 + 8))(v18, v30);
}

uint64_t sub_10016ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushEnvironment);
  v9 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushEnvironment + 8);
  v10 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v11 = objc_allocWithZone(APSConnection);

  v12 = v10;
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 initWithEnvironmentName:v13 namedDelegatePort:v14 queue:v12];

  v16 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection;
  v17 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection);
  *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection) = v15;
  v18 = v15;

  if (v18)
  {
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    *(v19 + 32) = a4;
    *(v19 + 40) = a5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 _setEnabledTopics:isa];
  }

  v21 = *(a1 + v16);
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    [v22 requestTokenForTopic:v23 identifier:0];

    v24 = *(a1 + v16);
    if (v24)
    {
      [v24 setDelegate:a1];
    }
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10016B030(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100163048;
  *(v6 + 24) = v5;
  v10[4] = sub_1001156A8;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100174328;
  v10[3] = &unk_1002BFF68;
  v7 = _Block_copy(v10);
  swift_unknownObjectRetain();

  v8 = v3;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_10016B1BC(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    static os_log_type_t.default.getter();
    if (qword_1002F7AD0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226C80;
    swift_unknownObjectRetain();
    sub_1000EE870(&unk_1002F96E8, &qword_100229830);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    v6 = sub_1000EE954();
    *(v2 + 64) = v6;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    v7 = [a1 cloudContainerIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v2 + 96) = &type metadata for String;
    *(v2 + 104) = v6;
    *(v2 + 72) = v8;
    *(v2 + 80) = v10;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [a1 cloudContainerIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v18 = *&v12[v17];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *&v12[v17];
      *&v12[v17] = 0x8000000000000000;
      sub_1000F958C(a1, v14, v16, isUniquelyReferenced_nonNull_native);

      *&v12[v17] = v20;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10016B424(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001630C0;
  *(v6 + 24) = v5;
  v10[4] = sub_1000F2B98;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100174328;
  v10[3] = &unk_1002BFEF0;
  v7 = _Block_copy(v10);
  swift_unknownObjectRetain();

  v8 = v3;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016B5B0(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F96F8, &qword_100229838);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000EE954();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:_:_:)();

  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = [swift_unknownObjectRetain() cloudContainerIdentifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      swift_beginAccess();
      sub_10015C5A8(v9, v11);
      swift_endAccess();

      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10016B7A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_10016B8D4(void *a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  [a1 didReceiveWithToken:isa forTopic:v3 identifier:v4];
}

uint64_t sub_10016BB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_10016C660;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BFDD8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

void sub_10016BE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
    swift_beginAccess();
    v8 = *(*&v6[v7] + 16);
    static os_log_type_t.default.getter();
    if (v8)
    {
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100226C80;
      v10 = *(*&v6[v7] + 16);
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = v10;

      sub_1000EE870(&unk_1002F96E8, &qword_100229830);
      v11 = Dictionary.description.getter();
      v13 = v12;

      *(v9 + 96) = &type metadata for String;
      *(v9 + 104) = sub_1000EE954();
      *(v9 + 72) = v11;
      *(v9 + 80) = v13;
      os_log(_:dso:log:_:_:)();

      swift_unknownObjectWeakInit();
      v14 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
      v15 = sub_100102B48("com.apple.bluetooth.user.services.aps.processPush", 49, 2);
      sub_10016D360(v16, a2, a3);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }
  }
}

uint64_t sub_10016C0C0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
    v11 = result;
    swift_beginAccess();
    v12 = *&v11[v10];

    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = v48;
    v35 = (v3 + 8);
    v34 = (v6 + 8);
    v44 = v12;

    v18 = 0;
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_7:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v21 = v20 | (v19 << 6);
          v22 = (*(v44 + 48) + 16 * v21);
          v23 = *v22;
          v24 = v22[1];
          v25 = *(*(v44 + 56) + 8 * v21);

          v26 = [swift_unknownObjectRetain() pushDelegateQueue];
          if (v26)
          {
            v41 = v26;
            v27 = swift_allocObject();
            v28 = v43;
            v27[2] = v42;
            v27[3] = v28;
            v27[4] = v23;
            v27[5] = v24;
            v27[6] = v25;
            v48[2] = sub_10016D718;
            v48[3] = v27;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v48[0] = sub_1001742E0;
            v48[1] = &unk_1002BFE78;
            v29 = _Block_copy(aBlock);

            swift_unknownObjectRetain();

            static DispatchQoS.unspecified.getter();
            v46 = _swiftEmptyArrayStorage;
            sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
            v40 = v24;
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
            v30 = v38;
            v31 = v39;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v32 = v45;
            v33 = v41;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v29);
            swift_unknownObjectRelease();

            (*v35)(v30, v31);
            (*v34)(v32, v37);

            v18 = v19;
            if (!v16)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v42(v25);
            swift_unknownObjectRelease();

            v18 = v19;
            if (!v16)
            {
              goto LABEL_7;
            }
          }

LABEL_11:
          v19 = v18;
        }
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10016C578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudPushService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10016C66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016C684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD0 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_1000EE9F4(a1, a2);
    if (IsAppleInternalBuild())
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100226100;
      v6 = Data.base64EncodedString(options:)(0);
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_1000EE954();
      *(v5 + 32) = v6;
      os_log(_:dso:log:_:_:)();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1000EE9F4(a1, a2);
    sub_10016BB38(sub_10016D7D8, v7);

    return sub_1000FF5CC(a1, a2);
  }
}

uint64_t sub_10016C89C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD0 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_1000FF5B8(a1, a2);

    if (IsAppleInternalBuild())
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1002289A0;
      v17 = Data.base64EncodedString(options:)(0);
      *(v16 + 56) = &type metadata for String;
      v18 = sub_1000EE954();
      *(v16 + 32) = v17;
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v18;
      *(v16 + 64) = v18;
      *(v16 + 72) = a3;
      *(v16 + 80) = a4;
      *(v16 + 136) = &type metadata for String;
      *(v16 + 144) = v18;
      *(v16 + 112) = a5;
      *(v16 + 120) = a6;

      os_log(_:dso:log:_:_:)();
    }

    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    v19[7] = a6;
    sub_1000EE9F4(a1, a2);
    sub_10016BB38(sub_10016D7C8, v19);

    return sub_1000FF5CC(a1, a2);
  }
}

void sub_10016CB2C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = v11;
    v14 = a1;
    v15 = [v14 userInfo];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v63 = v1;
    v64 = v14;
    v56 = v13;
    v57 = v9;
    v58 = v7;
    v59 = v4;
    v60 = v3;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    v62 = xmmword_100226100;
    *(v19 + 16) = xmmword_100226100;
    aBlock[0] = v18;
    v20 = v18;
    sub_1000EE870(&qword_1002F93D0, &qword_100229320);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v19 + 56) = &type metadata for String;
    v24 = sub_1000EE954();
    *(v19 + 64) = v24;
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v25 = v20;
    os_log(_:dso:log:_:_:)();

    if (v20 && (v26 = [v20 containerIdentifier]) != 0)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v63;
      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
      v31 = v63;
    }

    if (v30 == 0xE000000000000000)
    {
LABEL_24:

      static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      v49 = swift_allocObject();
      *(v49 + 16) = v62;
      aBlock[0] = v18;
      v50 = Optional.debugDescription.getter();
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v24;
      *(v49 + 32) = v50;
      *(v49 + 40) = v51;
      os_log(_:dso:log:_:_:)();

      v52 = swift_allocObject();
      v53 = v64;
      *(v52 + 16) = v64;
      v54 = v53;
      sub_10016BB38(sub_10016D7A8, v52);

      return;
    }

LABEL_11:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v32 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
      swift_beginAccess();
      v33 = *&v31[v32];
      if (*(v33 + 16))
      {

        v34 = sub_1000F8C5C(v28, v30);
        if (v35)
        {
          v63 = v20;
          v36 = *(*(v33 + 56) + 8 * v34);
          swift_unknownObjectRetain();

          LODWORD(v62) = static os_log_type_t.default.getter();
          if (qword_1002F7AD0 != -1)
          {
            swift_once();
          }

          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100226C80;
          *(v37 + 56) = &type metadata for String;
          *(v37 + 64) = v24;
          *(v37 + 32) = v28;
          *(v37 + 40) = v30;
          aBlock[0] = v18;
          v38 = Optional.debugDescription.getter();
          *(v37 + 96) = &type metadata for String;
          *(v37 + 104) = v24;
          *(v37 + 72) = v38;
          *(v37 + 80) = v39;
          os_log(_:dso:log:_:_:)();

          v40 = [v36 pushDelegateQueue];
          if (v40)
          {
            v41 = v40;
            v42 = swift_allocObject();
            v43 = v64;
            *(v42 + 16) = v36;
            *(v42 + 24) = v43;
            aBlock[4] = sub_10016D7B8;
            aBlock[5] = v42;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001742E0;
            aBlock[3] = &unk_1002C0080;
            v44 = _Block_copy(aBlock);
            v45 = v43;
            swift_unknownObjectRetain();
            v46 = v56;
            static DispatchQoS.unspecified.getter();
            v65 = _swiftEmptyArrayStorage;
            sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
            v47 = v58;
            v48 = v60;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v44);

            swift_unknownObjectRelease();
            (*(v59 + 8))(v47, v48);
            (*(v57 + 8))(v46, v61);
          }

          else
          {
            v55 = v64;
            [v36 didReceiveWithMessage:v64];
            swift_unknownObjectRelease();
          }

          return;
        }
      }
    }

    goto LABEL_24;
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

char *sub_10016D360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = v3;
    v15 = *&result[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a2;
    v23 = v16;
    v17[4] = a3;
    aBlock[4] = sub_10016D70C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BFE28;
    v18 = _Block_copy(aBlock);
    v22 = v15;

    static DispatchQoS.unspecified.getter();
    aBlock[10] = _swiftEmptyArrayStorage;
    sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    v19 = v26;
    v21 = v10;
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v19 + 8))(v9, v6);
    (*(v27 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_10016D6CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016D748()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10016D7C8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  sub_10016B8D4(a1);
}

void sub_10016D7D8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 didReceiveWithPublicToken:isa];
}

uint64_t sub_10016D834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016D8BC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for AudioAccessoryFeatures;
  v7 = sub_1000F1874();
  v43 = v7;
  v8 = isFeatureEnabled(_:)();
  result = sub_1000EF824(&v41._countAndFlagsBits);
  if (v8)
  {
    v10._object = 0x8000000100267570;
    v10._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0xD00000000000002BLL;
    v11._object = 0x80000001002675A0;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD00000000000002ELL;
    v12._object = 0x800000010026EB70;
    String.append(_:)(v12);
    v13._object = 0x8000000100267600;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    static os_log_type_t.default.getter();
    if (qword_1002F7B00 != -1)
    {
      swift_once();
    }

    v14 = _swiftEmptyArrayStorage;
    v40 = qword_100300E50;
    os_log(_:dso:log:_:_:)();
    sub_100103934();
    v42 = &type metadata for AudioAccessoryFeatures;
    v43 = v7;
    v15 = isFeatureEnabled(_:)();
    sub_1000EF824(&v41._countAndFlagsBits);
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v18 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v3 = v18;
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      goto LABEL_11;
    }

    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v16 = sub_1000EE91C(v2, qword_100300B10);
      (*(v3 + 16))(v6, v16, v2);
      v14 = sub_10018E0FC(v6);

      v17 = *(v3 + 8);
      v3 += 8;
      v17(v6, v2);
LABEL_11:

      if (v14 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
        }
      }

      if (v19 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v20 = 0;
    v39 = v14 & 0xC000000000000001;
    v38 = xmmword_100226100;
    v37[1] = a1;
    v21 = v14;
    do
    {
      if (v39)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v24 = swift_allocObject();
      *(v24 + 16) = v38;
      v25 = v23;
      v26 = [v25 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1000EE954();
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      os_log(_:dso:log:_:_:)();

      v30 = v25;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v41._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v41._object = 0xE700000000000000;
      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 10;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);

      String.append(_:)(v41);

      v14 = v21;
    }

    while (v19 != v20);
  }

  return result;
}

void sub_10016DDD8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    v11 = sub_10016DF44(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

id sub_10016DF44(uint64_t a1, uint64_t a2)
{
  v15[3] = &type metadata for AudioAccessoryFeatures;
  v15[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v15);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100103934();
  v5 = sub_1001B2908(a1, a2);

  if (!v5)
  {
    static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    os_log(_:dso:log:_:_:)();

    return 0;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = v5;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = sub_10016EA98();

  return v12;
}

uint64_t sub_10016E1B8(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for AudioAccessoryFeatures;
  v17 = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  v6 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v19;
  v7[5] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10016FC08;
  *(v8 + 24) = v7;
  v17 = sub_1000F2B98;
  v18 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  v16 = &unk_1002C0260;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  v11 = v2;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = v19;

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016E37C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  os_log(_:dso:log:_:_:)();

  v7 = sub_10016DF44(a1, a2);
  v8 = *a3;
  *a3 = v7;

  return _objc_release_x1(v7, v8);
}

uint64_t sub_10016E518(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD000000000000011, 0x800000010026EAC0, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v13 = 0;
    a2();
  }
}

uint64_t sub_10016E6E4(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_10016E788(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    UUID.init()();
    v13 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord());
    v14 = a4;
    v17 = sub_1000F4D10(v10, 0, 0xC000000000000000, v14);
    v18 = static os_log_type_t.default.getter();
    v25[3] = v18;
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v20 = v14;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001B204C(v17, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

id sub_10016EA98()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
  v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8);
  v4 = objc_allocWithZone(AAProxCardsInfo);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithBluetoothAddress:v5];

  [v6 setFitEducationNotificationsShownCount:*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount)];
  v7 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = *(v1 + v7);

    v10 = sub_1000F8C5C(0x62756F4465736163, 0xED0000706154656CLL);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);

      if (v12)
      {
        [v6 setCaseDoubleTapVersion:v12];
      }
    }

    else
    {
    }
  }

  v13 = *(v1 + v7);
  if (*(v13 + 16))
  {
    v14 = *(v1 + v7);

    v15 = sub_1000F8C5C(0xD000000000000011, 0x80000001002670A0);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);

      if (v17)
      {
        [v6 setChargingRemindersVersion:v17];
      }
    }

    else
    {
    }
  }

  v18 = *(v1 + v7);
  if (*(v18 + 16))
  {
    v19 = *(v1 + v7);

    v20 = sub_1000F8C5C(0xD00000000000001ELL, 0x80000001002670C0);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v20);

      if (v22)
      {
        [v6 setDynamicEndOfChargeNotificationVersion:v22];
      }
    }

    else
    {
    }
  }

  v23 = *(v1 + v7);
  if (*(v23 + 16))
  {
    v24 = *(v1 + v7);

    v25 = sub_1000F8C5C(0x7473654764616568, 0xEC00000073657275);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      if (v27)
      {
        [v6 setHeadGesturesVersion:v27];
      }
    }

    else
    {
    }
  }

  v28 = *(v1 + v7);
  if (*(v28 + 16))
  {
    v29 = *(v1 + v7);

    v30 = sub_1000F8C5C(0x41676E6972616568, 0xED00007473697373);
    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v30);

      if (v32)
      {
        [v6 setHearingAssistVersion:v32];
      }
    }

    else
    {
    }
  }

  v33 = *(v1 + v7);
  if (*(v33 + 16))
  {
    v34 = *(v1 + v7);

    v35 = sub_1000F8C5C(0x54676E6972616568, 0xEB00000000747365);
    if (v36)
    {
      v37 = *(*(v33 + 56) + 8 * v35);

      if (v37)
      {
        [v6 setHearingTestVersion:v37];
      }
    }

    else
    {
    }
  }

  v38 = *(v1 + v7);
  if (*(v38 + 16))
  {
    v39 = *(v1 + v7);

    v40 = sub_1000F8C5C(0x7461527472616568, 0xE900000000000065);
    if (v41)
    {
      v42 = *(*(v38 + 56) + 8 * v40);

      if (v42)
      {
        [v6 setHeartRateVersion:v42];
      }
    }

    else
    {
    }
  }

  v43 = *(v1 + v7);
  if (*(v43 + 16))
  {
    v44 = *(v1 + v7);

    v45 = sub_1000F8C5C(0xD000000000000011, 0x8000000100267110);
    if (v46)
    {
      v47 = *(*(v43 + 56) + 8 * v45);

      if (v47)
      {
        [v6 setNewChargingStatusVersion:v47];
      }
    }

    else
    {
    }
  }

  v48 = *(v1 + v7);
  if (*(v48 + 16))
  {
    v49 = *(v1 + v7);

    v50 = sub_1000F8C5C(0xD000000000000011, 0x8000000100267130);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);

      if (v52)
      {
        [v6 setPauseMediaOnSleepVersion:v52];
      }
    }

    else
    {
    }
  }

  v53 = *(v1 + v7);
  if (*(v53 + 16))
  {
    v54 = *(v1 + v7);

    v55 = sub_1000F8C5C(0xD000000000000012, 0x8000000100267150);
    if (v56)
    {
      v57 = *(*(v53 + 56) + 8 * v55);

      if (v57)
      {
        [v6 setPersonalTranslatorVersion:v57];
      }
    }

    else
    {
    }
  }

  v58 = *(v1 + v7);
  if (*(v58 + 16))
  {
    v59 = *(v1 + v7);

    v60 = sub_1000F8C5C(0xD000000000000013, 0x8000000100267170);
    if (v61)
    {
      v62 = *(*(v58 + 56) + 8 * v60);

      if (v62)
      {
        [v6 setRemoteCameraControlVersion:v62];
      }
    }

    else
    {
    }
  }

  v63 = *(v1 + v7);
  if (*(v63 + 16))
  {
    v64 = *(v1 + v7);

    v65 = sub_1000F8C5C(0x6F69647541627375, 0xE800000000000000);
    if (v66)
    {
      v67 = *(*(v63 + 56) + 8 * v65);

      if (v67)
      {
        [v6 setUsbAudioVersion:v67];
      }
    }

    else
    {
    }
  }

  v68 = *(v1 + v7);
  if (*(v68 + 16))
  {
    v69 = *(v1 + v7);

    v70 = sub_1000F8C5C(0x6175516563696F76, 0xEC0000007974696CLL);
    if (v71)
    {
      v72 = *(*(v68 + 56) + 8 * v70);

      if (v72)
      {
        [v6 setVoiceQualityVersion:v72];
      }
    }

    else
    {
    }
  }

  v73 = *(v1 + v7);
  if (*(v73 + 16))
  {
    v74 = *(v1 + v7);

    v75 = sub_1000F8C5C(0x77654E7374616877, 0xE800000000000000);
    if (v76)
    {
      v77 = *(*(v73 + 56) + 8 * v75);

      if (v77)
      {
        [v6 setWhatsNewVersion:v77];
      }
    }

    else
    {
    }
  }

  return v6;
}

uint64_t sub_10016F124(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a4);
  v16 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v16)
  {
    v17 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_1000F2BA0;
    v20 = v24;
    v19[4] = v15;
    v19[5] = v20;
    v19[6] = a2;
    v30 = sub_10016FC14;
    v31 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002C02D8;
    v21 = _Block_copy(aBlock);
    v22 = v17;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v26 + 8))(v10, v7);
    (*(v11 + 8))(v14, v25);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t sub_10016F48C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v26 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v31 = &type metadata for AudioAccessoryFeatures;
  v32 = sub_1000F1874();
  _Block_copy(a4);
  v16 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v16)
  {
    v17 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_1000F2C44;
    v20 = v26;
    v19[4] = v15;
    v19[5] = v20;
    v19[6] = a2;
    v32 = sub_10016FBF0;
    v33 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v31 = &unk_1002C01E8;
    v21 = _Block_copy(aBlock);
    v22 = v17;

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v28 + 8))(v10, v7);
    (*(v11 + 8))(v14, v27);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v23 = 4;
    v24 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v24);
  }
}

uint64_t sub_10016F830(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v27 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v31 = &type metadata for AudioAccessoryFeatures;
  v32 = sub_1000F1874();
  _Block_copy(a3);
  v15 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v15)
  {
    v26 = v10;
    v16 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1000F29F0;
    v19 = v27;
    v18[4] = v14;
    v18[5] = v19;
    v32 = sub_10016FBCC;
    v33 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v31 = &unk_1002C0170;
    v20 = _Block_copy(aBlock);
    v21 = v16;

    v22 = v19;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v6 + 8))(v9, v5);
    (*(v28 + 8))(v13, v26);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v23 = 4;
    v24 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v24);
  }
}

uint64_t sub_10016FBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10016FC5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10016FCC0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7._object = 0x8000000100267570;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v8._object = 0x80000001002675A0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000031;
  v9._object = 0x800000010026ED50;
  String.append(_:)(v9);
  v10._object = 0x8000000100267600;
  v10._countAndFlagsBits = 0xD00000000000002CLL;
  v36 = a1;
  String.append(_:)(v10);
  static os_log_type_t.default.getter();
  if (qword_1002F7B00 != -1)
  {
    swift_once();
  }

  v35 = qword_100300E50;
  os_log(_:dso:log:_:_:)();
  sub_100103934();
  if (![objc_opt_self() isFirstUnlocked])
  {
    v14 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v3 = v14;
      swift_once();
    }

    v12 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();

    goto LABEL_9;
  }

  sub_100192340();
  if (qword_1002F7A60 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v11 = sub_1000EE91C(v2, qword_100300C40);
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_10018E124(v6);

    v13 = *(v3 + 8);
    v3 += 8;
    v13(v6, v2);
LABEL_9:
    if (v12 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
      }
    }

    else
    {
      v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
      }
    }

    if (v2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v15 = 0;
  v34 = v12 & 0xC000000000000001;
  v33 = xmmword_100226100;
  v16 = v12;
  do
  {
    if (v34)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    ++v15;
    static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v33;
    v20 = v18;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    v25 = v20;
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v37._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v37._object = 0xE700000000000000;
    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 10;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);

    String.append(_:)(v37);

    v12 = v16;
  }

  while (v2 != v15);
}

uint64_t sub_1001701B0(uint64_t a1, SEL *a2)
{
  v4 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v9 respondsToSelector:*a2])
      {
        type metadata accessor for HMDeviceCloudRecord();
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v9 *a2];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_10017033C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    v11 = sub_1001704A8(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

id sub_1001704A8(uint64_t a1, uint64_t a2)
{
  sub_100103934();
  v4 = sub_1001B4250(a1, a2);

  if (v4)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    v6 = v4;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    os_log(_:dso:log:_:_:)();

    v11 = [v6 hmDeviceCloudRecordInfo];
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    os_log(_:dso:log:_:_:)();

    return 0;
  }

  return v11;
}

uint64_t sub_1001707BC(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v5 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v15;
  v6[5] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10017201C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000F2B98;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002C0468;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t sub_10017094C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  os_log(_:dso:log:_:_:)();

  v7 = sub_1001704A8(a1, a2);
  v8 = *a3;
  *a3 = v7;

  return _objc_release_x1(v7, v8);
}

uint64_t sub_100170B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v28 = a3;
  v29 = a1;
  v30 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v33);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v22 = v28;
  v21 = v29;
  v20[2] = v19;
  v20[3] = v22;
  v20[4] = a4;
  v20[5] = v21;
  v23 = v31;
  v20[6] = v30;
  aBlock[4] = v23;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v32;
  v24 = _Block_copy(aBlock);
  v25 = v18;

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000F2A70();
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000F2AC8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v33);
}

uint64_t sub_100170DE0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD000000000000013, 0x8000000100267B10, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v13 = 0;
    a2();
  }
}

uint64_t sub_100171070(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v25;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a3;
  v18[5] = a1;
  aBlock[4] = sub_100171FE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0378;
  v20 = _Block_copy(aBlock);
  v21 = v16;

  v22 = a1;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000F2A70();
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000F2AC8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v26);
}

uint64_t sub_100171348(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    UUID.init()();
    v13 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord());
    v14 = a4;
    v17 = sub_10012BD48(v10, v14);
    v18 = static os_log_type_t.default.getter();
    v25[3] = v18;
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v20 = v14;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001B3A08(v17, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

id sub_100171664()
{
  v1 = v0;
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
  v17 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);
  v18 = objc_allocWithZone(HMDeviceCloudRecordInfo);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithBluetoothAddress:v19];

  [v20 setHaRegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus)];
  [v20 setHaRegionStatusV2:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2)];
  [v20 setHpRegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus)];
  [v20 setHpPPERegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus)];
  [v20 setMediaAssistEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled)];
  [v20 setPmeMediaEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled)];
  [v20 setPmeVoiceEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled)];
  [v20 setSwipeGainEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled)];
  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) == 0)
  {
    v21 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft)];
    [v20 setBottomMicFaultCountLeft:v21];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) == 0)
  {
    v22 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight)];
    [v20 setBottomMicFaultCountRight:v22];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) == 0)
  {
    v23 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount)];
    [v20 setDiagnosticMeasurementsCount:v23];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) == 0)
  {
    v24 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft)];
    [v20 setFreqAccuracyFaultCountLeft:v24];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) == 0)
  {
    v25 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight)];
    [v20 setFreqAccuracyFaultCountRight:v25];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) == 0)
  {
    v26 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft)];
    [v20 setFrontVentFaultCountLeft:v26];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) == 0)
  {
    v27 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight)];
    [v20 setFrontVentFaultCountRight:v27];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) == 0)
  {
    v28 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft)];
    [v20 setInnerMicFaultCountLeft:v28];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) == 0)
  {
    v29 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight)];
    [v20 setInnerMicFaultCountRight:v29];
  }

  v30 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  sub_10013250C(v1 + v30, v8);
  v31 = *(v10 + 48);
  if (v31(v8, 1, v9) == 1)
  {
    sub_100102138(v8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v20 setLatestDiagnosticTimestampLeft:isa];

    (*(v10 + 8))(v15, v9);
  }

  v33 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  sub_10013250C(v1 + v33, v5);
  if (v31(v5, 1, v9) == 1)
  {
    sub_100102138(v5);
  }

  else
  {
    v34 = v46;
    (*(v10 + 32))(v46, v5, v9);
    v35 = Date._bridgeToObjectiveC()().super.isa;
    [v20 setLatestDiagnosticTimestampRight:v35];

    (*(v10 + 8))(v34, v9);
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) == 0)
  {
    v36 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft)];
    [v20 setRearVentFaultCountLeft:v36];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) == 0)
  {
    v37 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight)];
    [v20 setRearVentFaultCountRight:v37];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) == 0)
  {
    v38 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft)];
    [v20 setSpeakerFaultCountLeft:v38];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) == 0)
  {
    v39 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight)];
    [v20 setSpeakerFaultCountRight:v39];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) == 0)
  {
    v40 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft)];
    [v20 setTopMicFaultCountLeft:v40];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) == 0)
  {
    v41 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight)];
    [v20 setTopMicFaultCountRight:v41];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) == 0)
  {
    v42 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft)];
    [v20 setTotalHarmonicDistortionFaultCountLeft:v42];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) == 0)
  {
    v43 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight)];
    [v20 setTotalHarmonicDistortionFaultCountRight:v43];
  }

  return v20;
}

uint64_t sub_100171FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DefaultsObserver.__allocating_init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys] = a1;
  *&v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults] = a2;
  v10 = &v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id DefaultsObserver.init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys] = a1;
  *&v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults] = a2;
  v5 = &v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v7, "init");
}

id DefaultsObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults];
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = String._bridgeToObjectiveC()();

      [v3 removeObserver:v0 forKeyPath:v7 context:0];

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v9, "dealloc");
}

Swift::Void __swiftcall DefaultsObserver.start()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = String._bridgeToObjectiveC()();

      [v3 addObserver:v0 forKeyPath:v7 options:0 context:0];

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

Swift::Void __swiftcall DefaultsObserver.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = String._bridgeToObjectiveC()();

      [v3 removeObserver:v0 forKeyPath:v7 context:0];

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t DefaultsObserver.observeValue(forKeyPath:of:change:context:)(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v6 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify);
    v5 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify + 8);

    v6(v4, a2);
  }

  return result;
}

void sub_100172758()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1001727B0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v8 == a1)
    {

      static os_log_type_t.debug.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100226100;
      swift_unknownObjectRetain();
      sub_1000EE870(&qword_1002F9758, &unk_100229878);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_1000EE954();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      os_log(_:dso:log:_:_:)();
    }
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100172B34(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v8 = sub_100173038((v1 + v7), a1);
  result = swift_unknownObjectRelease();
  v10 = *(v1 + v7);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v12 = *(v1 + v7);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (result >= v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v8)
    {
LABEL_5:
      sub_10017338C(v8, v11, sub_100173280);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_100172D20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100172D98(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100172E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000EEE20();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100172F50(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100173038(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_100172F50(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1001CE110(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_1001CE110(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100173280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10017338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100172D98(result);

  return v12(v5, v3, 0);
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(unint64_t a1)
{
  v2 = swift_allocObject();
  DarwinNotificationHelper.init(notificationHandlers:)(a1);
  return v2;
}

uint64_t DarwinNotificationHelper.init(notificationHandlers:)(unint64_t a1)
{
  v2 = v1;
  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v23)
  {
    v1[2] = a1;
    v4 = qword_1002F79F8;

    if (v4 != -1)
    {
LABEL_19:
      swift_once();
    }

    v5 = static DarwinNotificationManager.shared;
    v6 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = a1;
    if (*((*(v5 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v7 = 0;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    a1 = v10 & *(a1 + 64);
    v11 = (v9 + 63) >> 6;
    v22 = v2;
    if (a1)
    {
      while (1)
      {
        v12 = v7;
LABEL_15:
        v13 = __clz(__rbit64(a1));
        a1 &= a1 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v24 + 56) + 16 * v14 + 8);
        v16 = *(*(v24 + 48) + 8 * v14);

        static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_100226100;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        *(v17 + 56) = &type metadata for String;
        *(v17 + 64) = sub_1000EE954();
        *(v17 + 32) = v18;
        *(v17 + 40) = v20;
        os_log(_:dso:log:_:_:)();

        v2 = v22;
        CFNotificationCenterAddObserver(v23, v22, sub_10017388C, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        if (!a1)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v12 >= v11)
      {
        break;
      }

      a1 = *(v8 + 8 * v12);
      ++v7;
      if (a1)
      {
        v7 = v12;
        goto LABEL_15;
      }
    }

    return v2;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10017388C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_100174068(a2, a3);
}

uint64_t DarwinNotificationHelper.deinit()
{
  v1 = v0;
  if (qword_1002F79F8 != -1)
  {
    goto LABEL_17;
  }

LABEL_2:
  DarwinNotificationManager.unregisterHelper(helper:)(v1);
  center = CFNotificationCenterGetDarwinNotifyCenter();
  if (!center)
  {
    goto LABEL_15;
  }

  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v22 = *(v1 + 16);

  v10 = 0;
  observer = v1;
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = *(*(v22 + 56) + 16 * v12 + 8);
    v14 = *(*(v22 + 48) + 8 * v12);

    static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    v8 &= v8 - 1;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100226100;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000EE954();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)();

    v1 = observer;
    CFNotificationCenterRemoveObserver(center, observer, v14, 0);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_2;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

LABEL_15:
  v19 = *(v1 + 16);

  return v1;
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{
  DarwinNotificationHelper.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DarwinNotificationHelper.onNotification(notificationName:)(CFStringRef notificationName)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 16);

    v5 = sub_1000F8CD4(notificationName);
    if (v6)
    {
      v7 = *(v2 + 56) + 16 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);

      static os_log_type_t.default.getter();
      if (qword_1002F7AC8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100226100;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_1000EE954();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      os_log(_:dso:log:_:_:)();

      v9(v14);
    }

    else
    {
    }
  }
}

uint64_t _s15audioaccessoryd24DarwinNotificationHelperC20notificationHandlersACSgSDySSyycG_tcfC_0(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v33 = v6;
  while (v5)
  {
    v9 = v1;
LABEL_11:
    v10 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v11 = *(a1 + 56);
    v12 = (*(a1 + 48) + v10);
    v14 = *v12;
    v13 = v12[1];
    v15 = swift_allocObject();
    *(v15 + 16) = *(v11 + v10);
    swift_bridgeObjectRetain_n();

    v16 = String._bridgeToObjectiveC()();

    v17 = swift_allocObject();
    *(v17 + 16) = sub_1001742B8;
    *(v17 + 24) = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1000F8CD4(v16);
    v21 = _swiftEmptyDictionarySingleton[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_10015DAB4();
        v19 = v30;
      }
    }

    else
    {
      sub_10015CB2C(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1000F8CD4(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v25)
    {
      v7 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      v8 = v7[1];
      *v7 = sub_1000F2B98;
      v7[1] = v17;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v19) = v16;
      v27 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      *v27 = sub_1000F2B98;
      v27[1] = v17;

      v28 = _swiftEmptyDictionarySingleton[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v29;
    }

    v1 = v9;
    v6 = v33;
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      type metadata accessor for DarwinNotificationHelper();
      v31 = swift_allocObject();
      DarwinNotificationHelper.init(notificationHandlers:)(_swiftEmptyDictionarySingleton);
      return v31;
    }

    v5 = *(v2 + 8 * v9);
    ++v1;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for CFString(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100174068(uint64_t a1, void *a2)
{
  if (!a1)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AC8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (a2)
  {
    v2 = a2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100226100;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_1000EE954();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)();

    v7 = v2;
    DarwinNotificationHelper.onNotification(notificationName:)(v7);

    return;
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AC8 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_11:

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1001742B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001742E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100174350()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 environment];

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

LABEL_9:
    v15 = [objc_opt_self() defaultManager];
    v16 = [v15 URLsForDirectory:5 inDomains:1];

    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      (*(v1 + 16))(v5, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v7, v5, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v7, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000F8C5C(0xD00000000000001BLL, 0x800000010026AB90);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v13 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_1001746E8(uint64_t a1)
{
  v95 = type metadata accessor for URL();
  v92 = *(v95 - 8);
  v2 = *(v92 + 64);
  __chkstk_darwin(v95);
  v94 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v102 = &v91 - v6;
  v7 = type metadata accessor for DeviceRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v91 - v12;
  v103 = 0;
  v98 = type metadata accessor for MagicPairingSettingsRecord();
  *&v91 = *(v98 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v98);
  v97 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226100;
    v19 = Array.description.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000EE954();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = v7;
    v23 = *(a1 + 16);
    v108 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v23, 0);
    v24 = v108;
    if (!v23)
    {
      break;
    }

    v108 = _swiftEmptyArrayStorage;
    v25 = v22[7];
    v105 = (v106 + v22[6]);
    v104 = (v106 + v25);
    v26 = (v106 + v22[8]);
    v27 = (v106 + v22[9]);
    v28 = v22[10];
    v29 = v22[11];
    v93 = v22;
    v30 = (v106 + v28);
    v31 = (v106 + v29);
    v32 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v107 = *(v8 + 72);
    v99 = v32;
    v100 = v23;
    v33 = v23;
    do
    {
      v34 = v106;
      sub_1001CC14C(v32, v106, type metadata accessor for DeviceRecord);
      v35 = *v105;
      v36 = v105[1];
      v37 = objc_allocWithZone(BTCloudDevice);
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 initWithBluetoothAddress:v38];

      v40 = *v104;
      v41 = v104[1];
      v42 = String._bridgeToObjectiveC()();
      [v39 setNickname:v42];

      v43 = *v26;
      v44 = v26[1];
      v45 = String._bridgeToObjectiveC()();
      [v39 setModelNumber:v45];

      v46 = *v27;
      v47 = v27[1];
      v48 = String._bridgeToObjectiveC()();
      [v39 setManufacturer:v48];

      v49 = *v30;
      v50 = v30[1];
      v51 = String._bridgeToObjectiveC()();
      [v39 setProductID:v51];

      v52 = *v31;
      v53 = v31[1];
      v54 = String._bridgeToObjectiveC()();
      [v39 setVendorID:v54];

      sub_1001CC1B4(v34, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 += v107;
      --v33;
    }

    while (v33);
    v56 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    v57 = v96;
    swift_beginAccess();
    v104 = v56;
    v58 = *(v57 + v56);
    if (v58 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v102;
    v7 = v103;
    v61 = v101;
    if (v59)
    {
      if (v59 < 1)
      {
        __break(1u);
        goto LABEL_81;
      }

      for (i = 0; i != v59; ++i)
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v63 = *(v58 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v63 respondsToSelector:{"devicesUpdatedWithRecords:", v91}])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v63 devicesUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v57 = v96;
      v60 = v102;
      v7 = v103;
      v61 = v101;
    }

    v17 = 0xD000000000000011;

    a1 = 0;
    v8 = v61 + v93[6];
    v106 = 0x8000000100267AA0;
    v77 = v92;
    v92 += 8;
    v93 = (v77 + 16);
    v105 = (v91 + 48);
    v91 = xmmword_1002290F0;
    v79 = v99;
    v78 = v100;
    while (a1 != v78)
    {
      sub_1001CC14C(v79 + a1 * v107, v61, type metadata accessor for DeviceRecord);
      v80 = *v8 == 0xD000000000000011 && v106 == *(v8 + 8);
      if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_46;
      }

      sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7A00 != -1)
        {
          swift_once();
        }

        v81 = v95;
        v82 = sub_1000EE91C(v95, qword_100300BA8);
        v83 = v94;
        (*v93)(v94, v82, v81);
        v84 = sub_10018C984(v83);

        v85 = (*v92)(v83, v81);
        v61 = v101;
        v60 = v102;
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v84 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }

      __chkstk_darwin(v85);
      *(&v91 - 2) = v61;
      sub_10017D118(sub_1001CB710, v84, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v60);

      if ((*v105)(v60, 1, v98) != 1)
      {
        sub_1001CC214(v60, v97, type metadata accessor for MagicPairingSettingsRecord);
        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v17 = swift_allocObject();
        *(v17 + 1) = v91;
        *(v17 + 4) = sub_10010CFB8();
        v86 = *(v104 + v57);
        v103 = v7;
        if (v86 >> 62)
        {
          v87 = _CocoaArrayWrapper.endIndex.getter();
          if (!v87)
          {
            goto LABEL_73;
          }

LABEL_63:
          if (v87 < 1)
          {
            goto LABEL_77;
          }

          for (j = 0; j != v87; ++j)
          {
            if ((v86 & 0xC000000000000001) != 0)
            {
              v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v89 = *(v86 + 8 * j + 32);
              swift_unknownObjectRetain();
            }

            if ([v89 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v91}])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              v90 = Array._bridgeToObjectiveC()().super.isa;
              [v89 magicPairingRecordsUpdatedWithRecords:v90];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v87)
          {
            goto LABEL_63;
          }

LABEL_73:
        }

        sub_1001CC1B4(v97, type metadata accessor for MagicPairingSettingsRecord);

        v57 = v96;
        v60 = v102;
        v7 = v103;
        v61 = v101;
        goto LABEL_45;
      }

      sub_1000EEE6C(v60, &unk_1002F9C30, &qword_1002299A0);
LABEL_45:
      v79 = v99;
      v78 = v100;
      v17 = 0xD000000000000011;
LABEL_46:
      ++a1;
      result = sub_1001CC1B4(v61, type metadata accessor for DeviceRecord);
      if (a1 == v78)
      {
        return result;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v108 = _swiftEmptyArrayStorage;
  v65 = *(v24 + 16);
  if (v65)
  {
    v66 = &v17[*(v98 + 24)];
    v67 = v24 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v68 = *(v91 + 72);
    do
    {
      sub_1001CC14C(v67, v17, type metadata accessor for MagicPairingSettingsRecord);
      v69 = *v66 == 0xD000000000000011 && 0x8000000100267AA0 == *(v66 + 1);
      if (v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v107 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v67 += v68;
      --v65;
    }

    while (v65);
  }

  v70 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v71 = v96;
  result = swift_beginAccess();
  v58 = *(v71 + v70);
  if (!(v58 >> 62))
  {
    v73 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_34;
    }
  }

LABEL_81:
  result = _CocoaArrayWrapper.endIndex.getter();
  v73 = result;
  if (!result)
  {
  }

LABEL_34:
  if (v73 >= 1)
  {

    for (k = 0; k != v73; ++k)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v75 = *(v58 + 8 * k + 32);
        swift_unknownObjectRetain();
      }

      if ([v75 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v91}])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v76 = Array._bridgeToObjectiveC()().super.isa;
        [v75 magicPairingRecordsUpdatedWithRecords:v76];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001754E4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSupportInformationRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagicPairingSettingsRecord();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  v12 = Array.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = *(a1 + 16);
  v42 = _swiftEmptyArrayStorage;
  sub_1001C4D8C(0, v15, 0);
  v16 = v42;
  if (v15)
  {

    v42 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v15, 0);

    v42 = _swiftEmptyArrayStorage;
    v17 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    do
    {
      sub_1001CC14C(v17, v6, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v6, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 += v18;
      --v15;
    }

    while (v15);
    v20 = v41;
    v21 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v22 = *(v20 + v21);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
      }

      goto LABEL_10;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      if (v23 >= 1)
      {

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v25 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v25 deviceSupportInformationRecordsUpdatedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_42:
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v27 = *(v16 + 16);
  if (v27)
  {
    v28 = &v10[*(v7 + 24)];
    v29 = v16 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v30 = *(v40 + 72);
    do
    {
      sub_1001CC14C(v29, v10, type metadata accessor for MagicPairingSettingsRecord);
      v31 = *v28 == 0xD000000000000011 && 0x8000000100267AA0 == *(v28 + 1);
      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v10, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v10, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v29 += v30;
      --v27;
    }

    while (v27);
  }

  v32 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v33 = v41;
  result = swift_beginAccess();
  v22 = *(v33 + v32);
  if (!(v22 >> 62))
  {
    v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_33;
    }
  }

LABEL_47:
  result = _CocoaArrayWrapper.endIndex.getter();
  v35 = result;
  if (!result)
  {
  }

LABEL_33:
  if (v35 >= 1)
  {

    for (j = 0; j != v35; ++j)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v22 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v37 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v38 = Array._bridgeToObjectiveC()().super.isa;
        [v37 magicPairingRecordsUpdatedWithRecords:v38];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_100175BB0(Class a1)
{
  v2 = type metadata accessor for URL();
  v100 = *(v2 - 8);
  v3 = *(v100 + 64);
  __chkstk_darwin(v2);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v92 - v10;
  v11 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v105 = *(v11 - 8);
  v12 = v105[8];
  __chkstk_darwin(v11);
  v94 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagicPairingSettingsRecord();
  v104 = *(v14 - 8);
  v15 = *(v104 + 64);
  __chkstk_darwin(v14);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226100;
    v19 = Array.description.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000EE954();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = *(a1 + 2);
    v106 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v22, 0);
    v23 = v106;
    if (!v22)
    {
      break;
    }

    v106 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v22, 0);

    v106 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v22, 0);

    sub_1001CC14C(a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v24 = sub_10013B008();
    swift_unknownObjectWeakInit();
    v107 = _swiftEmptyArrayStorage;
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    a1 = _swiftEmptyArrayStorage;
    if (!v25)
    {
LABEL_38:

      swift_unknownObjectWeakDestroy();
      v55 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      v56 = v95;
      swift_beginAccess();
      v105 = v55;
      v57 = *(v55 + v56);
      if (v57 >> 62)
      {
        v58 = _CocoaArrayWrapper.endIndex.getter();
        if (!v58)
        {
          goto LABEL_78;
        }

LABEL_40:
        if (v58 >= 1)
        {

          for (i = 0; i != v58; ++i)
          {
            if ((v57 & 0xC000000000000001) != 0)
            {
              v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v61 = *(v57 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v61 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v61 magicPairingRecordsUpdatedWithRecords:isa];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_78;
        }

        __break(1u);
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
          goto LABEL_40;
        }

LABEL_78:

        v74 = sub_10013B008();
        v75 = v74;
        v107 = _swiftEmptyArrayStorage;
        if (v74 >> 62)
        {
          goto LABEL_94;
        }

        for (j = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            v81 = [v78 bluetoothAddress];
            if (!v81)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v81 = String._bridgeToObjectiveC()();
            }

            v82 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v81];

            v83 = [v79 name];
            [v82 setNickname:v83];

            v84 = [v79 productID];
            [v82 setProductID:v84];

            v85 = [v79 vendorID];
            [v82 setVendorID:v85];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v86 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v77;
            if (v80 == j)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:

        v57 = *(v105 + v95);
        if (!(v57 >> 62))
        {
          v87 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v87)
          {
            goto LABEL_97;
          }

LABEL_109:

LABEL_110:
          sub_1001CC1B4(v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_111:
        }

        if ((v57 & 0x8000000000000000) != 0)
        {
          v91 = *(v105 + v95);
        }

        v87 = _CocoaArrayWrapper.endIndex.getter();
        if (!v87)
        {
          goto LABEL_109;
        }

LABEL_97:
        if (v87 >= 1)
        {

          for (k = 0; k != v87; ++k)
          {
            if ((v57 & 0xC000000000000001) != 0)
            {
              v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v89 = *(v57 + 8 * k + 32);
              swift_unknownObjectRetain();
            }

            if ([v89 respondsToSelector:"devicesUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
              swift_unknownObjectRetain();
              v90 = Array._bridgeToObjectiveC()().super.isa;
              [v89 devicesUpdatedWithRecords:v90];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_110;
        }
      }

      __break(1u);
      goto LABEL_115;
    }

    v17 = 0;
    v103 = v24 & 0xFFFFFFFFFFFFFF8;
    v104 = v24 & 0xC000000000000001;
    v26 = v100;
    v100 += 8;
    v101 = (v26 + 16);
    v93 = v24;
    v102 = v25;
    while (1)
    {
      if (v104)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v103 + 16))
        {
          goto LABEL_74;
        }

        v27 = *(v24 + 8 * v17 + 32);
      }

      v28 = v27;
      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        v105 = v28;
        sub_100103934();
        v31 = objc_opt_self();
        if ([v31 isFirstUnlocked])
        {
          sub_100192340();
          if (qword_1002F79E8 != -1)
          {
            swift_once();
          }

          v32 = sub_1000EE91C(v2, qword_100300B80);
          (*v101)(v5, v32, v2);
          v33 = sub_10018F6C8(v5);

          (*v100)(v5, v2);
          if (v33[2])
          {
            v34 = v96;
            sub_1001CC14C(v33 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v96, type metadata accessor for LegacyAccountMagicKeysRecord);

            v35 = (v34 + *(v99 + 20));
            v36 = *v35;
            v37 = v35[1];
            v38 = Data.subdata(in:)();
            v40 = v39;
            sub_1001CC1B4(v34, type metadata accessor for LegacyAccountMagicKeysRecord);
            v41.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_1000EF870(v38, v40);
LABEL_22:
            [v105 setMasterKey:v41.super.isa];

            v42 = *&v30[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

            if ([v31 isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F79E8 != -1)
              {
                swift_once();
              }

              v43 = sub_1000EE91C(v2, qword_100300B80);
              (*v101)(v5, v43, v2);
              v44 = sub_10018F6C8(v5);

              (*v100)(v5, v2);
              if (v44[2])
              {
                v45 = v5;
                v46 = v2;
                v47 = v97;
                sub_1001CC14C(v44 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v97, type metadata accessor for LegacyAccountMagicKeysRecord);

                v48 = (v47 + *(v99 + 20));
                v49 = *v48;
                v50 = v48[1];
                v51 = Data.subdata(in:)();
                v53 = v52;
                v54 = v47;
                v2 = v46;
                v5 = v45;
                v24 = v93;
                sub_1001CC1B4(v54, type metadata accessor for LegacyAccountMagicKeysRecord);
                a1 = Data._bridgeToObjectiveC()().super.isa;
                sub_1000EF870(v51, v53);
              }

              else
              {

                a1 = 0;
              }

              v25 = v102;
            }

            else
            {
              static os_log_type_t.error.getter();
              v25 = v102;
              if (qword_1002F7AE8 != -1)
              {
                swift_once();
              }

              os_log(_:dso:log:_:_:)();

              a1 = 0;
            }

            [v105 setMasterHint:a1];

            goto LABEL_33;
          }
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
        }

        v41.super.isa = 0;
        goto LABEL_22;
      }

LABEL_33:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v17;
      if (v14 == v25)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v106 = _swiftEmptyArrayStorage;
  v62 = *(v23 + 16);
  if (v62)
  {
    v63 = (v17 + *(v14 + 24));
    v64 = v23 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v65 = *(v104 + 72);
    do
    {
      sub_1001CC14C(v64, v17, type metadata accessor for MagicPairingSettingsRecord);
      v66 = *v63 == 0xD000000000000011 && 0x8000000100267AA0 == v63[1];
      if (v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v105 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v64 += v65;
      --v62;
    }

    while (v62);
  }

  v67 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v68 = v95;
  result = swift_beginAccess();
  v57 = *(v68 + v67);
  if (v57 >> 62)
  {
LABEL_115:
    result = _CocoaArrayWrapper.endIndex.getter();
    v70 = result;
    if (!result)
    {
    }

    goto LABEL_64;
  }

  v70 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v70)
  {
  }

LABEL_64:
  if (v70 >= 1)
  {

    for (m = 0; m != v70; ++m)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v72 = *(v57 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v72 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v73 = Array._bridgeToObjectiveC()().super.isa;
        [v72 magicPairingRecordsUpdatedWithRecords:v73];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_111;
  }

  __break(1u);
  return result;
}

uint64_t sub_100176C18(uint64_t a1)
{
  v3 = type metadata accessor for MagicPairingSettingsRecord();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  v9 = Array.description.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v25 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = &v7[*(v3 + 24)];
    v14 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_1001CC14C(v14, v7, type metadata accessor for MagicPairingSettingsRecord);
      v16 = *v13 == 0xD000000000000011 && 0x8000000100267AA0 == *(v13 + 1);
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v17 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v19 = *(v1 + v17);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_17;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = result;
  if (!result)
  {
  }

LABEL_17:
  if (v20 >= 1)
  {

    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v19 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v23 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v23 magicPairingRecordsUpdatedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100177018(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPairingSettingsRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  type metadata accessor for LegacyAccountMagicKeysRecord();
  v10 = Array.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  v13 = *(a1 + 16);
  v29 = _swiftEmptyArrayStorage;
  sub_1001C4D8C(0, v13, 0);
  v14 = v29;
  if (v13)
  {

    v29 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v13, 0);

    v29 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v13, 0);

    v29 = _swiftEmptyArrayStorage;
    sub_1001C4E78(0, v13, 0);

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  v29 = _swiftEmptyArrayStorage;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = &v8[*(v4 + 24)];
    v18 = *(v5 + 80);
    v28[2] = v14;
    v19 = v14 + ((v18 + 32) & ~v18);
    v20 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v19, v8, type metadata accessor for MagicPairingSettingsRecord);
      v21 = *v17 == 0xD000000000000011 && 0x8000000100267AA0 == *(v17 + 1);
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v8, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v8, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28[1] = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v19 += v20;
      --v16;
    }

    while (v16);
  }

  v22 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v23 = *(v2 + v22);
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_19;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = result;
  if (!result)
  {
  }

LABEL_19:
  if (v24 >= 1)
  {

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v27 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v27 magicPairingRecordsUpdatedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100177500(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v175 = *(v4 - 8);
  v5 = v175[8];
  __chkstk_darwin(v4);
  v174 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v173 = (&v158 - v8);
  v9 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v159 = *(v9 - 8);
  v10 = *(v159 + 64);
  __chkstk_darwin(v9 - 8);
  v172 = (&v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DeviceSupportInformationRecord();
  v171 = *(v12 - 8);
  v13 = *(v171 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for URL();
  v160 = *(v164 - 8);
  v16 = *(v160 + 64);
  __chkstk_darwin(v164);
  v163 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v165 = &v158 - v20;
  v161 = type metadata accessor for DeviceRecord();
  v168 = *(v161 - 8);
  v21 = *(v168 + 64);
  __chkstk_darwin(v161);
  v170 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v176 = (&v158 - v24);
  v169 = type metadata accessor for MagicPairingSettingsRecord();
  *&v162 = *(v169 - 8);
  v25 = *(v162 + 64);
  __chkstk_darwin(v169);
  v166 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v158 - v28;
  v30 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100226100;
  type metadata accessor for HMDeviceCloudRecord();
  v32 = Array.description.getter();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000EE954();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  os_log(_:dso:log:_:_:)();

  v35 = sub_10017E820(a1, sub_1001C4D8C);
  v167 = v2;
  if (v35)
  {
    v177 = _swiftEmptyArrayStorage;
    v36 = v35[2];
    if (v36)
    {
      v37 = &v29[*(v169 + 24)];
      v38 = v35 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v31 = *(v162 + 72);
      v39 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v38, v29, type metadata accessor for MagicPairingSettingsRecord);
        v40 = *v37 == 0xD000000000000011 && 0x8000000100267AA0 == *(v37 + 1);
        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v29, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v30 = sub_10010CFB8();
          sub_1001CC1B4(v29, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v176 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v39 = v177;
        }

        v38 += v31;
        --v36;
      }

      while (v36);

      v2 = v167;
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
    }

    v71 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v72 = *(v2 + v71);
    if (v72 >> 62)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
      if (!v73)
      {
      }
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
      }
    }

    if (v73 >= 1)
    {

      for (i = 0; i != v73; ++i)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v75 = *(v72 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v75 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v75 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_213;
    }

    goto LABEL_131;
  }

  v41 = sub_10017E820(a1, sub_1001C4E14);
  if (!v41)
  {
    v81 = sub_10017E820(a1, sub_1001C4DD0);
    if (v81)
    {
      v177 = _swiftEmptyArrayStorage;
      v82 = v81[2];
      if (v82)
      {
        v83 = v81 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v84 = *(v171 + 72);
        do
        {
          sub_1001CC14C(v83, v15, type metadata accessor for DeviceSupportInformationRecord);
          sub_100109B20();
          sub_1001CC1B4(v15, type metadata accessor for DeviceSupportInformationRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v85 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v2 = v167;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v83 += v84;
          --v82;
        }

        while (v82);
      }

      v116 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      swift_beginAccess();
      v39 = *(v2 + v116);
      if (v39 >> 62)
      {
        goto LABEL_171;
      }

      a1 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_94;
      }
    }

    v86 = sub_10017E820(a1, sub_1001C4E78);
    if (v86)
    {
      if (v86[2])
      {
        sub_1001CC14C(v86 + ((*(v159 + 80) + 32) & ~*(v159 + 80)), v172, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v31 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v178 = _swiftEmptyArrayStorage;
        if (v31 >> 62)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v73 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        v39 = _swiftEmptyArrayStorage;
        if (v73)
        {
          v87 = 0;
          v176 = (v31 & 0xC000000000000001);
          v171 = v31 & 0xFFFFFFFFFFFFFF8;
          v168 = v160 + 8;
          v169 = v160 + 16;
          v165 = v31;
          v166 = v4;
          v170 = v73;
          while (1)
          {
            if (v176)
            {
              v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v87 >= *(v171 + 16))
              {
                goto LABEL_130;
              }

              v88 = *(v31 + 8 * v87 + 32);
            }

            v89 = v88;
            v90 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v92 = Strong;
              sub_100103934();
              v30 = objc_opt_self();
              if ([v30 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v93 = v164;
                v94 = sub_1000EE91C(v164, qword_100300B80);
                v95 = v163;
                (*v169)(v163, v94, v93);
                v96 = sub_10018F6C8(v95);

                (*v168)(v95, v93);
                if (v96[2])
                {
                  v97 = v173;
                  sub_1001CC14C(v96 + ((*(v175 + 80) + 32) & ~*(v175 + 80)), v173, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v98 = (v97 + *(v166 + 20));
                  v99 = *v98;
                  v100 = v98[1];
                  v101 = Data.subdata(in:)();
                  v103 = v102;
                  sub_1001CC1B4(v97, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v104.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v101, v103);
                }

                else
                {

                  v104.super.isa = 0;
                }

                v31 = v165;
                v73 = v170;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v104.super.isa = 0;
              }

              [v89 setMasterKey:v104.super.isa];

              v105 = *&v92[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

              if ([v30 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v106 = v164;
                v107 = sub_1000EE91C(v164, qword_100300B80);
                v108 = v163;
                (*v169)(v163, v107, v106);
                v30 = sub_10018F6C8(v108);

                (*v168)(v108, v106);
                if (v30[2])
                {
                  v109 = v174;
                  sub_1001CC14C(v30 + ((*(v175 + 80) + 32) & ~*(v175 + 80)), v174, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v110 = (v109 + *(v166 + 20));
                  v111 = *v110;
                  v112 = v110[1];
                  v30 = Data.subdata(in:)();
                  v114 = v113;
                  sub_1001CC1B4(v109, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v115.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v30, v114);
                }

                else
                {

                  v115.super.isa = 0;
                }

                v73 = v170;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v115.super.isa = 0;
              }

              [v89 setMasterHint:v115.super.isa];

              v2 = v167;
            }

            v39 = &v178;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v30 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v87;
            if (v90 == v73)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v120 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v176 = v120;
        v122 = *(v120 + v2);
        if (v122 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v123 = result;
          if (result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v123)
          {
LABEL_107:
            if (v123 < 1)
            {
              __break(1u);
              goto LABEL_216;
            }

            for (j = 0; j != v123; ++j)
            {
              if ((v122 & 0xC000000000000001) != 0)
              {
                v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v125 = *(v122 + 8 * j + 32);
                swift_unknownObjectRetain();
              }

              if ([v125 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
              {
                sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                swift_unknownObjectRetain();
                v126 = Array._bridgeToObjectiveC()().super.isa;
                [v125 magicPairingRecordsUpdatedWithRecords:v126];
                swift_unknownObjectRelease_n();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        v141 = sub_10013B008();
        v142 = v141;
        v178 = _swiftEmptyArrayStorage;
        if (v141 >> 62)
        {
          goto LABEL_196;
        }

        for (k = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
        {
          v144 = 0;
          while (1)
          {
            if ((v142 & 0xC000000000000001) != 0)
            {
              v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v144 >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_195;
              }

              v145 = *(v142 + 8 * v144 + 32);
            }

            v146 = v145;
            v147 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              break;
            }

            v148 = [v145 bluetoothAddress];
            if (!v148)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v148 = String._bridgeToObjectiveC()();
            }

            v149 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v148];

            v150 = [v146 name];
            [v149 setNickname:v150];

            v151 = [v146 productID];
            [v149 setProductID:v151];

            v152 = [v146 vendorID];
            [v149 setVendorID:v152];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v153 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v144;
            if (v147 == k)
            {
              goto LABEL_197;
            }
          }

          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          ;
        }

LABEL_197:

        v127 = *(v176 + v167);
        if (v127 >> 62)
        {
          goto LABEL_210;
        }

        v154 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v154)
        {
          goto LABEL_199;
        }

LABEL_211:

LABEL_212:
        sub_1001CC1B4(v172, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_213:
      }
    }

    v15 = _swiftEmptyArrayStorage;
    v177 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_174;
    }

    v127 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_120;
    }

LABEL_175:
    sub_1000F16CC(v177);
  }

  v39 = _swiftEmptyArrayStorage;
  v177 = _swiftEmptyArrayStorage;
  v42 = v41[2];
  v174 = v42;
  v175 = v41;
  if (v42)
  {
    v43 = *(v161 + 28);
    v173 = (v176 + *(v161 + 24));
    v172 = (v176 + v43);
    v44 = (v176 + *(v161 + 32));
    v45 = (v176 + *(v161 + 36));
    v46 = (v176 + *(v161 + 40));
    v47 = (v176 + *(v161 + 44));
    v48 = v41 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v171 = *(v168 + 72);
    do
    {
      v49 = v176;
      sub_1001CC14C(v48, v176, type metadata accessor for DeviceRecord);
      v50 = *v173;
      v51 = v173[1];
      v52 = objc_allocWithZone(BTCloudDevice);
      v53 = String._bridgeToObjectiveC()();
      v54 = [v52 initWithBluetoothAddress:v53];

      v55 = *v172;
      v56 = v172[1];
      v57 = String._bridgeToObjectiveC()();
      [v54 setNickname:v57];

      v58 = *v44;
      v59 = v44[1];
      v60 = String._bridgeToObjectiveC()();
      [v54 setModelNumber:v60];

      v61 = *v45;
      v62 = v45[1];
      v63 = String._bridgeToObjectiveC()();
      [v54 setManufacturer:v63];

      v64 = *v46;
      v65 = v46[1];
      v66 = String._bridgeToObjectiveC()();
      [v54 setProductID:v66];

      v67 = *v47;
      v68 = v47[1];
      v69 = String._bridgeToObjectiveC()();
      [v54 setVendorID:v69];

      sub_1001CC1B4(v49, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 += v171;
      --v42;
    }

    while (v42);
    v39 = v177;
    v2 = v167;
  }

  v77 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v159 = v77;
  v73 = *(v2 + v77);
  v31 = v165;
  v30 = v170;
  if (v73 >> 62)
  {
LABEL_132:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_133;
    }

LABEL_38:
    if (v15 < 1)
    {
      goto LABEL_170;
    }

    for (m = 0; m != v15; ++m)
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v79 = *(v73 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v79 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v80 = Array._bridgeToObjectiveC()().super.isa;
        [v79 devicesUpdatedWithRecords:v80];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v2 = v167;
    v31 = v165;
    v30 = v170;
    goto LABEL_133;
  }

  v15 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    goto LABEL_38;
  }

LABEL_133:

  v39 = v168;
  if (!v174)
  {
  }

  v128 = 0;
  v176 = (v30 + *(v161 + 24));
  v129 = v175;
  v172 = (v175 + ((*(v168 + 80) + 32) & ~*(v168 + 80)));
  v173 = 0x8000000100267AA0;
  v161 = v160 + 16;
  v160 += 8;
  v171 = v162 + 48;
  v162 = xmmword_1002290F0;
  while (v128 < v129[2])
  {
    sub_1001CC14C(v172 + *(v39 + 72) * v128, v30, type metadata accessor for DeviceRecord);
    v130 = *v176 == 0xD000000000000011 && v173 == v176[1];
    if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_136;
    }

    sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v131 = v164;
      v132 = sub_1000EE91C(v164, qword_100300BA8);
      v133 = v163;
      (*v161)(v163, v132, v131);
      v134 = sub_10018C984(v133);

      v135 = (*v160)(v133, v131);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v134 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    v15 = &v158;
    __chkstk_darwin(v135);
    v30 = v170;
    *(&v158 - 2) = v170;
    sub_10017D118(sub_1001CE134, v134, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v31);

    if ((*v171)(v31, 1, v169) != 1)
    {
      sub_1001CC214(v31, v166, type metadata accessor for MagicPairingSettingsRecord);
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v136 = swift_allocObject();
      *(v136 + 16) = v162;
      *(v136 + 32) = sub_10010CFB8();
      v39 = *(v2 + v159);
      if (v39 >> 62)
      {
        if (v39 < 0)
        {
          v140 = *(v2 + v159);
        }

        v137 = _CocoaArrayWrapper.endIndex.getter();
        if (!v137)
        {
          goto LABEL_165;
        }

LABEL_153:
        if (v137 < 1)
        {
          goto LABEL_169;
        }

        for (n = 0; n != v137; ++n)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(v39 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v15 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v139 = Array._bridgeToObjectiveC()().super.isa;
            [v15 magicPairingRecordsUpdatedWithRecords:v139];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v137 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v137)
        {
          goto LABEL_153;
        }

LABEL_165:
      }

      sub_1001CC1B4(v166, type metadata accessor for MagicPairingSettingsRecord);

      v2 = v167;
      v39 = v168;
      v31 = v165;
      v30 = v170;
      goto LABEL_136;
    }

    sub_1000EEE6C(v31, &unk_1002F9C30, &qword_1002299A0);
    v39 = v168;
LABEL_136:
    ++v128;
    sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
    v129 = v175;
    if (v128 == v174)
    {
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
  }

LABEL_94:
  if (a1 >= 1)
  {

    v117 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v118 = *(v39 + 8 * v117 + 32);
        swift_unknownObjectRetain();
      }

      if ([v118 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
        swift_unknownObjectRetain();
        v119 = Array._bridgeToObjectiveC()().super.isa;
        [v118 deviceSupportInformationRecordsUpdatedWithRecords:v119];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v117;
    }

    while (a1 != v117);
  }

  __break(1u);
LABEL_174:
  v127 = _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_175;
  }

LABEL_120:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
LABEL_122:

    v177 = v15;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
    }

    return sub_100170198(a1);
  }

  else
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_122;
    }

    __break(1u);
LABEL_210:
    result = _CocoaArrayWrapper.endIndex.getter();
    v154 = result;
    if (!result)
    {
      goto LABEL_211;
    }

LABEL_199:
    if (v154 >= 1)
    {

      for (ii = 0; ii != v154; ++ii)
      {
        if ((v127 & 0xC000000000000001) != 0)
        {
          v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v156 = *(v127 + 8 * ii + 32);
          swift_unknownObjectRetain();
        }

        if ([v156 respondsToSelector:"devicesUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          v157 = Array._bridgeToObjectiveC()().super.isa;
          [v156 devicesUpdatedWithRecords:v157];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_212;
    }

LABEL_216:
    __break(1u);
  }

  return result;
}

uint64_t sub_100179344(int64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v178 = *(v4 - 8);
  v5 = v178[8];
  __chkstk_darwin(v4);
  v177 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v176 = (&v161 - v8);
  v9 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v162 = *(v9 - 8);
  v10 = *(v162 + 64);
  __chkstk_darwin(v9 - 8);
  v175 = (&v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DeviceSupportInformationRecord();
  v174 = *(v12 - 8);
  v13 = *(v174 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for URL();
  v163 = *(v167 - 8);
  v16 = *(v163 + 64);
  __chkstk_darwin(v167);
  v166 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v168 = &v161 - v20;
  v164 = type metadata accessor for DeviceRecord();
  v171 = *(v164 - 8);
  v21 = *(v171 + 64);
  __chkstk_darwin(v164);
  v173 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v179 = (&v161 - v24);
  v172 = type metadata accessor for MagicPairingSettingsRecord();
  *&v165 = *(v172 - 8);
  v25 = *(v165 + 64);
  __chkstk_darwin(v172);
  v169 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v161 - v28;
  v30 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100226100;
  type metadata accessor for AAProxCardsRecord();
  v32 = Array.description.getter();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000EE954();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  os_log(_:dso:log:_:_:)();

  v35 = sub_10017E820(a1, sub_1001C4D8C);
  v170 = v2;
  if (v35)
  {
    v180 = _swiftEmptyArrayStorage;
    v36 = v35[2];
    if (v36)
    {
      v37 = &v29[*(v172 + 24)];
      v38 = v35 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
      v31 = *(v165 + 72);
      v39 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v38, v29, type metadata accessor for MagicPairingSettingsRecord);
        v40 = *v37 == 0xD000000000000011 && 0x8000000100267AA0 == *(v37 + 1);
        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v29, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v30 = sub_10010CFB8();
          sub_1001CC1B4(v29, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v179 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v39 = v180;
        }

        v38 += v31;
        --v36;
      }

      while (v36);

      v2 = v170;
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
    }

    v71 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v72 = *(v2 + v71);
    if (v72 >> 62)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
      if (!v73)
      {
      }
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
      }
    }

    if (v73 >= 1)
    {

      for (i = 0; i != v73; ++i)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v75 = *(v72 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v75 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v75 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_212;
    }

    goto LABEL_127;
  }

  v41 = sub_10017E820(a1, sub_1001C4E14);
  if (!v41)
  {
    v82 = sub_10017E820(a1, sub_1001C4DD0);
    if (v82)
    {
      v180 = _swiftEmptyArrayStorage;
      v83 = v82[2];
      if (v83)
      {
        v84 = v82 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
        v85 = *(v174 + 72);
        do
        {
          sub_1001CC14C(v84, v15, type metadata accessor for DeviceSupportInformationRecord);
          sub_100109B20();
          sub_1001CC1B4(v15, type metadata accessor for DeviceSupportInformationRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v86 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v2 = v170;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 += v85;
          --v83;
        }

        while (v83);
      }

      v117 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      swift_beginAccess();
      v39 = *(v2 + v117);
      if (v39 >> 62)
      {
        goto LABEL_167;
      }

      a1 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_94;
      }
    }

    v87 = sub_10017E820(a1, sub_1001C4E78);
    if (v87)
    {
      if (v87[2])
      {
        sub_1001CC14C(v87 + ((*(v162 + 80) + 32) & ~*(v162 + 80)), v175, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v31 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v181 = _swiftEmptyArrayStorage;
        if (v31 >> 62)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v73 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        v39 = _swiftEmptyArrayStorage;
        if (v73)
        {
          v88 = 0;
          v179 = (v31 & 0xC000000000000001);
          v174 = v31 & 0xFFFFFFFFFFFFFF8;
          v171 = v163 + 8;
          v172 = v163 + 16;
          v168 = v31;
          v169 = v4;
          v173 = v73;
          while (1)
          {
            if (v179)
            {
              v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v88 >= *(v174 + 16))
              {
                goto LABEL_126;
              }

              v89 = *(v31 + 8 * v88 + 32);
            }

            v90 = v89;
            v91 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v93 = Strong;
              sub_100103934();
              v30 = objc_opt_self();
              if ([v30 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v94 = v167;
                v95 = sub_1000EE91C(v167, qword_100300B80);
                v96 = v166;
                (*v172)(v166, v95, v94);
                v97 = sub_10018F6C8(v96);

                (*v171)(v96, v94);
                if (v97[2])
                {
                  v98 = v176;
                  sub_1001CC14C(v97 + ((*(v178 + 80) + 32) & ~*(v178 + 80)), v176, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v99 = (v98 + *(v169 + 20));
                  v100 = *v99;
                  v101 = v99[1];
                  v102 = Data.subdata(in:)();
                  v104 = v103;
                  sub_1001CC1B4(v98, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v105.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v102, v104);
                }

                else
                {

                  v105.super.isa = 0;
                }

                v31 = v168;
                v73 = v173;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v105.super.isa = 0;
              }

              [v90 setMasterKey:v105.super.isa];

              v106 = *&v93[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

              if ([v30 isFirstUnlocked])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v107 = v167;
                v108 = sub_1000EE91C(v167, qword_100300B80);
                v109 = v166;
                (*v172)(v166, v108, v107);
                v30 = sub_10018F6C8(v109);

                (*v171)(v109, v107);
                if (v30[2])
                {
                  v110 = v177;
                  sub_1001CC14C(v30 + ((*(v178 + 80) + 32) & ~*(v178 + 80)), v177, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v111 = (v110 + *(v169 + 20));
                  v112 = *v111;
                  v113 = v111[1];
                  v30 = Data.subdata(in:)();
                  v115 = v114;
                  sub_1001CC1B4(v110, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v116.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v30, v115);
                }

                else
                {

                  v116.super.isa = 0;
                }

                v73 = v173;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v116.super.isa = 0;
              }

              [v90 setMasterHint:v116.super.isa];

              v2 = v170;
            }

            v39 = &v181;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v30 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v88;
            if (v91 == v73)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v121 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v179 = v121;
        v123 = *(v121 + v2);
        if (v123 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v124 = result;
          if (result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v124 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v124)
          {
LABEL_107:
            if (v124 < 1)
            {
              __break(1u);
              goto LABEL_215;
            }

            for (j = 0; j != v124; ++j)
            {
              if ((v123 & 0xC000000000000001) != 0)
              {
                v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v126 = *(v123 + 8 * j + 32);
                swift_unknownObjectRetain();
              }

              if ([v126 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
              {
                sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                swift_unknownObjectRetain();
                v127 = Array._bridgeToObjectiveC()().super.isa;
                [v126 magicPairingRecordsUpdatedWithRecords:v127];
                swift_unknownObjectRelease_n();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        v144 = sub_10013B008();
        v145 = v144;
        v181 = _swiftEmptyArrayStorage;
        if (v144 >> 62)
        {
          goto LABEL_195;
        }

        for (k = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
        {
          v147 = 0;
          while (1)
          {
            if ((v145 & 0xC000000000000001) != 0)
            {
              v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v147 >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_194;
              }

              v148 = *(v145 + 8 * v147 + 32);
            }

            v149 = v148;
            v150 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              break;
            }

            v151 = [v148 bluetoothAddress];
            if (!v151)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v151 = String._bridgeToObjectiveC()();
            }

            v152 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v151];

            v153 = [v149 name];
            [v152 setNickname:v153];

            v154 = [v149 productID];
            [v152 setProductID:v154];

            v155 = [v149 vendorID];
            [v152 setVendorID:v155];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v156 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v147;
            if (v150 == k)
            {
              goto LABEL_196;
            }
          }

          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          ;
        }

LABEL_196:

        v128 = *(v179 + v170);
        if (v128 >> 62)
        {
          goto LABEL_209;
        }

        v157 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v157)
        {
          goto LABEL_198;
        }

LABEL_210:

LABEL_211:
        sub_1001CC1B4(v175, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_212:
      }
    }

    v180 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_170;
    }

    v128 = a1 & 0xFFFFFFFFFFFFFF8;
    v129 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_120;
    }

LABEL_174:
    sub_1000F16CC(v180);
  }

  v39 = _swiftEmptyArrayStorage;
  v180 = _swiftEmptyArrayStorage;
  v42 = v41[2];
  v177 = v42;
  v178 = v41;
  if (v42)
  {
    v43 = *(v164 + 28);
    v176 = (v179 + *(v164 + 24));
    v175 = (v179 + v43);
    v44 = (v179 + *(v164 + 32));
    v45 = (v179 + *(v164 + 36));
    v46 = (v179 + *(v164 + 40));
    v47 = (v179 + *(v164 + 44));
    v48 = v41 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    v174 = *(v171 + 72);
    do
    {
      v49 = v179;
      sub_1001CC14C(v48, v179, type metadata accessor for DeviceRecord);
      v50 = *v176;
      v51 = v176[1];
      v52 = objc_allocWithZone(BTCloudDevice);
      v53 = String._bridgeToObjectiveC()();
      v54 = [v52 initWithBluetoothAddress:v53];

      v55 = *v175;
      v56 = v175[1];
      v57 = String._bridgeToObjectiveC()();
      [v54 setNickname:v57];

      v58 = *v44;
      v59 = v44[1];
      v60 = String._bridgeToObjectiveC()();
      [v54 setModelNumber:v60];

      v61 = *v45;
      v62 = v45[1];
      v63 = String._bridgeToObjectiveC()();
      [v54 setManufacturer:v63];

      v64 = *v46;
      v65 = v46[1];
      v66 = String._bridgeToObjectiveC()();
      [v54 setProductID:v66];

      v67 = *v47;
      v68 = v47[1];
      v69 = String._bridgeToObjectiveC()();
      [v54 setVendorID:v69];

      sub_1001CC1B4(v49, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 += v174;
      --v42;
    }

    while (v42);
    v39 = v180;
    v2 = v170;
  }

  v77 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v162 = v77;
  v73 = *(v2 + v77);
  v31 = v168;
  v30 = v173;
  if (v73 >> 62)
  {
LABEL_128:
    v78 = _CocoaArrayWrapper.endIndex.getter();
    if (!v78)
    {
      goto LABEL_129;
    }

LABEL_38:
    if (v78 < 1)
    {
      goto LABEL_166;
    }

    for (m = 0; m != v78; ++m)
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v80 = *(v73 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v80 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v81 = Array._bridgeToObjectiveC()().super.isa;
        [v80 devicesUpdatedWithRecords:v81];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v2 = v170;
    v31 = v168;
    v30 = v173;
    goto LABEL_129;
  }

  v78 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v78)
  {
    goto LABEL_38;
  }

LABEL_129:

  v39 = v171;
  if (!v177)
  {
  }

  v130 = 0;
  v179 = (v30 + *(v164 + 24));
  v131 = v178;
  v175 = (v178 + ((*(v171 + 80) + 32) & ~*(v171 + 80)));
  v176 = 0x8000000100267AA0;
  v164 = v163 + 16;
  v163 += 8;
  v174 = v165 + 48;
  v165 = xmmword_1002290F0;
  while (v130 < v131[2])
  {
    sub_1001CC14C(v175 + *(v39 + 72) * v130, v30, type metadata accessor for DeviceRecord);
    v132 = *v179 == 0xD000000000000011 && v176 == v179[1];
    if (v132 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_132;
    }

    sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v133 = v167;
      v134 = sub_1000EE91C(v167, qword_100300BA8);
      v135 = v166;
      (*v164)(v166, v134, v133);
      v136 = sub_10018C984(v135);

      v137 = (*v163)(v135, v133);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v136 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    __chkstk_darwin(v137);
    v30 = v173;
    *(&v161 - 2) = v173;
    sub_10017D118(sub_1001CE134, v136, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v31);

    if ((*v174)(v31, 1, v172) != 1)
    {
      sub_1001CC214(v31, v169, type metadata accessor for MagicPairingSettingsRecord);
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v138 = swift_allocObject();
      *(v138 + 16) = v165;
      *(v138 + 32) = sub_10010CFB8();
      v39 = *(v2 + v162);
      if (v39 >> 62)
      {
        if (v39 < 0)
        {
          v143 = *(v2 + v162);
        }

        v139 = _CocoaArrayWrapper.endIndex.getter();
        if (!v139)
        {
          goto LABEL_161;
        }

LABEL_149:
        if (v139 < 1)
        {
          goto LABEL_165;
        }

        for (n = 0; n != v139; ++n)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v141 = *(v39 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v141 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v142 = Array._bridgeToObjectiveC()().super.isa;
            [v141 magicPairingRecordsUpdatedWithRecords:v142];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v139 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v139)
        {
          goto LABEL_149;
        }

LABEL_161:
      }

      sub_1001CC1B4(v169, type metadata accessor for MagicPairingSettingsRecord);

      v2 = v170;
      v39 = v171;
      v31 = v168;
      v30 = v173;
      goto LABEL_132;
    }

    sub_1000EEE6C(v31, &unk_1002F9C30, &qword_1002299A0);
    v39 = v171;
LABEL_132:
    ++v130;
    sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
    v131 = v178;
    if (v130 == v177)
    {
    }
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
  }

LABEL_94:
  if (a1 >= 1)
  {

    v118 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v119 = *(v39 + 8 * v118 + 32);
        swift_unknownObjectRetain();
      }

      if ([v119 respondsToSelector:"deviceSupportInformationRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
        swift_unknownObjectRetain();
        v120 = Array._bridgeToObjectiveC()().super.isa;
        [v119 deviceSupportInformationRecordsUpdatedWithRecords:v120];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v118;
    }

    while (a1 != v118);
  }

  __break(1u);
LABEL_170:
  if (a1 < 0)
  {
    v128 = a1;
  }

  else
  {
    v128 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_174;
  }

LABEL_120:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
LABEL_209:
  result = _CocoaArrayWrapper.endIndex.getter();
  v157 = result;
  if (!result)
  {
    goto LABEL_210;
  }

LABEL_198:
  if (v157 >= 1)
  {

    for (ii = 0; ii != v157; ++ii)
    {
      if ((v128 & 0xC000000000000001) != 0)
      {
        v159 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v159 = *(v128 + 8 * ii + 32);
        swift_unknownObjectRetain();
      }

      if ([v159 respondsToSelector:"devicesUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v160 = Array._bridgeToObjectiveC()().super.isa;
        [v159 devicesUpdatedWithRecords:v160];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_211;
  }

LABEL_215:
  __break(1u);
  return result;
}