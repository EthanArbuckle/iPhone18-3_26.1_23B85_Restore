uint64_t sub_1000D2420(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);

    if (v1)
    {

      v2 = String.init(cString:)();
      v4 = sub_1000D3120(v2, v3);

      return v4 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D24A8(uint64_t result, float a2)
{
  if (result)
  {
    v3 = *(result + 16);
    v4 = *&v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];
    v5 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate;

    sub_100003B20(v4 + v5, v9);
    v6 = v9[4];
    sub_10000E2A8(v9, v9[3]);
    v7 = *(v6 + 8);
    v8 = v3;
    v7(a2);

    sub_100003C3C(v9);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D2580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v5 = type metadata accessor for ArchiveFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArchiveStream();
  v10[4] = a2;
  v10[5] = a3;
  v10[7] = &_swiftEmptyArrayStorage;
  sub_1000D7BFC(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
  sub_1000039E8(&qword_1004A6FA0);
  sub_10000E720(&qword_1004A6FA8, &qword_1004A6FA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static ArchiveStream.withDecodeStream<A>(readingFrom:selectUsing:flags:threadCount:_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D276C(uint64_t a1, uint64_t a2, char *a3)
{
  v70 = a3;
  v73 = a2;
  v5 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v5 - 8);
  v72 = v52 - v6;
  v71 = type metadata accessor for FilePath();
  v74 = *(v71 - 8);
  v7 = __chkstk_darwin(v71);
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = v52 - v9;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v57 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v53);
  v54 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A9D00);
  __chkstk_darwin(v18 - 8);
  v20 = v52 - v19;
  v21 = type metadata accessor for ArchiveHeader.EntryType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v52 - v26;
  result = dispatch thunk of ArchiveStream.readHeader()();
  if (v3)
  {
  }

  v29 = result;
  v52[1] = v17;
  v68 = (v22 + 32);
  v69 = (v22 + 48);
  v66 = a1;
  v67 = (v74 + 6);
  v62 = (v74 + 2);
  v63 = (v74 + 4);
  v61 = (v74 + 1);
  v74 = (v22 + 8);
  while (v29)
  {
    ArchiveHeader.entryType.getter();
    if ((*v69)(v20, 1, v21) == 1)
    {
      sub_100013F2C(v20, &qword_1004A9D00);
      v71 = 0x8000000100429EB0;
      v72 = 0x800000010042A070;
      v73 = 0x8000000100431D10;
      v74 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v70 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v76 = &_swiftEmptyArrayStorage;
      sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v55 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
      v45 = v58;
      v44 = v59;
      v46 = v60;
      (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.default(_:), v60);
      static OS_dispatch_queue.global(qos:)();
      (*(v44 + 8))(v45, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v72;
      *(v43 + 16) = 0xD000000000000078;
      *(v43 + 24) = v48;
      v49 = v71;
      *(v43 + 32) = 0xD00000000000005DLL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 0;
      *(v43 + 48) = 460;
      v50 = v73;
      *(v43 + 64) = 0xD00000000000001DLL;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v51 = v43;
      swift_willThrow();
    }

    (*v68)(v27, v20, v21);
    v30 = v72;
    ArchiveHeader.entryPath.getter();
    v31 = v71;
    if ((*v67)(v30, 1, v71) == 1)
    {
      sub_100013F2C(v30, &qword_1004A9CF8);
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    else
    {
      v34 = v64;
      (*v63)(v64, v30, v31);
      (*v62)(v65, v34, v31);
      v35 = v34;
      v36 = String.init(decoding:)();
      v37 = v31;
      v33 = v38;
      (*v61)(v35, v37);
      v32 = v36;
    }

    sub_10004C684(v32, v33, v73, 5521744, 0xE300000000000000, v29);

    static ArchiveHeader.EntryType.link.getter();
    sub_1000D7BFC(&qword_1004A9D08, &type metadata accessor for ArchiveHeader.EntryType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39 = *v74;
    (*v74)(v25, v21);
    if (v76 == v75)
    {
      v40 = sub_1000D79A8();
      sub_10004C684(v40, v41, v73, 4935244, 0xE300000000000000, v29);
    }

    v42 = v70;
    dispatch thunk of ArchiveStream.writeHeader(_:)();
    sub_10004BCCC(v66, v42, v29);
    v39(v27, v21);

    result = dispatch thunk of ArchiveStream.readHeader()();
    v29 = result;
  }

  return result;
}

uint64_t sub_1000D3120(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v7 = a1;
      }

      v8 = 7;
      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v8 = 11;
      }

      v49 = v8 | (v7 << 16);
      v9 = (v4 + 40);
      do
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v15 = *(v9 - 1);
        v14 = *v9;
        v16 = objc_allocWithZone(NSRegularExpression);

        v17 = String._bridgeToObjectiveC()();
        v52 = 0;
        v18 = [v16 initWithPattern:v17 options:0 error:&v52];

        if (v18)
        {
          v19 = v52;

          v52 = 15;
          v53 = v49;

          sub_1000039E8(&qword_1004A8518);
          sub_10000E720(&qword_1004A8520, &qword_1004A8518);
          sub_10000B080();
          v20 = _NSRange.init<A, B>(_:in:)();
          v22 = v21;
          v23 = String._bridgeToObjectiveC()();
          v24 = [v18 firstMatchInString:v23 options:0 range:{v20, v22}];

          if (v24)
          {
            v25 = 1;
            goto LABEL_27;
          }
        }

        else
        {
          v10 = v52;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static os_log_type_t.error.getter();
          sub_1000039E8(&unk_1004A7370);
          v11 = v5;
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_100376A40;
          *(v12 + 56) = &type metadata for String;
          *(v12 + 64) = sub_10001A9EC();
          *(v12 + 32) = v15;
          *(v12 + 40) = v14;
          sub_10001AA40(0, &qword_1004A7380);
          v13 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();
          v5 = v11;
        }

        ++v6;
        v9 += 2;
      }

      while (v5 != v6);
    }
  }

  v26 = *(v48 + 16);
  if (!v26)
  {
    return 0;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {
    return 1;
  }

  v28 = 0;
  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = a1;
  }

  v30 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v30 = 11;
  }

  v50 = v30 | (v29 << 16);
  for (i = (v26 + 40); ; i += 2)
  {
    if (v28 >= *(v26 + 16))
    {
      goto LABEL_32;
    }

    v38 = *(i - 1);
    v37 = *i;
    v39 = objc_allocWithZone(NSRegularExpression);

    v40 = String._bridgeToObjectiveC()();
    v52 = 0;
    v41 = [v39 initWithPattern:v40 options:0 error:&v52];

    if (v41)
    {
      break;
    }

    v32 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v33 = v26;
    v34 = v27;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100376A40;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_10001A9EC();
    *(v35 + 32) = v38;
    *(v35 + 40) = v37;
    sub_10001AA40(0, &qword_1004A7380);
    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v27 = v34;
    v26 = v33;

LABEL_22:
    if (v27 == ++v28)
    {
      return 1;
    }
  }

  v42 = v52;

  v52 = 15;
  v53 = v50;

  sub_1000039E8(&qword_1004A8518);
  sub_10000E720(&qword_1004A8520, &qword_1004A8518);
  sub_10000B080();
  v43 = _NSRange.init<A, B>(_:in:)();
  v45 = v44;
  v46 = String._bridgeToObjectiveC()();
  v24 = [v41 firstMatchInString:v46 options:0 range:{v43, v45}];

  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = 0;
LABEL_27:

  return v25;
}

uint64_t sub_1000D36F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D3780()
{

  return swift_deallocClassInstance();
}

id sub_1000D37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

AAByteStream sub_1000D38C0(uint64_t a1, void *a2, void *a3, char *a4, int a5)
{
  v102 = a2;
  v100 = a4;
  v101 = a3;
  v110 = type metadata accessor for DispatchQoS.QoSClass();
  v115 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v112 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v107);
  v108 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v15 - 8);
  v17 = &v82 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v111 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v82 - v22;
  v105 = a1;
  v23 = (*(a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location) + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);

  URL.init(string:)();

  v24 = (*(v19 + 48))(v17, 1, v18);
  v104 = v8;
  if (v24 == 1)
  {
    sub_100013F2C(v17, &qword_1004A6D30);
    v106 = 0x8000000100429E70;
    v111 = 0x8000000100429EB0;
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v113 = 0xD00000000000002BLL;
    v114 = 0x8000000100429F10;
    v103 = v10;
    v26 = *v23;
    v25 = v23[1];

    v27._countAndFlagsBits = v26;
    v27._object = v25;
    String.append(_:)(v27);

    v101 = v114;
    v102 = v113;
    v105 = type metadata accessor for KnoxServiceClient.ClientError();
    v28 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v100 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v113 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v112 + 104))(v103, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
    v29 = v115;
    v31 = v109;
    v30 = v110;
    (*(v115 + 104))(v109, enum case for DispatchQoS.QoSClass.default(_:), v110);
    static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v31, v30);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v106;
    *(v28 + 16) = 0xD00000000000003FLL;
    *(v28 + 24) = v33;
    v34 = v111;
    *(v28 + 32) = 0xD00000000000005DLL;
    *(v28 + 40) = v34;
    *(v28 + 56) = 18;
    *(v28 + 48) = 52;
    v35 = v101;
    *(v28 + 64) = v102;
    *(v28 + 72) = v35;
    *(v28 + 80) = 0;
    *(v28 + 88) = v32;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_3:
    swift_allocError();
    *v36 = v28;
    return swift_willThrow();
  }

  v91 = a5;
  v38 = v106;
  (*(v19 + 32))(v106, v17, v18);
  v39 = *(v19 + 16);
  v94 = v19 + 16;
  v95 = v39;
  v39(v111, v38, v18);
  v96 = *(v105 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size);
  type metadata accessor for KnoxRandomAccessDownloadStream(0);
  v40 = swift_allocObject();
  v97 = v18;
  v98 = v14;
  v41 = v40;
  *(v40 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos) = 0;
  v93 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_synchronizationQueue;
  v42 = sub_10001AA40(0, &qword_1004A7840);
  v92 = " a valid URL instance from ";
  static DispatchQoS.default.getter();
  v113 = &_swiftEmptyArrayStorage;
  v43 = sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v99 = v19;
  v44 = sub_1000039E8(&unk_1004A7850);
  v45 = sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  v89 = v44;
  v88 = v45;
  v90 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = *(v112 + 104);
  v87 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v112 += 104;
  v86 = v46;
  v46(v10);
  v47 = v115;
  v49 = (v115 + 104);
  v48 = *(v115 + 104);
  v50 = v10;
  v51 = v109;
  v85 = enum case for DispatchQoS.QoSClass.default(_:);
  v52 = v110;
  v84 = v48;
  v48(v109);
  static OS_dispatch_queue.global(qos:)();
  v53 = *(v47 + 8);
  v115 = v47 + 8;
  v83 = v53;
  v53(v51, v52);
  v54 = v42;
  v55 = v97;
  *(v41 + v93) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled) = 0;
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream) = 0;
  v57 = v100;
  v56 = v101;
  *(v41 + 16) = v100;
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_task) = v56;
  v58 = v102;
  *(v41 + 24) = v102;
  v95(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url, v111, v55);
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize) = v96;
  v59 = v57;
  v60 = v56;
  v61 = v58;
  v62 = v103;
  sub_10006A608();
  if (v62)
  {

    v63 = *(v99 + 8);
    v63(v111, v55);
    return (v63)(v106, v55);
  }

  else
  {
    v64 = v50;
    v101 = v49;
    v102 = v54;
    v65 = v105;
    v66 = v106;
    v103 = v64;
    v68 = v99 + 8;
    v67 = *(v99 + 8);
    v67(v111, v55);
    v69 = sub_100068ACC();
    v99 = v68;
    v70 = v61;
    v71 = v65;
    v72 = sub_100047650(v69, v71, v61, 0);
    v73 = v70;
    v74 = v72;

    v67(v66, v55);

    v75 = *(v74 + 16);

    result = AEADecryptionRandomAccessInputStreamOpen(v69, v75, 0xFFFFFFFFFFFFFFFFLL, 0, v91);
    if (!result)
    {
      v105 = 0x8000000100431CC0;
      v100 = 0x8000000100429EB0;
      v106 = 0x800000010042A0F0;
      v111 = type metadata accessor for KnoxServiceClient.ClientError();
      v28 = swift_allocObject();
      static DispatchQoS.userInitiated.getter();
      v113 = &_swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v86(v103, v87, v104);
      v77 = v109;
      v76 = v110;
      v84(v109, v85, v110);
      static OS_dispatch_queue.global(qos:)();
      v83(v77, v76);
      v78 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v79 = v105;
      *(v28 + 16) = 0xD000000000000041;
      *(v28 + 24) = v79;
      v80 = v100;
      *(v28 + 32) = 0xD00000000000005DLL;
      *(v28 + 40) = v80;
      *(v28 + 56) = 0;
      *(v28 + 48) = 111;
      v81 = v106;
      *(v28 + 64) = 0xD000000000000037;
      *(v28 + 72) = v81;
      *(v28 + 80) = 0;
      *(v28 + 88) = v78;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      goto LABEL_3;
    }
  }

  return result;
}

AAByteStream_impl *sub_1000D4530(uint64_t a1, void *a2, void *a3, char *a4, int a5)
{
  LODWORD(v85) = a5;
  v83 = a3;
  v84 = a4;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v82 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v20 = v86;
  result = sub_1000D38C0(v19, a2, v83, v84, v85);
  if (!v20)
  {
    v84 = v15;
    v85 = v13;
    v80 = v10;
    v86 = v9;
    v83 = v7;
    v23 = *(v19 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size);
    if ((v23 - 0x200000000000000) >> 58 == 63)
    {
      v24 = v22;
      v25 = result;
      v26 = v23 << 6;
      result = swift_slowAlloc();
      if ((v26 & 0x8000000000000000) == 0)
      {
        v33 = result;
        if (v26)
        {
          bzero(result, v26);
        }

        v34 = AAMemoryOutputStreamOpen(v33, v26, v27, v28, v29, v30, v31, v32);
        v35 = v12;
        v36 = v18;
        if (!v34)
        {
          v78 = 0x8000000100431BC0;
          v79 = 0x8000000100429EB0;
          v87 = 0;
          v88 = 0xE000000000000000;
          _StringGuts.grow(_:)(78);
          v48._countAndFlagsBits = 0xD00000000000004CLL;
          v48._object = 0x8000000100431C10;
          String.append(_:)(v48);
          v89 = v26;
          v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v49);

          v75 = v88;
          v76 = v87;
          v77 = type metadata accessor for KnoxServiceClient.ClientError();
          v50 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840);
          v74 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v87 = &_swiftEmptyArrayStorage;
          sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v81 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
          v52 = v82;
          v51 = v83;
          v53 = v86;
          (*(v82 + 104))(v86, enum case for DispatchQoS.QoSClass.default(_:), v83);
          static OS_dispatch_queue.global(qos:)();
          (*(v52 + 8))(v53, v51);
          v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v55 = v78;
          *(v50 + 16) = 0xD000000000000049;
          *(v50 + 24) = v55;
          v56 = v79;
          *(v50 + 32) = 0xD00000000000005DLL;
          *(v50 + 40) = v56;
          *(v50 + 56) = 0;
          *(v50 + 48) = 150;
          v57 = v75;
          *(v50 + 64) = v76;
          *(v50 + 72) = v57;
          *(v50 + 80) = 0;
          *(v50 + 88) = v54;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_15:
          swift_allocError();
          *v71 = v50;
          return swift_willThrow();
        }

        v37 = v34;
        v79 = v35;
        v38 = v25;
        v39 = AAByteStreamProcess(v25, v34);
        AAByteStreamClose(v37);
        AAByteStreamClose(v24);
        AAByteStreamClose(v38);
        result = AAMemoryInputStreamOpen(v33, v39, v40, v41, v42, v43, v44, v45);
        v46 = v86;
        if (result)
        {
          v47 = AADecompressionInputStreamOpen(result, 0, 0);
          if (v47)
          {
            result = AADecodeArchiveInputStreamOpen(v47, 0, 0, 0, 0);
            if (result)
            {
              return result;
            }

            v76 = 0x8000000100431BC0;
            v75 = 0x8000000100429EB0;
            v77 = 0x8000000100431C90;
            v78 = type metadata accessor for KnoxServiceClient.ClientError();
            v50 = swift_allocObject();
            v73 = sub_10001AA40(0, &qword_1004A7840);
            v74 = "hivePointer.swift";
            v72[1] = v36;
            static DispatchQoS.userInitiated.getter();
            v87 = &_swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850);
            v65 = v46;
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v81 + 104))(v79, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
            v67 = v82;
            v66 = v83;
            (*(v82 + 104))(v65, enum case for DispatchQoS.QoSClass.default(_:), v83);
            static OS_dispatch_queue.global(qos:)();
            (*(v67 + 8))(v65, v66);
            v61 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v68 = v76;
            *(v50 + 16) = 0xD000000000000049;
            *(v50 + 24) = v68;
            v69 = v75;
            *(v50 + 32) = 0xD00000000000005DLL;
            *(v50 + 40) = v69;
            *(v50 + 56) = 0;
            v64 = 169;
          }

          else
          {
            v76 = 0x8000000100431BC0;
            v75 = 0x8000000100429EB0;
            v77 = 0x8000000100431C60;
            v78 = type metadata accessor for KnoxServiceClient.ClientError();
            v50 = swift_allocObject();
            v73 = sub_10001AA40(0, &qword_1004A7840);
            v74 = "hivePointer.swift";
            static DispatchQoS.userInitiated.getter();
            v87 = &_swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850);
            v58 = v46;
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v81 + 104))(v79, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
            v60 = v82;
            v59 = v83;
            (*(v82 + 104))(v58, enum case for DispatchQoS.QoSClass.default(_:), v83);
            static OS_dispatch_queue.global(qos:)();
            (*(v60 + 8))(v58, v59);
            v61 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v62 = v76;
            *(v50 + 16) = 0xD000000000000049;
            *(v50 + 24) = v62;
            v63 = v75;
            *(v50 + 32) = 0xD00000000000005DLL;
            *(v50 + 40) = v63;
            *(v50 + 56) = 0;
            v64 = 162;
          }

          *(v50 + 48) = v64;
          v70 = v77;
          *(v50 + 64) = 0xD000000000000027;
          *(v50 + 72) = v70;
          *(v50 + 80) = 0;
          *(v50 + 88) = v61;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000D4F94(AAArchiveStream_impl *a1, char *a2)
{
  v130 = a1;
  v131 = a2;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v124 = *(v2 - 1);
  __chkstk_darwin(v2);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = AAByteRangeCreate();
  v125 = v4;
  v127 = v11;
  if (v15)
  {
    v128 = v15;
    v16 = v2;
    v115 = v6;
    header = 0;
    type metadata accessor for AAHeaderWrapper.HeaderEntry();
    inited = swift_initStackObject();
    inited[2] = 0;
    v129 = inited + 2;
    inited[3] = 0;
    v18 = swift_slowAlloc();
    v126 = inited;
    v122 = v18;
    inited[4] = v18;
    v19 = AAArchiveStreamReadHeader(v130, &header);
    v118 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
    LODWORD(v119) = enum case for DispatchQoS.QoSClass.default(_:);
    v121 = v5;
    v120 = v9;
    if ((v19 & 0x80000000) == 0)
    {
      v107 = 0;
      v106 = 0;
      v109 = 0x8000000100431FE0;
      v116 = 0x8000000100431EF0;
      v108 = 0x8000000100432000;
      v117 = 0x8000000100429670;
      v110 = (v115 + 104);
      v111 = (v124 + 104);
      v112 = (v124 + 8);
      v20 = v16;
      v21 = v131;
      v22 = v125;
      v123 = v14;
      while (1)
      {
        if (!v19)
        {
          goto LABEL_52;
        }

        v35 = header;
        *v129 = header;
        if (v21)
        {
          if (!v35)
          {
            v114 = type metadata accessor for KnoxServiceClient.ClientError();
            v23 = swift_allocObject();
            v113 = sub_10001AA40(0, &qword_1004A7840);

            static DispatchQoS.userInitiated.getter();
            v132 = &_swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            v24 = v20;
            v25 = v22;
            v26 = v24;
            sub_1000039E8(&unk_1004A7850);
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
            v27 = v26;
            v22 = v25;
            v20 = v27;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*v110)(v8, v118, v121);
            (*v111)(v22, v119, v20);
            static OS_dispatch_queue.global(qos:)();
            (*v112)(v22, v20);
            v28 = v8;
            v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v30 = v109;
            *(v23 + 16) = 0xD000000000000013;
            *(v23 + 24) = v30;
            v31 = v116;
            *(v23 + 32) = 0xD000000000000064;
            *(v23 + 40) = v31;
            *(v23 + 56) = 0;
            *(v23 + 48) = 120;
            v32 = v108;
            *(v23 + 64) = 0xD00000000000004ALL;
            *(v23 + 72) = v32;
            *(v23 + 80) = 0;
            *(v23 + 88) = v29;
            sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
            swift_allocError();
            *v33 = v23;
LABEL_5:
            swift_willThrow();

LABEL_6:
            v34 = v130;
            goto LABEL_7;
          }

          v28 = v8;

          v36.ikey = sub_1000C9330(5521744, 0xE300000000000000);
          v37 = sub_1000C9294();
          v38 = v36;
          KeyIndex = AAHeaderGetKeyIndex(v35, v38);
          if ((KeyIndex & 0x80000000) != 0)
          {
            sub_1000D7C44();
            swift_allocError();
            *v59 = 0x80;
            goto LABEL_5;
          }

          if (AAHeaderGetFieldString(v35, KeyIndex, 0x400uLL, v37, 0) < 0)
          {
            sub_1000D7C44();
            swift_allocError();
            *v62 = 0;
            goto LABEL_5;
          }

          v40 = String.init(cString:)();
          v42 = sub_1000D3120(v40, v41);

          if (v42)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!v35)
          {
            v128 = 0x8000000100431ED0;
            v129 = 0x8000000100431F60;
            v97 = v22;
            v130 = type metadata accessor for KnoxServiceClient.ClientError();
            v98 = swift_allocObject();
            v131 = v8;
            v91 = v98;
            v124 = sub_10001AA40(0, &qword_1004A7840);
            static DispatchQoS.userInitiated.getter();
            v132 = &_swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850);
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*v110)(v131, v118, v121);
            (*v111)(v97, v119, v20);
            static OS_dispatch_queue.global(qos:)();
            (*v112)(v97, v20);
            v99 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v100 = v128;
            *(v91 + 16) = 0xD000000000000013;
            *(v91 + 24) = v100;
            v101 = v116;
            *(v91 + 32) = 0xD000000000000064;
            *(v91 + 40) = v101;
            *(v91 + 56) = 0;
            *(v91 + 48) = 140;
            v102 = v129;
            *(v91 + 64) = 0xD000000000000048;
            *(v91 + 72) = v102;
            *(v91 + 80) = 0;
            *(v91 + 88) = v99;
            sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_50:
            swift_allocError();
            *v103 = v91;
            goto LABEL_51;
          }

          v28 = v8;
        }

        v43.ikey = sub_1000C9330(5784649, 0xE300000000000000);
        v44 = AAHeaderGetKeyIndex(v35, v43);
        v45 = v122;
        if ((v44 & 0x80000000) != 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v87 = -126;
          goto LABEL_47;
        }

        if (AAHeaderGetFieldUInt(v35, v44, v122) < 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v87 = 2;
          goto LABEL_47;
        }

        v46 = *v45;
        v47.ikey = sub_1000C9330(5915721, 0xE300000000000000);
        v48 = AAHeaderGetKeyIndex(v35, v47);
        if ((v48 & 0x80000000) != 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v87 = -125;
          goto LABEL_47;
        }

        if (AAHeaderGetFieldUInt(v35, v48, v45) < 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v87 = 3;
LABEL_47:
          *v86 = v87;
LABEL_51:
          swift_willThrow();

          goto LABEL_52;
        }

        v54 = v46 + *v45;
        if (__CFADD__(v46, *v45))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        if ((v54 | v46) < 0)
        {
          goto LABEL_55;
        }

        v55 = AAByteRangeAdd(v128, v46, v54, v49, v50, v51, v52, v53);
        if (v55 < 0)
        {
          v129 = 0x8000000100431E70;
          v130 = 0x8000000100429EB0;
          v132 = 0;
          v133 = 0xE000000000000000;
          v88 = v55;
          _StringGuts.grow(_:)(35);

          v132 = 0xD000000000000021;
          v133 = 0x8000000100431FB0;
          v134 = v88;
          v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v89);

          v124 = v132;
          v122 = v133;
          v128 = type metadata accessor for KnoxServiceClient.ClientError();
          v90 = swift_allocObject();
          v131 = v28;
          v91 = v90;
          sub_10001AA40(0, &qword_1004A7840);
          static DispatchQoS.userInitiated.getter();
          v132 = &_swiftEmptyArrayStorage;
          sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*v110)(v131, v118, v121);
          v92 = v125;
          (*v111)(v125, v119, v20);
          static OS_dispatch_queue.global(qos:)();
          (*v112)(v92, v20);
          v93 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v94 = v129;
          *(v91 + 16) = 0xD00000000000003ALL;
          *(v91 + 24) = v94;
          v95 = v130;
          *(v91 + 32) = 0xD00000000000005DLL;
          *(v91 + 40) = v95;
          *(v91 + 56) = 0;
          *(v91 + 48) = 249;
          v96 = v122;
          *(v91 + 64) = v124;
          *(v91 + 72) = v96;
          *(v91 + 80) = 0;
          *(v91 + 88) = v93;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
          goto LABEL_50;
        }

        v56.ikey = sub_1000C9330(5920068, 0xE300000000000000);
        v57 = AAHeaderGetKeyIndex(v35, v56);
        if ((v57 & 0x80000000) != 0)
        {
          v58 = -127;
        }

        else
        {
          if ((AAHeaderGetFieldUInt(v35, v57, v45) & 0x80000000) == 0)
          {
            v63 = *v45;
            v64 = __CFADD__(v107, *v45);
            v107 += *v45;
            v34 = v130;
            if (v64)
            {
              goto LABEL_56;
            }

            v65 = v106;
            if (v63 > v106)
            {
              v65 = v63;
            }

            v106 = v65;
            goto LABEL_7;
          }

          v58 = 1;
        }

        v34 = v130;
        sub_1000D7C44();
        v60 = swift_allocError();
        *v61 = v58;
        swift_willThrow();
        v132 = v60;
        swift_errorRetain();
        sub_1000039E8(&qword_1004AB0A0);
        if (!swift_dynamicCast() || (v134 & 0x80000000) == 0)
        {

          goto LABEL_52;
        }

LABEL_7:
        v19 = AAArchiveStreamReadHeader(v34, &header);
        v8 = v28;
        v21 = v131;
        if (v19 < 0)
        {
          v130 = v20;
          v131 = v28;
          v75 = v19;
          goto LABEL_41;
        }
      }
    }

    v130 = v16;
    v131 = v8;
    v75 = v19;
    v116 = 0x8000000100431EF0;
    v117 = 0x8000000100429670;
LABEL_41:
    v129 = 0x8000000100432050;
    v132 = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v132 = 0xD00000000000002CLL;
    v133 = 0x8000000100432070;
    v134 = v75;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v126 = v132;
    v122 = v133;
    v128 = type metadata accessor for KnoxServiceClient.ClientError();
    v77 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    static DispatchQoS.userInitiated.getter();
    v132 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v115 + 104))(v131, v118, v121);
    v78 = v124;
    v79 = v125;
    v80 = v130;
    (*(v124 + 104))(v125, v119, v130);
    static OS_dispatch_queue.global(qos:)();
    (*(v78 + 8))(v79, v80);
    v81 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v82 = v129;
    *(v77 + 16) = 0xD000000000000018;
    *(v77 + 24) = v82;
    v83 = v116;
    *(v77 + 32) = 0xD000000000000064;
    *(v77 + 40) = v83;
    *(v77 + 56) = 0;
    *(v77 + 48) = 85;
    v84 = v122;
    *(v77 + 64) = v126;
    *(v77 + 72) = v84;
    *(v77 + 80) = 0;
    *(v77 + 88) = v81;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v85 = v77;
    swift_willThrow();
LABEL_52:
    AAHeaderDestroy(header);
  }

  else
  {
    v126 = 0x8000000100431E70;
    v122 = 0x8000000100429EB0;
    v128 = 0x8000000100431EB0;
    v129 = type metadata accessor for KnoxServiceClient.ClientError();
    v66 = swift_allocObject();
    v131 = v8;
    v67 = v66;
    v119 = sub_10001AA40(0, &qword_1004A7840);
    v120 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v132 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v123 = v14;
    v130 = v2;
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v6 + 104))(v131, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
    v68 = v124;
    v69 = v125;
    v70 = v130;
    (*(v124 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v130);
    static OS_dispatch_queue.global(qos:)();
    (*(v68 + 8))(v69, v70);
    v71 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v67 + 16) = 0xD00000000000003ALL;
    *(v67 + 24) = v126;
    *(v67 + 32) = 0xD00000000000005DLL;
    v72 = v122;
    *(v67 + 56) = 0;
    *(v67 + 40) = v72;
    *(v67 + 48) = 220;
    v73 = v128;
    *(v67 + 64) = 0xD00000000000001ALL;
    *(v67 + 72) = v73;
    *(v67 + 80) = 0;
    *(v67 + 88) = v71;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v74 = v67;
    swift_willThrow();
  }

  return v128;
}

uint64_t sub_1000D63F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ArchiveFlags();
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v77 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArchiveCompression();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilePath();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v82 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS.QoSClass();
  v88 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v84 = *(v11 - 8);
  v85 = v11;
  __chkstk_darwin(v11);
  v86 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v83 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 fileExistsAtPath:v20];

  if (v21)
  {
    v82 = 0x8000000100429EB0;
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v89 = 0xD000000000000027;
    v90 = 0x8000000100431E40;
    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);

    v79 = v90;
    v80 = v89;
    v81 = type metadata accessor for KnoxServiceClient.ClientError();
    v23 = swift_allocObject();
    v77 = sub_10001AA40(0, &qword_1004A7840);
    v78 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v89 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v25 = v87;
    v24 = v88;
    v26 = v91;
    (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v24 + 8))(v25, v26);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v23 + 16) = 0x293A5F2874696E69;
    *(v23 + 24) = 0xE800000000000000;
    v28 = v82;
    *(v23 + 32) = 0xD00000000000005DLL;
    *(v23 + 40) = v28;
    *(v23 + 56) = 10;
    v29 = 516;
LABEL_9:
    *(v23 + 48) = v29;
    v50 = v79;
    *(v23 + 64) = v80;
    *(v23 + 72) = v50;
    *(v23 + 80) = 0;
    *(v23 + 88) = v27;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v51 = v23;
    return swift_willThrow();
  }

  v72 = v13;
  v73 = v17;
  v30 = [v18 defaultManager];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 createFileAtPath:v31 contents:0 attributes:0];

  if (!v32)
  {
    v82 = 0x8000000100429EB0;
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v89 = 0xD000000000000020;
    v90 = 0x8000000100431D80;
    v45._countAndFlagsBits = a1;
    v45._object = a2;
    String.append(_:)(v45);

    v79 = v90;
    v80 = v89;
    v81 = type metadata accessor for KnoxServiceClient.ClientError();
    v23 = swift_allocObject();
    v77 = sub_10001AA40(0, &qword_1004A7840);
    v78 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v89 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v46 = v87;
    v47 = v88;
    v48 = v91;
    (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v46, v48);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v23 + 16) = 0x293A5F2874696E69;
    *(v23 + 24) = 0xE800000000000000;
    v49 = v82;
    *(v23 + 32) = 0xD00000000000005DLL;
    *(v23 + 40) = v49;
    *(v23 + 56) = 10;
    v29 = 522;
    goto LABEL_9;
  }

  FilePath.init(_:)();
  type metadata accessor for ArchiveByteStream();
  v33 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (v33)
  {
    v71 = v33;

    v34 = v74;
    static ArchiveCompression.lzfse.getter();
    v89 = &_swiftEmptyArrayStorage;
    v35 = sub_1000D7BFC(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
    v36 = sub_1000039E8(&qword_1004A6FA0);
    sub_10000E720(&qword_1004A6FA8, &qword_1004A6FA0);
    v37 = v77;
    v70[0] = v36;
    v38 = v79;
    v70[1] = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)();

    v40 = *(v78 + 1);
    v40(v37, v38);
    (*(v75 + 8))(v34, v76);
    if (v39)
    {
      v41 = v71;
      type metadata accessor for ArchiveStream();
      v42 = v38;
      v89 = &_swiftEmptyArrayStorage;

      dispatch thunk of SetAlgebra.init<A>(_:)();
      v43 = static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)();

      v40(v37, v42);
      if (v43)
      {
        v80[1](v82, v81);
        return v41;
      }

      static os_log_type_t.error.getter();
      sub_10001AA40(0, &qword_1004A7380);
      v67 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v68 = type metadata accessor for ArchiveError();
      sub_1000D7BFC(&qword_1004A9D18, &type metadata accessor for ArchiveError);
      swift_allocError();
      (*(*(v68 - 8) + 104))(v69, enum case for ArchiveError.ioError(_:), v68);
      swift_willThrow();
      v80[1](v82, v81);
    }

    else
    {
      v77 = 0x8000000100429EB0;
      v78 = 0x8000000100431DE0;
      v79 = type metadata accessor for KnoxServiceClient.ClientError();
      v59 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v76 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v89 = &_swiftEmptyArrayStorage;
      sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v84 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
      v60 = v87;
      v61 = v88;
      v62 = v91;
      (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v91);
      static OS_dispatch_queue.global(qos:)();
      (*(v61 + 8))(v60, v62);
      v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v59 + 16) = 0x293A5F2874696E69;
      *(v59 + 24) = 0xE800000000000000;
      v64 = v77;
      *(v59 + 32) = 0xD00000000000005DLL;
      *(v59 + 40) = v64;
      *(v59 + 56) = 0;
      *(v59 + 48) = 547;
      v65 = v78;
      *(v59 + 64) = 0xD00000000000002CLL;
      *(v59 + 72) = v65;
      *(v59 + 80) = 0;
      *(v59 + 88) = v63;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v66 = v59;
      swift_willThrow();
      v80[1](v82, v81);
    }
  }

  else
  {
    v77 = 0x8000000100429EB0;
    v78 = 0x8000000100431DB0;
    v79 = type metadata accessor for KnoxServiceClient.ClientError();
    v52 = swift_allocObject();
    v75 = sub_10001AA40(0, &qword_1004A7840);
    v76 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v89 = &_swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v84 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
    v53 = v87;
    v54 = v88;
    v55 = v91;
    (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v91);
    static OS_dispatch_queue.global(qos:)();
    (*(v54 + 8))(v53, v55);
    v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v52 + 16) = 0x293A5F2874696E69;
    *(v52 + 24) = 0xE800000000000000;
    v57 = v77;
    *(v52 + 32) = 0xD00000000000005DLL;
    *(v52 + 40) = v57;
    *(v52 + 56) = 0;
    *(v52 + 48) = 535;
    *(v52 + 64) = 0xD000000000000025;
    *(v52 + 72) = v78;
    *(v52 + 80) = 0;
    *(v52 + 88) = v56;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v58 = v52;
    swift_willThrow();
    return (v80[1])(v82, v81);
  }
}

void *sub_1000D7558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v31 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  result = AARangeInputStreamOpen(a1, a2);
  if (!result)
  {
    v26 = 0x8000000100431D30;
    v25 = 0x8000000100429EB0;
    v27 = 0x8000000100431D50;
    v29 = 0;
    v28 = type metadata accessor for KnoxServiceClient.ClientError();
    v14 = swift_allocObject();
    v23 = sub_10001AA40(0, &qword_1004A7840);
    v24 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v33 = &_swiftEmptyArrayStorage;
    v21 = sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    v22 = v4;
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v30 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
    v15 = v22;
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v22);
    static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v7, v15);
    v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v17 = v26;
    *(v14 + 16) = 0xD00000000000001ELL;
    *(v14 + 24) = v17;
    v18 = v25;
    *(v14 + 32) = 0xD00000000000005DLL;
    *(v14 + 40) = v18;
    *(v14 + 56) = 0;
    *(v14 + 48) = 498;
    v19 = v27;
    *(v14 + 64) = 0xD000000000000023;
    *(v14 + 72) = v19;
    *(v14 + 80) = 0;
    *(v14 + 88) = v16;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v20 = v14;
    swift_willThrow();
    return v29;
  }

  return result;
}

uint64_t sub_1000D79A8()
{
  v0 = type metadata accessor for ArchiveHeader.FieldKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A9D10);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ArchiveHeader.Field();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArchiveHeader.FieldKey.init(_:)();
  dispatch thunk of ArchiveHeader.field(forKey:)();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100013F2C(v6, &qword_1004A9D10);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1000D1CC8();
    v14 = v13;
    (*(v8 + 8))(v10, v7);
    if (v14)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000D7BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D7C44()
{
  result = qword_1004A9D20;
  if (!qword_1004A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9D20);
  }

  return result;
}

uint64_t *AEADecryptAndExtractAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  memset(&v34, 0, sizeof(v34));
  if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 804, 115, 0, "Invalid/missing directory: %s", v16, v17, a1);
    v21 = 0;
    v19 = 0;
  }

  else
  {
    v18 = malloc(0x9C8uLL);
    v19 = v18;
    if (v18)
    {
      memset_s(v18, 0x9C8uLL, 0, 0x9C8uLL);
      v20 = malloc(0x38uLL);
      v21 = v20;
      if (v20)
      {
        memset_s(v20, 0x38uLL, 0, 0x38uLL);
        *v19 = a3;
        *(v19 + 8) = a4;
        *(v19 + 16) = a6;
        *(v19 + 24) = a5;
        *(v19 + 2128) = a7;
        *(v19 + 2136) = a8;
        *(v19 + 2120) = a7 >> 62;
        if (a2)
        {
          *(v19 + 2296) = AAByteRangeClone(a2);
        }

        if (realpath_DARWIN_EXTSN(a1, (v19 + 72)))
        {
          if ((sub_1000F4680((v19 + 1096), 0x400uLL, (v19 + 72), ".tmp_decrypt") & 0x80000000) != 0)
          {
            v33 = v19 + 72;
            v25 = "Path too long: %s";
            v26 = 822;
          }

          else if (stat((v19 + 1096), &v34) || (v34.st_mode & 0xF000) == 0x4000)
          {
            if (pthread_mutex_init((v19 + 2320), 0))
            {
              v24 = *__error();
              v25 = "pthread_mutex_init";
              v26 = 824;
LABEL_24:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", v26, 115, v24, v25, v22, v23, v33);
              goto LABEL_14;
            }

            if (pthread_mutex_init((v19 + 2408), 0))
            {
              v24 = *__error();
              v25 = "pthread_mutex_init";
              v26 = 825;
              goto LABEL_24;
            }

            v31 = AEADecryptAsyncStreamOpen(v19, sub_1000D8080, sub_1000D8AB8, sub_1000D8D44, a7, a8);
            *(v19 + 48) = v31;
            if (v31)
            {
              v32 = AAExtractArchiveOutputStreamOpen(a1, v19, sub_1000D8FFC, a7, a8);
              *(v19 + 64) = v32;
              if (v32)
              {
                *v21 = v19;
                v21[1] = sub_1000D9280;
                v21[4] = sub_1000D9444;
                v21[2] = sub_1000D9448;
                v21[3] = sub_1000D94DC;
                return v21;
              }

              v25 = "creating extract stream";
              v26 = 832;
            }

            else
            {
              v25 = "creating decrypt stream";
              v26 = 830;
            }
          }

          else
          {
            v33 = v19 + 72;
            v25 = "Invalid tmp dir: %s";
            v26 = 823;
          }
        }

        else
        {
          v33 = a1;
          v25 = "Invalid directory: %s";
          v26 = 821;
        }

        v24 = 0;
        goto LABEL_24;
      }

      v24 = *__error();
      v25 = "malloc";
      v26 = 810;
      goto LABEL_24;
    }

    v28 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 808, 115, *v28, "malloc", v29, v30, v33);
    v21 = 0;
  }

LABEL_14:
  sub_1000D9280(v19);
  free(v21);
  return 0;
}

uint64_t sub_1000D8080(uint64_t a1, AEAContext context)
{
  memset(&v81, 0, sizeof(v81));
  v4 = *(a1 + 8);
  if (v4 && (v4(*a1, context) & 0x80000000) != 0)
  {
    v10 = "Client context callback returned an error";
    v11 = 459;
    goto LABEL_38;
  }

  if (*(a1 + 2140))
  {
    *(a1 + 2144) = AEAContextGetFieldUInt(context, 0xDu);
    FieldUInt = AEAContextGetFieldUInt(context, 4u);
    *(a1 + 2152) = FieldUInt;
    v8 = FieldUInt + *(a1 + 2144) - 1;
    v9 = v8 / FieldUInt;
    if (v8 / FieldUInt >= 0xFFFFFFFF)
    {
      v10 = "Too many segments";
      v11 = 470;
LABEL_38:
      v14 = 0;
      goto LABEL_39;
    }

    *(a1 + 2384) = v9;
    if (FieldUInt > v8)
    {
      goto LABEL_8;
    }

    v15 = calloc(v9, 0x10uLL);
    *(a1 + 2392) = v15;
    if (!v15)
    {
      v14 = *__error();
      v10 = "malloc";
      v11 = 476;
      goto LABEL_39;
    }

    v16 = (*(a1 + 2384) + 1);
    *(a1 + 2160) = 0;
    *(a1 + 2164) = v16;
    v17 = calloc(v16, 4uLL);
    *(a1 + 2168) = v17;
    if (v17)
    {
      if (pthread_mutex_init((a1 + 2176), 0))
      {
        v21 = "SharedArrayInit: pthread_mutex_init failed\n";
        v22 = 56;
      }

      else
      {
        if (!pthread_cond_init((a1 + 2240), 0))
        {
          if (AASharedBufferPipeOpen((a1 + 32), (a1 + 40), *(a1 + 2152)) < 0)
          {
            v10 = "AASharedBufferPipeOpen";
            v11 = 482;
            goto LABEL_38;
          }

          v39 = AADecodeArchiveInputStreamOpen(*(a1 + 40), 0, 0, *(a1 + 2128) | 0x100, *(a1 + 2136));
          *(a1 + 56) = v39;
          if (!v39)
          {
            v10 = "open decoder stream";
            v11 = 486;
            goto LABEL_38;
          }

          if ((sub_1000E766C((a1 + 2488), sub_1000D9584, a1, 0) & 0x80000000) != 0)
          {
            v10 = "createThread";
            v11 = 489;
            goto LABEL_38;
          }

          if ((sub_1000E766C((a1 + 2496), sub_1000D98D4, a1, 0) & 0x80000000) != 0)
          {
            v10 = "createThread";
            v11 = 490;
            goto LABEL_38;
          }

LABEL_8:
          if (stat((a1 + 1096), &v81))
          {
            if (mkdir((a1 + 1096), 0x1C0u))
            {
              v14 = *__error();
              LOBYTE(v77) = a1 + 72;
              v10 = "mkdir: %s";
              v11 = 500;
LABEL_39:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", v11, 115, v14, v10, v5, v6, v77);
              v12 = 0;
LABEL_40:
              v13 = 0xFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          else if ((v81.st_mode & 0xF000) != 0x4000)
          {
            LOBYTE(v77) = a1 + 72;
            v10 = "Not a directory: %s";
            v11 = 496;
            goto LABEL_38;
          }

          buf_size = 0;
          memset(&buf, 0, 128);
          memset(__s2, 0, sizeof(__s2));
          if (AEAContextGetFieldBlob(context, 0x12u, 0, 0x80uLL, &buf, &buf_size) < 0)
          {
            v10 = "getting archive identifier";
            v11 = 511;
            goto LABEL_38;
          }

          if ((sub_1000F4680(__str, 0x400uLL, (a1 + 1096), "archive_id") & 0x80000000) != 0)
          {
            LOBYTE(v77) = a1 + 72;
            v10 = "Name too long: %s";
            v11 = 513;
            goto LABEL_38;
          }

          if (stat(__str, &v81))
          {
            if ((sub_1000F5188(__str, &buf, buf_size) & 0x80000000) != 0)
            {
              v77 = __str;
              v10 = "storing archive id: %s";
              v11 = 529;
              goto LABEL_38;
            }
          }

          else
          {
            if ((v81.st_mode & 0xF000) != 0x8000 || v81.st_size != buf_size)
            {
              v10 = "Archive identifier size mismatch when resuming";
              v11 = 517;
              goto LABEL_38;
            }

            v36 = open(__str, 0);
            if (v36 < 0)
            {
              v14 = *__error();
              v77 = __str;
              v10 = "open: %s";
              v11 = 519;
              goto LABEL_39;
            }

            v37 = v36;
            v38 = read(v36, __s2, buf_size);
            close(v37);
            if (v38 != buf_size || memcmp(&buf, __s2, v38))
            {
              v10 = "Archive identifier value mismatch when resuming";
              v11 = 523;
              goto LABEL_38;
            }
          }

          v23 = *(a1 + 2296);
          if (!v23)
          {
            v40 = AAByteRangeCreate();
            *(a1 + 2296) = v40;
            if (!v40)
            {
              v10 = "AAByteRangeCreate";
              v11 = 537;
              goto LABEL_38;
            }

            if ((AAByteRangeAdd(v40, 0, *(a1 + 2144), v41, v42, v43, v5, v6) & 0x80000000) != 0)
            {
              v10 = "AAByteRangeAdd";
              v11 = 538;
              goto LABEL_38;
            }

            v23 = *(a1 + 2296);
          }

          v24 = AAByteRangeSizeAtOffset(v23, 0x7FFFFFFFFFFFFFFFLL);
          *(a1 + 2304) = v24 - AAByteRangeSizeAtOffset(v23, 0x8000000000000000);
          v25 = sub_1000D9948(a1);
          if (v25)
          {
            v12 = v25;
            *__str = 0;
            *&buf.st_dev = 0;
            v26 = AAByteRangeFirst(v25, 0, __str, &buf);
            if ((v26 & 0x8000000000000000) == 0)
            {
              v29 = v26;
              while (1)
              {
                v30 = *__str;
                v31 = *&buf.st_dev;
                if (*__str <= *&buf.st_dev)
                {
                  v33 = *(a1 + 2296);
                  v34 = AAByteRangeSizeAtOffset(v33, *&buf.st_dev);
                  v32 = v34 - AAByteRangeSizeAtOffset(v33, v30);
                  v31 = *&buf.st_dev;
                  v30 = *__str;
                }

                else
                {
                  v32 = -1;
                }

                if (v32 < v31 - v30)
                {
                  break;
                }

                v29 = AAByteRangeNext(v12, v29, __str, &buf);
                if (v29 < 0)
                {
                  goto LABEL_30;
                }
              }

              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", 553, 115, 0, "Stored remaining range is not a subset of initial range", v27, v28, v77);
              goto LABEL_40;
            }

LABEL_30:
            AAByteRangeDestroy(*(a1 + 2296));
            *(a1 + 2296) = v12;
          }

          else
          {
            v12 = *(a1 + 2296);
          }

          v44 = AAByteRangeClone(v12);
          *(a1 + 2472) = v44;
          if (!v44)
          {
            v10 = "AAByteRangeClone";
            v11 = 564;
            goto LABEL_38;
          }

          *(a1 + 2400) = -1;
          if (!*(a1 + 2384))
          {
            v13 = 0;
            if (!*(a1 + 2120))
            {
              v12 = 0;
              goto LABEL_41;
            }

            v63 = 0;
            v62 = 0;
            v61 = 0;
            v76 = 0;
            LODWORD(v59) = 0;
            goto LABEL_107;
          }

          v48 = 0;
          v49 = 0;
          while (1)
          {
            v50 = *(a1 + 2152);
            v51 = v50 * v49;
            v52 = v50 * v49 + v50;
            v53 = v52 >= *(a1 + 2144) ? *(a1 + 2144) : v52;
            if (v51 > v53)
            {
              break;
            }

            v55 = *(a1 + 2296);
            v56 = AAByteRangeSizeAtOffset(v55, v53);
            v57 = AAByteRangeSizeAtOffset(v55, v51);
            v54 = *(a1 + 2392);
            if (v56 != v57)
            {
              goto LABEL_71;
            }

            *(v54 + v48) = 3;
            sub_1000D9B04(a1, v49, v58, v45, v46, v47, v5, v6);
LABEL_73:
            ++v49;
            v59 = *(a1 + 2384);
            v48 += 16;
            if (v49 >= v59)
            {
              if (*(a1 + 2120))
              {
                if (v59)
                {
                  v60 = 0;
                  v61 = 0;
                  v62 = 0;
                  v79 = 0;
                  LODWORD(v13) = 0;
                  v63 = 0;
                  while (1)
                  {
                    v64 = *(a1 + 2152);
                    v65 = v64 * v60;
                    v66 = v64 * v60 + v64;
                    v67 = v66 >= *(a1 + 2144) ? *(a1 + 2144) : v66;
                    if (v65 > v67)
                    {
                      break;
                    }

                    v78 = v63;
                    v69 = v61;
                    v70 = v62;
                    v71 = *(a1 + 2296);
                    v72 = AAByteRangeSizeAtOffset(v71, v67);
                    v73 = AAByteRangeSizeAtOffset(v71, v65);
                    v68 = v72 - v73;
                    if (v72 != v73)
                    {
                      v62 = v70;
                      v61 = v69;
                      v63 = v78;
LABEL_84:
                      memset(&buf, 0, sizeof(buf));
                      if (sub_1000D9D38(a1, v60, __str, v45, v46, v47, v5, v6) || stat(__str, &buf))
                      {
                        st_size = 0;
                      }

                      else if ((buf.st_mode & 0xF000) == 0x8000)
                      {
                        st_size = buf.st_size;
                      }

                      else
                      {
                        st_size = 0;
                      }

                      v63 += v68;
                      LODWORD(v13) = v13 + 1;
                      v62 = v62 - v65 + v67;
                      if (st_size)
                      {
                        v75 = v79 + 1;
                      }

                      else
                      {
                        v75 = v79;
                      }

                      v79 = v75;
                      v61 += st_size;
                      goto LABEL_91;
                    }

                    v62 = v70;
                    v61 = v69;
                    v63 = v78;
LABEL_91:
                    ++v60;
                    v59 = *(a1 + 2384);
                    if (v60 >= v59)
                    {
                      v76 = v79;
                      goto LABEL_107;
                    }
                  }

                  v68 = -1;
                  goto LABEL_84;
                }

                v63 = 0;
                LODWORD(v13) = 0;
                v76 = 0;
                v62 = 0;
                v61 = 0;
LABEL_107:
                fprintf(__stderrp, "%12u segments in archive\n", v59);
                fprintf(__stderrp, "%12u segments to process\n", v13);
                fprintf(__stderrp, "%12u segments in cache\n", v76);
                fprintf(__stderrp, "%12u segments to download\n", v13 - v76);
                fprintf(__stderrp, "%12llu bytes in archive\n", *(a1 + 2144));
                fprintf(__stderrp, "%12llu bytes to process\n", v63);
                fprintf(__stderrp, "%12llu segment bytes in cache\n", v61);
                fprintf(__stderrp, "%12llu segment bytes to download\n", v62 - v61);
              }

              v12 = 0;
              v13 = 0;
              goto LABEL_41;
            }
          }

          v54 = *(a1 + 2392);
LABEL_71:
          *(v54 + v48) = 0;
          if (*(a1 + 2400) == -1)
          {
            *(a1 + 2400) = v49;
          }

          goto LABEL_73;
        }

        v21 = "SharedArrayInit: pthread_cond_init failed\n";
        v22 = 57;
      }
    }

    else
    {
      v21 = "SharedArrayInit: malloc failed\n";
      v22 = 55;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v77);
    v10 = "SharedArrayInit";
    v11 = 479;
    goto LABEL_38;
  }

  v12 = 0;
  v13 = 0;
  *(a1 + 2140) = 1;
LABEL_41:
  AAByteRangeDestroy(v12);
  return v13;
}

uint64_t sub_1000D8AB8(uint64_t a1, size_t __size, unint64_t a3, int a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v9 = *(a1 + 2152);
  v10 = a3 / v9;
  if (a3 / v9 * v9 != a3 || v10 >= *(a1 + 2384))
  {
    v34 = a3;
    v14 = "Invalid segment offset: %llu, size: %zu";
    v15 = 639;
    v16 = 0;
    goto LABEL_9;
  }

  if (*(*(a1 + 2392) + 16 * v10) != 3)
  {
    if (__size < 0x2000000001)
    {
      v21 = malloc(__size);
      if (v21)
      {
        v12 = v21;
        if (sub_1000D9B68(a1, v10, v21, __size, v22, v23, v24, v25) < 1 || sub_1000FB1CC(v35, a4, v12, __size, v28, v29, v30, v31) || LODWORD(v35[0]) != a6 || memcmp(v35 + 4, a5, a6))
        {
          sub_1000D9B04(a1, v10, v26, v27, v28, v29, v30, v31);
          v13 = 0;
          goto LABEL_11;
        }

        atomic_fetch_add((a1 + 2288), 1u);
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: cached\n", v10);
        }

        if ((sub_1000D9DE0(a1, v10, __size) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 664, 115, 0, "pushSegmentData failed", v32, v33, v34);
LABEL_10:
        v13 = 0xFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    else
    {
      *__error() = 12;
    }

    v16 = *__error();
    v14 = "malloc";
    v15 = 652;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", v15, 115, v16, v14, a7, a8, v34);
    v12 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 2120) >= 2u)
  {
    fprintf(__stderrp, "Segment %u: not needed\n", v10);
  }

  v12 = 0;
LABEL_7:
  v13 = 1;
LABEL_11:
  free(v12);
  return v13;
}

uint64_t sub_1000D8D44(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2152);
  v10 = a3 / v9;
  if (a3 / v9 * v9 == a3 && v10 < *(a1 + 2384))
  {
    memset(&v33, 0, sizeof(v33));
    if ((sub_1000D9D38(a1, v10, __str, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v24 = "getSegmentFile";
      v25 = 127;
    }

    else
    {
      if (stat(__str, &v33))
      {
        v32 = 0x80;
        v15 = open(__str, 1537);
        if ((v15 & 0x80000000) == 0)
        {
          v16 = v15;
          if (!a2)
          {
LABEL_11:
            close(v16);
            atomic_fetch_add((a1 + 2288), 1u);
            if (*(a1 + 2120) >= 2u)
            {
              fprintf(__stderrp, "Segment %u: stored in cache\n", v10);
            }

            if ((sub_1000D9DE0(a1, v10, a2) & 0x80000000) == 0)
            {
              return 0;
            }

            v27 = "pushSegmentData";
            v28 = 695;
            goto LABEL_21;
          }

          v17 = 0;
          while (1)
          {
            v18 = write(v16, (a4 + v17), a2 - v17);
            if (v18 < 0)
            {
              v29 = *__error();
              v30 = "write";
              v31 = 135;
              goto LABEL_28;
            }

            if (!v18)
            {
              break;
            }

            v17 += v18;
            if (v17 >= a2)
            {
              goto LABEL_11;
            }
          }

          v30 = "write returned 0";
          v31 = 136;
          v29 = 0;
LABEL_28:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v31, 115, v29, v30, v19, v20, 128);
          close(v16);
LABEL_20:
          v27 = "storeTempSegment";
          v28 = 690;
LABEL_21:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", v28, 115, 0, v27, v21, v22, v32);
          return 0xFFFFFFFFLL;
        }

        v26 = *__error();
        v24 = "tmp";
        v25 = 130;
LABEL_19:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v25, 115, v26, v24, v13, v14, v32);
        goto LABEL_20;
      }

      v24 = "segment already in cache";
      v25 = 128;
    }

    v26 = 0;
    goto LABEL_19;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 686, 115, 0, "Invalid segment offset: %llu, size: %zu", a7, a8, a3);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000D8FFC(void *a1, uint64_t a2, uint64_t a3, AAHeader header, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  v12 = a1[3];
  if (!v12 || (v13 = v12(*a1, a2, a3, header), !v13))
  {
    switch(v10)
    {
      case 20:
        v39 = -1;
        value = -1;
        v38 = -1;
        v21.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(header, v21);
        v25 = 0;
        if ((KeyIndex & 0x80000000) == 0)
        {
          FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value);
          v24 = FieldUInt <= 1 ? 1 : FieldUInt;
          if (v24 > 0)
          {
            v25 = 1;
          }
        }

        v26.ikey = 5784649;
        v27 = AAHeaderGetKeyIndex(header, v26);
        if ((v27 & 0x80000000) != 0 || ((v28 = AAHeaderGetFieldUInt(header, v27, &v39), v28 <= 1) ? (v29 = 1) : (v29 = v28), v29 <= 0))
        {
          v25 = 0;
        }

        v30.ikey = 5915721;
        v31 = AAHeaderGetKeyIndex(header, v30);
        if ((v31 & 0x80000000) != 0 || ((v32 = AAHeaderGetFieldUInt(header, v31, &v38), v32 <= 1) ? (v33 = 1) : (v33 = v32), !v25 || v33 <= 0))
        {
          v19 = "Missing IDX,IDZ from archive decoder";
          v20 = 419;
        }

        else
        {
          v34 = AAByteRangeOffsetAtSize(a1[287], v39);
          v35 = AAByteRangeOffsetAtSize(a1[287], v38 + v39);
          if (value != 68 || (sub_1000DA0E8(a1, v34, v35) & 0x80000000) == 0)
          {
            return 0;
          }

          v19 = "retire segment";
          v20 = 428;
        }

        break;
      case 21:
        if (header)
        {
          v15 = *header;
          v16 = *(header + 1);
          v17 = AAByteRangeOffsetAtSize(a1[287], *header);
          v18 = AAByteRangeOffsetAtSize(a1[287], v16 + v15);
          if ((sub_1000DA0E8(a1, v17, v18) & 0x80000000) == 0)
          {
            return 0;
          }

          v19 = "retire segment";
          v20 = 441;
        }

        else
        {
          v19 = "data not expected to be NULL";
          v20 = 432;
        }

        break;
      case 22:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 407, 115, 0, "Extraction failed: %s", a7, a8, v9);
LABEL_37:
        v14 = 0xFFFFFFFFLL;
LABEL_38:
        sub_1000D9CB4(a1);
        return v14;
      default:
        return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", v20, 115, 0, v19, a7, a8, v37);
    goto LABEL_37;
  }

  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  return v14;
}

uint64_t sub_1000D9280(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 2292));
    v3 = v2 == 0;
    if (*(result + 2488))
    {
      sub_1000D9FC0((result + 2160), -1);
      sub_1000E79CC(*(v1 + 2488));
    }

    AAByteStreamClose(*(v1 + 32));
    v4 = *(v1 + 2496);
    if (v4)
    {
      sub_1000E79CC(v4);
    }

    AAByteStreamClose(*(v1 + 40));
    if (AAArchiveStreamClose(*(v1 + 64)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 725, 115, 0, "extract stream reported errors", v5, v6, v11.st_dev);
      v3 = 0;
    }

    if (AAArchiveStreamClose(*(v1 + 56)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 726, 115, 0, "decode stream reported errors", v7, v8, v11.st_dev);
      v3 = 0;
    }

    if ((AAAsyncByteStreamClose(*(v1 + 48)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 727, 115, 0, "decrypt stream reported errors", v9, v10, v11.st_dev);
      v3 = 0;
    }

    pthread_mutex_destroy((v1 + 2320));
    pthread_mutex_destroy((v1 + 2408));
    free(*(v1 + 2392));
    if (*(v1 + 2384) && !pthread_mutex_destroy((v1 + 2176)) && !pthread_cond_destroy((v1 + 2240)))
    {
      free(*(v1 + 2168));
    }

    AAByteRangeDestroy(*(v1 + 2296));
    AAByteRangeDestroy(*(v1 + 2472));
    if (v3)
    {
      memset(&v11, 0, sizeof(v11));
      if (!stat((v1 + 1096), &v11) && (v11.st_mode & 0xF000) == 0x4000)
      {
        sub_1000F6E1C((v1 + 1096));
      }
    }

    free(v1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1000D9448(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = (a1 + 2312);
  if (atomic_load((a1 + 2312)))
  {
    goto LABEL_2;
  }

  result = AAAsyncByteStreamGetRange(*(a1 + 48), a2, a3);
  if (result >= 1)
  {
    if (result == 1 && *a2)
    {
      return 1;
    }

LABEL_2:
    v8 = 0;
    result = 0;
    atomic_compare_exchange_strong(v6, &v8, 1u);
    if (*(a1 + 2400) < *(a1 + 2384))
    {
      return result;
    }

    *a2 = 0;
    *a3 = 0;
    return 1;
  }

  return result;
}

uint64_t AEADecryptAndExtractChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned int a10)
{
  AsyncStreamOpen = AEADecryptAndExtractAsyncStreamOpen(a1, a2, a3, a4, a5, a6, a9 | 0x200000000000000, a10);
  if (AsyncStreamOpen)
  {

    return sub_1000DEB6C(AsyncStreamOpen, a7, a8, a9, a10);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractChunkAsyncStreamOpen", 868, 115, 0, "AEADecryptAndExtractAsyncStreamOpen", v13, v14, v16);
    return 0;
  }
}

uint64_t sub_1000D9584(uint64_t a1)
{
  v2 = *(a1 + 2152);
  if (v2 < 0x2000000001)
  {
    v3 = malloc(v2);
    if (v3)
    {
      v4 = v3;
      while (!pthread_mutex_lock((a1 + 2176)))
      {
        while (1)
        {
          v8 = *(a1 + 2160);
          if (v8)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 2240), (a1 + 2176)))
          {
            v38 = "SharedArrayPop: pthread_cond_wait failed\n";
            v39 = 94;
            goto LABEL_37;
          }
        }

        v9 = v8 - 1;
        *(a1 + 2160) = v9;
        v10 = *(*(a1 + 2168) + 4 * v9);
        if (pthread_mutex_unlock((a1 + 2176)))
        {
          v38 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v39 = 98;
          goto LABEL_37;
        }

        if (v10 == -1)
        {
          goto LABEL_39;
        }

        if (v10 >= *(a1 + 2384))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 338, 115, 0, "Invalid segment index: %u", v6, v7, v10);
          goto LABEL_38;
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: dequeue\n", v10);
        }

        v12 = *(*(a1 + 2392) + 16 * v10 + 8);
        if (sub_1000D9B68(a1, v10, v4, v12, v11, v5, v6, v7) <= 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 344, 115, 0, "loading segment: %u", v13, v14, v10);
          goto LABEL_38;
        }

        v15 = *(a1 + 2152) * v10;
        v42 = 0;
        v43 = 0;
        v16 = AAByteRangeFirst(*(a1 + 2296), v15, &v43, &v42);
        if (v16 < 0)
        {
          v24 = 0;
        }

        else
        {
          v23 = v16;
          v24 = 0;
          v25 = v15 + v12;
          v26 = 1;
          do
          {
            if (v43 <= v15)
            {
              v27 = v15;
            }

            else
            {
              v27 = v43;
            }

            if (v25 >= v42)
            {
              v28 = v42;
            }

            else
            {
              v28 = v25;
            }

            if (v27 >= v28)
            {
              break;
            }

            while (1)
            {
              v29 = AAByteStreamWrite(*(a1 + 32), &v4[v27 - v15], v28 - v27);
              if (v29 < 0)
              {
                break;
              }

              v27 += v29;
              v24 += v29;
              if (v27 >= v28)
              {
                goto LABEL_28;
              }
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 364, 115, 0, "SharedBufferWrite", v30, v31, v40);
            v26 = 0;
LABEL_28:
            v23 = AAByteRangeNext(*(a1 + 2296), v23, &v43, &v42);
          }

          while ((v23 & 0x8000000000000000) == 0);
          if (!v26)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: %zu B processed\n", v10, v24);
        }

        sub_1000D9B04(a1, v10, v17, v18, v19, v20, v21, v22);
        atomic_fetch_add((a1 + 2288), 0xFFFFFFFF);
      }

      v38 = "SharedArrayPop: pthread_mutex_lock failed\n";
      v39 = 91;
LABEL_37:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v39, 0, v38, v5, v6, v7, v40);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 336, 115, 0, "SharedArrayDequeue", v35, v36, v41);
      goto LABEL_38;
    }
  }

  else
  {
    *__error() = 12;
  }

  v32 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 331, 115, *v32, "malloc", v33, v34, v40);
  v4 = 0;
LABEL_38:
  sub_1000D9CB4(a1);
LABEL_39:
  free(v4);
  return a1;
}

uint64_t sub_1000D98D4(uint64_t a1)
{
  if (AAArchiveStreamProcess(*(a1 + 56), *(a1 + 64), 0, 0, *(a1 + 2128), *(a1 + 2136)) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractThread", 389, 115, 0, "AAByteStreamProcess reported an error", v2, v3, v5);
    sub_1000D9CB4(a1);
  }

  return a1;
}

void **sub_1000D9948(uint64_t a1)
{
  bzero(v19, 0x400uLL);
  if ((sub_1000F4680(v19, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 254, 115, 0, "Name too long", v2, v3, v17);
    goto LABEL_9;
  }

  v4 = open(v19, 0);
  if (v4 < 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v8 = AAByteRangeCreate();
  if (v8)
  {
    while (1)
    {
      v9 = read(v5, v18, 0x10uLL);
      if (v9 < 0)
      {
        v15 = *__error();
        v13 = "read";
        v14 = 264;
        goto LABEL_16;
      }

      if (v9 != 16)
      {
        break;
      }

      if ((AAByteRangeAdd(v8, v18[0], v18[1], v10, v11, v12, v6, v7) & 0x80000000) != 0)
      {
        v13 = "AAByteRangeAdd";
        v14 = 267;
        goto LABEL_15;
      }
    }

    if (!v9)
    {
      close(v5);
      return v8;
    }

    v13 = "truncated remaining range file";
    v14 = 266;
  }

  else
  {
    v13 = "AAByteRangeCreate";
    v14 = 259;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", v14, 115, v15, v13, v6, v7, v17);
  close(v5);
LABEL_17:
  AAByteRangeDestroy(v8);
  return 0;
}

uint64_t sub_1000D9B04(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1000D9D38(a1, a2, __str, a4, a5, a6, a7, a8);
  if (!result)
  {
    return unlink(__str);
  }

  return result;
}

uint64_t sub_1000D9B68(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v17, 0, sizeof(v17));
  if ((sub_1000D9D38(a1, a2, __str, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = open(__str, 0, *&v17.st_dev, *&v17.st_uid, *&v17.st_atimespec, *&v17.st_mtimespec, *&v17.st_ctimespec, *&v17.st_birthtimespec);
  if (v10 < 0)
  {
    return 0;
  }

  v11 = v10;
  if (fstat(v10, &v17))
  {
    v12 = 0;
  }

  else if (v17.st_size == a4)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    while (a4 > v13)
    {
      v14 = read(v11, (a3 + v13), a4 - v13);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = 3;
      }

      if (v14 < 0)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v12 = v12;
      }

      v13 += v14 & ~(v14 >> 63);
      if (v14 < 0)
      {
        v15 = 2;
      }

      if (v15)
      {
        if (v15 == 2)
        {
          goto LABEL_24;
        }

        break;
      }
    }

    if (v13 == a4)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

LABEL_24:
  close(v11);
  return v12;
}

void sub_1000D9CB4(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 2292), &v2, 1u);
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      AAArchiveStreamCancel(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      AAArchiveStreamCancel(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      AAAsyncByteStreamCancel(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      AAByteStreamCancel(v7);
    }

    v8 = *(a1 + 40);
    if (v8)
    {

      AAByteStreamCancel(v8);
    }
  }
}

uint64_t sub_1000D9D38(uint64_t a1, unsigned int a2, char *__str, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2384) <= a2)
  {
    v11 = a2;
    v8 = "Invalid segment index: %u";
    v9 = 113;
    goto LABEL_5;
  }

  if (snprintf(__str, 0x400uLL, "%s/%08x", (a1 + 1096), a2) >= 0x400)
  {
    v8 = "Segment file name too long";
    v9 = 115;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", v9, 115, 0, v8, a7, a8, v11);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000D9DE0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2320)))
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 88, 115, *v8, "pthread_mutex_lock", v9, v10, v22);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v12 = *(a1 + 2392);
    if (*(v12 + 16 * a2))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 90, 115, 0, "Invalid segment state", v6, v7, v22);
      v13 = 0;
      v12 = *(a1 + 2392);
    }

    else
    {
      v13 = 1;
    }

    v14 = v12 + 16 * a2;
    *v14 = 1;
    *(v14 + 8) = a3;
    for (i = *(a1 + 2400); i < *(a1 + 2384); *(a1 + 2400) = i)
    {
      v16 = *(*(a1 + 2392) + 16 * i);
      if (v16 == 1)
      {
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: in queue for processing\n", i);
          i = *(a1 + 2400);
        }

        if ((sub_1000D9FC0((a1 + 2160), i) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 101, 115, 0, "SharedArrayEnqueue", v17, v18, v22);
          v13 = 0;
        }
      }

      else if (!v16)
      {
        break;
      }

      i = *(a1 + 2400) + 1;
    }

    if (pthread_mutex_unlock((a1 + 2320)))
    {
      v19 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 106, 115, *v19, "pthread_mutex_unlock", v20, v21, v22);
      v13 = 0;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t sub_1000D9FC0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2408)))
  {
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 290, 115, *v11, "pthread_mutex_lock", v12, v13, v55);
    return 0xFFFFFFFFLL;
  }

  if ((AAByteRangeSub(*(a1 + 2472), a2, a3, v6, v7, v8, v9, v10) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 293, 115, 0, "AAByteRangeSub", v15, v16, v55);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1000F4248();
  if (v18 <= *(a1 + 2480) + 1.0)
  {
    goto LABEL_34;
  }

  v56 = 0;
  v57 = 0;
  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if ((sub_1000F4680(&__from, 0x400uLL, (a1 + 1096), "remaining.tmp") & 0x80000000) != 0)
  {
    v34 = 203;
LABEL_23:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v34, 115, 0, "Name too long", v19, v20, v55);
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  if ((sub_1000F4680(&__to, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    v34 = 204;
    goto LABEL_23;
  }

  v55 = 0x80;
  v21 = open(&__from, 1537);
  if (v21 < 0)
  {
    v46 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 207, 115, v46, "open: %s", v47, v48, &__to);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = calloc(0x4000uLL, 8uLL);
  if (!v23)
  {
    v49 = *__error();
    v50 = "malloc";
    v51 = 210;
LABEL_45:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v51, 115, v49, v50, v29, v30, 128);
    close(v22);
    goto LABEL_25;
  }

  v24 = AAByteRangeFirst(*(a1 + 2472), 0, &v57, &v56);
  if (v24 < 0)
  {
    goto LABEL_19;
  }

  v25 = v24;
  v26 = 0;
  do
  {
    v27 = v56;
    v28 = &v23[8 * v26];
    v26 += 2;
    *v28 = v57;
    *(v28 + 1) = v27;
    if (v26 == 0x4000)
    {
      if (write(v22, v23, 0x20000uLL) != 0x20000)
      {
        v50 = "truncated write";
        v51 = 220;
LABEL_44:
        v49 = 0;
        goto LABEL_45;
      }

      v26 = 0;
    }

    v25 = AAByteRangeNext(*(a1 + 2472), v25, &v57, &v56);
  }

  while ((v25 & 0x8000000000000000) == 0);
  if (v26 && write(v22, v23, 8 * v26) != 8 * v26)
  {
    v50 = "truncated write";
    v51 = 229;
    goto LABEL_44;
  }

LABEL_19:
  close(v22);
  rename(&__from, &__to, v31);
  if ((v32 & 0x80000000) == 0)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v52 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 235, 115, *v52, "rename: %s", v53, v54, &__to);
LABEL_25:
  v33 = 1;
LABEL_26:
  if (__from.__pn_.__r_.__value_.__s.__data_[0])
  {
    unlink(&__from);
  }

  free(v23);
  if (v33)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 300, 115, 0, "store remaining range", v35, v36, v55);
    v17 = 0;
  }

  if (*(a1 + 16))
  {
    v37 = *(a1 + 2304);
    v38 = *(a1 + 2472);
    v39 = AAByteRangeSizeAtOffset(v38, 0x7FFFFFFFFFFFFFFFLL);
    v40 = AAByteRangeSizeAtOffset(v38, 0x8000000000000000);
    if (((*(a1 + 16))(*a1, ((v37 - v39 + v40) * 100.0) / v37) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 301, 115, 0, "User cancelled operation", v41, v42, v55);
      v17 = 0;
    }
  }

  *(a1 + 2480) = v18;
LABEL_34:
  if (pthread_mutex_unlock((a1 + 2408)))
  {
    v43 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 305, 115, *v43, "pthread_mutex_unlock", v44, v45, v55);
    v17 = 0;
  }

  if (v17)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

ssize_t sub_1000DA58C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    memmove(*(a1 + 32), (*(a1 + 32) + v2), *(a1 + 48) - v2);
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 48) - v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  if (!*(a1 + 1128))
  {
    while (!(v3 >> 18))
    {
      result = AAByteStreamRead(*(a1 + 8), (*(a1 + 32) + v3), 0x40000 - v3);
      if (!result)
      {
        *(a1 + 1128) = 1;
        return result;
      }

      if (result < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamRefillBuffer", 38, 61, 0, "istream read error", v5, v6, v7);
        return 0xFFFFFFFFLL;
      }

      v3 = *(a1 + 48) + result;
      *(a1 + 48) = v3;
      if (*(a1 + 1128))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DA66C(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[5];
  while (1)
  {
    if (a1[6] - v7 >= a3 - v6)
    {
      v8 = a3 - v6;
    }

    else
    {
      v8 = a1[6] - v7;
    }

    if (v8)
    {
      if (a2)
      {
        memcpy((a2 + v6), (a1[4] + v7), v8);
        v7 = a1[5];
      }

      v7 += v8;
      a1[5] = v7;
      a1[142] += v8;
      goto LABEL_12;
    }

    if ((sub_1000DA58C(a1) & 0x80000000) != 0)
    {
      v12 = "Refill buffer failed";
      v13 = 69;
      goto LABEL_17;
    }

    v7 = a1[5];
    if (v7 == a1[6])
    {
      break;
    }

LABEL_12:
    v6 += v8;
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v12 = "No more data";
  v13 = 70;
LABEL_17:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", v13, 61, 0, v12, v9, v10, v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA780(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  v9 = a2 - v8;
  if (a2 <= v8)
  {
    return 0;
  }

  if (a1[10] >= a2)
  {
    if ((sub_1000DA66C(a1, a1[8] + v8, v9) & 0x80000000) == 0)
    {
      result = 0;
      a1[9] += v9;
      return result;
    }

    v11 = "read error";
    v12 = 82;
  }

  else
  {
    v11 = "invalid header size";
    v12 = 80;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", v12, 61, 0, v11, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72) > 5uLL)
  {
    if ((sub_1000DA780(a1, *(*(a1 + 64) + 4), a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v8 = "truncated stream";
      v9 = 96;
    }

    else
    {
      if ((sub_1000EB968(*(a1 + 88), *(a1 + 64), *(a1 + 72)) & 0x80000000) == 0)
      {
        return 0;
      }

      v8 = "corrupted archive header";
      v9 = 99;
    }
  }

  else
  {
    v8 = "Invalid decoder state";
    v9 = 92;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", v9, 61, 0, v8, a7, a8, v12);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA8F8(void *a1, unint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1[147];
  if (v12 && (v13 = a1[149], *v13 < a2))
  {
    if (v12 == 1)
    {
      v14 = 1;
    }

    else
    {
      v28 = 0;
      v29 = a1[147];
      v14 = v29;
      do
      {
        v30 = v28 + (v29 >> 1);
        if (v13[4 * v30] >= a2)
        {
          v14 = v30;
        }

        else
        {
          v28 = v30;
        }

        v29 = v14 - v28;
      }

      while ((v14 - v28) > 1);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14 == v12 || (v15 = a1[149], *(v15 + 32 * v14) != a2))
  {
    v16 = a1[148];
    if (v12 >= v16)
    {
      v17 = 2 * v16;
      if (!v16)
      {
        v17 = 32;
      }

      a1[148] = v17;
      if ((32 * v17) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_31:
        a1[149] = 0;
        v31 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 132, 61, *v31, "malloc", v32, v33, v34);
        a1[147] = 0;
        a1[148] = 0;
        return -1;
      }

      v18 = a1[149];
      v19 = realloc(v18, 32 * v17);
      if (!v19)
      {
        free(v18);
        goto LABEL_31;
      }

      a1[149] = v19;
      v12 = a1[147];
    }

    v20 = v14;
    v21 = v12 - v14;
    if (v21)
    {
      memmove((a1[149] + 32 * v14 + 32), (a1[149] + 32 * v14), 32 * v21);
      v20 = a1[147];
    }

    a1[147] = v20 + 1;
    v15 = a1[149];
    v22 = v15 + 32 * v14;
    *v22 = a2;
    *(v22 + 24) = v20;
    *(v22 + 8) = vdupq_n_s64(a3);
  }

  v23 = (v15 + 32 * v14);
  if (v23[1] == a3)
  {
    v24 = v23[2] - 1;
    v23[2] = v24;
    if (v24 < a3)
    {
      *a4 = v24 == 0;
      return v23[3];
    }

    v26 = "invalid nlink";
    v27 = 151;
  }

  else
  {
    v26 = "nlink mismatch";
    v27 = 149;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", v27, 61, 0, v26, a7, a8, v34);
  return -1;
}

AAArchiveStream AADecodeArchiveInputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v9 = malloc(0x4C0uLL);
  v10 = v9;
  if (v9)
  {
    memset_s(v9, 0x4C0uLL, 0, 0x4C0uLL);
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x38uLL, 0, 0x38uLL), !v10))
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 374;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "AADecodeArchiveInputStreamOpen", v20, 61, v18, v19, v14, v15, v22);
    free(v12);
    sub_1000DB430(v10);
    return 0;
  }

  v13 = malloc(0x40000uLL);
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = v13;
  if (!v13)
  {
    v19 = "init buffer";
    v20 = 379;
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  *(v10 + 1) = stream;
  *(v10 + 14) = -1;
  *(v10 + 72) = xmmword_10037BFB0;
  v16 = malloc(0x10000uLL);
  *(v10 + 8) = v16;
  if (!v16)
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 385;
    goto LABEL_15;
  }

  *(v10 + 11) = AAHeaderCreate();
  v17 = AAHeaderCreate();
  *(v10 + 12) = v17;
  if (!*(v10 + 11) || !v17)
  {
    v19 = "allocating header";
    v20 = 388;
    goto LABEL_14;
  }

  *v10 = flags;
  *(v10 + 2) = msg_proc;
  *(v10 + 3) = msg_data;
  *(v10 + 151) = sub_1000F4248();
  v12[5] = sub_1000DAD00;
  v12[6] = sub_1000DB22C;
  v12[2] = sub_1000DB414;
  *v12 = v10;
  v12[1] = sub_1000DB430;
  return v12;
}

uint64_t sub_1000DAD00(uint64_t a1, AAHeader *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1132))
  {
    return 0xFFFFFFFFLL;
  }

  v56[7] = v8;
  v56[8] = v9;
  v55 = 0;
  v56[0] = 0;
  v12 = *(a1 + 1136);
  v13 = *(a1 + 1144);
  if (v13 >= v12)
  {
    if ((sub_1000DA66C(a1, 0, v13 - v12) & 0x80000000) != 0)
    {
      v14 = "truncated archive";
      v15 = 180;
      goto LABEL_66;
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    if (v21 == v22)
    {
      if (*(a1 + 1128))
      {
LABEL_11:
        if (*(a1 + 1128))
        {
          return 0;
        }

LABEL_12:
        v23 = *(a1 + 1136);
        *(a1 + 104) = 0;
        *(a1 + 72) = 0;
        if ((sub_1000DA780(a1, 6uLL, v17, v18, v19, v20, a7, a8) & 0x80000000) != 0)
        {
          v14 = "truncated stream";
          v15 = 195;
          goto LABEL_66;
        }

        v29 = *(a1 + 56);
        if (v29 < 0)
        {
          v30 = *(a1 + 64);
          if (*v30 == 825246017 || *v30 == 826360153)
          {
            *(a1 + 56) = 0;
            goto LABEL_32;
          }

          if (*v30 == 925906736 && *(v30 + 2) == 12592)
          {
            v36 = 1;
          }

          else
          {
            v32 = *v30;
            v33 = *(v30 + 2);
            if (v32 != 925906736 || v33 != 14128)
            {
              v14 = "Invalid/non-supported archive stream";
              v15 = 212;
              goto LABEL_66;
            }

            v36 = 2;
          }

          *(a1 + 56) = v36;
        }

        else if ((v29 - 1) >= 2)
        {
          if (v29 == 3)
          {
            v35 = sub_1000F709C(a1, v56);
            goto LABEL_39;
          }

          if (v29)
          {
            v14 = "Invalid archive stream";
            v15 = 226;
            goto LABEL_66;
          }

LABEL_32:
          v35 = sub_1000DA838(a1, v24, v25, v26, v27, v28, a7, a8);
LABEL_39:
          if (v35 < 0)
          {
            v14 = "parsing entry header";
            v15 = 228;
            goto LABEL_66;
          }

          if (!v35)
          {
            v37 = *(a1 + 72);
            v38 = *(a1 + 88);
            v39.ikey = 5265748;
            KeyIndex = AAHeaderGetKeyIndex(v38, v39);
            if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v38, KeyIndex, &v55), FieldUInt <= 1) ? (v42 = 1) : (v42 = FieldUInt), v42 <= 0))
            {
              v14 = "Invalid entry: no TYP field";
              v15 = 235;
              goto LABEL_66;
            }

            if (v55 != 77)
            {
              v43 = *(a1 + 88);
              v44.ikey = 5521744;
              v45 = AAHeaderGetKeyIndex(v43, v44);
              if ((v45 & 0x80000000) == 0)
              {
                FieldString = AAHeaderGetFieldString(v43, v45, 0x400uLL, (a1 + 104), 0);
                v47 = FieldString <= 1 ? 1 : FieldString;
                if (v47 >= 1)
                {
                  v48 = strlen((a1 + 104));
                  if (!sub_1000F4A20((a1 + 104), v48))
                  {
                    v14 = "Invalid entry path";
                    v15 = 241;
                    goto LABEL_66;
                  }
                }
              }
            }

            v49 = *(a1 + 16);
            if (v49 && *(a1 + 104) && (v49(*(a1 + 24), 60, a1 + 104, 0) & 0x80000000) != 0)
            {
              v14 = "callback cancel";
              v15 = 248;
              goto LABEL_66;
            }

            if ((sub_1000ED290(a1 + 1152, *(a1 + 88)) & 0x80000000) != 0)
            {
              v14 = "initializing blob array";
              v15 = 252;
              goto LABEL_66;
            }

            *(a1 + 1168) = 0;
            if (!*(a1 + 56))
            {
              v56[0] = sub_1000ED59C((a1 + 1152));
            }

            if (a2)
            {
              v50 = *a2;
              if (*a2)
              {
                if (AAHeaderAssign(*a2, *(a1 + 88)) < 0)
                {
                  v14 = "header init";
                  v15 = 272;
                  goto LABEL_66;
                }
              }

              else
              {
                v50 = AAHeaderClone(*(a1 + 88));
                if (!v50)
                {
                  v14 = "header init";
                  v15 = 268;
                  goto LABEL_66;
                }
              }

              if (*(a1 + 1))
              {
                v51.ikey = 5784649;
                if (AAHeaderGetKeyIndex(v50, v51) < 0)
                {
                  v52.ikey = 5915721;
                  if (AAHeaderGetKeyIndex(v50, v52) < 0)
                  {
                    v53.ikey = 5784649;
                    if (AAHeaderSetFieldUInt(v50, 0xFFFFFFFF, v53, v23) < 0 || (v54.ikey = 5915721, AAHeaderSetFieldUInt(v50, 0xFFFFFFFF, v54, v56[0] + v37) < 0))
                    {
                      v14 = "inserting IDX,IDZ fields";
                      v15 = 281;
                      goto LABEL_66;
                    }
                  }
                }
              }

              *a2 = v50;
            }

            ++*(a1 + 1200);
            *(a1 + 1144) = v37 + v23 + v56[0];
            return 1;
          }

          return 0;
        }

        v35 = sub_1000DD61C(a1, v56);
        goto LABEL_39;
      }

      if ((sub_1000DA58C(a1) & 0x80000000) != 0)
      {
        v14 = "refill buffer";
        v15 = 185;
        goto LABEL_66;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
    }

    if (v21 != v22)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = "invalid state";
  v15 = 179;
LABEL_66:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", v15, 61, 0, v14, a7, a8, v55);
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DB22C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v9 = *(a1 + 1168);
    if (v9 >= *(a1 + 1152))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v13 = *(a1 + 1160) + 24 * v9;
      v14 = *(v13 + 8);
      if (((*v13 ^ a2) & 0xFFFFFF) == 0)
      {
        if (v14)
        {
          break;
        }
      }

      if ((sub_1000DA66C(a1, 0, v14) & 0x80000000) != 0)
      {
        v15 = "reading blob data";
        v16 = 307;
        goto LABEL_9;
      }

      *(v13 + 8) = 0;
      v9 = *(a1 + 1168) + 1;
      *(a1 + 1168) = v9;
      if (v9 >= *(a1 + 1152))
      {
        goto LABEL_7;
      }
    }

    if (v14 < a4)
    {
LABEL_7:
      v15 = "invalid read blob request";
      v16 = 312;
    }

    else if ((sub_1000DA66C(a1, a3, a4) & 0x80000000) != 0)
    {
      v15 = "read error";
      v16 = 315;
    }

    else
    {
      v18 = *(v13 + 8);
      v19 = v18 - a4;
      *(v13 + 8) = v18 - a4;
      if (v18 == a4)
      {
        ++*(a1 + 1168);
      }

      v20 = *(a1 + 16);
      if (!v20)
      {
        return 0;
      }

      if (!*(a1 + 104))
      {
        return 0;
      }

      if ((*v13 & 0xFFFFFF) != 0x544144)
      {
        return 0;
      }

      v21 = *(v13 + 16) - v19;
      v23[0] = *(v13 + 16);
      v23[1] = v21;
      if ((v20(*(a1 + 24), 60, a1 + 104, v23) & 0x80000000) == 0)
      {
        return 0;
      }

      v15 = "callback cancel";
      v16 = 328;
    }

LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", v16, 61, 0, v15, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1000DB414(uint64_t a1)
{
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }
}

uint64_t sub_1000DB430(char *a1)
{
  if (a1)
  {
    free(*(a1 + 4));
    free(*(a1 + 8));
    free(*(a1 + 149));
    free(*(a1 + 145));
    memset_s(a1 + 1152, 0x10uLL, 0, 0x10uLL);
    AAHeaderDestroy(*(a1 + 11));
    AAHeaderDestroy(*(a1 + 12));
    if (*a1 >> 62)
    {
      v2 = sub_1000F4248() - *(a1 + 151);
      fwrite("Decode archive\n", 0xFuLL, 1uLL, __stderrp);
      fprintf(__stderrp, "%12llu entries in archive\n", *(a1 + 150));
      fprintf(__stderrp, "%12llu bytes in archive (uncompressed)\n", *(a1 + 142));
      fprintf(__stderrp, "%12.0f MB/s\n", *(a1 + 142) * 0.000000953674316 / v2);
      fprintf(__stderrp, "%12.2f decoding time (s)\n", v2);
    }

    free(a1);
  }

  return 0;
}

uint64_t sub_1000DB560(char *__s, unsigned int *a2)
{
  if (__s)
  {
    memset_s(__s, 0xD0uLL, 0, 0xD0uLL);
  }

  if (!sub_1000FACC8(*a2))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "aeaCryptoInit", 1400, 94, 0, "Invalid profile", v4, v5, v11);
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *a2;
  *__s = 32;
  *(__s + 9) = sub_1000DB86C;
  *(__s + 1) = 0x2000000020;
  *(__s + 8) = sub_1000DB9C4;
  *(__s + 13) = 32;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          *(__s + 1) = 80;
          *(__s + 11) = sub_1000DBB60;
          *(__s + 12) = sub_1000DBF28;
          *(__s + 10) = sub_1000DC2E4;
          *(__s + 14) = a2[2];
        }

        goto LABEL_21;
      }

      v6 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = sub_1000DBB60;
    *(__s + 12) = sub_1000DBF28;
    *(__s + 12) = 65;
    *(__s + 13) = sub_1000DC4E4;
    *(__s + 14) = sub_1000DC864;
    *(__s + 2) = 0x4100000061;
    *(__s + 6) = 32;
    v8 = sub_1000DCBAC;
    v9 = 160;
  }

  else
  {
    if (!v7)
    {
      *(__s + 1) = 32;
      *(__s + 11) = sub_1000DBA0C;
      *(__s + 12) = sub_1000DBAC0;
      *(__s + 15) = sub_1000DCD54;
      *(__s + 16) = sub_1000DCDD0;
      *(__s + 17) = sub_1000DD03C;
      *(__s + 28) = xmmword_10037BFD0;
      *(__s + 44) = 0x2000000080;
LABEL_20:
      *(__s + 21) = sub_1000DCBAC;
      goto LABEL_21;
    }

    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v6 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = sub_1000DBB60;
    v8 = sub_1000DBF28;
    v9 = 96;
  }

  *&__s[v9] = v8;
  if (v6 == 1)
  {
    *(__s + 15) = sub_1000DCD54;
    *(__s + 16) = sub_1000DCDD0;
    *(__s + 17) = sub_1000DD03C;
    *(__s + 28) = xmmword_10037BFD0;
    *(__s + 11) = 160;
    *(__s + 18) = sub_1000DBB60;
    *(__s + 19) = sub_1000DBF28;
    goto LABEL_20;
  }

LABEL_21:
  result = 0;
  *(__s + 22) = sub_1000DD2AC;
  *(__s + 23) = sub_1000DD338;
  *(__s + 24) = sub_1000DD364;
  *(__s + 25) = sub_1000DCD54;
  return result;
}

uint64_t sub_1000DB86C(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 257) < 0xFFFFFFFFFFFFFF00 || *a3 == 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 518, 94, 0, "Invalid KDF parameters", a7, a8, v18);
    return 0xFFFFFFFFLL;
  }

  if (CCKDFParametersCreateHkdf())
  {
    v15 = "CCKDFParametersCreateHkdf";
    v16 = 529;
  }

  else
  {
    if (!CCDeriveKey())
    {
      v17 = 0;
      goto LABEL_12;
    }

    v15 = "CCDeriveKey";
    v16 = 535;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", v16, 94, 0, v15, v13, v14, v18);
  v17 = 1;
LABEL_12:
  *a1 = a2;
  memset_s(a1 + a2 + 4, 256 - a2, 0, 256 - a2);
  if (v17)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return (v17 << 31 >> 31);
}

uint64_t sub_1000DB9C4(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "RNG", 218, 94, 0, "generate random bytes", v3, v4, vars0);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000DBA0C(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  if (*a4 == 32)
  {
    if ((sub_1000DD3DC(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    v10 = "HMAC derivation";
    v11 = 904;
  }

  else
  {
    v10 = "AEAD invalid sizes";
    v11 = 901;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", v11, 94, 0, v10, a7, a8, v12);
  if (a3)
  {
    memset_s(a3, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DBAC0(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  if (*a4 == 32 && *a3 == 32)
  {
    if ((sub_1000DD504(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "HMAC verification";
    v10 = 924;
  }

  else
  {
    v9 = "AEAD invalid sizes";
    v10 = 921;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", v10, 94, 0, v9, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DBB60(char *a1, size_t a2, _DWORD *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  memset(v34, 0, sizeof(v34));
  memset(v31, 0, sizeof(v31));
  memset(v27, 0, sizeof(v27));
  if (*a4 != 80)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 946, 94, 0, "AEAD invalid sizes", a7, a8, tweakLength);
    return 0xFFFFFFFFLL;
  }

  v29 = *(a4 + 4);
  v30 = *(a4 + 20);
  __s = 32;
  memset_s(v31, 0xE0uLL, 0, 0xE0uLL);
  keyLength_4[0] = *(a4 + 36);
  keyLength_4[1] = *(a4 + 52);
  keyLength = 32;
  memset_s(v34, 0xE0uLL, 0, 0xE0uLL);
  v26 = *(a4 + 68);
  v25 = 16;
  memset_s(v27, 0xF0uLL, 0, 0xF0uLL);
  dataOutMoved = 0;
  cryptorRef = 0;
  v16 = CCCryptorCreateWithMode(0, 4u, 0, 0, &v26, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
  if (!cryptorRef || v16)
  {
    v19 = "Cryptor creation";
    v20 = 968;
LABEL_17:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", v20, 94, 0, v19, v14, v15, tweakLengtha);
    v17 = 1;
    goto LABEL_18;
  }

  if (CCCryptorGetOutputLength(cryptorRef, a2, 1) != a2)
  {
    v19 = "AEAD can't operate in-place";
    v20 = 971;
    goto LABEL_17;
  }

  if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
  {
    v19 = "Encryption";
    v20 = 975;
    goto LABEL_17;
  }

  if (CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) || dataOutMoved)
  {
    v19 = "Encryption";
    v20 = 977;
    goto LABEL_17;
  }

  if ((sub_1000DD3DC(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
  {
    v19 = "HMAC";
    v20 = 980;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_18:
  CCCryptorRelease(cryptorRef);
  memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v25, 0x104uLL, 0, 0x104uLL);
  if (a3)
  {
    if (v17)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }
  }

  return (v17 << 31 >> 31);
}

uint64_t sub_1000DBF28(char *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  memset(v36, 0, sizeof(v36));
  memset(v33, 0, sizeof(v33));
  memset(v29, 0, sizeof(v29));
  if (*a4 == 80)
  {
    v31 = *(a4 + 4);
    v32 = *(a4 + 20);
    __s = 32;
    memset_s(v33, 0xE0uLL, 0, 0xE0uLL);
    keyLength_4[0] = *(a4 + 36);
    keyLength_4[1] = *(a4 + 52);
    keyLength = 32;
    memset_s(v36, 0xE0uLL, 0, 0xE0uLL);
    v28 = *(a4 + 68);
    v27 = 16;
    memset_s(v29, 0xF0uLL, 0, 0xF0uLL);
    if ((sub_1000DD504(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1057, 94, 0, "HMAC", v14, v15, tweakLength);
      v19 = 0xFFFFFFFFLL;
LABEL_19:
      memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      memset_s(&v27, 0x104uLL, 0, 0x104uLL);
      return v19;
    }

    dataOutMoved = 0;
    cryptorRef = 0;
    v18 = CCCryptorCreateWithMode(1u, 4u, 0, 0, &v28, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
    if (!cryptorRef || v18)
    {
      v20 = "Cryptor creation";
      v21 = 1074;
    }

    else if (CCCryptorGetOutputLength(cryptorRef, a2, 1) == a2)
    {
      if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
      {
        v20 = "Encryption";
        v21 = 1081;
      }

      else
      {
        if (!CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) && !dataOutMoved)
        {
          v19 = 0;
LABEL_18:
          CCCryptorRelease(cryptorRef);
          goto LABEL_19;
        }

        v20 = "Encryption";
        v21 = 1083;
      }
    }

    else
    {
      v20 = "AEAD can't operate in-place";
      v21 = 1077;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", v21, 94, 0, v20, v16, v17, tweakLengtha);
    v19 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1049, 94, 0, "AEAD invalid sizes", a7, a8, tweakLength);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DC2E4(_DWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0x14 || !*a5)
  {
    v12 = "Invalid password/salt";
    v13 = 823;
LABEL_8:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", v13, 94, 0, v12, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 4)
  {
    v12 = "Invalid hardness parameter";
    v13 = 832;
    goto LABEL_8;
  }

  v9 = ccscrypt_storage_size();
  if ((v9 & 0x8000000000000000) != 0)
  {
    v15 = "Invalid scrypt parameters";
    v16 = 842;
    v17 = 0;
LABEL_16:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", v16, 94, v17, v15, v10, v11, v22);
    v19 = 0;
LABEL_17:
    free(v19);
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  if (v9 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    v17 = *__error();
    v15 = "malloc";
    v16 = 844;
    goto LABEL_16;
  }

  v18 = malloc(v9);
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  if (ccscrypt())
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 846, 94, 0, "scrypt", v20, v21, 32);
    goto LABEL_17;
  }

  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  free(v19);
  return 0;
}

uint64_t sub_1000DC4E4(void *a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 != 65)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 581, 94, 0, "ECDHE_P256_Sender invalid sizes", a7, a8, v28);
    return 0xFFFFFFFFLL;
  }

  v10 = ccec_cp_256();
  v11 = (32 * *v10) | 0x10;
  v12 = 24 * *v10 + 16;
  if (v11 < 0x2000000001)
  {
    v13 = malloc(v11);
  }

  else
  {
    v13 = 0;
    *__error() = 12;
  }

  if (v12 < 0x2000000001)
  {
    v17 = malloc(v12);
    v14 = v17;
    v15 = v13 == 0;
    v16 = v17 == 0;
    if (v13)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      if (ccec_x963_import_pub())
      {
        v25 = "importing public key";
        v26 = 602;
      }

      else
      {
        ccrng();
        v25 = "RNG lookup";
        v26 = 606;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", v26, 94, 0, v25, v23, v24, 32);
      v16 = 0;
LABEL_21:
      memset_s(v13, v11, 0, v11);
      free(v13);
      if (!v16)
      {
        memset_s(v14, v12, 0, v12);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = 0;
    *__error() = 12;
    v15 = v13 == 0;
    v16 = 1;
  }

  v19 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 599, 94, *v19, "malloc", v20, v21, 32);
  if (!v15)
  {
    goto LABEL_21;
  }

  free(v13);
  if (!v16)
  {
    memset_s(v14, v12, 0, v12);
  }

LABEL_23:
  free(v14);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DC864(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 != 97 || *a2 != 65)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 704, 94, 0, "ECDHE_P256_Recipient invalid sizes", a7, a8, v27);
    return 0xFFFFFFFFLL;
  }

  v9 = ccec_cp_256();
  v10 = 24 * *v9 + 16;
  v11 = (32 * *v9) | 0x10;
  if (v10 < 0x2000000001)
  {
    v12 = malloc(v10);
  }

  else
  {
    v12 = 0;
    *__error() = 12;
  }

  if (v11 < 0x2000000001)
  {
    v17 = malloc(v11);
    v14 = v17;
    v15 = v12 == 0;
    v16 = v17 == 0;
    if (v12)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      if (ccec_x963_import_priv())
      {
        v25 = "importing full key";
        v26 = 725;
      }

      else if (ccec_x963_import_pub())
      {
        v25 = "importing pub key";
        v26 = 728;
      }

      else
      {
        ccrng();
        v25 = "RNG lookup";
        v26 = 732;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", v26, 94, 0, v25, v23, v24, 32);
      v16 = 0;
LABEL_25:
      memset_s(v12, v10, 0, v10);
      free(v12);
      if (!v16)
      {
        memset_s(v14, v11, 0, v11);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v14 = 0;
    *__error() = 12;
    v15 = v12 == 0;
    v16 = 1;
  }

  v19 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 722, 94, *v19, "malloc", v20, v21, 32);
  if (!v15)
  {
    goto LABEL_25;
  }

  free(v12);
  if (!v16)
  {
    memset_s(v14, v11, 0, v11);
  }

LABEL_27:
  free(v14);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DCBAC(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != 97)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1346, 94, 0, "invalid private key size", a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  v9 = ccec_cp_256();
  v10 = (32 * *v9) | 0x10;
  if (v10 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_9;
  }

  v11 = malloc((32 * *v9) | 0x10);
  if (!v11)
  {
LABEL_9:
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1356, 94, *v15, "malloc", v16, v17, v19);
    if (a1)
    {
LABEL_10:
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (ccec_x963_import_priv())
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1359, 94, 0, "importing private key", v13, v14, v19);
    memset_s(v12, v10, 0, v10);
    free(v12);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  ccec_x963_export();
  *a1 = 65;
  memset_s(a1 + 69, 0xBFuLL, 0, 0xBFuLL);
  memset_s(v12, v10, 0, v10);
  free(v12);
  return 0;
}

uint64_t sub_1000DCD54(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  return 0;
}

uint64_t sub_1000DCDD0(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != 97)
  {
    v10 = "invalid private key size";
    v11 = 1154;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", v11, 94, 0, v10, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  if (*a3 != 32)
  {
    v10 = "invalid digest size";
    v11 = 1155;
    goto LABEL_7;
  }

  v9 = (32 * *ccec_cp_256()) | 0x10;
  if (v9 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_12;
  }

  v13 = malloc(v9);
  if (!v13)
  {
LABEL_12:
    v19 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1167, 94, *v19, "malloc", v20, v21, v22);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_18;
  }

  v14 = v13;
  if (ccec_x963_import_priv())
  {
    v17 = "importing private key";
    v18 = 1170;
  }

  else
  {
    v22 = 0x80;
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    ccrng();
    v17 = "RNG lookup";
    v18 = 1176;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", v18, 94, 0, v17, v15, v16, v22);
  memset_s(v14, v9, 0, v9);
  free(v14);
  if (a1)
  {
LABEL_18:
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DD03C(unsigned int *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 128)
  {
    if (*a2 == 65)
    {
      if (*a3 == 32)
      {
        v9 = 24 * *ccec_cp_256() + 16;
        if (v9 < 0x2000000001)
        {
          v13 = malloc(v9);
          if (v13)
          {
            v14 = v13;
            if (ccec_x963_import_pub())
            {
              v17 = "importing public key";
              v18 = 1267;
            }

            else
            {
              v22 = *a1;
              if (v22 >= 2 && *(a1 + 4) == 48)
              {
                if (*(a1 + 5) + 2 <= v22)
                {
                  ccec_verify();
                  v17 = "Signature verification";
                  v18 = 1275;
                }

                else
                {
                  v17 = "Invalid signature";
                  v18 = 1272;
                }
              }

              else
              {
                v17 = "Invalid signature";
                v18 = 1270;
              }
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", v18, 94, 0, v17, v15, v16, v23);
            memset_s(v14, v9, 0, v9);
            goto LABEL_21;
          }
        }

        else
        {
          *__error() = 12;
        }

        v19 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1264, 94, *v19, "malloc", v20, v21, v23);
        v14 = 0;
LABEL_21:
        free(v14);
        return 0xFFFFFFFFLL;
      }

      v10 = "invalid digest size";
      v11 = 1253;
    }

    else
    {
      v10 = "Invalid public key size";
      v11 = 1252;
    }
  }

  else
  {
    v10 = "Invalid signature size";
    v11 = 1251;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", v11, 94, 0, v10, a7, a8, v23);
  return 0xFFFFFFFFLL;
}

CCHmacContext *sub_1000DD2AC(_DWORD *a1)
{
  if (*a1 != 32)
  {
    return 0;
  }

  v2 = malloc(0x180uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacInit(v2, 2u, a1 + 1, 0x20uLL);
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HMACInit_SHA256", 379, 94, *v4, "malloc", v5, v6, v8);
  }

  return v3;
}

uint64_t sub_1000DD338(CCHmacContext *a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacUpdate(a1, a2, a3);
  return 0;
}

uint64_t sub_1000DD364(CCHmacContext *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacFinal(a1, a2 + 1);
  *a2 = 32;
  memset_s(a2 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(a1, 0x180uLL, 0, 0x180uLL);
  free(a1);
  return 0;
}

uint64_t sub_1000DD3DC(_DWORD *a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (*a2 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v6;
  v17 = v7;
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 2u, a2 + 1, 0x20uLL);
  CCHmacUpdate(&ctx, a5, a6);
  CCHmacUpdate(&ctx, a3, a4);
  data = a6;
  CCHmacUpdate(&ctx, &data, 8uLL);
  CCHmacFinal(&ctx, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t sub_1000DD504(uint64_t a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = *a1 != 32 || *a2 != 32;
  v16 = 0;
  memset(__s, 0, sizeof(__s));
  v8 = sub_1000DD3DC(__s, a2, a3, a4, a5, a6) < 0;
  v13 = *(&__s[1] + 4);
  v14 = *(__s + 4);
  v11 = *(a1 + 20);
  v12 = *(a1 + 4);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v9 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v14, v12), vceqq_s64(v13, v11))));
  v9.i16[0] = vmaxv_u16(v9);
  return ((v9.i32[0] | v8 | v7) << 31 >> 31);
}

uint64_t sub_1000DD61C(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[8];
  v5 = *v4;
  v6 = *(v4 + 2);
  v8 = v5 != 925906736 || v6 != 12592;
  value.tv_sec = 0;
  value.tv_nsec = 0;
  v9 = *a1;
  if (AAHeaderClear(a1[11]) < 0)
  {
    v22 = "clear header";
    v23 = 67;
LABEL_96:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", v23, 113, 0, v22, v14, v15, v124);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v16 = 76;
  }

  else
  {
    v16 = 110;
  }

  if ((sub_1000DA780(a1, v16, v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v22 = "truncated stream";
    v23 = 73;
    goto LABEL_96;
  }

  v17 = a1[8];
  if (v8)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v19 = *(v17 + 59 + v18++) & 7 | (8 * v19);
    }

    while (v18 != 4);
    for (i = 0; i != 2; ++i)
    {
      v21 = *(v17 + 63 + i) & 7 | (8 * v19);
      v19 = v21;
    }
  }

  else
  {
    v24 = 0;
    v21 = 0;
    do
    {
      v25 = *(v17 + 94 + v24);
      v21 *= 16;
      v26 = v25 - 48;
      if ((v25 - 48) <= 0x36)
      {
        if (((1 << v26) & 0x3FF) != 0)
        {
          v21 = v21 + v25 - 48;
        }

        else if (((1 << v26) & 0x7E0000) != 0)
        {
          v21 = v21 + v25 - 55;
        }

        else if (((1 << v26) & 0x7E000000000000) != 0)
        {
          v21 = v21 + v25 - 87;
        }
      }

      ++v24;
    }

    while (v24 != 8);
  }

  if (v8)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v28 = *(v17 + 65 + v27++) & 7 | (8 * v28);
    }

    while (v27 != 8);
    for (j = 0; j != 3; ++j)
    {
      v30 = *(v17 + 73 + j) & 7 | (8 * v28);
      v28 = v30;
    }
  }

  else
  {
    v31 = 0;
    v30 = 0;
    do
    {
      v32 = *(v17 + 54 + v31);
      v30 *= 16;
      v33 = v32 - 48;
      if ((v32 - 48) <= 0x36)
      {
        if (((1 << v33) & 0x3FF) != 0)
        {
          v30 = v30 + v32 - 48;
        }

        else if (((1 << v33) & 0x7E0000) != 0)
        {
          v30 = v30 + v32 - 55;
        }

        else if (((1 << v33) & 0x7E000000000000) != 0)
        {
          v30 = v30 + v32 - 87;
        }
      }

      ++v31;
    }

    while (v31 != 8);
  }

  if (v8)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v35 = *(v17 + 18 + v34++) & 7 | (8 * v35);
    }

    while (v34 != 4);
    v36 = 0;
    v37 = v17 + 22;
    do
    {
      v38 = *(v37 + v36++) & 7 | (8 * v35);
      v35 = v38;
    }

    while (v36 != 2);
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v40 = v17 + 14;
    do
    {
      v41 = *(v40 + v39);
      v38 *= 16;
      v42 = v41 - 48;
      if ((v41 - 48) <= 0x36)
      {
        if (((1 << v42) & 0x3FF) != 0)
        {
          v38 = v38 + v41 - 48;
        }

        else if (((1 << v42) & 0x7E0000) != 0)
        {
          v38 = v38 + v41 - 55;
        }

        else if (((1 << v42) & 0x7E000000000000) != 0)
        {
          v38 = v38 + v41 - 87;
        }
      }

      ++v39;
    }

    while (v39 != 8);
  }

  v43 = sub_10010AB90(v38);
  if (v21 >= 0x10000)
  {
    v22 = "invalid c_namesize";
    v23 = 82;
    goto LABEL_96;
  }

  v48 = v43;
  if (v8)
  {
    v49 = v21 + v16;
  }

  else
  {
    v49 = (v21 + v16 + 3) & 0x3FFFC;
  }

  v50 = v49;
  if (v43 == 76)
  {
    if (v30 >= 0x10000)
    {
      v22 = "invalid c_filesize";
      v23 = 89;
      goto LABEL_96;
    }

    if (v8)
    {
      v50 = v30 + v49;
    }

    else
    {
      v50 = (v30 + v49 + 3) & 0xFFFFC;
    }
  }

  if ((sub_1000DA780(a1, v50, v44, v45, v46, v47, v14, v15) & 0x80000000) != 0)
  {
    v22 = "truncated stream";
    v23 = 95;
    goto LABEL_96;
  }

  if (v48)
  {
    v51 = 0;
  }

  else
  {
    v51 = v30 == 0;
  }

  if (v51 && v21 == 11)
  {
    v61 = (a1[8] + v16);
    v62 = *v61;
    v63 = *(v61 + 3);
    if (v62 == 0x2152454C49415254 && v63 == 0x21212152454C49)
    {
      return 1;
    }

LABEL_95:
    v22 = "invalid cpio header";
    v23 = 101;
    goto LABEL_96;
  }

  if (!v48)
  {
    goto LABEL_95;
  }

  v124 = a1[8];
  v53.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v53, v48) < 0)
  {
    v22 = "creating header";
    v23 = 106;
    goto LABEL_96;
  }

  v54.ikey = 5521744;
  if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v54, (a1[8] + v16), v21) < 0)
  {
    v22 = "creating header";
    v23 = 109;
    goto LABEL_96;
  }

  if (v48 == 76)
  {
    v55.ikey = 4935244;
    if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v55, (a1[8] + v49), v30) < 0)
    {
      v22 = "creating header";
      v23 = 114;
      goto LABEL_96;
    }
  }

  v56.ikey = 4476749;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v56, v38 & 0xFFF) < 0)
  {
    v22 = "creating header";
    v23 = 118;
    goto LABEL_96;
  }

  if (v8)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v58 = *(v124 + 24 + v57++) & 7 | (8 * v58);
    }

    while (v57 != 4);
    for (k = 0; k != 2; ++k)
    {
      v60 = *(v124 + 28 + k) & 7 | (8 * v58);
      v58 = v60;
    }
  }

  else
  {
    v66 = 0;
    v60 = 0;
    do
    {
      v67 = *(v124 + 22 + v66);
      v60 *= 16;
      v68 = v67 - 48;
      if ((v67 - 48) <= 0x36)
      {
        if (((1 << v68) & 0x3FF) != 0)
        {
          v60 = v60 + v67 - 48;
        }

        else if (((1 << v68) & 0x7E0000) != 0)
        {
          v60 = v60 + v67 - 55;
        }

        else if (((1 << v68) & 0x7E000000000000) != 0)
        {
          v60 = v60 + v67 - 87;
        }
      }

      ++v66;
    }

    while (v66 != 8);
  }

  v69.ikey = 4475221;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v69, v60) < 0)
  {
    v22 = "creating header";
    v23 = 122;
    goto LABEL_96;
  }

  v70 = v124 + 30;
  if (v8)
  {
    v71 = 0;
    v72 = 0;
    do
    {
      v72 = *(v70 + v71++) & 7 | (8 * v72);
    }

    while (v71 != 4);
    for (m = 0; m != 2; ++m)
    {
      v74 = *(v124 + 34 + m) & 7 | (8 * v72);
      v72 = v74;
    }
  }

  else
  {
    v75 = 0;
    v74 = 0;
    do
    {
      v76 = *(v70 + v75);
      v74 *= 16;
      v77 = v76 - 48;
      if ((v76 - 48) <= 0x36)
      {
        if (((1 << v77) & 0x3FF) != 0)
        {
          v74 = v74 + v76 - 48;
        }

        else if (((1 << v77) & 0x7E0000) != 0)
        {
          v74 = v74 + v76 - 55;
        }

        else if (((1 << v77) & 0x7E000000000000) != 0)
        {
          v74 = v74 + v76 - 87;
        }
      }

      ++v75;
    }

    while (v75 != 8);
  }

  v78.ikey = 4475207;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v78, v74) < 0)
  {
    v22 = "creating header";
    v23 = 126;
    goto LABEL_96;
  }

  if (v8)
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v80 = *(v124 + 48 + v79++) & 7 | (8 * v80);
    }

    while (v79 != 8);
    for (n = 0; n != 3; ++n)
    {
      v82 = *(v124 + 56 + n) & 7 | (8 * v80);
      v80 = v82;
    }
  }

  else
  {
    v83 = 0;
    v82 = 0;
    do
    {
      v84 = *(v124 + 46 + v83);
      v82 *= 16;
      v85 = v84 - 48;
      if ((v84 - 48) <= 0x36)
      {
        if (((1 << v85) & 0x3FF) != 0)
        {
          v82 = v82 + v84 - 48;
        }

        else if (((1 << v85) & 0x7E0000) != 0)
        {
          v82 = v82 + v84 - 55;
        }

        else if (((1 << v85) & 0x7E000000000000) != 0)
        {
          v82 = v82 + v84 - 87;
        }
      }

      ++v83;
    }

    while (v83 != 8);
  }

  value.tv_sec = v82;
  value.tv_nsec = 0;
  v86.ikey = 5067853;
  if (AAHeaderSetFieldTimespec(a1[11], 0xFFFFFFFF, v86, &value) < 0)
  {
    v22 = "creating header";
    v23 = 131;
    goto LABEL_96;
  }

  if (v8)
  {
    v87 = 0;
    v88 = 0;
    v89 = v124;
    do
    {
      v88 = *(v124 + 12 + v87++) & 7 | (8 * v88);
    }

    while (v87 != 4);
    for (ii = 0; ii != 2; ++ii)
    {
      v91 = *(v124 + 16 + ii) & 7 | (8 * v88);
      v88 = v91;
    }
  }

  else
  {
    v92 = 0;
    v91 = 0;
    v89 = v124;
    do
    {
      v93 = *(v124 + 6 + v92);
      v91 *= 16;
      v94 = v93 - 48;
      if ((v93 - 48) <= 0x36)
      {
        if (((1 << v94) & 0x3FF) != 0)
        {
          v91 = v91 + v93 - 48;
        }

        else if (((1 << v94) & 0x7E0000) != 0)
        {
          v91 = v91 + v93 - 55;
        }

        else if (((1 << v94) & 0x7E000000000000) != 0)
        {
          v91 = v91 + v93 - 87;
        }
      }

      ++v92;
    }

    while (v92 != 8);
  }

  if (v8)
  {
    v95 = 0;
    v96 = 0;
    do
    {
      v96 = *(v89 + 6 + v95++) & 7 | (8 * v96);
    }

    while (v95 != 4);
    for (jj = 0; jj != 2; ++jj)
    {
      v98 = *(v89 + 10 + jj) & 7 | (8 * v96);
      v96 = v98;
    }

    v91 |= v98 << 18;
    v99.ikey = 5197385;
    if ((AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v99, v91) & 0x80000000) == 0)
    {
      v100 = 0;
      v101 = 0;
      do
      {
        v101 = *(v124 + 36 + v100++) & 7 | (8 * v101);
      }

      while (v100 != 4);
      for (kk = 0; kk != 2; ++kk)
      {
        v101 = *(v124 + 40 + kk) & 7 | (8 * v101);
      }

      goto LABEL_183;
    }

LABEL_193:
    v22 = "creating header";
    v23 = 145;
    goto LABEL_96;
  }

  v103.ikey = 5197385;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v103, v91) < 0)
  {
    goto LABEL_193;
  }

  v104 = 0;
  v101 = 0;
  do
  {
    v105 = *(v124 + 38 + v104);
    v101 *= 16;
    v106 = v105 - 48;
    if ((v105 - 48) <= 0x36)
    {
      if (((1 << v106) & 0x3FF) != 0)
      {
        v101 = v101 + v105 - 48;
      }

      else if (((1 << v106) & 0x7E0000) != 0)
      {
        v101 = v101 + v105 - 55;
      }

      else if (((1 << v106) & 0x7E000000000000) != 0)
      {
        v101 = v101 + v105 - 87;
      }
    }

    ++v104;
  }

  while (v104 != 8);
LABEL_183:
  v107.ikey = 4934734;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v107, v101) < 0)
  {
    v22 = "creating header";
    v23 = 149;
    goto LABEL_96;
  }

  if ((v9 & 0x8000000000000) != 0 || v101 < 2 || v48 != 70)
  {
    v112 = 0;
    if (v8 || (v48 & 0xFFFFFFFE) != 0x42)
    {
      goto LABEL_217;
    }

    v113 = 0;
    v114 = 0;
    do
    {
      v115 = *(v124 + 78 + v113);
      v114 *= 16;
      v116 = v115 - 48;
      if ((v115 - 48) <= 0x36)
      {
        if (((1 << v116) & 0x3FF) != 0)
        {
          v114 = v114 + v115 - 48;
        }

        else if (((1 << v116) & 0x7E0000) != 0)
        {
          v114 = v114 + v115 - 55;
        }

        else if (((1 << v116) & 0x7E000000000000) != 0)
        {
          v114 = v114 + v115 - 87;
        }
      }

      ++v113;
    }

    while (v113 != 8);
    v117 = 0;
    v118 = 0;
    do
    {
      v119 = *(v124 + 86 + v117);
      v118 *= 16;
      v120 = v119 - 48;
      if ((v119 - 48) <= 0x36)
      {
        if (((1 << v120) & 0x3FF) != 0)
        {
          v118 = v118 + v119 - 48;
        }

        else if (((1 << v120) & 0x7E0000) != 0)
        {
          v118 = v118 + v119 - 55;
        }

        else if (((1 << v120) & 0x7E000000000000) != 0)
        {
          v118 = v118 + v119 - 87;
        }
      }

      ++v117;
    }

    while (v117 != 8);
    v121.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v121, v118 + (v114 << 24)) < 0)
    {
      v22 = "creating header";
      v23 = 173;
      goto LABEL_96;
    }

LABEL_216:
    v112 = 0;
    goto LABEL_217;
  }

  v125 = 0;
  v110 = sub_1000DA8F8(a1, v91, v101, &v125, v108, v109, v14, v15);
  if (v110 == -1)
  {
    v22 = "too many hard links or inconsistent nlink/ino data in archive";
    v23 = 156;
    goto LABEL_96;
  }

  v111.ikey = 4410440;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v111, v110) < 0)
  {
    v22 = "creating header";
    v23 = 157;
    goto LABEL_96;
  }

  if (v8)
  {
    goto LABEL_216;
  }

  v112 = v125 == 0;
  if (!v125 && v30)
  {
    v22 = "invalid newc encoding for hard links";
    v23 = 162;
    goto LABEL_96;
  }

LABEL_217:
  if (v48 != 70 || v112)
  {
    if (v48 != 70)
    {
      result = 0;
      *a2 = 0;
      return result;
    }
  }

  else
  {
    v122.ikey = 5521732;
    if (AAHeaderSetFieldBlob(a1[11], 0xFFFFFFFF, v122, v30) < 0)
    {
      v22 = "creating header";
      v23 = 179;
      goto LABEL_96;
    }
  }

  result = 0;
  v123 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v8)
  {
    v123 = v30;
  }

  *a2 = v123;
  return result;
}

uint64_t sub_1000DE384(void *a1, char *a2, const char *a3)
{
  v55[0] = 0;
  v55[1] = 0;
  v6 = malloc(0x40000uLL);
  if (!v6)
  {
    v26 = *__error();
    v27 = "malloc";
    v28 = 43;
LABEL_28:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", v28, 124, v26, v27, v7, v8, v52);
    v29 = 0;
    v10 = -1;
LABEL_29:
    v30 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((sub_1000F4680(v56, 0x800uLL, a2, a3) & 0x80000000) != 0)
  {
    v52 = a2;
    v27 = "invalid path %s/%s";
    v28 = 46;
    v26 = 0;
    goto LABEL_28;
  }

  v9 = open(v56, 0x200000);
  v10 = v9;
  if (v9 < 0)
  {
    v32 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 50, 124, *v32, "open: %s", v33, v34, v56);
    v29 = 0;
    goto LABEL_29;
  }

  v11 = read(v9, v6, 0x40000uLL);
  if (v11 < 0)
  {
    v15 = 0;
LABEL_35:
    v29 = v15;
    v35 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 56, 124, *v35, "read: %s", v36, v37, v56);
    goto LABEL_29;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v54 = v6;
  v53 = v10;
  while (2)
  {
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v19 = v6[i];
        v16 = v19 + 0x202000202008008DLL * v16 + 0x516929CF586FB3BFLL * *(v55 + v17);
        *(v55 + v17) = v19;
        if (v17 == 15)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        if (v16 >> 52)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 == 0;
        }

        if (!v20)
        {
          if (v14 >= v13)
          {
            if (v13)
            {
              v13 *= 2;
            }

            else
            {
              v13 = 256;
            }

            if (4 * v13 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_38:
              v38 = __error();
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 79, 124, *v38, "malloc", v39, v40, v52);
              v29 = 0;
              v30 = 0xFFFFFFFFLL;
              v10 = v53;
              goto LABEL_30;
            }

            v21 = v15;
            v22 = realloc(v15, 4 * v13);
            if (!v22)
            {
              free(v21);
              v6 = v54;
              goto LABEL_38;
            }

            v15 = v22;
            v6 = v54;
          }

          *(v15 + v14++) = v16;
        }
      }

      v10 = v53;
      v23 = v6;
      v24 = v15;
      v25 = read(v53, v23, 0x40000uLL);
      v15 = v24;
      v6 = v54;
      v12 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v41 = v15;
  qsort(v15, v14, 4uLL, sub_1000DE848);
  if (v14)
  {
    v44 = 0;
    v45 = 0;
    v29 = v41;
    do
    {
      v46 = *(v41 + v44);
      if (!v45 || v46 != *(v41 + v45 - 1))
      {
        *(v41 + v45++) = v46;
      }

      ++v44;
    }

    while (v14 != v44);
    v14 = 4 * v45;
    *a1 = 0;
    if (4 * v45 < 0)
    {
LABEL_66:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 98, 124, 0, "malloc", v42, v43, v52);
      v30 = 0xFFFFFFFFLL;
      goto LABEL_67;
    }

    v47 = a1[1];
    if (v47 < v14)
    {
      do
      {
        while (!v47)
        {
          v47 = 0x4000;
          if (v14 <= 0x4000)
          {
            v47 = 0x4000;
            goto LABEL_62;
          }
        }

        v48 = v47 >> 1;
        if ((v47 & (v47 >> 1)) != 0)
        {
          v48 = v47 & (v47 >> 1);
        }

        v47 += v48;
      }

      while (v47 < v14);
      if (v47 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_65;
      }

LABEL_62:
      v50 = a1[2];
      v51 = realloc(v50, v47);
      if (v51)
      {
        a1[1] = v47;
        a1[2] = v51;
        goto LABEL_55;
      }

      free(v50);
LABEL_65:
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v29 = v41;
      goto LABEL_66;
    }
  }

  else
  {
    *a1 = 0;
LABEL_55:
    v29 = v41;
    if (!v41)
    {
      v49 = a1[2];
      if (v49)
      {
        memset_s((v49 + *a1), v14, 0, v14);
      }

      goto LABEL_57;
    }
  }

  memcpy((a1[2] + *a1), v29, v14);
LABEL_57:
  v30 = 0;
  *a1 += v14;
  v29 = v41;
LABEL_67:
  v6 = v54;
LABEL_30:
  free(v6);
  free(v29);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  return v30;
}

uint64_t sub_1000DE848(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

ssize_t AAArchiveStreamProcess(AAArchiveStream istream, AAArchiveStream ostream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v35 = 0;
  header = 0;
  __s = 0;
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v31 = *__error();
    v29 = "malloc";
    v30 = 24;
LABEL_32:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", v30, 16, v31, v29, v19, v20, v33);
    v12 = -1;
    goto LABEL_33;
  }

  v11 = AAArchiveStreamReadHeader(istream, &header);
  if (v11 < 0)
  {
LABEL_27:
    AAArchiveStreamCancel(ostream);
    v29 = "archive stream read error (header)";
    v30 = 32;
LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  while (v11)
  {
    if (!msg_proc)
    {
      goto LABEL_39;
    }

    v13 = header;
    v14.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v14);
    if ((KeyIndex & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    FieldString = AAHeaderGetFieldString(v13, KeyIndex, 0x400uLL, value, 0);
    v17 = FieldString <= 1 ? 1 : FieldString;
    if (v17 < 1)
    {
      goto LABEL_39;
    }

    v18 = (msg_proc)(msg_data, 50, value, header);
    if (v18 < 0)
    {
      v29 = "callback cancel";
      v30 = 45;
      goto LABEL_31;
    }

    if (!v18)
    {
LABEL_39:
      if ((sub_1000ED290(&__s, header) & 0x80000000) != 0)
      {
        v29 = "capturing non-empty blobs";
        v30 = 55;
        goto LABEL_31;
      }

      if (AAArchiveStreamWriteHeader(ostream, header) < 0)
      {
        AAArchiveStreamCancel(istream);
        v29 = "archive stream write error (header)";
        v30 = 61;
        goto LABEL_31;
      }

      ++v12;
      v21 = __s;
      if (__s)
      {
        v22 = 0;
        while (1)
        {
          v23 = v35 + 24 * v22;
          v24 = *(v23 + 1);
          if (v24)
          {
            break;
          }

LABEL_25:
          if (++v22 >= v21)
          {
            goto LABEL_26;
          }
        }

        while (1)
        {
          if (v24 >= 0x40000)
          {
            v25 = 0x40000;
          }

          else
          {
            v25 = v24;
          }

          v26 = *v23;
          if (AAArchiveStreamReadBlob(istream, v26, v10, v25) < 0)
          {
            AAArchiveStreamCancel(ostream);
            v29 = "archive stream read error (blob)";
            v30 = 75;
            goto LABEL_31;
          }

          v27 = *v23;
          if (AAArchiveStreamWriteBlob(ostream, v27, v10, v25) < 0)
          {
            break;
          }

          v28 = *(v23 + 1);
          v24 = v28 - v25;
          *(v23 + 1) = v28 - v25;
          if (v28 == v25)
          {
            v21 = __s;
            goto LABEL_25;
          }
        }

        AAArchiveStreamCancel(istream);
        v29 = "archive stream write error (blob)";
        v30 = 80;
        goto LABEL_31;
      }
    }

LABEL_26:
    v11 = AAArchiveStreamReadHeader(istream, &header);
    if (v11 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  AAHeaderDestroy(header);
  free(v35);
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  free(v10);
  return v12;
}

uint64_t sub_1000DEB6C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a1;
  if (a1 && a2)
  {
    v10 = malloc(0x10uLL);
    v11 = v10;
    if (v10)
    {
      memset_s(v10, 0x10uLL, 0, 0x10uLL);
      *v11 = v5;
      v15 = AAChunkAsyncStreamOpen(v5, a2, a3, a4 | 0x200000000000000, a5, v12, v13, v14);
      *(v11 + 8) = v15;
      if (v15)
      {
        v18 = sub_10010D7B4(v11, sub_1000DED00, ~(a4 >> 55) & 4, 20.0, 1.0);
        if (v18)
        {
          v5 = v18;
          v18[2] = sub_1000DED4C;
          v18[3] = sub_1000DED54;
          v18[4] = sub_1000DED5C;
          v18[5] = sub_1000DED64;
          return v5;
        }

        v20 = "async stream alloc";
        v21 = 89;
      }

      else
      {
        v20 = "AAChunkAsyncStreamOpen";
        v21 = 86;
      }

      v19 = 0;
    }

    else
    {
      v19 = *__error();
      v20 = "malloc";
      v21 = 78;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", v21, 145, v19, v20, v16, v17, v23);
    sub_1000DED00(v11);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  return v5;
}

uint64_t (***sub_1000DED00(uint64_t (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    v2 = AAAsyncByteStreamClose(result[1]);
    v3 = AAAsyncByteStreamClose(*v1) | v2;
    free(v1);
    return (v3 >> 31);
  }

  return result;
}

void *sub_1000DED6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_1000F4290();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 266;
LABEL_31:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", v18, 20, v16, v17, v14, v15, v20);
    free(v3);
    sub_1000DF870(v5);
    return 0;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v17 = "allocating buffer";
    v18 = 273;
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (sub_1000DF628(v5, 0xCuLL) < 0)
  {
    v17 = "reading magic";
    v18 = 276;
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = sub_1000DF870;
  v3[2] = sub_1000DF920;
  v3[7] = sub_1000E0078;
  return v3;
}

uint64_t sub_1000DF628(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

size_t sub_1000DF794(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DF870(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    sub_10010F8CC(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

size_t sub_1000DF920(uint64_t a1, uint64_t a2, size_t nbyte, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v10 = nbyte;
  v13 = *(a1 + 72);
  if (v13)
  {

    return sub_10010F9BC(v13, a2, nbyte);
  }

  v14 = *(a1 + 56);
  if (v14 == -1)
  {
    return -1;
  }

  if (!v14)
  {

    return sub_1000DF794(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      if (v10 >= v17)
      {
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = v10;
      }

      memcpy((a2 + v16), *(a1 + 48), v8);
      if ((v8 & 0x8000000000000000) != 0)
      {
        return v8;
      }

      v18 = *(a1 + 32);
      v19 = v18 - v8;
      if (v18 >= v8)
      {
        if (v18 != v8)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v8), v18 - v8);
        }

        *(a1 + 32) = v19;
      }

      v16 += v8;
      v10 -= v8;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v16;
    }

    v21 = *(a1 + 8);
    v20 = *(a1 + 16);
    if (v20 == v21)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v22 = v20 - v21;
    if (v20 == v21)
    {
      goto LABEL_55;
    }

    v8 = 0;
    v23 = *a1;
    do
    {
      if (v21 == v20)
      {
        v24 = v20 + 0x40000;
        if ((v20 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v20 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v20)
            {
              v20 = 0x4000;
              v26 = 0x4000;
              if (v24 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v25 = v20 >> 1;
            if ((v20 & (v20 >> 1)) != 0)
            {
              v25 = v20 & (v20 >> 1);
            }

            v20 += v25;
          }

          while (v20 < v24);
          v26 = v20;
          if (v20 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_165;
          }

LABEL_43:
          v27 = *(a1 + 24);
          v28 = realloc(v27, v26);
          if (v28)
          {
            *(a1 + 16) = v26;
            *(a1 + 24) = v28;
            v21 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v27);
LABEL_165:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v8 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v21 = v20;
      }

      v26 = v20;
LABEL_45:
      if (v26 - v21 >= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v26 - v21;
      }

      v30 = AAByteStreamRead(v23, (*(a1 + 24) + v21), v29);
      if (v30 < 0)
      {
        goto LABEL_151;
      }

      if (!v30)
      {
        break;
      }

      v31 = *(a1 + 8);
      v21 = v31 + v30;
      if (__CFADD__(v31, v30) || (v20 = *(a1 + 16), v21 > v20))
      {
LABEL_151:
        v8 = -1;
LABEL_152:
        v82 = "stream read failed";
        v83 = 144;
        goto LABEL_153;
      }

      *(a1 + 8) = v21;
      v8 += v30;
      v22 -= v30;
    }

    while (v22);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v8)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v21 = *(a1 + 8);
LABEL_57:
    v33 = *(a1 + 24);
    v32 = *(a1 + 32);
    v34 = *(a1 + 40) - v32;
    v35 = (*(a1 + 48) + v32);
    v36 = *(a1 + 56);
    v8 = -1;
    if (v36 <= 2)
    {
      break;
    }

    if (v36 == 3)
    {
      *(a1 + 176) = v33;
      *(a1 + 184) = v21;
      *(a1 + 200) = v35;
      *(a1 + 208) = v34;
      v67 = lzma_code();
      v68 = v67;
      if (v67 <= 0xA && ((1 << v67) & 0x403) != 0)
      {
        v69 = v15;
        v70 = *(a1 + 176);
        v71 = *(a1 + 200);
        v72 = v70 - v33;
        if (v70 != v33)
        {
          v73 = *(a1 + 8);
          v44 = v73 >= v72;
          v74 = v73 - v72;
          if (v44)
          {
            if (v74)
            {
              v90 = v74;
              memmove(*(a1 + 24), (*(a1 + 24) + v72), v74);
              v74 = v90;
            }

            *(a1 + 8) = v74;
          }
        }

        if (v71 != v35)
        {
          v75 = *(a1 + 32);
          v76 = v75 + v71 - v35;
          if (!__CFADD__(v75, v71 - v35) && v76 <= *(a1 + 40))
          {
            *(a1 + 32) = v76;
          }
        }

        if (v71 == v35 && v70 == v33)
        {
          v15 = v69 + 1;
        }

        else
        {
          v15 = 0;
        }

        if (v68 == 1)
        {
          goto LABEL_131;
        }
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload", a7, a8, v86);
      }

      v8 = -1;
      if (v68 <= 0xA && ((1 << v68) & 0x403) != 0)
      {
        goto LABEL_147;
      }

      return v8;
    }

    if (v36 != 4)
    {
      return v8;
    }

    *(a1 + 96) = v33;
    *(a1 + 104) = v21;
    *(a1 + 120) = v35;
    *(a1 + 128) = v34;
    v49 = BZ2_bzDecompress((a1 + 96));
    if (v49 < 0)
    {
      v82 = "decoding bzip2 payload";
      v83 = 178;
      goto LABEL_153;
    }

    v50 = v49;
    v51 = v15;
    v52 = *(a1 + 96);
    v53 = *(a1 + 120);
    v54 = v52 - v33;
    if (v52 != v33)
    {
      v55 = *(a1 + 8);
      v44 = v55 >= v54;
      v56 = v55 - v54;
      if (v44)
      {
        if (v56)
        {
          v88 = v56;
          memmove(*(a1 + 24), (*(a1 + 24) + v54), v56);
          v56 = v88;
        }

        *(a1 + 8) = v56;
      }
    }

    if (v53 != v35)
    {
      v57 = *(a1 + 32);
      v58 = v57 + v53 - v35;
      if (!__CFADD__(v57, v53 - v35) && v58 <= *(a1 + 40))
      {
        *(a1 + 32) = v58;
      }
    }

    if (v53 == v35 && v52 == v33)
    {
      v15 = v51 + 1;
    }

    else
    {
      v15 = 0;
    }

    if (v50 == 4)
    {
      goto LABEL_131;
    }

LABEL_147:
    if (v15 >= 3)
    {
      v84 = "truncated stream";
      v85 = 240;
      goto LABEL_156;
    }

LABEL_148:
    v8 = v16;
    if (!v10)
    {
      return v8;
    }
  }

  if (v36 == 1)
  {
    if (!v21)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_158:
      v82 = "truncated stream header";
      v83 = 208;
      goto LABEL_153;
    }

    if (v21 <= 0xF)
    {
      goto LABEL_158;
    }

    v60 = v33[1];
    v61 = bswap64(*v33);
    v62 = bswap64(v60);
    v63 = *(a1 + 80);
    if (v61 > v63 || v62 > v63)
    {
      v84 = "corrupted stream header";
      v85 = 217;
      goto LABEL_156;
    }

    v89 = v15;
    v65 = v62 + 16;
    if (v62 + 16 > v21)
    {
      v84 = "truncated stream payload";
      v85 = 218;
      goto LABEL_156;
    }

    if (v61 > v34)
    {
      v84 = "unexpected output buffer size";
      v85 = 219;
      goto LABEL_156;
    }

    v66 = *v33;
    if (*v33 == v60)
    {
      memcpy(v35, v33 + 2, v61);
    }

    else if ((*(a1 + 88))(v35, v34, v33 + 2) != v61)
    {
      v84 = "block decompression failed";
      v85 = 229;
LABEL_156:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v85, 20, 0, v84, a7, a8, v86);
      return -1;
    }

    if (v65)
    {
      v78 = *(a1 + 8);
      v79 = v78 - v65;
      if (v78 >= v65)
      {
        if (v78 != v65)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v65), v78 - v65);
        }

        *(a1 + 8) = v79;
      }
    }

    if (v66)
    {
      v80 = *(a1 + 32);
      v44 = __CFADD__(v80, v61);
      v81 = v80 + v61;
      v15 = v89;
      if (!v44 && v81 <= *(a1 + 40))
      {
        *(a1 + 32) = v81;
      }
    }

    else
    {
      v15 = v89;
    }

    goto LABEL_147;
  }

  if (v36 == 2)
  {
    *(a1 + 328) = v33;
    *(a1 + 336) = v21;
    *(a1 + 312) = v35;
    *(a1 + 320) = v34;
    v37 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v37 & 0x80000000) == 0)
    {
      v38 = v37;
      v39 = v15;
      v40 = *(a1 + 336);
      v41 = *(a1 + 320);
      v42 = v21 - v40;
      if (v21 != v40)
      {
        v43 = *(a1 + 8);
        v44 = v43 >= v42;
        v45 = v43 - v42;
        if (v44)
        {
          if (v45)
          {
            v87 = v45;
            memmove(*(a1 + 24), (*(a1 + 24) + v42), v45);
            v45 = v87;
          }

          *(a1 + 8) = v45;
        }
      }

      if (v34 != v41)
      {
        v46 = *(a1 + 32);
        v47 = v46 + v34 - v41;
        if (!__CFADD__(v46, v34 - v41) && v47 <= *(a1 + 40))
        {
          *(a1 + 32) = v47;
        }
      }

      if (v34 == v41 && v21 == v40)
      {
        v15 = v39 + 1;
      }

      else
      {
        v15 = 0;
      }

      if (v38 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    v82 = "decoding compression payload";
    v83 = 162;
LABEL_153:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v83, 20, 0, v82, a7, a8, v86);
  }

  return v8;
}

size_t sub_1000E0078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return sub_10010F9D0(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

AAByteStream AEADecryptionRandomAccessInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  v7 = n_threads;
  if (n_threads <= 0)
  {
    v7 = sub_1000F4290();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 90, 32, 0, "Invalid context", v5, v6, v34);
    v12 = 0;
    goto LABEL_28;
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 94;
    goto LABEL_27;
  }

  memset_s(v11, 0x38uLL, 0, 0x38uLL);
  *v12 = encrypted_stream;
  *(v12 + 8) = flags;
  if ((flags & 0x400000000000000) != 0)
  {
    *(context + 685) = 1;
  }

  v13 = sub_1000F01DC(context, encrypted_stream, 1, 0);
  *(v12 + 16) = v13;
  if (!v13)
  {
    v32 = "unlock container";
    v33 = 106;
    v31 = 0;
    goto LABEL_27;
  }

  *(v12 + 24) = v7;
  v16 = calloc(v7, 0x10uLL);
  *(v12 + 32) = v16;
  if (!v16)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 111;
    goto LABEL_27;
  }

  v17 = *(v12 + 16);
  v18 = *(v17 + 24);
  if (v18)
  {
    v19 = sub_1000FB3BC(v18);
    *(v12 + 40) = compression_decode_scratch_buffer_size(v19);
    v17 = *(v12 + 16);
  }

  v20 = *(v12 + 24);
  if (!v20)
  {
LABEL_19:
    *context = *v17;
    v27 = *(v17 + 16);
    v28 = *(v17 + 32);
    v29 = *(v17 + 48);
    *(context + 8) = *(v17 + 64);
    *(context + 2) = v28;
    *(context + 3) = v29;
    *(context + 1) = v27;
    return sub_1000F8834(*(v17 + 32), *(v17 + 16), v20, 4 * v20, v12, sub_1000E0470, sub_1000E04FC, sub_1000E0364, flags);
  }

  v21 = *(v12 + 32);
  v22 = *(v17 + 16);
  v23 = *(v12 + 24);
  while (1)
  {
    v24 = malloc(v22);
    v21[1] = v24;
    if (!v24)
    {
      v31 = *__error();
      v32 = "malloc";
      v33 = 120;
      goto LABEL_27;
    }

    v25 = *(v12 + 40);
    if (!v25)
    {
      goto LABEL_18;
    }

    if (v25 >= 0x2000000001)
    {
      break;
    }

    v26 = malloc(v25);
    *v21 = v26;
    if (!v26)
    {
      goto LABEL_26;
    }

LABEL_18:
    v21 += 2;
    if (!--v23)
    {
      goto LABEL_19;
    }
  }

  *__error() = 12;
  *v21 = 0;
LABEL_26:
  v31 = *__error();
  v32 = "malloc";
  v33 = 124;
LABEL_27:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", v33, 32, v31, v32, v14, v15, v34);
LABEL_28:
  sub_1000E0364(v12);
  return 0;
}

uint64_t sub_1000E0364(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
LABEL_15:
      sub_1000EFE90(*(a1 + 16));
      memset_s(a1, 0x38uLL, 0, 0x38uLL);
      free(a1);
      return 0;
    }

    if (*(a1 + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + v3 + 8);
        if (v6)
        {
          v7 = *(*(a1 + 16) + 16);
          memset_s(*(v5 + v3 + 8), v7, 0, v7);
        }

        free(v6);
        v8 = *(v5 + v3);
        if (v8)
        {
          memset_s(*(v5 + v3), *(a1 + 40), 0, *(a1 + 40));
        }

        free(v8);
        ++v4;
        v9 = *(a1 + 24);
        v3 += 16;
      }

      while (v4 < v9);
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_14;
      }

      v10 = 16 * v9;
    }

    else
    {
      v10 = 0;
    }

    memset_s(v2, v10, 0, v10);
LABEL_14:
    free(v2);
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1000E0470(uint64_t a1, unsigned int a2, unint64_t a3, uint8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 16) + 400) > a3)
  {
    v9 = *(a1 + 32) + 16 * a2;
    if ((sub_1000F2144(*(a1 + 16), *a1, a3, a4, *(v9 + 8), *v9, a7, a8) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "RandomAccessDecryptionStreamGetBlock", 71, 32, 0, "Loading segment", v10, v11, v8);
  }

  return 0xFFFFFFFFLL;
}

void sub_1000E04FC(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAByteStreamCancel(*a1);
  }
}

uint64_t sub_1000E0518(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((sub_1000E05D0(a1, v8) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore", v9, v10, v12);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t sub_1000E05D0(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc", v8, v9, v10);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1000E0670(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

AAByteStream_impl *AAAFSCStreamOpen(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1000E0730(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v11)
  {
    v12 = "alloc stream";
    v13 = 1041;
    goto LABEL_5;
  }

  if ((sub_1000E0BAC(a1) & 0x80000000) != 0)
  {
    v12 = "clearing file";
    v13 = 1043;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", v13, 55, 0, v12, v9, v10, v15);
    AAByteStreamClose(v11);
    return 0;
  }

  return v11;
}

void *sub_1000E0730(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a2 < 4194304001)
  {
    if (a3 < 0xF && ((0x7F99u >> a3) & 1) != 0)
    {
      v12 = dword_10037C054[a3];
      v13 = calloc(1uLL, 0x68uLL);
      v14 = malloc(0x80uLL);
      v15 = v14;
      if (v14 && (memset_s(v14, 0x80uLL, 0, 0x80uLL), v13))
      {
        *v15 = a1;
        *(v15 + 8) = a4;
        *(v15 + 16) = a2;
        *(v15 + 32) = v12;
        if ((a2 + 0xFFFF) >> 48)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v16, v17, v53);
          v18 = 0;
          *(v15 + 44) = -1;
        }

        else
        {
          v34 = (a2 + 0xFFFF) >> 16;
          *(v15 + 44) = v34;
          v18 = v34 + 1;
        }

        v35 = calloc(v18, 4uLL);
        *(v15 + 48) = v35;
        if (v35)
        {
          if (v12 > 10)
          {
            if ((v12 - 11) < 2)
            {
              v38 = COMPRESSION_LZFSE;
              goto LABEL_31;
            }

            if ((v12 - 13) < 2)
            {
              v38 = COMPRESSION_LZBITMAP;
              goto LABEL_31;
            }
          }

          else
          {
            if ((v12 - 7) < 2)
            {
              v38 = 2304;
              goto LABEL_31;
            }

            if (v12 == 4)
            {
              v38 = 1285;
LABEL_31:
              v39 = compression_encode_scratch_buffer_size(v38);
              if (v39)
              {
                if (v39 >= 0x2000000001)
                {
                  *__error() = 12;
                  *(v15 + 56) = 0;
LABEL_57:
                  v29 = *__error();
                  v32 = "malloc";
                  v33 = 1002;
                  goto LABEL_15;
                }

                v40 = malloc(v39);
                *(v15 + 56) = v40;
                if (!v40)
                {
                  goto LABEL_57;
                }
              }

LABEL_35:
              v41 = *(v15 + 72);
              if (!(v41 >> 16))
              {
                v42 = (v15 + 64);
                do
                {
                  v43 = (v41 >> 1) + v41;
                  if (((v41 >> 1) & v41) != 0)
                  {
                    v43 = ((v41 >> 1) & v41) + v41;
                  }

                  if (v41)
                  {
                    v41 = v43;
                  }

                  else
                  {
                    v41 = 0x4000;
                  }
                }

                while (v41 < 0x10000);
                v44 = *(v15 + 80);
                v45 = realloc(v44, v41);
                if (!v45)
                {
                  goto LABEL_58;
                }

                *(v15 + 72) = v41;
                *(v15 + 80) = v45;
              }

              v46 = *(v15 + 96);
              if (v46 >= 0x80008)
              {
LABEL_55:
                if ((v12 - 3) > 0xB)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = byte_10037C090[v12 - 3];
                }

                *(v15 + 36) = v49;
                v50 = *(v15 + 44);
                v51 = 8 * v50 + 264;
                v52 = 4 * v50 + 4;
                if (a3 < 7)
                {
                  v52 = v51;
                }

                if (v52 < 0xFFFFFFFF)
                {
                  **(v15 + 48) = v52;
                  *v13 = v15;
                  v13[1] = sub_1000E28E4;
                  v13[7] = sub_1000E2E0C;
                  v13[3] = sub_1000E2E20;
                  v13[12] = sub_1000E323C;
                  return v13;
                }

                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", v36, v37, v53);
                **(v15 + 48) = -1;
                v33 = 1010;
                v29 = 0;
                v32 = "invalid file size";
                goto LABEL_15;
              }

              v42 = (v15 + 88);
              do
              {
                v47 = (v46 >> 1) + v46;
                if (((v46 >> 1) & v46) != 0)
                {
                  v47 = ((v46 >> 1) & v46) + v46;
                }

                if (v46)
                {
                  v46 = v47;
                }

                else
                {
                  v46 = 0x4000;
                }
              }

              while (v46 < 0x80008);
              v44 = *(v15 + 104);
              v48 = realloc(v44, v46);
              if (v48)
              {
                *(v15 + 96) = v46;
                *(v15 + 104) = v48;
                goto LABEL_55;
              }

LABEL_58:
              free(v44);
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v29 = *__error();
              v32 = "malloc";
              v33 = 1005;
              goto LABEL_15;
            }

            if (v12 == 10)
            {
              goto LABEL_35;
            }
          }

          v38 = -1;
          goto LABEL_31;
        }

        v29 = *__error();
        v32 = "malloc";
        v33 = 997;
      }

      else
      {
        v29 = *__error();
        v32 = "malloc";
        v33 = 988;
      }

LABEL_15:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v33, 55, v29, v32, v30, v31, v53);
      goto LABEL_12;
    }

    v53 = a3;
    v19 = "invalid compression type: %d";
    v20 = 981;
  }

  else
  {
    v19 = "invalid uncompressed size";
    v20 = 959;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v20, 55, 0, v19, a7, a8, v53);
  v13 = 0;
  v15 = 0;
LABEL_12:
  sub_1000E28E4(v15, v21, v22, v23, v24, v25, v26, v27);
  free(v13);
  return 0;
}

uint64_t sub_1000E0BAC(int a1)
{
  memset(&v17, 0, sizeof(v17));
  if (fstat(a1, &v17))
  {
    v2 = *__error();
    v5 = "fstat";
    v6 = 100;
  }

  else
  {
    if ((v17.st_flags & 0x20) == 0 || (fchflags(a1, v17.st_flags & 0xFFFFFFDF) & 0x80000000) == 0)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v2 = *__error();
    v5 = "fchflags UF_COMPRESSED";
    v6 = 105;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", v6, 55, v2, v5, v3, v4, v17.st_dev);
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 154, 55, 0, "clearing UF_COMPRESSED", v7, v8, v17.st_dev);
  v9 = 0;
LABEL_7:
  if ((fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 159, 55, *v10, "fremovexattr", v11, v12, v17.st_dev);
    v9 = 0;
  }

  if ((fgetxattr(a1, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 161, 55, *v13, "fremovexattr", v14, v15, v17.st_dev);
    v9 = 0;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream_impl *AAAFSCStreamOpenWithMetadata(int a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 > 0xE)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x2A88) != 0)
  {
    if (a4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1060, 55, 0, "invalid resource fork for type", a7, a8, v19);
      goto LABEL_7;
    }
  }

  else if (((1 << a3) & 0x5510) == 0)
  {
LABEL_4:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1059, 55, 0, "invalid compression_type: %d", a7, a8, a3);
LABEL_7:
    v11 = 0;
LABEL_13:
    AAByteStreamClose(v11);
    return 0;
  }

  v12 = sub_1000E0730(a1, a2, a3, 0, a5, a6, a7, a8);
  v11 = v12;
  if (!v12)
  {
    v16 = "alloc stream";
    v17 = 1064;
    goto LABEL_12;
  }

  v15 = *v12;
  *(v15 + 112) = a3;
  *(v15 + 116) = a4;
  if ((sub_1000E0BAC(a1) & 0x80000000) != 0)
  {
    v16 = "clearing file";
    v17 = 1070;
LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", v17, 55, 0, v16, v13, v14, v19);
    goto LABEL_13;
  }

  return v11;
}

AAByteStream_impl *AAAFSCStreamOpenWithState(int a1, AAByteStream_impl *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  if (!*(a2 + 2))
  {
LABEL_71:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1088, 55, 0, "loading state", a7, a8, v52);
    v20 = 0;
    goto LABEL_78;
  }

  v11 = &v52;
  v12 = 48;
  do
  {
    v13 = (*(a2 + 2))(*a2, v11, v12);
    if (v13 < 0)
    {
      goto LABEL_71;
    }

    v11 = (v11 + v13);
    v12 -= v13;
    if (v13)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 1;
    }
  }

  while (!v16);
  v17 = sub_1000E0730(a1, *(&v52 + 1), DWORD2(v53), v52, v14, v15, a7, a8);
  v20 = v17;
  if (!v17)
  {
    v49 = "open AFSC stream";
    v50 = 1092;
    goto LABEL_77;
  }

  v21 = *v17;
  *(v21 + 24) = v53;
  *(v21 + 40) = HIDWORD(v53);
  *(v21 + 112) = v54;
  if (!*(a2 + 2))
  {
    goto LABEL_76;
  }

  v22 = *(v21 + 44);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    v25 = 4 * v24;
    v26 = *(v21 + 48);
    do
    {
      v27 = (*(a2 + 2))(*a2, v26, v25);
      if (v27 < 0)
      {
        goto LABEL_76;
      }

      v26 += v27;
      v25 -= v27;
      if (v27)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  v29 = DWORD2(v54);
  if (!DWORD2(v54))
  {
LABEL_44:
    v40 = HIDWORD(v54);
    if (!HIDWORD(v54))
    {
LABEL_69:
      if (a3)
      {
        *a3 = *(v21 + 24);
      }

      return v20;
    }

    v30 = (v21 + 88);
    v42 = *(v21 + 88);
    v41 = *(v21 + 96);
    while (1)
    {
      if (v42 != v41)
      {
        goto LABEL_57;
      }

      v43 = v41 + 0x40000;
      if ((v41 + 0x40000) < 0)
      {
        goto LABEL_76;
      }

      if (v41 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v41)
        {
          v41 = 0x4000;
          v45 = 0x4000;
          if (v43 <= 0x4000)
          {
            goto LABEL_59;
          }
        }

        v44 = v41 >> 1;
        if ((v41 & (v41 >> 1)) != 0)
        {
          v44 = v41 & (v41 >> 1);
        }

        v41 += v44;
      }

      while (v41 < v43);
      v45 = v41;
      if (v41 >= 0x2000000001)
      {
        goto LABEL_74;
      }

LABEL_59:
      v36 = *(v21 + 104);
      v46 = realloc(v36, v45);
      if (!v46)
      {
        goto LABEL_73;
      }

      *(v21 + 96) = v45;
      *(v21 + 104) = v46;
      v42 = *(v21 + 88);
LABEL_61:
      if (v45 - v42 >= v40)
      {
        v47 = v40;
      }

      else
      {
        v47 = v45 - v42;
      }

      v48 = AAByteStreamRead(a2, (*(v21 + 104) + v42), v47);
      if (v48 < 0)
      {
        goto LABEL_76;
      }

      if (!v48)
      {
        goto LABEL_69;
      }

      v42 = *v30 + v48;
      if (__CFADD__(*v30, v48))
      {
        goto LABEL_76;
      }

      v41 = *(v21 + 96);
      if (v42 > v41)
      {
        goto LABEL_76;
      }

      *v30 = v42;
      v40 -= v48;
      if (!v40)
      {
        goto LABEL_69;
      }
    }

    v42 = v41;
LABEL_57:
    v45 = v41;
    goto LABEL_61;
  }

  v30 = (v21 + 64);
  v32 = *(v21 + 64);
  v31 = *(v21 + 72);
  while (1)
  {
    if (v32 != v31)
    {
      goto LABEL_32;
    }

    v33 = v31 + 0x40000;
    if ((v31 + 0x40000) < 0)
    {
      goto LABEL_76;
    }

    if (v31 > 0xFFFFFFFFFFFBFFFFLL)
    {
      v32 = v31;
LABEL_32:
      v35 = v31;
      goto LABEL_36;
    }

    do
    {
      while (!v31)
      {
        v31 = 0x4000;
        v35 = 0x4000;
        if (v33 <= 0x4000)
        {
          goto LABEL_34;
        }
      }

      v34 = v31 >> 1;
      if ((v31 & (v31 >> 1)) != 0)
      {
        v34 = v31 & (v31 >> 1);
      }

      v31 += v34;
    }

    while (v31 < v33);
    v35 = v31;
    if (v31 >= 0x2000000001)
    {
      break;
    }

LABEL_34:
    v36 = *(v21 + 80);
    v37 = realloc(v36, v35);
    if (!v37)
    {
LABEL_73:
      free(v36);
      goto LABEL_75;
    }

    *(v21 + 72) = v35;
    *(v21 + 80) = v37;
    v32 = *(v21 + 64);
LABEL_36:
    if (v35 - v32 >= v29)
    {
      v38 = v29;
    }

    else
    {
      v38 = v35 - v32;
    }

    v39 = AAByteStreamRead(a2, (*(v21 + 80) + v32), v38);
    if (v39 < 0)
    {
      goto LABEL_76;
    }

    if (!v39)
    {
      goto LABEL_44;
    }

    v32 = *v30 + v39;
    if (__CFADD__(*v30, v39))
    {
      goto LABEL_76;
    }

    v31 = *(v21 + 72);
    if (v32 > v31)
    {
      goto LABEL_76;
    }

    *v30 = v32;
    v29 -= v39;
    if (!v29)
    {
      goto LABEL_44;
    }
  }

LABEL_74:
  *__error() = 12;
LABEL_75:
  *v30 = 0;
  v30[1] = 0;
  v30[2] = 0;
LABEL_76:
  v49 = "loading state";
  v50 = 1103;
LABEL_77:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", v50, 55, 0, v49, v18, v19, v52);
LABEL_78:
  AAByteStreamClose(v20);
  return 0;
}

uint64_t AAAFSCGetMetadata(int a1, _DWORD *a2, _DWORD *a3)
{
  memset(&v17, 0, sizeof(v17));
  __s[0] = 0;
  __s[1] = 0;
  v16 = 0;
  if (!fstat(a1, &v17))
  {
    if (sub_1000F5A84(v17.st_flags))
    {
      if ((sub_1000E13C0(a1, a2, &v14, __s) & 0x80000000) != 0)
      {
        v9 = "loading decmpfs";
        v10 = 1137;
      }

      else
      {
        if (*a2 <= 0xDu && ((1 << *a2) & 0x2A88) != 0)
        {
          v11 = 0;
LABEL_10:
          *a3 = 0;
          goto LABEL_11;
        }

        v13 = sub_1000E1588(a1);
        *a3 = v13;
        if (v13 != -1)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v9 = "invalid resource fork";
        v10 = 1140;
      }

      v6 = 0;
      goto LABEL_3;
    }

    v11 = 0;
    *a2 = -1;
    goto LABEL_10;
  }

  v6 = *__error();
  v9 = "fstat";
  v10 = 1123;
LABEL_3:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCGetMetadata", v10, 55, v6, v9, v7, v8, v14);
  v11 = 0xFFFFFFFFLL;
LABEL_11:
  free(v16);
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  return v11;
}

uint64_t sub_1000E13C0(int a1, _DWORD *a2, void *a3, unint64_t *a4)
{
  *a4 = 0;
  v8 = a4[1];
  if (v8 >> 16)
  {
    v12 = 0;
    v11 = a4[2];
  }

  else
  {
    do
    {
      v9 = (v8 >> 1) + v8;
      if (((v8 >> 1) & v8) != 0)
      {
        v9 = ((v8 >> 1) & v8) + v8;
      }

      if (v8)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0x4000;
      }
    }

    while (v8 < 0x10000);
    v10 = a4[2];
    v11 = realloc(v10, v8);
    if (!v11)
    {
      free(v10);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v17 = "blob reserve";
      v18 = 255;
      goto LABEL_20;
    }

    a4[1] = v8;
    a4[2] = v11;
    v12 = *a4;
  }

  v13 = fgetxattr(a1, "com.apple.decmpfs", &v11[v12], v8 - v12, 0, 32);
  if (v13 < 16 || (v16 = *a4 + v13, __CFADD__(*a4, v13)) || v16 > a4[1])
  {
    v17 = "invalid/missing decmpfs";
    v18 = 261;
LABEL_20:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", v18, 55, 0, v17, v14, v15, v23);
    return 0xFFFFFFFFLL;
  }

  *a4 = v16;
  v19 = a4[2];
  if (*v19 != 1668116582)
  {
    v17 = "Invalid decmpfs xattr";
    v18 = 263;
    goto LABEL_20;
  }

  v20 = *(v19 + 8);
  *a2 = *(v19 + 4);
  *a3 = v20;
  v21 = v16 - 16;
  if (v16 < 0x10)
  {
    v17 = "blob resize";
    v18 = 268;
    goto LABEL_20;
  }

  if (v16 != 16)
  {
    memmove(v19, (v19 + 16), v16 - 16);
  }

  result = 0;
  *a4 = v21;
  return result;
}

unint64_t sub_1000E1588(int a1)
{
  result = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
  if ((result & 0x8000000000000000) != 0)
  {
    v4 = "Missing resource fork xattr";
    v5 = 309;
  }

  else
  {
    if (!HIDWORD(result))
    {
      return result;
    }

    v4 = "Invalid resource fork xattr";
    v5 = 310;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", v5, 55, 0, v4, v2, v3, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAAFSCSetMetadata(int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v43, 0, sizeof(v43));
  v41 = 0;
  v42 = -1;
  __s = 0;
  v39 = 0;
  v40 = 0;
  if (a2 <= 0xD && ((1 << a2) & 0x2A88) != 0)
  {
    if (a3)
    {
      v11 = "invalid resource fork size";
      v12 = 1169;
LABEL_5:
      v13 = 0;
LABEL_10:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v12, 55, v13, v11, a7, a8, v36);
      v15 = 0;
LABEL_11:
      v16 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
    v14 = a3 != 0;
  }

  if (fstat(a1, &v43))
  {
    v13 = *__error();
    v11 = "fstat";
    v12 = 1171;
    goto LABEL_10;
  }

  st_size = v43.st_size;
  if ((AAAFSCGetMetadata(a1, &v42, &v41) & 0x80000000) != 0)
  {
    v11 = "reading current metadata";
    v12 = 1175;
    goto LABEL_5;
  }

  v21 = v42 != -1;
  v22 = v42 != a2 && v42 != -1;
  if (v42 != a2)
  {
    v21 = 0;
  }

  if (v41 <= a3)
  {
    v21 = 0;
  }

  if (v22 || v14 && v21)
  {
    if ((sub_1000E1A98(a1) & 0x80000000) != 0)
    {
      v11 = "decompression failed";
      v12 = 1188;
      goto LABEL_5;
    }

    v41 = 0;
    v42 = -1;
    if (a2 == -1)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v42 == a2)
    {
      goto LABEL_61;
    }

    if (v42 != -1)
    {
      v11 = "invalid state";
      v12 = 1200;
      goto LABEL_5;
    }
  }

  v15 = AAAFSCStreamOpenWithMetadata(a1, st_size, a2, a3, v19, v20, a7, a8);
  if (!v15)
  {
    v34 = "open AFSC stream";
    v35 = 1202;
LABEL_75:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v35, 55, 0, v34, v23, v24, v36);
    goto LABEL_11;
  }

  v25 = 0;
  do
  {
    v26 = (v25 >> 1) + v25;
    if (((v25 >> 1) & v25) != 0)
    {
      v26 = ((v25 >> 1) & v25) + v25;
    }

    if (v25)
    {
      v25 = v26;
    }

    else
    {
      v25 = 0x4000;
    }
  }

  while (v25 < 0x80000);
  v27 = malloc(v25);
  if (!v27)
  {
    __s = 0;
    v39 = 0;
    v40 = 0;
    v34 = "blob alloc";
    v35 = 1205;
    goto LABEL_75;
  }

  v28 = v27;
  v39 = v25;
  v40 = v27;
  if (st_size)
  {
    v29 = 0;
    v36 = v27;
    v37 = st_size;
    while (1)
    {
      __s = 0;
      if (v25 >= st_size - v29)
      {
        v30 = st_size - v29;
      }

      else
      {
        v30 = v25;
      }

      if (pread(a1, v28, v30, v29) != v30)
      {
LABEL_72:
        v34 = "read data";
        v35 = 1213;
        goto LABEL_75;
      }

      if (v30)
      {
        if (__CFADD__(__s, v30))
        {
          goto LABEL_72;
        }

        v25 = v39;
        if (__s + v30 > v39)
        {
          goto LABEL_72;
        }

        __s += v30;
        if (*(v15 + 3))
        {
          v31 = 0;
          v32 = v30;
          while (1)
          {
            v33 = (*(v15 + 3))(*v15, v28, v32);
            if (v33 < 1)
            {
              break;
            }

            v28 += v33;
            v31 += v33;
            v32 -= v33;
            if (!v32)
            {
              goto LABEL_57;
            }
          }

          v31 = v33;
LABEL_57:
          v28 = v36;
          st_size = v37;
        }

        else
        {
          v31 = -1;
        }
      }

      else
      {
        v31 = *(v15 + 3) ? 0 : -1;
      }

      if (v31 != v30)
      {
        break;
      }

      v29 += v30;
      if (v29 >= st_size)
      {
        goto LABEL_60;
      }
    }

    v34 = "write data";
    v35 = 1215;
    goto LABEL_75;
  }

LABEL_60:
  if (AAByteStreamClose(v15) < 0)
  {
    v11 = "AFSC stream close";
    v12 = 1222;
    goto LABEL_5;
  }

LABEL_61:
  if ((AAAFSCGetMetadata(a1, &v42, &v41) & 0x80000000) != 0)
  {
    v11 = "reading current metadata";
    v12 = 1229;
    goto LABEL_5;
  }

  if (v42 != a2 || (v16 = 0, v15 = 0, a3) && v41 != a3)
  {
    if ((sub_1000E222C(a1, a3) & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    v11 = "resizing resource fork";
    v12 = 1236;
    goto LABEL_5;
  }

LABEL_12:
  free(v40);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AAByteStreamClose(v15);
  return v16;
}

uint64_t sub_1000E1A98(int a1)
{
  v2 = 0;
  __s = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v71 = -1;
  v70 = 0;
  do
  {
    v3 = (v2 >> 1) + v2;
    if (((v2 >> 1) & v2) != 0)
    {
      v3 = ((v2 >> 1) & v2) + v2;
    }

    if (v2)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0x4000;
    }
  }

  while (v2 <= 0x10000);
  v4 = malloc(v2);
  if (!v4)
  {
    p_s = &__s;
LABEL_22:
    *p_s = 0;
    p_s[1] = 0;
    p_s[2] = 0;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 448, 55, 0, "blob alloc", v5, v6, v61);
    v10 = 0;
LABEL_44:
    v24 = 0;
LABEL_45:
    v26 = 0;
    goto LABEL_46;
  }

  v7 = 0;
  v76 = v2;
  v77 = v4;
  do
  {
    v8 = (v7 >> 1) + v7;
    if (((v7 >> 1) & v7) != 0)
    {
      v8 = ((v7 >> 1) & v7) + v7;
    }

    if (v7)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0x4000;
    }
  }

  while (v7 < 0x80000);
  v9 = malloc(v7);
  if (!v9)
  {
    p_s = &v72;
    goto LABEL_22;
  }

  v10 = v9;
  v73 = v7;
  v74 = v9;
  if ((sub_1000E13C0(a1, &v71, &v70, &__s) & 0x80000000) != 0)
  {
    v17 = "loading decmpfs xattr";
    v18 = 451;
LABEL_42:
    v25 = 0;
LABEL_43:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v18, 55, v25, v17, v11, v12, v61);
    goto LABEL_44;
  }

  v13 = v71;
  v14 = v71 - 3;
  if (v71 - 3 > 0xB)
  {
    v15 = 0;
  }

  else
  {
    v15 = byte_10037C090[v14];
  }

  if (v71 > 0xE)
  {
    goto LABEL_30;
  }

  if (((1 << v71) & 0x180) != 0)
  {
    v19 = 0;
    v20 = 2304;
    goto LABEL_35;
  }

  if (((1 << v71) & 0x1800) != 0)
  {
    v19 = 0;
    v20 = COMPRESSION_LZFSE;
    goto LABEL_35;
  }

  if (((1 << v71) & 0x6000) != 0)
  {
    v19 = 0;
    v20 = COMPRESSION_LZBITMAP;
  }

  else
  {
LABEL_30:
    if (v14 >= 2)
    {
      v20 = -1;
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v20 = 1285;
    }
  }

LABEL_35:
  v21 = v70;
  if (!v70 || (v22 = v70 + 0xFFFF, (v70 + 0xFFFF) >> 48))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v11, v12, v61);
    goto LABEL_41;
  }

  v23 = v22 >> 16;
  if (v22 >> 16 == 0xFFFFFFFF)
  {
LABEL_41:
    v17 = "invalid uncompressed size";
    v18 = 457;
    goto LABEL_42;
  }

  if (v19)
  {
    v24 = 0;
    goto LABEL_53;
  }

  v29 = v15;
  v30 = compression_decode_scratch_buffer_size(v20);
  if (v30)
  {
    if (v30 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_64:
      v25 = *__error();
      v17 = "malloc";
      v18 = 463;
      goto LABEL_43;
    }

    v24 = malloc(v30);
    v15 = v29;
    if (!v24)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v24 = 0;
    v15 = v29;
  }

LABEL_53:
  if (v13 <= 0xD && ((1 << v13) & 0x2A88) != 0)
  {
    v31 = v77;
    if (*v77 == v15)
    {
      v32 = __s - 1;
      memcpy(v10, v77 + 1, __s - 1);
    }

    else
    {
      v32 = compression_decode_buffer(v10, 0x10000uLL, v77, __s, v24, v20);
    }

    if (v32 - 65537 <= 0xFFFFFFFFFFFEFFFFLL)
    {
      v35 = "invalid chunk";
      v36 = 487;
LABEL_66:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v36, 55, 0, v35, v33, v34, v61);
      goto LABEL_45;
    }

    v72 = v32;
    v37 = pwrite(a1, v31, v32, 0);
    v26 = 0;
    if (v37 != v32)
    {
      v35 = "writing chunk";
      v36 = 490;
      goto LABEL_66;
    }

LABEL_61:
    if (fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
    {
      v48 = *__error();
      v46 = "Removing xattr";
      v47 = 548;
      goto LABEL_79;
    }

    if (fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
    {
      v48 = *__error();
      v46 = "Removing xattr";
      v47 = 549;
      goto LABEL_79;
    }

    v27 = 0;
    goto LABEL_47;
  }

  v64 = v15;
  v26 = calloc(v23 + 1, 4uLL);
  if (!v26)
  {
    v48 = *__error();
    v46 = "malloc";
    v47 = 498;
    goto LABEL_79;
  }

  if ((sub_1000E3C2C(a1, v13, v22 >> 16, v26, v38, v39, v40, v41) & 0x80000000) != 0)
  {
    v46 = "loading chunk offsets";
    v47 = 499;
    goto LABEL_78;
  }

  if (v22 < 0x10000)
  {
    v44 = 0;
    v45 = 1;
LABEL_71:
    if (v44 != v21 || !v45)
    {
      v46 = "corrupted resource fork";
      v47 = 544;
      goto LABEL_78;
    }

    goto LABEL_61;
  }

  v44 = 0;
  v49 = 0;
  v62 = v76;
  if (v23 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v23;
  }

  v51 = v26 + 1;
  v52 = v23 - 1;
  value = v77;
  while (1)
  {
    v65 = v50;
    __s = 0;
    if (!((v7 - v49) >> 16))
    {
      v46 = "obuf full";
      v47 = 507;
      goto LABEL_78;
    }

    v66 = v44;
    v53 = *(v51 - 1);
    v54 = *v51;
    v63 = v51;
    v55 = *v51 - v53;
    if (v62 < v55)
    {
      v46 = "invalid chunk size";
      v47 = 510;
      goto LABEL_78;
    }

    v68 = v52;
    v69 = v49;
    if (fgetxattr(a1, "com.apple.ResourceFork", value, v54 - v53, v53, 32) != v55)
    {
      v46 = "read resource fork chunk";
      v47 = 513;
      goto LABEL_78;
    }

    if (v54 != v53)
    {
      __s = v54 - v53;
    }

    v44 = v66;
    if (*value == v64)
    {
      v56 = (v55 - 1);
      memcpy(&v10[v69], value + 1, v56);
    }

    else
    {
      v56 = compression_decode_buffer(&v10[v69], 0x10000uLL, value, v55, v24, v20);
    }

    v57 = v68;
    if (v56 != 0x10000 && (!v56 || v68 || v56 > 0x10000) || (v49 = v69 + v56, __CFADD__(v69, v56)) || v7 < v49)
    {
      v46 = "invalid chunk";
      v47 = 532;
      goto LABEL_78;
    }

    v72 = v69 + v56;
    if (!v68 || !((v7 - v49) >> 16))
    {
      break;
    }

    v58 = v65;
    v59 = v63;
LABEL_103:
    v51 = v59 + 1;
    v52 = v57 - 1;
    v50 = v58 - 1;
    if (!v50)
    {
      v45 = v49 == 0;
      goto LABEL_71;
    }
  }

  v60 = v69 + v56;
  if (pwrite(a1, v10, v49, v66) == v49)
  {
    v44 = v60 + v66;
    v72 = 0;
    v49 = 0;
    v58 = v65;
    v59 = v63;
    v57 = v68;
    goto LABEL_103;
  }

  v46 = "writing chunk";
  v47 = 539;
LABEL_78:
  v48 = 0;
LABEL_79:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v47, 55, v48, v46, v42, v43, v61);
LABEL_46:
  v27 = 0xFFFFFFFFLL;
LABEL_47:
  free(v77);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v10);
  memset_s(&v72, 0x18uLL, 0, 0x18uLL);
  free(v24);
  free(v26);
  return v27;
}

uint64_t sub_1000E222C(int a1, unsigned int a2)
{
  __s = 0;
  v71 = 0;
  __ptr = 0;
  v69 = -1;
  v68 = 0;
  if ((sub_1000E13C0(a1, &v69, &v68, &__s) & 0x80000000) != 0)
  {
    v8 = "loading decmpfs xattr";
    v9 = 574;
    goto LABEL_8;
  }

  v6 = v69;
  if ((v69 + 1) <= 0xE && ((1 << (v69 + 1)) & 0x5511) != 0)
  {
    v8 = "invalid compression type";
    v9 = 575;
LABEL_8:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v9, 55, 0, v8, v4, v5, v61);
LABEL_9:
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v14 = sub_1000E1588(a1);
  if (v14 == -1)
  {
    v8 = "invalid resource fork";
    v9 = 579;
    goto LABEL_8;
  }

  if (a2 < v14)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 580, 55, 0, "can't resize resource fork %u to %u", v4, v5, v14);
    goto LABEL_9;
  }

  v15 = a2 - v14;
  if (a2 == v14)
  {
    v10 = 0;
    v11 = 0;
LABEL_18:
    v12 = 0;
    goto LABEL_11;
  }

  v16 = v68;
  if (!v68 || (v17 = v68 + 0xFFFF, (v68 + 0xFFFF) >> 48))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size", v4, v5, v61);
    goto LABEL_44;
  }

  v18 = v17 >> 16;
  if ((v17 >> 16) + 1 <= 1)
  {
LABEL_44:
    v8 = "invalid uncompressed size";
    v9 = 589;
    goto LABEL_8;
  }

  v11 = calloc((v17 >> 16) + 1, 4uLL);
  v19 = calloc((v17 >> 16) + 1, 4uLL);
  v10 = v19;
  if (!v11 || !v19)
  {
    v39 = *__error();
    v59 = "malloc";
    v60 = 594;
    goto LABEL_100;
  }

  if ((sub_1000E3C2C(a1, v6, v17 >> 16, v11, v20, v21, v22, v23) & 0x80000000) != 0)
  {
    v59 = "loading chunk offsets";
    v60 = 595;
    goto LABEL_99;
  }

  v10[v18] = v15 + v11[v18];
  v28 = v17 >> 16;
  while (v28)
  {
    v29 = (v28 - 1);
    v30 = v16 - (v29 << 16);
    if (v30 >= 0x10000)
    {
      LODWORD(v30) = 0x10000;
    }

    v31 = v11[v28];
    v32 = v11[v29];
    v33 = v10[v28];
    v34 = v31 - v32;
    v35 = v33 - v32;
    if (v35 >= 0x10000)
    {
      v35 = 0x10000;
    }

    if (v34 > v35)
    {
      v35 = v34;
    }

    v36 = (v34 & 0xFFFF0000) != 0 || v34 >= v30;
    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v36 = v33 >= v37;
    v38 = v33 - v37;
    v10[v29] = v38;
    if (!v36)
    {
      v59 = "resource fork resize failed";
      v60 = 607;
      goto LABEL_99;
    }

    LODWORD(v28) = v29;
    if (v38 < v11[v29])
    {
      v59 = "invalid state when resizing resource fork";
      v60 = 608;
      goto LABEL_99;
    }
  }

  if (*v10 != *v11)
  {
    v59 = "resource fork resize failed";
    v60 = 610;
    goto LABEL_99;
  }

  v40 = v71;
  if (v71 <= 0x10000)
  {
    do
    {
      v41 = (v40 >> 1) + v40;
      if (((v40 >> 1) & v40) != 0)
      {
        v41 = ((v40 >> 1) & v40) + v40;
      }

      if (v40)
      {
        v40 = v41;
      }

      else
      {
        v40 = 0x4000;
      }
    }

    while (v40 < 0x10001);
    v42 = __ptr;
    v43 = realloc(__ptr, v40);
    if (!v43)
    {
      free(v42);
      __s = 0;
      v71 = 0;
      __ptr = 0;
      v59 = "blob alloc";
      v60 = 613;
      goto LABEL_99;
    }

    __ptr = v43;
  }

  v44 = __s;
  if (v17 < 0x10000)
  {
    goto LABEL_91;
  }

  value = __ptr;
  v45 = v11[(v18 - 1)];
  __n = v11[v18];
  size_4 = v18 - 1;
  v62 = &v10[(v18 - 1)];
  if (v45 == *v62 && __n - v45 == v10[v18] - *v62)
  {
LABEL_90:
    __ptr = value;
LABEL_91:
    __s = v44;
    v71 = v40;
    if ((sub_1000E35AC(a1, v6, v18, v10, v24, v25, v26, v27) & 0x80000000) != 0)
    {
      v59 = "storing new offsets";
      v60 = 635;
      goto LABEL_99;
    }

    goto LABEL_18;
  }

  v47 = v10[v18] - *v62;
  v48 = __n - v45;
  v49 = v40;
  while (1)
  {
    size = v47;
    v50 = v48;
    v51 = v48;
    v52 = fgetxattr(a1, "com.apple.ResourceFork", value, v48, v45, 32);
    v53 = size;
    if (v52 != v51)
    {
LABEL_94:
      v71 = v40;
      __ptr = value;
      __s = 0;
      v59 = "read chunk";
      v60 = 628;
      goto LABEL_99;
    }

    if (__n == v45)
    {
      v54 = 0;
    }

    else
    {
      v54 = v50;
      if (v49 < v50)
      {
        goto LABEL_94;
      }
    }

    if (size <= v50)
    {
      v44 = v54;
      v56 = v62;
      goto LABEL_83;
    }

    __na = size - v50;
    v44 = v54 + __na;
    if (v49 < v54 + __na)
    {
      break;
    }

    if (value)
    {
      v57 = value;
LABEL_81:
      memset_s(&v57[v54], __na, 0, __na);
      value = v57;
    }

    else
    {
      value = 0;
    }

    v56 = v62;
    v53 = size;
LABEL_83:
    if (fsetxattr(a1, "com.apple.ResourceFork", value, v53, *v56, 0) < 0)
    {
      v71 = v40;
      __ptr = value;
      __s = v44;
      v59 = "write chunk";
      v60 = 631;
      goto LABEL_99;
    }

    if (size_4)
    {
      v58 = size_4 - 1;
      v45 = v11[size_4 - 1];
      __n = v11[size_4];
      v48 = __n - v45;
      v62 = &v10[size_4 - 1];
      v47 = v10[size_4--] - *v62;
      if (v45 != *v62)
      {
        continue;
      }

      size_4 = v58;
      if (v48 != v47)
      {
        continue;
      }
    }

    goto LABEL_90;
  }

  do
  {
    while (!v49)
    {
      v49 = 0x4000;
      v40 = 0x4000;
      if (v44 <= 0x4000)
      {
        goto LABEL_80;
      }
    }

    v55 = v49 >> 1;
    if ((v49 & (v49 >> 1)) != 0)
    {
      v55 = v49 & (v49 >> 1);
    }

    v49 += v55;
  }

  while (v49 < v44);
  v40 = v49;
  if (v49 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_98;
  }

LABEL_80:
  v57 = realloc(value, v40);
  v49 = v40;
  if (v57)
  {
    goto LABEL_81;
  }

  free(value);
LABEL_98:
  __s = 0;
  v71 = 0;
  __ptr = 0;
  v59 = "store padding";
  v60 = 629;
LABEL_99:
  v39 = 0;
LABEL_100:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v60, 55, v39, v59, v26, v27, v61);
LABEL_10:
  v12 = 0xFFFFFFFFLL;
LABEL_11:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v11);
  free(v10);
  return v12;
}

uint64_t sub_1000E28E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = atomic_load((result + 120));
    v10 = v9 == 0;
    v11 = *(result + 16);
    if (*(result + 24) < v11 || *(result + 64))
    {
      goto LABEL_4;
    }

    v15 = *(result + 88);
    v16 = *(result + 40);
    if (v15)
    {
      if (v16)
      {
LABEL_4:
        v39 = *(result + 24);
        v12 = "invalid final AFSC stream state, received %zu/%zu bytes";
        v13 = 826;
        goto LABEL_5;
      }

LABEL_17:
      v18 = *(v8 + 32) - (v15 != 0);
      v19 = *v8;
      __s = 0uLL;
      v41 = 0;
      if ((v18 - 7) >= 8 && (v18 - 3) >= 2)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 286, 55, 0, "unsupported compression type: %d", a7, a8, v18);
        v23 = 0;
LABEL_55:
        free(v23);
        memset_s(&__s, 0x18uLL, 0, 0x18uLL);
        v12 = "store decmpfs xattr";
        v13 = 837;
        goto LABEL_5;
      }

      v20 = malloc(0x4000uLL);
      if (!v20)
      {
        goto LABEL_52;
      }

      v23 = v20;
      v41 = v20;
      *v20 = 1668116582;
      *(v20 + 1) = v18;
      *(v20 + 1) = v11;
      __s = xmmword_10037C000;
      v24 = v15 + 16;
      if (v15 >= 0xFFFFFFFFFFFFFFF0 || (v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      v25 = *(v8 + 104);
      if (v24 > 0x4000)
      {
        for (i = 0x4000; i < v24; i += v27)
        {
          v27 = i >> 1;
          if ((i & (i >> 1)) != 0)
          {
            v27 = i & (i >> 1);
          }
        }

        if (i >= 0x2000000001)
        {
          *__error() = 12;
LABEL_52:
          v23 = 0;
          __s = 0uLL;
          v41 = 0;
          goto LABEL_53;
        }

        v30 = realloc(v20, i);
        if (!v30)
        {
          free(v23);
          goto LABEL_52;
        }

        *(&__s + 1) = i;
        v41 = v30;
        v23 = v30;
      }

      v31 = v23 + 16;
      if (v25)
      {
        memcpy(v31, v25, v15);
      }

      else
      {
        memset_s(v31, v15, 0, v15);
      }

      *&__s = v15 + 16;
      if ((v15 & 0x8000000000000000) == 0)
      {
        if ((fsetxattr(v19, "com.apple.decmpfs", v23, v15 + 16, 0, 0) & 0x80000000) == 0)
        {
          free(v23);
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (ftruncate(*v8, 0))
          {
            v14 = *__error();
            v12 = "ftruncate";
            v13 = 840;
            goto LABEL_6;
          }

          if ((*(v8 + 8) & 4) != 0 || (v35 = *(v8 + 40), !v35) || 93 * *(v8 + 16) / 0x64uLL >= v35 || *(v8 + 32) == 10 || *(v8 + 112))
          {
            v36 = *(v8 + 112);
            if (!v36 || v36 == v18)
            {
              v37 = *(v8 + 116);
              if (v37 && (v38 = *(v8 + 40)) != 0 && v37 != v38 && (sub_1000E222C(*v8, v37) & 0x80000000) != 0)
              {
                v12 = "resizing resource fork";
                v13 = 861;
              }

              else
              {
                if ((sub_1000E34E8(*v8) & 0x80000000) == 0)
                {
                  goto LABEL_7;
                }

                v12 = "set UF_COMPRESSED";
                v13 = 865;
              }
            }

            else
            {
              v12 = "compression type mismatch";
              v13 = 858;
            }
          }

          else
          {
            if ((sub_1000E1A98(*v8) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            v12 = "decompressing to regular data file";
            v13 = 853;
          }

LABEL_5:
          v14 = 0;
LABEL_6:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", v13, 55, v14, v12, a7, a8, v39);
          v10 = 0;
LABEL_7:
          free(*(v8 + 48));
          free(*(v8 + 56));
          free(*(v8 + 80));
          memset_s((v8 + 64), 0x18uLL, 0, 0x18uLL);
          free(*(v8 + 104));
          memset_s((v8 + 88), 0x18uLL, 0, 0x18uLL);
          free(v8);
          return (v10 - 1);
        }

        v32 = *__error();
        v33 = "fsetxattr decmpfs";
        v34 = 297;
        goto LABEL_54;
      }

LABEL_53:
      v33 = "prepare decmpfs header";
      v34 = 291;
      v32 = 0;
LABEL_54:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", v34, 55, v32, v33, v21, v22, v39);
      goto LABEL_55;
    }

    if (!v16)
    {
      v15 = 0;
      goto LABEL_17;
    }

    if ((sub_1000E35AC(*result, *(result + 32), *(result + 44), *(result + 48), a5, a6, a7, a8) & 0x80000000) != 0)
    {
      v28 = "storing offsets";
      v29 = 796;
    }

    else
    {
      v17 = sub_1000E1588(*v8);
      *(v8 + 40) = v17;
      if (v17 != -1)
      {
        v15 = *(v8 + 88);
        v11 = *(v8 + 16);
        goto LABEL_17;
      }

      v28 = "invalid resource fork";
      v29 = 800;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", v29, 55, 0, v28, a7, a8, v39);
    v12 = "finalize resource fork";
    v13 = 832;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1000E2E20(uint64_t a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 120)))
  {
    return -1;
  }

  v10 = a3;
  v12 = *(a1 + 24);
  v13 = __CFADD__(v12, a3);
  v14 = v12 + a3;
  if (v13 || v14 > *(a1 + 16))
  {
    v15 = "too many bytes received";
    v16 = 923;
LABEL_6:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", v16, 55, 0, v15, a7, a8, v44);
    v9 = -1;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v19 = __src;
    v9 = 0;
    v21 = (a1 + 64);
    v20 = *(a1 + 64);
    v45 = (a1 + 64);
    do
    {
      if (v10 >= 0x10000 - v20)
      {
        v22 = 0x10000 - v20;
      }

      else
      {
        v22 = v10;
      }

      v23 = v20 + v22;
      if (__CFADD__(v20, v22) || (v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v24 = *(a1 + 72);
      if (v24 < v23)
      {
        do
        {
          while (!v24)
          {
            v24 = 0x4000;
            v26 = 0x4000;
            if (v23 <= 0x4000)
            {
              goto LABEL_25;
            }
          }

          v25 = v24 >> 1;
          if ((v24 & (v24 >> 1)) != 0)
          {
            v25 = v24 & (v24 >> 1);
          }

          v24 += v25;
        }

        while (v24 < v23);
        v26 = v24;
        if (v24 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_69;
        }

LABEL_25:
        v27 = *(a1 + 80);
        v28 = realloc(v27, v26);
        if (v28)
        {
          *(a1 + 72) = v26;
          *(a1 + 80) = v28;
          goto LABEL_27;
        }

        free(v27);
LABEL_69:
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
LABEL_70:
        v15 = "append to ibuf";
        v16 = 928;
        goto LABEL_6;
      }

LABEL_27:
      v29 = *(a1 + 80);
      if (v19)
      {
        memcpy((v29 + *v21), v19, v22);
      }

      else if (v29)
      {
        memset_s((v29 + *v21), v22, 0, v22);
      }

      v20 = *v21 + v22;
      *v21 = v20;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v30 = *(a1 + 24) + v22;
      *(a1 + 24) = v30;
      if (v20 == 0x10000 || v20 && v30 == *(a1 + 16))
      {
        v31 = (v30 + 0xFFFFFFFFFFFFLL) >> 16;
        if (*(a1 + 44) <= v31)
        {
          v42 = "invalid state";
          v43 = 740;
          goto LABEL_72;
        }

        v32 = *(a1 + 88);
        if ((*(a1 + 96) - v32) <= 0x10000)
        {
          if ((sub_1000E3A2C(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            v42 = "flushing obuf";
            v43 = 744;
            goto LABEL_72;
          }

          v20 = *(a1 + 64);
          v32 = *(a1 + 88);
        }

        v33 = *(a1 + 80);
        v34 = (*(a1 + 104) + v32);
        v35 = *(a1 + 32);
        if (v35 != 10 && v20 >= 0x78 && ((v36 = v35 - 3, v36 > 0xB) ? (v37 = -1) : (v37 = dword_10037C09C[v36]), (v38 = compression_encode_buffer(v34, 0x10000uLL, *(a1 + 80), v20, *(a1 + 56), v37)) != 0 && ((*(a1 + 8) & 1) != 0 ? (__src = ((v38 >> 6) + 32)) : (__src = 0), (v39 = &__src[v38]) != 0 && v39 < v20)))
        {
          if (v39 > v38)
          {
            memset_s(&v34[v38], __src, 0, __src);
          }
        }

        else
        {
          *v34 = *(a1 + 36);
          memcpy(v34 + 1, v33, v20);
          v39 = (v20 + 1);
        }

        *(*(a1 + 48) + 4 * (v31 + 1)) = *(*(a1 + 48) + 4 * v31) + v39;
        if (v39)
        {
          v40 = *(a1 + 88);
          v13 = __CFADD__(v40, v39);
          v41 = &v39[v40];
          if (v13 || v41 > *(a1 + 96))
          {
            v42 = "expand obuf";
            v43 = 780;
LABEL_72:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", v43, 55, 0, v42, a7, a8, v44);
            v15 = "flushing ibuf";
            v16 = 938;
            goto LABEL_6;
          }

          *(a1 + 88) = v41;
        }

        if (*(a1 + 24) == *(a1 + 16) && (sub_1000E3A2C(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
        {
          v42 = "flushing obuf";
          v43 = 784;
          goto LABEL_72;
        }

        v20 = 0;
        v21 = v45;
        *v45 = 0;
      }

      v19 += v22;
      v9 += v22;
      v10 -= v22;
    }

    while (v10);
    if ((v9 & 0x8000000000000000) == 0)
    {
      return v9;
    }
  }

  v17 = 0;
  atomic_compare_exchange_strong((a1 + 120), &v17, 1u);
  return v9;
}