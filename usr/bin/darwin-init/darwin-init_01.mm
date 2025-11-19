void sub_100017254()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v42);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchTime();
  v8 = *(v54 - 8);
  v9 = __chkstk_darwin(v54);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = dispatch_semaphore_create(0);
  v15 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];
  v16 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest];
  v52 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest + 8];
  v53 = v16;
  v17 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space + 8];
  v51 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v14;
  v19 = *((swift_isaMask & *v15) + 0x350);
  v20 = v1;
  v21 = v14;

  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v8 + 8);
  v23 = v11;
  v24 = v54;
  v22(v23, v54);
  OS_dispatch_semaphore.wait(timeout:)();
  v22(v13, v24);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v53 = 0x8000000100429E40;
    v54 = 0x8000000100429AF0;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v25._countAndFlagsBits = 0x207265746661;
    v25._object = 0xE600000000000000;
    String.append(_:)(v25);
    Double.write<A>(to:)();
    v26._countAndFlagsBits = 0x73646E6F63657320;
    v26._object = 0xE800000000000000;
    String.append(_:)(v26);
    v51 = v55;
    v41 = v56;
    v52 = type metadata accessor for KnoxServiceClient.ClientError();
    v27 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    static DispatchQoS.userInitiated.getter();
    v55 = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v40 = v20;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    isa = v44[13].isa;
    v44 = v21;
    isa(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v50);
    static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v30, v31);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v53;
    *(v27 + 16) = 0xD000000000000022;
    *(v27 + 24) = v33;
    *(v27 + 32) = 0xD000000000000065;
    v34 = v54;
    *(v27 + 56) = 20;
    *(v27 + 40) = v34;
    *(v27 + 48) = 330;
    v35 = v41;
    *(v27 + 64) = v51;
    *(v27 + 72) = v35;
    *(v27 + 80) = 0;
    *(v27 + 88) = v32;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v36 = swift_allocError();
    *v37 = v27;
    swift_getErrorValue();

    v38 = Error.localizedDescription.getter();
    sub_100036D50(v36, v38, v39);
  }

  else
  {
  }
}

Swift::Int sub_100017948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
    swift_beginAccess();
    *(a3 + v3) = a1;
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_1000179C4(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  swift_beginAccess();
  v34 = v2;
  *(v2 + v8) = 1;

  sub_100014ED0();

  v27 = 0x8000000100429AF0;
  v28 = type metadata accessor for KnoxServiceClient.ClientError();
  v9 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v26 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v10 = v31;
  v11 = v33;
  (*(v31 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v33);
  static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v4, v11);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v9 + 16) = 0x72286C65636E6163;
  *(v9 + 24) = 0xEF293A6E6F736165;
  *(v9 + 32) = 0xD000000000000065;
  v13 = v27;
  *(v9 + 56) = 5;
  *(v9 + 40) = v13;
  *(v9 + 48) = 352;
  v14 = v36;
  *(v9 + 64) = v35;
  *(v9 + 72) = v14;
  *(v9 + 80) = 0;
  *(v9 + 88) = v12;
  sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  v15 = swift_allocError();
  *v16 = v9;
  swift_getErrorValue();

  v17 = Error.localizedDescription.getter();
  v18 = v34;
  sub_100036D50(v15, v17, v19);

  sub_1000039E8(&unk_1004A7370);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100376A40;
  v21 = [v18 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_10001A9EC();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_10001AA40(0, &qword_1004A7380);
  v25 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void **sub_100017F5C()
{
  v0 = sub_10001AA88();

  return v0;
}

BOOL sub_100017F88()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
LABEL_6:
    OS_dispatch_queue.sync<A>(execute:)();
    return v5 != 0;
  }

  v3 = *(v2 + 56);
  if (v3 != 9)
  {
    if (v3 == 13 || v3 == 16)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_100018058(uint64_t a1)
{
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  sub_100036D50(a1, v2, v3);
}

uint64_t sub_1000180C8()
{
  v1 = v0;
  v2 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
  swift_beginAccess();
  *(v1 + v9) = 0;

  sub_100014ED0();

  v10 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
  swift_beginAccess();
  sub_100013E54(v1 + v10, v4, &qword_1004A6D30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100013F2C(v4, &qword_1004A6D30);
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v20 = 0;
  v16 = [v12 removeItemAtURL:v14 error:&v20];

  if (v16)
  {
    v17 = v20;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100018384()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000183C8(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000184A8()
{
  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL, &qword_1004A6D30);
  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL, &qword_1004A6D30);
}

id ExtractTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtractTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *_s16KnoxClientPublic11ExtractTaskC6client18outputDirectoryURL7pointer19includePathPatterns07excludelM0AcA0a7ServiceB0C_10Foundation0I0VAA0A7PointerCSaySSGSgAQtcfC_0(void *a1, char *a2, char *a3, void *a4, char *a5)
{
  v130 = a5;
  v125 = a4;
  v117 = type metadata accessor for DispatchQoS.QoSClass();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v110);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v128 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v129 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000039E8(&qword_1004A6D30);
  v17 = __chkstk_darwin(v16 - 8);
  v109 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v121 = &v108 - v20;
  v21 = __chkstk_darwin(v19);
  v122 = &v108 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v108 - v24;
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v28 = *(v14 + 16);
  v127 = a2;
  v119 = v14 + 16;
  v118 = v28;
  v28(&v108 - v26, a2, v13);
  v133 = v14;
  v134 = v27;
  v29 = *(v14 + 56);
  (v29)(v27, 0, 1, v13);
  v131 = v25;
  (v29)(v25, 1, 1, v13);
  v30 = (*&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
  v31 = *v30;
  v32 = v30[1];
  v126 = a3;
  v33 = *&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v34 = *&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space + 8];
  v35 = objc_allocWithZone(type metadata accessor for ExtractTask());
  (v29)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL], 1, 1, v13);
  v132 = v13;
  v120 = v29;
  (v29)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL], 1, 1, v13);
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents] = 0;
  v36 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  type metadata accessor for ExtractTask.RandomAccessStreams();
  v37 = swift_allocObject();
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  *&v35[v36] = v37;
  v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled] = 0;
  v38 = *((swift_isaMask & *a1) + 0x110);
  v39 = a1;

  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount] = v38(v40);
  v41 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest];
  v124 = v31;
  *v41 = v31;
  v41[1] = v32;
  v42 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space];
  v123 = v33;
  *v42 = v33;
  v42[1] = v34;
  if (v125)
  {
    v43 = v125;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
  }

  if (v130)
  {
    v44 = v130;
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for AEAUtils.FilePathRegexFilter();
  v45 = swift_allocObject();
  *(v45 + 24) = v44;
  if (v43[2])
  {
  }

  else
  {

    v43 = 0;
  }

  *(v45 + 16) = v43;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter] = v45;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_trimingPrefixes] = &_swiftEmptyArrayStorage;
  v46 = v39;
  v47 = sub_10003D38C(v46);
  v125 = v46;

  swift_getObjectType();
  v48 = v47;
  v137 = _typeName(_:qualified:)();
  v138 = v49;
  v50._countAndFlagsBits = 2108704;
  v50._object = 0xE300000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v123;
  v51._object = v34;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 47;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = v124;
  v53._object = v32;
  String.append(_:)(v53);

  v54 = v137;
  v55 = v138;
  v56 = &v48[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v56 = v54;
  v56[1] = v55;

  v57 = v122;
  sub_100013E54(v134, v122, &qword_1004A6D30);
  v59 = v132;
  v58 = v133;
  v60 = *(v133 + 48);
  if (v60(v57, 1, v132) == 1)
  {
    v130 = v48;
    sub_100013F2C(v57, &qword_1004A6D30);
    v61 = v131;
    v62 = v109;
    sub_100013E54(v131, v109, &qword_1004A6D30);
    v63 = v60(v62, 1, v59);
    v64 = v129;
    if (v63 == 1)
    {
      sub_100013F2C(v62, &qword_1004A6D30);
      v123 = 0x8000000100429A70;
      v122 = 0x8000000100429AF0;
      v124 = 0x8000000100429B60;
      v129 = type metadata accessor for KnoxServiceClient.ClientError();
      v65 = swift_allocObject();
      v120 = sub_10001AA40(0, &qword_1004A7840);
      v121 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v135 = &_swiftEmptyArrayStorage;
      sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      v59 = v132;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v111 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v112);
      v66 = v116;
      v67 = v115;
      v68 = v117;
      (*(v116 + 104))(v115, enum case for DispatchQoS.QoSClass.default(_:), v117);
      static OS_dispatch_queue.global(qos:)();
      (*(v66 + 8))(v67, v68);
      v69 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v70 = v123;
      *(v65 + 16) = 0xD000000000000078;
      *(v65 + 24) = v70;
      v71 = v122;
      *(v65 + 32) = 0xD000000000000065;
      *(v65 + 40) = v71;
      *(v65 + 56) = 4;
      *(v65 + 48) = 182;
      v72 = v124;
      *(v65 + 64) = 0xD00000000000004ALL;
      *(v65 + 72) = v72;
      *(v65 + 80) = 0;
      *(v65 + 88) = v69;
      sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v73 = swift_allocError();
      *v74 = v65;
      swift_getErrorValue();

      v75 = Error.localizedDescription.getter();
      v48 = v130;
      sub_100036D50(v73, v75, v76);
      v77 = v125;

      sub_100013F2C(v131, &qword_1004A6D30);
      sub_100013F2C(v134, &qword_1004A6D30);

      v78 = v133;
      goto LABEL_18;
    }

    v78 = v133;
    (*(v133 + 32))(v129, v62, v59);
    v81 = v121;
    v118(v121, v64, v59);
    (v120)(v81, 0, 1, v59);
    v82 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
    v48 = v130;
    swift_beginAccess();
    sub_10001F8D8(v81, &v48[v82], &qword_1004A6D30);
    swift_endAccess();
  }

  else
  {
    v64 = v129;
    (*(v58 + 32))(v129, v57, v59);
    v79 = v121;
    v118(v121, v64, v59);
    (v120)(v79, 0, 1, v59);
    v80 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL;
    swift_beginAccess();
    sub_10001F8D8(v79, &v48[v80], &qword_1004A6D30);
    swift_endAccess();
    v78 = v58;
    v61 = v131;
  }

  if (URL.isFileURL.getter())
  {
    v77 = v125;

    (*(v78 + 8))(v64, v59);
    sub_100013F2C(v61, &qword_1004A6D30);
    sub_100013F2C(v134, &qword_1004A6D30);
  }

  else
  {
    v122 = 0x8000000100429A70;
    v121 = 0x8000000100429AF0;
    v123 = 0x8000000100429BD0;
    v124 = type metadata accessor for KnoxServiceClient.ClientError();
    v83 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v120 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v135 = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v59 = v132;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v111 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v112);
    v84 = v116;
    v85 = *(v116 + 104);
    v130 = v48;
    v86 = v115;
    v87 = v117;
    v85(v115, enum case for DispatchQoS.QoSClass.default(_:), v117);
    static OS_dispatch_queue.global(qos:)();
    (*(v84 + 8))(v86, v87);
    v88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v89 = v122;
    *(v83 + 16) = 0xD000000000000078;
    *(v83 + 24) = v89;
    v90 = v121;
    *(v83 + 32) = 0xD000000000000065;
    *(v83 + 40) = v90;
    *(v83 + 56) = 4;
    *(v83 + 48) = 190;
    v91 = v123;
    *(v83 + 64) = 0xD00000000000004DLL;
    *(v83 + 72) = v91;
    *(v83 + 80) = 0;
    *(v83 + 88) = v88;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v92 = swift_allocError();
    *v93 = v83;
    swift_getErrorValue();

    v78 = v133;
    v94 = Error.localizedDescription.getter();
    sub_100036D50(v92, v94, v95);
    v77 = v125;

    (*(v78 + 8))(v129, v59);
    sub_100013F2C(v131, &qword_1004A6D30);
    sub_100013F2C(v134, &qword_1004A6D30);
    v48 = v130;
  }

LABEL_18:
  v135 = 0;
  v136 = 0xE000000000000000;
  v96 = v48;
  _StringGuts.grow(_:)(20);
  swift_getObjectType();
  v97 = _typeName(_:qualified:)();
  v99 = v98;

  v135 = v97;
  v136 = v99;
  v100._countAndFlagsBits = 0xD000000000000010;
  v100._object = 0x8000000100429BB0;
  String.append(_:)(v100);
  v101 = v126;
  v102 = *&v126[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v103 = *&v126[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name + 8];

  v104._countAndFlagsBits = v102;
  v104._object = v103;
  String.append(_:)(v104);

  v105 = v135;
  v106 = v136;
  (*(v78 + 8))(v127, v59);
  *v56 = v105;
  v56[1] = v106;

  return v96;
}

char *sub_100019890(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t *a7, void *a8, void *a9)
{
  v120 = a8;
  v119 = a7;
  v128 = a6;
  v130 = a5;
  v121 = a9;
  v114 = type metadata accessor for DispatchQoS.QoSClass();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v111 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v106);
  v110 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v109 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000039E8(&qword_1004A6D30);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v117 = &v104 - v26;
  v27 = __chkstk_darwin(v25);
  v118 = &v104 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v104 - v30;
  __chkstk_darwin(v29);
  v32 = *(v19 + 56);
  v127 = &v104 - v33;
  v32();
  v126 = v19;
  v34 = *(v19 + 16);
  v122 = a2;
  v116 = v34;
  v115 = (v19 + 16);
  v34(v31, a2, v18);
  v124 = v31;
  (v32)(v31, 0, 1, v18);
  v35 = objc_allocWithZone(type metadata accessor for ExtractTask());
  (v32)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL], 1, 1, v18);
  v125 = v18;
  (v32)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL], 1, 1, v18);
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents] = 0;
  v36 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  type metadata accessor for ExtractTask.RandomAccessStreams();
  v37 = swift_allocObject();
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  *&v35[v36] = v37;
  v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled] = 0;
  v38 = *((swift_isaMask & *a1) + 0x110);
  v39 = a1;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount] = v38();
  v40 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest];
  v129 = a3;
  *v40 = a3;
  v40[1] = a4;
  v41 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space];
  v42 = v128;
  *v41 = v130;
  v41[1] = v42;
  if (v119)
  {
    v43 = v119;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
  }

  if (v120)
  {
    v44 = v120;
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for AEAUtils.FilePathRegexFilter();
  v45 = swift_allocObject();
  *(v45 + 24) = v44;
  v46 = v43[2];
  v105 = v24;
  if (v46)
  {
  }

  else
  {

    v43 = 0;
  }

  *(v45 + 16) = v43;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter] = v45;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_trimingPrefixes] = v121;
  v47 = v39;
  v48 = sub_10003D38C(v47);
  v120 = v47;

  swift_getObjectType();
  v49 = v48;
  v133 = _typeName(_:qualified:)();
  v134 = v50;
  v51._countAndFlagsBits = 2108704;
  v51._object = 0xE300000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = v130;
  v52._object = v42;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 47;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v129;
  v121 = a4;
  v54._object = a4;
  String.append(_:)(v54);
  v55 = v133;
  v56 = v134;
  v57 = &v49[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v57 = v55;
  v57[1] = v56;
  v119 = v57;

  v58 = v118;
  sub_100013E54(v127, v118, &qword_1004A6D30);
  v59 = v125;
  v60 = v126;
  v61 = *(v126 + 48);
  if (v61(v58, 1, v125) != 1)
  {
    v76 = v123;
    (*(v60 + 32))(v123, v58, v59);
    v77 = v117;
    v116(v117, v76, v59);
    (v32)(v77, 0, 1, v59);
    v78 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL;
    swift_beginAccess();
    sub_10001F8D8(v77, &v49[v78], &qword_1004A6D30);
    swift_endAccess();
    v62 = v124;
    if ((URL.isFileURL.getter() & 1) == 0)
    {
LABEL_16:
      v115 = 0x8000000100429A70;
      v116 = 0x8000000100429AF0;
      v117 = 0x8000000100429BD0;
      v118 = type metadata accessor for KnoxServiceClient.ClientError();
      v81 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v105 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v131 = &_swiftEmptyArrayStorage;
      sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v107 + 104))(v111, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
      v82 = v113;
      v83 = v112;
      v84 = v114;
      (*(v113 + 104))(v112, enum case for DispatchQoS.QoSClass.default(_:), v114);
      static OS_dispatch_queue.global(qos:)();
      (*(v82 + 8))(v83, v84);
      v59 = v125;
      v85 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v81 + 16) = 0xD000000000000078;
      *(v81 + 24) = v115;
      *(v81 + 32) = 0xD000000000000065;
      v86 = v116;
      *(v81 + 56) = 4;
      *(v81 + 40) = v86;
      *(v81 + 48) = 190;
      v87 = v117;
      *(v81 + 64) = 0xD00000000000004DLL;
      *(v81 + 72) = v87;
      *(v81 + 80) = 0;
      *(v81 + 88) = v85;
      sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v88 = swift_allocError();
      *v89 = v81;
      swift_getErrorValue();

      v60 = v126;
      v90 = Error.localizedDescription.getter();
      sub_100036D50(v88, v90, v91);
      v75 = v120;

      (*(v60 + 8))(v123, v59);
      sub_100013F2C(v124, &qword_1004A6D30);
      sub_100013F2C(v127, &qword_1004A6D30);

      goto LABEL_17;
    }

LABEL_14:
    v75 = v120;

    (*(v60 + 8))(v76, v59);
    sub_100013F2C(v62, &qword_1004A6D30);
    sub_100013F2C(v127, &qword_1004A6D30);
    goto LABEL_17;
  }

  v104 = v49;
  sub_100013F2C(v58, &qword_1004A6D30);
  v62 = v124;
  v63 = v105;
  sub_100013E54(v124, v105, &qword_1004A6D30);
  if (v61(v63, 1, v59) != 1)
  {
    v60 = v126;
    v76 = v123;
    (*(v126 + 32))(v123, v63, v59);
    v79 = v117;
    v116(v117, v76, v59);
    (v32)(v79, 0, 1, v59);
    v80 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
    v49 = v104;
    swift_beginAccess();
    sub_10001F8D8(v79, &v49[v80], &qword_1004A6D30);
    swift_endAccess();
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_100013F2C(v63, &qword_1004A6D30);
  v116 = 0x8000000100429A70;
  v117 = 0x8000000100429AF0;
  v118 = 0x8000000100429B60;
  v123 = type metadata accessor for KnoxServiceClient.ClientError();
  v64 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v115 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v131 = &_swiftEmptyArrayStorage;
  sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v107 + 104))(v111, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
  v65 = v113;
  v66 = v112;
  v67 = v114;
  (*(v113 + 104))(v112, enum case for DispatchQoS.QoSClass.default(_:), v114);
  static OS_dispatch_queue.global(qos:)();
  (*(v65 + 8))(v66, v67);
  v59 = v125;
  v68 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v64 + 16) = 0xD000000000000078;
  *(v64 + 24) = v116;
  *(v64 + 32) = 0xD000000000000065;
  v69 = v117;
  *(v64 + 56) = 4;
  *(v64 + 40) = v69;
  *(v64 + 48) = 182;
  v70 = v118;
  *(v64 + 64) = 0xD00000000000004ALL;
  *(v64 + 72) = v70;
  *(v64 + 80) = 0;
  *(v64 + 88) = v68;
  sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  v71 = swift_allocError();
  *v72 = v64;
  swift_getErrorValue();

  v73 = Error.localizedDescription.getter();
  v49 = v104;
  sub_100036D50(v71, v73, v74);
  v75 = v120;

  sub_100013F2C(v62, &qword_1004A6D30);
  sub_100013F2C(v127, &qword_1004A6D30);

  v60 = v126;
LABEL_17:
  v131 = 0;
  v132 = 0xE000000000000000;
  v92 = v49;
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  v93 = _typeName(_:qualified:)();
  v95 = v94;

  v131 = v93;
  v132 = v95;
  v96._countAndFlagsBits = 0x68637261206F7420;
  v96._object = 0xEE00202D20657669;
  String.append(_:)(v96);
  v97._countAndFlagsBits = v130;
  v97._object = v128;
  String.append(_:)(v97);

  v98._countAndFlagsBits = 47;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99._countAndFlagsBits = v129;
  v99._object = v121;
  String.append(_:)(v99);

  v100 = v131;
  v101 = v132;
  (*(v60 + 8))(v122, v59);
  v102 = v119;
  *v119 = v100;
  v102[1] = v101;

  return v92;
}

unint64_t sub_10001A9EC()
{
  result = qword_1004A7870;
  if (!qword_1004A7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7870);
  }

  return result;
}

uint64_t sub_10001AA40(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void **sub_10001AA88()
{
  v1 = v350;
  v312 = type metadata accessor for ArchiveFlags();
  v310 = *(v312 - 8);
  __chkstk_darwin(v312);
  v311 = &v298 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v3 - 8);
  v320 = &v298 - v4;
  v331 = type metadata accessor for DispatchQoS.QoSClass();
  v330 = *(v331 - 8);
  __chkstk_darwin(v331);
  v329 = &v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v335 = *(v6 - 8);
  __chkstk_darwin(v6);
  v333 = &v298 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v328);
  v9 = &v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v336 = (&v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000039E8(&qword_1004A6D30);
  v13 = __chkstk_darwin(v12 - 8);
  v317 = &v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v319 = &v298 - v16;
  v17 = __chkstk_darwin(v15);
  v339 = &v298 - v18;
  __chkstk_darwin(v17);
  v20 = &v298 - v19;
  v341 = type metadata accessor for URL();
  v340 = *(v341 - 8);
  v21 = __chkstk_darwin(v341);
  v313 = &v298 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v314 = &v298 - v24;
  v25 = __chkstk_darwin(v23);
  v316 = &v298 - v26;
  v27 = __chkstk_darwin(v25);
  v315 = &v298 - v28;
  v29 = __chkstk_darwin(v27);
  v318 = &v298 - v30;
  v31 = __chkstk_darwin(v29);
  v323 = &v298 - v32;
  v33 = __chkstk_darwin(v31);
  v324 = &v298 - v34;
  v35 = __chkstk_darwin(v33);
  v325 = &v298 - v36;
  __chkstk_darwin(v35);
  v326 = (&v298 - v37);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v298 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  swift_beginAccess();
  v43 = sub_100037198(*&v0[v42]);
  v44 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session];
  v334 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session;
  *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session] = v43;

  v337 = v0;
  v45 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];
  v46 = *((swift_isaMask & *v45) + 0x1E8);
  v321 = v45;
  v46(&aBlock);
  object = v352;
  v332 = v9;
  if (v352)
  {
    countAndFlagsBits = aBlock;
  }

  else
  {
    UUID.init()();
    v49 = UUID.uuidString.getter();
    v51 = v50;
    (*(v39 + 8))(v41, v38);
    v350[0] = v49;
    v350[1] = v51;
    v347 = 45;
    v348 = 0xE100000000000000;
    v345 = 0;
    v346 = 0xE000000000000000;
    v296 = sub_10000B080();
    v297 = v296;
    *&v295 = &type metadata for String;
    *(&v295 + 1) = v296;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v52 = String.lowercased()();
    countAndFlagsBits = v52._countAndFlagsBits;
    object = v52._object;
  }

  v53 = v337;
  v54 = *&v337[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = countAndFlagsBits;
  *(v55 + 32) = object;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_10001F858;
  *(v56 + 24) = v55;
  v355 = sub_10001F874;
  v356 = v56;
  aBlock = _NSConcreteStackBlock;
  v352 = 1107296256;
  v353 = sub_10003885C;
  v354 = &unk_10047C1F8;
  v57 = _Block_copy(&aBlock);
  LODWORD(v58) = v356;
  v59 = v53;

  dispatch_sync(v54, v57);
  _Block_release(v57);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_67;
  }

  v61 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
  swift_beginAccess();
  v62 = *&v59[v61];
  v327 = v54;
  v338 = v59;
  if (!v62)
  {
    sub_100017254();
    v62 = *&v59[v61];
    if (!v62)
    {
      sub_1000CEF18(v321, *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest], *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest + 8], *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space], *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space + 8], 0);
      v111 = v110;
      v304 = v6;
      v112 = *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams];
      v113 = *(v334 + v53);
      swift_beginAccess();
      v114 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location;
      v115 = v111;
      v334 = v112;

      v337 = v113;

      v116 = v339;
      URL.init(string:)();

      v117 = v340;
      v118 = *(v340 + 48);
      v119 = v341;
      v120 = v118(v116, 1, v341);
      v326 = v115;
      if (v120 == 1)
      {
        sub_100013F2C(v116, &qword_1004A6D30);
        v340 = 0x8000000100429E70;
        v341 = 0x8000000100429EB0;
        v347 = 0;
        v348 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v347 = 0xD00000000000002BLL;
        v348 = 0x8000000100429F10;
        v121 = (*(v115 + v114) + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);
        v122 = *v121;
        v123 = v121[1];

        v124._countAndFlagsBits = v122;
        v124._object = v123;
        String.append(_:)(v124);

        v325 = v347;
        v324 = v348;
        v339 = type metadata accessor for KnoxServiceClient.ClientError();
        v125 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        static DispatchQoS.userInitiated.getter();
        v347 = &_swiftEmptyArrayStorage;
        sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v335 + 13))(v333, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v304);
        v126 = v330;
        v127 = v329;
        v128 = v331;
        (*(v330 + 104))(v329, enum case for DispatchQoS.QoSClass.default(_:), v331);
        static OS_dispatch_queue.global(qos:)();
        (*(v126 + 8))(v127, v128);
        v129 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v130 = v340;
        *(v125 + 16) = 0xD00000000000003FLL;
        *(v125 + 24) = v130;
        v131 = v341;
        *(v125 + 32) = 0xD00000000000005DLL;
        *(v125 + 40) = v131;
        *(v125 + 56) = 18;
        *(v125 + 48) = 52;
        v132 = v324;
        *(v125 + 64) = v325;
        *(v125 + 72) = v132;
        *(v125 + 80) = 0;
        *(v125 + 88) = v129;
        sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v58 = swift_allocError();
        *v133 = v125;
        swift_willThrow();
        v1 = v350;
        v54 = v327;
        v134 = v337;
      }

      else
      {
        v299 = v118;
        v135 = v324;
        v298 = *(v117 + 32);
        v298(v324, v116, v119);
        v136 = *(v117 + 16);
        v307 = (v117 + 16);
        v322 = v136;
        (v136)(v323, v135, v119);
        v325 = *(v115 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size);
        type metadata accessor for KnoxRandomAccessDownloadStream(0);
        v137 = swift_allocObject();
        *(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos) = 0;
        v309 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_synchronizationQueue;
        sub_10001AA40(0, &qword_1004A7840);
        v308 = " a valid URL instance from ";
        static DispatchQoS.default.getter();
        v347 = &_swiftEmptyArrayStorage;
        sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        v339 = 0;
        sub_1000039E8(&unk_1004A7850);
        sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v138 = *(v335 + 13);
        v300 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
        v301 = v138;
        v138(v333);
        v139 = v330;
        v140 = *(v330 + 104);
        v141 = v329;
        v302 = enum case for DispatchQoS.QoSClass.default(_:);
        v142 = v331;
        v303 = v140;
        v140(v329);
        static OS_dispatch_queue.global(qos:)();
        v143 = *(v139 + 8);
        (v143)(v141, v142);
        v144 = v341;
        *(v137 + v309) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        *(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled) = 0;
        *(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream) = 0;
        v145 = v337;
        *(v137 + 16) = v337;
        *(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_task) = v59;
        v146 = v321;
        *(v137 + 24) = v321;
        v147 = v323;
        (v322)(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url);
        *(v137 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize) = v325;
        v148 = v59;
        v149 = v146;
        v150 = v145;
        v151 = v339;
        sub_10006A608();
        if (!v151)
        {
          v325 = v150;
          v308 = v143;
          v161 = *(v340 + 8);
          (v161)(v147, v144);
          v1 = v350;
          v207 = sub_100068ACC();
          v208 = v149;
          v209 = v326;
          v210 = sub_100047650(v207, v209, v321, 0);
          v339 = 0;
          v238 = v210;

          v305 = v161;
          (v161)(v324, v341);
          v239 = *(v238 + 16);

          v240 = v334;
          *(v334 + 6) = v239;
          swift_endAccess();

          *(v240 + 2) = v207;

          goto LABEL_25;
        }

        v134 = v145;

        v152 = *(v340 + 8);
        v152(v147, v144);
        v152(v324, v144);
        v1 = v350;
        v54 = v327;
        v58 = v151;
      }

      swift_endAccess();

      isEscapingClosureAtFileLocation = v338;
      goto LABEL_11;
    }
  }

  v309 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  v63 = *&v59[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams];
  v64 = *(v334 + v53);
  swift_beginAccess();
  v65 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location;
  v324 = *(v62 + 16);
  v323 = v62;

  v322 = v63;

  v339 = v64;

  URL.init(string:)();

  v66 = v340;
  v67 = *(v340 + 48);
  v68 = v341;
  if (v67(v20, 1, v341) == 1)
  {
    sub_100013F2C(v20, &qword_1004A6D30);
    v340 = 0x8000000100429E70;
    v341 = 0x8000000100429EB0;
    v347 = 0;
    v348 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v347 = 0xD00000000000002BLL;
    v348 = 0x8000000100429F10;
    v69 = (*&v324[v65] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);
    v70 = *v69;
    v71 = v69[1];

    v72._countAndFlagsBits = v70;
    v72._object = v71;
    String.append(_:)(v72);

    v334 = v347;
    v326 = v348;
    v337 = type metadata accessor for KnoxServiceClient.ClientError();
    v73 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    static DispatchQoS.userInitiated.getter();
    v347 = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v335 + 13))(v333, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v74 = v330;
    v75 = v329;
    v76 = v331;
    (*(v330 + 104))(v329, enum case for DispatchQoS.QoSClass.default(_:), v331);
    static OS_dispatch_queue.global(qos:)();
    (*(v74 + 8))(v75, v76);
    v77 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v78 = v340;
    *(v73 + 16) = 0xD00000000000003FLL;
    *(v73 + 24) = v78;
    v79 = v341;
    *(v73 + 32) = 0xD00000000000005DLL;
    *(v73 + 40) = v79;
    *(v73 + 56) = 18;
    *(v73 + 48) = 52;
    v80 = v326;
    *(v73 + 64) = v334;
    *(v73 + 72) = v80;
    *(v73 + 80) = 0;
    *(v73 + 88) = v77;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v58 = swift_allocError();
    *v81 = v73;
    swift_willThrow();
    v1 = v350;
    isEscapingClosureAtFileLocation = v338;
    v82 = v339;
    swift_endAccess();

LABEL_10:
    v54 = v327;
LABEL_11:
    swift_getErrorValue();
    v98 = Error.localizedDescription.getter();
    sub_100036D50(v58, v98, v99);

    aBlock = v58;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    type metadata accessor for KnoxServiceClient.ClientError();
    if (swift_dynamicCast())
    {
      if (*(v349 + 56) == 19)
      {
        result = (*(*v349 + 21))();
        if (v101)
        {
          sub_1000179C4(result, v101);

          goto LABEL_17;
        }

        goto LABEL_88;
      }
    }

    while (1)
    {
LABEL_17:
      v55 = swift_allocObject();
      *(v55 + 16) = isEscapingClosureAtFileLocation;
      *(v55 + 24) = 1;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_10001F8CC;
      *(v56 + 24) = v55;
      v355 = sub_10001FA40;
      v356 = v56;
      aBlock = _NSConcreteStackBlock;
      v352 = 1107296256;
      v353 = sub_10003885C;
      v354 = &unk_10047C270;
      v102 = _Block_copy(&aBlock);
      v103 = isEscapingClosureAtFileLocation;

      dispatch_sync(v54, v102);
      _Block_release(v102);
      v53 = swift_isEscapingClosureAtFileLocation();

      if ((v53 & 1) == 0)
      {
        return v103;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      (v305)(v1, v341);
      v201 = v54;
LABEL_45:
      type metadata accessor for AEAUtils.TaskFilterWrapper();
      v222 = swift_allocObject();
      *(v222 + 16) = v338;
      *(v222 + 24) = v55;
      v223 = __chkstk_darwin(v222);
      v224 = v334;
      *(&v298 - 8) = v334;
      *(&v298 - 7) = v53;
      *(&v298 - 6) = &v349;
      *(&v298 - 5) = v223;
      v295 = xmmword_100376A50;
      LODWORD(v296) = v58;
      if ((v201 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v201 & 0x2000000000000000) != 0)
      {
        aBlock = isEscapingClosureAtFileLocation;
        v352 = v201 & 0xFFFFFFFFFFFFFFLL;
        v241 = v224;
        v242 = v338;

        Chunk = AEADecryptAndExtractChunk(v241, v53, &aBlock, v56, v222, sub_1000D2420, sub_1000D24A8, 0x400000uLL, 0xFFFFFFFFFFFFFFFFLL, 0x440000000000001uLL, v58);
        if (Chunk)
        {
          v244 = Chunk;
          v334 = &v298;
          v326 = 0x800000010042A130;
          v339 = 0x8000000100429EB0;
          v343 = 0;
          v344 = 0xE000000000000000;
          _StringGuts.grow(_:)(55);
          v245._countAndFlagsBits = 0xD000000000000035;
          v245._object = 0x800000010042A1B0;
          String.append(_:)(v245);
          v342 = v244;
          v246._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v246);

          v324 = v343;
          v323 = v344;
          v325 = type metadata accessor for KnoxServiceClient.ClientError();
          v247 = swift_allocObject();
          v321 = sub_10001AA40(0, &qword_1004A7840);
          v322 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v343 = &_swiftEmptyArrayStorage;
          sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v301(v333, v300, v304);
          v248 = v329;
          v249 = v331;
          v303(v329, v302, v331);
          static OS_dispatch_queue.global(qos:)();
          v335 = v201;
          (v308)(v248, v249);
          v250 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          *(v247 + 16) = 0xD00000000000007ELL;
          *(v247 + 24) = v326;
          *(v247 + 32) = 0xD00000000000005DLL;
          v251 = v339;
          *(v247 + 56) = 0;
          *(v247 + 40) = v251;
          *(v247 + 48) = 380;
          v252 = v323;
          *(v247 + 64) = v324;
          *(v247 + 72) = v252;
          *(v247 + 80) = 0;
          *(v247 + 88) = v250;
          sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          v58 = swift_allocError();
          *v253 = v247;
          swift_willThrow();

          goto LABEL_52;
        }
      }

      else
      {
        if ((isEscapingClosureAtFileLocation & 0x1000000000000000) == 0)
        {
          break;
        }

        v225 = v224;
        v226 = v338;

        v227 = AEADecryptAndExtractChunk(v225, v53, ((v201 & 0xFFFFFFFFFFFFFFFLL) + 32), v56, v222, sub_1000D2420, sub_1000D24A8, 0x400000uLL, 0xFFFFFFFFFFFFFFFFLL, 0x440000000000001uLL, v58);
        if (v227)
        {
          v228 = v227;
          v334 = &v298;
          v326 = 0x800000010042A130;
          v339 = 0x8000000100429EB0;
          aBlock = 0;
          v352 = 0xE000000000000000;
          _StringGuts.grow(_:)(55);
          v229._countAndFlagsBits = 0xD000000000000035;
          v229._object = 0x800000010042A1B0;
          String.append(_:)(v229);
          LODWORD(v343) = v228;
          v230._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v230);

          v324 = aBlock;
          v323 = v352;
          v325 = type metadata accessor for KnoxServiceClient.ClientError();
          v231 = swift_allocObject();
          v321 = sub_10001AA40(0, &qword_1004A7840);
          v322 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          aBlock = &_swiftEmptyArrayStorage;
          sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v301(v333, v300, v304);
          v232 = v329;
          v233 = v331;
          v303(v329, v302, v331);
          static OS_dispatch_queue.global(qos:)();
          v335 = v222;
          (v308)(v232, v233);
          v234 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          *(v231 + 16) = 0xD00000000000007ELL;
          *(v231 + 24) = v326;
          *(v231 + 32) = 0xD00000000000005DLL;
          v235 = v339;
          *(v231 + 56) = 0;
          *(v231 + 40) = v235;
          *(v231 + 48) = 380;
          v236 = v323;
          *(v231 + 64) = v324;
          *(v231 + 72) = v236;
          *(v231 + 80) = 0;
          *(v231 + 88) = v234;
          sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          v58 = swift_allocError();
          *v237 = v231;
          swift_willThrow();

LABEL_52:

          AAByteRangeDestroy(v349);

          v1 = v350;
          v54 = v327;
          isEscapingClosureAtFileLocation = v338;
          v206 = v305;
          goto LABEL_53;
        }
      }

LABEL_58:

      AAByteRangeDestroy(v349);

      (v305)(v318, v341);
      v1 = v350;
      v54 = v327;
      isEscapingClosureAtFileLocation = v338;
LABEL_59:
      v257 = swift_allocObject();
      *(v257 + 16) = isEscapingClosureAtFileLocation;
      *(v257 + 24) = 1;
      v258 = swift_allocObject();
      *(v258 + 16) = sub_10001F9F8;
      *(v258 + 24) = v257;
      v355 = sub_10001FA40;
      v356 = v258;
      aBlock = _NSConcreteStackBlock;
      v352 = 1107296256;
      v353 = sub_10003885C;
      v354 = &unk_10047C2E8;
      v259 = _Block_copy(&aBlock);
      v260 = isEscapingClosureAtFileLocation;

      dispatch_sync(v54, v259);
      _Block_release(v259);
      LOBYTE(v259) = swift_isEscapingClosureAtFileLocation();

      if (v259)
      {
        __break(1u);
        goto LABEL_87;
      }

      sub_100014ED0();
    }

    v334 = &v298;
    v293 = v338;

    v294 = v339;
    _StringGuts._slowWithCString<A>(_:)();
    if (v294)
    {
      v58 = v294;

      goto LABEL_52;
    }

    goto LABEL_58;
  }

  v299 = v67;
  v83 = v326;
  v298 = *(v66 + 32);
  v298(v326, v20, v68);
  v307 = *(v66 + 16);
  v307(v325, v83, v68);
  v308 = *&v324[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size];
  type metadata accessor for KnoxRandomAccessDownloadStream(0);
  v84 = swift_allocObject();
  *(v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos) = 0;
  v306 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v305 = " a valid URL instance from ";
  static DispatchQoS.default.getter();
  v347 = &_swiftEmptyArrayStorage;
  sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = *(v335 + 13);
  v300 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v301 = v85;
  v85(v333);
  v86 = v330;
  v87 = *(v330 + 104);
  v304 = v6;
  v88 = v329;
  v302 = enum case for DispatchQoS.QoSClass.default(_:);
  v89 = v331;
  v303 = v87;
  v87(v329);
  static OS_dispatch_queue.global(qos:)();
  v90 = *(v86 + 8);
  (v90)(v88, v89);
  v91 = v325;
  *&v306[v84] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled) = 0;
  *(v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream) = 0;
  v92 = v339;
  *(v84 + 16) = v339;
  v93 = v338;
  *(v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_task) = v338;
  v94 = v321;
  *(v84 + 24) = v321;
  v307((v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url), v91, v341);
  *(v84 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize) = v308;
  v95 = v93;
  v96 = v92;
  v97 = v94;
  sub_10006A608();
  v306 = v96;
  v307 = v95;
  v308 = v90;
  v104 = v91;
  v105 = *(v340 + 8);
  (v105)(v104, v341);
  v106 = sub_100068ACC();
  v325 = v97;
  v107 = v324;
  v108 = sub_100047650(v106, v107, v321, 0);
  v109 = v326;
  v153 = v108;

  v154 = v325;
  (v105)(v109, v341);
  v155 = *(v153 + 16);

  v156 = v322;
  *(v322 + 6) = v155;
  swift_endAccess();

  *(v156 + 2) = v106;

  v157 = *&v338[v309];
  v158 = *(v334 + v337);

  v159 = v158;
  v160 = sub_1000D4530(v323, v154, v307, v159, 0);
  v305 = v105;
  v162 = v160;
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v339 = 0;

  v157[3] = v162;
  v157[4] = v164;
  v157[5] = v166;
  v157[7] = v168;

  v1 = v350;
LABEL_25:
  v169 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  v170 = *&v338[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams];
  swift_beginAccess();
  v53 = *(v170 + 48);
  v337 = v169;
  if (!v53)
  {
    v339 = 0x8000000100429AF0;
    v340 = 0x8000000100429F80;
    v341 = type metadata accessor for KnoxServiceClient.ClientError();
    v185 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v335 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v1 = v350;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v301(v333, v300, v304);
    v191 = v329;
    v192 = v331;
    v303(v329, v302, v331);
    static OS_dispatch_queue.global(qos:)();
    (v308)(v191, v192);
    v188 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v185 + 16) = 0x2865747563657865;
    *(v185 + 24) = 0xE900000000000029;
    *(v185 + 32) = 0xD000000000000065;
    v193 = v339;
    *(v185 + 56) = 0;
    *(v185 + 40) = v193;
    *(v185 + 48) = 419;
    v194 = 26;
LABEL_32:
    v190 = v194 | 0xD000000000000020;
    goto LABEL_33;
  }

  if (!*(v170 + 16))
  {
    v339 = 0x8000000100429AF0;
    v340 = 0x8000000100429FC0;
    v341 = type metadata accessor for KnoxServiceClient.ClientError();
    v185 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v335 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v1 = v350;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v301(v333, v300, v304);
    v195 = v329;
    v196 = v331;
    v303(v329, v302, v331);
    static OS_dispatch_queue.global(qos:)();
    (v308)(v195, v196);
    v188 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v185 + 16) = 0x2865747563657865;
    *(v185 + 24) = 0xE900000000000029;
    *(v185 + 32) = 0xD000000000000065;
    v197 = v339;
    *(v185 + 56) = 0;
    *(v185 + 40) = v197;
    *(v185 + 48) = 426;
    v194 = 5;
    goto LABEL_32;
  }

  v334 = *(v170 + 16);
  v171 = v338;
  v172 = *&v338[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v173 = v320;
  Date.init()();
  v174 = type metadata accessor for Date();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  v175 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10001F8D8(v173, v172 + v175, &qword_1004A73C0);
  swift_endAccess();
  v176 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL;
  swift_beginAccess();
  v177 = &v171[v176];
  v178 = v319;
  sub_100013E54(v177, v319, &qword_1004A6D30);
  v179 = v341;
  v180 = v299;
  if (v299(v178, 1, v341) != 1)
  {
    v298(v318, v178, v179);
    v199 = *(*&v337[v171] + 24);
    isEscapingClosureAtFileLocation = URL.path.getter();
    v201 = v200;
    v55 = *&v171[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter];
    v202 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
    swift_beginAccess();
    LODWORD(v58) = *&v171[v202];
    v349 = 0;
    if (!v199)
    {

      v56 = 0;
      goto LABEL_45;
    }

    v203 = v199;
    v204 = v339;
    result = sub_1000D4F94(v203, v55);
    v339 = v204;
    if (v204)
    {

      v1 = v350;
      v54 = v327;
      v206 = v305;
    }

    else
    {
      v56 = result;
      v349 = result;
      if (!v205)
      {
        goto LABEL_45;
      }

      if (v205 < 0)
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v54 = v201;
      v254 = v205;
      v1 = v315;
      URL.init(fileURLWithPath:)();
      v255 = v254;
      v256 = v339;
      sub_1000BF3B4(v255, v1, 0);
      v339 = v256;
      if (!v256)
      {
        goto LABEL_68;
      }

      v206 = v305;
      (v305)(v1, v341);

      AAByteRangeDestroy(v56);

      v1 = v350;
      v54 = v327;
    }

    v58 = v339;
    isEscapingClosureAtFileLocation = v338;
LABEL_53:
    (v206)(v318, v341);

    sub_100014ED0();

    goto LABEL_11;
  }

  sub_100013F2C(v178, &qword_1004A6D30);
  v181 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
  swift_beginAccess();
  v182 = &v338[v181];
  v183 = v338;
  v184 = v317;
  sub_100013E54(v182, v317, &qword_1004A6D30);
  if (v180(v184, 1, v179) == 1)
  {
    sub_100013F2C(v184, &qword_1004A6D30);
    v339 = 0x8000000100429AF0;
    v340 = 0x8000000100429BD0;
    v341 = type metadata accessor for KnoxServiceClient.ClientError();
    v185 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v335 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v1 = v350;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v301(v333, v300, v304);
    v186 = v329;
    v187 = v331;
    v303(v329, v302, v331);
    static OS_dispatch_queue.global(qos:)();
    (v308)(v186, v187);
    v188 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v185 + 16) = 0x2865747563657865;
    *(v185 + 24) = 0xE900000000000029;
    *(v185 + 32) = 0xD000000000000065;
    v189 = v339;
    *(v185 + 56) = 4;
    *(v185 + 40) = v189;
    *(v185 + 48) = 472;
    v190 = 0xD00000000000004DLL;
LABEL_33:
    isEscapingClosureAtFileLocation = v338;
    *(v185 + 64) = v190;
    *(v185 + 72) = v340;
    *(v185 + 80) = 0;
    *(v185 + 88) = v188;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v58 = swift_allocError();
    *v198 = v185;
    swift_willThrow();
LABEL_34:

    sub_100014ED0();

    goto LABEL_10;
  }

  v298(v316, v184, v179);
  v211 = *(*&v337[v183] + 24);
  if (!v211)
  {
    v326 = 0x8000000100429AF0;
    v334 = 0x8000000100429FF0;
    v339 = type metadata accessor for KnoxServiceClient.ClientError();
    v261 = swift_allocObject();
    v324 = sub_10001AA40(0, &qword_1004A7840);
    v325 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v1 = v350;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v301(v333, v300, v304);
    v262 = v329;
    v263 = v331;
    v303(v329, v302, v331);
    static OS_dispatch_queue.global(qos:)();
    (v308)(v262, v263);
    v264 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v261 + 16) = 0x2865747563657865;
    *(v261 + 24) = 0xE900000000000029;
    *(v261 + 32) = 0xD000000000000065;
    v265 = v326;
    *(v261 + 56) = 14;
    *(v261 + 40) = v265;
    *(v261 + 48) = 448;
    *(v261 + 64) = 0xD000000000000077;
    *(v261 + 72) = v334;
    *(v261 + 80) = 0;
    *(v261 + 88) = v264;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v58 = swift_allocError();
    *v266 = v261;
    swift_willThrow();
    (v305)(v316, v179);
    isEscapingClosureAtFileLocation = v338;
    goto LABEL_34;
  }

  v212 = URL.path.getter();
  v214 = v213;
  v215 = *&v183[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter];
  v58 = *&v183[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_trimingPrefixes];
  v216 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  swift_beginAccess();
  v217 = *&v183[v216];

  v218 = v211;
  v219 = v339;
  result = sub_1000D4F94(v218, v215);
  v339 = v219;
  if (v219)
  {

    goto LABEL_42;
  }

  v267 = v220;
  v326 = result;
  if (!v220)
  {
    v1 = v350;
LABEL_71:
    v276 = v339;
    v277 = sub_1000D63F4(v212, v214);
    v339 = v276;
    if (!v276)
    {
      v280 = v279;
      v323 = v277;
      v324 = v278;
      v325 = v215;

      v281 = AEADecryptionRandomAccessInputStreamOpen(v334, v53, 0xFFFFFFFFFFFFFFFFLL, 0, v217);
      if (v281)
      {
        v282 = v281;
        v283 = v339;
        sub_1000D7558(v281, v326);
        v339 = v283;
        if (v283)
        {

          AAByteStreamClose(v282);
          dispatch thunk of ArchiveStream.close()();
          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveByteStream.close()();

          AAByteRangeDestroy(v326);

          goto LABEL_42;
        }

        type metadata accessor for ArchiveByteStream();
        swift_allocObject();
        v335 = ArchiveByteStream.init(object:owned:)();
        v336 = &v298;
        __chkstk_darwin(v335);
        v296 = v58;
        v297 = v280;
        aBlock = &_swiftEmptyArrayStorage;
        sub_10001F95C(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
        sub_1000039E8(&qword_1004A6FA0);
        sub_10001F9A4(&qword_1004A6FA8, &qword_1004A6FA0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v291 = v339;
        static ArchiveByteStream.withDecompressionStream<A>(readingFrom:flags:threadCount:_:)();
        v339 = v291;
        if (!v291)
        {
          (*(v310 + 8))(v311, v312);

          v292 = v339;
          dispatch thunk of ArchiveByteStream.close()();
          if (v292)
          {
          }

          AAByteStreamClose(v282);
          dispatch thunk of ArchiveStream.close()();
          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveByteStream.close()();

          AAByteRangeDestroy(v326);

          (v305)(v316, v341);
          v1 = v350;
          v54 = v327;
          isEscapingClosureAtFileLocation = v338;
          goto LABEL_59;
        }

        (*(v310 + 8))(v311, v312);

        dispatch thunk of ArchiveByteStream.close()();

        AAByteStreamClose(v282);
      }

      else
      {

        v322 = 0x800000010042A070;
        v321 = 0x8000000100429EB0;
        v334 = 0x800000010042A0F0;
        v339 = type metadata accessor for KnoxServiceClient.ClientError();
        v284 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        v320 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v301(v333, v300, v304);
        v285 = v329;
        v286 = v331;
        v303(v329, v302, v331);
        static OS_dispatch_queue.global(qos:)();
        (v308)(v285, v286);
        v287 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        *(v284 + 16) = 0xD000000000000078;
        *(v284 + 24) = v322;
        *(v284 + 32) = 0xD00000000000005DLL;
        v288 = v321;
        *(v284 + 56) = 0;
        *(v284 + 40) = v288;
        *(v284 + 48) = 438;
        *(v284 + 64) = 0xD000000000000037;
        *(v284 + 72) = v334;
        *(v284 + 80) = 0;
        *(v284 + 88) = v287;
        sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v289 = swift_allocError();
        *v290 = v284;
        v339 = v289;
        swift_willThrow();
      }

      dispatch thunk of ArchiveStream.close()();
      dispatch thunk of ArchiveByteStream.close()();
      dispatch thunk of ArchiveByteStream.close()();

      AAByteRangeDestroy(v326);

      v1 = v350;
      goto LABEL_42;
    }

    AAByteRangeDestroy(v326);

LABEL_42:
    v221 = v305;
LABEL_43:
    (v221)(v316, v341);
    isEscapingClosureAtFileLocation = v338;

    sub_100014ED0();

    v54 = v327;
    v58 = v339;
    goto LABEL_11;
  }

  v325 = v215;
  if ((v220 & 0x8000000000000000) == 0)
  {
    v268 = v313;
    URL.init(fileURLWithPath:)();
    v269 = v314;
    URL.deletingLastPathComponent()();
    v270 = v268;
    v271 = v341;
    v221 = v305;
    (v305)(v270, v341);
    v272 = v267;
    v273 = v269;
    v274 = v269;
    v275 = v339;
    sub_1000BF3B4(v272, v274, 0);
    v339 = v275;
    if (v275)
    {
      (v221)(v273, v271);

      AAByteRangeDestroy(v326);

      v1 = v350;
      goto LABEL_43;
    }

    (v221)(v273, v271);
    v1 = v350;
    v215 = v325;
    goto LABEL_71;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_10001EE2C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10001EE84(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10001EF10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_100013E54(v4 + v5, a3, &qword_1004A6D30);
}

uint64_t sub_10001EF98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10001EFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10001F060(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_10001F0B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10001F110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10001F168(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_10001F1C4()
{
  sub_10001F778();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001F778()
{
  if (!qword_1004A6E28)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A6E28);
    }
  }
}

uint64_t sub_10001F7D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F818()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F894()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001F8D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000039E8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F9A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t mTLSAuth.certificatePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KeychainItem.server.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KeychainItem() + 20);

  return sub_10001FB20(v3, a1);
}

uint64_t type metadata accessor for KeychainItem()
{
  result = qword_1004A7008;
  if (!qword_1004A7008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001FB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A6D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t KeychainItem.accountName.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeychainItem() + 24));

  return v1;
}

uint64_t KeychainItem.securityDomain.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeychainItem() + 28));

  return v1;
}

id KeychainItem.authToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeychainItem() + 32));

  return v1;
}

uint64_t sub_10001FC58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000039E8(&qword_1004A6D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001FD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004A6D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001FDD8()
{
  sub_10001F778();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AuthToken();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001FE90(void *a1, uint64_t a2)
{
  sub_1000039E8(&unk_1004A7370);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100376BB0;
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  v9 = sub_10001A9EC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *(v4 + 96) = &type metadata for Int;
  *(v4 + 104) = &protocol witness table for Int;
  *(v4 + 64) = v9;
  *(v4 + 72) = a2;
  sub_1000202EC();
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t KnoxDelegateSimple.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100003C3C(a1);
  return v2;
}

uint64_t sub_100020040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100003C3C(a1);
  type metadata accessor for KnoxDelegateSimple();
  result = swift_allocObject();
  *a2 = result;
  return result;
}

void sub_100020080(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE90000000000002ELL;
    v3 = 0x726F727265206F6ELL;
  }

  sub_1000039E8(&unk_1004A7370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100376BB0;
  v7 = [a1 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  v11 = sub_10001A9EC();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  *(v6 + 72) = v3;
  *(v6 + 80) = v5;
  sub_1000202EC();
  v12 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_1000201C8(void *a1, float a2)
{
  sub_1000039E8(&unk_1004A7370);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100376BB0;
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10001A9EC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *(v4 + 96) = &type metadata for Float;
  *(v4 + 104) = &protocol witness table for Float;
  *(v4 + 72) = a2;
  sub_1000202EC();
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

unint64_t sub_1000202EC()
{
  result = qword_1004A7380;
  if (!qword_1004A7380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A7380);
  }

  return result;
}

id GenericFilePointer.__allocating_init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = v13;
  v107 = a8;
  v104 = a6;
  v103 = a5;
  v117 = a4;
  v102 = a3;
  v119 = a2;
  v115 = a13;
  v116 = a11;
  v110 = a12;
  v106 = a10;
  v105 = a9;
  v101 = type metadata accessor for URL();
  v128 = *(v101 - 8);
  __chkstk_darwin(v101);
  v112 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A6D30);
  v19 = __chkstk_darwin(v18 - 8);
  v96 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v108 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v100 = &v93 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v93 - v26;
  __chkstk_darwin(v25);
  v28 = &v93 - v27;
  v29 = sub_1000039E8(&qword_1004A73C0);
  v30 = __chkstk_darwin(v29 - 8);
  v124 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v118 = &v93 - v33;
  v34 = __chkstk_darwin(v32);
  v120 = &v93 - v35;
  __chkstk_darwin(v34);
  v37 = &v93 - v36;
  v122 = &v93 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v126 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v93 - v42;
  v44 = objc_allocWithZone(v14);
  v99 = *(a7 + 4);
  v109 = v39;
  v45 = *(v39 + 16);
  v46 = a7[1];
  v98 = *a7;
  v97 = v46;
  v111 = a1;
  v47 = a1;
  v48 = v38;
  v121 = v38;
  v45(v43, v47, v38);
  v49 = v45;
  sub_100013E54(v119, v37, &qword_1004A73C0);
  sub_100013E54(v117, v28, &qword_1004A6D30);
  v50 = v120;
  sub_100013E54(v116, v120, &qword_1004A73C0);
  v113 = v43;
  v49(v126, v43, v48);
  v51 = v118;
  sub_100013E54(v122, v118, &qword_1004A73C0);
  v114 = v28;
  sub_100013E54(v28, v125, &qword_1004A6D30);
  sub_100013E54(v50, v124, &qword_1004A73C0);
  v53 = v128 + 56;
  v52 = *(v128 + 56);
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v54 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v55 = v101;
  v52(&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v101);
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v49(&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v126, v121);
  sub_100013E54(v51, &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v56 = v100;
  v57 = v55;
  v95 = v53;
  v94 = v52;
  v52(v100, 1, 1, v55);
  swift_beginAccess();
  sub_100013EBC(v56, &v44[v54]);
  swift_endAccess();
  v58 = v102;
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v102;
  v59 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v60 = v104;
  *v59 = v103;
  *(v59 + 1) = v60;
  v61 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v62 = v97;
  *v61 = v98;
  *(v61 + 1) = v62;
  *(v61 + 4) = v99;
  v63 = v107;
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v107;
  v64 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v65 = v106;
  *v64 = v105;
  *(v64 + 1) = v65;
  v66 = *(swift_getObjectType() + 184);
  v67 = v58;
  v68 = v63;
  v69 = v66();
  v70 = v55;
  v71 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v71 = v69;
  v71[1] = v72;
  v73 = v124;
  sub_100013E54(v124, &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v74 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v75 = v115;
  *v74 = v110;
  *(v74 + 1) = v75;
  v76 = type metadata accessor for KnoxPointer(0);
  v127.receiver = v44;
  v127.super_class = v76;
  v77 = v125;
  v115 = objc_msgSendSuper2(&v127, "init");
  v78 = v108;
  sub_100013E54(v77, v108, &qword_1004A6D30);
  v79 = v78;
  if ((*(v128 + 48))(v78, 1, v70) == 1)
  {

    sub_100013F2C(v116, &qword_1004A73C0);
    sub_100013F2C(v117, &qword_1004A6D30);
    sub_100013F2C(v119, &qword_1004A73C0);
    v80 = *(v109 + 8);
    v81 = v121;
    v80(v111, v121);
    sub_100013F2C(v73, &qword_1004A73C0);
    sub_100013F2C(v77, &qword_1004A6D30);
    sub_100013F2C(v118, &qword_1004A73C0);
    v80(v126, v81);
    sub_100013F2C(v120, &qword_1004A73C0);
    sub_100013F2C(v114, &qword_1004A6D30);
    sub_100013F2C(v122, &qword_1004A73C0);
    v80(v113, v81);
    sub_100013F2C(v79, &qword_1004A6D30);
    return v115;
  }

  else
  {
    v84 = v116;
    v83 = v117;
    (*(v128 + 32))(v112, v79, v57);
    v85 = v123;
    sub_1000B0C5C(v96);
    v123 = v85;

    if (v85)
    {
      v86 = v115;

      sub_100013F2C(v84, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v87 = *(v109 + 8);
      v88 = v121;
      v87(v111, v121);
      (*(v128 + 8))(v112, v70);
      sub_100013F2C(v124, &qword_1004A73C0);
      sub_100013F2C(v125, &qword_1004A6D30);
      sub_100013F2C(v118, &qword_1004A73C0);
      v87(v126, v88);
      sub_100013F2C(v120, &qword_1004A73C0);
      sub_100013F2C(v114, &qword_1004A6D30);
      sub_100013F2C(v122, &qword_1004A73C0);
      v87(v113, v88);
    }

    else
    {
      sub_100013F2C(v84, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v89 = *(v109 + 8);
      v90 = v121;
      v89(v111, v121);
      (*(v128 + 8))(v112, v57);
      sub_100013F2C(v124, &qword_1004A73C0);
      sub_100013F2C(v125, &qword_1004A6D30);
      sub_100013F2C(v118, &qword_1004A73C0);
      v89(v126, v90);
      sub_100013F2C(v120, &qword_1004A73C0);
      sub_100013F2C(v114, &qword_1004A6D30);
      sub_100013F2C(v122, &qword_1004A73C0);
      v89(v113, v90);
      v91 = v96;
      v94(v96, 0, 1, v57);
      v92 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v86 = v115;
      swift_beginAccess();
      sub_100013EBC(v91, v86 + v92);
      swift_endAccess();
    }

    return v86;
  }
}

id GenericFilePointer.init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v100 = a8;
  v97 = a6;
  v96 = a5;
  v113 = a4;
  v95 = a3;
  v110 = a13;
  v111 = a11;
  v112 = a2;
  v103 = a12;
  v99 = a10;
  v98 = a9;
  v94 = type metadata accessor for URL();
  v121 = *(v94 - 8);
  __chkstk_darwin(v94);
  v104 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000039E8(&qword_1004A6D30);
  v17 = __chkstk_darwin(v16 - 8);
  v88 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v101 = v87 - v20;
  v21 = __chkstk_darwin(v19);
  v93 = v87 - v22;
  v23 = __chkstk_darwin(v21);
  v117 = v87 - v24;
  __chkstk_darwin(v23);
  v26 = v87 - v25;
  v27 = sub_1000039E8(&qword_1004A73C0);
  v28 = __chkstk_darwin(v27 - 8);
  v116 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v119 = v87 - v31;
  v32 = __chkstk_darwin(v30);
  v114 = v87 - v33;
  __chkstk_darwin(v32);
  v35 = v87 - v34;
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v118 = v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = v87 - v40;
  v92 = *(a7 + 4);
  v105 = v37;
  v42 = *(v37 + 16);
  v43 = a7[1];
  v91 = *a7;
  v90 = v43;
  v106 = a1;
  v42(v87 - v40, a1, v36);
  sub_100013E54(v112, v35, &qword_1004A73C0);
  sub_100013E54(v113, v26, &qword_1004A6D30);
  v44 = v114;
  sub_100013E54(v111, v114, &qword_1004A73C0);
  v107 = v41;
  v42(v118, v41, v36);
  v108 = v35;
  sub_100013E54(v35, v119, &qword_1004A73C0);
  v109 = v26;
  sub_100013E54(v26, v117, &qword_1004A6D30);
  sub_100013E54(v44, v116, &qword_1004A73C0);
  v45 = v121 + 56;
  v46 = *(v121 + 56);
  v47 = v89;
  *&v89[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v48 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v49 = v94;
  v46(&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v94);
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v102 = v36;
  v42(&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v118, v36);
  sub_100013E54(v119, &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v50 = v93;
  v51 = v49;
  v87[1] = v45;
  v87[0] = v46;
  v46(v93, 1, 1, v49);
  swift_beginAccess();
  sub_100013EBC(v50, &v47[v48]);
  swift_endAccess();
  v52 = v95;
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v95;
  v53 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v54 = v97;
  *v53 = v96;
  *(v53 + 1) = v54;
  v55 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v56 = v90;
  *v55 = v91;
  *(v55 + 1) = v56;
  *(v55 + 4) = v92;
  v57 = v100;
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v100;
  v58 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v59 = v99;
  *v58 = v98;
  *(v58 + 1) = v59;
  v60 = v47;
  v61 = *(swift_getObjectType() + 184);
  v62 = v52;
  v63 = v57;
  v64 = v61();
  v65 = v51;
  v66 = &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v66 = v64;
  v66[1] = v67;
  v68 = v116;
  sub_100013E54(v116, &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v69 = &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v70 = v110;
  *v69 = v103;
  *(v69 + 1) = v70;
  v71 = type metadata accessor for KnoxPointer(0);
  v120.receiver = v60;
  v120.super_class = v71;
  v72 = v117;
  v110 = objc_msgSendSuper2(&v120, "init");
  v73 = v101;
  sub_100013E54(v72, v101, &qword_1004A6D30);
  if ((*(v121 + 48))(v73, 1, v51) == 1)
  {

    sub_100013F2C(v111, &qword_1004A73C0);
    sub_100013F2C(v113, &qword_1004A6D30);
    sub_100013F2C(v112, &qword_1004A73C0);
    v74 = *(v105 + 8);
    v75 = v102;
    v74(v106, v102);
    sub_100013F2C(v68, &qword_1004A73C0);
    sub_100013F2C(v72, &qword_1004A6D30);
    sub_100013F2C(v119, &qword_1004A73C0);
    v74(v118, v75);
    sub_100013F2C(v114, &qword_1004A73C0);
    sub_100013F2C(v109, &qword_1004A6D30);
    sub_100013F2C(v108, &qword_1004A73C0);
    v74(v107, v75);
    sub_100013F2C(v73, &qword_1004A6D30);
    return v110;
  }

  else
  {
    v77 = v111;
    v78 = v112;
    (*(v121 + 32))(v104, v73, v51);
    v79 = v115;
    sub_1000B0C5C(v88);
    v115 = v79;

    if (v79)
    {
      v80 = v110;

      sub_100013F2C(v77, &qword_1004A73C0);
      sub_100013F2C(v113, &qword_1004A6D30);
      sub_100013F2C(v78, &qword_1004A73C0);
      v81 = *(v105 + 8);
      v82 = v102;
      v81(v106, v102);
      (*(v121 + 8))(v104, v65);
      sub_100013F2C(v116, &qword_1004A73C0);
      sub_100013F2C(v117, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v81(v118, v82);
      sub_100013F2C(v114, &qword_1004A73C0);
      sub_100013F2C(v109, &qword_1004A6D30);
      sub_100013F2C(v108, &qword_1004A73C0);
      v81(v107, v82);
    }

    else
    {
      sub_100013F2C(v77, &qword_1004A73C0);
      sub_100013F2C(v113, &qword_1004A6D30);
      sub_100013F2C(v78, &qword_1004A73C0);
      v83 = *(v105 + 8);
      v84 = v102;
      v83(v106, v102);
      (*(v121 + 8))(v104, v51);
      sub_100013F2C(v116, &qword_1004A73C0);
      sub_100013F2C(v117, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v83(v118, v84);
      sub_100013F2C(v114, &qword_1004A73C0);
      sub_100013F2C(v109, &qword_1004A6D30);
      sub_100013F2C(v108, &qword_1004A73C0);
      v83(v107, v84);
      v85 = v88;
      (v87[0])(v88, 0, 1, v51);
      v86 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v80 = v110;
      swift_beginAccess();
      sub_100013EBC(v85, v80 + v86);
      swift_endAccess();
    }

    return v80;
  }
}

id GenericFilePointer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericFilePointer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericFilePointer()
{
  result = qword_1004A7130;
  if (!qword_1004A7130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_100021BB0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v18 = type metadata accessor for URLQueryItem();
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v17[1] = v2;
    v20 = &_swiftEmptyArrayStorage;
    sub_10000E0A8(0, v7, 0);
    v8 = v20;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(*v19 + 16);

      if (v12)
      {
        sub_100013364(v10, v11);
        if (v13)
        {
        }
      }

      URLQueryItem.init(name:value:)();

      v20 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_10000E0A8(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      v8[2] = v15 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v6, v18);
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100021DA8()
{
  v0 = type metadata accessor for CharacterSet();
  sub_1000279B4(v0, qword_1004A7140);
  sub_1000270B4(v0, qword_1004A7140);
  static CharacterSet.urlQueryAllowed.getter();
  return CharacterSet.remove(_:)();
}

uint64_t sub_100021E68()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for PointersTask();
  v2 = objc_msgSendSuper2(&v22, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  _StringGuts.grow(_:)(40);

  v21 = v3;
  v4._countAndFlagsBits = 0x3D6563617073202CLL;
  v4._object = 0xE900000000000027;
  String.append(_:)(v4);
  v5 = &v1[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_space];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3D65707974202C27;
  v9._object = 0xE900000000000027;
  String.append(_:)(v9);
  v10 = &v1[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_type];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x686374616D202C27;
  v14._object = 0xED0000273D676E69;
  String.append(_:)(v14);
  swift_beginAccess();

  v15 = Dictionary.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 39;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v21;
}

uint64_t type metadata accessor for PointersTask()
{
  result = qword_1004A71A0;
  if (!qword_1004A71A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022128(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_10002219C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_10002227C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100022334@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100027974;
  a2[1] = v6;
}

uint64_t sub_1000223C0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler);
  swift_beginAccess();
  *v6 = sub_100027938;
  v6[1] = v5;
}

uint64_t sub_10002245C()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1000224D4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_100022598()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000225DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10002268C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_100022740(uint64_t a1, uint64_t *a2)
{
  sub_100013E54(a1, v6, &qword_1004A7158);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1000227B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A7158);
}

uint64_t sub_10002281C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10002287C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7158);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *PointersTask.__allocating_init(client:pointerClass:space:type:matching:timeFilter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v18 = objc_allocWithZone(v11);
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointers] = &_swiftEmptyArrayStorage;
  v19 = &v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass] = a2;
  v20 = &v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_space];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_type];
  *v21 = a5;
  v21[1] = a6;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching] = a7;
  v22 = &v18[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler];
  *v22 = a9;
  *(v22 + 1) = a10;
  swift_beginAccess();

  sub_100022E68(a8, v19);
  swift_endAccess();
  v23 = a1;
  v24 = sub_10003D38C(v23);

  v25 = v24;
  _StringGuts.grow(_:)(23);

  v26._countAndFlagsBits = a3;
  v26._object = a4;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 47;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = a5;
  v28._object = a6;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 63;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = Dictionary.description.getter();
  v32 = v31;

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  sub_100013F2C(a8, &qword_1004A7158);
  v34 = &v25[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v34 = 0x737265746E696F50;
  *(v34 + 1) = 0xEF202D206B736154;

  return v25;
}

char *PointersTask.init(client:pointerClass:space:type:matching:timeFilter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointers) = &_swiftEmptyArrayStorage;
  v17 = v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass) = a2;
  v18 = (v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_space);
  *v18 = a3;
  v18[1] = a4;
  v19 = (v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_type);
  *v19 = a5;
  v19[1] = a6;
  *(v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching) = a7;
  v20 = (v10 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler);
  *v20 = a9;
  v20[1] = a10;
  swift_beginAccess();

  sub_100022E68(a8, v17);
  swift_endAccess();
  v21 = a1;
  v22 = sub_10003D38C(v21);

  v23 = v22;
  _StringGuts.grow(_:)(23);

  v24._countAndFlagsBits = a3;
  v24._object = a4;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 47;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = a5;
  v26._object = a6;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 63;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28 = Dictionary.description.getter();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  sub_100013F2C(a8, &qword_1004A7158);
  v32 = &v23[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v32 = 0x737265746E696F50;
  *(v32 + 1) = 0xEF202D206B736154;

  return v23;
}

uint64_t sub_100022E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7158);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100022ED8(uint64_t a1@<X8>)
{
  v2 = v1;
  v194 = a1;
  v216 = type metadata accessor for URLQueryItem();
  v214 = *(v216 - 8);
  v3 = __chkstk_darwin(v216);
  v217 = v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v213 = v179 - v6;
  v7 = __chkstk_darwin(v5);
  v215 = v179 - v8;
  __chkstk_darwin(v7);
  v212 = v179 - v9;
  v10 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v10 - 8);
  v209 = (v179 - v11);
  v206 = type metadata accessor for URLComponents();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v211 = v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for DispatchQoS.QoSClass();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v201 = v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v202 = v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v197);
  v200 = v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v207 = v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for URLRequest();
  v192 = *(v193 - 8);
  v18 = __chkstk_darwin(v193);
  v188 = v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v179 - v20;
  v22 = sub_1000039E8(&qword_1004A6D30);
  v23 = __chkstk_darwin(v22 - 8);
  v191 = v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v179 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v187 = v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v208 = (v179 - v32);
  __chkstk_darwin(v31);
  v34 = v179 - v33;
  v35 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  sub_100013E54(v2 + v35, v26, &qword_1004A6D30);
  v36 = *(v28 + 48);
  v190 = v28 + 48;
  v189 = v36;
  if (v36(v26, 1, v27) == 1)
  {
    v185 = v28;
    v186 = v27;
    sub_100013F2C(v26, &qword_1004A6D30);
    v37 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching;
    swift_beginAccess();
    v38 = *(v2 + v37);
    v224 = v38;
    v39 = *(v38 + 16);

    v40 = v2;
    if (v39)
    {
      v41 = sub_100013364(0x657461647075, 0xE600000000000000);
      v42 = v212;
      v43 = v209;
      if ((v44 & 1) != 0 && *(v38 + 16))
      {
        v45 = (*(v38 + 56) + 16 * v41);
        v46 = *v45;
        v47 = v45[1];

        v48 = sub_100013364(0x6E69617274, 0xE500000000000000);
        if (v49)
        {
          v50 = (*(v38 + 56) + 16 * v48);
          v51 = *v50;
          v52 = v50[1];
          v53 = objc_allocWithZone(type metadata accessor for KnoxUpdate());

          v195 = v46;
          v54 = v52;
          v55 = v51;
          v196 = KnoxUpdate.init(identifier:)(v46, v47);
          v56 = &v196[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_train];
          if ((*&v196[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_train] != v51 || *&v196[OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_train + 8] != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v217 = 0x800000010042A320;
            v220 = 0;
            v221 = 0xE000000000000000;
            _StringGuts.grow(_:)(109);
            v162._countAndFlagsBits = 0xD00000000000001BLL;
            v162._object = 0x800000010042A450;
            String.append(_:)(v162);
            v163._countAndFlagsBits = v51;
            v163._object = v54;
            String.append(_:)(v163);

            v164._countAndFlagsBits = 0xD000000000000012;
            v164._object = 0x800000010042A470;
            String.append(_:)(v164);
            v166 = *v56;
            v165 = v56[1];

            v167._countAndFlagsBits = v166;
            v167._object = v165;
            String.append(_:)(v167);

            v168._countAndFlagsBits = 0x27206D6F72662027;
            v168._object = 0xE800000000000000;
            String.append(_:)(v168);
            v169._countAndFlagsBits = v195;
            v169._object = v47;
            String.append(_:)(v169);

            v170._countAndFlagsBits = 0xD000000000000032;
            v170._object = 0x800000010042A490;
            String.append(_:)(v170);
            v215 = v220;
            v214 = v221;
            v216 = type metadata accessor for KnoxServiceClient.ClientError();
            v171 = swift_allocObject();
            sub_10001AA40(0, &qword_1004A7840);
            v213 = "hivePointer.swift";
            static DispatchQoS.userInitiated.getter();
            v220 = &_swiftEmptyArrayStorage;
            sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850);
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v198 + 104))(v202, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v199);
            v172 = v203;
            v173 = v201;
            v174 = v204;
            (*(v203 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v204);
            static OS_dispatch_queue.global(qos:)();
            (*(v172 + 8))(v173, v174);
            v175 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            strcpy((v171 + 16), "urlRequest()");
            *(v171 + 29) = 0;
            *(v171 + 30) = -5120;
            *(v171 + 32) = 0xD000000000000066;
            v176 = v217;
            *(v171 + 56) = 4;
            *(v171 + 40) = v176;
            *(v171 + 48) = 102;
            v177 = v214;
            *(v171 + 64) = v215;
            *(v171 + 72) = v177;
            *(v171 + 80) = 0;
            *(v171 + 88) = v175;
            sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
            swift_allocError();
            *v178 = v171;
            swift_willThrow();

            return;
          }

          sub_1000039E8(&unk_1004A7370);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100376BB0;
          *(v57 + 56) = &type metadata for String;
          v58 = sub_10001A9EC();
          *(v57 + 32) = v55;
          *(v57 + 40) = v54;
          *(v57 + 96) = &type metadata for String;
          *(v57 + 104) = v58;
          v59 = v195;
          *(v57 + 64) = v58;
          *(v57 + 72) = v59;
          *(v57 + 80) = v47;
          sub_10001AA40(0, &qword_1004A7380);
          v60 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          sub_100026B4C(0x6E69617274, 0xE500000000000000);

          v38 = v224;
          if (!*(v224 + 16))
          {
LABEL_19:
            v72 = (v40 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_type);
            swift_beginAccess();
            v73 = *v72;
            v74 = v72[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v220 = v38;
            sub_100026BFC(v73, v74, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
            v184 = v220;
            v224 = v220;
            v209 = v40;
            v76 = *(v40 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
            v77 = v185;
            v78 = *(v185 + 16);
            v195 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
            v79 = v208;
            v80 = v186;
            v196 = v78;
            (v78)(v208, v76 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v186);
            URLComponents.init(url:resolvingAgainstBaseURL:)();
            v82 = *(v77 + 8);
            v81 = v77 + 8;
            v183 = v82;
            v82(v79, v80);
            v83 = v205;
            v84 = v206;
            if ((*(v205 + 48))(v43, 1, v206) == 1)
            {
              sub_100013F2C(v43, &qword_1004A7160);
              v217 = 0x800000010042A320;
              v220 = 0;
              v221 = 0xE000000000000000;
              _StringGuts.grow(_:)(42);

              v220 = 0xD000000000000028;
              v221 = 0x800000010042A390;
              (v196)(v79, v195 + v76, v80);
              v85 = URL.description.getter();
              v87 = v86;
              v183(v79, v80);
              v88._countAndFlagsBits = v85;
              v88._object = v87;
              String.append(_:)(v88);

              v215 = v220;
              v214 = v221;
              v216 = type metadata accessor for KnoxServiceClient.ClientError();
              v89 = swift_allocObject();
              sub_10001AA40(0, &qword_1004A7840);
              v213 = "hivePointer.swift";
              static DispatchQoS.userInitiated.getter();
              v220 = &_swiftEmptyArrayStorage;
              sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
              sub_1000039E8(&unk_1004A7850);
              sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              (*(v198 + 104))(v202, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v199);
              v90 = v203;
              v91 = v201;
              v92 = v204;
              (*(v203 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v204);
              static OS_dispatch_queue.global(qos:)();
              (*(v90 + 8))(v91, v92);
              v93 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
              strcpy((v89 + 16), "urlRequest()");
              *(v89 + 29) = 0;
              *(v89 + 30) = -5120;
              *(v89 + 32) = 0xD000000000000066;
              v94 = v217;
              *(v89 + 56) = 14;
              *(v89 + 40) = v94;
              *(v89 + 48) = 122;
              v95 = v214;
              *(v89 + 64) = v215;
              *(v89 + 72) = v95;
              *(v89 + 80) = 0;
              *(v89 + 88) = v93;
              sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
              swift_allocError();
              *v96 = v89;
              swift_willThrow();
LABEL_58:

              return;
            }

            v182 = v76;
            v181 = v81;
            v97 = v211;
            (*(v83 + 32))(v211, v43, v84);
            v220 = 0;
            v221 = 0xE000000000000000;
            _StringGuts.grow(_:)(19);

            v220 = 0x2F7365636170732FLL;
            v221 = 0xE800000000000000;
            v98 = v209;
            v99 = (v209 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_space);
            swift_beginAccess();
            v100 = *v99;
            v101 = v99[1];

            v102._countAndFlagsBits = v100;
            v102._object = v101;
            String.append(_:)(v102);

            v103._countAndFlagsBits = 0x7265746E696F702FLL;
            v103._object = 0xE900000000000073;
            String.append(_:)(v103);
            v104 = v97;
            URLComponents.path.setter();
            v105 = v184;
            v106 = *(v184 + 16);
            if (v106)
            {
              v107 = sub_1000117A8(*(v184 + 16), 0);
              v108 = sub_1000138F8(&v220, v107 + 4, v106, v105);
              swift_retain_n();
              sub_100014344();
              if (v108 != v106)
              {
                __break(1u);
LABEL_61:

                __break(1u);
                return;
              }

              v42 = v212;
              v98 = v209;
            }

            else
            {

              v107 = &_swiftEmptyArrayStorage;
            }

            v109 = v210;
            v220 = v107;
            sub_10000EB7C(&v220);
            if (!v109)
            {

              sub_100021BB0(v220, &v224);
              v180 = 0;

              URLComponents.queryItems.setter();
              v110 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
              swift_beginAccess();
              sub_100013E54(v98 + v110, &v218, &qword_1004A7158);
              if (v219)
              {
                sub_100003C88(&v218, &v220);
                v111 = v222;
                v112 = v223;
                sub_10000E2A8(&v220, v222);
                v113 = (*(v112 + 8))(v111, v112);
                v114 = *(v113 + 16);
                if (v114)
                {
                  v115 = *(v214 + 2);
                  v116 = ((v214[80] + 32) & ~v214[80]);
                  v179[1] = v113;
                  v196 = v116;
                  v117 = &v116[v113];
                  v118 = *(v214 + 9);
                  v195 = (v214 + 32);
                  v208 = (v214 + 8);
                  v119 = v216;
                  v210 = v115;
                  v120 = v104;
                  v209 = v118;
                  do
                  {
                    v122 = v115;
                    (v115)(v42, v117, v119);
                    v124 = URLComponents.queryItems.modify();
                    if (*v123)
                    {
                      v125 = v123;
                      (v122)(v215, v42, v119);
                      v126 = *v125;
                      v127 = swift_isUniquelyReferenced_nonNull_native();
                      *v125 = v126;
                      if ((v127 & 1) == 0)
                      {
                        v126 = sub_100011B58(0, *(v126 + 16) + 1, 1, v126);
                        *v125 = v126;
                      }

                      v121 = v209;
                      v129 = *(v126 + 16);
                      v128 = *(v126 + 24);
                      if (v129 >= v128 >> 1)
                      {
                        v126 = sub_100011B58(v128 > 1, v129 + 1, 1, v126);
                        *v125 = v126;
                      }

                      *(v126 + 16) = v129 + 1;
                      v119 = v216;
                      (*v195)(&v196[v126 + v129 * v121], v215, v216);
                      v124(&v218, 0);
                      v120 = v211;
                      v42 = v212;
                    }

                    else
                    {
                      v124(&v218, 0);
                      v121 = v209;
                    }

                    (*v208)(v42, v119);
                    v117 = v121 + v117;
                    --v114;
                    v115 = v210;
                  }

                  while (v114);
                }

                else
                {

                  v119 = v216;
                  v120 = v104;
                }

                sub_100003C3C(&v220);
                v130 = v183;
              }

              else
              {
                sub_100013F2C(&v218, &qword_1004A7158);
                v119 = v216;
                v130 = v183;
                v120 = v104;
              }

              v131 = URLComponents.queryItems.getter();
              if (v131)
              {
                v132 = *(v131 + 16);
                if (v132)
                {
                  *&v218 = &_swiftEmptyArrayStorage;
                  v133 = v131;
                  sub_10000E0A8(0, v132, 0);
                  v134 = v218;
                  v215 = *(v214 + 2);
                  v135 = (v214[80] + 32) & ~v214[80];
                  v196 = v133;
                  v212 = v135;
                  v136 = &v133[v135];
                  v210 = *(v214 + 9);
                  v209 = (v214 + 8);
                  v214 += 16;
                  v208 = (v214 + 16);
                  do
                  {
                    (v215)(v217, v136, v119);
                    URLQueryItem.name.getter();
                    v137 = URLQueryItem.value.getter();
                    if (v138)
                    {
                      v220 = v137;
                      v221 = v138;
                      if (qword_1004A6A70 != -1)
                      {
                        swift_once();
                      }

                      v139 = type metadata accessor for CharacterSet();
                      sub_1000270B4(v139, qword_1004A7140);
                      sub_10000B080();
                      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
                    }

                    v140 = v213;
                    URLQueryItem.init(name:value:)();

                    v141 = v216;
                    (*v209)(v217, v216);
                    *&v218 = v134;
                    v143 = *(v134 + 16);
                    v142 = *(v134 + 24);
                    if (v143 >= v142 >> 1)
                    {
                      sub_10000E0A8(v142 > 1, v143 + 1, 1);
                      v134 = v218;
                    }

                    *(v134 + 16) = v143 + 1;
                    v144 = v210;
                    (*v208)(&v212[v134 + v143 * v210], v140, v141);
                    v136 = &v144[v136];
                    --v132;
                    v119 = v141;
                  }

                  while (v132);

                  v120 = v211;
                  v130 = v183;
                }

                else
                {

                  v120 = v211;
                }
              }

              URLComponents.percentEncodedQueryItems.setter();
              v145 = v191;
              URLComponents.url.getter();
              v146 = v186;
              if (v189(v145, 1, v186) == 1)
              {
                sub_100013F2C(v145, &qword_1004A6D30);
                v217 = 0x800000010042A320;
                v220 = 0;
                v221 = 0xE000000000000000;
                _StringGuts.grow(_:)(41);

                v220 = 0xD000000000000026;
                v221 = 0x800000010042A3C0;
                v147._countAndFlagsBits = URLComponents.description.getter();
                String.append(_:)(v147);

                v148._countAndFlagsBits = 39;
                v148._object = 0xE100000000000000;
                String.append(_:)(v148);
                v215 = v220;
                v214 = v221;
                v216 = type metadata accessor for KnoxServiceClient.ClientError();
                v149 = swift_allocObject();
                sub_10001AA40(0, &qword_1004A7840);
                v213 = "hivePointer.swift";
                static DispatchQoS.userInitiated.getter();
                v220 = &_swiftEmptyArrayStorage;
                sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
                sub_1000039E8(&unk_1004A7850);
                v150 = v205;
                sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
                dispatch thunk of SetAlgebra.init<A>(_:)();
                (*(v198 + 104))(v202, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v199);
                v151 = v203;
                v152 = v201;
                v153 = v204;
                (*(v203 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v204);
                static OS_dispatch_queue.global(qos:)();
                (*(v151 + 8))(v152, v153);
                v154 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
                strcpy((v149 + 16), "urlRequest()");
                *(v149 + 29) = 0;
                *(v149 + 30) = -5120;
                *(v149 + 32) = 0xD000000000000066;
                v155 = v217;
                *(v149 + 56) = 14;
                *(v149 + 40) = v155;
                *(v149 + 48) = 139;
                v156 = v214;
                *(v149 + 64) = v215;
                *(v149 + 72) = v156;
                *(v149 + 80) = 0;
                *(v149 + 88) = v154;
                sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
                swift_allocError();
                *v157 = v149;
                swift_willThrow();
                (*(v150 + 8))(v211, v206);
              }

              else
              {
                v158 = v120;
                v159 = v187;
                (*(v185 + 32))(v187, v145, v146);
                LOBYTE(v220) = 1;
                v160 = v188;
                v161 = v180;
                sub_10005ADB0(v159, 0, 1, v188);
                v130(v159, v146);
                (*(v205 + 8))(v158, v206);
                if (!v161)
                {
                  (*(v192 + 32))(v194, v160, v193);
                }
              }

              goto LABEL_58;
            }

            goto LABEL_61;
          }
        }

        else
        {

          if (!*(v38 + 16))
          {
            goto LABEL_19;
          }
        }

LABEL_15:

        sub_100013364(1701869940, 0xE400000000000000);
        v63 = v62;

        if (v63)
        {
          v215 = 0x800000010042A320;
          v216 = 0x800000010042A3F0;
          v217 = type metadata accessor for KnoxServiceClient.ClientError();
          v64 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840);
          v214 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v220 = &_swiftEmptyArrayStorage;
          sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v198 + 104))(v202, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v199);
          v65 = v203;
          v66 = v201;
          v67 = v204;
          (*(v203 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v204);
          static OS_dispatch_queue.global(qos:)();
          (*(v65 + 8))(v66, v67);
          v68 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          strcpy((v64 + 16), "urlRequest()");
          *(v64 + 29) = 0;
          *(v64 + 30) = -5120;
          *(v64 + 32) = 0xD000000000000066;
          v69 = v215;
          *(v64 + 56) = 4;
          *(v64 + 40) = v69;
          *(v64 + 48) = 114;
          v70 = v216;
          *(v64 + 64) = 0xD000000000000056;
          *(v64 + 72) = v70;
          *(v64 + 80) = 0;
          *(v64 + 88) = v68;
          sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          swift_allocError();
          *v71 = v64;
          swift_willThrow();

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v42 = v212;
      v43 = v209;
    }

    if (!*(v38 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  (*(v28 + 32))(v34, v26, v27);
  LOBYTE(v220) = 1;
  v61 = v210;
  sub_10005ADB0(v34, 0, 1, v21);
  (*(v28 + 8))(v34, v27);
  if (!v61)
  {
    (*(v192 + 32))(v194, v21, v193);
  }
}

uint64_t sub_100025034(uint64_t a1, __int128 *a2)
{
  v121 = a2;
  v3 = v2;
  v5 = type metadata accessor for DecodingError.Context();
  v119 = *(v5 - 8);
  v120 = v5;
  v6 = __chkstk_darwin(v5);
  v107 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v106 = &v106 - v9;
  __chkstk_darwin(v8);
  v108 = &v106 - v10;
  v11 = type metadata accessor for DecodingError();
  v118 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (&v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v116 = *(v14 - 8);
  v117 = v14;
  __chkstk_darwin(v14);
  v115 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v114 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v109);
  v111 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v110 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass;
  swift_beginAccess();
  v25 = *&v3[v24];
  (*(v21 + 16))(v23, *&v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v20);
  v26 = a1;
  v27 = a1;
  v28 = v122;
  v29 = v121;
  v30 = (*(v25 + 200))(v27);
  if (!v28)
  {
    v122 = v30;
    result = (*(v21 + 8))(v23, v20);
    v39 = *&v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
    v40 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v42 = *(v26 + 16);
        v41 = *(v26 + 24);
        v31 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          __break(1u);
LABEL_12:
          if (result == enum case for DecodingError.valueNotFound(_:))
          {

            (*(v31 + 96))(v29, v11);
            v43 = sub_1000039E8(&qword_1004A7168);
            (*(v119 + 32))(v107, v29 + *(v43 + 48), v120);
            v44 = DecodingError.Context.codingPath.getter();
            v45 = *(v44 + 16);
            if (v45)
            {
              v129 = &_swiftEmptyArrayStorage;
              sub_10000DFF4(0, v45, 0);
              v46 = v129;
              v47 = v44 + 32;
              do
              {
                sub_100003B20(v47, &aBlock);
                sub_10000E2A8(&aBlock, v126);
                v48 = dispatch thunk of CodingKey.stringValue.getter();
                v50 = v49;
                sub_100003C3C(&aBlock);
                v129 = v46;
                v52 = v46[2];
                v51 = v46[3];
                if (v52 >= v51 >> 1)
                {
                  sub_10000DFF4((v51 > 1), v52 + 1, 1);
                  v46 = v129;
                }

                v46[2] = v52 + 1;
                v53 = &v46[2 * v52];
                v53[4] = v48;
                v53[5] = v50;
                v47 += 40;
                --v45;
              }

              while (v45);
            }

            else
            {

              v46 = &_swiftEmptyArrayStorage;
            }

            aBlock = v46;
            sub_1000039E8(&qword_1004A6B48);
            sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
            v85 = BidirectionalCollection<>.joined(separator:)();
            v87 = v86;

            aBlock = 0;
            v124 = 0xE000000000000000;
            _StringGuts.grow(_:)(20);
            v88 = &v133;
LABEL_37:
            v89 = *(v88 - 32);
            v90 = DecodingError.Context.debugDescription.getter();
            v92 = v91;

            aBlock = v90;
            v124 = v92;
            v93._countAndFlagsBits = 0x20676E69646F4320;
            v93._object = 0xEF27203A68746170;
            String.append(_:)(v93);
            v94._countAndFlagsBits = v85;
            v94._object = v87;
            String.append(_:)(v94);

            v95._countAndFlagsBits = 39;
            v95._object = 0xE100000000000000;
            String.append(_:)(v95);
            v121 = v124;
            v122 = aBlock;
            (*(v119 + 8))(v89, v120);
            goto LABEL_38;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v40)
    {
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_47;
      }

      v31 = HIDWORD(v26) - v26;
    }

    else
    {
      v31 = BYTE6(v29);
    }

    v54 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
    result = OS_dispatch_queue.sync<A>(execute:)();
    v55 = aBlock + v31;
    if (__OFADD__(aBlock, v31))
    {
      __break(1u);
    }

    else
    {
      v56 = *(v39 + v54);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = v39;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_100027124;
      *(v58 + 24) = v57;
      v127 = sub_10001F874;
      v128 = v58;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_10003885C;
      v126 = &unk_10047C378;
      v59 = _Block_copy(&aBlock);

      dispatch_sync(v56, v59);
      _Block_release(v59);
      LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

      if ((v56 & 1) == 0)
      {
        swift_beginAccess();
        sub_100026118(v122, sub_1000A9EB8);
        swift_endAccess();
        v60 = *&v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
        v31 = swift_allocObject();
        *(v31 + 16) = v3;
        *(v31 + 24) = 1;
        v61 = swift_allocObject();
        *(v61 + 16) = sub_10001F9F8;
        *(v61 + 24) = v31;
        v127 = sub_10001FA40;
        v128 = v61;
        aBlock = _NSConcreteStackBlock;
        v124 = 1107296256;
        v125 = sub_10003885C;
        v126 = &unk_10047C3F0;
        v62 = _Block_copy(&aBlock);
        v63 = v3;

        dispatch_sync(v60, v62);
        _Block_release(v62);
        LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

        if ((v60 & 1) == 0)
        {
          return result;
        }

        __break(1u);
LABEL_26:
        if (result == enum case for DecodingError.keyNotFound(_:))
        {

          (*(v31 + 96))(v29, v11);
          v64 = *(sub_1000039E8(&qword_1004A7170) + 48);
          sub_100003C88(v29, &aBlock);
          v65 = v119;
          v66 = v29 + v64;
          v67 = v108;
          v68 = v120;
          (*(v119 + 32))(v108, v66, v120);
          v129 = 0;
          v130 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v69 = DecodingError.Context.debugDescription.getter();
          v71 = v70;

          v129 = v69;
          v130 = v71;
          v72._countAndFlagsBits = 0x20676E69646F4320;
          v72._object = 0xEE0027203A79656BLL;
          String.append(_:)(v72);
          sub_10000E2A8(&aBlock, v126);
          v73._countAndFlagsBits = dispatch thunk of CodingKey.stringValue.getter();
          String.append(_:)(v73);

          v74._countAndFlagsBits = 39;
          v74._object = 0xE100000000000000;
          String.append(_:)(v74);
          v121 = v130;
          v122 = v129;
          (*(v65 + 8))(v67, v68);
          sub_100003C3C(&aBlock);
          goto LABEL_38;
        }

        if (result == enum case for DecodingError.dataCorrupted(_:))
        {

          (*(v31 + 96))(v29, v11);
          (*(v119 + 32))(v106, v29, v120);
          v75 = DecodingError.Context.codingPath.getter();
          v76 = *(v75 + 16);
          if (v76)
          {
            v129 = &_swiftEmptyArrayStorage;
            sub_10000DFF4(0, v76, 0);
            v77 = v129;
            v78 = v75 + 32;
            do
            {
              sub_100003B20(v78, &aBlock);
              sub_10000E2A8(&aBlock, v126);
              v79 = dispatch thunk of CodingKey.stringValue.getter();
              v81 = v80;
              sub_100003C3C(&aBlock);
              v129 = v77;
              v83 = v77[2];
              v82 = v77[3];
              if (v83 >= v82 >> 1)
              {
                sub_10000DFF4((v82 > 1), v83 + 1, 1);
                v77 = v129;
              }

              v77[2] = v83 + 1;
              v84 = &v77[2 * v83];
              v84[4] = v79;
              v84[5] = v81;
              v78 += 40;
              --v76;
            }

            while (v76);
          }

          else
          {

            v77 = &_swiftEmptyArrayStorage;
          }

          aBlock = v77;
          sub_1000039E8(&qword_1004A6B48);
          sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
          v85 = BidirectionalCollection<>.joined(separator:)();
          v87 = v105;

          aBlock = 0;
          v124 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v88 = &v132;
          goto LABEL_37;
        }

        (*(v31 + 8))(v29, v11);
LABEL_40:

        return swift_willThrow();
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  (*(v21 + 8))(v23, v20);
  v131 = v28;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_40;
  }

  v29 = v13;
  v31 = v118;
  LODWORD(result) = (*(v118 + 88))(v29, v11);
  if (result != enum case for DecodingError.typeMismatch(_:))
  {
    goto LABEL_12;
  }

  (*(v31 + 96))(v29, v11);
  v33 = sub_1000039E8(&qword_1004A7168);
  v35 = v119;
  v34 = v120;
  v36 = v108;
  (*(v119 + 32))(v108, v29 + *(v33 + 48), v120);
  v37 = DecodingError.Context.debugDescription.getter();
  v121 = v38;
  v122 = v37;
  (*(v35 + 8))(v36, v34);
LABEL_38:

  v118 = 0x800000010042A320;
  v119 = 0x800000010042A530;
  v120 = type metadata accessor for KnoxServiceClient.ClientError();
  v96 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v109 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v112 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v113);
  v98 = v115;
  v97 = v116;
  v99 = v117;
  (*(v116 + 104))(v115, enum case for DispatchQoS.QoSClass.default(_:), v117);
  static OS_dispatch_queue.global(qos:)();
  (*(v97 + 8))(v98, v99);
  v100 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v101 = v119;
  *(v96 + 16) = 0xD00000000000001ALL;
  *(v96 + 24) = v101;
  v102 = v118;
  *(v96 + 32) = 0xD000000000000066;
  *(v96 + 40) = v102;
  *(v96 + 56) = 7;
  *(v96 + 48) = 188;
  v103 = v121;
  *(v96 + 64) = v122;
  *(v96 + 72) = v103;
  *(v96 + 80) = 0;
  *(v96 + 88) = v100;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v104 = v96;
  return swift_willThrow();
}

uint64_t sub_100026118(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100026FCC(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100026210()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching;
  swift_beginAccess();
  if (!*(*&v0[v12] + 16))
  {
    v45 = 0x800000010042A320;
    v46 = 0x800000010042A550;
    v47 = type metadata accessor for KnoxServiceClient.ClientError();
    v27 = swift_allocObject();
    v43 = sub_10001AA40(0, &qword_1004A7840);
    v44 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    v41[1] = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v42 = v3;
    sub_1000039E8(&unk_1004A7850);
    v28 = v4;
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v48 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
    v29 = v42;
    (*(v28 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v42);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v6, v29);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v27 + 16) = 0x2865747563657865;
    *(v27 + 24) = 0xE900000000000029;
    *(v27 + 32) = 0xD000000000000066;
    v31 = v45;
    *(v27 + 56) = 4;
    *(v27 + 40) = v31;
    *(v27 + 48) = 197;
    *(v27 + 64) = 0xD00000000000002BLL;
    *(v27 + 72) = v46;
    *(v27 + 80) = 0;
    *(v27 + 88) = v30;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v32 = swift_allocError();
    *v33 = v27;
    swift_getErrorValue();

    v34 = Error.localizedDescription.getter();
    sub_100036D50(v32, v34, v35);

    v36 = &v0[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler];
    swift_beginAccess();
    v37 = *v36;
    v38 = swift_allocError();
    *v39 = v27;

    v37(0, v38);

    v40 = v1;

    return v1;
  }

  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for PointersTask);
  v14 = v13;
  v15 = &v0[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler];
  swift_beginAccess();
  v16 = *v15;
  swift_beginAccess();

  v16(v17, v14);

  v18 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10001F8CC;
  *(v20 + 24) = v19;
  v52 = sub_10001FA40;
  v53 = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  v51 = &unk_10047C468;
  v21 = _Block_copy(aBlock);
  v22 = v1;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if ((v18 & 1) == 0)
  {
    sub_100003B20(*&v22[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, aBlock);
    v24 = v51;
    v25 = v52;
    sub_10000E2A8(aBlock, v51);
    (*(v25 + 2))(v22, v14, v24, v25);

    sub_100003C3C(aBlock);
    v26 = v22;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000269E8()
{

  return sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter, &qword_1004A7158);
}

id PointersTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointersTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100013364(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10005D7B4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_10005D37C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100026BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100013364(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_10005D7B4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10005CB64(v18, a5 & 1);
    v13 = sub_100013364(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_10005D52C(v13, a3, a4, a1, a2, v23);
  }
}

_OWORD *sub_100026D4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100013364(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10005DA68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10005CE24(v16, a4 & 1);
    v11 = sub_100013364(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003C3C(v22);

    return sub_1000279A4(a1, v22);
  }

  else
  {
    sub_10005D57C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100026E9C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100013364(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10005DC0C();
      result = v19;
      goto LABEL_8;
    }

    sub_10005D0DC(v16, a4 & 1);
    result = sub_100013364(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
  }

  else
  {
    sub_10005D5E8(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_100026FCC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10002706C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000270B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000270EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002712C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100027144()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000271C4@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_10002726C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000272C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_100027324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_10002739C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v3 + v4, a2, &qword_1004A7158);
}

uint64_t sub_100027938(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

_OWORD *sub_1000279A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000279B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027A50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D657473;
  v3 = 0x79732D646C697562;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x746E6169726176;
  if (a1 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0x63617073656D616ELL;
  v8 = 0xE900000000000065;
  if (a1 != 3)
  {
    v7 = 0x656E696C65706970;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x2D78657470797263;
  v10 = 0xEC000000656D616ELL;
  if (a1 != 1)
  {
    v9 = 0x656369766564;
    v10 = 0xE600000000000000;
  }

  if (!a1)
  {
    v9 = 0x79732D646C697562;
    v10 = 0xEC0000006D657473;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC000000656D616ELL;
        if (v11 != 0x2D78657470797263)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x656369766564)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 5)
      {
        if (v11 != 0x746E6169726176)
        {
          goto LABEL_36;
        }
      }

      else if (v11 != 0x6E6F6973726576)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000065;
      if (v11 != 0x63617073656D616ELL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x656E696C65706970;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_100027C80(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 1397440851;
    }

    else
    {
      a1 = 1397574487;
    }

    v3 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      a1 = 1397574475;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  v4 = a2;
  v5 = 0xE000000000000000;
  v6 = 1397440851;
  if (a2 != 2)
  {
    v6 = 1397574487;
  }

  if (a2)
  {
    v4 = 1397574475;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (a1 == v7 && v3 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100027D90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006DLL;
  v3 = 0x687469726F676C61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 7564651;
    }

    else
    {
      v5 = 0x65636E6F6ELL;
    }

    if (v4 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 7955819;
    }

    else
    {
      v5 = 0x687469726F676C61;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE90000000000006DLL;
    }
  }

  v7 = 0xE300000000000000;
  v8 = 7564651;
  if (a2 != 2)
  {
    v8 = 0x65636E6F6ELL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 7955819;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100027EAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x6974707972636E65;
  v4 = a1;
  v5 = 1702521203;
  v6 = 0xE800000000000000;
  v7 = 0x6E6F697461636F6CLL;
  if (a1 != 4)
  {
    v7 = 0x2D64657461657263;
    v6 = 0xEA00000000007461;
  }

  if (a1 == 3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747365676964;
  if (a1 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = 0x8000000100429370;
  }

  if (!a1)
  {
    v9 = 0x6974707972636E65;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1702521203)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000007461;
      if (v10 != 0x2D64657461657263)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x747365676964)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000100429370;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_10002806C(char a1, char a2)
{
  if (qword_100376ED8[a1] == qword_100376ED8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000280D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E69617274;
  v6 = 0x616E2D6567616D69;
  v7 = 0xEA0000000000656DLL;
  if (a1 != 4)
  {
    v6 = 0x6D756E2D74726170;
    v7 = 0xEB00000000726562;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x746E6169726176;
  if (a1 != 1)
  {
    v9 = 0x657461647075;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656369766564;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E69617274)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA0000000000656DLL;
      if (v10 != 0x616E2D6567616D69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000726562;
      if (v10 != 0x6D756E2D74726170)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746E6169726176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657461647075)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656369766564)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1000282C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5522759;
    }

    else
    {
      v4 = 1145128264;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1414745936;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 5526864;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x4843544150;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5522759;
    }

    else
    {
      v9 = 1145128264;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 5526864;
    if (a2 != 3)
    {
      v6 = 0x4843544150;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1414745936;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10002840C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E656B6F54776164;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656B6F5468747561;
    }

    else
    {
      v4 = 0x65746167656C6564;
    }

    if (v3 == 2)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x736C744D786F6E6BLL;
    }

    else
    {
      v4 = 0x6E656B6F54776164;
    }

    if (v3)
    {
      v5 = 0xEC00000068747541;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x656B6F5468747561;
  v8 = 0xE90000000000006ELL;
  if (a2 != 2)
  {
    v7 = 0x65746167656C6564;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x736C744D786F6E6BLL;
    v6 = 0xEC00000068747541;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100028568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1397574475;
  v3 = a1;
  v4 = 1397574487;
  v5 = 0xE400000000000000;
  if (a1 == 2)
  {
    v6 = 1397574487;
  }

  else
  {
    v6 = 0;
  }

  if (a1 != 2)
  {
    v5 = 0xE000000000000000;
  }

  v7 = 1397440851;
  if (!a1)
  {
    v7 = 1397574475;
  }

  if (a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE400000000000000;
  if (a2 != 2)
  {
    v4 = 0;
    v10 = 0xE000000000000000;
  }

  if (a2)
  {
    v2 = 1397440851;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 1u)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = v10;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100028658(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x727574616E676973;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x2D676E696E676973;
      v6 = 0xEB0000000079656BLL;
    }

    else
    {
      v6 = 0x8000000100429410;
      v5 = 0xD000000000000012;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x727574616E676973;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0x80000001004293E0;
    }
  }

  v7 = 0x2D676E696E676973;
  v8 = 0x8000000100429410;
  if (a2 == 2)
  {
    v8 = 0xEB0000000079656BLL;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (!a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001004293E0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1000287B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1684104562;
    }

    else
    {
      v5 = 0x6E696D6461;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x657461647075;
    if (a1 != 3)
    {
      v4 = 0xD000000000000014;
      v3 = 0x80000001004292E0;
    }

    if (a1 == 2)
    {
      v5 = 0x74656D2D64616572;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xED00006174616461;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 1684104562;
    }

    else
    {
      v11 = 0x6E696D6461;
    }

    if (a2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x657461647075;
    v8 = 0x80000001004292E0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v9 = 0x74656D2D64616572;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xED00006174616461;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_10002893C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0065756C61566CLL;
  v3 = 0x6163696E6F6E6163;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697369766572;
  if (a1 != 6)
  {
    v6 = 0x6E69617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0x74654C726F6E696DLL;
  v8 = 0xEB00000000726574;
  if (a1 != 4)
  {
    v7 = 0x726556726F6E696DLL;
    v8 = 0xEC0000006E6F6973;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x74654C726F6A616DLL;
  v10 = 0xEB00000000726574;
  if (a1 != 2)
  {
    v9 = 0x726556726F6A616DLL;
    v10 = 0xEC0000006E6F6973;
  }

  v11 = 0x696669746E656469;
  v12 = 0xEA00000000007265;
  if (!a1)
  {
    v11 = 0x6163696E6F6E6163;
    v12 = 0xEE0065756C61566CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6E6F697369766572)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6E69617274)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 != 4)
    {
      v2 = 0xEC0000006E6F6973;
      if (v13 != 0x726556726F6E696DLL)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v15 = 1869506925;
LABEL_29:
    v2 = 0xEB00000000726574;
    if (v13 != (v15 | 0x74654C7200000000))
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xEA00000000007265;
      if (v13 != 0x696669746E656469)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (a2 == 2)
  {
    v15 = 1869242733;
    goto LABEL_29;
  }

  v3 = 0x726556726F6A616DLL;
  v2 = 0xEC0000006E6F6973;
LABEL_37:
  if (v13 != v3)
  {
LABEL_41:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_42;
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_100028BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0xD000000000000010;
  if (a1 <= 3u)
  {
    v4 = 0x80000001004294A0;
    if (a1 == 2)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v4 = 0x80000001004294C0;
    }

    v8 = 0x8000000100429460;
    v13 = 0xD000000000000012;
    if (a1)
    {
      v8 = 0x8000000100429480;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    v10 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000100429500;
    v5 = 0x8000000100429520;
    v6 = 0x6563617073;
    if (a1 == 7)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v8 = 0x80000001004294E0;
    if (a1 == 4)
    {
      v9 = 0x697373696D726570;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a1 == 4)
    {
      v8 = 0xEB00000000736E6FLL;
    }

    v10 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }
  }

  if (v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = "encrypted-service";
LABEL_47:
        v2 = (v15 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000011;
        goto LABEL_51;
      }

      v16 = "encrypted-region";
LABEL_50:
      v2 = (v16 - 32) | 0x8000000000000000;
      goto LABEL_51;
    }

    if (!a2)
    {
      v16 = "encrypted-bucket";
      goto LABEL_50;
    }

    v2 = 0x8000000100429480;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          v2 = 0xE500000000000000;
          v3 = 0x6563617073;
          goto LABEL_51;
        }

        v15 = "plaintext-service";
        goto LABEL_47;
      }

      v16 = "plaintext-region";
      goto LABEL_50;
    }

    if (a2 != 4)
    {
      v16 = "plaintext-bucket";
      goto LABEL_50;
    }

    v3 = 0x697373696D726570;
  }

LABEL_51:
  if (v11 == v3 && v14 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_100028E64()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for DownloadTask();
  v53.receiver = v0;
  v53.super_class = v9;
  v10 = objc_msgSendSuper2(&v53, "description");
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  swift_beginAccess();
  if (v1[v14])
  {
    v15 = 7562585;
  }

  else
  {
    v15 = 28494;
  }

  if (v1[v14])
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v16 = 0xE200000000000000;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(137);
  v51 = v49;
  v52 = v50;
  v17._countAndFlagsBits = v11;
  v17._object = v13;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x6C65636E6163202CLL;
  v18._object = 0xEC0000003D64656CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v15;
  v19._object = v16;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x547472617473202CLL;
  v20._object = 0xED0000273D656D69;
  String.append(_:)(v20);
  v21 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v22 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_100013E54(v21 + v22, v8, &qword_1004A73C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100013F2C(v8, &qword_1004A73C0);
    v23 = 0xE400000000000000;
    v24 = 1701736270;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100013F2C(v8, &qword_1004A73C0);
    v25 = Date.description.getter();
    v23 = v26;
    (*(v3 + 8))(v5, v2);
    v24 = v25;
  }

  v27 = v23;
  String.append(_:)(*&v24);

  v28._countAndFlagsBits = 0x746E696F70202C27;
  v28._object = 0xEC000000273D7265;
  String.append(_:)(v28);
  v29 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v30 = *&v1[v29];
  v31 = [v30 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x6165726874202C27;
  v36._object = 0xEF3D746E756F4364;
  String.append(_:)(v36);
  v37 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  swift_beginAccess();
  v48[2] = *&v1[v37];
  v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x657370616C65202CLL;
  v39._object = 0xEE003D656D695464;
  String.append(_:)(v39);
  OS_dispatch_queue.sync<A>(execute:)();
  Double.write<A>(to:)();
  v40._countAndFlagsBits = 0x736154627573202CLL;
  v40._object = 0xEF3D64657355736BLL;
  String.append(_:)(v40);
  __chkstk_darwin(v41);
  *&v48[-4] = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v43._object = 0x800000010042A610;
  v43._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v43);
  __chkstk_darwin(v44);
  *&v48[-4] = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0xD000000000000015;
  v46._object = 0x8000000100429A50;
  String.append(_:)(v46);
  sub_10003BB24();
  Float.write<A>(to:)();
  return v51;
}

uint64_t type metadata accessor for DownloadTask()
{
  result = qword_1004A7220;
  if (!qword_1004A7220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000294E4()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100029528(int a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000295D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100029664(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_10002977C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_100029804(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_100029864()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000298B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100029970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    LOBYTE(v13) = *(v3 + 56);
    if (KnoxServiceClient.ClientError.ErrorKind.rawValue.getter() == 0xD000000000000014 && 0x80000001004290A0 == v4)
    {

      return 1;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (!v13)
  {
    return 0;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v6 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *((swift_isaMask & *v7) + 0xF0);
  v9 = v7;
  v10 = v8();

  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size];

    if (v13 == v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100029B48()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100029B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100029C3C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_100029C90(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

Swift::Int DownloadTask.DownloadType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100029DCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

char *DownloadTask.init(client:destinationFileURL:pointer:downloadType:)(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v71 = a1;
  v72 = a3;
  v79 = a2;
  v78 = type metadata accessor for DispatchQoS.QoSClass();
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v69 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  LODWORD(v73) = *a4;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType) = 0;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType) = 0;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__activeSubTasks) = 0;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__subTasksUsed) = 0;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled) = 0;
  v74 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue;
  v13 = sub_10001AA40(0, &qword_1004A7840);
  v70 = ", activeSubTasks=";
  static DispatchQoS.userInitiated.getter();
  v82 = &_swiftEmptyArrayStorage;
  v14 = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v15 = sub_1000039E8(&unk_1004A7850);
  v16 = sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  v65 = v15;
  v64 = v16;
  v67 = v10;
  v66 = v14;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = *(v8 + 104);
  v63 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v68 = v8 + 104;
  v62 = v17;
  v17(v77);
  v18 = v80;
  v19 = *(v80 + 104);
  v20 = v76;
  v60 = enum case for DispatchQoS.QoSClass.default(_:);
  v21 = v78;
  v61 = v80 + 104;
  v59 = v19;
  v19(v76);
  static OS_dispatch_queue.global(qos:)();
  v22 = *(v18 + 8);
  v80 = v18 + 8;
  v58 = v22;
  v22(v20, v21);
  v70 = v13;
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = v71;
  *(v5 + v74) = v23;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_subTasks) = &_swiftEmptyArrayStorage;
  v25 = v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData) = xmmword_100376D40;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount) = 0;
  v26 = v24;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount) = (*((swift_isaMask & *v24) + 0x110))();
  v27 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v74 = v28;
  v30(v5 + v27, v79);
  v31 = v72;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer) = v72;
  v32 = v31;
  v33 = v26;
  v34 = sub_10003D38C(v33);
  v71 = v33;

  v82 = 0;
  v83 = 0xE000000000000000;
  v35 = v34;
  _StringGuts.grow(_:)(17);

  v82 = 0x64616F6C6E776F44;
  v83 = 0xEF202D206B736154;
  v72 = v32;
  v36 = &v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v37 = *&v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v38 = *(v36 + 1);

  v39._countAndFlagsBits = v37;
  v39._object = v38;
  String.append(_:)(v39);

  v40 = v82;
  v41 = v83;
  v42 = &v35[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v42 = v40;
  v42[1] = v41;

  v43 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType;
  swift_beginAccess();
  v35[v43] = v73;
  if (URL.isFileURL.getter())
  {
    (*(v29 + 8))(v79, v74);
  }

  else
  {
    v56 = 0x800000010042A660;
    v55 = 0x800000010042A6A0;
    v57 = 0x800000010042A710;
    v73 = type metadata accessor for KnoxServiceClient.ClientError();
    v44 = swift_allocObject();
    v54[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v81 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v62(v77, v63, v75);
    v45 = v76;
    v46 = v78;
    v59(v76, v60, v78);
    static OS_dispatch_queue.global(qos:)();
    v58(v45, v46);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v48 = v56;
    *(v44 + 16) = 0xD000000000000035;
    *(v44 + 24) = v48;
    v49 = v55;
    *(v44 + 32) = 0xD000000000000066;
    *(v44 + 40) = v49;
    *(v44 + 56) = 4;
    *(v44 + 48) = 111;
    v50 = v57;
    *(v44 + 64) = 0xD000000000000035;
    *(v44 + 72) = v50;
    *(v44 + 80) = 0;
    *(v44 + 88) = v47;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v51 = swift_allocError();
    *v52 = v44;

    sub_10002D004(v51);

    (*(v29 + 8))(v79, v74);
  }

  return v35;
}

uint64_t sub_10002A7AC(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  swift_beginAccess();
  sub_100013E54(&v2[v4], aBlock, &qword_1004A71D8);
  if (v18)
  {
    sub_100003B20(aBlock, v14);
    sub_100013F2C(aBlock, &qword_1004A71D8);
    v5 = v15;
    v6 = v16;
    sub_10000E2A8(v14, v15);
    (*(v6 + 32))(v5, v6);
    sub_100003C3C(v14);
  }

  else
  {
    sub_100013F2C(aBlock, &qword_1004A71D8);
  }

  v7 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10001F8CC;
  *(v9 + 24) = v8;
  v19 = sub_10001F874;
  v20 = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  v18 = &unk_10047C5B0;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_10002AAB4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  *(a1 + 8) = *(a1 + 9);
  return sub_10002AB4C;
}

void sub_10002AB74(uint64_t a1, unint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v70 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  swift_beginAccess();
  v2[v7] = 1;
  v61 = 0x800000010042A6A0;
  v69 = type metadata accessor for KnoxServiceClient.ClientError();
  v8 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v60[1] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  v9 = v2;
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63[13](v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
  v10 = v66;
  v11 = v64;
  v12 = v70;
  (*(v66 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v70);
  static OS_dispatch_queue.global(qos:)();
  v13 = *(v10 + 8);
  v14 = v67;
  v13(v11, v12);
  v15 = v68;
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v8 + 16) = 0x72286C65636E6163;
  *(v8 + 24) = 0xEF293A6E6F736165;
  *(v8 + 32) = 0xD000000000000066;
  v17 = v61;
  *(v8 + 56) = 5;
  *(v8 + 40) = v17;
  *(v8 + 48) = 145;
  v18 = v14;
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 80) = 0;
  *(v8 + 88) = v16;
  v70 = v8;
  v19 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  swift_beginAccess();
  sub_100013E54(&v2[v19], &v75, &qword_1004A71D8);
  if (v76)
  {
    sub_100003C88(&v75, aBlock);
    v20 = v72;
    v21 = v73;
    sub_10000E2A8(aBlock, v72);
    v22 = *(v21 + 3);

    v22(v18, v15, v20, v21);
    sub_100003C3C(aBlock);
  }

  else
  {

    sub_100013F2C(&v75, &qword_1004A71D8);
  }

  *&v75 = &_swiftEmptyArrayStorage;
  v23 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue];
  v24 = swift_allocObject();
  *(v24 + 16) = &v75;
  *(v24 + 24) = v9;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100030D54;
  *(v25 + 24) = v24;
  v73 = sub_10001FA40;
  v74 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  v72 = &unk_10047C628;
  v26 = _Block_copy(aBlock);
  v27 = v9;

  dispatch_sync(v23, v26);
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else if (!(v75 >> 62))
  {
    v28 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  v29 = &unk_100376000;
  if (v28 < 1)
  {
    sub_10001AA40(0, &qword_1004A7380);
    v51 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_22;
  }

  v66 = sub_1000039E8(&unk_1004A7370);
  v30 = swift_allocObject();
  v65 = xmmword_100376A40;
  *(v30 + 16) = xmmword_100376A40;
  if (v75 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v30 + 56) = &type metadata for Int;
  *(v30 + 64) = &protocol witness table for Int;
  *(v30 + 32) = v31;
  v32 = sub_10001AA40(0, &qword_1004A7380);
  v33 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v34 = v75;
  if (!(v75 >> 62))
  {
    v35 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_12;
    }

LABEL_22:
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v52 = swift_allocError();
    *v53 = v70;

    sub_10002D004(v52);

    sub_1000039E8(&unk_1004A7370);
    v54 = swift_allocObject();
    *(v54 + 16) = v29[164];
    v55 = [v27 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10001A9EC();
    *(v54 + 32) = v56;
    *(v54 + 40) = v58;
    sub_10001AA40(0, &qword_1004A7380);
    v59 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (v35 >= 1)
  {
    v67 = v32;
    v63 = v27;
    v64 = v24;
    v68 = v34 & 0xC000000000000001;

    for (i = 0; i != v35; ++i)
    {
      if (v68)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v34 + 8 * i + 32);
      }

      v38 = v37;
      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v39 = swift_allocError();
      *v40 = v70;
      v41 = *((swift_isaMask & *v38) + 0x410);
      v42 = v38;

      v41(v39);

      v44 = (*((swift_isaMask & *v42) + 0x2D0))(v43);

      if (v44)
      {
        static os_log_type_t.error.getter();
        v45 = swift_allocObject();
        *(v45 + 16) = v65;
        v46 = [v42 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = sub_10001A9EC();
        *(v45 + 32) = v47;
        *(v45 + 40) = v49;
        v50 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();
      }
    }

    v27 = v63;
    v29 = &unk_100376000;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_10002B6FC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_subTasks;
  swift_beginAccess();
  *a1 = *(a2 + v4);
}

uint64_t sub_10002B764()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v96 - v3;
  v109 = type metadata accessor for URL();
  v110 = *(v109 - 8);
  v5 = __chkstk_darwin(v109);
  v97 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v96 - v7;
  v108 = type metadata accessor for DispatchQoS.QoSClass();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v100);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v103 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];
  (*((swift_isaMask & *v19) + 0x1E8))(&aBlock, v16);
  object = v118;
  if (v118)
  {
    countAndFlagsBits = aBlock;
  }

  else
  {
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v15 + 8))(v18, v14);
    v115 = v22;
    v116 = v24;
    v113 = 45;
    v114 = 0xE100000000000000;
    v111 = 0;
    v112 = 0xE000000000000000;
    sub_10000B080();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v25 = String.lowercased()();
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v26 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v27 = swift_allocObject();
  v27[2] = v1;
  v27[3] = countAndFlagsBits;
  v27[4] = object;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10001F858;
  *(v28 + 24) = v27;
  v121 = sub_10001FA40;
  v122 = v28;
  aBlock = _NSConcreteStackBlock;
  v118 = 1107296256;
  v119 = sub_10003885C;
  v120 = &unk_10047C6A0;
  v29 = _Block_copy(&aBlock);
  v30 = v1;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  v99 = v8;
  v33 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v34 = *(&v30->isa + v33);
  v35 = *((swift_isaMask & *v34) + 0xF0);
  v36 = v34;
  v37 = v35();

  if (v37)
  {
  }

  else
  {
    v38 = *(&v30->isa + v33);
    v39 = (*&v38[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
    v40 = *v39;
    v41 = v39[1];
    v43 = *&v38[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
    v42 = *&v38[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space + 8];
    v44 = v38;

    sub_1000CEF18(v19, v40, v41, v43, v42, v30);
    v81 = v80;

    (*((swift_isaMask & *v44) + 0xF8))(v81);
  }

  v45 = *(&v30->isa + v33);
  v46 = *((swift_isaMask & *v45) + 0xF0);
  v47 = v45;
  v48 = v46();

  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption;
  if (*(*&v48[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms) > 2u)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v51 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType;
  swift_beginAccess();
  if ((*(&v30->isa + v51) & 1) == 0)
  {
    ObjectType = 0x800000010042A6A0;
    v99 = 0x800000010042A820;
    v109 = type metadata accessor for KnoxServiceClient.ClientError();
    v59 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v97 = "hivePointer.swift";
    v110 = v48;
    static DispatchQoS.userInitiated.getter();
    v115 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v101 + 104))(v105, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v102);
    v72 = v107;
    v73 = v106;
    v74 = v108;
    (*(v107 + 104))(v106, enum case for DispatchQoS.QoSClass.default(_:), v108);
    static OS_dispatch_queue.global(qos:)();
    (*(v72 + 8))(v73, v74);
    v75 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v59 + 16) = 0x2865747563657865;
    *(v59 + 24) = 0xE900000000000029;
    *(v59 + 32) = 0xD000000000000066;
    v76 = ObjectType;
    *(v59 + 56) = 14;
    *(v59 + 40) = v76;
    *(v59 + 48) = 199;
    *(v59 + 64) = 0xD00000000000003BLL;
    *(v59 + 72) = v99;
    *(v59 + 80) = 0;
    *(v59 + 88) = v75;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    goto LABEL_18;
  }

LABEL_14:
  v52 = OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location;

  URL.init(string:)();

  v53 = v110;
  v54 = v109;
  if ((v110[6])(v4, 1, v109) == 1)
  {
    sub_100013F2C(v4, &qword_1004A6D30);
    v109 = 0x800000010042A6A0;
    v115 = 0;
    v116 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v115 = 0xD000000000000021;
    v116 = 0x800000010042A7F0;
    v55 = (*&v48[v52] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);
    v56 = *v55;
    v57 = v55[1];

    v58._countAndFlagsBits = v56;
    v58._object = v57;
    String.append(_:)(v58);

    ObjectType = v115;
    v97 = v116;
    v99 = type metadata accessor for KnoxServiceClient.ClientError();
    v59 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v96 = "hivePointer.swift";
    v110 = v48;
    static DispatchQoS.userInitiated.getter();
    v115 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v101 + 104))(v105, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v102);
    v60 = v107;
    v61 = v106;
    v62 = v108;
    (*(v107 + 104))(v106, enum case for DispatchQoS.QoSClass.default(_:), v108);
    static OS_dispatch_queue.global(qos:)();
    (*(v60 + 8))(v61, v62);
    v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v59 + 16) = 0x2865747563657865;
    *(v59 + 24) = 0xE900000000000029;
    *(v59 + 32) = 0xD000000000000066;
    v64 = v109;
    *(v59 + 56) = 14;
    *(v59 + 40) = v64;
    *(v59 + 48) = 206;
    v65 = v97;
    *(v59 + 64) = ObjectType;
    *(v59 + 72) = v65;
    *(v59 + 80) = 0;
    *(v59 + 88) = v63;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_18:
    v77 = swift_allocError();
    *v78 = v59;

    sub_10002D004(v77);

    v79 = v30;

    return v30;
  }

  v53[4](v99, v4, v54);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  v68 = ObjectType;
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  v69 = (*&v48[v49] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key);
  v71 = *v69;
  v70 = v69[1];

  v82 = sub_100060488(v71, v70);

  v83 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v83 + 16) = 32;
  v115 = v82;
  sub_1000039E8(&qword_1004A71E0);
  sub_10000E720(&qword_1004A71E8, &qword_1004A71E0);
  result = DataProtocol.copyBytes<A>(to:)();
  v84 = *(v82 + 2);
  if (v84 <= 0x20)
  {
    *(v83 + 16) = v84;

    v85 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
    swift_beginAccess();
    v86 = v110;
    v87 = v97;
    v88 = v109;
    v110[2](v97, v30 + v85, v109);
    v89 = URL.path.getter();
    v91 = v90;
    v107 = v86[1];
    (v107)(v87, v88);
    v92 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
    swift_beginAccess();
    v93 = *(&v30->isa + v92);
    v94 = v99;
    v108 = v91;
    sub_10002F984(v99, v89, v91, v48, v83, sub_100030DDC, v67, v93);
    (v107)(v94, v88);

LABEL_21:
    v95 = v30;
    return v30;
  }

LABEL_24:
  __break(1u);
  __break(1u);
  return result;
}

void sub_10002CA44(char *a1)
{
  sub_1000039E8(&unk_1004A7370);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100376A40;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10001A9EC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_10001AA40(0, &qword_1004A7380);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    __chkstk_darwin(Strong);
    sub_1000039E8(&qword_1004A72D0);
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = v30;
    v11 = *&v9[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
    if (v30 >> 60 == 15)
    {

      OS_dispatch_queue.sync<A>(execute:)();
      v12 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
      OS_dispatch_queue.sync<A>(execute:)();
      if (__OFADD__(aBlock, aBlock))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v13 = *(v11 + v12);
      v10 = swift_allocObject();
      *(v10 + 16) = 2 * aBlock;
      *(v10 + 24) = v11;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_100027124;
      *(v14 + 24) = v10;
      v33 = sub_10001FA40;
      v34 = v14;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_10003885C;
      v32 = &unk_10047CC00;
      v15 = _Block_copy(&aBlock);

      dispatch_sync(v13, v15);
      _Block_release(v15);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    v16 = aBlock;
    v17 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      if (!v17)
      {
        v18 = BYTE6(v10);
        goto LABEL_16;
      }

LABEL_13:
      if (__OFSUB__(HIDWORD(v16), v16))
      {
LABEL_23:
        __break(1u);
        return;
      }

      v18 = HIDWORD(v16) - v16;
      goto LABEL_16;
    }

    if (v17 == 2)
    {
      v20 = *(aBlock + 16);
      v19 = *(aBlock + 24);
      v18 = v19 - v20;
      if (__OFSUB__(v19, v20))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_16:
    v21 = *(v11 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v11;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100031D1C;
    *(v23 + 24) = v22;
    v33 = sub_10001FA40;
    v34 = v23;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10003885C;
    v32 = &unk_10047CC78;
    v24 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v21, v24);
    _Block_release(v24);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    sub_100031914(v16, v10);
    if ((v21 & 1) == 0)
    {
LABEL_17:
      v25 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
      swift_beginAccess();
      v26 = *&a1[v25];
      if (v26)
      {
        type metadata accessor for KnoxServiceClient.ClientError();
        sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v27 = swift_allocError();
        *v28 = v26;
        swift_retain_n();
        sub_10002D004(v27);
      }

      else
      {
      }

      return;
    }

    goto LABEL_22;
  }
}

uint64_t sub_10002D004(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  swift_beginAccess();
  sub_100013E54(v2 + v4, &v12, &qword_1004A71D8);
  if (v13)
  {
    sub_100003C88(&v12, v14);
    v5 = v15;
    v6 = v16;
    sub_10000E2A8(v14, v15);
    if (((*(v6 + 16))(v5, v6) & 1) == 0)
    {
      v7 = v16;
      sub_10000E2A8(v14, v15);
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      (*(v7 + 24))(v8);
    }

    sub_100003C3C(v14);
  }

  else
  {
    sub_100013F2C(&v12, &qword_1004A71D8);
  }

  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  sub_100036D50(a1, v9, v10);
}

uint64_t sub_10002D1AC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_subTasks;
  swift_beginAccess();
  v5 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_10002D264()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *((swift_isaMask & *v3) + 0xF8);
  v5 = v3;
  v4(0);

  v6 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  swift_beginAccess();
  sub_100013E54(v1 + v6, v13, &qword_1004A71D8);
  if (!v14)
  {
    return sub_100013F2C(v13, &qword_1004A71D8);
  }

  sub_100003B20(v13, v10);
  sub_100013F2C(v13, &qword_1004A71D8);
  v7 = v11;
  v8 = v12;
  sub_10000E2A8(v10, v11);
  (*(v8 + 32))(v7, v8);
  return sub_100003C3C(v10);
}

uint64_t sub_10002D424()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10002D468(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10002D518()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10002D550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = (result + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData);
  v6 = *(result + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData + 8);
  if (v6 >> 60 == 15)
  {
    v7 = *v5;
    *v5 = a2;
    v5[1] = a3;
    sub_1000318C0(a2, a3);
    result = sub_100031914(v7, v6);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

void sub_10002D5CC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue];
  sub_1000039E8(&qword_1004A72D0);
  OS_dispatch_queue.sync<A>(execute:)();
  v4 = aBlock;
  v3 = v29;
  sub_1000039E8(&unk_1004A7370);
  if (v29 >> 60 == 15)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100376A40;
    v6 = [v0 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10001A9EC();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    sub_10001AA40(0, &qword_1004A7380);
    v10 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100376BB0;
  v12 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v3);
    goto LABEL_13;
  }

  LODWORD(v13) = HIDWORD(v4) - v4;
  if (__OFSUB__(HIDWORD(v4), v4))
  {
    goto LABEL_15;
  }

  v13 = v13;
LABEL_13:
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = v13;
  v17 = v11;
  v18 = [v0 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v17[12] = &type metadata for String;
  v17[13] = sub_10001A9EC();
  v17[9] = v19;
  v17[10] = v21;
  sub_10001AA40(0, &qword_1004A7380);
  v22 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = xmmword_100376D40;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100031B00;
  *(v24 + 24) = v23;
  v32 = sub_10001FA40;
  v33 = v24;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10003885C;
  v31 = &unk_10047CB88;
  v25 = _Block_copy(&aBlock);
  v26 = v1;

  dispatch_sync(v2, v25);
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  sub_100031914(v4, v3);
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_10002D98C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v111 = a7;
  v110 = a6;
  v112 = a4;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v120 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v109 - v17;
  v119 = type metadata accessor for URLRequest();
  v19 = *(v119 - 8);
  v20 = __chkstk_darwin(v119);
  v117 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v109 - v22;
  v113 = v14;
  v25 = *(v14 + 16);
  v24 = v14 + 16;
  v121 = v13;
  v115 = v25;
  v25(v18, a1, v13);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v26._countAndFlagsBits = _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0();
  v27._countAndFlagsBits = 0x6567412D72657355;
  v27._object = 0xEA0000000000746ELL;
  v114 = v23;
  URLRequest.addValue(_:forHTTPHeaderField:)(v26, v27);

  aBlock.value._countAndFlagsBits = 0x3D7365747962;
  aBlock.value._object = 0xE600000000000000;
  v130[0] = a2;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 45;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v116 = a3;
  v30 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v130[0] = v32;
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x65676E6152;
  v34._object = 0xE500000000000000;
  v35 = v114;
  URLRequest.setValue(_:forHTTPHeaderField:)(aBlock, v34);

  sub_100003B20(a5, v130);
  v118 = v19;
  v36 = *(v19 + 16);
  v37 = v8;
  v38 = v117;
  v39 = v119;
  v36(v117, v35, v119);
  v109 = v24;
  v115(v120, a1, v121);
  v40 = objc_allocWithZone(type metadata accessor for DownloadSubTask());
  swift_unknownObjectWeakInit();
  *&v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_size] = v116;
  *&v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_offset] = a2;
  sub_100003B20(v130, &v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_asyncStream]);
  swift_unknownObjectWeakAssign();
  v36(&v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_request], v38, v39);
  v41 = URLRequest.allHTTPHeaderFields.getter();
  if (v41)
  {
    v42 = v41;
    v43 = v37;
    if (*(v41 + 16))
    {
      v44 = sub_100013364(0x65676E6152, 0xE500000000000000);
      if (v45)
      {
        v46 = (*(v42 + 56) + 16 * v44);
        v48 = *v46;
        v47 = v46[1];
      }

      else
      {
        v47 = 0xE400000000000000;
        v48 = 1701736302;
      }
    }

    else
    {
      v47 = 0xE400000000000000;
      v48 = 1701736302;
    }
  }

  else
  {
    v47 = 0xE400000000000000;
    v48 = 1701736302;
    v43 = v37;
  }

  v49 = &v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader];
  *v49 = v48;
  v49[1] = v47;
  v50 = &v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_dataTaskFinishedCallback];
  v51 = v111;
  *v50 = v110;
  *(v50 + 1) = v51;
  v115(&v40[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_signedURL], v120, v121);
  v52 = *&v43[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];

  v53 = v52;
  v54 = sub_10003D38C(v53);

  v55 = *&v54[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session];
  v56 = v112;
  *&v54[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session] = v112;
  v57 = v56;

  aBlock.value._countAndFlagsBits = 0;
  aBlock.value._object = 0xE000000000000000;
  v58 = v54;
  _StringGuts.grow(_:)(60);
  v59._countAndFlagsBits = 0xD000000000000020;
  v59._object = 0x800000010042AAE0;
  String.append(_:)(v59);
  v60 = *&v58[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader];
  v61 = *&v58[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader + 8];

  v62._countAndFlagsBits = v60;
  v62._object = v61;
  String.append(_:)(v62);

  v63._countAndFlagsBits = 10272;
  v63._object = 0xE200000000000000;
  String.append(_:)(v63);
  v129 = v116;
  v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v64);

  v65._object = 0x800000010042AB10;
  v65._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v65);
  v66 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v67 = *&v43[v66];
  v68 = [v67 description];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  v72._countAndFlagsBits = v69;
  v72._object = v71;
  String.append(_:)(v72);

  countAndFlagsBits = aBlock.value._countAndFlagsBits;
  object = aBlock.value._object;
  v75 = &v58[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v75 = countAndFlagsBits;
  v75[1] = object;

  __chkstk_darwin(v76);
  *(&v109 - 2) = v43;
  sub_1000039E8(&qword_1004A72D8);
  OS_dispatch_queue.sync<A>(execute:)();
  v116 = 0;
  v77 = v127;
  v78 = v128;
  v79 = *&v58[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v80 = swift_allocObject();
  v80[2] = v58;
  v80[3] = v77;
  v80[4] = v78;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_100031DB0;
  *(v81 + 24) = v80;
  v125 = sub_10001FA40;
  v126 = v81;
  aBlock.value._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock.value._object = 1107296256;
  v123 = sub_10003885C;
  v124 = &unk_10047C9A8;
  v82 = _Block_copy(&aBlock);
  v83 = v58;

  dispatch_sync(v79, v82);
  _Block_release(v82);
  (*(v113 + 8))(v120, v121);
  v84 = *(v118 + 8);
  v118 += 8;
  v84(v117, v119);
  sub_100003C3C(v130);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_20;
  }

  v86 = *&v43[OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue];
  v87 = swift_allocObject();
  *(v87 + 16) = v43;
  *(v87 + 24) = v83;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_100031A48;
  *(v88 + 24) = v87;
  v125 = sub_10001FA40;
  v126 = v88;
  aBlock.value._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock.value._object = 1107296256;
  v123 = sub_10003885C;
  v124 = &unk_10047CA20;
  v89 = _Block_copy(&aBlock);
  v90 = v83;
  v91 = v43;

  dispatch_sync(v86, v89);
  _Block_release(v89);
  v92 = swift_isEscapingClosureAtFileLocation();

  if (v92)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  (*((swift_isaMask & *v90) + 0x110))(&off_10047A770);

  __chkstk_darwin(v93);
  *(&v109 - 2) = v91;
  OS_dispatch_queue.sync<A>(execute:)();
  v94 = aBlock.value._countAndFlagsBits + 1;
  if (__OFADD__(aBlock.value._countAndFlagsBits, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v95 = swift_allocObject();
  *(v95 + 16) = v91;
  *(v95 + 24) = v94;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_100031A88;
  *(v96 + 24) = v95;
  v125 = sub_10001FA40;
  v126 = v96;
  aBlock.value._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock.value._object = 1107296256;
  v123 = sub_10003885C;
  v124 = &unk_10047CA98;
  v97 = _Block_copy(&aBlock);
  v98 = v91;

  dispatch_sync(v86, v97);
  _Block_release(v97);
  LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

  if (v97)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __chkstk_darwin(v99);
  *(&v109 - 2) = v98;
  OS_dispatch_queue.sync<A>(execute:)();
  v100 = aBlock.value._countAndFlagsBits + 1;
  if (__OFADD__(aBlock.value._countAndFlagsBits, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v101 = swift_allocObject();
  *(v101 + 16) = v98;
  *(v101 + 24) = v100;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_100031A9C;
  *(v102 + 24) = v101;
  v125 = sub_10001FA40;
  v126 = v102;
  aBlock.value._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock.value._object = 1107296256;
  v123 = sub_10003885C;
  v124 = &unk_10047CB10;
  v103 = _Block_copy(&aBlock);
  v104 = v98;

  dispatch_sync(v86, v103);
  _Block_release(v103);
  v105 = swift_isEscapingClosureAtFileLocation();

  if ((v105 & 1) == 0)
  {
    type metadata accessor for RetryRunner();
    swift_allocObject();
    v106 = v90;
    v107 = sub_100072164(v106);
    v108 = v106;
    sub_100079A68(v107, v108);

    v84(v114, v119);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_10002E780(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v119 = a4;
  v120 = a5;
  v117 = a2;
  v118 = a3;
  v133 = a1;
  v127 = type metadata accessor for Date();
  v8 = *(v127 - 8);
  v9 = __chkstk_darwin(v127);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = &v111 - v11;
  v126 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_syncronizationQueue;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  v13 = &v5[OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer];
  v14 = *&v5[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v114 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics;
  v121 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client;
  v129 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
  swift_beginAccess();
  v125 = v13;
  swift_beginAccess();
  v115 = v12;
  swift_beginAccess();
  v134 = v7;
  v132 = v14;
  result = OS_dispatch_queue.sync<A>(execute:)();
  v16 = v6;
  if (v135)
  {
    return result;
  }

  v124 = (v8 + 8);
  v128 = &v137;
  v111 = xmmword_100376A40;
  v113 = xmmword_100376250;
  v112 = xmmword_100376260;
  while (1)
  {
    v35 = v133[3];
    v36 = v133[4];
    sub_10000E2A8(v133, v35);
    v37 = (*(v36 + 40))(v35, v36);
    if (v16)
    {
      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_100376BB0;
      v102 = v133[3];
      v103 = v133[4];
      sub_10000E2A8(v133, v102);
      v104 = (*(v103 + 8))(v102, v103);
      v106 = v105;
      *(v101 + 56) = &type metadata for String;
      v107 = sub_10001A9EC();
      *(v101 + 64) = v107;
      *(v101 + 32) = v104;
      *(v101 + 40) = v106;
      swift_getErrorValue();
      v108 = Error.localizedDescription.getter();
      *(v101 + 96) = &type metadata for String;
      *(v101 + 104) = v107;
      *(v101 + 72) = v108;
      *(v101 + 80) = v109;
      sub_10001AA40(0, &qword_1004A7380);
      v110 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return swift_willThrow();
    }

    v40 = v37;
    v41 = v38;
    if ((v39 & 1) == 0)
    {
      break;
    }

    if (v37 | v38)
    {
      v42 = swift_allocObject();
      *(v42 + 16) = v7;
      *(v42 + 24) = 1;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_10001F9F8;
      *(v43 + 24) = v42;
      v139 = sub_10001FA40;
      v140 = v43;
      v135 = _NSConcreteStackBlock;
      v136 = 1107296256;
      v137 = sub_10003885C;
      v138 = &unk_10047C8B8;
      v44 = _Block_copy(&v135);
      v45 = v7;

      dispatch_sync(v132, v44);
      _Block_release(v44);
      LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

      if (v44)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

      sub_100013E54(&v7[v129], &v135, &qword_1004A71D8);
      if (v138)
      {
        sub_100003B20(&v135, &v141);
        sub_100013F2C(&v135, &qword_1004A71D8);
        v46 = v142;
        v47 = v143;
        sub_10000E2A8(&v141, v142);
        (*(v47 + 32))(v46, v47);
        sub_100003C3C(&v141);
      }

      else
      {
        sub_100013F2C(&v135, &qword_1004A71D8);
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v45;
      *(v78 + 24) = 1;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_100031D18;
      *(v79 + 24) = v78;
      v139 = sub_10001FA40;
      v140 = v79;
      v135 = _NSConcreteStackBlock;
      v136 = 1107296256;
      v137 = sub_10003885C;
      v138 = &unk_10047C930;
      v80 = _Block_copy(&v135);
      v81 = v45;

      dispatch_sync(v132, v80);
      _Block_release(v80);
      LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

      if (v80)
      {
        goto LABEL_62;
      }

      sub_100003B20(*&v7[v121] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v135);
      v82 = v138;
      v83 = v139;
      sub_10000E2A8(&v135, v138);
      (*(v83 + 2))(v81, 0, v82, v83);
      sub_100003C3C(&v135);
      v84 = v133[3];
      v85 = v133[4];
      sub_10000E2A8(v133, v84);
      v34 = (*(v85 + 32))(v84, v85);
    }

    else
    {
      v34 = usleep(0x186A0u);
    }

LABEL_4:
    __chkstk_darwin(v34);
    *(&v111 - 2) = v7;
    result = OS_dispatch_queue.sync<A>(execute:)();
    if (v135)
    {
      return result;
    }
  }

  __chkstk_darwin(v37);
  *(&v111 - 2) = v7;
  sub_1000039E8(&qword_1004A72D0);
  OS_dispatch_queue.sync<A>(execute:)();
  v131 = v136;
  if (v136 >> 60 == 15)
  {
    v131 = v41;
    v48 = *&v7[v115];
    v49 = Date.init()();
    v122 = v48;
    __chkstk_darwin(v49);
    *(&v111 - 2) = v7;
    v50 = v7;
    while (1)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      if (v135 < v48)
      {
        break;
      }

      v51 = usleep(0x186A0u);
      __chkstk_darwin(v51);
      *(&v111 - 2) = v7;
    }

    v17 = v116;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v123 = *v124;
    v123(v17, v127);
    sub_10002D98C(v117, v131, v40, v118, v133, v119, v120);
    v19 = v18;
    v131 = v18;
    sub_1000039E8(&unk_1004A7370);
    v20 = swift_allocObject();
    *(v20 + 16) = v113;
    __chkstk_darwin(v20);
    *(&v111 - 2) = v7;
    OS_dispatch_queue.sync<A>(execute:)();
    v21 = v135;
    *(v20 + 56) = &type metadata for Int;
    *(v20 + 64) = &protocol witness table for Int;
    *(v20 + 32) = v21;
    *(v20 + 96) = &type metadata for Int32;
    *(v20 + 104) = &protocol witness table for Int32;
    *(v20 + 72) = v122;
    v22 = (*v125 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name);
    v24 = *v22;
    v23 = v22[1];
    *(v20 + 136) = &type metadata for String;
    v25 = sub_10001A9EC();
    *(v20 + 144) = v25;
    *(v20 + 112) = v24;
    *(v20 + 120) = v23;
    v26 = *&v19[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader];
    v27 = *&v19[OBJC_IVAR____TtC16KnoxClientPublic15DownloadSubTask_rangeHeader + 8];
    *(v20 + 176) = &type metadata for String;
    *(v20 + 184) = v25;
    *(v20 + 152) = v26;
    *(v20 + 160) = v27;
    v135 = 0;
    v136 = 0xE000000000000000;

    Double.write<A>(to:)();
    v28 = v135;
    v29 = v136;
    *(v20 + 216) = &type metadata for String;
    *(v20 + 224) = v25;
    *(v20 + 192) = v28;
    *(v20 + 200) = v29;
    v135 = 0;
    v136 = 0xE000000000000000;
    sub_10003BB24();
    Float.write<A>(to:)();
    v30._countAndFlagsBits = 0x6365732F424D20;
    v30._object = 0xE700000000000000;
    String.append(_:)(v30);
    v31 = v135;
    v32 = v136;
    *(v20 + 256) = &type metadata for String;
    *(v20 + 264) = v25;
    *(v20 + 232) = v31;
    *(v20 + 240) = v32;
    sub_10001AA40(0, &qword_1004A7380);
    v33 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v34 = (v123)(v130, v127);
    v7 = v50;
    goto LABEL_4;
  }

  v52 = v135;
  sub_1000039E8(&unk_1004A7370);
  v53 = swift_allocObject();
  *(v53 + 16) = v112;
  *(v53 + 56) = &type metadata for Int;
  *(v53 + 64) = &protocol witness table for Int;
  *(v53 + 72) = v41;
  *(v53 + 32) = v40;
  *(v53 + 96) = &type metadata for Int;
  *(v53 + 104) = &protocol witness table for Int;
  if (__OFSUB__(v40, 1))
  {
    goto LABEL_63;
  }

  v123 = 0;
  *(v53 + 136) = &type metadata for Int;
  *(v53 + 144) = &protocol witness table for Int;
  *(v53 + 112) = v40 - 1;
  v54 = v53;
  v55 = [*v125 description];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v54[22] = &type metadata for String;
  v54[23] = sub_10001A9EC();
  v54[19] = v56;
  v54[20] = v58;
  sub_10001AA40(0, &qword_1004A7380);
  v59 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (__OFADD__(v41, v40))
  {
    goto LABEL_64;
  }

  if (&v41[v40] < v41)
  {
    goto LABEL_65;
  }

  v60 = Data._Representation.subscript.getter();
  v62 = v60;
  v63 = v61;
  v64 = v61 >> 62;
  if ((v61 >> 62) <= 1)
  {
    if (!v64)
    {
      *&v141 = v60;
      WORD4(v141) = v61;
      BYTE10(v141) = BYTE2(v61);
      BYTE11(v141) = BYTE3(v61);
      BYTE12(v141) = BYTE4(v61);
      BYTE13(v141) = BYTE5(v61);
      result = sub_100013E54(&v7[v129], &v135, &qword_1004A71D8);
      v65 = v138;
      if (!v138)
      {
        goto LABEL_71;
      }

      v66 = v139;
      sub_10000E2A8(&v135, v138);
      v67 = *(v66 + 6);
      v68 = (&v141 + BYTE6(v63));
      v69 = v41;
      goto LABEL_48;
    }

    v122 = v52;
    v75 = (v60 >> 32) - v60;
    if (v60 >> 32 < v60)
    {
      goto LABEL_66;
    }

    v72 = __DataStorage._bytes.getter();
    if (v72)
    {
      v86 = __DataStorage._offset.getter();
      if (__OFSUB__(v62, v86))
      {
        goto LABEL_69;
      }

      v72 += v62 - v86;
    }

    v76 = __DataStorage._length.getter();
    result = sub_100013E54(&v7[v129], &v135, &qword_1004A71D8);
    v77 = v138;
    if (!v138)
    {
      goto LABEL_72;
    }

LABEL_38:
    if (v76 >= v75)
    {
      v87 = v75;
    }

    else
    {
      v87 = v76;
    }

    v88 = v87 + v72;
    if (v72)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0;
    }

    v90 = v139;
    sub_10000E2A8(&v135, v77);
    v91 = v123;
    (*(v90 + 6))(v72, v89, v41, v77, v90);
    v16 = v91;
    if (!v91)
    {
      sub_100003C3C(&v135);
      sub_100031928(v62, v63);
LABEL_56:
      v100 = v122;
LABEL_57:
      v34 = sub_100031914(v100, v131);
      goto LABEL_4;
    }

LABEL_50:
    sub_100003C3C(&v135);
    sub_100031928(v62, v63);
    v93 = v16;
    v16 = 0;
    sub_100013E54(&v7[v129], &v141, &qword_1004A71D8);
    if (v142)
    {
      sub_100003C88(&v141, &v135);
      v94 = v138;
      v95 = v139;
      sub_10000E2A8(&v135, v138);
      if (((*(v95 + 2))(v94, v95) & 1) == 0)
      {
        v96 = v139;
        sub_10000E2A8(&v135, v138);
        swift_getErrorValue();
        v97 = Error.localizedDescription.getter();
        (*(v96 + 3))(v97);
      }

      sub_100003C3C(&v135);
    }

    else
    {
      sub_100013F2C(&v141, &qword_1004A71D8);
    }

    swift_getErrorValue();
    v98 = Error.localizedDescription.getter();
    sub_100036D50(v93, v98, v99);

    goto LABEL_56;
  }

  if (v64 == 2)
  {
    v122 = v52;
    v70 = *(v60 + 16);
    v71 = *(v60 + 24);
    v72 = __DataStorage._bytes.getter();
    if (v72)
    {
      v73 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v73))
      {
        goto LABEL_68;
      }

      v72 += v70 - v73;
    }

    v74 = __OFSUB__(v71, v70);
    v75 = v71 - v70;
    if (v74)
    {
      goto LABEL_67;
    }

    v76 = __DataStorage._length.getter();
    result = sub_100013E54(&v7[v129], &v135, &qword_1004A71D8);
    v77 = v138;
    if (!v138)
    {
      goto LABEL_73;
    }

    goto LABEL_38;
  }

  *(&v141 + 6) = 0;
  *&v141 = 0;
  result = sub_100013E54(&v7[v129], &v135, &qword_1004A71D8);
  v65 = v138;
  if (v138)
  {
    v66 = v139;
    sub_10000E2A8(&v135, v138);
    v67 = *(v66 + 6);
    v68 = &v141;
    v69 = v41;
LABEL_48:
    v92 = v123;
    v67(&v141, v68, v69, v65, v66);
    v16 = v92;
    if (!v92)
    {
      sub_100003C3C(&v135);
      sub_100031928(v62, v63);
      v100 = v52;
      goto LABEL_57;
    }

    v122 = v52;
    goto LABEL_50;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_10002F984(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v106 = a8;
  v105 = a5;
  v111 = a4;
  v113 = a3;
  v118 = a2;
  v107 = a1;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v117 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v116);
  v115 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v19 - 8);
  v114 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_downloadType;
  swift_beginAccess();
  v23 = *(v9 + v22) == 1;
  v108 = a6;
  if (v23)
  {
    v24 = a7;
    v25 = *(v9 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
    v26 = objc_opt_self();
    v27 = v25;
    v28 = v113;

    v29 = [v26 ephemeralSessionConfiguration];
    v30 = [objc_opt_self() sessionWithConfiguration:v29];

    v31 = type metadata accessor for KnoxRawDownloadToFileAsync();
    swift_allocObject();
    v32 = v111;
    v33 = v112;
    v34 = sub_1000AD270(v27, v118, v28, v32, sub_100031B54, v21, v30);
    if (v33)
    {
    }

    v103 = v9;
    v123 = v31;
    v124 = &off_100481EB8;
    *&v122 = v34;
    sub_100003C88(&v122, v125);
LABEL_13:
    v66 = v108;
    sub_100003B20(v125, &v122);
    v67 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream;
    v68 = v103;
    swift_beginAccess();
    sub_100031BAC(&v122, v68 + v67);
    swift_endAccess();
    v69 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType;
    swift_beginAccess();
    v70 = sub_100037198(*(v68 + v69));
    v71 = *(v68 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session);
    *(v68 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session) = v70;
    v72 = v70;

    sub_10002E780(v125, v107, v72, v66, v24);
    sub_100003C3C(v125);
  }

  v87 = a7;
  v103 = v9;
  v89 = *(v9 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v35 = objc_opt_self();
  v104 = v21;

  v36 = [v35 ephemeralSessionConfiguration];
  v37 = [objc_opt_self() sessionWithConfiguration:v36];
  v110 = v14;
  v38 = v17;
  v90 = v37;

  v92 = type metadata accessor for KnoxAEADecryptToFileAsync();
  v39 = swift_allocObject();
  v101 = v15;
  v40 = v39;
  *(v39 + 16) = 0xD0000000000000C0;
  *(v39 + 24) = 0x800000010042AB90;
  v109 = sub_10001AA40(0, &qword_1004A7840);
  v41 = v12;
  v91 = "load. File path:";
  static DispatchQoS.userInitiated.getter();
  v120 = &_swiftEmptyArrayStorage;
  v99 = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v98 = sub_1000039E8(&unk_1004A7850);
  v97 = sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v96 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v42 = v117 + 104;
  v95 = *(v117 + 104);
  v100 = v38;
  v95(v38);
  v94 = enum case for DispatchQoS.QoSClass.default(_:);
  v43 = v119;
  v44 = v119 + 104;
  v93 = *(v119 + 104);
  v45 = v110;
  v102 = v41;
  v93(v110);
  static OS_dispatch_queue.global(qos:)();
  v46 = v43 + 8;
  v47 = *(v43 + 8);
  v119 = v46;
  v47(v45, v41);
  *(v40 + 4) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v40 + 5) = 0;
  *(v40 + 6) = 0xE000000000000000;
  *(v40 + 9) = 0;
  v91 = v40;
  v48 = v90;
  *(v40 + 11) = v90;
  type metadata accessor for KnoxAEADecryptToFileAsync.CallbackWrapper();
  v49 = swift_allocObject();
  *(v49 + 88) = 0;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 92) = 1;
  v88 = "FileAsync-synchronizationQueue";

  v90 = v48;
  static DispatchQoS.userInitiated.getter();
  v120 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v117 = v42;
  (v95)(v100, v96, v101);
  v50 = v110;
  v51 = v102;
  v86[1] = v44;
  (v93)(v110, v94, v102);
  static OS_dispatch_queue.global(qos:)();
  v86[0] = v47;
  v47(v50, v51);
  *(v49 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v49 + 104) = 0;
  v52 = v89;
  *(v49 + 80) = v89;
  v53 = v111;
  *(v49 + 16) = v111;
  *(v49 + 48) = sub_1000039E8(&qword_1004A72E0);
  v54 = sub_10000E720(&qword_1004A72E8, &qword_1004A72E0);
  *(v49 + 24) = v105;
  v55 = *(v49 + 64);
  *(v49 + 56) = v54;
  *(v49 + 64) = sub_100031B54;
  *(v49 + 72) = v104;

  v56 = v53;
  v57 = v52;

  sub_100031B5C(v55);

  v59 = v106;
  __chkstk_darwin(v58);
  v86[-6] = v49;
  v86[-5] = 0x1000000;
  v86[-4] = v59 << 24;
  v86[-3] = 0x400000000000000;
  LODWORD(v86[-2]) = v59;
  v60 = v112;
  v61 = v113;
  if ((v113 & 0x1000000000000000) == 0)
  {
    if ((v113 & 0x2000000000000000) != 0)
    {
      v120 = v118;
      v121 = v113 & 0xFFFFFFFFFFFFFFLL;

      v62 = &v120;
      goto LABEL_10;
    }

    if ((v118 & 0x1000000000000000) != 0)
    {

      v62 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_10:
      v63 = AEADecryptToFileChunkAsyncStreamOpen(v62, v49, sub_1000913A8, sub_1000913F0, 0x1000000uLL, v59 << 24, 0x400000000000000uLL, v59);

      goto LABEL_11;
    }
  }

  sub_1000039E8(&unk_1004A72F0);
  _StringGuts._slowWithCString<A>(_:)();
  if (v60)
  {

    v85 = v91;

    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  v63 = v125[7];
LABEL_11:
  v64 = v92;

  if (v63)
  {

    v65 = v91;
    *(v91 + 9) = v63;
    *(v65 + 10) = v49;
    *(v65 + 7) = v118;
    *(v65 + 8) = v61;
    v123 = v64;
    v124 = &off_100480F48;
    *&v122 = v65;
    sub_100003C88(&v122, v125);

    v24 = v87;
    goto LABEL_13;
  }

  sub_1000039E8(&unk_1004A73A0);
  OS_dispatch_queue.sync<A>(execute:)();
  v74 = v118;
  if (!v120)
  {
    v111 = 0x800000010042ACC0;
    v112 = 0x800000010042AD30;
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v120 = 0xD000000000000029;
    v121 = 0x800000010042ADA0;
    v75._countAndFlagsBits = v74;
    v75._object = v61;
    String.append(_:)(v75);
    v113 = v120;
    v108 = v121;
    v118 = type metadata accessor for KnoxServiceClient.ClientError();
    v76 = swift_allocObject();
    v107 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v120 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v95)(v100, v96, v101);
    v77 = v110;
    v78 = v102;
    (v93)(v110, v94, v102);
    static OS_dispatch_queue.global(qos:)();
    (v86[0])(v77, v78);
    v79 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v80 = v111;
    *(v76 + 16) = 0xD000000000000063;
    *(v76 + 24) = v80;
    v81 = v112;
    *(v76 + 32) = 0xD00000000000006ELL;
    *(v76 + 40) = v81;
    *(v76 + 56) = 10;
    *(v76 + 48) = 557;
    v82 = v108;
    *(v76 + 64) = v113;
    *(v76 + 72) = v82;
    *(v76 + 80) = 0;
    *(v76 + 88) = v79;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v83 = v76;
  }

  swift_willThrow();

  v84 = v91;

  return swift_deallocPartialClassInstance();
}

uint64_t sub_10003084C(float a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100003B20(*(result + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v6);
    v4 = v7;
    v5 = v8;
    sub_10000E2A8(v6, v7);
    (*(v5 + 8))(v3, v4, v5, a1);

    sub_100003C3C(v6);
    return 1;
  }

  return result;
}

uint64_t sub_10003091C()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100030960(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100030A40()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_destinationFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_asyncStream, &qword_1004A71D8);
  v3 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData);
  v4 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData + 8);

  return sub_100031914(v3, v4);
}

id DownloadTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100030CCC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100030D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030D1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030D6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030DA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100030DE8()
{
  result = qword_1004A71F0;
  if (!qword_1004A71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A71F0);
  }

  return result;
}

uint64_t sub_100030E3C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100030E94(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_decryptionThreadCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_100030EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_pointer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_100030F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100030FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_100031044(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_100031094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100031100()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTask.DownloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadTask.DownloadType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000318C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100031914(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100031928(a1, a2);
  }

  return a1;
}

uint64_t sub_100031928(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100031994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000318C0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000319C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031A08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031A50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031AB0()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100031928(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031B00()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_100031994(v1, v2);

  return sub_100031914(v4, v5);
}

uint64_t sub_100031B5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A71D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031C1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask__fullFileData);
  v3 = *v2;
  v4 = v2[1];
  *a1 = *v2;
  a1[1] = v4;
  return sub_100031994(v3, v4);
}

uint64_t sub_100031C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id KnoxTask.init(client:)(void *a1)
{
  v2 = sub_10003D38C(a1);

  return v2;
}

uint64_t sub_100031E3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_allowedStatusCodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100031F64(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003DAAC;
  *(v7 + 24) = v6;
  v12[4] = sub_10003DAB0;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003885C;
  v12[3] = &unk_10047CCF0;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1000320C4(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  v4[7] = v4[1];
  return sub_1000321AC;
}

void sub_1000321AC(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[8];
  v4 = (*a1)[9];
  v6 = (*a1)[7];
  if ((a2 & 1) == 0)
  {
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v3;
    v12[4] = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100040650;
    *(v13 + 24) = v12;
    v2[4] = sub_10004076C;
    v2[5] = v13;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047CDE0;
    v14 = _Block_copy(v2);
    v15 = v5;

    dispatch_sync(v4, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100040650;
  *(v8 + 24) = v7;
  v2[4] = sub_10004076C;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047CD68;
  v9 = _Block_copy(v2);
  v10 = v5;

  dispatch_sync(v4, v9);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_10003248C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000324E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A6D30);
}

uint64_t sub_100032564(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DB98;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047CE58;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1000326C0(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_1000327A0;
}

void sub_1000327A0(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_10004075C;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047CED0;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10004075C;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047CF48;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}