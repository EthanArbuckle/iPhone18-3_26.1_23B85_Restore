uint64_t sub_10001A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v32);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = v29;
  *(v20 + v19) = v28;
  v22 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v21;
  v22[1] = v23;
  aBlock[4] = sub_10001B5CC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008E908;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001B6E0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v35 + 8))(v9, v25);
  return (*(v33 + 8))(v13, v34);
}

uint64_t sub_10001A504(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v41 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098B80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003420(v14, qword_1000A1AC8);
  (*(v10 + 16))(v13, a2, v9);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = a2;
    v39 = a5;
    v40 = a4;
    v17 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v17 = 136315394;
    sub_10001B6E0(&unk_100099C80, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v10 + 8))(v13, v9);
    v21 = sub_100014C58(v18, v20, v44);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    if (a3)
    {
      v43 = a3;
      swift_errorRetain();
      sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v22 = swift_dynamicCast();
      v23 = v42;
      if (!v22)
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v43 = v23;
    sub_10000FC6C(qword_100099CA0, &qword_100075DE0);
    v24 = String.init<A>(describing:)();
    v26 = sub_100014C58(v24, v25, v44);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished connection request to device with identifier: [%s]. Error: [%s].", v17, 0x16u);
    swift_arrayDestroy();

    a4 = v40;
    a2 = v38;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  sub_10003C180(a2, v27, v28, v29, v30, v31, v32, v33, v37, v38);
  swift_endAccess();

  if (a3)
  {
    sub_10001B2C0();
    v34 = swift_allocError();
    *v35 = a3;
    swift_errorRetain();
    swift_errorRetain();
    a4(v34);
  }

  else
  {
    a4(0);
  }

  return sub_10001ADD8();
}

uint64_t sub_10001A90C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v68 = a3;
  v67 = a2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100011C54(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10001B850();
  v66 = v10;
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = sub_100011C54(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100011CD4();
  v22 = (v21 - v20);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v14);
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v22, v14);
  if (v23)
  {
    if (qword_100098B80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10001B874();
LABEL_3:
  v24 = type metadata accessor for Logger();
  v25 = sub_100003420(v24, qword_1000A1AC8);
  v26 = *(v7 + 16);
  v26(v13, a1, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v64 = v7;
  if (v29)
  {
    v30 = sub_10001B910();
    v62 = v26;
    v63 = v25;
    v31 = v30;
    v61 = swift_slowAlloc();
    v71 = v61;
    *v31 = 136315138;
    sub_10001B800();
    sub_10001B6E0(v32, v33);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = a1;
    v36 = v35;
    v37 = *(v7 + 8);
    v37(v13, v4);
    v38 = sub_100014C58(v34, v36, &v71);
    a1 = v65;

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Received a request to disconnect the remote display session with device with identifier: [%s].", v31, 0xCu);
    sub_100003458(v61);
    sub_100003534();
    v26 = v62;
    sub_100003534();
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v13, v4);
  }

  v39 = v69;
  swift_beginAccess();
  v40 = *(v39 + 32);

  v41 = sub_100020BC0(a1, v40);

  if (v41)
  {
    v26(v66, a1, v4);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (sub_10001B8CC(v43))
    {
      sub_10001B910();
      v44 = sub_10001B894();
      v65 = a1;
      v45 = v44;
      v70 = v44;
      *v28 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v46, v47);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = sub_10001B97C();
      (v37)(v51);
      v52 = sub_100014C58(v48, v50, &v70);

      *(v28 + 4) = v52;
      sub_10001B830(&_mh_execute_header, v53, v54, "Before disconnecting, will cancel in-flight connection request to device with identifier: [%s]");
      sub_100003458(v45);
      sub_100003534();
      sub_10001B8B0();
    }

    else
    {

      v55 = sub_10001B97C();
      (v37)(v55);
    }

    v56 = *(v41 + 16);
    CompanionLinkClient.cancel()();
  }

  v57 = *(v69 + 48);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v57 closeDisplayServiceSessionsWithPeerIdentifier:isa];

  return v67(0);
}

uint64_t sub_10001ADD8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.utf8CString.getter();

  notify_post((v0 + 32));
}

void *sub_10001AE34()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];
  swift_unknownObjectRelease();
  v6 = v0[7];

  return v0;
}

uint64_t sub_10001AE7C()
{
  sub_10001AE34();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10001AED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v45 = &v34 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      sub_10001B6E0(&unk_100099180, &type metadata accessor for UUID);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        sub_10001B6E0(&qword_10009A940, &type metadata accessor for UUID);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001B258(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001B2C0()
{
  result = qword_100099C90;
  if (!qword_100099C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099C90);
  }

  return result;
}

uint64_t sub_10001B314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B378()
{
  v1 = type metadata accessor for UUID();
  sub_100011C54(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10001B448(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_10001B8E8(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_10001A130(a1, v9, v1 + v8, v11, v12);
}

uint64_t sub_10001B4E4()
{
  v1 = type metadata accessor for UUID();
  sub_100011C54(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  v11 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_10001B5CC()
{
  v1 = type metadata accessor for UUID();
  sub_10001B8E8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v7);
  v10 = v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10001A504(v8, v0 + v6, v9, v11, v12);
}

uint64_t sub_10001B664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001B67C()
{
  result = qword_10009A9B0;
  if (!qword_10009A9B0)
  {
    sub_10000FD4C(&unk_100099AD0, &qword_100075D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A9B0);
  }

  return result;
}

uint64_t sub_10001B6E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B728(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001B740(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10001B818()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

void sub_10001B830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_10001B874()
{

  return swift_once();
}

uint64_t sub_10001B894()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B8B0()
{
}

BOOL sub_10001B8CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001B8F8()
{
  v2 = *(v1 - 152) + 8;
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t sub_10001B910()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B928()
{

  return sub_100014C58(v0, v1, (v2 - 136));
}

uint64_t sub_10001B95C()
{
  result = v0;
  *(v2 - 216) = *(v1 + 8);
  return result;
}

uint64_t sub_10001B990()
{

  return swift_allocError();
}

uint64_t sub_10001B9A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001B9E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10001BA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10001BABC(void *a1, uint64_t a2)
{
  v4 = a1;

  return sub_10001BAFC(a1, a2);
}

uint64_t sub_10001BAFC(void *a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v15 = v4;
  if (!a1)
  {
    v12 = v4;
    v11 = 0;
    goto LABEL_5;
  }

  v5 = a1;
  Count = SidecarMapTableGetCount();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(Count);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10001C09C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10001C0A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BD84;
  aBlock[3] = &unk_10008EA68;
  v9 = _Block_copy(aBlock);

  SidecarMapTableIterateObjects();

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v11 = sub_10001C09C;
    v12 = v15;
LABEL_5:
    aBlock[0] = v12;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v13 = ArraySlice.init<A>(_:)();

    sub_100010FE8(v11);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  v6(a2, v8);
  return sub_100003458(v8);
}

uint64_t sub_10001BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v18[-v10];
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100011020(a2, v18);
  swift_dynamicCast();
  v16 = *(TupleTypeMetadata2 + 48);
  *v11 = a1;
  (*(v12 + 32))(&v11[v16], v15, a4);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_10001BF68(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v2 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();

  return Collection<>.popFirst()(v2, WitnessTable);
}

void sub_10001BFF8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_10001BABC(v4, *(a1 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

uint64_t sub_10001C0A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001C0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C114()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001C150(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001C190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10001C1EC(uint64_t a1, uint64_t a2)
{
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v4 = sub_10001E410();
  v5(v4);
}

void sub_10001C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    _convertErrorToNSError(_:)();
  }

  v5 = sub_10001E410();
  v6(v5);
}

uint64_t sub_10001C2F8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = a3;
  v6(v8, v10, a3);

  sub_100003388(v8, v10);
}

uint64_t sub_10001C3A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099DB0);
  sub_100003420(v0, qword_100099DB0);
  return Logger.init(subsystem:category:)();
}

id sub_10001C420()
{
  if (qword_100098B88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_100099DB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100014C58(0xD000000000000033, 0x800000010007A930, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003458(v4);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10001E468(v5, v6, -999, 0xD000000000000033, 0x800000010007A930, 0);
}

id sub_10001C5C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDetector];

  sub_100015694();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for SidecarRelayIntermediateDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001C728(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_relayProxy);
  *(v2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_relayProxy) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(v2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDetector);
  type metadata accessor for RemoteDisplaySendingDevicesManager();
  swift_allocObject();
  v7 = sub_100018C98(v6, a1);
  v8 = *(v2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager);
  *(v2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager) = v7;
  swift_unknownObjectRetain();

  sub_10001203C();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;
  v12[4] = sub_10001E37C;
  v12[5] = v10;
  sub_100011C68();
  v12[1] = 1107296256;
  v12[2] = sub_10001CA30;
  v12[3] = &unk_10008EC50;
  v11 = _Block_copy(v12);

  [a1 setDisplayServiceSessionsChangedListener:v11];
  _Block_release(v11);
}

void sub_10001C890(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 16);
    if (qword_100098B88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_100099DB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4 != 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "The set of remote display sessions has changed.  Sessions exist: [%{BOOL}d]", v8, 8u);
    }

    [v3 setRemoteDisplaySessionExists:v4 != 0];
    if (*&v3[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager])
    {
      v9 = *&v3[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager];

      sub_100018EB0(v10);
    }

    else
    {
      sub_10001C420();
    }
  }
}

uint64_t sub_10001CA30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for UUID();
  sub_10001E384(&unk_100099180);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10001CB34()
{
  v1 = v0;
  if (qword_100098B88 != -1)
  {
    sub_10001E3E4();
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_100099DB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Relay initialized", v5, 2u);
    sub_100003534();
  }

  v6 = *&v1[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDetector];
  type metadata accessor for CompanionLinkDeviceDiscoveryProxy();
  v7 = swift_allocObject();

  v8 = v1;
  v9 = sub_10001E1DC(v6, v8, v7);
  v10 = *&v8[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDiscoveryProxy];
  *&v8[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDiscoveryProxy] = v9;
}

void sub_10001CCA8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = sub_100011C54(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_10001E140;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008EBD8;
  v14 = _Block_copy(aBlock);

  [v2 ignoreDetectionOfAnchorWithIdentifier:isa completion:v14];
  _Block_release(v14);
}

void sub_10001CE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098B88 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003420(v9, qword_100099DB0);
  (*(v5 + 16))(v8, a2, v4);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136315394;
    sub_10001E384(&unk_100099C80);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_100014C58(v14, v16, &v21);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v12 + 14) = v18;
    *v13 = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error encountered while trying to ignore detection of anchor with identifier [%s].  Error: [%@]", v12, 0x16u);
    sub_10001538C(v13);

    sub_100003458(v20);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001D304(void *a1)
{
  v2 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v2))
  {
    if (qword_100098B88 != -1)
    {
      sub_10001E3E4();
    }

    v13 = type metadata accessor for Logger();
    sub_100003420(v13, qword_100099DB0);
    swift_unknownObjectRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v16 = 136315394;
      sub_10000FC6C(&qword_100099168, &unk_100075750);
      v17 = String.init<A>(describing:)();
      v19 = sub_100014C58(v17, v18, &v32);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      swift_unknownObjectRetain();
      sub_10000FC6C(&qword_100099E80, &qword_100076018);
      v20 = String.init<A>(describing:)();
      v22 = sub_100014C58(v20, v21, &v32);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not find [%s] in event [%s]", v16, 0x16u);
      swift_arrayDestroy();
      sub_100003534();
      sub_100003534();
    }

    return 0;
  }

  v4 = String.init(cString:)() == 0xD000000000000036 && 0x800000010007A9B0 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_100098B88 != -1)
    {
      sub_10001E3E4();
    }

    v24 = type metadata accessor for Logger();
    sub_100003420(v24, qword_100099DB0);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      v29 = sub_10001E448(4.8149e-34, v28);

      *(v27 + 4) = v29;
      sub_10001E428(&_mh_execute_header, v30, v31, "Unrecognized event name: [%s]");
      sub_100003458(v28);
      sub_100003534();
      sub_100003534();
    }

    else
    {
    }

    return 0;
  }

  if (qword_100098B88 != -1)
  {
    sub_10001E3E4();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100099DB0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    v10 = sub_10001E448(4.8149e-34, v9);

    *(v8 + 4) = v10;
    sub_10001E428(&_mh_execute_header, v11, v12, "Received event: [%s]");
    sub_100003458(v9);
    sub_100003534();
    sub_100003534();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_10001D74C(void (*a1)(uint64_t, id))
{
  if (*(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager);

    v4 = sub_100018EF0();
    a1(v4, 0);
  }

  else
  {
    swift_getObjectType();
    v6 = sub_10001C420();
    a1(_swiftEmptyArrayStorage, v6);
  }
}

uint64_t sub_10001D8E4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t, void (*)(void), uint64_t))
{
  if (*(v4 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager))
  {
    v9 = *(v4 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager);

    a4(a1, a2, a3);
  }

  else
  {
    swift_getObjectType();
    sub_10001C420();
    a2();
  }
}

uint64_t sub_10001D9E0(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(void), void (*a7)(uint64_t, void (*)(void), uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = sub_100011C54(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001203C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = a1;
  sub_10001D8E4(v18, a6, v20, a7);

  return (*(v14 + 8))(v18, v11);
}

void sub_10001DB14(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  if ([v4 respondsToSelector:"ignoreDetectionForAnchorIdentifier:"])
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v4 ignoreDetectionForAnchorIdentifier:isa];
    swift_unknownObjectRelease();
  }

  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_10001DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  result = [v7 respondsToSelector:"sendDataRequest:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    sub_100011C68();
    v11[1] = 1107296256;
    v11[2] = sub_10001C2F8;
    v11[3] = &unk_10008EB10;
    v10 = _Block_copy(v11);

    [v7 sendDataRequest:isa completion:v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001DEA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  if ([v1 respondsToSelector:"overridePresenterLaunchOptions:"])
  {
    swift_unknownObjectRetain();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = [v1 overridePresenterLaunchOptions:isa];

    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
  }
}

uint64_t sub_10001E060()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001E094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E0AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10001E140(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10001CE78(a1, v1 + v4);
}

uint64_t sub_10001E1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CompanionLinkDevice();
  *(a3 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + 24) = &_swiftEmptySetSingleton;
  *(a3 + 40) = 0;
  if (qword_100098B60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100099610);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loading", v8, 2u);
  }

  *(a3 + 32) = a2;
  return a3;
}

uint64_t sub_10001E310()
{
  swift_unknownObjectWeakDestroy();
  sub_10001203C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001E344()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001E37C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10001C890(a1);
}

uint64_t sub_10001E384(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E3E4()
{

  return swift_once();
}

void sub_10001E428(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10001E448(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_100014C58(v3, v2, va);
}

id sub_10001E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Dictionary.init(dictionaryLiteral:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = &type metadata for String;
    *&v21 = a4;
    *(&v21 + 1) = a5;
    sub_100011558(&v21, v18);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001E770();
    sub_10003D158();
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getErrorValue();
    v9 = v19;
    v10 = v20;
    v22 = v20;
    v11 = sub_10001E710(&v21);
    (*(*(v10 - 1) + 16))(v11, v9, v10);
    sub_100011558(&v21, v18);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001E770();
    sub_10003D158();
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:a3 userInfo:isa];

  return v15;
}

id sub_10001E68C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v11 = *a8;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10001E468(v12, v13, a1, a2, a3, 0);
}

uint64_t *sub_10001E710(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t SidecarPacketType.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1801675054;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 1801547310;
      break;
    case 2:
      result = 0x7463656E6E6F632ELL;
      break;
    case 3:
      result = 0x6E6E6F637369642ELL;
      break;
    case 4:
      result = 0x65726975716E692ELL;
      break;
    case 5:
      result = 0x7375746174732ELL;
      break;
    case 6:
      result = 0x6567617373656D2ELL;
      break;
    default:
      result = dispatch thunk of CustomStringConvertible.description.getter();
      break;
  }

  return result;
}

id sub_10001E8B0(uint64_t a1)
{
  *&v19 = Int._bridgeToObjectiveC()();
  sub_1000033E0(0, &qword_100099E98, NSNumber_ptr);
  sub_10001FE44();
  AnyHashable.init<A>(_:)();
  sub_1000209D8(v18, a1, &v19);
  sub_10001FDF0(v18);
  if (v20)
  {
    sub_100020164();
  }

  else
  {
    sub_10001FD0C(&v19);
  }

  v16.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  AnyHashable.init<A>(_:)();
  sub_1000209D8(v18, a1, &v19);

  sub_10001FDF0(v18);
  if (v20)
  {
    if (sub_100020164())
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      v3 = OPACKDecodeData();
      sub_100003388(v16.super.super.isa, v17);

      if (v3)
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (v4)
        {
          return v4;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_10001FD0C(&v19);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100020130();
  v11 = sub_10001E674(v5, v6, v7, v8, v9, v10, 75);
  if (qword_100098BB0 != -1)
  {
    sub_1000200E0();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003420(v12, qword_1000A1AE8);
  __chkstk_darwin(v13);
  sub_100016F18(sub_10001EB84, 0, sub_100011C20);
  v14 = [objc_allocWithZone(NSDictionary) init];

  return v14;
}

uint64_t sub_10001EBA0()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (v1 && (sub_100020098(v2, v3, v4, &type metadata for Int, v5, v6, v7, v8, v10), swift_dynamicCast()))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

id sub_10001EC24()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (v1)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v1;
  v5[3] = ObjectType;
  v3 = sub_10001ECAC(v5);
  sub_10001FD0C(v5);
  return v3;
}

id sub_10001ECAC(uint64_t a1)
{
  sub_10001FD74(a1, v17);
  if (!v18)
  {
    sub_10001FD0C(v17);
    return 0;
  }

  sub_10000FC6C(&qword_100099E88, &qword_100076080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *&v19[0];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = RPDecodeNSError();

  if (v3 && (sub_10001FDE4() & 1) != 0)
  {
    *&v15 = 7169375;
    *(&v15 + 1) = 0xE300000000000000;
    AnyHashable.init<A>(_:)();
    sub_1000209D8(v17, v1, &v15);

    sub_10001FDF0(v17);
    if (v16)
    {
      sub_100011558(&v15, v19);
      v4 = [v3 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = [v3 code];
      sub_10000FC6C(&qword_100099E90, &qword_100076088);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000759A0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v10;
      sub_100011020(v19, inited + 48);
      v11 = Dictionary.init(dictionaryLiteral:)();
      v12 = objc_allocWithZone(NSError);
      v13 = sub_10001FC44(v5, v7, v8, v11);

      sub_100003458(v19);
      return v13;
    }

    else
    {
      sub_10001FD0C(&v15);
    }
  }

  else
  {
  }

  return v3;
}

uint64_t sub_10001EEF0()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (!v1)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_10001EF88()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (!v1)
  {
    return 0;
  }

  sub_100020098(v2, v3, v4, &type metadata for Double, v5, v6, v7, v8, v18);
  v9 = swift_dynamicCast();
  return sub_100020100(v9, v10, v11, v12, v13, v14, v15, v16, v19);
}

uint64_t sub_10001F00C(void *a1)
{
  v2 = 2;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = [a1 objectForKey:isa];

  if (v4)
  {
    sub_100020098(v5, v6, v7, &type metadata for Int, v8, v9, v10, v11, v13);
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

uint64_t sub_10001F0B8(void *a1)
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v3 = [a1 objectForKey:isa];

  if (!v3)
  {
    return 0;
  }

  sub_100020098(v4, v5, v6, v7, v8, v9, v10, v11, v21);
  v12 = swift_dynamicCast();
  return sub_100020100(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

void sub_10001F5BC()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = *v0;
  v3 = Int._bridgeToObjectiveC()().super.super.isa;
  [v2 setObject:isa forKeyedSubscript:v3];
}

uint64_t sub_10001F628(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
    v2 = [objc_allocWithZone(NSMutableDictionary) init];
    v3 = v1;
    v4 = _convertErrorToNSError(_:)();

    sub_100011E98();
    RPEncodeNSError();

    if (sub_10001FDE4())
    {
      v5 = [v3 userInfo];
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100020974(v6, &v9);

      if (v10)
      {
        sub_100011558(&v9, v11);
        sub_10000FCB4(v11, v12);
        v7 = _bridgeAnythingToObjectiveC<A>(_:)();
        *&v9 = 7169375;
        *(&v9 + 1) = 0xE300000000000000;
        [v2 __swift_setObject:v7 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_100003458(v11);
      }

      else
      {

        sub_10001FD0C(&v9);
      }
    }

    else
    {
    }

    return v2;
  }

  else
  {
    sub_1000033E0(0, &qword_100099EA8, NSDictionary_ptr);
    return NSDictionary.init(dictionaryLiteral:)();
  }
}

void sub_10001F7E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *v2;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v3 removeObjectForKey:?];
  }

  else
  {
    v4 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v5 = *v2;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v5 setObject:v4 forKeyedSubscript:?];
  }
}

uint64_t sub_10001F87C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  sub_10001FCF8(a2, a3);
  v6 = sub_10001F14C(v5, a2, a3);

  sub_100011358(a2, a3);
  return v6;
}

uint64_t sub_10001F8F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = Dictionary.init(dictionaryLiteral:)();
  sub_10000FC6C(&qword_100099E88, &qword_100076080);
  Dictionary.reserveCapacity(_:)(2);
  Data = OPACKEncoderCreateData();
  if (Data)
  {
    v6 = Data;
    Int._bridgeToObjectiveC()();
    sub_1000033E0(0, &qword_100099E98, NSNumber_ptr);
    sub_10001FE44();
    sub_100020144();
    type metadata accessor for CFData(0);
    v24 = v18;
    *&v23 = v6;
    sub_100011558(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10003D268(v22, v25);
    v16 = v21;
    sub_10001FDF0(v25);
    if (a3 >> 60 != 15)
    {
      v19 = sub_100011E98();
      sub_100010E78(v19, v20);
      *&v23 = Int._bridgeToObjectiveC()();
      sub_100020144();
      v24 = &type metadata for Data;
      *&v23 = a2;
      *(&v23 + 1) = a3;
      sub_100011558(&v23, v22);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10003D268(v22, v25);
      v16 = v21;
      sub_10001FDF0(v25);
    }
  }

  else
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100020130();
    v13 = sub_10001E674(v7, v8, v9, v10, v11, v12, 238);
    if (qword_100098BB0 != -1)
    {
      sub_1000200E0();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_100003420(v14, qword_1000A1AE8);
    __chkstk_darwin(v15);
    sub_100016F18(sub_10001FBDC, 0, sub_10001132C);
    v16 = Dictionary.init(dictionaryLiteral:)();
  }

  return v16;
}

uint64_t sub_10001FC04()
{
  v1 = *(v0 + 8);
  sub_10001FCF8(v1, *(v0 + 16));
  return v1;
}

id sub_10001FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10001FCF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010E78(a1, a2);
  }

  return a1;
}

uint64_t sub_10001FD0C(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001FE44()
{
  result = qword_100099EA0;
  if (!qword_100099EA0)
  {
    sub_1000033E0(255, &qword_100099E98, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EA0);
  }

  return result;
}

uint64_t sub_10001FEAC(uint64_t a1)
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

uint64_t sub_10001FEC8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10001FF18(uint64_t a1)
{
  result = sub_10001FF40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001FF40()
{
  result = qword_100099EB0;
  if (!qword_100099EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EB0);
  }

  return result;
}

unint64_t sub_10001FF94(uint64_t a1)
{
  result = sub_10001FFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001FFBC()
{
  result = qword_100099EB8;
  if (!qword_100099EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EB8);
  }

  return result;
}

unint64_t sub_100020010(uint64_t a1)
{
  result = sub_100020038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020038()
{
  result = qword_100099EC0;
  if (!qword_100099EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EC0);
  }

  return result;
}

uint64_t sub_1000200E0()
{

  return swift_once();
}

uint64_t sub_100020100(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

void sub_100020118(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_100020144()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100020164()
{

  return swift_dynamicCast();
}

id sub_100020184(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10002019C()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099EC8);
  sub_100003420(v0, qword_100099EC8);
  return Logger.init(subsystem:category:)();
}

void *sub_10002021C(void *a1)
{
  v1[2] = a1;
  v1[3] = 0;
  type metadata accessor for EnhancedDiscoveryController();
  v3 = swift_allocObject();
  *(v3 + 32) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  v1[4] = v3;
  v4 = a1;
  return v1;
}

void sub_10002026C(uint64_t a1, uint64_t a2, void (*a3)(void, void, id))
{
  v6 = *v3;
  v27 = type metadata accessor for DispatchPredicate();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v27);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100098B90 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003420(v11, qword_100099EC8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = v6;
    v15 = v14;
    v29 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = Dictionary.description.getter();
    v18 = sub_100014C58(v16, v17, &v29);
    v26 = a3;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v28 = a2;

    sub_10000FC6C(&qword_100099FB8, &qword_100076318);
    v20 = String.init<A>(describing:)();
    v22 = sub_100014C58(v20, v21, &v29);
    a3 = v26;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Handling remote initiation request. Request: [%s. Options: [%s]", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  v23 = v27;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v27);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v23);
  if (v24)
  {
    sub_1000205C8(-999, 0xD000000000000042, 0x800000010007AB20, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000205C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, id))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10001E468(v8, v10, a1, a2, a3, 0);
  if (qword_100098B90 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003420(v12, qword_100099EC8);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error encountered: [%@].", v16, 0xCu);
    sub_10001538C(v17);
  }

  v19 = v13;
  a4(0, 0, v13);
}

uint64_t sub_1000207D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_100020800()
{
  sub_1000207D0();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_10002087C()
{
  sub_100049F48();
  sub_100011E50();
  swift_beginAccess();
  v1 = sub_10003A1F4(v0);
  swift_endAccess();
  if (v1)
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100048324();
    sub_10004A140();
    swift_allocError();
    *v2 = 0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    v5 = sub_100049F8C(v3, v4, -101, 17, 0x800000010007B240);
    v6 = sub_100049AA4();
    sub_10002F534(v6, v7, 1);
  }
}

double sub_100020974@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000391EC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_100011020(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1000209D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10003925C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100011020(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100020A3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000392A0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_100020A8C@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = 0uLL;
  if (*(a4 + 16))
  {
    v8 = sub_100039568(a1, a2, a3);
    if (v9)
    {
      v10 = *(a4 + 56) + 40 * v8;
      v15 = *v10;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);

      v6 = v15;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      result = 0;
      v6 = 0uLL;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    result = 0;
  }

  *a5 = v6;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = result;
  return result;
}

uint64_t sub_100020B28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_100039668(), (v3 & 1) != 0))
  {
    v4 = *(a2 + 56);
    v5 = _s7SessionC8IdentityVMa(0);
    sub_100011D00(v5);
    v7 = *(v6 + 72);
    sub_100049760();
    sub_10003E75C();
    v8 = sub_100049BFC();
    v11 = v5;
  }

  else
  {
    _s7SessionC8IdentityVMa(0);
    v8 = sub_100049BE8();
  }

  return sub_10001137C(v8, v9, v10, v11);
}

uint64_t sub_100020BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
}

uint64_t sub_100020C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1000391EC(), (v4 & 1) != 0))
  {
    v5 = *(a3 + 56);
    v6 = type metadata accessor for CompanionLinkDevice();
    sub_100011D00(v6);
    v8 = *(v7 + 72);
    sub_10003E75C();
    v9 = sub_100049BFC();
    v12 = v6;
  }

  else
  {
    type metadata accessor for CompanionLinkDevice();
    v9 = sub_100049BE8();
  }

  return sub_10001137C(v9, v10, v11, v12);
}

uint64_t sub_100020CD4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10003925C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_100020D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000391EC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void sub_100020D74()
{
  sub_100011FF4();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = sub_10001B8E8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100011D10();
  v25[1] = v11 - v12;
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v16 = 0;
  v29 = *(v2 + 16);
  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v29 == v16)
    {

LABEL_14:
      sub_100011FBC();
      return;
    }

    if (v16 >= *(v2 + 16))
    {
      break;
    }

    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = *(v8 + 72);
    sub_100048658();
    v19 = v27(v15);
    if (v0)
    {
      sub_100048978(v15, &qword_10009A850);

      goto LABEL_14;
    }

    if (v19)
    {
      sub_10004871C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v26;
      v30 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = v26[2];
        sub_10003EC7C();
        v21 = v30;
      }

      v23 = v21[2];
      v24 = (v23 + 1);
      if (v23 >= v21[3] >> 1)
      {
        v26 = (v23 + 1);
        v25[0] = v23;
        sub_10003EC7C();
        v24 = v26;
        v21 = v30;
      }

      ++v16;
      v21[2] = v24;
      v26 = v21;
      sub_10004871C();
    }

    else
    {
      sub_100048978(v15, &qword_10009A850);
      ++v16;
    }
  }

  __break(1u);
}

BOOL sub_100020FF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

const char *sub_100021034(uint64_t a1)
{
  v2 = RapportStreamSession.streamID.getter();
  if (!v3)
  {
    goto LABEL_4;
  }

  v20 = 58;
  v21 = 0xE100000000000000;
  __chkstk_darwin(v2);
  sub_100011DA8();
  *(v4 - 16) = &v20;
  v8 = sub_100038434(1, 0, sub_1000496CC, v5, v6, v7, v4);
  sub_100035E08(v8);
  sub_10004A080();
  v10 = v9;

  if (v10)
  {
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_10004A074();
    static String._fromSubstring(_:)();
    sub_10004A080();

    sub_10004A074();
    v12 = String._bridgeToObjectiveC()();

    v13 = *(a1 + 16);
    sub_100049CB8();
    v16 = [v14 v15];
  }

  else
  {
LABEL_4:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v16 = "Activation Failed: ";
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_10001E468(v17, v18, -1001, 0xD000000000000022, 0x800000010007B210, 0);
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_10002120C()
{
  sub_100049C50();
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v2 = _s7SessionC8IdentityVMa(0), *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20))))
  {
    v3 = *(v1 + *(v2 + 24)) ^ *(v0 + *(v2 + 24)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100021270()
{
  sub_100011D50();
  swift_beginAccess();
  v1 = *(v0 + 72);

  sub_100023B5C(v2);
  sub_100049AC8();

  return v0;
}

void sub_1000212CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011FF4();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for Logger();
  v29 = sub_100011C54(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_100011CD4();
  v36 = v35 - v34;
  v37 = _s7SessionC8IdentityVMa(0);
  v38 = sub_1000499EC(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100011D10();
  v43 = v41 - v42;
  __chkstk_darwin(v44);
  sub_100049D4C();
  v45 = sub_10002CA00(v27, v25);
  if (!v20)
  {
    v46 = v45;
    v64 = v25;
    sub_10002ECF4(v21);
    sub_100049760();
    sub_10003E75C();
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v47 = sub_100003420(v28, qword_1000A1AE8);
    (*(v31 + 16))(v36, v47, v28);
    v48 = type metadata accessor for Relay.Session(0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();

    sub_1000280A8();
    sub_10002EB30(v51, v21);
    swift_weakAssign();
    sub_100028F9C();
    sub_10002C7D8(v51, v46);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      sub_100049A30();
      v54 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v54 = 136446722;

      sub_100027DA0();
      sub_100049CD0();

      v55 = sub_100049A98();
      sub_100014C58(v55, v56, v57);
      sub_100049CC4();

      *(v54 + 4) = v43;
      *(v54 + 12) = 2082;

      RapportRemoteDisplaySession.description.getter(v58);
      sub_100049CD0();

      v59 = sub_100049A98();
      sub_100014C58(v59, v60, v61);
      sub_100049CC4();

      *(v54 + 14) = v43;
      *(v54 + 22) = 2082;
      switch(v64)
      {
        case 1:
          v62 = 0xE400000000000000;
          v63 = 1279547201;
          break;
        case 3:
          v62 = 0xE400000000000000;
          v63 = 1229343063;
          break;
        case 2:
          v62 = 0xE300000000000000;
          v63 = 4346709;
          break;
        default:
          v63 = 0;
          v62 = 0xE000000000000000;
          break;
      }

      sub_100014C58(v63, v62, &a10);
      sub_100049AC8();

      *(v54 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: Session Opened with %{public}s (%{public}s)", v54, 0x20u);
      swift_arrayDestroy();
      sub_100011CF4();

      sub_100011CF4();

      sub_100049748();
    }

    else
    {

      sub_100049748();
    }

    sub_10003E708();
  }

  sub_100011FBC();
}

void sub_1000216C0()
{
  sub_100011DD0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SidecarIdentity();
  v11 = sub_1000499EC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100049818();
  v73 = _s7SessionC8IdentityVMa(0);
  v14 = sub_100011D00(v73);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100011D10();
  __chkstk_darwin(v17);
  sub_100049AEC();
  __chkstk_darwin(v18);
  sub_100049D4C();
  v19 = _TtC12SidecarRelay15ServiceProvider;
  v75 = v5;
  v74 = v20;
  if (v7)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100049AD4(v21, qword_1000A1AE8);
    sub_100049FCC();
    __chkstk_darwin(v22);
    sub_100011DA8();
    *(v23 - 16) = v7;
    sub_100016F18(sub_100043BCC, v9, sub_100011C20);

    if (v5)
    {
LABEL_5:
      sub_1000292B0();
    }
  }

  else
  {
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100049AD4(v51, qword_1000A1AE8);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      sub_100049C18();
      v54 = swift_slowAlloc();
      sub_100049A30();
      v76 = swift_slowAlloc();
      v79 = v76;
      *v54 = 136446210;
      sub_100027DA0();
      v57 = sub_100014C58(v55, v56, &v79);

      *(v54 + 4) = v57;
      v3 = v0;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: Close Session", v54, 0xCu);
      sub_100003458(v76);
      sub_100011CF4();

      v5 = v75;
      sub_100011CF4();
    }

    v19 = _TtC12SidecarRelay15ServiceProvider;
    if (v5)
    {
      goto LABEL_5;
    }
  }

  sub_1000293FC();
  sub_10002EEEC();
  sub_10002EC10(v9 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity);
  sub_100049760();
  sub_10003E75C();
  sub_100011D50();
  swift_beginAccess();
  v24 = *(v3 + 152);
  v25 = &off_100075000;
  if (!*(v24 + 16))
  {
    goto LABEL_29;
  }

  v26 = v19;
  v27 = *(v3 + 152);

  v28 = sub_1000393BC(v2);
  if ((v29 & 1) == 0)
  {

    goto LABEL_29;
  }

  v30 = v28;
  v31 = *(v24 + 36);

  sub_10002F010(v1, v30, v31, 0, *(v3 + 152));
  v33 = v32;
  sub_100049748();
  sub_10003E708();
  if (*(v33 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) != 1)
  {
    sub_100011E50();
    swift_beginAccess();
    sub_10000FC6C(&qword_10009A768, &qword_100076970);
    Dictionary._Variant.remove(at:)();

    swift_endAccess();
    sub_100049748();
    sub_10003E708();
    v19 = v26;
LABEL_28:
    v25 = &off_100075000;
    goto LABEL_29;
  }

  v19 = v26;
  if (v26[74].info != -1)
  {
    sub_100049734();
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100049AD4(v34, qword_1000A1AE8);
  sub_100049760();
  sub_10003E75C();
  v35 = v33;
  v36 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  v37 = sub_100049D00();
  if (!os_log_type_enabled(v37, v38))
  {

    sub_100049748();
    sub_10003E708();
    goto LABEL_28;
  }

  sub_10004A14C();
  v68 = swift_slowAlloc();
  sub_100049A30();
  v70 = swift_slowAlloc();
  v77 = v70;
  *v68 = 136446466;
  v69 = v36;
  v39 = sub_100052008();
  v67 = v40;
  if (*(v74 + *(v73 + 24)))
  {
    v41 = 0x65746F6D6572;
  }

  else
  {
    v41 = 0x6C61636F6CLL;
  }

  if (*(v74 + *(v73 + 24)))
  {
    v42 = 0xE600000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  v78[0] = *(v74 + *(v73 + 20));
  sub_100010ED0();
  sub_100011EB0();
  v43 = String.init<A>(_:radix:uppercase:)();
  v72 = v2;
  v45 = v44;
  v78[0] = v39;
  v78[1] = v67;
  v46._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v46);
  v47._countAndFlagsBits = v41;
  v47._object = v42;
  String.append(_:)(v47);
  v19 = v26;

  v48._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v48);
  v49._countAndFlagsBits = v43;
  v49._object = v45;
  String.append(_:)(v49);
  v2 = v72;

  sub_100049748();
  sub_10003E708();
  v50 = sub_100014C58(v39, v67, &v77);

  *(v68 + 4) = v50;
  *(v68 + 12) = 1024;
  LODWORD(v50) = *&v35[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

  *(v68 + 14) = v50;
  _os_log_impl(&_mh_execute_header, v69, v71, "%{public}s: Allow Session Reconnect to Service Provider PID %d", v68, 0x12u);
  sub_100003458(v70);
  sub_100011CF4();

  sub_100011CF4();

  v25 = &off_100075000;
LABEL_29:
  if (v19[74].info != -1)
  {
    sub_100049734();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100049AD4(v58, qword_1000A1AE8);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    sub_10004A14C();
    v61 = swift_slowAlloc();
    sub_100049A30();
    v62 = swift_slowAlloc();
    v78[0] = v62;
    *v61 = *(v25 + 172);
    sub_100027DA0();
    sub_100014C58(v63, v64, v78);
    sub_10004A228();
    *(v61 + 4) = v2;
    *(v61 + 12) = 1024;
    *(v61 + 14) = v75 & 1;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s: Close Session (Send Disconnect: %{BOOL}d)", v61, 0x12u);
    sub_100003458(v62);
    sub_100011CF4();

    sub_100011CF4();
  }

  sub_10002F0DC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v66 = Strong;
    swift_weakAssign();
    sub_10002C578(v66);
    sub_100049760();
    sub_10003E75C();
    sub_1000497A4();
    sub_100049AB0();
    sub_1000469E4();
    sub_100049F3C();
    sub_10002E6DC();

    sub_10004971C();
    sub_10003E708();
  }

  sub_100049748();
  sub_10003E708();
  sub_100011DB8();
}

uint64_t sub_100021EBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = a7;
  type metadata accessor for RapportStreamSession();
  v14 = RapportStreamSession.__allocating_init()();
  RapportStreamSession.delegatedProcessUPID.setter(a4);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = type metadata accessor for RapportRemoteDisplaySession();
    v37 = &protocol witness table for RapportRemoteDisplaySession;
    v34 = v16;

    RapportStreamSession.messenger.setter(&v34);

    v17 = a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    v34 = *(v17 + *(_s7SessionC8IdentityVMa(0) + 20));
    sub_100010C84();
    sub_100011EB0();
    v34 = String.init<A>(_:radix:uppercase:)();
    v35 = v18;

    v19._countAndFlagsBits = sub_100049ABC();
    String.append(_:)(v19);

    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);

    RapportStreamSession.streamID.setter(v34, v35);
    if ((a2 - 1) < 3)
    {
      v21 = a2;
    }

    else
    {
      v21 = 0;
    }

    RapportStreamSession.streamType.setter(v21);
    v22 = RapportStreamSession.streamFlags.getter();
    v23 = 0;
    if ((a3 & 2) != 0)
    {
      v23 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
    }

    RapportStreamSession.streamFlags.setter(v23 | v22);
    v24 = RapportStreamSession.trafficFlags.getter();
    RapportStreamSession.trafficFlags.setter(v24 & 0xFFFFBDFF);
    v25 = swift_allocObject();
    v25[2] = v38;
    v25[3] = a8;
    v25[4] = v14;

    RapportStreamSession.prepare(completion:)(sub_1000487A8, v25);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v26, v27, v28, v29, v30, v31);
    swift_willThrow();
  }
}

void sub_100022124()
{
  sub_10004A2B0();
  sub_100049E34();
  v2 = sub_100049CDC();
  v3 = _s7SessionC8IdentityVMa(v2);
  v4 = sub_1000499EC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100011CD4();
  sub_10004998C();
  v7 = type metadata accessor for SidecarIdentity();
  v8 = sub_1000499EC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100049818();
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_1000469E4();
  sub_100049E28();
  swift_beginAccess();
  v11 = *(v0 + 136);
  sub_1000498A0();
  v14 = sub_100020BD8(v1, v12, v13);
  swift_endAccess();
  if (!v14)
  {
    type metadata accessor for Domain();
    swift_allocObject();
    Domain.init()();
    sub_100011E50();
    swift_beginAccess();

    v15 = *(v0 + 136);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 136);
    sub_100049BB0();
    sub_10003DC84();
    *(v0 + 136) = v18;
    swift_endAccess();
  }

  v16 = sub_100049BBC();
  Domain.allocate(completion:)(v16, v17);
  sub_100029624();

  sub_10004971C();
  sub_10003E708();
  sub_10004A164();
}

void sub_100023B5C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = sub_100046A7C(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v23 = v5;
    v24 = v1;
    v22 = v1 + 72;
    v9 = 1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < v9 << *(v1 + 32))
    {
      v10 = v4 >> 6;
      v11 = v9 << v4;
      if ((*(v8 + 8 * (v4 >> 6)) & (v9 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_21;
      }

      v25 = v3;
      v26 = v7;
      v12 = *(*(v1 + 56) + 8 * v4);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v24;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = 1 << *(v24 + 32);
      if (v4 >= v14)
      {
        goto LABEL_22;
      }

      if ((*(v8 + 8 * v10) & v11) == 0)
      {
        goto LABEL_23;
      }

      if (*(v24 + 36) != v6)
      {
        goto LABEL_24;
      }

      sub_100049B80();
      if (v15)
      {
        v17 = v10 << 6;
        v18 = v10 + 1;
        v19 = (v22 + 8 * v10);
        while (v18 < (v14 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_100010FDC(v4, v6, v25 & 1);
            v9 = 1;
            v14 = __clz(__rbit64(v20)) + v17;
            goto LABEL_17;
          }
        }

        sub_100010FDC(v4, v6, v25 & 1);
        v9 = 1;
      }

      else
      {
        sub_100049FE4();
        v14 = v16 | v4 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_17:
      v3 = 0;
      v7 = v26 + 1;
      v4 = v14;
      v6 = v23;
      if (v26 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100023D6C(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
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
    v47 = _swiftEmptyArrayStorage;
    sub_10003ECDC(0, v2 & ~(v2 >> 63), 0);
    v42 = _swiftEmptyArrayStorage;
    v44 = sub_100046F1C(v1);
    v45 = v3;
    v46 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (1)
      {
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          break;
        }

        v8 = v44;
        v9 = v46;
        v40 = v7;
        v41 = v45;
        sub_100046F7C(v44, v45, v46, v1);
        v11 = v10;
        v12 = sub_10000FE50();
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = v42;
        v47 = v42;
        v21 = v42[2];
        v20 = v42[3];
        if (v21 >= v20 >> 1)
        {
          sub_10003ECDC((v20 > 1), v21 + 1, 1);
          v19 = v47;
        }

        v19[2] = v21 + 1;
        v22 = &v19[4 * v21];
        v22[4] = v12;
        *(v22 + 10) = v14;
        v22[6] = v16;
        v22[7] = v18;
        v42 = v19;
        if (v39)
        {
          v1 = v38;
          if (!v9)
          {
            goto LABEL_36;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v27 = v37;
          sub_10000FC6C(&qword_10009A9F0, &qword_100076B28);
          v28 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v28(v43, 0);
        }

        else
        {
          v1 = v38;
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v23 = 1 << *(v38 + 32);
          if (v8 >= v23)
          {
            goto LABEL_32;
          }

          v24 = v8 >> 6;
          v25 = *(v36 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v38 + 36) != v41)
          {
            goto LABEL_34;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v27 = v37;
          }

          else
          {
            v29 = v24 << 6;
            v30 = v24 + 1;
            v31 = (v35 + 8 * v24);
            v27 = v37;
            while (v30 < (v23 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_100010FDC(v8, v41, 0);
                v23 = __clz(__rbit64(v32)) + v29;
                goto LABEL_27;
              }
            }

            sub_100010FDC(v8, v41, 0);
          }

LABEL_27:
          v34 = *(v38 + 36);
          v44 = v23;
          v45 = v34;
          v46 = 0;
        }

        v5 = v40;
        if (v40 == v27)
        {
          sub_100010FDC(v44, v45, v46);
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

void *sub_1000240C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    v5 = sub_100049C74(a1, a2);
    sub_10000FC6C(v5, v6);
    sub_100049F00();
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;

  a4(v8, 1, &v10);

  return v10;
}

void sub_100024174(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A840, &qword_100076A18);
    sub_100049F00();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v11 = (*(a1 + 48) + v10);
    v12 = v11[1];
    v13 = (*(a1 + 56) + v10);
    v15 = *v13;
    v14 = v13[1];
    *&v33[0] = *v11;
    *(&v33[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100011558(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_100011558(v32, v33);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      sub_100049B24();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*&v7[8 * v17] != -1)
        {
          sub_100049B10();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_100049B38();
LABEL_21:
    v5 &= v5 - 1;
    sub_100049AFC();
    *&v7[v21] |= v22;
    v24 = v2[6] + 40 * v23;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    sub_100011558(v33, (v2[7] + 32 * v23));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100024404(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A878, &unk_100076A40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100047A60(*(a1 + 48) + 40 * v11, __src);
    sub_100011020(*(a1 + 56) + 32 * v11, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v21 = __src[0];
    v22 = __src[1];
    v23 = *&__src[2];
    sub_100011558(&__dst[5], &v25);
    swift_dynamicCast();
    v26 = v23;
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v20 = v2[6] + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    *(v2[7] + 8 * v15) = v24;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000246A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A840, &qword_100076A18);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100047A60(*(a1 + 48) + 40 * v11, v33);
    v35 = *(*(a1 + 56) + 8 * v11);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    *&v32[0] = v35;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_100011558(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_100011558(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v20 = v2[6] + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    result = sub_100011558(v32, (v2[7] + 32 * v15));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_100024958(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a7 | a4))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a5)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = objc_allocWithZone(_DiagnosticsHandler);
    v11 = sub_100038258(a2, a5, sub_100048908, v9);
    swift_beginAccess();
    objc_setAssociatedObject(v11, &unk_100099738, v11, 0x301);
    swift_endAccess();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100024A48()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v0 = type metadata accessor for PropertyListEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v3 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_1000222B8(__src, v3);
  sub_100010DD0();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  memcpy(__dst, __src, 0x98uLL);
  sub_100010E24(__dst);

  return v4;
}

uint64_t sub_100024C10(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = sub_10000FC6C(&qword_10009A780, &qword_100076980);
  v3 = *(*(v37 - 8) + 64);
  v4 = __chkstk_darwin(v37);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v35 = &v31 - v7;
  __chkstk_darwin(v6);
  v34 = &v31 - v8;
  result = sub_100046A7C(a1);
  v11 = result;
  v12 = a1 + 64;
  v32 = a1 + 72;
  v33 = a1 + 64;
  if (v13)
  {
    __break(1u);
LABEL_20:
    v11 = 0;
LABEL_21:

    return v11;
  }

  else
  {
    while (1)
    {
      v14 = *(a1 + 36);
      if (v14 != v10)
      {
        break;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 == v15)
      {
        goto LABEL_20;
      }

      if (v11 < 0 || v11 >= v15)
      {
        goto LABEL_23;
      }

      if ((*(v12 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v11 >> 6;
      v40 = v14;
      v39 = v10;
      v16 = *(a1 + 48);
      v17 = *(*(type metadata accessor for Relay.RapportSessionKey(0) - 8) + 72);
      sub_10003E75C();
      v18 = *(*(a1 + 56) + 8 * v11);
      v19 = v35;
      sub_1000469E4();
      v20 = v36;
      v21 = v37;
      *(v19 + *(v37 + 48)) = v18;
      sub_100048658();
      v22 = *&v20[*(v21 + 48)];

      sub_10003E708();
      result = sub_100048978(v19, &qword_10009A780);
      if (v22 == v38)
      {
        goto LABEL_21;
      }

      v23 = 1 << *(a1 + 32);
      if (v11 >= v23)
      {
        goto LABEL_25;
      }

      v12 = v33;
      v24 = *(v33 + 8 * v41);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v40)
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v41 << 6;
        v27 = v41 + 1;
        v28 = (v32 + 8 * v41);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_100010FDC(v11, v39, 0);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_18;
          }
        }

        result = sub_100010FDC(v11, v39, 0);
      }

LABEL_18:
      v10 = *(a1 + 36);
      v11 = v23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_100024F78()
{
  sub_100011DD0();
  sub_10004A024();
  v2 = type metadata accessor for UUID();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100049818();
  if (*(v0 + 16))
  {
    v8 = *(v0 + 40);
    sub_10004978C();
    sub_100035114(v9);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v0 + 56;
    v17 = v0;
    v11 = *(v0 + 32);
    sub_100049C5C();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v10 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v1, *(v17 + 48) + *(v5 + 72) * v15, v2);
      sub_10004978C();
      sub_100035114(&qword_10009A940);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v1, v2);
      v12 = v15 + 1;
    }

    while ((v16 & 1) == 0);
  }

  sub_100011DB8();
}

BOOL sub_100025128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_100025214(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100025280()
{
  type metadata accessor for Relay();
  swift_allocObject();
  result = sub_100025384();
  qword_1000A1AE0 = result;
  return result;
}

uint64_t sub_1000252DC()
{
  sub_1000033E0(0, &qword_10009A880, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100099FD8 = result;
  return result;
}

uint64_t sub_100025384()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(type metadata accessor for Relay.MachService()) init];
  v0[6] = 0;
  type metadata accessor for SidecarIdentity();
  type metadata accessor for RapportRemoteDisplayDevice();
  sub_100035114(&unk_10009A738);
  v0[3] = 0;
  v0[4] = 0;
  v0[9] = Dictionary.init(dictionaryLiteral:)();
  v0[10] = &_swiftEmptyDictionarySingleton;
  v0[11] = 0;
  type metadata accessor for Relay.RapportSessionKey(0);
  type metadata accessor for RapportRemoteDisplaySession();
  sub_100035114(&unk_10009AAF8);
  v0[12] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for RapportStreamServer();
  v0[13] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for Relay.ConnectedSessionKey(0);
  type metadata accessor for Relay.Session(0);
  sub_100035114(&unk_10009AB00);
  v0[14] = Dictionary.init(dictionaryLiteral:)();
  _s7SessionC8IdentityVMa(0);
  sub_100035114(&unk_10009A7B0);
  v0[15] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for Domain();
  v0[17] = Dictionary.init(dictionaryLiteral:)();
  v0[18] = &_swiftEmptySetSingleton;
  type metadata accessor for ServiceProvider();
  v0[19] = Dictionary.init(dictionaryLiteral:)();
  sub_10000FC6C(&qword_10009A800, &qword_1000769E8);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v0[21] = 0;
  v0[22] = 0;
  v0[20] = v2;
  v3 = sub_10000FC6C(&qword_10009A798, &qword_100076998);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[16] = PassthroughSubject.init()();
  type metadata accessor for CompanionLinkServer();
  swift_allocObject();
  v0[5] = sub_1000120E0();
  v6 = objc_allocWithZone(type metadata accessor for SidecarRelayNullDelegate());
  v0[7] = sub_1000023DC(0);
  v7 = sub_10000FC6C(&qword_10009AB08, &qword_100076C28);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[8] = PassthroughSubject.init()();
  v10 = objc_allocWithZone(type metadata accessor for Relay.RelayProxy());

  v12 = sub_10002A588(v11);
  v13 = v0[6];
  *(v1 + 48) = v12;
  v14 = v12;
  swift_unknownObjectRelease();
  v15 = *(v1 + 56);
  if ([v15 respondsToSelector:"setRelayProxy:"])
  {
    [v15 setRelayProxy:v14];
  }

  sub_100024958(v1, "com.apple.sidecar", 17, 2, "relay", 5, 2);
  sub_10002587C();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = 0xD00000000000001ALL;
  v17[4] = 0x800000010007B260;
  v20[4] = sub_100048838;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100026074;
  v20[3] = &unk_10008F308;
  v18 = _Block_copy(v20);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v16, v18);
  _Block_release(v18);

  if ([*(v1 + 56) respondsToSelector:"relayInitialized"])
  {
    [swift_unknownObjectRetain() relayInitialized];
    swift_unknownObjectRelease();
  }

  return v1;
}

void sub_10002587C()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for RapportRemoteDisplayDiscovery();
    v2 = RapportRemoteDisplayDiscovery.__allocating_init()();
    v3 = *(v1 + 24);
    *(v1 + 24) = v2;

    swift_beginAccess();
    *(v2 + 32) = &off_10008F078;
    swift_unknownObjectWeakAssign();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;

    RapportRemoteDisplayDiscovery.activate(completion:)(sub_100048844, v4);
  }
}

void sub_100025960(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v8))
  {
    v9 = String.init(cString:)();
    v11 = v10;
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003420(v12, qword_1000A1AE8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1;
      v16 = a2;
      v17 = a4;
      v18 = a3;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100014C58(v9, v11, &v33);
      _os_log_impl(&_mh_execute_header, v13, v14, "=== %{public}s ===", v19, 0xCu);
      sub_100003458(v20);

      a3 = v18;
      a4 = v17;
      a2 = v16;
      a1 = v15;
    }

    v21 = v9 == 0xD000000000000021 && 0x800000010007B2A0 == v11;
    if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10002587C();
    }

    else
    {
      v22 = v9 == 0xD00000000000001ELL && 0x800000010007B2D0 == v11;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100025DCC();
      }

      else
      {
        v23 = v9 == 0xD00000000000002DLL && 0x800000010007B2F0 == v11;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v24 = *(a2 + 40);

          sub_1000124B4();

          sub_100025EB0(a1);
        }

        else
        {
          v25 = *(a2 + 56);
          if ([v25 respondsToSelector:"handleRapportEvent:"])
          {
            [v25 handleRapportEvent:a1];
          }

          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *v28 = 136315650;
            v29 = sub_100014C58(v9, v11, &v33);

            *(v28 + 4) = v29;
            *(v28 + 12) = 2080;
            *(v28 + 14) = sub_100014C58(a3, a4, &v33);
            *(v28 + 22) = 2080;
            sub_10000FC6C(&qword_10009AB10, &qword_100076C30);
            v30 = String.init<A>(describing:)();
            v32 = sub_100014C58(v30, v31, &v33);

            *(v28 + 24) = v32;
            _os_log_impl(&_mh_execute_header, v26, v27, "Encountered XPC event with name [%s] from stream with name [%s].  Handled by the relay delegate: [%s]", v28, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100025DCC()
{
  if (!*(v0 + 32))
  {
    v1 = v0;
    type metadata accessor for RapportRemoteDisplayServer();
    v2 = RapportRemoteDisplayServer.__allocating_init()();
    v3 = *(v1 + 32);
    *(v1 + 32) = v2;

    swift_beginAccess();
    *(v2 + 32) = &off_10008F050;
    swift_unknownObjectWeakAssign();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;

    RapportRemoteDisplayServer.activate(completion:)(sub_100048844, v4);
  }
}

void sub_100025EB0(void *a1)
{
  if (!xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_1000A1AE8);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No Reply Requested for Rapport XPC Event (Unexpected)";
    goto LABEL_14;
  }

  if (xpc_dictionary_create_reply(a1))
  {
    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
    return;
  }

  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000A1AE8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Failed to Create Reply to Rapport XPC Event";
LABEL_14:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_15:
}

uint64_t sub_100026074(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000260D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  v5 = *(v0 + 56);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);
  swift_unknownObjectRelease();
  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = *(v0 + 112);

  v13 = *(v0 + 120);

  v14 = *(v0 + 128);

  v15 = *(v0 + 136);

  v16 = *(v0 + 144);

  v17 = *(v0 + 152);

  v18 = *(v0 + 160);

  v19 = *(v0 + 168);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100026194()
{
  sub_1000260D4();

  return _swift_deallocClassInstance(v0, 184, 7);
}

void sub_1000261C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003420(v10, qword_1000A1AE8);
    sub_100049FCC();
    __chkstk_darwin(v11);
    sub_100011DA8();
    *(v12 - 16) = a1;
    sub_100016F18(a4, a3, a5);
  }

  else
  {
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003420(v14, qword_1000A1AE8);
    sub_100049AC8();

    v20 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v15))
    {
      sub_100049C18();
      v16 = swift_slowAlloc();
      sub_100049A30();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136446210;
      v18 = a6();
      sub_100014C58(v18, v19, &v21);
      sub_100049AC8();

      *(v16 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v20, v15, "%{public}s: Activated", v16, 0xCu);
      sub_100003458(v17);
      sub_100011CF4();

      sub_100049960();
    }

    else
    {
    }
  }
}

void (*sub_1000263BC())(uint64_t, uint64_t)
{
  sub_10004A024();
  _StringGuts.grow(_:)(21);
  v0(v1, v2);
  sub_100049CD0();

  v3._object = 0x800000010007B320;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  return v0;
}

uint64_t sub_100026444()
{
  sub_10000FC6C(&qword_10009A730, &qword_100076950);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000759A0;
  v1 = getuid();
  *(v0 + 56) = &type metadata for UInt32;
  *(v0 + 64) = &protocol witness table for UInt32;
  *(v0 + 32) = v1;
  v2 = String.init(format:_:)();
  v4 = v3;
  v5 = type metadata accessor for DarwinNotification();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = DarwinNotification.init(check:)(v2, v4);
  qword_100099FE8 = result;
  return result;
}

uint64_t sub_100026504()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 72) + 16))
  {
    ++dword_100099FE0;
    result = getpid();
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v3 = dword_100099FE0 | (result << 32);
  }

  else
  {
    v3 = 0;
  }

  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000A1AE8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Device Generation: %llx", v7, 0xCu);
  }

  if (qword_100098BB8 != -1)
  {
    swift_once();
  }

  v8 = DarwinNotification.token.getter();
  notify_set_state(v8, v3);
  v9 = *(v1 + 64);
  PassthroughSubject.send(_:)();
  DarwinNotification.name.getter();
  v10 = String.utf8CString.getter();

  notify_post((v10 + 32));
}

void sub_1000266CC()
{
  sub_100011DD0();
  sub_100049F48();
  v5 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v5);
  v7 = *(v6 + 64);
  sub_100049C0C();
  __chkstk_darwin(v8);
  sub_10004998C();
  v9 = type metadata accessor for SidecarIdentity();
  v10 = sub_100011D00(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100011D10();
  sub_100049AEC();
  __chkstk_darwin(v13);
  v14 = sub_10004A1E8();
  sub_100051C8C(v14, v1);
  sub_100049E70();
  if (v15)
  {
    sub_100048978(v1, &qword_10009A718);
  }

  else
  {
    sub_1000497A4();
    sub_10004A0D8();
    sub_1000469E4();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100049AD4(v16, qword_100099FC0);
    sub_1000497BC();
    sub_10004A098();
    sub_10003E75C();

    v17 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v18 = sub_100049EE8();
    if (os_log_type_enabled(v18, v19))
    {
      sub_100011DE8();
      swift_slowAlloc();
      sub_100049B90();
      v45[0] = swift_slowAlloc();
      *v4 = 136446466;
      v20 = sub_100052008();
      v22 = v21;
      sub_10004971C();
      sub_10003E708();
      sub_100014C58(v20, v22, v45);
      sub_10004A258();
      sub_100049D6C();
      v23 = RapportRemoteDisplayDiscovery.description.getter();
      sub_100014C58(v23, v24, v45);
      sub_100049FA8();
      *(v4 + 14) = v3;
      sub_1000499D8();
      _os_log_impl(v25, v26, v27, v28, v29, v30);
      sub_100049F54();
      sub_100011CF4();

      sub_100049950();
    }

    else
    {

      sub_10004971C();
      sub_10003E708();
    }

    sub_100011E50();
    swift_beginAccess();
    sub_1000498B8();
    v31 = sub_10004A098();
    sub_10003BDFC(v31, v32, &unk_100076948, v33, v34, v35, v36, v37, v43, v45[0]);
    swift_endAccess();

    sub_100049FD8();
    sub_100011E50();
    swift_beginAccess();

    v38 = *(v0 + 72);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v0 + 72);
    sub_100049AA4();
    sub_10003DC84();
    *(v0 + 72) = v44;
    swift_endAccess();
    v39 = *(*(v0 + 40) + 32);
    v45[0] = v2;
    v40 = type metadata accessor for RapportRemoteDisplayDevice();

    v41 = RapportEndpoint.idsDeviceIdentifier.getter(v40, &protocol witness table for RapportRemoteDisplayDevice);
    sub_100017D58(v41, v42);

    sub_100026504();
    sub_10004971C();
    sub_10003E708();
  }

  sub_100011DB8();
}

void sub_1000269F0()
{
  sub_100011DD0();
  v3 = v0;
  v5 = v4;
  v6 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v6);
  v8 = *(v7 + 64);
  sub_100049C0C();
  __chkstk_darwin(v9);
  sub_10004998C();
  v10 = type metadata accessor for SidecarIdentity();
  v11 = sub_100011D00(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100011D10();
  sub_100049AEC();
  __chkstk_darwin(v14);
  v16 = &v47[-1] - v15;

  sub_100051C8C(v17, v0);
  sub_100049E70();
  if (v18)
  {
    sub_100048978(v0, &qword_10009A718);
  }

  else
  {
    sub_1000497A4();
    sub_1000469E4();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100049AD4(v19, qword_100099FC0);
    sub_1000497BC();
    sub_100049F30();
    sub_10003E75C();

    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v21 = sub_100049EE8();
    if (os_log_type_enabled(v21, v22))
    {
      sub_100011DE8();
      swift_slowAlloc();
      sub_100049B90();
      v47[0] = swift_slowAlloc();
      *v2 = 136446466;
      v23 = sub_100052008();
      v25 = v24;
      sub_10004971C();
      sub_10003E708();
      sub_100014C58(v23, v25, v47);
      sub_10004A258();
      sub_100049D6C();
      v26 = RapportRemoteDisplayDiscovery.description.getter();
      sub_100014C58(v26, v27, v47);
      sub_100049FA8();
      *(v2 + 14) = v1;
      sub_1000499D8();
      _os_log_impl(v28, v29, v30, v31, v32, v33);
      sub_100049F54();
      sub_100011CF4();

      sub_100049950();
    }

    else
    {

      sub_10004971C();
      sub_10003E708();
    }

    if (sub_100026D4C(v16, 0))
    {

      sub_100011E50();
      swift_beginAccess();

      v34 = *(v3 + 80);
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v3 + 80);
      sub_100049BBC();
      sub_10003DC84();
      *(v3 + 80) = v46;
      swift_endAccess();
    }

    else
    {
      sub_100049FD8();
      sub_100011E50();
      swift_beginAccess();
      sub_1000498B8();
      sub_10003BDFC(v16, v35, v36, v37, v38, v39, v40, v41, v46, v47[0]);
      swift_endAccess();

      v42 = *(*(v3 + 40) + 32);
      v47[0] = v5;
      v43 = type metadata accessor for RapportRemoteDisplayDevice();

      v44 = RapportEndpoint.idsDeviceIdentifier.getter(v43, &protocol witness table for RapportRemoteDisplayDevice);
      sub_100017FEC(v44, v45);

      sub_100026504();
    }

    sub_10004971C();
    sub_10003E708();
  }

  sub_100011DB8();
}

uint64_t sub_100026D4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Relay.RapportSessionKey(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_10000FC6C(&unk_10009A740, &qword_100076958);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1000759A0;
    v9[4] = a2;
    v10 = 1;
  }

  else
  {
    v9 = &off_10008D980;
    v10 = 4;
  }

  for (i = 4; ; ++i)
  {
    v12 = v9[i];
    sub_10003E75C();
    *&v8[*(v5 + 20)] = v12;
    swift_beginAccess();
    v13 = *(v3 + 96);
    if (*(v13 + 16))
    {
      v14 = sub_10003949C(v8);
      if (v15)
      {
        break;
      }
    }

    swift_endAccess();
    sub_10003E708();
    if (!--v10)
    {

      return 0;
    }
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();

  sub_10003E708();
  return v16;
}

void sub_100026F18()
{
  sub_100011DD0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v7);
  v9 = *(v8 + 64);
  sub_100049C0C();
  __chkstk_darwin(v10);
  sub_10004998C();
  v11 = type metadata accessor for SidecarIdentity();
  v12 = sub_100011D00(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100011D10();
  __chkstk_darwin(v15);
  v16 = sub_10004A1E8();
  sub_100051C8C(v16, v0);
  sub_100049E70();
  if (v17)
  {
    sub_100048978(v0, &qword_10009A718);
LABEL_14:
    sub_100011DB8();
    return;
  }

  sub_1000497A4();
  sub_10004A0D8();
  sub_1000469E4();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100049AD4(v18, qword_100099FC0);
  sub_1000497BC();
  sub_10003E75C();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = sub_100049EE8();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_10004971C();
    sub_10003E708();
    goto LABEL_10;
  }

  sub_100049A30();
  v23 = swift_slowAlloc();
  v45[0] = swift_slowAlloc();
  *v23 = 136446722;
  sub_100052008();
  v43 = v4;
  sub_10004971C();
  sub_10003E708();
  v24 = sub_100049E64();
  sub_100014C58(v24, v25, v26);
  sub_10001B944();

  sub_100049D6C();
  v27 = type metadata accessor for RapportRemoteDisplayDevice();
  v28 = RapportEndpoint.statusFlags.getter(v27, &protocol witness table for RapportRemoteDisplayDevice);
  v29 = RPStatusFlagsCopyDescription(v28);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  sub_100014C58(v30, v32, v45);
  sub_10004A258();
  *(v23 + 14) = v29;
  *(v23 + 22) = 2082;
  if (!HIDWORD(v43))
  {
    v33 = RPDeviceChangeFlagsCopyDescription(v43);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_100014C58(v34, v36, v45);
    sub_10004A258();
    *(v23 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Device Changed <%{public}s [%{public}s]>", v23, 0x20u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100049950();

LABEL_10:
    sub_100049FD8();
    sub_100049E28();
    swift_beginAccess();
    v37 = *(v2 + 72);
    sub_1000498A0();
    v40 = sub_100020BD8(v1, v38, v39);
    swift_endAccess();
    sub_100049FD8();
    sub_100011E50();
    swift_beginAccess();

    v41 = *(v2 + 72);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 72);
    sub_100049AA4();
    sub_10003DC84();
    *(v2 + 72) = v44;
    swift_endAccess();
    if (v40 && (, v42 = sub_1000272E0(v6), , (v42 & 1) != 0))
    {
      sub_10004971C();
      sub_10003E708();
    }

    else
    {
      sub_100026504();

      sub_10004971C();
      sub_10003E708();
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1000272E0(uint64_t a1)
{
  v2 = *v1;
  if ([*(v1 + 16) isEqual:*(a1 + 16)])
  {
    return 1;
  }

  v4 = RapportEndpoint.cameraState.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  if (v4 != RapportEndpoint.cameraState.getter(v2, &protocol witness table for RapportRemoteDisplayDevice))
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  if (RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v5.super.isa)
    {
      if (v7.super.isa)
      {
        sub_1000033E0(0, &qword_100099EA8, NSDictionary_ptr);
        v6 = static NSObject.== infix(_:_:)();

LABEL_14:
        v7.super.isa = v5.super.isa;
LABEL_15:

        goto LABEL_19;
      }

LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

    if (v7.super.isa)
    {
      v6 = 0;
      goto LABEL_15;
    }
  }

  else if (v5.super.isa)
  {
    goto LABEL_13;
  }

  v6 = 1;
LABEL_19:
  v8 = RapportEndpoint.identifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v10 = v9;
  if (v8 == RapportEndpoint.identifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = RapportEndpoint.idsDeviceIdentifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v16 = v15;
  if (v14 == RapportEndpoint.idsDeviceIdentifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = RapportEndpoint.model.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v22 = v21;
  if (v20 == RapportEndpoint.model.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = RapportEndpoint.name.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v28 = v27;
  if (v26 == RapportEndpoint.name.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  v32 = RapportEndpoint.statusFlags.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  if (v32 == RapportEndpoint.statusFlags.getter(v2, &protocol witness table for RapportRemoteDisplayDevice))
  {
    v33 = RapportEndpoint.sourceVersion.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
    return (v33 == RapportEndpoint.sourceVersion.getter(v2, &protocol witness table for RapportRemoteDisplayDevice)) & v6;
  }

  return 0;
}

id sub_100027724()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = RapportRemoteDisplayDiscovery.errorFlags.getter();

  return v1;
}

void sub_10002776C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10004A288();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100049AD4(v18, qword_100099FC0);

  osloga = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v19))
  {
    sub_100049C18();
    v20 = swift_slowAlloc();
    sub_100049A30();
    v30 = swift_slowAlloc();
    *v20 = 136446210;
    v21 = sub_100027724();
    v22 = RPErrorFlagsCopyDescription(v21);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_100049F3C();
    v26 = sub_100014C58(v23, v24, v25);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, osloga, v19, "<%{public}s>", v20, 0xCu);
    sub_100003458(v30);
    sub_100049960();

    sub_100011CF4();
  }

  sub_10004A29C();
}

uint64_t sub_1000278C4(uint64_t a1, uint64_t a2)
{
  sub_100049E28();
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (!*(v6 + 16) || (v7 = sub_100039308(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v12, v13, v14, v15, v16, v17);
    swift_willThrow();
    return a1;
  }

  a1 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (a2 == 3)
  {
    type metadata accessor for RapportRemoteDisplayDevice();
    sub_100011F44();

    RapportEndpoint.statusFlags.getter(v3, &protocol witness table for RapportRemoteDisplayDevice);
    v21 = RapportStatusFlags.WiFi.unsafeMutableAddressor();
    sub_100049E40(v21);
    if (!v20)
    {
      goto LABEL_20;
    }

    return a1;
  }

  if (a2 == 2)
  {
    type metadata accessor for RapportRemoteDisplayDevice();
    sub_100011F44();

    RapportEndpoint.statusFlags.getter(v3, &protocol witness table for RapportRemoteDisplayDevice);
    v19 = RapportStatusFlags.USB.unsafeMutableAddressor();
    sub_100049E40(v19);
    if (!v20)
    {
      goto LABEL_20;
    }

    return a1;
  }

  if (a2 != 1)
  {

    return a1;
  }

  type metadata accessor for RapportRemoteDisplayDevice();
  sub_100011F44();

  v9 = RapportEndpoint.statusFlags.getter(v3, &protocol witness table for RapportRemoteDisplayDevice);
  v10 = *RapportStatusFlags.BLE.unsafeMutableAddressor();
  v11 = *RapportStatusFlags.WiFiP2P.unsafeMutableAddressor();
  if (!v10)
  {
    if (!v11)
    {
      v10 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v10 |= v11;
    goto LABEL_19;
  }

  if ((v11 & ~v10) != 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((v10 & ~v9) != 0)
  {
LABEL_20:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v22, v23, v24, v25, v26, v27);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100027B58()
{
  swift_beginAccess();
  sub_10000FC6C(&unk_10009A750, &qword_100076960);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t sub_100027BF8()
{
  sub_100049E34();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100049AD4(v2, qword_100099FC0);
  v3 = Logger.logObject.getter();
  v4 = v1();
  v5 = sub_100049D00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, v0, v7, 2u);
    sub_100049960();
  }

  return sub_100027B58();
}

uint64_t sub_100027CD4(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

Swift::Int sub_100027D3C(char a1)
{
  sub_10004A240();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_100027DA0()
{
  sub_10004A1B0();
  sub_100052008();
  v1 = _s7SessionC8IdentityVMa(0);
  *(v0 + *(v1 + 24));
  *(v0 + *(v1 + 24));
  v6 = *(v0 + *(v1 + 20));
  sub_100010ED0();
  sub_100011EB0();
  String.init<A>(_:radix:uppercase:)();
  sub_10004A080();
  v2._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_10004A098();
  String.append(_:)(v3);

  v4._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10004A074();
  String.append(_:)(v5);

  sub_10004A198();
}

void sub_100027E84()
{
  sub_100049F48();
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v2);
  sub_100049AA4();
  dispatch thunk of Hashable.hash(into:)();
  v3 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(v1 + *(v3 + 20)));
  Hasher._combine(_:)(*(v0 + *(v3 + 24)));
}

Swift::Int sub_100027F10()
{
  sub_10004A240();
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v1);
  dispatch thunk of Hashable.hash(into:)();
  v2 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(v0 + *(v2 + 20)));
  Hasher._combine(_:)(*(v0 + *(v2 + 24)));
  return Hasher._finalize()();
}

Swift::Int sub_100027FC0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

void sub_1000280A8()
{
  sub_10004A2B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink) = 0;
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = 0;
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) = 0;
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue) = 0;
  sub_100049760();
  sub_10003E75C();
  v7 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger;
  v8 = type metadata accessor for Logger();
  sub_10004A0CC(v8);
  v10 = v9;
  (*(v9 + 16))(v0 + v7, v6, v8);
  v11 = (v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  *v11 = v4;
  v11[1] = v2;
  sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
  v12 = Dictionary.init(dictionaryLiteral:)();
  v13 = *(v10 + 8);
  v14 = sub_100049F3C();
  v15(v14);
  sub_100049748();
  sub_10003E708();
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_streams) = v12;
  sub_10004A164();
}

uint64_t sub_100028220()
{
  v2 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (!v2)
  {
    return 0;
  }

  sub_100049CDC();
  type metadata accessor for Client();
  v3 = v0;
  v4 = v2;
  sub_100049EDC();
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

uint64_t sub_100028290(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 4:
    case 5:
      return sub_100049E94();
    case 2:
    case 3:
      sub_10004A048();
      break;
    default:
      swift_errorRetain();
      sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        JUMPOUT(0x100028444);
      }

      v1 = [v4 debugDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v2._countAndFlagsBits = sub_100049AA4();
      String.append(_:)(v2);

      break;
  }

  return sub_100049E94();
}

uint64_t sub_100028464(uint64_t result)
{
  v2 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state;
  switch(*(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state))
  {
    case 0:
      goto LABEL_9;
    case 1:
    case 2:
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    case 3:
      if ((result - 1) >= 2)
      {
        goto LABEL_9;
      }

      return result;
    case 4:
      if ((result - 1) >= 3)
      {
        goto LABEL_9;
      }

      return result;
    case 5:
      if ((result - 1) >= 4)
      {
LABEL_9:
        v3 = result;
        _StringGuts.grow(_:)(32);

        v4._countAndFlagsBits = sub_100028290(v3);
        String.append(_:)(v4);

        v5._countAndFlagsBits = 15917;
        v5._object = 0xE200000000000000;
        String.append(_:)(v5);
        v6 = *(v1 + v2);
        sub_100048638(v6);
        v7._countAndFlagsBits = sub_100028290(v6);
        String.append(_:)(v7);

        sub_100048648(v6);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x1000285CCLL);
      }

      return result;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000285E4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state);
  *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) = a1;
  sub_100048638(a1);
  sub_100028464(v3);
  sub_100048648(v3);

  return sub_100048648(a1);
}

uint64_t sub_100028644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getErrorValue();
    v16 = sub_100028BAC("SidecarRelay/Relay.swift", 24, 2u, 545, v37, v38);
    Strong = swift_weakLoadStrong();
    swift_errorRetain();
    if (Strong)
    {

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      v19 = sub_100003420(v18, qword_1000A1AE8);
      __chkstk_darwin(v19);
      *(&v31 - 2) = v16;
      sub_100016F18(sub_1000496B8, a2, sub_100011C20);
    }

    else
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003420(v20, qword_1000A1AE8);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v23 = 136446210;
        v32 = v21;
        sub_100027DA0();
        v26 = sub_100014C58(v24, v25, aBlock);

        *(v23 + 4) = v26;
        v21 = v32;
        _os_log_impl(&_mh_execute_header, v32, v22, "%{public}s: Send Discarded", v23, 0xCu);
        sub_100003458(v33);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v28[4] = v16;
  aBlock[4] = sub_1000485FC;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F240;
  v29 = _Block_copy(aBlock);
  sub_1000485AC(a3);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100035114(&unk_10009A9A0);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100048A60(&qword_10009A9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v36 + 8))(v11, v8);
  return (*(v34 + 8))(v15, v35);
}

uint64_t sub_100028BAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = *(v8 + 16);
  v41 = v19;
  v18(&v37 - v16, v19, v20);
  v21 = _getErrorEmbeddedNSError<A>(_:)();
  v42 = a6;
  if (v21)
  {
    (*(v8 + 8))(v17, a5);
  }

  else
  {
    swift_allocError();
    (*(v8 + 32))(v22, v17, a5);
  }

  v23 = _convertErrorToNSError(_:)();

  v24 = [v23 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v25 && v28 == v27)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      v18(v12, v41, a5);
      v31 = _getErrorEmbeddedNSError<A>(_:)();
      if (v31)
      {
        v32 = v31;
        (*(v8 + 8))(v12, a5);
      }

      else
      {
        v32 = swift_allocError();
        (*(v8 + 32))(v35, v12, a5);
      }

      goto LABEL_19;
    }
  }

  if ([v23 code] == 4099)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v32 = sub_10001E680(-71148, 0, 0, v37, v38, v39, v40);
  }

  else
  {
    v18(v15, v41, a5);
    v33 = _getErrorEmbeddedNSError<A>(_:)();
    if (v33)
    {
      v32 = v33;
      (*(v8 + 8))(v15, a5);
    }

    else
    {
      v32 = swift_allocError();
      (*(v8 + 32))(v34, v15, a5);
    }
  }

LABEL_19:

  return v32;
}

uint64_t sub_100028F3C()
{
  sub_100027DA0();
  v3 = v0;
  v1._countAndFlagsBits = 0x4520646E6553203ALL;
  v1._object = 0xEC000000726F7272;
  String.append(_:)(v1);
  return v3;
}

void sub_100028F9C()
{
  sub_100011DD0();
  v2 = v1;
  v3 = sub_100049AB0();
  v5 = sub_10000FC6C(v3, v4);
  sub_1000499EC(v5);
  v7 = *(v6 + 64);
  sub_100049C0C();
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = v2;
  v12 = v2;

  sub_1000285E4(2uLL);
  v13 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v15 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  v16 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v17 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  v18 = String._bridgeToObjectiveC()();
  v19 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  v20 = UInt._bridgeToObjectiveC()().super.super.isa;
  v21 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  sub_100049BBC();
  sub_100049CB8();
  sub_100048658();
  v22 = _s7SessionC8IdentityVMa(0);
  if (sub_1000113A4(v10, 1, v22) == 1)
  {
    sub_100048978(v10, &unk_1000991E0);
  }

  else
  {
    v23 = *&v10[*(v22 + 20)];
    sub_100049748();
    sub_10003E708();
    v24 = Int._bridgeToObjectiveC()().super.super.isa;
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    [v13 setObject:v24 forKeyedSubscript:v25];

    HIDWORD(v33) = 0;
    v26 = [objc_allocWithZone(NSNumber) initWithInteger:v23];
    Data = OPACKEncoderCreateData();

    if (Data)
    {
      if (HIDWORD(v33))
      {
      }

      else
      {
        v30 = Data;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = sub_100049F0C();
        sub_100011358(v31, v32);
      }
    }
  }

  sub_100049EDC();
  sub_100046464();

  sub_100029FC0();
  sub_100029DD8();

  v28 = sub_100049AA4();
  sub_100011358(v28, v29);
  sub_100011DB8();
}

uint64_t sub_100029264(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    sub_1000293FC();
  }

  return result;
}

void sub_1000292B0()
{
  sub_10004A2B0();
  v2 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state;
  if (*(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) > 3uLL)
  {
    sub_10004A164();
  }

  else
  {
    v3 = v1;
    v4 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v6 = Int._bridgeToObjectiveC()().super.super.isa;
    [v4 setObject:isa forKeyedSubscript:v6];

    v7 = sub_10001F628(v3);
    v8 = Int._bridgeToObjectiveC()().super.super.isa;
    [v4 setObject:v7 forKeyedSubscript:v8];

    sub_100046464();

    if (*(v0 + v2) <= 5uLL)
    {
      sub_1000285E4(4uLL);
    }

    sub_100049F0C();
    sub_10004A164();

    sub_100011358(v9, v10);
  }
}

void sub_1000293FC()
{
  sub_100049F48();
  v3 = *&v1[OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state];
  if (v3 - 2 >= 3)
  {
    if (v3 >= 2)
    {
      return;
    }
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100049AC8();
      sub_100004974(v6, v2);
    }
  }

  if (v2)
  {
    swift_errorRetain();
  }

  else
  {
    v2 = 5;
  }

  sub_1000285E4(v2);
  sub_100011E50();
  swift_beginAccess();
  sub_10000FC6C(&unk_10009A9B8, &unk_100076AF0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
}

uint64_t sub_1000294D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = sub_100049C24();
  [v5 v6];

  type metadata accessor for System();
  sub_1000525BC();
  v7 = UInt._bridgeToObjectiveC()().super.super.isa;
  v8 = Int._bridgeToObjectiveC()().super.super.isa;
  v9 = sub_100049C24();
  [v9 v10];

  if (a1 == 3)
  {
    if (qword_100098BC8 != -1)
    {
      sub_100049B4C();
    }

    v11 = String._bridgeToObjectiveC()();
    v12 = Int._bridgeToObjectiveC()().super.super.isa;
    v13 = sub_100049C24();
    [v13 v14];
  }

  sub_100049A64();

  v15 = sub_100049F0C();

  return sub_100011358(v15, v16);
}

uint64_t sub_100029624()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  type metadata accessor for System();
  sub_1000525BC();
  v3 = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  sub_100049A64();
  v5 = sub_100049F0C();

  return sub_100011358(v5, v6);
}

uint64_t sub_1000296E8()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  type metadata accessor for System();
  sub_1000525BC();
  v3 = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  if (qword_100098BC8 != -1)
  {
    sub_100049B4C();
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  sub_100049A64();
  v7 = sub_100049F0C();

  return sub_100011358(v7, v8);
}

unint64_t sub_1000297F8(void *a1)
{
  v2 = v1;
  if (qword_100098BF0 != -1)
  {
    sub_1000498E0();
  }

  sub_100047168(v1, qword_1000A1B78);
  v4 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = a1;
  v5 = a1;

  result = sub_1000285E4(3uLL);
  v7 = *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue);
  if (v7)
  {
    *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue) = 0;
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *((swift_isaMask & *v5) + 0xD8);
      v10 = v7 + 32;
      do
      {
        sub_100013694(v10, v11);
        v9(v2, v11);
        sub_100003458(v11);
        v10 += 40;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_10002991C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = RapportDeviceChangeFlags.rawValue.getter;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100029ABC;
  v14 = &unk_10008F150;
  v6 = _Block_copy(&v11);
  [a3 setHandler:v6];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v15 = sub_100048494;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100025214;
  v14 = &unk_10008F1C8;
  v9 = _Block_copy(&v11);

  v10 = a3;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);
}

uint64_t sub_100029ABC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_100011558(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4(v8);

  return sub_100048978(v8, &qword_10009B0C0);
}

uint64_t sub_100029B58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v10 + 16))(v13, result + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger, v9);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100014C58(a3, a4, &v26);
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to activate stream %s", v17, 0xCu);
        sub_100003458(v18);
      }

      return (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_streams;
      swift_beginAccess();
      v21 = a5;
      v22 = *(v19 + v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v19 + v20);
      sub_10003DF6C(v21, a3, a4, isUniquelyReferenced_nonNull_native);
      *(v19 + v20) = v25;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100029DD8()
{
  v1 = type metadata accessor for Date();
  v2 = sub_100011C54(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100011CD4();
  v9 = v8 - v7;
  Date.init(timeIntervalSinceNow:)();
  if (qword_100098BF0 != -1)
  {
    sub_1000498E0();
  }

  sub_100046BFC(v0, v9, qword_1000A1B78);
  return (*(v4 + 8))(v9, v1);
}

void sub_100029EC8()
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v6 = sub_10001E468(v0, v1, v2, v3, v4, v5);
  if (qword_100098B98 != -1)
  {
    sub_100011C88();
  }

  v7 = v6;
  sub_100049EDC();
  sub_1000216C0();
}

double sub_100029FE4()
{
  sub_100049C50();
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100049E94();
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100049C24();
  v4 = [v2 v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100048978(v9, &qword_10009B0C0);
  }

  return 10.0;
}

void sub_10002A1B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (v1)
  {
    v2 = v1;
    sub_100049C68();
    sub_10000535C();
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v3, v4, v5, v6, v7, v8);
    swift_willThrow();
  }
}

uint64_t sub_10002A274()
{
  sub_100049748();
  sub_10003E708();
  v1 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger;
  v2 = type metadata accessor for Logger();
  sub_100011D00(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

  swift_weakDestroy();

  v5 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_streams);

  sub_100048648(*(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state));
  v6 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue);

  return v0;
}

uint64_t sub_10002A344()
{
  sub_10002A274();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int sub_10002A39C()
{
  sub_10004A240();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

void sub_10002A424()
{
  v1 = *v0;
  swift_getWitnessTable();
  ClassHashable.hash(into:)();
}

Swift::Int sub_10002A47C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  ClassHashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002A514(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000034A4(v3, a2);
  v4 = sub_100049BBC();
  sub_100003420(v4, v5);
  return Logger.init(subsystem:category:)();
}

id sub_10002A588(uint64_t a1)
{
  v3 = sub_10000FC6C(&qword_10009AB18, &qword_100076C38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v22 = sub_10000FC6C(&qword_10009AB20, &qword_100076C40);
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v22);
  v10 = &v21 - v9;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_cancellables] = &_swiftEmptySetSingleton;
  v11 = &v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener];
  *v11 = RapportDeviceChangeFlags.rawValue.getter;
  *(v11 + 1) = 0;
  v12 = &v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  v21 = a1;
  swift_weakAssign();
  v13 = type metadata accessor for Relay.RelayProxy();
  v25.receiver = v1;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, "init");
  v23 = sub_10002A938();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v24 = v15;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10001137C(v6, 1, 1, v16);
  sub_10000FC6C(&qword_10009AB28, &qword_100076C48);
  sub_100048A60(&unk_10009AB30);
  sub_100048910();
  Publisher.receive<A>(on:options:)();
  sub_100048978(v6, &qword_10009AB18);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000489FC;
  *(v18 + 24) = v17;
  sub_100048A60(&unk_10009AB40);
  v19 = v22;
  Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v10, v19);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v14;
}

uint64_t sub_10002A938()
{
  v4 = *(v0 + 128);
  v1 = sub_100049A98();
  sub_10000FC6C(v1, v2);
  sub_100048A60(&unk_10009AB48);
  return Publisher.eraseToAnyPublisher()();
}

void sub_10002A9C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002B9D8();
  }
}

uint64_t sub_10002AA14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100098BC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_100099FF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting display service sessions changed listener", v9, 2u);
  }

  v10 = (v3 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener);
  v11 = *(v3 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener + 8);
  *v10 = a1;
  v10[1] = a2;
}

void sub_10002ABB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10002AC68(uint64_t a1)
{
  v73 = a1;
  v1 = type metadata accessor for SidecarIdentity();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7SessionC8IdentityVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v70 = &v60 - v16;
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  if (qword_100098BC0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003420(v19, qword_100099FF0);
  v66 = v10[2];
  v67 = v10 + 2;
  v66(v18, v73, v9);
  v68 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  *&v60 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v71 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v62 = v4;
    v69 = v26;
    v74 = v26;
    *v25 = 136315138;
    sub_100035114(&unk_100099C80);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v8;
    v30 = v29;
    v31 = v10[1];
    v31(v18, v9);
    v32 = sub_100014C58(v27, v30, &v74);
    v8 = v28;

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "A request was made to close the display service session with identifier: [%s]", v25, 0xCu);
    sub_100003458(v69);
    v4 = v62;

    v14 = v71;
  }

  else
  {

    v31 = v10[1];
    v31(v18, v9);
  }

  v33 = v9;
  Strong = swift_weakLoadStrong();
  v35 = v70;
  v69 = Strong;
  if (Strong)
  {
    v36 = sub_10002B4E8();
    v37 = sub_100037E08(v36);
    if (!v37)
    {
LABEL_19:

      return;
    }

    v39 = v37;
    if (v37 >= 1)
    {
      v40 = 0;
      v71 = v36 & 0xC000000000000001;
      v72 = v60 + 8;
      *&v38 = 136315138;
      v60 = v38;
      v61 = v8;
      v62 = v4;
      v63 = v31;
      v64 = v37;
      v65 = v36;
      do
      {
        if (v71)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v41 = *(v36 + 8 * v40 + 32);
        }

        sub_10003E75C();
        sub_1000469E4();
        v42 = static UUID.== infix(_:_:)();
        v31(v4, v33);
        if (v42)
        {
          v66(v35, v73, v33);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v74 = v46;
            *v45 = v60;
            sub_100035114(&unk_100099C80);
            v47 = dispatch thunk of CustomStringConvertible.description.getter();
            v48 = v33;
            v50 = v49;
            v31 = v63;
            v63(v70, v48);
            v51 = sub_100014C58(v47, v50, &v74);
            v33 = v48;
            v35 = v70;

            *(v45 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v43, v44, "Closing remote display session with device with identifier: [%s].", v45, 0xCu);
            sub_100003458(v46);

            v4 = v62;
          }

          else
          {

            v31 = v63;
            v63(v35, v33);
          }

          sub_1000216C0();
          v39 = v64;
          v36 = v65;
        }

        ++v40;
      }

      while (v39 != v40);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v66(v14, v73, v9);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74 = v55;
      *v54 = 136315138;
      sub_100035114(&unk_100099C80);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v31(v14, v9);
      v59 = sub_100014C58(v56, v58, &v74);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Could not find 'relay'.  Will not close the display service session with identifier: [%s]", v54, 0xCu);
      sub_100003458(v55);
    }

    else
    {

      v31(v14, v9);
    }
  }
}

void *sub_10002B4E8()
{
  if (swift_weakLoadStrong())
  {
    sub_10002B908();
    sub_10002B60C();
    v1 = v0;

    return v1;
  }

  else
  {
    if (qword_100098BC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_100099FF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Could not find 'relay'.  Will return an empty collection of remote display sessions", v6, 2u);
    }

    return _swiftEmptyArrayStorage;
  }
}

void sub_10002B60C()
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v6 = &qword_10009A760;
  v44 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v7 = sub_100011D00(v44);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100011D10();
  v40 = v10 - v11;
  __chkstk_darwin(v12);
  sub_10004A0B8();
  __chkstk_darwin(v13);
  sub_100049C80();
  v46 = v14;
  sub_100011D50();
  swift_beginAccess();
  v15 = *(v0 + 120);
  v17 = v15 + 64;
  v16 = *(v15 + 64);
  v18 = *(v15 + 32);
  sub_100049970();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v45 = v24;
  swift_bridgeObjectRetain_n();
  v25 = 0;
  v42 = v5;
  v43 = v3;
  while (1)
  {
    v26 = v25;
    if (!v21)
    {
      break;
    }

LABEL_6:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(v45 + 48);
    v30 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v30);
    v32 = *(v31 + 72);
    sub_100049760();
    sub_10003E75C();
    *(v46 + *(v44 + 48)) = *(*(v45 + 56) + 8 * v28);
    v33 = v6;
    sub_100048658();
    v34 = *(v1 + *(v44 + 48));
    v35 = *(v34 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
    v36 = *(v34 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

    if (v35 == v42 && v36 == v43)
    {

      sub_100049748();
      sub_10003E708();
LABEL_13:
      sub_10004871C();
      v41 = *(v40 + *(v44 + 48));
      sub_100049748();
      sub_10003E708();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
      {
        sub_100011EBC(v39);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v33;
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100049748();
      sub_10003E708();
      if (v38)
      {
        goto LABEL_13;
      }

      v6 = v33;
      sub_100048978(v46, v33);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      sub_100011DB8();
      return;
    }

    v21 = *(v17 + 8 * v25);
    ++v26;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_10002B908()
{
  v1 = (v0 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier);
  if (*(v0 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier + 8);
  }

  else
  {
    v4 = [objc_opt_self() serviceWithName:SidecarServiceNameDisplay];
    v5 = [v4 serviceIdentifier];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

size_t sub_10002B9D8()
{
  v1 = v0;
  v2 = type metadata accessor for SidecarIdentity();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7SessionC8IdentityVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002B4E8();
  v13 = sub_100037E08(v12);
  if (!v13)
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_12:
    v24 = sub_10004B38C(v17);
    v25 = v1 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener;
    v27 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener);
    v26 = *(v25 + 8);

    v27(v24);
  }

  v14 = v13;
  v33 = _swiftEmptyArrayStorage;
  result = sub_10003EDBC(0, v13 & ~(v13 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v33;
    v28 = v1;
    v29 = v12 & 0xC000000000000001;
    v18 = (v8 + 32);
    v30 = v14;
    v31 = v12;
    do
    {
      if (v29)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v12 + 8 * v16 + 32);
      }

      sub_10003E75C();

      v20 = v32;
      sub_1000469E4();
      v21 = *v18;
      (*v18)(v11, v20, v7);
      v33 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_10003EDBC(v22 > 1, v23 + 1, 1);
        v17 = v33;
      }

      ++v16;
      v17[2] = v23 + 1;
      v21(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v11, v7);
      v12 = v31;
    }

    while (v30 != v16);

    v1 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BDD0()
{
  swift_beginAccess();
  result = *(v0 + 88);
  v2 = *(*(v0 + 96) + 16);
  if (result)
  {
    if (v2)
    {
      return result;
    }

    *(v0 + 88) = 0;
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v3 = os_transaction_create();
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
  }

  return swift_unknownObjectRelease();
}

BOOL sub_10002BEF8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Relay.RapportSessionKey(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

void sub_10002BF48()
{
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
}

Swift::Int sub_10002BFD8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int sub_10002C080(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_10002C128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for Relay.RapportSessionKey(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E75C();
  *&v11[*(v8 + 28)] = a3;
  swift_beginAccess();
  v12 = sub_100020BD8(v11, *(v4 + 96), sub_10003949C);
  if (v12)
  {
    v13 = v12;
    swift_endAccess();
    type metadata accessor for RapportRemoteDisplaySession();
    if (!static RapportRemoteDisplaySession.== infix(_:_:)(v13, a1))
    {
      if (qword_100098BA0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003420(v14, qword_100099FC0);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136446210;

        v20 = RapportRemoteDisplaySession.description.getter(v19);
        v22 = v21;

        v23 = sub_100014C58(v20, v22, &v28);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Canceling %{public}s", v17, 0xCu);
        sub_100003458(v18);
      }

      RapportRemoteDisplaySession.cancel()();
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v24 = *(v4 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + 96);
  sub_10003D490(a1, v11, isUniquelyReferenced_nonNull_native);
  *(v4 + 96) = v27;
  swift_endAccess();
  return sub_10003E708();
}

uint64_t sub_10002C40C(uint64_t a1)
{
  v3 = type metadata accessor for Relay.RapportSessionKey(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  v5 = *(v1 + 96);

  v7 = sub_100024C10(v6, a1);
  v9 = v8;
  v11 = v10;
  v12 = ~v10;

  if (v12)
  {
    swift_beginAccess();
    sub_10000FC6C(&qword_10009A778, &qword_100076978);
    Dictionary._Variant.remove(at:)();

    swift_endAccess();
    sub_100043BD4(v7, v9, v11);
    sub_10003E708();
  }

  return sub_10002C578(a1);
}

uint64_t sub_10002C578(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = *(v1 + 112);

  v5 = sub_100044988(v4, v2);

  v6 = *(v1 + 112);
  *(v1 + 112) = v5;
}

BOOL sub_10002C5EC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Relay.ConnectedSessionKey(0) + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v8 = _s7SessionC8IdentityVMa(0);
    if (*&v6[*(v8 + 20)] == *&v7[*(v8 + 20)] && v6[*(v8 + 24)] == v7[*(v8 + 24)])
    {
      return 1;
    }
  }

  return result;
}

void sub_10002C68C()
{
  Hasher._combine(_:)(*v0);
  v1 = v0 + *(type metadata accessor for Relay.ConnectedSessionKey(0) + 20);
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v2 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*&v1[*(v2 + 20)]);
  Hasher._combine(_:)(v1[*(v2 + 24)]);
}

Swift::Int sub_10002C750()
{
  Hasher.init(_seed:)();
  sub_10002C68C();
  return Hasher._finalize()();
}

Swift::Int sub_10002C798()
{
  Hasher.init(_seed:)();
  sub_10002C68C();
  return Hasher._finalize()();
}

uint64_t sub_10002C7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 32);
  v12 = *(v8 + 28);
  sub_10003E75C();
  *v10 = v11;
  swift_beginAccess();

  v13 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 112);
  sub_10003D810(a1, v10, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v16;
  swift_endAccess();
  return sub_10003E708();
}

uint64_t sub_10002C8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Relay.ConnectedSessionKey(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v6 + 28);
  sub_10003E75C();
  *v8 = a2;
  swift_beginAccess();
  v10 = *(v2 + 112);
  if (*(v10 + 16) && (v11 = sub_1000395FC(v8), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  swift_endAccess();
  sub_10003E708();
  return v13;
}

void sub_10002D2A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v113) = a4;
  v111 = a1;
  v112 = _s7SessionC8IdentityVMa(0);
  v7 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v110 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = (&v104 - v11);
  v114 = type metadata accessor for SidecarIdentity();
  v12 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_10001E8B0(v15);
  v18 = v17;
  v20 = v19;
  if (qword_100098BA8 != -1)
  {
    swift_once();
  }

  v21 = qword_100099FD8;
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    if (a3)
    {
      v23 = a3;
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
      v23 = 0;
    }

    v109 = v23;

    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003420(v25, qword_1000A1AE8);
    v26 = v16;
    sub_10001FCF8(v18, v20);
    v27 = v24.super.isa;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    sub_100011358(v18, v20);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v108 = v14;
      v31 = v30;
      v32 = swift_slowAlloc();
      v107 = v16;
      v33 = v32;
      v34 = swift_slowAlloc();
      v106 = v5;
      v35 = v34;
      v119[0] = v34;
      *v31 = 136446466;
      v36 = sub_10001F14C(v26, v18, v20);
      v38 = v18;
      v39 = v20;
      v40 = sub_100014C58(v36, v37, v119);

      *(v31 + 4) = v40;
      v20 = v39;
      v18 = v38;
      *(v31 + 12) = 2114;
      *(v31 + 14) = v27;
      *v33 = v27;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received %{public}s, %{public}@", v31, 0x16u);
      sub_100048978(v33, &unk_100099AF0);
      v16 = v107;

      sub_100003458(v35);
      v5 = v106;

      v14 = v108;
    }

    else
    {
    }

    a3 = v109;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v42 = sub_100024404(a3);
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v43;
  AnyHashable.init<A>(_:)();
  v44 = sub_100020CD4(v119, v42);
  sub_10001FDF0(v119);
  if (!v44)
  {
    goto LABEL_27;
  }

  v116 = v44;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (v117 == 0xD000000000000011 && 0x8000000100079E40 == v118)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v47;
  AnyHashable.init<A>(_:)();
  v48 = sub_100020CD4(v119, v42);
  sub_10001FDF0(v119);
  if (!v48)
  {
    goto LABEL_27;
  }

  v116 = v48;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = v115;
  sub_100051D6C(v115);
  if (sub_1000113A4(v49, 1, v114) != 1)
  {
    sub_1000469E4();
    sub_10002BDD0();
    if (v113)
    {
      v54 = v16;
      sub_10001FCF8(v18, v20);
      v55 = sub_1000476D4(v14, v54, v18, v20, v5);

      sub_100011358(v18, v20);
    }

    else
    {
      v56 = v110;
      sub_10003E75C();
      v115 = v16;
      sub_10001FCF8(v18, v20);
      v57 = sub_10001EBA0();
      v58 = v112;
      *(v56 + *(v112 + 20)) = v57;
      *(v56 + *(v58 + 24)) = 0;
      v55 = sub_10002C8F4(v56, *(v111 + 32));

      sub_100011358(v18, v20);
      sub_10003E708();
    }

    if (!v55)
    {

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100003420(v59, qword_1000A1AE8);
      v60 = v16;
      sub_10001FCF8(v18, v20);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        *(v63 + 4) = sub_10001EBA0();

        sub_100011358(v18, v20);
        _os_log_impl(&_mh_execute_header, v61, v62, "%lx: Ignoring Unexpected Message", v63, 0xCu);
      }

      else
      {

        sub_100011358(v18, v20);
        v61 = v60;
      }

      goto LABEL_84;
    }

    *(v55 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink) = sub_100032AB8(v42);
    if (swift_weakLoadStrong())
    {
    }

    else
    {
      swift_weakAssign();
    }

    v64 = *(v55 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink);
    v115 = v55;
    if (v64)
    {
LABEL_68:
      v96 = sub_10001F00C(v16);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v98 = [v16 objectForKey:isa];

      if (v98)
      {
        v119[0] = v98;
        if (swift_dynamicCast() & 1) != 0 && (v117)
        {
          sub_1000294D8(v96);
        }
      }

      switch(v96)
      {
        case 1:
        case 7:

          sub_10004741C(v16, v18, v20, v115);

          goto LABEL_83;
        case 2:
          sub_10003E708();

          sub_100011358(v18, v20);

          return;
        case 3:

          sub_100030450(v115, v16, v18, v20);
          sub_10003E708();

          sub_100011358(v18, v20);

          return;
        case 4:

          sub_10001EC24();
          sub_1000216C0();
          goto LABEL_82;
        case 5:

          sub_1000296E8();

          goto LABEL_83;
        case 6:
          v103 = sub_1000246A8(v42);

          sub_100032708(v115, v16, v18, v20, v103);

          break;
        default:

          sub_1000033E0(0, &qword_100099030, NSError_ptr);
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10001E468(v99, v100, -1010, 0, 0, 0);
          swift_willThrow();
          if (qword_100098BB0 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          v102 = sub_100003420(v101, qword_1000A1AE8);
          __chkstk_darwin(v102);
          sub_100016F18(sub_100032B80, 0, sub_100011C20);
          swift_errorRetain();
          sub_1000216C0();

LABEL_82:

LABEL_83:

          break;
      }

LABEL_84:
      sub_100011358(v18, v20);
      sub_10003E708();
      return;
    }

    v114 = 0x296C6C756E28;
    *(v55 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink) = 1;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v65;
    AnyHashable.init<A>(_:)();
    v66 = sub_100020CD4(v119, v42);
    sub_10001FDF0(v119);
    v108 = v14;
    if (v66 && (v116 = v66, (swift_dynamicCast() & 1) != 0))
    {
      v67 = v117;
      v68 = v118;
    }

    else
    {
      v68 = 0xE600000000000000;
      v67 = 0x296C6C756E28;
    }

    v113 = v67;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v69;
    AnyHashable.init<A>(_:)();
    v70 = sub_100020CD4(v119, v42);
    sub_10001FDF0(v119);
    v105 = v18;
    v107 = v16;
    if (v70 && (v116 = v70, (swift_dynamicCast() & 1) != 0))
    {
      v71 = v118;
      v114 = v117;
    }

    else
    {
      v71 = 0xE600000000000000;
    }

    v72 = *(v55 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity + *(v112 + 24));
    v106 = v5;
    if (v72)
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100003420(v73, qword_1000A1AE8);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v112 = v20;
        v77 = v76;
        v78 = swift_slowAlloc();
        LODWORD(v111) = v75;
        v119[0] = v78;
        *v77 = 136446722;

        sub_100027DA0();
        v80 = v79;
        v82 = v81;

        v83 = sub_100014C58(v80, v82, v119);

        *(v77 + 4) = v83;
        *(v77 + 12) = 2082;
        v84 = sub_100014C58(v113, v68, v119);

        *(v77 + 14) = v84;
        *(v77 + 22) = 2082;
        v85 = sub_100014C58(v114, v71, v119);
LABEL_65:

        *(v77 + 24) = v85;
        _os_log_impl(&_mh_execute_header, v74, v111, "=== %{public}s %{public}s -> %{public}s ===", v77, 0x20u);
        swift_arrayDestroy();

        v20 = v112;

LABEL_67:
        v18 = v105;
        v16 = v107;
        goto LABEL_68;
      }
    }

    else
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100003420(v86, qword_1000A1AE8);

      v74 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v87))
      {
        v88 = swift_slowAlloc();
        v112 = v20;
        v77 = v88;
        v89 = swift_slowAlloc();
        LODWORD(v111) = v87;
        v119[0] = v89;
        *v77 = 136446722;

        sub_100027DA0();
        v91 = v90;
        v93 = v92;

        v94 = sub_100014C58(v91, v93, v119);

        *(v77 + 4) = v94;
        *(v77 + 12) = 2082;
        v95 = sub_100014C58(v114, v71, v119);

        *(v77 + 14) = v95;
        *(v77 + 22) = 2082;
        v85 = sub_100014C58(v113, v68, v119);
        goto LABEL_65;
      }
    }

    goto LABEL_67;
  }

  sub_100048978(v49, &qword_10009A718);
LABEL_28:
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100003420(v50, qword_1000A1AE8);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Received Malformed Message", v53, 2u);

    sub_100011358(v18, v20);
  }

  else
  {

    sub_100011358(v18, v20);
  }
}

void sub_10002E41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100098BA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_100003420(v4, qword_100099FC0);
    __chkstk_darwin(v5);
    sub_100016F18(sub_1000487F8, a3, sub_100011C20);
  }

  else
  {
    if (qword_100098BA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003420(v6, qword_100099FC0);

    v13 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = RapportRemoteDisplaySession.description.getter(v9);
      v12 = sub_100014C58(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v13, v7, "Activated %{public}s", v8, 0xCu);
      sub_100003458(v9);
    }

    else
    {
    }
  }
}

unint64_t sub_10002E65C()
{
  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = RapportRemoteDisplaySession.description.getter(v0);
  String.append(_:)(v1);

  return 0xD000000000000013;
}

void sub_10002E6DC()
{
  sub_100011DD0();
  v63 = v2;
  v66 = v3;
  v4 = type metadata accessor for SidecarIdentity();
  v5 = sub_1000499EC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v62 = v9 - v8;
  v69 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v10 = sub_100011D00(v69);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100011D10();
  v68 = v13 - v14;
  __chkstk_darwin(v15);
  sub_100049C80();
  v67 = v16;
  sub_100011D50();
  swift_beginAccess();
  v17 = *(v1 + 120);
  v18 = *(v17 + 64);
  v64 = v1;
  v65 = v17 + 64;
  v19 = *(v17 + 32);
  sub_100049970();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v70 = v25;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  while (v22)
  {
LABEL_7:
    sub_100049B6C();
    v29 = v28 | (v26 << 6);
    v30 = *(v70 + 48);
    v31 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v31);
    v33 = *(v32 + 72);
    sub_100049760();
    sub_10003E75C();
    *(v67 + *(v69 + 48)) = *(*(v70 + 56) + 8 * v29);
    sub_100048658();
    v0 = *(v68 + *(v69 + 48));
    Strong = swift_weakLoadStrong();

    sub_100048978(v67, &qword_10009A760);
    sub_100049748();
    sub_10003E708();
    if (Strong)
    {

      if (Strong == v66)
      {

        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v27 >= v24)
    {
      break;
    }

    v22 = *(v65 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_7;
    }
  }

  v0 = v70;

  if (qword_100098BA0 == -1)
  {
    goto LABEL_11;
  }

LABEL_19:
  sub_100049778();
  swift_once();
LABEL_11:
  v35 = type metadata accessor for Logger();
  sub_100049AD4(v35, qword_100099FC0);
  sub_1000497BC();
  sub_10003E75C();

  v36 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v37 = sub_100049EE8();
  if (os_log_type_enabled(v37, v38))
  {
    sub_100011DE8();
    swift_slowAlloc();
    sub_100049B90();
    v71 = swift_slowAlloc();
    *v22 = 136446466;
    sub_100052008();
    sub_100049CD0();
    sub_10004971C();
    sub_10003E708();
    v39 = sub_100049A98();
    sub_100014C58(v39, v40, v41);
    sub_100049CC4();

    *(v22 + 4) = v0;
    *(v22 + 12) = 2082;
    v43 = RapportRemoteDisplaySession.description.getter(v42);
    sub_100014C58(v43, v44, &v71);
    sub_100049AC8();

    *(v22 + 14) = v66;
    sub_1000499D8();
    _os_log_impl(v45, v46, v47, v48, v49, v50);
    sub_100049F54();
    sub_100011CF4();

    sub_100049950();
  }

  else
  {

    sub_10004971C();
    sub_10003E708();
  }

  RapportRemoteDisplaySession.cancel()();
  sub_10002C40C(v66);
  sub_100049E28();
  swift_beginAccess();
  v51 = *(v64 + 80);
  sub_1000498A0();
  if (sub_100020BD8(v63, v52, v53))
  {
    swift_endAccess();
    sub_100011E50();
    swift_beginAccess();
    sub_1000498B8();
    sub_10003BDFC(v63, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    swift_endAccess();

    sub_1000269F0();
  }

  else
  {
    swift_endAccess();
  }

LABEL_17:
  sub_10002BDD0();
  sub_100011DB8();
}

uint64_t sub_10002EB30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v5 = *(v2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 120);
  sub_10003D650(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v9;
  swift_endAccess();
  v7 = *(v2 + 128);
  sub_10000FC6C(&qword_10009A798, &qword_100076998);
  sub_100048A60(&unk_10009A7A0);
  return Subject<>.send()();
}

uint64_t sub_10002EC10(uint64_t a1)
{
  swift_beginAccess();
  sub_10003BD10(a1, &unk_10009A7A8, &unk_1000769A0, type metadata accessor for Relay.Session, v3, v4, v5, v6, v9, v10);
  swift_endAccess();

  v7 = *(v1 + 128);
  sub_10000FC6C(&qword_10009A798, &qword_100076998);
  sub_100048A60(&unk_10009A7A0);
  return Subject<>.send()();
}

uint64_t sub_10002ECF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s7SessionC8IdentityVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(v6 + 20);
  while (1)
  {
    v11 = arc4random() & 0x7FFFFFFF;
    sub_10003E75C();
    *&v8[*(v4 + 20)] = v11;
    v8[*(v4 + 24)] = 0;
    if (v9)
    {
      sub_10003E708();
    }

    result = sub_1000469E4();
    if (!*(a1 + v10))
    {
      break;
    }

    swift_beginAccess();
    if (!*(*(v2 + 120) + 16))
    {
      return swift_endAccess();
    }

    sub_1000393BC(a1);
    if ((v13 & 1) == 0)
    {
      return swift_endAccess();
    }

    swift_endAccess();
    v9 = 1;
  }

  return result;
}

uint64_t sub_10002EE54()
{
  _StringGuts.grow(_:)(17);
  sub_100027DA0();
  v1 = v0;

  v2._countAndFlagsBits = 0x2065736F6C43203ALL;
  v2._object = 0xEF6E6F6973736553;
  String.append(_:)(v2);
  return v1;
}

uint64_t sub_10002EEEC()
{
  v0 = _s7SessionC8IdentityVMa(0);
  v1 = sub_1000499EC(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100011CD4();
  sub_100049E10();
  v4 = type metadata accessor for SidecarIdentity();
  v5 = sub_1000499EC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v10 = v9 - v8;
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_1000469E4();
  sub_100011E50();
  swift_beginAccess();
  sub_10003BDFC(v10, &unk_10009A7B8, &unk_1000769A8, type metadata accessor for Domain, v11, v12, v13, v14, v16, v17);
  swift_endAccess();

  sub_10004971C();
  return sub_10003E708();
}

void sub_10002F010(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(a5 + 48);
  v8 = *(*(_s7SessionC8IdentityVMa(0) - 8) + 72);
  sub_10003E75C();
  v9 = *(*(a5 + 56) + 8 * a2);

  v10 = v9;
}

id sub_10002F0DC()
{
  v35 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v1 = *(*(v35 - 8) + 64);
  v2 = __chkstk_darwin(v35);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v29 - v5;
  result = swift_beginAccess();
  if (!*(v0[15] + 16))
  {
    result = swift_beginAccess();
    if (!*(v0[19] + 16))
    {
      result = v0[22];
      if (result)
      {
        result = [result relayTerminateService];
      }
    }
  }

  v8 = v0[21];
  if (v8)
  {
    v30 = v0;
    v9 = v0[15];
    v10 = *(v9 + 64);
    v33 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    v32 = (v11 + 63) >> 6;
    v36 = v9;
    swift_bridgeObjectRetain_n();
    v31 = v8;
    result = swift_unknownObjectRetain();
    v14 = 0;
    v34 = 0x8000000100079A50;
    while (v13)
    {
LABEL_14:
      v16 = v36;
      v17 = *(v36 + 48);
      v18 = *(*(_s7SessionC8IdentityVMa(0) - 8) + 72);
      sub_10003E75C();
      v19 = *(*(v16 + 56) + 8 * (__clz(__rbit64(v13)) | (v14 << 6)));
      v20 = v35;
      *&v6[*(v35 + 48)] = v19;
      sub_100048658();
      v21 = *(v20 + 48);
      v22 = v4;
      v23 = *&v4[v21];
      v24 = *(v23 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
      v25 = *(v23 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

      if (v24 == 0xD000000000000019 && v34 == v25)
      {

        sub_100048978(v6, &qword_10009A760);
        sub_10003E708();
LABEL_22:

        return swift_unknownObjectRelease();
      }

      v13 &= v13 - 1;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100048978(v6, &qword_10009A760);
      result = sub_10003E708();
      v4 = v22;
      if (v27)
      {
        goto LABEL_22;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v32)
      {

        [v31 invalidate];
        swift_unknownObjectRelease();
        v28 = v30[21];
        v30[21] = 0;
        return swift_unknownObjectRelease();
      }

      v13 = *(v33 + 8 * v15);
      ++v14;
      if (v13)
      {
        v14 = v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10002F464(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_1000216C0();
    }
  }

  return result;
}

uint64_t sub_10002F534(uint64_t a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a2;
  v29 = a1;
  v4 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  swift_beginAccess();
  v28 = v3;
  v10 = *(v3 + 120);
  v11 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = *(v10 + 48);
    v22 = *(*(_s7SessionC8IdentityVMa(0) - 8) + 72);
    sub_10003E75C();
    *&v9[*(v4 + 48)] = *(*(v10 + 56) + 8 * v20);

    if (sub_100028220())
    {
      v23 = v25;
      sub_100048658();
      v24 = *&v23[*(v4 + 48)];
      sub_10003E708();
      sub_100048978(v9, &qword_10009A760);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v30;
    }

    else
    {
      result = sub_100048978(v9, &qword_10009A760);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      sub_10002F464(v11);
    }

    v14 = *(v10 + 64 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v45 = a5;
  v46 = a4;
  v49 = a3;
  v50 = a1;
  v44 = a2;
  v53 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v6 = *(*(v53 - 8) + 64);
  v7 = __chkstk_darwin(v53);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v52 = &v42 - v10;
  v11 = __chkstk_darwin(v9);
  v51 = &v42 - v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  swift_beginAccess();
  v47 = v5;
  v15 = *(v5 + 120);
  v48 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (v18)
  {
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v23 | (v21 << 6);
    v25 = *(v15 + 48);
    v26 = *(*(_s7SessionC8IdentityVMa(0) - 8) + 72);
    sub_10003E75C();
    v27 = *(*(v15 + 56) + 8 * v24);
    v28 = v53;
    *&v14[*(v53 + 48)] = v27;
    v29 = v51;
    sub_100048658();
    v30 = *&v29[*(v28 + 48)];
    Strong = swift_weakLoadStrong();

    sub_10003E708();
    v32 = v52;
    if (Strong && (, Strong == v50))
    {
      if (v49)
      {
        sub_100048658();
        v33 = *&v32[*(v53 + 48)];
        v35 = *(v33 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
        v34 = *(v33 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

        if (v35 == v44 && v34 == v49)
        {

          sub_10003E708();
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10003E708();
          if ((v37 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      v38 = v43;
      sub_100048658();
      v39 = *&v38[*(v53 + 48)];
      sub_10003E708();
      sub_100048978(v14, &qword_10009A760);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v48 = v54;
    }

    else
    {
LABEL_17:
      result = sub_100048978(v14, &qword_10009A760);
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v40 = v48;
      sub_10002F464(v48);
      v41 = sub_100037E08(v40);

      return v41 != 0;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10002FC68(void *a1)
{
  swift_beginAccess();
  sub_1000441FC(&v2, a1);
  swift_endAccess();
}

void sub_10002FCC8(uint64_t a1, const char *a2)
{
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100049AD4(v3, qword_100099FC0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
    sub_100011CF4();
  }
}

uint64_t sub_1000303C8()
{
  _StringGuts.grow(_:)(25);
  v1 = RapportRemoteDisplaySession.description.getter(v0);

  v2._object = 0x800000010007AFA0;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  return v1;
}

void sub_100030450(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v146 = a3;
  v5 = v4;
  v145 = a2;
  v136 = _s7SessionC8IdentityVMa(0);
  v144 = *(v136 - 8);
  v8 = v144[8];
  v9 = __chkstk_darwin(v136);
  v135 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v134 - v11;
  v143 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v13 = *(*(v143 - 8) + 64);
  v14 = __chkstk_darwin(v143);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v141 = &v134 - v17;
  __chkstk_darwin(v16);
  v140 = &v134 - v18;
  v20 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v19 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003420(v21, qword_1000A1AE8);

  v137 = v22;
  v23 = Logger.logObject.getter();
  LODWORD(v22) = static os_log_type_t.default.getter();

  LODWORD(v139) = v22;
  v24 = &unk_1000A1000;
  if (os_log_type_enabled(v23, v22))
  {
    v25 = swift_slowAlloc();
    v138 = a4;
    v26 = v25;
    v134 = swift_slowAlloc();
    v149[0] = v134;
    *v26 = 136446466;
    sub_100027DA0();
    v29 = a1;
    v30 = v12;
    v31 = v19;
    v32 = v20;
    v33 = v5;
    v34 = sub_100014C58(v27, v28, v149);

    *(v26 + 4) = v34;
    v5 = v33;
    v20 = v32;
    v19 = v31;
    v12 = v30;
    a1 = v29;
    v24 = &unk_1000A1000;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_100014C58(v20, v19, v149);
    _os_log_impl(&_mh_execute_header, v23, v139, "%{public}s: Connecting '%{public}s'", v26, 0x16u);
    swift_arrayDestroy();

    a4 = v138;
  }

  v36 = v145;
  v35 = v146;
  if (qword_100098BD8 != -1)
  {
    swift_once();
  }

  if (!sub_100025128(v20, v19, qword_1000A1B58))
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = 1413;
    LOBYTE(v132) = 2;
    v39 = -103;
    goto LABEL_11;
  }

  if (*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client))
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = 1418;
    LOBYTE(v132) = 2;
    v39 = -100;
LABEL_11:
    v147 = sub_10001E468(v37, v38, v39, 0, 0, 0);
    swift_willThrow();
    return;
  }

  v40 = v20 == 0xD000000000000019 && 0x8000000100079A50 == v19;
  if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v138 = a4;
    v41 = swift_beginAccess();
    v42 = *(v5 + 120);
    __chkstk_darwin(v41);
    *(&v134 - 4) = a1;
    *(&v134 - 3) = v20;
    v132 = v19;

    v44 = v147;
    v45 = sub_100044AF8(v43, sub_1000479DC, &v134 - 6);
    v147 = v44;

    if (v45[2])
    {

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        LODWORD(v137) = v47;
        v138 = v46;
        v5 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v149[0] = v135;
        *v5 = 136446722;
        sub_100027DA0();
        v50 = sub_100014C58(v48, v49, v149);

        *(v5 + 4) = v50;
        *(v5 + 12) = 2082;

        v51 = sub_100014C58(v20, v19, v149);

        *(v5 + 14) = v51;
        v136 = v5;
        *(v5 + 22) = 2082;
        v19 = v45[2];
        a1 = v45;
        if (v19)
        {
          v150 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v53 = sub_100046A7C(v45);
          v55 = v54;
          v56 = 0;
          v147 = (a1 + 64);
          v139 = a1 + 72;
          if ((v53 & 0x8000000000000000) == 0)
          {
            while (v53 < 1 << *(a1 + 32))
            {
              v20 = v53 >> 6;
              v12 = 1 << v53;
              if ((v147[v53 >> 6] & (1 << v53)) == 0)
              {
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

              if (*(a1 + 36) != v55)
              {
                goto LABEL_76;
              }

              LODWORD(v145) = v52;
              v146 = v56;
              v57 = *(a1 + 48) + v144[9] * v53;
              v5 = a1;
              sub_10003E75C();
              v58 = *(*(a1 + 56) + 8 * v53);
              v59 = v141;
              sub_1000469E4();
              v60 = v143;
              *&v59[*(v143 + 48)] = v58;
              v61 = v142;
              sub_10004871C();
              v62 = *&v61[*(v60 + 48)];

              sub_10003E708();
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v24 = v150[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              a1 = v5;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v63 = 1 << *(v5 + 32);
              if (v53 >= v63)
              {
                goto LABEL_77;
              }

              v64 = v147[v20];
              if ((v64 & v12) == 0)
              {
                goto LABEL_78;
              }

              if (*(v5 + 36) != v55)
              {
                goto LABEL_79;
              }

              v65 = v64 & (-2 << (v53 & 0x3F));
              if (v65)
              {
                v63 = __clz(__rbit64(v65)) | v53 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v12 = v20 << 6;
                v66 = v20 + 1;
                v67 = (v139 + 8 * v20);
                while (v66 < (v63 + 63) >> 6)
                {
                  v69 = *v67++;
                  v68 = v69;
                  v12 += 64;
                  ++v66;
                  if (v69)
                  {
                    sub_100010FDC(v53, v55, v145 & 1);
                    v63 = __clz(__rbit64(v68)) + v12;
                    goto LABEL_34;
                  }
                }

                sub_100010FDC(v53, v55, v145 & 1);
LABEL_34:
                a1 = v5;
              }

              v56 = v146 + 1;
              if ((v146 + 1) == v19)
              {
                goto LABEL_64;
              }

              v52 = 0;
              v55 = *(a1 + 36);
              v53 = v63;
              if (v63 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_64:

        type metadata accessor for Relay.Session(0);
        v122 = Array.description.getter();
        v124 = v123;

        v125 = sub_100014C58(v122, v124, v149);

        v126 = v136;
        *(v136 + 24) = v125;
        v127 = v138;
        _os_log_impl(&_mh_execute_header, v138, v137, "%{public}s: Existing Sessions for %{public}s: %{public}s", v126, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = 1431;
      LOBYTE(v132) = 2;
      v39 = -105;
      goto LABEL_11;
    }

LABEL_38:

    a4 = v138;
    v36 = v145;
    v35 = v146;
  }

  v70 = sub_10001F0A8(v36);
  if (v71)
  {
    v70 = sub_100031570(v36, v35, a4);
    if (v72)
    {
LABEL_47:
      swift_beginAccess();
      v94 = sub_100020D24(v20, v19, *(v5 + 160));
      if (v94)
      {
        v53 = v94;
        v150 = v94;
        swift_endAccess();
        if (sub_100037E08(v53))
        {
          if (sub_100020FF0(v53))
          {
LABEL_80:
            __break(1u);
          }

          else if (sub_100037E08(v53))
          {
            if ((v53 & 0xC000000000000001) == 0)
            {
              if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_84;
              }

              v95 = *(v53 + 32);
LABEL_54:
              v96 = v95;
              if (!sub_100037E08(v53))
              {
LABEL_86:
                __break(1u);
                return;
              }

              if (sub_100037E08(v53) >= 1)
              {
                v97 = sub_100037E08(v53);
                v98 = __OFSUB__(v97, 1);
                v99 = v97 - 1;
                if (!v98)
                {
                  sub_10004386C(v99);
                  sub_100046AB8(0, 1, 0);
                  v146 = v150;
                  v100 = v96;
                  v101 = a1;

                  v102 = v100;
                  v103 = Logger.logObject.getter();
                  v104 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v103, v104))
                  {
                    v105 = swift_slowAlloc();
                    v145 = v20;
                    v106 = v105;
                    v144 = swift_slowAlloc();
                    v149[0] = v144;
                    *v106 = 136446466;
                    v107 = v101 + v24[352];
                    sub_100027DA0();
                    v110 = v102;
                    v111 = v5;
                    v112 = sub_100014C58(v108, v109, v149);

                    *(v106 + 4) = v112;
                    v5 = v111;
                    v102 = v110;
                    *(v106 + 12) = 1024;
                    LODWORD(v107) = *&v110[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

                    *(v106 + 14) = v107;
                    _os_log_impl(&_mh_execute_header, v103, v104, "%{public}s: Connecting to Pending Service Provider PID %d", v106, 0x12u);
                    sub_100003458(v144);

                    v20 = v145;
                  }

                  else
                  {
                  }

                  sub_100031694(v101, v102);
                  v129 = v146;
                  if (sub_100037E08(v146))
                  {
                    swift_beginAccess();
                    v130 = *(v5 + 160);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v148 = *(v5 + 160);
                    sub_10003E268(v129, v20, v19, isUniquelyReferenced_nonNull_native);
                    *(v5 + 160) = v148;
                    swift_endAccess();
                  }

                  else
                  {

                    swift_beginAccess();
                    sub_10003C278();
                    swift_endAccess();
                  }

                  return;
                }

                goto LABEL_85;
              }

LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

LABEL_82:
            v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_82;
        }
      }

      else
      {
        swift_endAccess();
      }

      v128 = v147;
      sub_100031744(v20, v19);
      v147 = v128;
      return;
    }
  }

  v73 = v70;
  v74 = v24;
  v75 = a1;
  v76 = v74[352];
  sub_10003E75C();
  sub_1000469E4();
  v77 = v136;
  *(v12 + *(v136 + 20)) = v73;
  *(v12 + *(v77 + 24)) = 1;
  swift_beginAccess();
  sub_10003BD10(v12, &qword_10009A7F0, &qword_1000769D8, type metadata accessor for ServiceProvider, v78, v79, v80, v81, v134, v135);
  v83 = v82;
  swift_endAccess();
  if (!v83)
  {
    sub_10003E708();
    a1 = v75;
    v24 = v74;
    goto LABEL_47;
  }

  if (v83[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect])
  {
    v84 = v83;

    v83 = v84;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v146 = v5;
      v89 = v88;
      v149[0] = v88;
      *v87 = 136446466;
      sub_100027DA0();
      v92 = sub_100014C58(v90, v91, v149);

      *(v87 + 4) = v92;
      *(v87 + 12) = 1024;
      v93 = *&v83[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      *(v87 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s: Reconnecting to Service Provider PID %d", v87, 0x12u);
      sub_100003458(v89);
    }

    else
    {
    }

    sub_100031694(v75, v83);
  }

  else
  {

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v149[0] = v116;
      *v115 = 136446210;
      sub_100027DA0();
      v119 = sub_100014C58(v117, v118, v149);

      *(v115 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v113, v114, "%{public}s: Canceling Reconnect to Closed Service Provider", v115, 0xCu);
      sub_100003458(v116);
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = 1462;
    LOBYTE(v132) = 2;
    v147 = sub_10001E468(v120, v121, 3072, 0, 0, 0);
    swift_willThrow();
  }

  sub_10003E708();
}

uint64_t sub_10003152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v6 = *(a2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  if (v5 == a4 && v6 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_100031570(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    return 0;
  }

  sub_100010E78(a2, a3);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = OPACKDecodeData();

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v3 = [v8 integerValue];
    }

    else
    {
      v3 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  sub_100011358(a2, a3);
  return v3;
}

void sub_100031694(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
  swift_beginAccess();
  v7 = a2;
  v8 = *(v3 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 152);
  sub_10003E0A8(v7, a1 + v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 152) = v10;
  swift_endAccess();
  sub_1000297F8(v7);
  sub_100031B5C(v7);
}

void sub_100031744(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 extensionForIdentifier:v8];

  if (v9)
  {
    v10 = *(v4 + 176);
    if (v10)
    {
      v11 = qword_100098BB0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003420(v13, qword_1000A1AE8);
      v14 = v12;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        aBlock[7] = v3;
        v17 = v14;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        *(v18 + 4) = sub_100014C58(a1, a2, aBlock);
        *(v18 + 12) = 1024;
        *(v18 + 14) = *&v17[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

        _os_log_impl(&_mh_execute_header, v15, v16, "Requesting Service Provider '%{public}s' from Service Presenter PID %d", v18, 0x12u);
        sub_100003458(v19);

        v14 = v17;
      }

      else
      {
      }

      if (!*(v4 + 168))
      {
        v22 = a1 == 0xD000000000000019 && 0x8000000100079A50 == a2;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v23 = [objc_allocWithZone(SBSLockScreenService) init];
          v24 = String._bridgeToObjectiveC()();
          v25 = [v23 preventSpuriousScreenUndimWithReason:v24];

          v26 = *(v4 + 168);
          *(v4 + 168) = v25;
          swift_unknownObjectRelease();
          [v23 invalidate];
        }
      }

      v27 = swift_allocObject();
      v27[2] = v4;
      v27[3] = v14;
      v27[4] = a1;
      v27[5] = a2;
      aBlock[4] = sub_100047A30;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100025214;
      aBlock[3] = &unk_10008F100;
      v28 = _Block_copy(aBlock);
      v29 = v14;

      [v29 relayPresenterStartServiceExtension:v9 completion:v28];
      _Block_release(v28);
    }

    else
    {

      type metadata accessor for ServicePresenter();
      sub_10004B600();
    }
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001E468(v20, v21, -103, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_100031B5C(char *a1)
{
  v2 = v1;
  v104 = a1;
  v103 = _s7SessionC8IdentityVMa(0);
  v110 = *(v103 - 8);
  v3 = *(v110 + 64);
  v4 = __chkstk_darwin(v103);
  v111 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v96 - v7;
  __chkstk_darwin(v6);
  v105 = &v96 - v9;
  v10 = sub_10000FC6C(&qword_10009A808, &qword_1000769F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  if (sub_100037E08(_swiftEmptyArrayStorage))
  {
    v17 = sub_10004589C(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  v116 = v17;
  swift_beginAccess();
  v18 = *(v2 + 152);
  v19 = *(v18 + 64);
  v108 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v106 = v18;
  v107 = &v104[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier];
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  *&v25 = 136446466;
  v96 = v25;
  v112 = v8;
  *&v113 = v16;
  v109 = v14;
  v97 = v2;
  while (v22)
  {
    v26 = v24;
LABEL_13:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v27 | (v26 << 6);
    v29 = v106;
    v30 = *(v106 + 48) + *(v110 + 72) * v28;
    sub_10003E75C();
    v31 = *(*(v29 + 56) + 8 * v28);
    v32 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
    v33 = *(v32 + 48);
    v14 = v109;
    sub_1000469E4();
    *&v14[v33] = v31;
    sub_10001137C(v14, 0, 1, v32);
    v34 = v31;
    v8 = v112;
    v16 = v113;
LABEL_14:
    sub_10004871C();
    v35 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
    if (sub_1000113A4(v16, 1, v35) == 1)
    {

      v76 = v116;
      if ((v116 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for ServiceProvider();
        sub_100035114(&unk_10009A818);
        Set.Iterator.init(_cocoa:)();
        v76 = v117;
        v77 = v118;
        v78 = v119;
        v79 = v120;
        v80 = v121;
      }

      else
      {
        v79 = 0;
        v81 = -1 << *(v116 + 32);
        v77 = v116 + 56;
        v78 = ~v81;
        v82 = -v81;
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        else
        {
          v83 = -1;
        }

        v80 = v83 & *(v116 + 56);
      }

      v112 = v78;
      v84 = (v78 + 64) >> 6;
      *&v75 = 67109120;
      v113 = v75;
      if (v76 < 0)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v85 = v79;
        v86 = v80;
        v87 = v79;
        if (!v80)
        {
          break;
        }

LABEL_52:
        v88 = (v86 - 1) & v86;
        v89 = *(*(v76 + 48) + ((v87 << 9) | (8 * __clz(__rbit64(v86)))));
        if (!v89)
        {
LABEL_63:
          sub_100048714();
          return;
        }

        while (1)
        {
          if (qword_100098BB0 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_100003420(v91, qword_1000A1AE8);
          v92 = v89;
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = v113;
            *(v95 + 4) = *(&v92->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

            _os_log_impl(&_mh_execute_header, v93, v94, "Terminating Service Provider PID %d", v95, 8u);
          }

          else
          {

            v93 = v92;
          }

          [v92 relayTerminateService];
          v79 = v87;
          v80 = v88;
          if ((v76 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_54:
          v90 = __CocoaSet.Iterator.next()();
          if (v90)
          {
            v114 = v90;
            type metadata accessor for ServiceProvider();
            swift_dynamicCast();
            v89 = v115;
            v87 = v79;
            v88 = v80;
            if (v115)
            {
              continue;
            }
          }

          goto LABEL_63;
        }
      }

      while (1)
      {
        v87 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_65;
        }

        if (v87 >= v84)
        {
          goto LABEL_63;
        }

        v86 = *(v77 + 8 * v87);
        ++v85;
        if (v86)
        {
          goto LABEL_52;
        }
      }
    }

    v36 = *&v16[*(v35 + 48)];
    sub_1000469E4();
    v37 = *&v36[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier] == *v107 && *&v36[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8] == *(v107 + 1);
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_beginAccess();
      if (!*(*(v2 + 120) + 16) || (sub_1000393BC(v8), (v38 & 1) == 0))
      {
        swift_endAccess();
        if (qword_100098BB0 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100003420(v39, qword_1000A1AE8);
        sub_10003E75C();
        v40 = v36;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v115 = v101;
          *v43 = v96;
          v100 = v41;
          v44 = v111;
          v99 = v42;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v46 = sub_100010F24(isa);
          v102 = v36;
          v47 = v46;

          v117 = 542327881;
          v118 = 0xE400000000000000;
          v114 = v47;
          sub_100010C84();
          v48._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v48);

          v49 = v117;
          v50 = v118;
          if (v44[*(v103 + 24)])
          {
            v51 = 0x65746F6D6572;
          }

          else
          {
            v51 = 0x6C61636F6CLL;
          }

          if (v44[*(v103 + 24)])
          {
            v52 = 0xE600000000000000;
          }

          else
          {
            v52 = 0xE500000000000000;
          }

          v117 = *&v44[*(v103 + 20)];
          sub_100010ED0();
          v98 = String.init<A>(_:radix:uppercase:)();
          v54 = v53;
          v117 = v49;
          v118 = v50;
          v8 = v112;
          v55._countAndFlagsBits = 58;
          v55._object = 0xE100000000000000;
          String.append(_:)(v55);
          v56._countAndFlagsBits = v51;
          v36 = v102;
          v56._object = v52;
          String.append(_:)(v56);
          v14 = v109;

          v57._countAndFlagsBits = 58;
          v57._object = 0xE100000000000000;
          String.append(_:)(v57);
          v58._countAndFlagsBits = v98;
          v58._object = v54;
          String.append(_:)(v58);

          v59 = v117;
          v60 = v118;
          sub_10003E708();
          v61 = sub_100014C58(v59, v60, &v115);

          *(v43 + 4) = v61;
          *(v43 + 12) = 1024;
          LODWORD(v61) = *&v40[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

          *(v43 + 14) = v61;
          v62 = v100;
          _os_log_impl(&_mh_execute_header, v100, v99, "%{public}s: Removing Service Provider PID %d", v43, 0x12u);
          sub_100003458(v101);

          v2 = v97;
        }

        else
        {

          sub_10003E708();
        }

        swift_beginAccess();
        v63 = *(v2 + 152);
        v64 = sub_1000393BC(v8);
        if (v65)
        {
          v66 = v64;
          v67 = *(v2 + 152);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = *(v2 + 152);
          v69 = v115;
          *(v2 + 152) = 0x8000000000000000;
          v70 = *(v69 + 24);
          sub_10000FC6C(&qword_10009A7F0, &qword_1000769D8);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v70);
          v71 = v115;
          v72 = v115[6] + *(v110 + 72) * v66;
          sub_10003E708();
          v73 = *(v71[7] + 8 * v66);
          type metadata accessor for ServiceProvider();
          sub_100035114(&unk_10009A7B0);
          v8 = v112;
          _NativeDictionary._delete(at:)();
          *(v2 + 152) = v71;
        }
      }

      swift_endAccess();
      if (v36 == v104)
      {
        sub_10003E708();
      }

      else
      {
        sub_100043BEC(&v117, v36);

        sub_10003E708();
      }

      v16 = v113;
    }

    else
    {
      sub_10003E708();
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v74 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
      sub_10001137C(v14, 1, 1, v74);
      v22 = 0;
      goto LABEL_14;
    }

    v22 = *(v108 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}