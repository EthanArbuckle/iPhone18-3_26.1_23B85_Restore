Swift::Int sub_100051FE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000520B4()
{
  String.hash(into:)();
}

Swift::Int sub_100052170()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10005223C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060FB0(*a1);
  *a2 = result;
  return result;
}

void sub_10005226C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E656B6F54776164;
  v4 = 0xE90000000000006ELL;
  v5 = 0x656B6F5468747561;
  if (*v1 != 2)
  {
    v5 = 0x65746167656C6564;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x736C744D786F6E6BLL;
    v2 = 0xEC00000068747541;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000522F8()
{
  v1 = 0x6E656B6F54776164;
  v2 = 0x656B6F5468747561;
  if (*v0 != 2)
  {
    v2 = 0x65746167656C6564;
  }

  if (*v0)
  {
    v1 = 0x736C744D786F6E6BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100052380@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100060FB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000523B4(uint64_t a1)
{
  v2 = sub_10005FC78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000523F0(uint64_t a1)
{
  v2 = sub_10005FC78();

  return CodingKey.debugDescription.getter(a1, v2);
}

id KnoxServiceClient.__allocating_init(authToken:delegate:trustRootPEMPath:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9 - 8];
  sub_100003B20(a2, v17);
  if (qword_1004A6A88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for URL();
  v12 = sub_1000270B4(v11, qword_1004A7980);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v10, v12, v11);
  (*(v13 + 56))(v10, 0, 1, v11);
  v14 = sub_10005F210(a1, v17, v10, a3, a4);

  sub_100003C3C(a2);
  return v14;
}

id KnoxServiceClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  [*&v0[v1] finishTasksAndInvalidate];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for KnoxServiceClient();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t static KnoxServiceClient.serverInfo(url:timeout:extraHeaders:)(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v5 = sub_1000039E8(&qword_1004A6D30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013E54(a1, v10, &qword_1004A6D30);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v25 = xmmword_1003772E0;
    type metadata accessor for KnoxServiceClient.DoNothingDelegate();
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v17 = swift_allocObject();
    (*(v12 + 16))(v8, v14, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v16 = sub_100060FFC(0, &v25, v17, v8, 0, 0);
    (*(v12 + 8))(v14, v11);
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100013F2C(v10, &qword_1004A6D30);
  v25 = xmmword_1003772E0;
  type metadata accessor for KnoxServiceClient.DoNothingDelegate();
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v15 = swift_allocObject();
  (*(v12 + 56))(v8, 1, 1, v11);
  v16 = sub_100060FFC(0, &v25, v15, v8, 0, 0);
  if (a3)
  {
LABEL_5:

    sub_10005003C(v18);
  }

LABEL_6:
  if (v24)
  {
    v19 = v24;
    v20 = [v19 doubleValue];
    (*((swift_isaMask & *v16) + 0x208))(v20);
  }

  v21 = (*((swift_isaMask & *v16) + 0x310))();

  return v21;
}

void *sub_100052B9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t), uint64_t a7)
{
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v66 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = __chkstk_darwin(v17);
  v61 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(a1 + 184))(v18);
  v22 = v21;
  sub_100013E54(a5, aBlock, &qword_1004A7158);
  v23 = objc_allocWithZone(type metadata accessor for PointersTask());
  *&v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointers] = &_swiftEmptyArrayStorage;
  v24 = &v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_timeFilter];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *&v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_pointerClass] = a1;
  v25 = &v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_space];
  *v25 = a2;
  v25[1] = a3;
  v26 = &v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_type];
  *v26 = v20;
  v26[1] = v22;
  *&v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_matching] = a4;
  v27 = &v23[OBJC_IVAR____TtC16KnoxClientPublic12PointersTask_finalHandler];
  v60 = a6;
  *v27 = a6;
  *(v27 + 1) = a7;
  swift_beginAccess();

  v59[1] = a7;

  sub_100022E68(aBlock, v24);
  swift_endAccess();
  v28 = v70;
  v29 = sub_10003D38C(v28);

  v73 = 0;
  v74 = 0xE000000000000000;
  v30 = v29;
  _StringGuts.grow(_:)(23);

  v73 = 0x737265746E696F50;
  v74 = 0xEF202D206B736154;
  v31._countAndFlagsBits = a2;
  v31._object = a3;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 47;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v20;
  v33._object = v22;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 63;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v35);

  v36 = v73;
  v37 = v74;
  sub_100013F2C(aBlock, &qword_1004A7158);
  v38 = (v30 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  *v38 = v36;
  v38[1] = v37;

  type metadata accessor for PointerWithFields();
  v39 = swift_dynamicCastMetatype();
  if (v39 && (v40 = (*(v39 + 392))(a4)) != 0)
  {
    v41 = v40;

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_100061B64(&unk_1004A7860, v42, type metadata accessor for KnoxServiceClient.ClientError);
    v43 = swift_allocError();
    *v44 = v41;
    v45 = *((swift_isaMask & *v30) + 0x410);

    v45(v43);

    v46 = swift_allocError();
    *v47 = v41;

    v60(0, v46);
  }

  else
  {
    (*((swift_isaMask & *v30) + 0x1D0))(1);

    sub_10001AA40(0, &qword_1004A7840);
    v49 = v61;
    v48 = v62;
    v50 = v63;
    (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.userInitiated(_:), v63);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v48 + 8))(v49, v50);
    v52 = swift_allocObject();
    *(v52 + 16) = v30;
    aBlock[4] = sub_100061B30;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100053364;
    aBlock[3] = &unk_10047E4F8;
    v53 = _Block_copy(aBlock);
    v54 = v30;
    v55 = v64;
    static DispatchQoS.unspecified.getter();
    v71 = &_swiftEmptyArrayStorage;
    sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000039E8(&qword_1004A7A78);
    sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
    v56 = v66;
    v57 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);

    (*(v68 + 8))(v56, v57);
    (*(v65 + 8))(v55, v67);
  }

  return v30;
}

uint64_t sub_100053364(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_1000533A8(void *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v56 = a5;
  v57 = a6;
  v55 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS.QoSClass();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  __chkstk_darwin(v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  (*(v20 + 16))(v18, a2);
  LOBYTE(aBlock[0]) = v19;
  v21 = objc_allocWithZone(type metadata accessor for DownloadTask());
  v22 = v7;
  v23 = a1;
  v24 = DownloadTask.init(client:destinationFileURL:pointer:downloadType:)(v22, v18, v23, aBlock);
  v25 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 32);
  sub_10000E2A8((v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate), *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 24));
  v26 = *(v25 + 8);
  v27 = v24;
  v26(0.0);
  v28 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_networkServiceType;
  v29 = swift_beginAccess();
  *&v27[v28] = v55;
  if ((*((swift_isaMask & *v27) + 0x2D0))(v29))
  {
    v30 = (*((swift_isaMask & *v27) + 0x150))();

    if (v30)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100061B64(&unk_1004A7860, v31, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v32 = v30;
    }

    v56();
  }

  else
  {
    sub_1000BF3B4(*(*&v23[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_size), a2, 1);
    v34 = (swift_isaMask & *v27) + 464;
    v46 = *((swift_isaMask & *v27) + 0x1D0);
    v55 = v34;
    v46(1);
    sub_10001AA40(0, &qword_1004A7840);
    v35 = v47;
    v36 = v48;
    (*(v47 + 104))(v15, enum case for DispatchQoS.QoSClass.userInitiated(_:), v48);
    v37 = static OS_dispatch_queue.global(qos:)();
    (*(v35 + 8))(v15, v36);
    v38 = swift_allocObject();
    v38[2] = v27;
    v38[3] = v22;
    v39 = v57;
    v38[4] = v56;
    v38[5] = v39;
    aBlock[4] = sub_100061BB0;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100053364;
    aBlock[3] = &unk_10047E548;
    v40 = _Block_copy(aBlock);
    v41 = v22;
    v42 = v27;

    v43 = v49;
    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000039E8(&qword_1004A7A78);
    sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
    v44 = v51;
    v45 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v53 + 8))(v44, v45);
    (*(v50 + 8))(v43, v52);

    v46(1);
  }

  return v27;
}

void sub_100053ACC(char *a1, void *a2, void (*a3)(uint64_t))
{
  v6 = *((swift_isaMask & *a2) + 0x1B8);
  v7 = v6();
  v8 = v7 - 1;
  if (v7)
  {
    v9 = (*((swift_isaMask & *a2) + 0x170))();
    sub_10004D8C4(v8, v9);
    v10 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
    swift_beginAccess();
    v11 = *&a1[v10];
    if (v11)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100061B64(&unk_1004A7860, v12, type metadata accessor for KnoxServiceClient.ClientError);
      v13 = swift_allocError();
      *v14 = v11;
    }

    else
    {
      v13 = 0;
    }

    a3(v13);

    sub_10002D5CC();
    sub_1000039E8(&unk_1004A7370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100376F00;
    v16 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
    v17 = swift_beginAccess();
    v18 = *&a1[v16];
    *(v15 + 56) = &type metadata for UInt;
    *(v15 + 64) = &protocol witness table for UInt;
    *(v15 + 32) = v18;
    v19 = (v6)(v17);
    *(v15 + 96) = &type metadata for UInt;
    *(v15 + 104) = &protocol witness table for UInt;
    *(v15 + 72) = v19;
    v20 = [a1 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = sub_10001A9EC();
    *(v15 + 112) = v21;
    *(v15 + 120) = v23;
    sub_10001AA40(0, &qword_1004A7380);
    v24 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100053D88(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v54 = *(v18 - 8);
  v55 = v18;
  __chkstk_darwin(v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(type metadata accessor for DecryptionInfoTask());
  *&v21[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents] = 0;
  v22 = &v21[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_digest];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v21[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_space];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v21[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler];
  *v24 = a6;
  *(v24 + 1) = a7;

  v25 = v7;
  v26 = sub_10003D38C(v25);

  aBlock = 0;
  v65 = 0xE000000000000000;
  v27 = v26;
  _StringGuts.grow(_:)(26);

  aBlock = 0xD000000000000015;
  v65 = 0x800000010042CBB0;
  v28._countAndFlagsBits = a3;
  v28._object = a4;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 47;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = a1;
  v30._object = a2;
  String.append(_:)(v30);

  v31 = aBlock;
  v32 = v65;
  v33 = &v27[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v33 = v31;
  v33[1] = v32;

  if (a5 && (__chkstk_darwin(v34), *(&v53 - 2) = a5, v35 = a5, sub_1000039E8(&qword_1004A72D8), OS_dispatch_queue.sync<A>(execute:)(), v36 = v62, v37 = v63, v38 = *&v27[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue], v39 = swift_allocObject(), v39[2] = v27, v39[3] = v36, v39[4] = v37, v40 = swift_allocObject(), *(v40 + 16) = sub_10001F858, *(v40 + 24) = v39, v68 = sub_10001FA40, v69 = v40, aBlock = _NSConcreteStackBlock, v65 = 1107296256, v66 = sub_10003885C, v67 = &unk_10047E610, v41 = _Block_copy(&aBlock), v42 = v27, , , dispatch_sync(v38, v41), v35, _Block_release(v41), LOBYTE(v35) = swift_isEscapingClosureAtFileLocation(), , result = , (v35 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_10001AA40(0, &qword_1004A7840);
    v45 = v54;
    v44 = v55;
    (*(v54 + 104))(v20, enum case for DispatchQoS.QoSClass.userInitiated(_:), v55);
    v46 = static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v20, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = v27;
    v68 = sub_100061BBC;
    v69 = v47;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100053364;
    v67 = &unk_10047E598;
    v48 = _Block_copy(&aBlock);
    v49 = v27;
    v50 = v56;
    static DispatchQoS.unspecified.getter();
    v62 = &_swiftEmptyArrayStorage;
    sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000039E8(&qword_1004A7A78);
    sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
    v51 = v58;
    v52 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v60 + 8))(v51, v52);
    (*(v57 + 8))(v50, v59);

    (*((swift_isaMask & *v49) + 0x1D0))(1);

    return v49;
  }

  return result;
}

char *sub_10005448C()
{
  v1 = objc_allocWithZone(type metadata accessor for PingTask());
  v2 = v0;
  v3 = sub_10003D38C(v2);

  v4 = &v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v4 = 0x6B736154676E6950;
  *(v4 + 1) = 0xE800000000000000;

  v5 = sub_1000AF084();

  return v5;
}

uint64_t sub_100054534()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for ServerInfoTask());
  v13 = ServerInfoTask.init(client:)(v0);

  v14 = *((swift_isaMask & *v13) + 0x150);
  v15 = v13;
  v16 = v14();

  if (v16)
  {
    v18 = v15;
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_100061B64(&unk_1004A7860, v19, type metadata accessor for KnoxServiceClient.ClientError);
  }

  else
  {
    v32 = v6;
    v33 = v8;
    v35 = v5;
    v36 = v11;
    v34 = v3;
    v21 = v40;
    __chkstk_darwin(v17);
    v29[-2] = v15;
    sub_1000039E8(&qword_1004A7A88);
    OS_dispatch_queue.sync<A>(execute:)();
    v16 = v42;
    if (v42)
    {

      return v16;
    }

    v18 = v15;
    v30 = 0x800000010042CBD0;
    v31 = 0x800000010042CC40;
    v41 = type metadata accessor for KnoxServiceClient.ClientError();
    v16 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v29[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v42 = &_swiftEmptyArrayStorage;
    sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v37 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
    v23 = v38;
    v24 = v39;
    (*(v39 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v21);
    static OS_dispatch_queue.global(qos:)();
    (*(v24 + 8))(v23, v21);
    v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v16 + 16), "serverInfo()");
    *(v16 + 29) = 0;
    *(v16 + 30) = -5120;
    v26 = v30;
    *(v16 + 32) = 0xD000000000000062;
    *(v16 + 40) = v26;
    *(v16 + 56) = 14;
    *(v16 + 48) = 941;
    v27 = v31;
    *(v16 + 64) = 0xD000000000000017;
    *(v16 + 72) = v27;
    *(v16 + 80) = 0;
    *(v16 + 88) = v25;
    sub_100061B64(&unk_1004A7860, v28, type metadata accessor for KnoxServiceClient.ClientError);
  }

  swift_allocError();
  *v20 = v16;
  swift_willThrow();

  return v16;
}

char *sub_100054ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  objc_allocWithZone(type metadata accessor for PointerTypesTask());

  v18 = v4;
  v19 = PointerTypesTask.init(client:space:finalHandler:)(v18, v28, a2, sub_100061C40, v17);
  sub_10001AA40(0, &qword_1004A7840);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  aBlock[4] = sub_100061C48;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_10047E688;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  v24 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v9, v24);
  (*(v30 + 8))(v12, v31);

  v25 = *((swift_isaMask & *v23) + 0x1D0);
  v26 = v23;
  v25(1);

  return v26;
}

uint64_t sub_100054F64(unint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t), uint64_t a4)
{
  v43 = a1;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    v35 = v11;
    v36 = v16;
    v37 = v10;
    v38 = v9;
    v39 = v13;
    v40 = a4;
    v41 = a3;
    if (v43)
    {
      return v41(v43, 0);
    }

    else
    {
      v43 = 0x800000010042D150;
      v34 = 0x800000010042CBD0;
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v19._countAndFlagsBits = 0xD000000000000046;
      v19._object = 0x800000010042D180;
      String.append(_:)(v19);
      v44 = 0;
      sub_1000039E8(&qword_1004A7CF0);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v32 = v46;
      v33 = v45;
      v31[2] = type metadata accessor for KnoxServiceClient.ClientError();
      v21 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v31[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v45 = &_swiftEmptyArrayStorage;
      sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v35 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
      v22 = v42;
      v23 = v38;
      (*(v42 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v7);
      static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v23, v7);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v25 = v43;
      *(v21 + 16) = 0xD000000000000023;
      *(v21 + 24) = v25;
      *(v21 + 32) = 0xD000000000000062;
      v26 = v34;
      *(v21 + 56) = 14;
      *(v21 + 40) = v26;
      *(v21 + 48) = 965;
      v27 = v32;
      *(v21 + 64) = v33;
      *(v21 + 72) = v27;
      *(v21 + 80) = 0;
      *(v21 + 88) = v24;
      sub_100061B64(&unk_1004A7860, v28, type metadata accessor for KnoxServiceClient.ClientError);
      v29 = swift_allocError();
      *v30 = v21;

      v41(0, v29);
    }
  }
}

char *sub_1000554C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v52 - 8);
  v14 = __chkstk_darwin(v52);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(a1 + 184))(v14);
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = type metadata accessor for UniqueUpdatesTask();
  aBlock = 0u;
  v61 = 0u;
  v62 = 0;
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = &_swiftEmptyArrayStorage;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = &_swiftEmptyArrayStorage;
  v24 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v24 = a2;
  *(v24 + 1) = a3;
  v25 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v25 = v17;
  v25[1] = v19;
  swift_beginAccess();

  sub_100022E68(&aBlock, v23);
  swift_endAccess();
  v26 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v26 = sub_100061C6C;
  *(v26 + 1) = v20;
  v26[16] = 0;

  v27 = v51[1];
  v28 = sub_10003D38C(v27);

  v66 = 0;
  v67 = 0xE000000000000000;
  v29 = v28;
  _StringGuts.grow(_:)(36);

  v64 = 0xD00000000000001ALL;
  v65 = 0x800000010042CC60;
  v30 = &v29[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];

  v33._countAndFlagsBits = v32;
  v33._object = v31;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x3A6570797420;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35 = &v29[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  v38._countAndFlagsBits = v37;
  v38._object = v36;
  String.append(_:)(v38);

  v39 = v64;
  v40 = v65;
  sub_100013F2C(&aBlock, &qword_1004A7158);
  v41 = &v29[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v41 = v39;
  v41[1] = v40;

  sub_10001AA40(0, &qword_1004A7840);
  v42 = v52;
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.userInitiated(_:), v52);
  v43 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  v62 = sub_100064E60;
  v63 = v44;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_100053364;
  *(&v61 + 1) = &unk_10047E700;
  v45 = _Block_copy(&aBlock);
  v46 = v29;
  v47 = v53;
  static DispatchQoS.unspecified.getter();
  v59 = &_swiftEmptyArrayStorage;
  sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  v49 = v54;
  v48 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v58 + 8))(v49, v48);
  (*(v56 + 8))(v47, v57);

  (*((swift_isaMask & *v46) + 0x1D0))(1);

  return v46;
}

uint64_t sub_100055B84(unint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t), uint64_t a4)
{
  v43 = a1;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    v35 = v11;
    v36 = v16;
    v37 = v10;
    v38 = v9;
    v39 = v13;
    v40 = a4;
    v41 = a3;
    if (v43)
    {
      return v41(v43, 0);
    }

    else
    {
      v43 = 0x800000010042D120;
      v34 = 0x800000010042CBD0;
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v19._countAndFlagsBits = 0xD000000000000041;
      v19._object = 0x800000010042D0D0;
      String.append(_:)(v19);
      v44 = 0;
      sub_1000039E8(&qword_1004A7CE8);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v32 = v46;
      v33 = v45;
      v31[2] = type metadata accessor for KnoxServiceClient.ClientError();
      v21 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v31[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v45 = &_swiftEmptyArrayStorage;
      sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v35 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
      v22 = v42;
      v23 = v38;
      (*(v42 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v7);
      static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v23, v7);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v25 = v43;
      *(v21 + 16) = 0xD000000000000022;
      *(v21 + 24) = v25;
      *(v21 + 32) = 0xD000000000000062;
      v26 = v34;
      *(v21 + 56) = 14;
      *(v21 + 40) = v26;
      *(v21 + 48) = 1026;
      v27 = v32;
      *(v21 + 64) = v33;
      *(v21 + 72) = v27;
      *(v21 + 80) = 0;
      *(v21 + 88) = v24;
      sub_100061B64(&unk_1004A7860, v28, type metadata accessor for KnoxServiceClient.ClientError);
      v29 = swift_allocError();
      *v30 = v21;

      v41(0, v29);
    }
  }
}

char *sub_1000560E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v52 - 8);
  __chkstk_darwin(v52);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003B20(a4, aBlock);
  v18 = (*(a1 + 184))(v17);
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  sub_100003B20(aBlock, v64);
  v22 = objc_allocWithZone(type metadata accessor for UniqueUpdatesTask());
  v23 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = &_swiftEmptyArrayStorage;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = &_swiftEmptyArrayStorage;
  v24 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v24 = a2;
  *(v24 + 1) = a3;
  v25 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v25 = v18;
  v25[1] = v20;
  swift_beginAccess();

  sub_100022E68(v64, v23);
  swift_endAccess();
  v26 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v26 = sub_100061C74;
  *(v26 + 1) = v21;
  v26[16] = 1;

  v27 = v51[1];
  v28 = sub_10003D38C(v27);

  v62 = 0;
  v63 = 0xE000000000000000;
  v29 = v28;
  _StringGuts.grow(_:)(36);

  v60 = 0xD00000000000001ALL;
  v61 = 0x800000010042CC60;
  v30 = &v29[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];

  v33._countAndFlagsBits = v32;
  v33._object = v31;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x3A6570797420;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35 = &v29[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  v38._countAndFlagsBits = v37;
  v38._object = v36;
  String.append(_:)(v38);

  v39 = v60;
  v40 = v61;
  sub_100013F2C(v64, &qword_1004A7158);
  sub_100003C3C(aBlock);
  v41 = &v29[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v41 = v39;
  v41[1] = v40;

  sub_10001AA40(0, &qword_1004A7840);
  v42 = v52;
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.userInitiated(_:), v52);
  v43 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  aBlock[4] = sub_100061C7C;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_10047E778;
  v45 = _Block_copy(aBlock);
  v46 = v29;
  v47 = v53;
  static DispatchQoS.unspecified.getter();
  v64[0] = &_swiftEmptyArrayStorage;
  sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  v48 = v54;
  v49 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v58 + 8))(v48, v49);
  (*(v56 + 8))(v47, v57);

  (*((swift_isaMask & *v46) + 0x1D0))(1);

  return v46;
}

uint64_t sub_1000567EC(unint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t), uint64_t a4)
{
  v42 = a1;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    v34 = v11;
    v35 = v16;
    v36 = v10;
    v37 = v9;
    v38 = v13;
    v39 = a4;
    v40 = a3;
    if (v42)
    {
      return v40(v42, 0);
    }

    else
    {
      v42 = 0x800000010042D0A0;
      v33 = 0x800000010042CBD0;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v19._countAndFlagsBits = 0xD000000000000041;
      v19._object = 0x800000010042D0D0;
      String.append(_:)(v19);
      v43 = 0;
      sub_1000039E8(&qword_1004A7CE0);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v31 = v45;
      v32 = v44;
      v30[2] = type metadata accessor for KnoxServiceClient.ClientError();
      v21 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v30[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v44 = &_swiftEmptyArrayStorage;
      sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v34 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
      v22 = v41;
      v23 = v37;
      (*(v41 + 104))(v37, enum case for DispatchQoS.QoSClass.default(_:), v7);
      static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v23, v7);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v21 + 16) = 0xD00000000000002DLL;
      *(v21 + 24) = v42;
      *(v21 + 32) = 0xD000000000000062;
      v25 = v33;
      *(v21 + 56) = 14;
      *(v21 + 40) = v25;
      *(v21 + 48) = 1058;
      v26 = v31;
      *(v21 + 64) = v32;
      *(v21 + 72) = v26;
      *(v21 + 80) = 0;
      *(v21 + 88) = v24;
      sub_100061B64(&unk_1004A7860, v27, type metadata accessor for KnoxServiceClient.ClientError);
      v28 = swift_allocError();
      *v29 = v21;

      v40(0, v28);
    }
  }
}

id sub_100056D4C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(type metadata accessor for RawRequestTask());
  v8 = RawRequestTask.init(client:url:)(v1, v5);
  v9 = sub_10004B0FC();

  return v9;
}

char *sub_100056E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v35 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v36 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v12 + 16);
  v34(v14, a1, v11);
  v15 = objc_allocWithZone(type metadata accessor for RawRequestTask());
  v33 = v3;
  v16 = RawRequestTask.init(client:url:)(v33, v14);
  v17 = *((swift_isaMask & *v16) + 0x1D0);
  v18 = v16;
  v38 = v18;
  v17(1);

  sub_10001AA40(0, &qword_1004A7840);
  v19 = v37;
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v37);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v19);
  v34(v14, v35, v11);
  v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v22 = (v36 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v33;
  (*(v12 + 32))(v23 + v21, v14, v11);
  v25 = (v23 + v22);
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  aBlock[4] = sub_100061D7C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_10047E7C8;
  v27 = _Block_copy(aBlock);
  v28 = v24;

  v29 = v39;
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  v31 = v42;
  v30 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v46 + 8))(v31, v30);
  (*(v44 + 8))(v29, v45);

  return v38;
}

void sub_1000573A0(void *a1, uint64_t a2, void (*a3)(id))
{
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = objc_allocWithZone(type metadata accessor for RawRequestTask());
  v11 = RawRequestTask.init(client:url:)(a1, v8);
  v12 = sub_10004B0FC();

  a3(v12);
}

char *sub_1000574B8(void *a1, uint64_t a2, void *a3, char *a4, void (*a5)(uint64_t), void (*a6)(void), uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v55 = a5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  __chkstk_darwin(v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a2);

  v22 = v7;
  v23 = a1;

  TaskC6client18outputDirectoryURL7pointer19includePathPatterns07excludelM0AcA0a7ServiceB0C_10Foundation0I0VAA0A7PointerCSaySSGSgAQtcfC_0 = _s16KnoxClientPublic11ExtractTaskC6client18outputDirectoryURL7pointer19includePathPatterns07excludelM0AcA0a7ServiceB0C_10Foundation0I0VAA0A7PointerCSaySSGSgAQtcfC_0(v22, v20, v23, a3, a4);
  v25 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 32);
  sub_10000E2A8((v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate), *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 24));
  v26 = *(v25 + 8);
  v27 = TaskC6client18outputDirectoryURL7pointer19includePathPatterns07excludelM0AcA0a7ServiceB0C_10Foundation0I0VAA0A7PointerCSaySSGSgAQtcfC_0;
  v26(0.0);
  v28 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  v29 = swift_beginAccess();
  *&v27[v28] = v55;
  v30 = (*((swift_isaMask & *v27) + 0x2D0))(v29);
  v31 = swift_isaMask & *v27;
  if (v30)
  {
    v32 = v56;
    v33 = (*((swift_isaMask & *v27) + 0x150))();

    if (v33)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100061B64(&unk_1004A7860, v34, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v35 = v33;
    }

    v32();
  }

  else
  {
    v47 = v31 + 464;
    v55 = *(v31 + 464);
    v55(1);
    sub_10001AA40(0, &qword_1004A7840);
    v36 = v48;
    (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.userInitiated(_:), v48);
    v37 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v17, v36);
    v38 = swift_allocObject();
    v38[2] = v27;
    v38[3] = v22;
    v39 = v57;
    v38[4] = v56;
    v38[5] = v39;
    aBlock[4] = sub_100061E10;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100053364;
    aBlock[3] = &unk_10047E818;
    v40 = _Block_copy(aBlock);
    v41 = v22;
    v42 = v27;

    v43 = v49;
    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000039E8(&qword_1004A7A78);
    sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
    v44 = v51;
    v45 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v53 + 8))(v44, v45);
    (*(v50 + 8))(v43, v52);

    v55(1);
  }

  return v27;
}

char *sub_100057B48(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void (*a6)(uint64_t), void (*a7)(void), uint64_t a8)
{
  v65 = a7;
  v66 = a8;
  v64 = a6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a2);
  v23 = (*(a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
  v24 = *v23;
  v25 = v23[1];
  v27 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space);
  v26 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space + 8);

  v28 = v8;

  v29 = sub_100019890(v28, v21, v24, v25, v27, v26, a3, a4, a5);
  v30 = *(v28 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 32);
  sub_10000E2A8((v28 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate), *(v28 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate + 24));
  v31 = *(v30 + 8);
  v32 = v29;
  v31(0.0);
  v33 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  v34 = swift_beginAccess();
  *&v32[v33] = v64;
  v35 = (*((swift_isaMask & *v32) + 0x2D0))(v34);
  v36 = swift_isaMask & *v32;
  if (v35)
  {
    v37 = v65;
    v38 = (*((swift_isaMask & *v32) + 0x150))();

    if (v38)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100061B64(&unk_1004A7860, v39, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v40 = v38;
    }

    v37();
  }

  else
  {
    v54 = v36 + 464;
    v64 = *(v36 + 464);
    v64(1);
    sub_10001AA40(0, &qword_1004A7840);
    v42 = v56;
    v41 = v57;
    v43 = v55;
    (*(v56 + 104))(v55, enum case for DispatchQoS.QoSClass.userInitiated(_:), v57);
    v44 = static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v41);
    v45 = swift_allocObject();
    v45[2] = v32;
    v45[3] = v28;
    v46 = v66;
    v45[4] = v65;
    v45[5] = v46;
    aBlock[4] = sub_100061E84;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100053364;
    aBlock[3] = &unk_10047E868;
    v47 = _Block_copy(aBlock);
    v48 = v28;
    v49 = v32;

    v50 = v58;
    static DispatchQoS.unspecified.getter();
    v67 = &_swiftEmptyArrayStorage;
    sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000039E8(&qword_1004A7A78);
    sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
    v51 = v60;
    v52 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v62 + 8))(v51, v52);
    (*(v59 + 8))(v50, v61);

    v64(1);
  }

  return v32;
}

void sub_10005824C(char *a1, void *a2, void (*a3)(uint64_t))
{
  v6 = *((swift_isaMask & *a2) + 0x1B8);
  v7 = v6();
  v8 = v7 - 1;
  if (v7)
  {
    v9 = (*((swift_isaMask & *a2) + 0x170))();
    sub_10004E0A8(v8, v9);
    v10 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
    swift_beginAccess();
    v11 = *&a1[v10];
    if (v11)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100061B64(&unk_1004A7860, v12, type metadata accessor for KnoxServiceClient.ClientError);
      v13 = swift_allocError();
      *v14 = v11;
    }

    else
    {
      v13 = 0;
    }

    a3(v13);

    sub_1000039E8(&unk_1004A7370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100376F00;
    v16 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
    v17 = swift_beginAccess();
    v18 = *&a1[v16];
    *(v15 + 56) = &type metadata for UInt;
    *(v15 + 64) = &protocol witness table for UInt;
    *(v15 + 32) = v18;
    v19 = (v6)(v17);
    *(v15 + 96) = &type metadata for UInt;
    *(v15 + 104) = &protocol witness table for UInt;
    *(v15 + 72) = v19;
    v20 = [a1 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = sub_10001A9EC();
    *(v15 + 112) = v21;
    *(v15 + 120) = v23;
    sub_10001AA40(0, &qword_1004A7380);
    v24 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }
}

char *sub_100058504(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(type metadata accessor for ArchiveDecryptionInfoTask());
  *&v19[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_archiveDecryptionComponents] = 0;
  v20 = &v19[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_digest];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v19[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_space];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v19[OBJC_IVAR____TtC16KnoxClientPublic25ArchiveDecryptionInfoTask_finalHandler];
  *v22 = a5;
  *(v22 + 1) = a6;

  v23 = v40[1];
  v24 = sub_10003D38C(v23);

  aBlock = 0;
  v49 = 0xE000000000000000;
  v25 = v24;
  _StringGuts.grow(_:)(33);

  aBlock = 0xD00000000000001CLL;
  v49 = 0x800000010042CC80;
  v26._countAndFlagsBits = a3;
  v26._object = a4;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 47;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = a1;
  v28._object = a2;
  String.append(_:)(v28);

  v29 = aBlock;
  v30 = v49;
  v31 = &v25[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v31 = v29;
  v31[1] = v30;

  sub_10001AA40(0, &qword_1004A7840);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.userInitiated(_:), v15);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v18, v15);
  v33 = swift_allocObject();
  *(v33 + 16) = v25;
  v52 = sub_100061EE8;
  v53 = v33;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100053364;
  v51 = &unk_10047E8B8;
  v34 = _Block_copy(&aBlock);
  v35 = v25;
  v36 = v41;
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  sub_100061B64(&qword_1004A7A70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  v38 = v42;
  v37 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v46 + 8))(v38, v37);
  (*(v44 + 8))(v36, v45);

  (*((swift_isaMask & *v35) + 0x1D0))(1);

  return v35;
}

void sub_100058A50(void *a1, void (*a2)(uint64_t, char *))
{
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v4 = a1;
  v5 = sub_100072164(v4);
  v6 = v4;
  a2(v5, v6);
}

void sub_100058B18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v3)
  {
    v6 = *((swift_isaMask & *v3) + 0x68);
    v7 = v3;
    v6(a1, a2);
  }
}

KnoxClientPublic::KnoxServiceClient::HTTPMethod_optional __swiftcall KnoxServiceClient.HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047A8F8, v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t KnoxServiceClient.HTTPMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 1145128264;
  v3 = 1414745936;
  v4 = 5526864;
  if (v1 != 3)
  {
    v4 = 0x4843544150;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5522759;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100058CBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100058D7C()
{
  String.hash(into:)();
}

Swift::Int sub_100058E28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100058EF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1145128264;
  v5 = 0xE400000000000000;
  v6 = 1414745936;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (v2 != 3)
  {
    v8 = 0x4843544150;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5522759;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

KnoxClientPublic::KnoxServiceClient::ClientError::ErrorKind_optional __swiftcall KnoxServiceClient.ClientError.ErrorKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t KnoxServiceClient.ClientError.ErrorKind.rawValue.getter()
{
  result = 0x676E69646F636544;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000024;
    case 2:
      return 0xD000000000000019;
    case 3:
    case 9:
      return 0xD000000000000014;
    case 4:
      return 0xD000000000000018;
    case 5:
      return 0xD000000000000013;
    case 6:
      return 0xD000000000000017;
    case 7:
      return result;
    case 8:
      return 0x676E69646F636E45;
    case 0xA:
      return 0x756C696166204F49;
    case 0xB:
      v2 = 1397511277;
      goto LABEL_8;
    case 0xC:
      v2 = 1397440851;
LABEL_8:
      v3 = v2 & 0xFFFF0000FFFFFFFFLL | 0x652000000000;
      goto LABEL_20;
    case 0xD:
      return 0xD000000000000013;
    case 0xE:
      return 0x616620726568744FLL;
    case 0xF:
      return 0xD000000000000010;
    case 0x10:
      return 0xD000000000000015;
    case 0x11:
      return 0x726F727245534ELL;
    case 0x12:
      v3 = 0x454C5255534ELL;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
      break;
    case 0x13:
      result = 0xD000000000000029;
      break;
    case 0x14:
      result = 0x74756F656D6954;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_100059394()
{
  v0 = KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  v2 = v1;
  if (v0 == KnoxServiceClient.ClientError.ErrorKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_100059430()
{
  Hasher.init(_seed:)();
  KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100059498()
{
  KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  String.hash(into:)();
}

Swift::Int sub_1000594FC()
{
  Hasher.init(_seed:)();
  KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005956C@<X0>(uint64_t *a1@<X8>)
{
  result = KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

KnoxClientPublic::KnoxServiceClient::ClientError::ErrorCode_optional __swiftcall KnoxServiceClient.ClientError.ErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 4:
      goto LABEL_15;
    case 5:
      v2 = 1;
      goto LABEL_15;
    case 6:
      v2 = 2;
LABEL_15:
      v3 = v2;
      goto LABEL_16;
    case 7:
LABEL_16:
      *v1 = v3;
      return rawValue;
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 41:
    case 42:
    case 43:
    case 44:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 71:
    case 72:
    case 73:
    case 74:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 86:
    case 87:
    case 88:
    case 89:
      goto LABEL_5;
    case 10:
      *v1 = 4;
      return rawValue;
    case 15:
      *v1 = 5;
      return rawValue;
    case 20:
      *v1 = 6;
      return rawValue;
    case 30:
      *v1 = 7;
      return rawValue;
    case 35:
      *v1 = 8;
      return rawValue;
    case 40:
      *v1 = 9;
      return rawValue;
    case 45:
      *v1 = 10;
      return rawValue;
    case 46:
      *v1 = 11;
      return rawValue;
    case 47:
      *v1 = 12;
      return rawValue;
    case 50:
      *v1 = 13;
      return rawValue;
    case 60:
      *v1 = 14;
      return rawValue;
    case 70:
      *v1 = 15;
      return rawValue;
    case 75:
      *v1 = 16;
      return rawValue;
    case 80:
      *v1 = 18;
      return rawValue;
    case 85:
      *v1 = 19;
      return rawValue;
    case 90:
      *v1 = 20;
      return rawValue;
    default:
      if (rawValue == 999)
      {
        *v1 = 17;
      }

      else
      {
LABEL_5:
        *v1 = 21;
      }

      return rawValue;
  }
}

Swift::Int sub_100059854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100377A40[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000598DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100377A40[v1]);
  return Hasher._finalize()();
}

uint64_t mTLSAuth.passwordPath.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t mTLSAuth.keyPath.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t KnoxServiceClient.ClientError.message.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *KnoxServiceClient.ClientError.nsError.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t KnoxServiceClient.ClientError.init(function:file:line:kind:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v27 = *a6;
  v25[1] = sub_10001AA40(0, &qword_1004A7840);
  v25[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v18 = v29;
  v17 = v30;
  (*(v29 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v30);
  static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v12, v17);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v32;
  *(v8 + 16) = v31;
  *(v8 + 24) = v20;
  v21 = v34;
  *(v8 + 32) = v33;
  *(v8 + 40) = v21;
  *(v8 + 56) = v27;
  v22 = v36;
  *(v8 + 48) = v35;
  v23 = v37;
  *(v8 + 64) = v22;
  *(v8 + 72) = v23;
  *(v8 + 80) = 0;
  *(v8 + 88) = v19;
  return v8;
}

uint64_t sub_100059DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a6;
  v51 = a4;
  v52 = a5;
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v45 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v42[1] = sub_10001AA40(0, &qword_1004A7840);
  v42[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v53._countAndFlagsBits = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v13 = v45;
  v14 = v46;
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v45);
  static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v13);
  v15 = v47;
  *(v15 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = [v14 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

LABEL_5:
    v22 = 18;
    goto LABEL_7;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_5;
  }

  v22 = 17;
LABEL_7:
  v23 = [v14 localizedDescription];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v54 = v24;
  v55 = v26;
  v27 = [v14 userInfo];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {

    goto LABEL_12;
  }

  v31 = sub_100013364(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_100003CA0(*(v28 + 56) + 32 * v31, &v53);

  if (swift_dynamicCast())
  {
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v53, " Failing URL: ");
    HIBYTE(v53._object) = -18;
    sub_10005E494(150);

    v34 = static String._fromSubstring(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    String.append(_:)(v53);
    goto LABEL_12;
  }

LABEL_13:
  v38 = v49;
  *(v15 + 16) = v48;
  *(v15 + 24) = v38;
  v39 = v51;
  *(v15 + 32) = v50;
  *(v15 + 40) = v39;
  *(v15 + 56) = v22;
  *(v15 + 48) = v52;
  v40 = v55;
  *(v15 + 64) = v54;
  *(v15 + 72) = v40;
  *(v15 + 80) = v14;
  return v15;
}

uint64_t KnoxServiceClient.ClientError.__allocating_init(function:file:line:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  type metadata accessor for KnoxServiceClient.ClientError();
  if (swift_dynamicCast())
  {

    v12 = *(v23 + 24);
    v13 = *(v23 + 40);
    v21 = *(v23 + 32);
    v22 = *(v23 + 16);
    v14 = *(v23 + 48);
    LOBYTE(v24) = *(v23 + 56);
    v15 = *(v23 + 64);
    v16 = *(v23 + 72);
    v17 = *(v6 + 136);

    v18 = v17(v22, v12, v21, v13, v14, &v24, v15, v16);
  }

  else
  {
    v19 = _convertErrorToNSError(_:)();
    swift_allocObject();
    v18 = sub_100059DCC(a1, a2, a3, a4, a5, v19);
  }

  return v18;
}

uint64_t sub_10005A530()
{
  result = (*(*v0 + 168))();
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A570()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  URL.init(fileURLWithPath:)();
  URL.absoluteURL.getter();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = URL.lastPathComponent.getter();
  v12 = v11;
  v9(v6, v2);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  LOBYTE(v24) = *(v1 + 56);
  v13 = KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  v15 = v14;

  v25 = v13;
  v26 = v15;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  String.append(_:)(*(v1 + 64));
  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  String.append(_:)(*(v1 + 16));
  v18._countAndFlagsBits = 544497952;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v10;
  v19._object = v12;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 58;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v24 = *(v1 + 48);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  return v25;
}

uint64_t sub_10005A770()
{
  result = (*(*v0 + 168))();
  if (v2)
  {
    String.append(_:)(*&result);

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
    String.append(_:)(v4);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10005A898()
{
  sub_1000039E8(&qword_1004A7A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = 0x6567617373656DLL;
  *(inited + 40) = 0xE700000000000000;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_100061F34(inited);
  swift_setDeallocating();
  sub_100013F2C(inited + 32, &qword_1004A7A98);
  return v4;
}

uint64_t KnoxServiceClient.ClientError.deinit()
{

  return v0;
}

uint64_t KnoxServiceClient.ClientError.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10005A9F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Error<>._domain.getter(a1, WitnessTable);
}

uint64_t sub_10005AA44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Error<>._code.getter(a1, WitnessTable);
}

unint64_t sub_10005AB04()
{
  v1 = *v0;
  sub_1000039E8(&qword_1004A7A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = 0x6567617373656DLL;
  *(inited + 40) = 0xE700000000000000;
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v5 = sub_100061F34(inited);
  swift_setDeallocating();
  sub_100013F2C(inited + 32, &qword_1004A7A98);
  return v5;
}

uint64_t sub_10005AC64()
{
  result = (*(**v0 + 168))();
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005ACB0()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000279B4(v2, qword_1004E2A10);
  sub_1000270B4(v0, qword_1004E2A10);
  CharacterSet.init(charactersIn:)();
  CharacterSet.inverted.getter();
  return (*(v1 + 8))(v4, v0);
}

void sub_10005ADB0(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v6 = v5;
  v74 = a3;
  v10 = type metadata accessor for URL();
  __chkstk_darwin(v10);
  (*(v12 + 16))(v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v13._countAndFlagsBits = _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0();
  v14._countAndFlagsBits = 0x6567412D72657355;
  v14._object = 0xEA0000000000746ELL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v13, v14);

  v77 = a4;
  URLRequest.httpMethod.setter();
  v15 = URL.host.getter();
  v17 = v16;
  v75 = v4;
  v18 = URL.host.getter();
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_7:

    return;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

LABEL_9:
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = *(v75 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders);
  }

  v22 = *(v21 + 16);

  if (v22)
  {
    swift_bridgeObjectRetain_n();
    sub_100013364(0x7A69726F68747541, 0xED00006E6F697461);
    v24 = v23;

    if (v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v21;
      sub_100026BFC(0x4445544341444552, 0xE800000000000000, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
    }

    sub_1000039E8(&unk_1004A7370);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100376A40;
    v27 = Dictionary.debugDescription.getter();
    v29 = v28;

    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10001A9EC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_10001AA40(0, &qword_1004A7380);
    v30 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v72[1] = a1;
  v73 = v6;
  v31 = 1 << *(v21 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v21 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  if (!v33)
  {
    while (1)
    {
LABEL_20:
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v21 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        goto LABEL_23;
      }
    }

    v47 = v75 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth;
    swift_beginAccess();
    if (*(v47 + 8) != 1)
    {
      sub_1000039E8(&unk_1004A7370);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100376A40;
      v53 = URL.debugDescription.getter();
      v55 = v54;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_10001A9EC();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      sub_10001AA40(0, &qword_1004A7380);
      v56 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    v48 = v73;
    if ((v74 & 1) == 0)
    {
      sub_1000039E8(&unk_1004A7370);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100376A40;
      v58 = URL.debugDescription.getter();
      v60 = v59;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_10001A9EC();
      *(v57 + 32) = v58;
      *(v57 + 40) = v60;
      sub_10001AA40(0, &qword_1004A7380);
      v61 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

LABEL_39:

      return;
    }

    v49 = URLRequest.allHTTPHeaderFields.getter();
    if (v49)
    {
      if (*(v49 + 16))
      {
        sub_100013364(0x7A69726F68747541, 0xED00006E6F697461);
        v51 = v50;

        if (v51)
        {
          return;
        }
      }

      else
      {
      }
    }

    v62 = *(v75 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
    if (v62)
    {
      v63 = *((swift_isaMask & *v62) + 0x60);
      v61 = v62;
      v64 = v63(0);
      if (v48)
      {
        v66 = type metadata accessor for URLRequest();
        (*(*(v66 - 8) + 8))(v77, v66);
        goto LABEL_39;
      }

      v68 = v65;
      v69 = v64;

      v67 = v69;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    v70._countAndFlagsBits = 0x7A69726F68747541;
    v70._object = 0xED00006E6F697461;
    v71 = v68;
    URLRequest.setValue(_:forHTTPHeaderField:)(*&v67, v70);
    goto LABEL_7;
  }

  while (1)
  {
    v36 = v35;
LABEL_23:
    if (!*(v21 + 16))
    {
      break;
    }

    v37 = (*(v21 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
    v39 = *v37;
    v38 = v37[1];

    v40 = sub_100013364(v39, v38);
    if ((v41 & 1) == 0)
    {
      goto LABEL_46;
    }

    v33 &= v33 - 1;
    v42 = (*(v21 + 56) + 16 * v40);
    v43 = *v42;
    v44 = v42[1];

    v45.value._countAndFlagsBits = v43;
    v45.value._object = v44;
    v46._countAndFlagsBits = v39;
    v46._object = v38;
    URLRequest.setValue(_:forHTTPHeaderField:)(v45, v46);

    v35 = v36;
    if (!v33)
    {
      goto LABEL_20;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_10005B530(void *a1, uint64_t *a2)
{
  sub_10000E2A8(a1, a1[3]);
  v4._countAndFlagsBits = dispatch thunk of CodingKey.stringValue.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 34;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of CodingKey.intValue.getter();
  if ((v6 & 1) == 0)
  {
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 10272;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  v10 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((result & 1) == 0)
  {
    result = sub_100011A4C(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a2 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_100011A4C((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a2 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 16 * v13;
  *(v14 + 32) = 0x222079656BLL;
  *(v14 + 40) = 0xE500000000000000;
  return result;
}

uint64_t sub_10005B73C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 744))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void KnoxServiceClient.dawTokenFactory.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v2 && (type metadata accessor for DAWToken(), (a1 = swift_dynamicCastClass()) != 0))
  {
    __chkstk_darwin(a1);
    v3 = v2;
    sub_1000039E8(&qword_1004A7A50);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __chkstk_darwin(a1);
    sub_1000039E8(&qword_1004A7A50);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t KnoxServiceClient.dawTokenFactory.setter(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue];
  sub_100013E54(a1, v14, &qword_1004A7A50);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v14[1];
  *(v4 + 24) = v14[0];
  *(v4 + 40) = v5;
  *(v4 + 56) = v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000620E0;
  *(v6 + 24) = v4;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_10047E930;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10 = *&v8[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken];
    if (v10 && (type metadata accessor for DAWToken(), swift_dynamicCastClass()))
    {
      sub_100013E54(a1, aBlock, &qword_1004A7A50);
      v11 = v10;
      sub_10007DB54(aBlock);

      v12 = a1;
    }

    else
    {
      v12 = a1;
    }

    sub_100013F2C(v12, &qword_1004A7A50);
  }

  return result;
}

uint64_t sub_10005BAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory;
  swift_beginAccess();
  return sub_100013E54(a1 + v4, a2, &qword_1004A7A50);
}

uint64_t sub_10005BB5C(uint64_t a1, uint64_t a2)
{
  sub_100013E54(a2, v5, &qword_1004A7A50);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory;
  swift_beginAccess();
  sub_10001F8D8(v5, a1 + v3, &qword_1004A7A50);
  return swift_endAccess();
}

void (*KnoxServiceClient.dawTokenFactory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v4 && (type metadata accessor for DAWToken(), (v3 = swift_dynamicCastClass()) != 0))
  {
    __chkstk_darwin(v3);
    v5 = v4;
    sub_1000039E8(&qword_1004A7A50);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __chkstk_darwin(v3);
    sub_1000039E8(&qword_1004A7A50);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  return sub_10005BD80;
}

void sub_10005BD80(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100013E54(*a1, v2 + 40, &qword_1004A7A50);
    KnoxServiceClient.dawTokenFactory.setter(v2 + 40);
    sub_100013F2C(v2, &qword_1004A7A50);
  }

  else
  {
    KnoxServiceClient.dawTokenFactory.setter(*a1);
  }

  free(v2);
}

id KnoxServiceClient.__allocating_init(dawToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v31 = a6;
  v11 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v32[-v12 - 8];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v16);
  v20 = &v32[-v19 - 8];
  Date.init()();
  Date.addingTimeInterval(_:)();
  (*(v15 + 8))(v18, v14);
  v21 = objc_allocWithZone(type metadata accessor for DAWToken());
  v22 = DAWToken.init(token:expirationDate:)(a1, a2, v20);
  v35[0] = xmmword_1003772E0;
  memset(&v35[1], 0, 32);
  v36 = 0;
  sub_100003B20(a3, v32);
  sub_100013E54(a4, v13, &qword_1004A6D30);
  v23 = v33;
  v24 = v34;
  v25 = sub_100003BEC(v32, v33);
  __chkstk_darwin(v25);
  v27 = &v32[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v28 + 16))(v27);
  v29 = sub_100062260(v22, v35, v27, v13, a5, v31, v23, v24);

  sub_100013F2C(a4, &qword_1004A6D30);
  sub_100003C3C(a3);
  sub_100003C3C(v32);
  return v29;
}

id KnoxServiceClient.__allocating_init(westgateToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v22[-v11 - 8];
  v25[0] = xmmword_1003772E0;
  memset(&v25[1], 0, 32);
  v26 = 0;
  sub_100003B20(a2, v22);
  sub_100013E54(a3, v12, &qword_1004A6D30);
  v13 = v23;
  v14 = v24;
  v15 = sub_100003BEC(v22, v23);
  __chkstk_darwin(v15);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v18 + 16))(v17);
  v19 = sub_100062260(a1, v25, v17, v12, a4, a5, v13, v14);

  sub_100013F2C(a3, &qword_1004A6D30);
  sub_100003C3C(a2);
  sub_100003C3C(v22);
  return v19;
}

char *KnoxServiceClient.__allocating_init(knoxMtlsAuth:SAKSmTLSAuth:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v12 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a1 + 48);
  v37 = *(a2 + 32);
  v36 = *(a2 + 48);
  v16 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v16;
  v41[2] = *(a1 + 32);
  v42 = v15;
  sub_100003B20(a3, v38);
  sub_100013E54(a4, v14, &qword_1004A6D30);
  v17 = v39;
  v18 = v40;
  v19 = sub_100003BEC(v38, v39);
  __chkstk_darwin(v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_100062260(0, v41, v21, v14, a5, a6, v17, v18);
  sub_100013F2C(a4, &qword_1004A6D30);
  sub_100003C3C(a3);
  sub_100003C3C(v38);
  v24 = &v23[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v29 = v24[4];
  v30 = v24[5];
  v31 = v24[6];
  v32 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 1) = v32;
  *(v24 + 2) = v37;
  v24[6] = v36;
  v33 = v23;
  sub_10005D990(v25, v26, v27, v28, v29, v30, v31);

  return v33;
}

id KnoxServiceClient.__allocating_init(dawToken:delegate:trustRootPEMPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_1000039E8(&qword_1004A6D30);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  sub_100003B20(a3, v41);
  if (qword_1004A6A88 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for URL();
  v21 = sub_1000270B4(v20, qword_1004A7980);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  (*(v22 + 56))(v19, 0, 1, v20);
  Date.init()();
  Date.addingTimeInterval(_:)();
  (*(v8 + 8))(v11, v7);
  v23 = objc_allocWithZone(type metadata accessor for DAWToken());
  v24 = DAWToken.init(token:expirationDate:)(a1, v33, v13);
  v39[0] = xmmword_1003772E0;
  memset(&v39[1], 0, 32);
  v40 = 0;
  sub_100003B20(v41, v36);
  sub_100013E54(v19, v17, &qword_1004A6D30);
  v25 = v37;
  v26 = v38;
  v27 = sub_100003BEC(v36, v37);
  __chkstk_darwin(v27);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = sub_100062260(v24, v39, v29, v17, v34, v35, v25, v26);

  sub_100003C3C(a3);
  sub_100013F2C(v19, &qword_1004A6D30);
  sub_100003C3C(v41);
  sub_100003C3C(v36);
  return v31;
}

uint64_t sub_10005C8A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004A7CC8);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1000318C0(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10005CB64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004A7D08);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10005CE24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004A7CD0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000279A4(v24, v34);
      }

      else
      {
        sub_100003CA0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000279A4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10005D0DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004A7D18);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10005D37C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10005D52C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_10005D57C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000279A4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10005D5E8(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_10005D630()
{
  v1 = v0;
  sub_1000039E8(&qword_1004A7CC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1000318C0(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005D7B4()
{
  v1 = v0;
  sub_1000039E8(&qword_1004A7D08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
    v8 = a7;
  }

  return result;
}

void sub_10005D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_10005D9F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10005DA68()
{
  v1 = v0;
  sub_1000039E8(&qword_1004A7CD0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100003CA0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000279A4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10005DC0C()
{
  v1 = v0;
  sub_1000039E8(&qword_1004A7D18);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unsigned __int8 *sub_10005DD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_100064CF0();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100083890();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

BOOL _s16KnoxClientPublic0a7ServiceB0C0B5ErrorC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[6] != a2[6])
  {
    return 0;
  }

  v6 = KnoxServiceClient.ClientError.ErrorKind.rawValue.getter();
  v8 = v7;
  if (v6 == KnoxServiceClient.ClientError.ErrorKind.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return a1[8] == a2[8] && a1[9] == a2[9] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t sub_10005E494(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10005E530(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  [v5 setHTTPMaximumConnectionsPerHost:a3];
  [v5 setTimeoutIntervalForRequest:a1];
  result = URL.host.getter();
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = type metadata accessor for KnoxURLSessionPinningDelegate();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential] = 0;
    *&v11[OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError] = 0;
    v12 = &v11[OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost];
    *v12 = v8;
    *(v12 + 1) = v9;
    v15.receiver = v11;
    v15.super_class = v10;
    v13 = objc_msgSendSuper2(&v15, "init");
    v14 = [objc_opt_self() sessionWithConfiguration:v5 delegate:v13 delegateQueue:0];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s16KnoxClientPublic0a7ServiceB0C12knoxMtlsAuth8delegate0E7HostURL16trustRootPEMPath012useAsyncHttpB0AcA8mTLSAuthV_AA0A8Delegate_p10Foundation0J0VSgSSSgSbtcfC_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v91 = a5;
  v75 = a4;
  v8 = type metadata accessor for URL();
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = __chkstk_darwin(v8);
  v93 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v73 - v11;
  v89 = type metadata accessor for DispatchQoS.QoSClass();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v78 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1000039E8(&qword_1004A6D30);
  v18 = __chkstk_darwin(v17 - 8);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v73 - v20;
  v22 = a1[1];
  v87 = *a1;
  v83 = v22;
  v23 = a1[3];
  v86 = a1[2];
  v100 = v23;
  v24 = a1[5];
  v85 = a1[4];
  v84 = v24;
  v25 = a1[6];
  v98 = a2;
  v99 = v25;
  sub_100003B20(a2, v103);
  v96 = v21;
  v97 = a3;
  sub_100013E54(a3, v21, &qword_1004A6D30);
  v92 = type metadata accessor for KnoxServiceClient();
  v26 = objc_allocWithZone(v92);
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v27 = &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v27 = 0;
  v27[1] = 0;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v28 = &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  *v28 = xmmword_1003772E0;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 6) = 0;
  v29 = &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v29 = xmmword_1003772E0;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 6) = 0;
  v30 = &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v30 = 0;
  v30[1] = 0;
  v77 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v76 = "r name: '%{public}s'";
  static DispatchQoS.userInitiated.getter();
  v102 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v80 + 104))(v79, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
  v31 = v88;
  v32 = v81;
  v33 = v89;
  (v88[13])(v81, enum case for DispatchQoS.QoSClass.default(_:), v89);
  static OS_dispatch_queue.global(qos:)();
  (v31)[1](v32, v33);
  *&v26[v77] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v35 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v36 = type metadata accessor for CharacterSet();
  (*(*(v36 - 8) + 56))(&v26[v35], 1, 1, v36);
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest] = 0x405E000000000000;
  v37 = &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  sub_100003B20(v103, &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate]);
  *&v26[v34] = 0;
  swift_beginAccess();
  v38 = *(v29 + 1);
  v89 = *v29;
  v39 = *(v29 + 2);
  v40 = *(v29 + 3);
  v41 = *(v29 + 4);
  v42 = *(v29 + 5);
  v43 = *(v29 + 6);
  v44 = v83;
  *v29 = v87;
  *(v29 + 1) = v44;
  v45 = v100;
  *(v29 + 2) = v86;
  *(v29 + 3) = v45;
  v46 = v84;
  *(v29 + 4) = v85;
  *(v29 + 5) = v46;
  v47 = v99;
  *(v29 + 6) = v99;
  v88 = v47;

  v48 = v38;
  v49 = v91;
  sub_10005D990(v89, v48, v39, v40, v41, v42, v43);
  if (v49)
  {
    swift_beginAccess();
    qword_1004A79C0 = v75;
    off_1004A79C8 = v49;
  }

  v50 = v96;
  v51 = v90;
  sub_100013E54(v96, v90, &qword_1004A6D30);
  v53 = v94;
  v52 = v95;
  if ((*(v94 + 48))(v51, 1, v95) == 1)
  {
    sub_100013F2C(v51, &qword_1004A6D30);
    if (qword_1004A6A90 != -1)
    {
      swift_once();
    }

    v54 = sub_1000270B4(v52, qword_1004A7998);
    v55 = *(v53 + 16);
    v55(&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v54, v52);
  }

  else
  {
    v56 = *(v53 + 32);
    v57 = v74;
    v56(v74, v51, v52);
    v56(&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v57, v52);
    v55 = *(v53 + 16);
  }

  v58 = v93;
  v55(v93, &v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v52);
  v59 = sub_10005E530(120.0, v58, 16);
  (*(v53 + 8))(v58, v52);
  *&v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session] = v59;
  v26[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC] = 0;
  if ([v59 delegate])
  {
    type metadata accessor for KnoxURLSessionPinningDelegate();
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      v61 = v60;

      v62 = *(v61 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
      *(v61 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = v99;
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v101.receiver = v26;
  v101.super_class = v92;
  v63 = objc_msgSendSuper2(&v101, "init");
  sub_1000039E8(&unk_1004A7370);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100376BB0;
  v65 = v63;
  v66 = [v65 debugDescription];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  *(v64 + 56) = &type metadata for String;
  v70 = sub_10001A9EC();
  *(v64 + 32) = v67;
  *(v64 + 40) = v69;
  *(v64 + 96) = &type metadata for String;
  *(v64 + 104) = v70;
  *(v64 + 64) = v70;
  *(v64 + 72) = 0x754C2E3733303423;
  *(v64 + 80) = 0xEB00000000426B63;
  sub_10001AA40(0, &qword_1004A7380);
  v71 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100013F2C(v97, &qword_1004A6D30);
  sub_100003C3C(v98);
  sub_100013F2C(v50, &qword_1004A6D30);
  sub_100003C3C(v103);
  return v65;
}

id sub_10005F210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v80 = a5;
  v65 = a4;
  v68 = a1;
  v8 = type metadata accessor for URL();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = __chkstk_darwin(v8);
  v81 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v64 - v11;
  v77 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1000039E8(&qword_1004A6D30);
  v18 = __chkstk_darwin(v17 - 8);
  v78 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  v86 = a2;
  sub_100003B20(a2, v89);
  v84 = v21;
  v85 = a3;
  sub_100013E54(a3, v21, &qword_1004A6D30);
  v79 = type metadata accessor for KnoxServiceClient();
  v22 = objc_allocWithZone(v79);
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v23 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v23 = 0;
  v23[1] = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v24 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  v70 = xmmword_1003772E0;
  *v24 = xmmword_1003772E0;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 6) = 0;
  v25 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v25 = xmmword_1003772E0;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  v25[6] = 0;
  v26 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v26 = 0;
  v26[1] = 0;
  v67 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v66 = "r name: '%{public}s'";
  v69 = a1;
  static DispatchQoS.userInitiated.getter();
  v88 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v74 + 104))(v73, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v75);
  v27 = v76;
  v28 = v72;
  v29 = v77;
  (*(v76 + 104))(v72, enum case for DispatchQoS.QoSClass.default(_:), v77);
  static OS_dispatch_queue.global(qos:)();
  (*(v27 + 8))(v28, v29);
  *&v22[v67] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v31 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v32 = type metadata accessor for CharacterSet();
  (*(*(v32 - 8) + 56))(&v22[v31], 1, 1, v32);
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest] = 0x405E000000000000;
  v33 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  sub_100003B20(v89, &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate]);
  *&v22[v30] = v68;
  swift_beginAccess();
  v34 = *v25;
  v35 = v25[1];
  v36 = v25[2];
  v37 = v25[3];
  v38 = v25[4];
  v39 = v25[5];
  v40 = v25[6];
  *v25 = v70;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  v25[6] = 0;
  v41 = v69;
  v42 = v35;
  v43 = v80;
  sub_10005D990(v34, v42, v36, v37, v38, v39, v40);
  if (v43)
  {
    swift_beginAccess();
    qword_1004A79C0 = v65;
    off_1004A79C8 = v43;
  }

  v44 = v84;
  v45 = v78;
  sub_100013E54(v84, v78, &qword_1004A6D30);
  v47 = v82;
  v46 = v83;
  if ((*(v82 + 48))(v45, 1, v83) == 1)
  {
    sub_100013F2C(v45, &qword_1004A6D30);
    if (qword_1004A6A88 != -1)
    {
      swift_once();
    }

    v48 = sub_1000270B4(v46, qword_1004A7980);
    v49 = *(v47 + 16);
    v49(&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v48, v46);
  }

  else
  {
    v50 = *(v47 + 32);
    v51 = v64;
    v50(v64, v45, v46);
    v50(&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v51, v46);
    v49 = *(v47 + 16);
  }

  v52 = v81;
  v49(v81, &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v46);
  v53 = sub_10005E530(120.0, v52, 16);
  (*(v47 + 8))(v52, v46);
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session] = v53;
  v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC] = 0;
  v87.receiver = v22;
  v87.super_class = v79;
  v54 = objc_msgSendSuper2(&v87, "init");
  sub_1000039E8(&unk_1004A7370);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_100376BB0;
  v56 = v54;
  v57 = [v56 debugDescription];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  *(v55 + 56) = &type metadata for String;
  v61 = sub_10001A9EC();
  *(v55 + 32) = v58;
  *(v55 + 40) = v60;
  *(v55 + 96) = &type metadata for String;
  *(v55 + 104) = v61;
  *(v55 + 64) = v61;
  *(v55 + 72) = 0x754C2E3733303423;
  *(v55 + 80) = 0xEB00000000426B63;
  sub_10001AA40(0, &qword_1004A7380);
  v62 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100013F2C(v85, &qword_1004A6D30);
  sub_100003C3C(v86);
  sub_100013F2C(v44, &qword_1004A6D30);
  sub_100003C3C(v89);
  return v56;
}

unint64_t sub_10005FC78()
{
  result = qword_1004A7A40;
  if (!qword_1004A7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7A40);
  }

  return result;
}

uint64_t type metadata accessor for KnoxServiceClient()
{
  result = qword_1004A7AE0;
  if (!qword_1004A7AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005FD18()
{
  result = qword_1004A7A58;
  if (!qword_1004A7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7A58);
  }

  return result;
}

uint64_t sub_10005FD6C(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  v2 = [v1 processName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v4 = String.count.getter();

  if (v4 < 1)
  {
    v5 = 0xEF6E6F6973726576;
    v6 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v6 = qword_1004A79B0;
    v5 = qword_1004A79B8;
  }

  v7 = [v0 processInfo];
  v8 = [v7 operatingSystemVersionString];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = 47;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v5;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 1028869947;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 59;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x754C2E3733303423;
  v17._object = 0xEB00000000426B63;
  String.append(_:)(v17);
  return v3;
}

uint64_t sub_10005FFF4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000C34F8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

char *sub_100060488(unint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v60);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v68 = a1;
  v69 = a2;
  if (qword_1004A6AA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for CharacterSet();
  sub_1000270B4(v14, qword_1004E2A10);
  sub_10000B080();
  v15 = StringProtocol.rangeOfCharacter(from:options:range:)();
  v63 = v9;
  if ((v17 & 1) != 0 || !((v15 ^ v16) >> 14))
  {
    v25 = v67;
    if (String.count.getter())
    {
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v46._countAndFlagsBits = 0xD00000000000001BLL;
      v46._object = 0x800000010042D280;
      String.append(_:)(v46);
      v70 = String.count.getter();
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 0xD000000000000022;
      v48._object = 0x800000010042D2A0;
      String.append(_:)(v48);
      v22 = v68;
      v65 = v69;
      v67 = type metadata accessor for KnoxServiceClient.ClientError();
      v49 = swift_allocObject();
      v58 = v11;
      v18 = v49;
      v57 = sub_10001AA40(0, &qword_1004A7840);
      v19 = v64;
      v59 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v68 = &_swiftEmptyArrayStorage;
      sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v61 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v62);
      (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v19);
      static OS_dispatch_queue.global(qos:)();
      (*(v4 + 8))(v6, v19);
      *(v18 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v23 = 4;
      v24 = 1685;
    }

    else
    {
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26)
      {
        return &_swiftEmptyArrayStorage;
      }

      v57 = v4;
      v58 = v11;
      v56 = v6;
      v27 = 0;
      v59 = (4 * v26);
      v28 = 7;
      if (((v25 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v28 = 11;
      }

      v65 = v28 | (v26 << 16);
      v19 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v29 = String.index(_:offsetBy:limitedBy:)();
        if (v30)
        {
          break;
        }

        v31 = v29 >> 14;
        if (v29 >> 14 < v27)
        {
          __break(1u);
LABEL_37:

          break;
        }

        v32 = a1;
        v33 = String.subscript.getter();
        v37 = v36;
        if (!((v33 ^ v34) >> 14))
        {
          goto LABEL_37;
        }

        v38 = v33;
        v39 = v34;
        v40 = v35;
        if ((v36 & 0x1000000000000000) != 0)
        {
          LOWORD(v40) = sub_10005DD74(v33, v34, v35, v36, 16);

          if ((v40 & 0x100) != 0)
          {
            break;
          }
        }

        else
        {
          if ((v36 & 0x2000000000000000) != 0)
          {
            v68 = v35;
            v69 = v36 & 0xFFFFFFFFFFFFFFLL;
            v41 = &v68;
          }

          else if ((v35 & 0x1000000000000000) != 0)
          {
            v41 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v41 = _StringObject.sharedUTF8.getter();
          }

          v42 = sub_10005FFF4(v41, v38, v39, v40, v37, 16);
          LOBYTE(v40) = v42;
          LOBYTE(v70) = BYTE1(v42) & 1;
          v43 = (v42 >> 8) & 1;

          if (v43)
          {
            break;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100011D30(0, *(v19 + 2) + 1, 1, v19);
        }

        v45 = *(v19 + 2);
        v44 = *(v19 + 3);
        if (v45 >= v44 >> 1)
        {
          v19 = sub_100011D30((v44 > 1), v45 + 1, 1, v19);
        }

        *(v19 + 2) = v45 + 1;
        v19[v45 + 32] = v40;
        v27 = v31;
        a1 = v32;
        if (v31 >= v59)
        {
          return v19;
        }
      }

      v65 = 0x800000010042D2D0;
      v67 = type metadata accessor for KnoxServiceClient.ClientError();
      v18 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v59 = "hivePointer.swift";
      v19 = v66;
      static DispatchQoS.userInitiated.getter();
      v68 = &_swiftEmptyArrayStorage;
      sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v61 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v62);
      v51 = v56;
      v50 = v57;
      v52 = v64;
      (*(v57 + 104))(v56, enum case for DispatchQoS.QoSClass.default(_:), v64);
      static OS_dispatch_queue.global(qos:)();
      (*(v50 + 8))(v51, v52);
      *(v18 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v22 = 0xD000000000000028;
      v23 = 14;
      v24 = 1695;
    }
  }

  else
  {
    v65 = 0x800000010042D300;
    v67 = type metadata accessor for KnoxServiceClient.ClientError();
    v18 = swift_allocObject();
    v58 = sub_10001AA40(0, &qword_1004A7840);
    v59 = "hivePointer.swift";
    v19 = v66;
    static DispatchQoS.userInitiated.getter();
    v68 = &_swiftEmptyArrayStorage;
    sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v61 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v62);
    v20 = v64;
    (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v64);
    static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v6, v20);
    *(v18 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v22 = 0xD000000000000054;
    v23 = 4;
    v24 = 1682;
  }

  *(v18 + 16) = 0xD000000000000012;
  *(v18 + 24) = 0x800000010042D260;
  *(v18 + 32) = 0xD000000000000062;
  *(v18 + 40) = 0x800000010042CBD0;
  *(v18 + 56) = v23;
  *(v18 + 48) = v24;
  v53 = v65;
  *(v18 + 64) = v22;
  *(v18 + 72) = v53;
  *(v18 + 80) = 0;
  sub_100061B64(&unk_1004A7860, v21, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v54 = v18;
  swift_willThrow();
  return v19;
}

unint64_t sub_100060FB0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047A878, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

id sub_100060FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v83 = a6;
  v72 = a5;
  v89 = a4;
  v82 = a2;
  v81 = a1;
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v84 = &v70 - v8;
  v88 = type metadata accessor for URL();
  v87 = *(v88 - 8);
  v9 = __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v70 - v11;
  v80 = type metadata accessor for DispatchQoS.QoSClass();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[3] = type metadata accessor for KnoxServiceClient.DoNothingDelegate();
  v93[4] = &off_10047ECA8;
  v93[0] = a3;
  v86 = type metadata accessor for KnoxServiceClient();
  v18 = objc_allocWithZone(v86);
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v19 = &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v19 = 0;
  v19[1] = 0;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v20 = &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  *v20 = xmmword_1003772E0;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 6) = 0;
  v21 = &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v21 = xmmword_1003772E0;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  v21[6] = 0;
  v22 = &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v22 = 0;
  v22[1] = 0;
  v75 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v74 = "r name: '%{public}s'";
  static DispatchQoS.userInitiated.getter();
  v92 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v77 + 104))(v76, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v78);
  v23 = v79;
  v24 = v80;
  (*(v79 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v80);
  static OS_dispatch_queue.global(qos:)();
  (*(v23 + 8))(v13, v24);
  *&v18[v75] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v26 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v27 = type metadata accessor for CharacterSet();
  (*(*(v27 - 8) + 56))(&v18[v26], 1, 1, v27);
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest] = 0x405E000000000000;
  v28 = &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  sub_100003B20(v93, &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate]);
  v29 = v81;
  *&v18[v25] = v81;
  swift_beginAccess();
  v30 = *v21;
  v31 = v21[1];
  v32 = v21[2];
  v33 = v21[3];
  v34 = v21[4];
  v35 = v21[5];
  v36 = v21[6];
  v37 = v82;
  v39 = *(v82 + 16);
  v38 = *(v82 + 32);
  v40 = *v82;
  v21[6] = *(v82 + 48);
  *(v21 + 1) = v39;
  *(v21 + 2) = v38;
  *v21 = v40;
  v41 = v37;
  sub_100013E54(v37, &v92, &qword_1004A7CF8);
  v42 = v29;
  v43 = v31;
  v44 = v83;
  sub_10005D990(v30, v43, v32, v33, v34, v35, v36);
  if (v44)
  {
    swift_beginAccess();
    qword_1004A79C0 = v72;
    off_1004A79C8 = v44;
  }

  v45 = v89;
  v46 = v84;
  sub_100013E54(v89, v84, &qword_1004A6D30);
  v47 = v87;
  v48 = v88;
  if ((*(v87 + 48))(v46, 1, v88) == 1)
  {
    sub_100013F2C(v46, &qword_1004A6D30);
    if (*(v41 + 8) == 1)
    {
      if (qword_1004A6A88 != -1)
      {
        swift_once();
      }

      v49 = qword_1004A7980;
    }

    else
    {
      if (qword_1004A6A90 != -1)
      {
        swift_once();
      }

      v49 = qword_1004A7998;
    }

    v53 = sub_1000270B4(v48, v49);
    v52 = *(v47 + 16);
    v52(&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v53, v48);
  }

  else
  {
    v50 = *(v47 + 32);
    v51 = v71;
    v50(v71, v46, v48);
    v50(&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v51, v48);
    v52 = *(v47 + 16);
  }

  v54 = v85;
  v52(v85, &v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v48);
  v55 = sub_10005E530(120.0, v54, 16);
  (*(v47 + 8))(v54, v48);
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session] = v55;
  v18[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC] = 0;
  if (*(v41 + 8) != 1)
  {
    v56 = *(v41 + 48);
    if ([v55 delegate])
    {
      type metadata accessor for KnoxURLSessionPinningDelegate();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        v94 = v56;
        sub_100013E54(&v94, v90, &qword_1004A7D00);
        sub_100013F2C(v41, &qword_1004A7CF8);
        v59 = *(v58 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
        *(v58 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = v94;
        swift_unknownObjectRelease();

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    sub_100013F2C(v41, &qword_1004A7CF8);
  }

LABEL_19:
  v91.receiver = v18;
  v91.super_class = v86;
  v60 = objc_msgSendSuper2(&v91, "init");
  sub_1000039E8(&unk_1004A7370);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100376BB0;
  v62 = v60;
  v63 = [v62 debugDescription];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  *(v61 + 56) = &type metadata for String;
  v67 = sub_10001A9EC();
  *(v61 + 32) = v64;
  *(v61 + 40) = v66;
  *(v61 + 96) = &type metadata for String;
  *(v61 + 104) = v67;
  *(v61 + 64) = v67;
  *(v61 + 72) = 0x754C2E3733303423;
  *(v61 + 80) = 0xEB00000000426B63;
  sub_10001AA40(0, &qword_1004A7380);
  v68 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100013F2C(v45, &qword_1004A6D30);
  sub_100003C3C(v93);
  return v62;
}

void sub_100061B30()
{
  v0 = sub_100026210();
}

uint64_t sub_100061B64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100061C08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061CA0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100061D7C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000573A0(v3, v0 + v2, v4);
}

uint64_t sub_100061E3C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100061EB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100061F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, &v13, &qword_1004A7A98);
      v5 = v13;
      v6 = v14;
      result = sub_100013364(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000279A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100062098()
{
  if (*(v0 + 48))
  {
    sub_100003C3C(v0 + 24);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000620EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory;
  swift_beginAccess();
  return sub_100013E54(v3 + v4, a1, &qword_1004A7A50);
}

unint64_t sub_100062160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1000134B4(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100062260(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v95 = a6;
  v84 = a5;
  v101 = a4;
  v94 = a1;
  v12 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v12 - 8);
  v96 = &v82 - v13;
  v100 = type metadata accessor for URL();
  v99 = *(v100 - 8);
  v14 = __chkstk_darwin(v100);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v82 - v16;
  v93 = type metadata accessor for DispatchQoS.QoSClass();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v20 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v20 - 8);
  v110[3] = a7;
  v110[4] = a8;
  v21 = sub_100064BF8(v110);
  (*(*(a7 - 8) + 32))(v21, a3, a7);
  v97 = type metadata accessor for KnoxServiceClient();
  v22 = objc_allocWithZone(v97);
  v23 = a2[1];
  v104 = *a2;
  v91 = v23;
  v24 = a2[2];
  v106 = a2[3];
  v107 = v24;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  v25 = a2[5];
  v103 = a2[4];
  v105 = v25;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  v102 = a2[6];
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v26 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v26 = 0;
  v26[1] = 0;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v27 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  *v27 = xmmword_1003772E0;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 6) = 0;
  v28 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v28 = xmmword_1003772E0;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  v28[6] = 0;
  v29 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v29 = 0;
  v29[1] = 0;
  v86 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v85 = "r name: '%{public}s'";
  static DispatchQoS.userInitiated.getter();
  v109 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v89 + 104))(v88, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v90);
  v30 = v92;
  v31 = v87;
  v32 = v93;
  (*(v92 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v93);
  static OS_dispatch_queue.global(qos:)();
  (*(v30 + 8))(v31, v32);
  *&v22[v86] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v34 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v35 = type metadata accessor for CharacterSet();
  (*(*(v35 - 8) + 56))(&v22[v34], 1, 1, v35);
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest] = 0x405E000000000000;
  v36 = &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  sub_100003B20(v110, &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate]);
  v37 = v94;
  *&v22[v33] = v94;
  swift_beginAccess();
  v38 = *v28;
  v39 = v28[1];
  v40 = v28[2];
  v41 = v28[3];
  v42 = v28[4];
  v43 = v28[5];
  v44 = v28[6];
  v46 = v103;
  v45 = v104;
  v47 = v91;
  *v28 = v104;
  v28[1] = v47;
  v49 = v106;
  v48 = v107;
  v28[2] = v107;
  v28[3] = v49;
  v50 = v105;
  v28[4] = v46;
  v28[5] = v50;
  v51 = v102;
  v28[6] = v102;
  v52 = v47;
  sub_10005D92C(v45, v47, v48, v49, v46, v50, v51);
  v53 = v37;
  v54 = v39;
  v55 = v95;
  sub_10005D990(v38, v54, v40, v41, v42, v43, v44);
  if (v55)
  {
    swift_beginAccess();
    qword_1004A79C0 = v84;
    off_1004A79C8 = v55;
  }

  v56 = v101;
  v57 = v96;
  sub_100013E54(v101, v96, &qword_1004A6D30);
  v58 = v99;
  v59 = v100;
  if ((*(v99 + 48))(v57, 1, v100) == 1)
  {
    sub_100013F2C(v57, &qword_1004A6D30);
    if (v52 == 1)
    {
      if (qword_1004A6A88 != -1)
      {
        swift_once();
      }

      v60 = qword_1004A7980;
    }

    else
    {
      if (qword_1004A6A90 != -1)
      {
        swift_once();
      }

      v60 = qword_1004A7998;
    }

    v64 = sub_1000270B4(v59, v60);
    v63 = *(v58 + 16);
    v63(&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v64, v59);
  }

  else
  {
    v61 = *(v58 + 32);
    v62 = v83;
    v61(v83, v57, v59);
    v61(&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v62, v59);
    v63 = *(v58 + 16);
  }

  v65 = v98;
  v63(v98, &v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v59);
  v66 = sub_10005E530(120.0, v65, 16);
  (*(v58 + 8))(v65, v59);
  *&v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session] = v66;
  v22[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC] = 0;
  if (v52 != 1)
  {
    if ([v66 delegate])
    {
      type metadata accessor for KnoxURLSessionPinningDelegate();
      v67 = swift_dynamicCastClass();
      if (v67)
      {
        v68 = v67;
        v69 = v102;
        v70 = v102;
        sub_10005D990(v104, v52, v107, v106, v103, v105, v69);
        v71 = *(v68 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
        *(v68 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = v69;
        swift_unknownObjectRelease();

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    sub_10005D990(v104, v52, v107, v106, v103, v105, v102);
  }

LABEL_19:
  v108.receiver = v22;
  v108.super_class = v97;
  v72 = objc_msgSendSuper2(&v108, "init");
  sub_1000039E8(&unk_1004A7370);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100376BB0;
  v74 = v72;
  v75 = [v74 debugDescription];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  *(v73 + 56) = &type metadata for String;
  v79 = sub_10001A9EC();
  *(v73 + 32) = v76;
  *(v73 + 40) = v78;
  *(v73 + 96) = &type metadata for String;
  *(v73 + 104) = v79;
  *(v73 + 64) = v79;
  *(v73 + 72) = 0x754C2E3733303423;
  *(v73 + 80) = 0xEB00000000426B63;
  sub_10001AA40(0, &qword_1004A7380);
  v80 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100013F2C(v56, &qword_1004A6D30);
  sub_100003C3C(v110);
  return v74;
}

unint64_t sub_100062DC0()
{
  result = qword_1004A7AA0;
  if (!qword_1004A7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AA0);
  }

  return result;
}

unint64_t sub_100062E18()
{
  result = qword_1004A7AA8;
  if (!qword_1004A7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AA8);
  }

  return result;
}

unint64_t sub_100062E70()
{
  result = qword_1004A7AB0;
  if (!qword_1004A7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AB0);
  }

  return result;
}

uint64_t sub_100062F14@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_100062FD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_10006309C@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_100063160@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x188))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100063228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1000632EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

double sub_1000633BC@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((swift_isaMask & **a1) + 0x1E8))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100063430(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v7[0] = v3;
  v7[1] = v2;
  v5 = *((swift_isaMask & *v4) + 0x1F0);

  return v5(v7);
}

uint64_t sub_100063634@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100063690@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1004A79C8;
  *a1 = qword_1004A79C0;
  a1[1] = v2;
}

uint64_t sub_1000636E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_100050D2C(v1);
}

void sub_100063790()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10006458C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10006458C()
{
  if (!qword_1004A7AF0)
  {
    type metadata accessor for CharacterSet();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A7AF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for KnoxServiceClient.HTTPMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxServiceClient.HTTPMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10006484C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000648E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnoxServiceClient.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxServiceClient.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100064AF4()
{
  result = qword_1004A7CB0;
  if (!qword_1004A7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7CB0);
  }

  return result;
}

unint64_t sub_100064B4C()
{
  result = qword_1004A7CB8;
  if (!qword_1004A7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7CB8);
  }

  return result;
}

unint64_t sub_100064BA4()
{
  result = qword_1004A7CC0;
  if (!qword_1004A7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7CC0);
  }

  return result;
}

uint64_t *sub_100064BF8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100064C5C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100064C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100064CF0()
{
  result = qword_1004A7D10;
  if (!qword_1004A7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D10);
  }

  return result;
}

uint64_t sub_100064F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1000650B0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v6 = type metadata accessor for WestgateToken();
  v27.receiver = v0;
  v27.super_class = v6;
  v7 = objc_msgSendSuper2(&v27, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v28 = v8;
  v29 = v10;
  v11._countAndFlagsBits = 0x6D616E7265737520;
  v11._object = 0xEC00000027203A65;
  String.append(_:)(v11);
  v12 = &v0[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x800000010042D410;
  v16._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v16);
  v17 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v17], v2);
  v18 = Date.description.getter();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 39;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return v28;
}

uint64_t type metadata accessor for WestgateToken()
{
  result = qword_1004A7D70;
  if (!qword_1004A7D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *WestgateToken.init(from:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v2 - 8);
  v51 = &v45 - v3;
  v4 = type metadata accessor for Date();
  v50 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v45 - v9;
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1000039E8(&qword_1004A7D20);
  v49 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = a1[3];
  v53 = a1;
  sub_10000E2A8(a1, v16);
  sub_1000668A0();
  v17 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v56 = v17;
    v22 = v52;
    sub_100003C3C(v53);
    type metadata accessor for WestgateToken();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v12;
    v47 = v7;
    v18 = v51;
    v48 = v10;
    v20 = v49;
    v19 = v50;
    v54 = 0;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v52;
    v25 = &v52[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username];
    *v25 = v21;
    v25[1] = v26;
    v54 = 1;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = 0;
    v29 = &v24[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password];
    *v29 = v27;
    v29[1] = v28;
    v30 = type metadata accessor for WestgateToken();
    v55.receiver = v24;
    v55.super_class = v30;
    v22 = objc_msgSendSuper2(&v55, "init");
    v54 = 2;
    sub_1000673A8(&qword_1004A7D30, &type metadata accessor for Date);
    v31 = v4;
    v32 = v56;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = v32;
    if (v32)
    {
      (*(v20 + 8))(v15, v13);
      sub_100003C3C(v53);
    }

    else
    {
      v33 = v19;
      if ((*(v19 + 48))(v18, 1, v31) == 1)
      {
        sub_1000668F4(v18);
        v34 = v22;
        v35 = v47;
        Date.init()();
        v36 = v13;
        v37 = v48;
        Date.addingTimeInterval(_:)();
        (*(v33 + 8))(v35, v31);
        (*(v20 + 8))(v15, v36);
        v38 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
        swift_beginAccess();
        (*(v33 + 40))(&v34[v38], v37, v31);
      }

      else
      {
        (*(v20 + 8))(v15, v13);
        v39 = *(v19 + 32);
        v40 = v46;
        v39(v46, v18, v31);
        v41 = v48;
        v39(v48, v40, v31);
        v42 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
        swift_beginAccess();
        v43 = *(v33 + 40);
        v44 = v22;
        v43(&v22[v42], v41, v31);
      }

      swift_endAccess();
      sub_100003C3C(v53);
    }
  }

  return v22;
}

uint64_t sub_1000658E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64726F7773736150;
  if (v2 != 1)
  {
    v5 = 0x6974617269707865;
    v4 = 0xEE00657461446E6FLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656D616E72657355;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x64726F7773736150;
  if (*a2 != 1)
  {
    v8 = 0x6974617269707865;
    v3 = 0xEE00657461446E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D616E72657355;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000659FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100065AAC()
{
  String.hash(into:)();
}

Swift::Int sub_100065B48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100065BF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006735C(*a1);
  *a2 = result;
  return result;
}

void sub_100065C24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64726F7773736150;
  if (v2 != 1)
  {
    v5 = 0x6974617269707865;
    v4 = 0xEE00657461446E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D616E72657355;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100065C90()
{
  v1 = 0x64726F7773736150;
  if (*v0 != 1)
  {
    v1 = 0x6974617269707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D616E72657355;
  }
}

unint64_t sub_100065CF8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10006735C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100065D2C(uint64_t a1)
{
  v2 = sub_1000668A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065D68(uint64_t a1)
{
  v2 = sub_1000668A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100065DA4(char *a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((swift_isaMask & *v1) + 0x98))(v6) & (a1 != 0);
  if (v9 == 1)
  {
    v10 = a1;
    sub_10006695C(v10);
    v12 = v11;

    if (v2)
    {
      return v1;
    }

    v32 = v5;
    v13 = &v12[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username];
    swift_beginAccess();
    v14 = *v13;
    v15 = *(v13 + 1);
    v29 = v14;
    v16 = &v1[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username];
    swift_beginAccess();
    *v16 = v29;
    *(v16 + 1) = v15;
    a1 = v12;

    v17 = &a1[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password];
    swift_beginAccess();
    v19 = *v17;
    v18 = *(v17 + 1);
    v20 = &v1[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password];
    swift_beginAccess();
    *v20 = v19;
    *(v20 + 1) = v18;

    v21 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
    swift_beginAccess();
    v22 = v32;
    (*(v32 + 16))(v8, &a1[v21], v4);

    v23 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
    swift_beginAccess();
    (*(v22 + 40))(&v1[v23], v8, v4);
    swift_endAccess();
  }

  v30 = 0x20726572616542;
  v31 = 0xE700000000000000;
  v24 = &v1[OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v1 = v30;
  if (v9)
  {
  }

  return v1;
}

uint64_t sub_100066098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v13 = (v3 + OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password);
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;

  Date.init()();
  Date.addingTimeInterval(_:)();
  (*(v7 + 8))(v10, v6);
  v14 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v7 + 40))(v3 + v14, v12, v6);
  return swift_endAccess();
}

uint64_t sub_100066238(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_password);
  swift_beginAccess();
  *v10 = v9;
  v10[1] = v8;

  v11 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  v14 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic13WestgateToken_username);
  swift_beginAccess();
  *v14 = v13;
  v14[1] = v12;

  v15 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v15, v3);
  v16 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v16, v6, v3);
  return swift_endAccess();
}

uint64_t sub_100066424(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A7D38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1000668A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v22 = 0;

  v11 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v20 = v6;
    v12 = v19;

    swift_beginAccess();
    v21 = 1;

    KeyedEncodingContainer.encode(_:forKey:)();

    v14 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
    swift_beginAccess();
    v15 = v12;
    v16 = *(v12 + 16);
    v17 = v20;
    v16(v20, v2 + v14, v4);
    v23 = 2;
    sub_1000673A8(&qword_1004A7D40, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v15 + 8))(v17, v4);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1000667CC()
{
}

id WestgateToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WestgateToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000668A0()
{
  result = qword_1004A7D28;
  if (!qword_1004A7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D28);
  }

  return result;
}

uint64_t sub_1000668F4(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A73C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006695C(void *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v33 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for WestgateTokenTask());
  *&v11[OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken] = 0;
  v12 = a1;
  v13 = sub_10003D38C(v12);

  v14 = &v13[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  strcpy(v14, "WestgateToken");
  *(v14 + 7) = -4864;
  v15 = v13;

  v16 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  v17 = swift_beginAccess();
  v18 = *&v15[v16];
  if (v18)
  {
    v18;
  }

  else
  {
    v19 = v10;
    v37 = v4;
    v20 = v36;
    v21 = (*((swift_isaMask & *v15) + 0x150))(v17);

    if (v21)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
    }

    else
    {
      v30 = 0x800000010042D4B0;
      v31 = 0x800000010042D490;
      v32 = 0x800000010042D520;
      v29[3] = type metadata accessor for KnoxServiceClient.ClientError();
      v21 = swift_allocObject();
      v29[0] = sub_10000E014();
      v29[1] = v19;
      v29[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v38 = &_swiftEmptyArrayStorage;
      sub_1000673A8(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v34 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
      v22 = v35;
      v23 = v33;
      (*(v35 + 104))(v33, enum case for DispatchQoS.QoSClass.default(_:), v20);
      static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v23, v20);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v25 = v31;
      *(v21 + 16) = 0xD00000000000001BLL;
      *(v21 + 24) = v25;
      v26 = v30;
      *(v21 + 32) = 0xD000000000000068;
      *(v21 + 40) = v26;
      *(v21 + 56) = 14;
      *(v21 + 48) = 150;
      v27 = v32;
      *(v21 + 64) = 0xD000000000000030;
      *(v21 + 72) = v27;
      *(v21 + 80) = 0;
      *(v21 + 88) = v24;
    }

    sub_1000673A8(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v28 = v21;
    swift_willThrow();
  }
}

uint64_t getEnumTagSinglePayload for WestgateToken.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WestgateToken.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100067258()
{
  result = qword_1004A7D80;
  if (!qword_1004A7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D80);
  }

  return result;
}

unint64_t sub_1000672B0()
{
  result = qword_1004A7D88;
  if (!qword_1004A7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D88);
  }

  return result;
}

unint64_t sub_100067308()
{
  result = qword_1004A7D90;
  if (!qword_1004A7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D90);
  }

  return result;
}

unint64_t sub_10006735C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047ABA8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000673A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067400(uint64_t a1)
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

__n128 sub_10006741C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100067430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100067478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000674D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1397511277;
  }

  else
  {
    v3 = 25441;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1397511277;
  }

  else
  {
    v5 = 25441;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10006756C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000675DC()
{
  String.hash(into:)();
}

Swift::Int sub_100067638()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000676A4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AC10, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100067704(uint64_t *a1@<X8>)
{
  v2 = 25441;
  if (*v1)
  {
    v2 = 1397511277;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100067730(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A7DB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000E2A8(a1, a1[3]);
  sub_1000687C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 3;
    sub_10006889C(&v13, v11);
    sub_1000688F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100031928(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10006795C()
{
  v1 = 0x6D4C5255736B6173;
  if (*v0 != 2)
  {
    v1 = 0x61746144736B6173;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000679F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006830C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100067A18(uint64_t a1)
{
  v2 = sub_1000687C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067A54(uint64_t a1)
{
  v2 = sub_1000687C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100067A90@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10006848C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_100067AF0()
{
  result = qword_1004A7D98;
  if (!qword_1004A7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7D98);
  }

  return result;
}

uint64_t sub_100067B44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a2;
  v58 = a1;
  v60 = a4;
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v72 = 0x800000010042D5F0;
  v73 = 0x800000010042D5D0;

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  v67 = 0;
  v13 = 0;
  v53 = 0;
  v56 = 0;
  v54 = 0;
  v57 = 0;
  v68 = 0xF000000000000000;
  v69 = v11;
  v70 = 0x800000010042D5B0;
  v71 = a3;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a3 + 16);

    if (!v18 || (v19 = sub_100013364(v16, v17), (v20 & 1) == 0))
    {
      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100376A40;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_10001A9EC();
      *(v51 + 32) = v16;
      *(v51 + 40) = v17;
      sub_1000202EC();
      v52 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v36 = v60;
      v37 = v59;
      v35 = v66;
      v39 = v67;
LABEL_40:
      v38 = v68;
      goto LABEL_41;
    }

    v10 &= v10 - 1;
    v21 = (*(a3 + 56) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = v16 == 0xD000000000000017 && 0x800000010042D590 == v17;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000318C0(v23, v22);

      result = sub_100031914(v67, v68);
      v67 = v23;
      v68 = v22;
      a3 = v71;
    }

    else
    {
      v25 = v16 == 0xD000000000000012 && v70 == v17;
      if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1000318C0(v23, v22);

        static String.Encoding.utf8.getter();
        v65 = String.init(data:encoding:)();
        v28 = v27;
        sub_100031928(v23, v22);

        v66 = v28;
        goto LABEL_30;
      }

      if (v16 == 0xD000000000000012 && v73 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1000318C0(v23, v22);

        static String.Encoding.utf8.getter();
        v29 = String.init(data:encoding:)();
        v31 = v30;
        sub_100031928(v23, v22);

        v64 = v29;
        v54 = v29;
        v63 = v31;
        v57 = v31;
LABEL_30:
        a3 = v71;
        v11 = v69;
      }

      else if (v16 == 0xD000000000000017 && v72 == v17)
      {
        sub_1000318C0(v23, v22);

        a3 = v71;
        v11 = v69;
LABEL_32:
        static String.Encoding.utf8.getter();
        v32 = String.init(data:encoding:)();
        v34 = v33;
        sub_100031928(v23, v22);

        v62 = v32;
        v53 = v32;
        v61 = v34;
        v56 = v34;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000318C0(v23, v22);

        a3 = v71;
        v11 = v69;
        if (v26)
        {
          goto LABEL_32;
        }

        result = sub_100031928(v23, v22);
      }
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v35 = v66;
  if (!v66)
  {
    v36 = v60;
    v37 = v59;
    v39 = v67;
    goto LABEL_40;
  }

  v36 = v60;
  v37 = v59;
  v39 = v67;
  v38 = v68;
  if (v57 && v56 && v68 >> 60 != 15)
  {
    sub_1000039E8(&unk_1004A7370);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100376A40;
    v74 = 0;
    v75 = 0xE000000000000000;
    v76 = v65;
    v77 = v35;
    v78 = v64;
    v79 = v63;
    v80 = v62;
    v81 = v61;
    v82 = v39;
    v83 = v38;

    v41 = v57;

    sub_100031994(v39, v38);
    sub_1000039E8(&qword_1004A7DC8);
    _print_unlocked<A, B>(_:_:)();
    v42 = v74;
    v43 = v75;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_10001A9EC();
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    v44 = v68;
    sub_1000202EC();
    v45 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v46 = v41;
    v47 = v65;
    v76 = v65;
    v77 = v35;
    v78 = v64;
    v79 = v63;
    v80 = v62;
    v81 = v61;
    v82 = v39;
    v83 = v44;
    result = sub_10006894C(&v76);
    v48 = v56;
    v49 = v53;
    v50 = v54;
    goto LABEL_42;
  }

LABEL_41:

  v76 = v65;
  v77 = v35;
  v78 = v64;
  v79 = v63;
  v80 = v62;
  v81 = v61;
  v82 = v39;
  v83 = v38;
  result = sub_10006894C(&v76);
  v47 = 0;
  v35 = 0;
  v50 = 0;
  v46 = 0;
  v49 = 0;
  v48 = 0;
  v39 = 0;
  v44 = 0;
LABEL_42:
  *v36 = v47;
  v36[1] = v35;
  v36[2] = v50;
  v36[3] = v46;
  v36[4] = v49;
  v36[5] = v48;
  v36[6] = v39;
  v36[7] = v44;
  return result;
}

uint64_t sub_10006830C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010042D640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010042D660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D4C5255736B6173 && a2 == 0xEB00000000534C54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746144736B6173 && a2 == 0xEE003156626F6C42)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10006848C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A7DA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000687C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v10;
  LOBYTE(v33[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v12;
  v25 = v11;
  LOBYTE(v33[0]) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v13;
  v35 = 3;
  sub_100068818();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v22 = *(&v34 + 1);
  v23 = v34;
  v15 = v27;
  v14 = v28;
  *&v29 = v9;
  *(&v29 + 1) = v28;
  v16 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v17 = v24;
  v18 = v26;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  v32 = v34;
  sub_1000475AC(&v29, v33);
  sub_100003C3C(a1);
  v33[0] = v9;
  v33[1] = v14;
  v33[2] = v16;
  v33[3] = v15;
  v33[4] = v17;
  v33[5] = v18;
  v33[6] = v23;
  v33[7] = v22;
  result = sub_10006886C(v33);
  v20 = v30;
  *a2 = v29;
  a2[1] = v20;
  v21 = v32;
  a2[2] = v31;
  a2[3] = v21;
  return result;
}

unint64_t sub_1000687C4()
{
  result = qword_1004A7DA8;
  if (!qword_1004A7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DA8);
  }

  return result;
}

unint64_t sub_100068818()
{
  result = qword_1004A7DB0;
  if (!qword_1004A7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DB0);
  }

  return result;
}

unint64_t sub_1000688F8()
{
  result = qword_1004A7DC0;
  if (!qword_1004A7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DC0);
  }

  return result;
}

uint64_t sub_10006894C(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A7DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000689C8()
{
  result = qword_1004A7DD0;
  if (!qword_1004A7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DD0);
  }

  return result;
}

unint64_t sub_100068A20()
{
  result = qword_1004A7DD8;
  if (!qword_1004A7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DD8);
  }

  return result;
}

unint64_t sub_100068A78()
{
  result = qword_1004A7DE0;
  if (!qword_1004A7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7DE0);
  }

  return result;
}

uint64_t sub_100068ACC()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  result = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream);
  if (!result)
  {
    v20 = 0x800000010042D800;
    v21 = 0x800000010042DA30;
    v22 = type metadata accessor for KnoxServiceClient.ClientError();
    v10 = swift_allocObject();
    v18 = v1;
    v11 = v10;
    v17 = sub_10001AA40(0, &qword_1004A7840);
    v19 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v25 = &_swiftEmptyArrayStorage;
    sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v23 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
    v12 = v24;
    v13 = v18;
    (*(v24 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v18);
    static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v3, v13);
    v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v11 + 16) = 0x6D61657274536161;
    *(v11 + 24) = 0xE800000000000000;
    *(v11 + 32) = 0xD00000000000006FLL;
    v15 = v20;
    *(v11 + 56) = 0;
    *(v11 + 40) = v15;
    *(v11 + 48) = 78;
    *(v11 + 64) = 0xD00000000000006CLL;
    *(v11 + 72) = v21;
    *(v11 + 80) = 0;
    *(v11 + 88) = v14;
    sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v16 = v11;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100068EF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream);
  if (v1)
  {
    AAByteStreamClose(v1);
  }

  v2 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_100068FF8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000690B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos;
  sub_10006911C(a2, a3, *(a1 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos));
  if (!v4)
  {
    v9 = *(a1 + v7);
    v10 = __OFADD__(v9, v8);
    v11 = v9 + v8;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(a1 + v7) = v11;
      *a4 = v8;
    }
  }
}

void sub_10006911C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v137 = a3;
  v134 = a1;
  v135 = a2;
  v130 = type metadata accessor for DispatchQoS.QoSClass();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v127 = *(v123 - 8);
  __chkstk_darwin(v123);
  v133 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v124);
  v126 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v125 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for DispatchTime();
  v131 = *(v132 - 8);
  v9 = __chkstk_darwin(v132);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v110 - v12;
  v14 = type metadata accessor for URL();
  v136 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URLRequest();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v110 - v22;
  v24 = v144;
  sub_10006A1F0();
  if (!v24)
  {
    v122 = v17;
    v144 = v18;
    v120 = v21;
    v118 = v11;
    v119 = v13;
    v121 = v23;
    v25 = *&v3[OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize];
    if (v25 > v137)
    {
      v26 = v137;
      v112 = 0;
      if (v134)
      {
        v27 = (v135 - v134);
      }

      else
      {
        v27 = 0;
      }

      (*(v136 + 2))(v16, &v3[OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url], v14);
      v28 = v121;
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      v29._countAndFlagsBits = _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0();
      v30._countAndFlagsBits = 0x6567412D72657355;
      v30._object = 0xEA0000000000746ELL;
      URLRequest.addValue(_:forHTTPHeaderField:)(v29, v30);

      aBlock.value._countAndFlagsBits = 0x3D7365747962;
      aBlock.value._object = 0xE600000000000000;
      v143 = v26;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 45;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v136 = v27;
      v33 = &v27[v26];
      if (__OFADD__(v26, v27))
      {
        __break(1u);
      }

      else
      {
        v116 = v25;
        v117 = v3;
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        v36 = v144;
        if (!v34)
        {
          v143 = v35;
          v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v37);

          v38._countAndFlagsBits = 0x65676E6152;
          v38._object = 0xE500000000000000;
          URLRequest.setValue(_:forHTTPHeaderField:)(aBlock, v38);

          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          v111 = (v39 + 16);
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          v113 = (v40 + 16);
          v41 = dispatch_semaphore_create(0);
          v42 = *(v36 + 16);
          v43 = v120;
          v44 = v122;
          v42(v120, v28, v122);
          v45 = *(v117 + 2);
          v114 = *(v117 + 3);
          v46 = swift_allocObject();
          *(v46 + 2) = v39;
          *(v46 + 3) = v40;
          v115 = v46;
          *(v46 + 4) = v41;
          v47 = objc_allocWithZone(type metadata accessor for KnoxRandomAccessDownloadStream.DownloadByteRangeIntoBufferTask(0));
          v48 = &v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_outputBuffer];
          v49 = v135;
          *v48 = v134;
          v48[1] = v49;
          *&v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_fullFileSize] = v116;
          v50 = v137;
          *&v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_size] = v136;
          *&v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_offset] = v50;
          v42(&v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_request], v43, v44);
          v51 = v45;
          v135 = v39;

          v134 = v40;

          v137 = v41;
          v52 = URLRequest.allHTTPHeaderFields.getter();
          if (v52)
          {
            v53 = v52;
            v54 = v133;
            v55 = v114;
            if (*(v52 + 16) && (v56 = sub_100013364(0x65676E6152, 0xE500000000000000), (v57 & 1) != 0))
            {
              v58 = (*(v53 + 56) + 16 * v56);
              v60 = *v58;
              v59 = v58[1];
            }

            else
            {
              v59 = 0xE400000000000000;
              v60 = 1701736302;
            }
          }

          else
          {
            v59 = 0xE400000000000000;
            v60 = 1701736302;
            v54 = v133;
            v55 = v114;
          }

          v61 = &v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_rangeHeader];
          *v61 = v60;
          v61[1] = v59;
          v62 = &v47[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_dataTaskFinishedCallback];
          v63 = v115;
          *v62 = sub_10006CEE0;
          v62[1] = v63;

          v64 = v55;
          v65 = sub_10003D38C(v64);

          v66 = *&v65[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session];
          *&v65[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session] = v51;
          v67 = v51;

          aBlock.value._countAndFlagsBits = 0;
          aBlock.value._object = 0xE000000000000000;
          v68 = v65;
          _StringGuts.grow(_:)(57);
          v69._countAndFlagsBits = 0xD00000000000002CLL;
          v69._object = 0x800000010042D9A0;
          String.append(_:)(v69);
          v70 = *&v68[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_rangeHeader];
          v71 = *&v68[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_rangeHeader + 8];

          v72._countAndFlagsBits = v70;
          v72._object = v71;
          String.append(_:)(v72);

          v73._countAndFlagsBits = 10272;
          v73._object = 0xE200000000000000;
          String.append(_:)(v73);
          v143 = v136;
          v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v74);

          v75._countAndFlagsBits = 0x29736574796220;
          v75._object = 0xE700000000000000;
          String.append(_:)(v75);

          countAndFlagsBits = aBlock.value._countAndFlagsBits;
          object = aBlock.value._object;
          v78 = *(v144 + 8);
          v79 = v122;
          v144 += 8;
          v78(v120, v122);
          v80 = &v68[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
          swift_beginAccess();
          *v80 = countAndFlagsBits;
          v80[1] = object;

          (*((swift_isaMask & *v68) + 0x110))(&off_10047AC60);

          type metadata accessor for RetryRunner();
          swift_allocObject();
          v81 = v68;
          v82 = sub_100072164(v81);
          v83 = v81;
          sub_10007AAAC(v82, v83);

          v136 = v83;

          v84 = v118;
          static DispatchTime.now()();
          v85 = v119;
          + infix(_:_:)();
          v86 = *(v131 + 8);
          v87 = v132;
          v86(v84, v132);
          OS_dispatch_semaphore.wait(timeout:)();
          v86(v85, v87);
          if (static DispatchTimeoutResult.== infix(_:_:)())
          {
            v132 = 0x800000010042D9D0;
            v131 = 0x800000010042D800;
            aBlock.value._countAndFlagsBits = 0;
            aBlock.value._object = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            v88._countAndFlagsBits = 0xD000000000000030;
            v88._object = 0x800000010042D9F0;
            String.append(_:)(v88);
            Double.write<A>(to:)();
            v89._countAndFlagsBits = 0x73646E6F63657320;
            v89._object = 0xE800000000000000;
            String.append(_:)(v89);
            v119 = aBlock.value._countAndFlagsBits;
            v118 = aBlock.value._object;
            v120 = type metadata accessor for KnoxServiceClient.ClientError();
            v90 = swift_allocObject();
            sub_10001AA40(0, &qword_1004A7840);
            v117 = "hivePointer.swift";
            v133 = v78;
            static DispatchQoS.userInitiated.getter();
            aBlock.value._countAndFlagsBits = &_swiftEmptyArrayStorage;
            sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850);
            sub_10003DEE8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v127 + 104))(v54, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v123);
            v91 = v129;
            v92 = v128;
            v93 = v130;
            (*(v129 + 104))(v128, enum case for DispatchQoS.QoSClass.default(_:), v130);
            static OS_dispatch_queue.global(qos:)();
            (*(v91 + 8))(v92, v93);
            v79 = v122;
            v78 = v133;
            v94 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v95 = v132;
            *(v90 + 16) = 0xD000000000000014;
            *(v90 + 24) = v95;
            v96 = v131;
            *(v90 + 32) = 0xD00000000000006FLL;
            *(v90 + 40) = v96;
            *(v90 + 56) = 20;
            *(v90 + 48) = 197;
            v97 = v118;
            *(v90 + 64) = v119;
            *(v90 + 72) = v97;
            *(v90 + 80) = 0;
            *(v90 + 88) = v94;
            sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
            swift_allocError();
            *v98 = v90;
            swift_willThrow();
            v99 = v121;
LABEL_20:

            v78(v99, v79);

            return;
          }

          v100 = v113;
          swift_beginAccess();
          v99 = v121;
          if (*v100)
          {
            swift_willThrow();
            swift_errorRetain();
            goto LABEL_20;
          }

          v133 = v78;
          v101 = *(*&v117[OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_task] + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
          v102 = v111;
          swift_beginAccess();
          v103 = *v102;
          v104 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;

          OS_dispatch_queue.sync<A>(execute:)();
          v105 = aBlock.value._countAndFlagsBits + v103;
          if (!__OFADD__(aBlock.value._countAndFlagsBits, v103))
          {
            v106 = *(v101 + v104);
            v107 = swift_allocObject();
            *(v107 + 16) = v105;
            *(v107 + 24) = v101;
            v108 = swift_allocObject();
            *(v108 + 16) = sub_100031D1C;
            *(v108 + 24) = v107;
            v141 = sub_10001FA40;
            v142 = v108;
            aBlock.value._countAndFlagsBits = _NSConcreteStackBlock;
            aBlock.value._object = 1107296256;
            v139 = sub_10003885C;
            v140 = &unk_10047F508;
            v109 = _Block_copy(&aBlock);

            dispatch_sync(v106, v109);
            _Block_release(v109);
            LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

            if ((v106 & 1) == 0)
            {
              (v133)(v99, v79);

              return;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }
}

Swift::Int sub_10006A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_beginAccess();
  *(a4 + 16) = a2;
  swift_errorRetain();

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10006A188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if (result != 2)
  {
    if (result != 1)
    {
      *a4 = *(a2 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos);
      return result;
    }

    v4 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos;
    v5 = *(a2 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos);
    v6 = __OFADD__(v5, a3);
    a3 += v5;
    if (!v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v7 = *(a2 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize);
  v6 = __OFADD__(v7, a3);
  a3 += v7;
  if (!v6)
  {
LABEL_8:
    v4 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos;
LABEL_9:
    *(a2 + v4) = a3;
    *a4 = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A1F0()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v8 - 8);
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled))
  {
    v22 = 0x800000010042D800;
    v23 = 0x800000010042D960;
    v24 = 0x800000010042D980;
    v25 = type metadata accessor for KnoxServiceClient.ClientError();
    v10 = swift_allocObject();
    v20 = v1;
    v11 = v10;
    v19[1] = sub_10001AA40(0, &qword_1004A7840);
    v21 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v28 = &_swiftEmptyArrayStorage;
    sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
    v12 = v27;
    v13 = v20;
    (*(v27 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v20);
    static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v3, v13);
    v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v15 = v23;
    *(v11 + 16) = 0xD000000000000017;
    *(v11 + 24) = v15;
    v16 = v22;
    *(v11 + 32) = 0xD00000000000006FLL;
    *(v11 + 40) = v16;
    *(v11 + 56) = 14;
    *(v11 + 48) = 254;
    v17 = v24;
    *(v11 + 64) = 0xD00000000000001FLL;
    *(v11 + 72) = v17;
    *(v11 + 80) = 0;
    *(v11 + 88) = v14;
    sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v18 = v11;
    return swift_willThrow();
  }

  return result;
}

void sub_10006A608()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = AACustomByteStreamOpen();
  if (v9)
  {
    v10 = v9;

    AACustomByteStreamSetData(v10, v0);
    AACustomByteStreamSetCloseProc(v10, sub_10006AAE4);
    AACustomByteStreamSetReadProc(v10, sub_10006AC20);
    AACustomByteStreamSetPReadProc(v10, sub_10006AC24);
    AACustomByteStreamSetWriteProc(v10, sub_10006ACA4);
    AACustomByteStreamSetPWriteProc(v10, sub_10006AD0C);
    AACustomByteStreamSetCancelProc(v10, sub_10006AD74);
    AACustomByteStreamSetSeekProc(v10, sub_10006AE84);
    *&v0[OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream] = v10;
  }

  else
  {
    v20 = 0x800000010042D8C0;
    v19 = 0x800000010042D800;
    v21 = 0x800000010042D8E0;
    v22 = type metadata accessor for KnoxServiceClient.ClientError();
    v11 = swift_allocObject();
    v18[1] = sub_10001AA40(0, &qword_1004A7840);
    v18[2] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v23 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
    v13 = v24;
    v12 = v25;
    (*(v24 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v25);
    static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v3, v12);
    v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v15 = v20;
    *(v11 + 16) = 0xD000000000000016;
    *(v11 + 24) = v15;
    v16 = v19;
    *(v11 + 32) = 0xD00000000000006FLL;
    *(v11 + 40) = v16;
    *(v11 + 56) = 14;
    *(v11 + 48) = 264;
    *(v11 + 64) = 0xD00000000000001FLL;
    *(v11 + 72) = v21;
    *(v11 + 80) = 0;
    *(v11 + 88) = v14;
    sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v17 = v11;
    swift_willThrow();
  }
}

uint64_t sub_10006AAE4(uint64_t result)
{
  if (result)
  {
    *(result + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream) = 0;

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AB14(uint64_t result)
{
  if (result)
  {

    v1 = sub_10006A1F0();
    __chkstk_darwin(v1);
    v3 = v2;
    OS_dispatch_queue.sync<A>(execute:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}