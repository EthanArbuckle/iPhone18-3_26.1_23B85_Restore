void sub_10007B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianHealthRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  sub_10007C3BC(a1, v18, type metadata accessor for CustodianHealthRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v36 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, v18, v10);
    sub_10007C424(v18, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v36);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, &v36);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave record with modification to shared DB after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_10007C424(v18, type metadata accessor for CustodianHealthRecord);
  }

  if (__OFADD__(v35, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100079834(a1, v32, v33, v35 + 1, a6, a7);
  }
}

uint64_t sub_10007B924()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007BA0C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000730B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4);
}

void *sub_10007BAB8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10007BB2C(uint64_t a1, unint64_t a2)
{
  sub_100015D6C(a1, a2);
  v4 = sub_10007BBD4(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_10007BB98@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10007BBD4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100012324(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10007BAB8(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100012324(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10007BD50(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_10007BEFC()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 48);

  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);
  v10 = *(v7 + v1[8] + 8);

  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10007C048(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100074DC4(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t sub_10007C0F0()
{
  v1 = (type metadata accessor for FetchRecoveryRecordsRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[10] + 8);

  v10 = *(v7 + v1[11] + 8);

  v11 = *(v0 + v4);

  v12 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10007C21C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FetchRecoveryRecordsRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_10001F330(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10007C360()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007C3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007C488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C4F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007C534()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_100012324(*(v0 + v5), v6);
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10007C5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_100078EB0(a1, v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_10007C6A8()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = (v0 + v3 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v13 + 17) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10007C850(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianHealthRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 17) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + v6 + 9);

  return sub_100079128(a1, v1 + v4, v8, v9, v10, v11, v13);
}

uint64_t sub_10007C91C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianHealthRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_100079F20(a1, v1 + v4, v8, v10, v11, v9, v13, v14);
}

uint64_t sub_10007C9E4()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = (v0 + v3 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v15 = *(v0 + v12);

  v16 = *(v0 + v13 + 8);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

void sub_10007CBA0()
{
  v1 = *(type metadata accessor for CustodianHealthRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v5);
  v10 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10007B5B4(v0 + v2, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_10007CC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007CC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007CCB8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10007CD40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007CD80()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_10031F804(v1, v2);
}

uint64_t sub_10007CDAC()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = *(v6 + v1[8] + 8);

  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v4);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_10007CF00(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100074A04(a1, v1 + v4, v7, v8);
}

uint64_t sub_10007CFB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10007D020(uint64_t a1)
{
  v2 = [objc_opt_self() customHealthCheckVersion];
  if (v2)
  {
    v3 = v2;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning custom version - %ld.", v7, 0xCu);
    }

    return v3;
  }

  return a1;
}

uint64_t sub_10007D140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6465766F72707061;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657469766E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465766F72707061;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657469766E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_10007D244()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007D2E8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007D378()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007D418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100081554(*a1);
  *a2 = result;
  return result;
}

void sub_10007D448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465766F72707061;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657469766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10007D4A8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void *sub_10007D51C()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(NSOperationQueue) init];
  v9 = sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v12[0] = "fetchUserInfoOperation";
  v12[1] = v9;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005814(&unk_1003D98B0, &unk_10033F790);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA950, &unk_1003436B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;
  v10 = swift_slowAlloc();
  v0[5] = v10;
  *v10 = 0;
  return v0;
}

uint64_t sub_10007D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 32);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_100083B20;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6A10;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

void sub_10007DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  v9 = type metadata accessor for AsyncOperation();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v11 = &v10[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v11 = sub_100083B6C;
  v11[1] = v8;
  v14.receiver = v10;
  v14.super_class = v9;

  v12 = objc_msgSendSuper2(&v14, "init");
  v13 = v12;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    [v12 addDependency:{v14.receiver, v14.super_class}];
  }

  [*(a1 + 24) addOperation:{v13, v14.receiver, v14.super_class}];
}

uint64_t sub_10007DC68(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-1] - v12;
  os_unfair_lock_lock(*(a3 + 40));
  v14 = *(a3 + 16);
  v15 = *(a3 + 40);

  os_unfair_lock_unlock(v15);
  if (v14)
  {
    v16 = *(v14 + 16);

    if (v16)
    {
      v17 = v16 - a6;
      if (!__OFSUB__(v16, a6))
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  (*(v10 + 16))(v13, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v18 = *sub_1000080F8(v26, v26[3]);
  v19 = sub_10015B7D0();
  if (v19)
  {
    v20 = v19;
    sub_10000839C(v26);
    v21 = sub_1000815A0(v20);

    if (!v21)
    {
      goto LABEL_12;
    }

    v23 = v21[2];

    v17 = v23 - a6;
    if (!__OFSUB__(v23, a6))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  result = sub_10000839C(v26);
LABEL_12:
  if (a6 != 0x8000000000000000)
  {
    v17 = -a6;
LABEL_14:
    v24 = a4(v17);
    return v25(v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 32);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = sub_100083A90;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6998;
  v20 = _Block_copy(aBlock);

  sub_100083AA0(a3);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

void sub_10007E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = kAAAnalyticsEventFetchUserInfo;
  (*(v11 + 16))(&v32 - v13, a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v10);
  v16 = v15;
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v17 = [*(*sub_1000080F8(v34 v34[3]) + 16)];
  if (v17 && (v18 = v17, v19 = [v17 aa_altDSID], v18, v19))
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v23 = sub_100245D38(v16, v20, v22, a2, a3);
  sub_10000839C(v34);
  v24 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation;
  if (!*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    v25 = swift_allocObject();
    *(v25 + 2) = a1;
    *(v25 + 3) = v23;
    *(v25 + 4) = a4;
    *(v25 + 5) = a5;
    v26 = type metadata accessor for AsyncOperation();
    v27 = objc_allocWithZone(v26);
    v27[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v28 = &v27[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v28 = sub_100083B00;
    v28[1] = v25;
    v29 = v23;

    sub_100083AA0(a4);
    v33.receiver = v27;
    v33.super_class = v26;
    v30 = objc_msgSendSuper2(&v33, "init");
    v31 = *(a1 + v24);
    *(a1 + v24) = v30;
    v23 = v30;

    [*(a1 + 24) addOperation:v23];
  }
}

uint64_t sub_10007E40C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v12 = a4;

  sub_100083AA0(a5);

  sub_100081964(a3, a4, a3, a5, a6, a1, a2);

  sub_100083B0C(a5);
}

uint64_t sub_10007E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v5 + 32);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  aBlock[4] = sub_1000833EC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A68A8;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v35 + 8))(v9, v25);
  (*(v32 + 8))(v12, v34);
}

void sub_10007E8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = (v16 + v15);
  v18 = v26;
  *v17 = v25;
  v17[1] = a4;
  v19 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v18;
  v19[1] = a6;
  v20 = type metadata accessor for AsyncOperation();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v22 = &v21[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v22 = sub_1000835F4;
  v22[1] = v16;
  v27.receiver = v21;
  v27.super_class = v20;

  v23 = objc_msgSendSuper2(&v27, "init");
  v24 = v23;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    [v23 addDependency:?];
  }

  [*(a1 + 24) addOperation:{v24, v25, v26}];
}

uint64_t sub_10007EABC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{

  sub_100082AF8(a4, a5, a6, a3, a7, a8, a1, a2);
}

uint64_t sub_10007EB60(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABB8, &unk_10033F880);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10007ED2C(sub_1000814C8, v8);
}

uint64_t sub_10007ECA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DABB8, &unk_10033F880);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003DABB8, &unk_10033F880);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10007ED2C(void (*a1)(unint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  (*(v12 + 16))(&v32 - v14, v3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v16 = [*(*sub_1000080F8(v35 v36) + 16)];
  if (v16 && (v17 = v16, v18 = [v16 aa_altDSID], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_10000839C(v35);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = v21;
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Starting Fetch User Information in confirmation handler", v25, 2u);
      v21 = v33;
    }

    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v10, v6);
    v26 = *sub_1000080F8(v35, v36);

    sub_100314E78(v19, v21, v26, v3, a1, a2);

    sub_10000839C(v35);
  }

  else
  {
    sub_10000839C(v35);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "altDSID missing", v30, 2u);
    }

    type metadata accessor for AAError(0);
    v34 = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = v35[0];
    a1(0, v35[0]);
  }
}

uint64_t sub_10007F200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Fetching User Information finished with error: %@", v9, 0xCu);
      sub_100083380(v10);
    }

LABEL_7:
    swift_willThrow();
    swift_errorRetain();
    a4(0, v5);
  }

  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching User Information returned nil", v25, 2u);
    }

    type metadata accessor for AAError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v43;
    goto LABEL_7;
  }

  v13 = qword_1003D7F48;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetching User Information finished successfully.", v18, 2u);
  }

  v19 = [v14 custodianInfos];
  if (v19)
  {
    v20 = v19;
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v28 = 136315138;
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v29 = Array.description.getter();
    v31 = sub_10021145C(v29, v30, &v43);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetched custodianInfos: %s", v28, 0xCu);
    sub_10000839C(v41);
  }

  v32 = sub_1000815A0(v21);

  if (!v32)
  {
    v32 = sub_100308FEC(_swiftEmptyArrayStorage);
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    v37 = Dictionary.description.getter();
    v39 = sub_10021145C(v37, v38, &v43);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Extracted idMSStatuses: %s", v35, 0xCu);
    sub_10000839C(v36);
  }

  os_unfair_lock_lock(*(a3 + 40));
  v40 = *(a3 + 16);
  *(a3 + 16) = v32;

  os_unfair_lock_unlock(*(a3 + 40));
  a4(v32, 0);
}

uint64_t sub_10007F874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v55 = a6;
  v56 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  if (a2)
  {
    v53 = a3;
    v22 = v16;
    v23 = v11;
    v24 = a4;
    v25 = v10;
    if (a1)
    {
      v26 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v26 = 0;
    }

    [a2 updateTaskResultWithError:v26];

    v10 = v25;
    a4 = v24;
    v11 = v23;
    v16 = v22;
    a3 = v53;
  }

  (*(v18 + 16))(v21, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v21, v17);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    (*(v11 + 16))(v16, a4, v10);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57 = v32;
      *v30 = 136315394;
      v33 = UUID.uuidString.getter();
      v34 = v10;
      v36 = v35;
      (*(v11 + 8))(v16, v34);
      v37 = sub_10021145C(v33, v36, &v57);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v38;
      *v31 = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Custodian %s Setup finalization finished with error: %@", v30, 0x16u);
      sub_100083380(v31);

      sub_10000839C(v32);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAAB8);
    v40 = v54;
    (*(v11 + 16))(v54, a4, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v10;
      v45 = swift_slowAlloc();
      v57 = v45;
      *v43 = 136315138;
      v46 = UUID.uuidString.getter();
      v47 = v40;
      v49 = v48;
      (*(v11 + 8))(v47, v44);
      v50 = sub_10021145C(v46, v49, &v57);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "Custodian %s Setup finalization finished Successfully", v43, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      (*(v11 + 8))(v40, v10);
    }
  }

  return v56(a1);
}

uint64_t sub_10007FE20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (*(v10 + 16))
  {
    result = sub_1003084DC(0x6169646F74737563, 0xED0000646975556ELL);
    if (v11)
    {
      sub_10000DB1C(*(v10 + 56) + 32 * result, v26);
      result = swift_dynamicCast();
      if (result)
      {
        v12 = v25[1];
        if (*(v10 + 16) && (v13 = v25[0], v14 = sub_1003084DC(0x737574617473, 0xE600000000000000), (v15 & 1) != 0) && (sub_10000DB1C(*(v10 + 56) + 32 * v14, v26), (swift_dynamicCast() & 1) != 0))
        {
          v16 = String.lowercased()();
          v27 = v13;

          v26[0] = v16;
          static CharacterSet.whitespacesAndNewlines.getter();
          sub_1000709A0();
          v17 = StringProtocol.trimmingCharacters(in:)();
          v19 = v18;
          (*(v5 + 8))(v9, v4);

          v20._countAndFlagsBits = v17;
          v20._object = v19;
          v21 = _findStringSwitchCase(cases:string:)(&off_1003A3770, v20);

          if (v21 >= 3)
          {
            v22 = 2;
          }

          else
          {
            v22 = v21;
          }

          v23 = *a1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26[0]._countAndFlagsBits = *a1;
          sub_1002CF488(v22, v27, v12, isUniquelyReferenced_nonNull_native);

          *a1 = v26[0]._countAndFlagsBits;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_100080090()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);

  v3 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__setupFinalizationHandler;
  v4 = sub_100005814(&qword_1003DABF8, &qword_10033F8A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController;
  v6 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianIdMSConfirmationHandler()
{
  result = qword_1003DA928;
  if (!qword_1003DA928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000802A8()
{
  sub_10000DAB8(319, &unk_1003DA938, &unk_1003D98B0, &unk_10033F790);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DA948, &unk_1003DA950, &unk_1003436B0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CustodianIdMSStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustodianIdMSStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000805CC()
{
  result = qword_1003DAB80;
  if (!qword_1003DAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DAB80);
  }

  return result;
}

uint64_t sub_100080620(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000806F0, 0, 0);
}

uint64_t sub_1000806F0()
{
  v61 = v0;
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 32);
    os_unfair_lock_lock(*(v1 + 40));
    v2 = *(v1 + 16);
    v3 = *(v1 + 40);

    os_unfair_lock_unlock(v3);
    if (v2)
    {
      v4 = *(v0 + 24);
      v5 = UUID.uuidString.getter();
      if (*(v2 + 16))
      {
        v7 = sub_1003084DC(v5, v6);
        v9 = v8;

        if (v9)
        {
          v10 = 0x6465766F72707061;
          v11 = *(*(v2 + 56) + v7);

          if (v11 == 1)
          {

            v12 = 1;
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v12 = v37 & 1;
          }

          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v38 = *(v0 + 64);
          v39 = *(v0 + 40);
          v40 = *(v0 + 48);
          v41 = *(v0 + 24);
          v42 = type metadata accessor for Logger();
          sub_100008D04(v42, qword_1003FAAB8);
          (*(v40 + 16))(v38, v41, v39);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 67109634;
            *(v45 + 4) = v12;
            *(v45 + 8) = 2080;
            v60 = v46;
            if (v11)
            {
              if (v11 == 1)
              {
                v47 = 0xE800000000000000;
              }

              else
              {
                v47 = 0xE700000000000000;
                v10 = 0x6E776F6E6B6E75;
              }
            }

            else
            {
              v47 = 0xE700000000000000;
              v10 = 0x64657469766E69;
            }

            v51 = *(v0 + 64);
            v53 = *(v0 + 40);
            v52 = *(v0 + 48);
            v54 = sub_10021145C(v10, v47, &v60);

            *(v45 + 10) = v54;
            *(v45 + 18) = 2080;
            sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID);
            v55 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v56;
            (*(v52 + 8))(v51, v53);
            v58 = sub_10021145C(v55, v57, &v60);

            *(v45 + 20) = v58;
            _os_log_impl(&_mh_execute_header, v43, v44, "Custodian is approved on IdMS: %{BOOL}d, status: %s, custodianID: %s", v45, 0x1Cu);
            swift_arrayDestroy();
          }

          else
          {
            v48 = *(v0 + 64);
            v49 = *(v0 + 40);
            v50 = *(v0 + 48);

            (*(v50 + 8))(v48, v49);
          }

LABEL_18:
          v35 = *(v0 + 56);
          v34 = *(v0 + 64);

          v36 = *(v0 + 8);

          return v36(v11);
        }
      }

      else
      {
      }
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);
    v20 = *(v0 + 24);
    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    (*(v18 + 16))(v17, v20, v19);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136315138;
      sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v26 + 8))(v25, v27);
      v33 = sub_10021145C(v30, v32, &v60);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Custodian %s not found on IdMS", v28, 0xCu);
      sub_10000839C(v29);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v11 = 2;
    goto LABEL_18;
  }

  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  v15 = sub_100005814(&unk_1003DABA8, &qword_10033F878);
  *v14 = v0;
  v14[1] = sub_100080D4C;
  v16 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x800000010032D8A0, sub_10008142C, v16, v15);
}

uint64_t sub_100080D4C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000813C0;
  }

  else
  {
    v3 = sub_100080E60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100080E60()
{
  v55 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = UUID.uuidString.getter();
    if (*(v1 + 16))
    {
      v5 = sub_1003084DC(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = 0x6465766F72707061;
        v9 = *(*(v1 + 56) + v5);

        if (v9 == 1)
        {

          v10 = 1;
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v10 = v32 & 1;
        }

        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v33 = v0[8];
        v34 = v0[5];
        v35 = v0[6];
        v36 = v0[3];
        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAAB8);
        (*(v35 + 16))(v33, v36, v34);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 67109634;
          *(v40 + 4) = v10;
          *(v40 + 8) = 2080;
          v54 = v41;
          if (v9)
          {
            if (v9 == 1)
            {
              v42 = 0xE800000000000000;
            }

            else
            {
              v42 = 0xE700000000000000;
              v8 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v42 = 0xE700000000000000;
            v8 = 0x64657469766E69;
          }

          v46 = v0[8];
          v48 = v0[5];
          v47 = v0[6];
          v49 = sub_10021145C(v8, v42, &v54);

          *(v40 + 10) = v49;
          *(v40 + 18) = 2080;
          sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (*(v47 + 8))(v46, v48);
          v53 = sub_10021145C(v50, v52, &v54);

          *(v40 + 20) = v53;
          _os_log_impl(&_mh_execute_header, v38, v39, "Custodian is approved on IdMS: %{BOOL}d, status: %s, custodianID: %s", v40, 0x1Cu);
          swift_arrayDestroy();
        }

        else
        {
          v43 = v0[8];
          v44 = v0[5];
          v45 = v0[6];

          (*(v45 + 8))(v43, v44);
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  v14 = v0[3];
  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  (*(v12 + 16))(v11, v14, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v54 = v23;
    *v22 = 136315138;
    sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v20 + 8))(v19, v21);
    v27 = sub_10021145C(v24, v26, &v54);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Custodian %s not found on IdMS", v22, 0xCu);
    sub_10000839C(v23);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v9 = 2;
LABEL_14:
  v29 = v0[7];
  v28 = v0[8];

  v30 = v0[1];

  return v30(v9);
}

uint64_t sub_1000813C0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100081434()
{
  v1 = sub_100005814(&qword_1003DABB8, &unk_10033F880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000814C8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&qword_1003DABB8, &unk_10033F880) - 8) + 80);

  return sub_10007ECA8(a1, a2);
}

unint64_t sub_100081554(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3770, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t *sub_1000815A0(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v14 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v13 = *v3;

      sub_10007FE20(&v14, &v13);

      ++v3;
      --v2;
    }

    while (v2);
    v1 = v14;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = sub_10021145C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Extracted Custodian statuses: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  if (!v1[2])
  {

    return 0;
  }

  return v1;
}

void sub_100081798(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t))
{
  v18 = a1;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  if (a2)
  {
    if (v18)
    {
      v15 = _convertErrorToNSError(_:)();
    }

    else
    {
      v15 = 0;
    }

    [a2 updateTaskResultWithError:{v15, v18}];
  }

  (*(v11 + 16))(v14, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  swift_getObjectType();
  sub_100246FA8(a2);
  v16 = swift_unknownObjectRelease();
  if (a4)
  {
    v16 = a4(v18);
  }

  a6(v16);
  v17 = *(a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation);
  *(a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;
}

uint64_t sub_100081964(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v69 = a6;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v65 = &v61 - v15;
  v16 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  v20 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v61 - v23;
  v25 = *(v21 + 16);
  v64 = a1;
  v25(&v61 - v23, a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v20);
  v68 = a2;
  v26 = a2;
  v70 = a3;

  v72 = a7;

  v71 = a5;
  sub_100083AA0(a4);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v24, v20);
  v27 = [*(*sub_1000080F8(v74 v75) + 16)];
  if (v27 && (v28 = v27, v29 = [v27 aa_altDSID], v28, v29))
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_10000839C(v74);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = a4;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting Fetch User Information in confirmation handler", v37, 2u);
    }

    v39 = v62;
    v38 = v63;
    v40 = v64;
    (*(v62 + 16))(v19, v64 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController, v63);
    Dependency.wrappedValue.getter();
    (*(v39 + 8))(v19, v38);
    v41 = *sub_1000080F8(v74, v75);

    v42 = v70;

    v43 = v72;

    v44 = v26;
    v45 = v71;
    sub_100083AA0(v36);

    sub_1003147DC(v30, v32, v41, v40, v68, v42, v36, v45, v69, v43);

    sub_100083B0C(v36);

    sub_10000839C(v74);

    sub_100083B0C(v36);
  }

  else
  {
    sub_10000839C(v74);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAB8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v70;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "altDSID missing", v51, 2u);
    }

    type metadata accessor for AAError(0);
    v73 = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v74[0];
    v53 = v68;
    if (v68)
    {
      v54 = _convertErrorToNSError(_:)();
      [v26 updateTaskResultWithError:v54];
    }

    v55 = v65;
    v56 = v66;
    v57 = v67;
    (*(v66 + 16))(v65, v50 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v67);
    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v55, v57);
    swift_getObjectType();
    sub_100246FA8(v53);
    v58 = swift_unknownObjectRelease();
    if (a4)
    {
      v58 = a4(v52);
    }

    v69(v58);
    v59 = *(v50 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation);
    *(v50 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;

    sub_100083B0C(a4);
  }
}

void sub_100082064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v108 = a2;
  v109 = a3;
  v112 = a1;
  v92 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v91 = *(v92 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v90 - v14;
  v15 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v104 = &v90 - v17;
  v102 = sub_100005814(&qword_1003DABF8, &qword_10033F8A8);
  v100 = *(v102 - 8);
  v18 = *(v100 + 64);
  __chkstk_darwin(v102);
  v98 = &v90 - v19;
  v103 = type metadata accessor for UUID();
  v111 = *(v103 - 8);
  v20 = *(v111 + 64);
  v21 = __chkstk_darwin(v103);
  v101 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v22;
  __chkstk_darwin(v21);
  v97 = &v90 - v23;
  v24 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v25 = *(v24 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v28 = &v90 - v27;
  v29 = swift_allocObject();
  v94 = a5;
  *(v29 + 2) = a5;
  *(v29 + 3) = a6;
  v96 = a7;
  *(v29 + 4) = a7;
  *(v29 + 5) = a8;
  v110 = v29;
  v30 = v25[2];
  v106 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore;
  v107 = v30;
  v30(v28, a4 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v24);
  v93 = a6;

  v95 = a8;

  Dependency.wrappedValue.getter();
  v105 = v25[1];
  v105(v28, v24);
  v31 = [*(*sub_1000080F8(v114 v115) + 16)];
  v32 = a4;
  if (v31 && (v33 = v31, v34 = [v31 aa_altDSID], v33, v34))
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  sub_10000839C(v114);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v38 = kAAAnalyticsEventCustodianHealthCheckOwnerFinalizeSetupWithServer;
  v39 = v109;

  v40 = v38;
  v41 = sub_100245D38(v40, v35, v37, v108, v39);
  v42 = v32;
  os_unfair_lock_lock(*(v32 + 40));
  v43 = *(v32 + 16);
  *(v32 + 16) = 0;

  os_unfair_lock_unlock(*(v32 + 40));
  v107(v28, v32 + v106, v24);
  Dependency.wrappedValue.getter();
  v105(v28, v24);
  v44 = [*(*sub_1000080F8(v114 v115) + 16)];
  sub_10000839C(v114);
  if (v44)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v108 = v44;
    v109 = v41;
    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAB8);
    v46 = v111;
    v47 = v97;
    v48 = v103;
    v49 = v111 + 16;
    v107 = *(v111 + 16);
    v107(v97, v112, v103);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v42;
      v54 = swift_slowAlloc();
      v114[0] = v54;
      *v52 = 136315138;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      (*(v111 + 8))(v47, v48);
      v58 = sub_10021145C(v55, v57, v114);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Custodian %s Calling setup finalization", v52, 0xCu);
      sub_10000839C(v54);
      v42 = v53;

      v46 = v111;
    }

    else
    {

      (*(v46 + 8))(v47, v48);
    }

    v68 = v101;
    v106 = v49;
    v69 = v107;
    v107(v101, v112, v48);
    v70 = type metadata accessor for FinalizeCustodianSetupMessage();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    v73 = v48;
    v74 = swift_allocObject();
    *(v74 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
    v75 = v74 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
    *v75 = 0;
    *(v75 + 8) = 1;
    *(v74 + 16) = 3;
    v76 = *(v46 + 32);
    v76(v74 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v68, v73);
    *(v74 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 1;
    v77 = v100;
    v78 = v98;
    v79 = v102;
    (*(v100 + 16))(v98, v42 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__setupFinalizationHandler, v102);
    Dependency.wrappedValue.getter();
    (*(v77 + 8))(v78, v79);
    v80 = sub_1000080F8(v114, v115);
    v69(v68, v112, v73);
    v81 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v82 = (v99 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    *(v83 + 16) = v109;
    *(v83 + 24) = v42;
    v76(v83 + v81, v68, v73);
    v84 = (v83 + v82);
    v85 = v110;
    *v84 = sub_100083740;
    v84[1] = v85;
    v86 = *v80;
    v87 = type metadata accessor for TaskPriority();
    v88 = v104;
    (*(*(v87 - 8) + 56))(v104, 1, 1, v87);
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = v86;
    v89[5] = v74;
    v89[6] = v108;
    v89[7] = sub_100083868;
    v89[8] = v83;

    sub_1000BCD5C(0, 0, v88, &unk_10033F8B0, v89);

    sub_10000839C(v114);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    v113 = -7051;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v59 = v114[0];
    if (v41)
    {
      v60 = v41;
      v61 = v59;
      v62 = _convertErrorToNSError(_:)();

      [v60 updateTaskResultWithError:v62];
    }

    v63 = v91;
    v64 = v90;
    v65 = v92;
    (*(v91 + 16))(v90, v42 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v92);
    Dependency.wrappedValue.getter();
    (*(v63 + 8))(v64, v65);
    swift_getObjectType();
    sub_100246FA8(v41);
    swift_unknownObjectRelease();
    v66 = v59;
    v67 = v94(v59);
    v96(v67);
  }
}

void sub_100082AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v89 = a5;
  v90 = a7;
  v83 = a2;
  v84 = a3;
  v12 = type metadata accessor for UUID();
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v83 - v18;
  __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v22 = *(a4 + 40);

  os_unfair_lock_lock(v22);
  v23 = *(a4 + 16);
  v24 = *(a4 + 40);

  os_unfair_lock_unlock(v24);
  if (v23)
  {
    v86 = a8;
    v87 = a6;
    v85 = a1;
    v25 = UUID.uuidString.getter();
    if (*(v23 + 16))
    {
      v27 = sub_1003084DC(v25, v26);
      v29 = v28;

      if (v29)
      {
        v30 = *(*(v23 + 56) + v27);

        if (!v30)
        {
          v70 = v87;

          v71 = v86;

          sub_100082064(v85, v83, v84, a4, v89, v70, v90, v71);

          return;
        }

        v31 = v12;
        if (v30 == 1)
        {
          v32 = v88;
          v33 = v85;
          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100008D04(v34, qword_1003FAAB8);
          (*(v32 + 16))(v19, v33, v12);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {

            (*(v32 + 8))(v19, v31);
            goto LABEL_32;
          }

          v37 = swift_slowAlloc();
          v38 = v32;
          v39 = swift_slowAlloc();
          v92 = v39;
          *v37 = 136315138;
          v40 = UUID.uuidString.getter();
          v41 = v31;
          v43 = v42;
          (*(v38 + 8))(v19, v41);
          v44 = sub_10021145C(v40, v43, &v92);

          *(v37 + 4) = v44;
          v45 = "Custodian %s is already known to IdMS and accepted";
        }

        else
        {
          v72 = v88;
          v73 = v85;
          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Logger();
          sub_100008D04(v74, qword_1003FAAB8);
          (*(v72 + 16))(v16, v73, v12);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {

            (*(v72 + 8))(v16, v31);
            goto LABEL_32;
          }

          v37 = swift_slowAlloc();
          v75 = v72;
          v39 = swift_slowAlloc();
          v92 = v39;
          *v37 = 136315138;
          v76 = UUID.uuidString.getter();
          v77 = v31;
          v79 = v78;
          (*(v75 + 8))(v16, v77);
          v80 = sub_10021145C(v76, v79, &v92);

          *(v37 + 4) = v80;
          v45 = "Custodian %s IdMS status is unknown, Investigate.";
        }

        _os_log_impl(&_mh_execute_header, v35, v36, v45, v37, 0xCu);
        sub_10000839C(v39);

LABEL_32:
        v81 = v90;
        v82 = v89(0);
        v81(v82);

        return;
      }
    }

    else
    {
    }

    type metadata accessor for AACustodianError(0);
    v91 = -7018;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = v92;
    v52 = v12;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAAB8);
    v54 = v88;
    (*(v88 + 16))(v21, v85, v12);
    v55 = v51;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v92 = v60;
      *v58 = 136315394;
      v61 = UUID.uuidString.getter();
      v62 = v54;
      v64 = v63;
      (*(v62 + 8))(v21, v52);
      v65 = sub_10021145C(v61, v64, &v92);

      *(v58 + 4) = v65;
      *(v58 + 12) = 2112;
      v66 = v55;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v67;
      *v59 = v67;
      _os_log_impl(&_mh_execute_header, v56, v57, "Custodian %s not found on IdMS: %@", v58, 0x16u);
      sub_100083380(v59);

      sub_10000839C(v60);
    }

    else
    {

      (*(v54 + 8))(v21, v12);
    }

    v68 = v55;
    v69 = v89(v55);
    v90(v69);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAB8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No Custodian statuses found on IdMS", v49, 2u);
    }

    v50 = v89(0);
    v90(v50);
  }
}

uint64_t sub_100083380(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D9140, &qword_10033E640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000833EC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  sub_10007E8B8(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_100083490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000834A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000834FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000835F4(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  return sub_10007EABC(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000836B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100083700()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100083740()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = (*(v0 + 16))();
  return v3(v4);
}

uint64_t sub_100083784()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100083868(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10007F874(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_10008390C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100083964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000DCFEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083A40()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100083AA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100083AB0()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100083B0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100083B2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100083B90()
{
  type metadata accessor for CustodianKeyRepair(0);
  sub_100005814(&qword_1003DB068, &qword_10033F998);
  result = String.init<A>(describing:)();
  qword_1003DAC00 = result;
  *algn_1003DAC08 = v1;
  return result;
}

uint64_t sub_100083BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  if (!a1)
  {
    return sub_1000845D8(a3, a4, a5, a6, a7);
  }

  swift_errorRetain();
  a6(a1);
}

uint64_t sub_100083C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v35 = type metadata accessor for URL();
  v32 = *(v35 - 8);
  v11 = *(v32 + 64);
  v12 = __chkstk_darwin(v35);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  (*(v18 + 16))(&v32 - v20, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v21, v17);
  v22 = sub_1000080F8(v37, v37[3]);
  v23 = swift_allocObject();
  v24 = v33;
  v25 = v34;
  v23[2] = a1;
  v23[3] = v24;
  v23[4] = v25;
  v26 = sub_1000080F8((*v22 + 16), *(*v22 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v32 + 8);
  v28 = v14;
  v29 = v35;
  v27(v28, v35);
  (*(v7 + 16))(v10, *v26 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v30 = *sub_1000080F8(v36, v36[3]);
  sub_1000324D8(v16, sub_100097CA0, v23);

  v27(v16, v29);
  sub_10000839C(v36);
  return sub_10000839C(v37);
}

void sub_100084010(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v52 = type metadata accessor for CustodianRecord();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v52);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to fetch custodians", v21, 2u);
    }

    v22 = a1;
    goto LABEL_19;
  }

  v48 = a3;
  v23 = *(a1 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v46[1] = a5;
    v47 = a4;
    v54 = _swiftEmptyArrayStorage;
    sub_1002E0370(0, v23, 0);
    v24 = v54;
    v25 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v26 = *(v10 + 72);
    v50 = v14 + 32;
    v51 = v26;
    v27 = v49;
    do
    {
      sub_100094A08(v25, v13, type metadata accessor for CustodianRecord);
      (*(v14 + 16))(v17, &v13[*(v52 + 20)], v27);
      sub_1000949A8(v13, type metadata accessor for CustodianRecord);
      v54 = v24;
      v29 = v24[2];
      v28 = v24[3];
      if (v29 >= v28 >> 1)
      {
        sub_1002E0370(v28 > 1, v29 + 1, 1);
        v27 = v49;
        v24 = v54;
      }

      v24[2] = v29 + 1;
      (*(v14 + 32))(v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v29, v17, v27);
      v25 += v51;
      --v23;
    }

    while (v23);
    a4 = v47;
  }

  v31 = sub_1002E20C0(v30);

  v32 = sub_10009366C(v24, v31);

  if ((v32 & 1) == 0)
  {

    v22 = 0;
LABEL_19:
    a4(v22);
    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA88);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = Array.description.getter();
    v39 = sub_10021145C(v37, v38, &v54);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = Array.description.getter();
    v41 = a4;
    v43 = v42;

    v44 = sub_10021145C(v40, v43, &v54);
    a4 = v41;

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "No matching custodians found on device to repair. uuidsToRepair %s custodiansOnDevice: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for AACustodianError(0);
  v53 = -7050;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v45 = v54;
  a4(v54);
}

uint64_t sub_1000845D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v53 = a2;
  v54 = a3;
  v7 = type metadata accessor for KeyRepairContext(0);
  v55 = *(v7 - 1);
  v8 = *(v55 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  v48 = v15;
  __chkstk_darwin(v12);
  v17 = &v45 - v16;
  v18 = [objc_allocWithZone(NSOperationQueue) init];
  [v18 setMaxConcurrentOperationCount:1];
  [v18 setQualityOfService:25];
  v19 = *(a1 + 16);
  v50 = a5;
  v57 = v18;
  if (v19)
  {
    v46 = v17;
    v47 = v11;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002E032C(0, v19, 0);
    v20 = aBlock[0];
    v52 = type metadata accessor for UUID();
    v21 = *(v52 - 8);
    v51 = *(v21 + 16);
    v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v51(v14, v22, v52);
      v14[v7[5]] = 1;
      v14[v7[6]] = 0;
      v24 = &v14[v7[7]];
      v25 = v54;
      *v24 = v53;
      v24[1] = v25;
      aBlock[0] = v20;
      v27 = v20[2];
      v26 = v20[3];

      if (v27 >= v26 >> 1)
      {
        sub_1002E032C(v26 > 1, v27 + 1, 1);
        v20 = aBlock[0];
      }

      v20[2] = v27 + 1;
      sub_100094BE4(v14, v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v27, type metadata accessor for KeyRepairContext);
      v22 += v23;
      --v19;
    }

    while (v19);
    a5 = v50;
    v18 = v57;
    v17 = v46;
    v28 = v47;
  }

  else
  {
    v28 = v11;
    v20 = _swiftEmptyArrayStorage;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = &_swiftEmptyDictionarySingleton;
  v30 = swift_allocObject();
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = v20[2];
  v32 = v56;
  if (v31)
  {
    v33 = *(v55 + 80);
    v34 = v20 + ((v33 + 32) & ~v33);
    v54 = *(v55 + 72);
    v55 = v33;
    v52 = (v48 + ((v33 + 24) & ~v33) + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v33 + 24) & ~v33;
    v35 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      sub_100094A08(v34, v17, type metadata accessor for KeyRepairContext);
      sub_100094A08(v17, v28, type metadata accessor for KeyRepairContext);
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      sub_100094BE4(v28, v36 + v53, type metadata accessor for KeyRepairContext);
      *(v36 + v52) = v30;
      *(v36 + v35) = v29;
      v37 = type metadata accessor for AsyncOperation();
      v38 = objc_allocWithZone(v37);
      v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v39 = &v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v39 = sub_100097544;
      v39[1] = v36;
      v59.receiver = v38;
      v59.super_class = v37;
      v32 = v56;

      v40 = objc_msgSendSuper2(&v59, "init");
      [v57 addOperation:v40];

      sub_1000949A8(v17, type metadata accessor for KeyRepairContext);
      v34 += v54;
      --v31;
    }

    while (v31);

    v18 = v57;
    a5 = v50;
  }

  else
  {
  }

  v41 = swift_allocObject();
  v41[2] = v32;
  v41[3] = v30;
  v42 = v49;
  v41[4] = v29;
  v41[5] = v42;
  v41[6] = a5;
  aBlock[4] = sub_100097650;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6F30;
  v43 = _Block_copy(aBlock);

  [v18 addBarrierBlock:v43];
  _Block_release(v43);
}

uint64_t sub_100084B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a4;
  v10 = type metadata accessor for KeyRepairContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094A08(a4, v13, type metadata accessor for KeyRepairContext);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100094BE4(v13, v19 + v14, type metadata accessor for KeyRepairContext);
  *(v19 + v15) = a3;
  *(v19 + v16) = a5;
  v20 = (v19 + v17);
  v21 = v26;
  *v20 = v25;
  v20[1] = a2;
  *(v19 + v18) = v21;

  sub_100085FA8(v24, sub_100097810, v19);
}

uint64_t sub_100084D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a5;
  v86 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v86 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v86);
  v83 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = *(v84 + 64);
  __chkstk_darwin(v16);
  v82 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for KeyRepairContext(0);
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v73 - v23;
  __chkstk_darwin(v22);
  v26 = &v73 - v25;
  if (a1)
  {
    v76 = a7;
    v78 = a3;
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    sub_100094A08(a2, v24, type metadata accessor for KeyRepairContext);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v74 = v13;
      v31 = v30;
      v32 = swift_slowAlloc();
      v75 = a6;
      v33 = v32;
      v34 = swift_slowAlloc();
      v77 = a2;
      v35 = v34;
      aBlock = v34;
      *v31 = 136315394;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1000949A8(v24, type metadata accessor for KeyRepairContext);
      v39 = sub_10021145C(v36, v38, &aBlock);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Repair Failure: %s error: %@", v31, 0x16u);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);
      a6 = v75;

      sub_10000839C(v35);
      a2 = v77;

      v13 = v74;
    }

    else
    {

      sub_1000949A8(v24, type metadata accessor for KeyRepairContext);
    }

    v53 = *(v78 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair_repairSerialQueue);
    v54 = v80;
    sub_100094A08(a2, v80, type metadata accessor for KeyRepairContext);
    v55 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v56 = (v20 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v76;
    sub_100094BE4(v54, v57 + v55, type metadata accessor for KeyRepairContext);
    *(v57 + v56) = a1;
    v58 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v58 = v81;
    v58[1] = a6;
    v92 = sub_100097B90;
    v93 = v57;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_100031EF0;
    v91 = &unk_1003A7048;
    v59 = _Block_copy(&aBlock);
    swift_errorRetain();

    v60 = v82;
    static DispatchQoS.unspecified.getter();
    v87 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v61 = v83;
    v62 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v59);

    (*(v13 + 8))(v61, v62);
    (*(v84 + 8))(v60, v85);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAA88);
    v77 = a2;
    sub_100094A08(a2, v26, type metadata accessor for KeyRepairContext);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v78 = a3;
      v45 = v44;
      v46 = swift_slowAlloc();
      v75 = a6;
      v47 = v46;
      aBlock = v46;
      *v45 = 136315138;
      type metadata accessor for UUID();
      v48 = v13;
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_1000949A8(v26, type metadata accessor for KeyRepairContext);
      v52 = sub_10021145C(v49, v51, &aBlock);
      v13 = v48;

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Repair Success: %s", v45, 0xCu);
      sub_10000839C(v47);
      a6 = v75;

      a3 = v78;
    }

    else
    {

      sub_1000949A8(v26, type metadata accessor for KeyRepairContext);
    }

    v63 = *(a3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair_repairSerialQueue);
    v64 = v80;
    sub_100094A08(v77, v80, type metadata accessor for KeyRepairContext);
    v65 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = a4;
    sub_100094BE4(v64, v66 + v65, type metadata accessor for KeyRepairContext);
    v67 = (v66 + ((v20 + v65 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v67 = v81;
    v67[1] = a6;
    v92 = sub_1000979E0;
    v93 = v66;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_100031EF0;
    v91 = &unk_1003A6FF8;
    v68 = _Block_copy(&aBlock);

    v69 = v82;
    static DispatchQoS.unspecified.getter();
    v87 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v70 = v83;
    v71 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v68);
    (*(v13 + 8))(v70, v71);
    (*(v84 + 8))(v69, v85);
  }
}

uint64_t sub_100085768(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  swift_beginAccess();
  v11 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100306280(0, v11[2] + 1, 1, v11);
    *(a1 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100306280(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  *(a1 + 16) = v11;
  return a3(v15);
}

uint64_t sub_100085910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = UUID.uuidString.getter();
  v9 = v8;
  swift_beginAccess();
  swift_errorRetain();
  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a3, v7, v9, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v14;
  v12 = swift_endAccess();
  return a4(v12);
}

uint64_t sub_1000859DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair_repairSerialQueue);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  aBlock[4] = sub_1000976C8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6F80;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

void sub_100085CC4(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(a1 + 16);
    type metadata accessor for UUID();

    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_10021145C(v12, v14, v21);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Finishing Custodian Repair for UUIDs: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  type metadata accessor for AAError(0);
  v21[13] = -4408;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v17;
  swift_beginAccess();
  v18 = *(a2 + 16);
  *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
  *(inited + 48) = v18;

  sub_100308978(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
  sub_100097CB0(&qword_1003D8370, type metadata accessor for AAError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v19 = v22;
  v20 = v22;
  a3(v19);
}

void sub_100085FA8(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v55 = *v3;
  v5 = type metadata accessor for KeyRepairContext(0);
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  __chkstk_darwin(v5 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v51 - v19;
  (*(v17 + 16))(&v51 - v19, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v21 = [*(*sub_1000080F8(v60 v61) + 16)];
  sub_10000839C(v60);
  if (v21)
  {
    (*(v12 + 16))(v15, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController, v11);
    Dependency.wrappedValue.getter();
    (*(v12 + 8))(v15, v11);
    v22 = *(*sub_1000080F8(v60, v61) + 24);
    v59 = 0;
    if ([v22 isManateeAvailable:&v59])
    {
      v23 = v59;
      sub_10000839C(v60);
      v24 = v52;
      (*(v52 + 16))(v10, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v7);
      Dependency.wrappedValue.getter();
      (*(v24 + 8))(v10, v7);
      v25 = sub_1000080F8(v60, v61);
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = v56;
      v28 = v54;
      sub_100094A08(v56, v54, type metadata accessor for KeyRepairContext);
      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      *(v32 + 24) = v21;
      sub_100094BE4(v28, v32 + v29, type metadata accessor for KeyRepairContext);
      v33 = (v32 + v30);
      v34 = v58;
      *v33 = v57;
      v33[1] = v34;
      *(v32 + v31) = v55;
      v35 = *v25;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100094C4C;
      *(v36 + 24) = v32;

      v37 = v21;

      sub_10001DDA4(v27, sub_100094D34, v36);

      sub_10000839C(v60);
    }

    else
    {
      v44 = v59;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10000839C(v60);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100008D04(v45, qword_1003FAAB8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v60[0] = v49;
        *v48 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v60);
        _os_log_impl(&_mh_execute_header, v46, v47, "%s - no manatee available, stopping custodian key repair.", v48, 0xCu);
        sub_10000839C(v49);
      }

      type metadata accessor for AACustodianError(0);
      v59 = -7024;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v50 = v60[0];
      v57(v60[0]);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAB8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v60);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s - not logged in to AppleAccount, unable to repair keys", v41, 0xCu);
      sub_10000839C(v42);
    }

    type metadata accessor for AACustodianError(0);
    v59 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = v60[0];
    v57(v60[0]);
  }
}

uint64_t sub_1000868B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v27 = a6;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v27 - v16);
  sub_100012D04(a1, &v27 - v16, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v22 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v28);
      *(v22 + 12) = 2112;
      v25 = _convertErrorToNSError(_:)();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - error fetching custodianship records, unable to repair: %@", v22, 0x16u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v24);
    }

    swift_errorRetain();
    a5(v18);
  }

  else
  {
    sub_100094BE4(v17, v13, type metadata accessor for CustodianshipRecords);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100086C1C(v13, a3, a4, a5, v27);
    }

    return sub_1000949A8(v13, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_100086C1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v78 = a4;
  v74 = a2;
  v87 = *v5;
  v8 = type metadata accessor for UUID();
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  __chkstk_darwin(v8);
  v82 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  __chkstk_darwin(v11);
  v77 = &v66 - v13;
  v14 = type metadata accessor for KeyRepairContext(0);
  v15 = v14 - 8;
  v76 = *(v14 - 8);
  v16 = *(v76 + 8);
  __chkstk_darwin(v14);
  v86 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustodianshipRecords(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17 - 8);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  v67 = sub_10008AB1C(*(a3 + *(v15 + 36)), *(a3 + *(v15 + 36) + 8));
  v23 = swift_allocObject();
  v83 = v5;
  swift_weakInit();
  v70 = a1;
  sub_100094A08(a1, v22, type metadata accessor for CustodianshipRecords);
  v81 = a3;
  sub_100094A08(a3, &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyRepairContext);
  v24 = *(v18 + 80);
  v25 = (v24 + 40) & ~v24;
  v73 = v19 + 7;
  v26 = (v19 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v76 + 80);
  v72 = v27 + 8;
  v28 = (v27 + 8 + v26) & ~v27;
  v71 = v16 + 7;
  v29 = (v16 + 7 + v28) & 0xFFFFFFFFFFFFFFF8;
  v75 = v24 | v27;
  v30 = swift_allocObject();
  v31 = v78;
  *(v30 + 2) = v23;
  *(v30 + 3) = v31;
  *(v30 + 4) = v68;
  v78 = v22;
  sub_100094BE4(v22, v30 + v25, type metadata accessor for CustodianshipRecords);
  v32 = v74;
  *(v30 + v26) = v74;
  sub_100094BE4(v86, v30 + v28, type metadata accessor for KeyRepairContext);
  v33 = v67;
  *(v30 + v29) = v67;
  v76 = v30;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;
  v34 = qword_1003D7F48;

  v35 = v32;
  v74 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = ~v24;
  v37 = ~v27;
  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAAB8);
  v39 = v70;
  v40 = v69;
  sub_100094A08(v70, v69, type metadata accessor for CustodianshipRecords);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v68 = ~v24;
    v43 = v37;
    v44 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v44 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v44 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v88);
    *(v44 + 12) = 2080;
    v45 = sub_1000A92F8();
    v47 = v46;
    sub_1000949A8(v40, type metadata accessor for CustodianshipRecords);
    v48 = sub_10021145C(v45, v47, v88);

    *(v44 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - Checking CRK presence on Octagon for %s", v44, 0x16u);
    swift_arrayDestroy();

    v37 = v43;
    v36 = v68;
  }

  else
  {

    sub_1000949A8(v40, type metadata accessor for CustodianshipRecords);
  }

  v50 = v79;
  v49 = v80;
  v51 = v83;
  v52 = v77;
  (*(v79 + 16))(v77, v83 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v80);
  Dependency.wrappedValue.getter();
  (*(v50 + 8))(v52, v49);
  v80 = sub_1000080F8(v88, v88[3]);
  v53 = v82;
  sub_1000A8E58(v82);
  v54 = v78;
  sub_100094A08(v39, v78, type metadata accessor for CustodianshipRecords);
  v55 = v86;
  sub_100094A08(v81, v86, type metadata accessor for KeyRepairContext);
  v56 = (v24 + 16) & v36;
  v57 = (v73 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v72 + v58) & v37;
  v60 = (v71 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_100094BE4(v54, v61 + v56, type metadata accessor for CustodianshipRecords);
  v62 = (v61 + v57);
  v63 = v76;
  *v62 = sub_1000951A8;
  v62[1] = v63;
  *(v61 + v58) = v51;
  sub_100094BE4(v55, v61 + v59, type metadata accessor for KeyRepairContext);
  *(v61 + v60) = v87;
  v64 = *v80;

  sub_100018104(v53, sub_10009572C, v61);

  (*(v84 + 8))(v53, v85);
  return sub_10000839C(v88);
}

void sub_10008742C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v6 = v5;
  v61 = a4;
  v62 = a5;
  v58 = *v6;
  v59 = a2;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v57 = v52 - v11;
  v12 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v52 - v15;
  v17 = type metadata accessor for CustodianRecoveryInfoRecord();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  v19 = __chkstk_darwin(v17);
  v55 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v20;
  __chkstk_darwin(v19);
  v22 = v52 - v21;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100008D04(v23, qword_1003FAAB8);
  v56 = a1;
  sub_100094A08(a1, v22, type metadata accessor for CustodianRecoveryInfoRecord);

  v52[1] = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v60 = a3;
  if (v27)
  {
    v52[0] = v6;
    v28 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v28 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v66);
    *(v28 + 12) = 2080;
    v29 = *(v17 + 20);
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1000949A8(v22, type metadata accessor for CustodianRecoveryInfoRecord);
    v33 = sub_10021145C(v30, v32, v66);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_10021145C(v59, v60, v66);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - re-sharing zone for %s with: %s", v28, 0x20u);
    swift_arrayDestroy();

    v6 = v52[0];
  }

  else
  {

    sub_1000949A8(v22, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  (*(v13 + 16))(v16, v6 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v63, v66);
    v34 = type metadata accessor for TaskPriority();
    v35 = v57;
    (*(*(v34 - 8) + 56))(v57, 1, 1, v34);
    sub_100040738(v66, v65);
    v36 = v55;
    sub_100094A08(v56, v55, type metadata accessor for CustodianRecoveryInfoRecord);
    v37 = (*(v53 + 80) + 72) & ~*(v53 + 80);
    v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = v6;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    sub_10003E950(v65, v42 + 32);
    sub_100094BE4(v36, v42 + v37, type metadata accessor for CustodianRecoveryInfoRecord);
    *(v42 + v38) = v39;
    v43 = (v42 + v40);
    v44 = v60;
    *v43 = v59;
    v43[1] = v44;
    v45 = (v42 + v41);
    v46 = v62;
    *v45 = v61;
    v45[1] = v46;
    *(v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v58;

    sub_1000BCD5C(0, 0, v35, &unk_10033F968, v42);

    sub_10000839C(v66);
  }

  else
  {
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    sub_100008D3C(v63, &unk_1003DB050, &qword_10033FA60);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66[0] = v50;
      *v49 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v49 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v66);
      _os_log_impl(&_mh_execute_header, v47, v48, "%s - could not get reference to CloudKitSharing, abandoning re-share", v49, 0xCu);
      sub_10000839C(v50);
    }

    type metadata accessor for AACustodianError(0);
    *&v65[0] = -7008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = v66[0];
    v61(v66[0]);
  }
}

uint64_t sub_100087C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v21;
  *(v8 + 136) = v20;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  *(v8 + 160) = v10;
  v11 = *(v10 - 8);
  *(v8 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v13 = type metadata accessor for CloudShareInfo();
  *(v8 + 184) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v15 = type metadata accessor for CustodianRecoveryInfoRecord();
  *(v8 + 200) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v17 = swift_task_alloc();
  *(v8 + 224) = v17;
  *v17 = v8;
  v17[1] = sub_100087DEC;

  return (sub_10019E6D0)(a5);
}

uint64_t sub_100087DEC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_1000882D0;
  }

  else
  {
    v5 = sub_100087F04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100087F04()
{
  v29 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  v3 = type metadata accessor for Logger();
  *(v0 + 240) = sub_100008D04(v3, qword_1003FAAB8);
  sub_100094A08(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v6 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 328);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    *(v6 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v28);
    *(v6 + 12) = 2080;
    v10 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1000949A8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v14 = sub_10021145C(v11, v13, &v28);

    *(v6 + 14) = v14;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Existing CKShare removed for custodianship: %s didRemove: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 216);

    sub_1000949A8(v15, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 104);
  (*(v17 + 16))(v16, *(v0 + 112) + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__storageController, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  *(v0 + 88) = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v22 = swift_task_alloc();
  *(v0 + 248) = v22;
  v22[2] = v0 + 88;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 256) = v24;
  *v24 = v0;
  v24[1] = sub_100088660;
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0xD000000000000014, 0x800000010032DA40, sub_100094870, v22, v26);
}

uint64_t sub_1000882D0()
{
  v36 = v0;
  v1 = v0[29];
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = v0[13];
  v5 = qword_1003DAC00;
  v4 = *algn_1003DAC08;

  v34 = v5;
  v35 = v4;
  v6._object = 0x800000010032DA10;
  v6._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v6);
  v7 = *(v2 + 20);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v32 = v5;
  v33 = v4;
  v34 = 0x7272652068746977;
  v35 = 0xEB0000000020726FLL;
  v9 = _convertErrorToNSError(_:)();
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x7272652068746977;
  v15._object = 0xEB0000000020726FLL;
  String.append(_:)(v15);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    v21 = sub_10021145C(v32, v33, &v34);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v19, 0xCu);
    sub_10000839C(v20);
  }

  else
  {
  }

  v23 = v0[17];
  v22 = v0[18];
  swift_getErrorValue();
  v24 = v0[7];
  v25 = v0[9];
  sub_1002DEA80(v0[8]);
  v23();

  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[24];
  v29 = v0[22];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100088660()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_100088B78;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_10008877C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10008877C()
{
  v32 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 104);
  sub_10000839C((v0 + 16));
  sub_100094A08(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 328);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    *(v6 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v31);
    *(v6 + 12) = 2080;
    v10 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1000949A8(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    v14 = sub_10021145C(v11, v13, &v31);

    *(v6 + 14) = v14;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - created CKShare for custodianship: %s willFinalize: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 208);

    sub_1000949A8(v15, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 192);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);
  v30 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v17;
  *(v21 + 32) = v16;
  *(v21 + 40) = v30;
  *(v21 + 56) = v19;
  *(v21 + 64) = v18;
  v22 = type metadata accessor for ExponentialRetryScheduler();
  v23 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 280) = v23;
  v24 = swift_allocObject();
  *(v0 + 288) = v24;
  *(v24 + 16) = 0;
  *(v0 + 96) = v23;
  v25 = swift_task_alloc();
  *(v0 + 296) = v25;
  *(v25 + 16) = v24;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0xD000000000000033;
  *(v25 + 48) = 0x800000010032DA60;
  *(v25 + 56) = &unk_10033F980;
  *(v25 + 64) = v21;
  *(v25 + 72) = xmmword_10033F8C0;
  v26 = swift_allocObject();
  *(v0 + 304) = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = sub_100088F18;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v28, &unk_10033F200, v25, sub_10005237C, v26, v22, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100088B78()
{
  v37 = v0;
  v1 = v0[31];

  sub_10000839C(v0 + 2);
  v2 = v0[33];
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v4 = v0[13];
  v6 = qword_1003DAC00;
  v5 = *algn_1003DAC08;

  v35 = v6;
  v36 = v5;
  v7._object = 0x800000010032DA10;
  v7._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v7);
  v8 = *(v3 + 20);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v33 = v6;
  v34 = v5;
  v35 = 0x7272652068746977;
  v36 = 0xEB0000000020726FLL;
  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x7272652068746977;
  v16._object = 0xEB0000000020726FLL;
  String.append(_:)(v16);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    v22 = sub_10021145C(v33, v34, &v35);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
    sub_10000839C(v21);
  }

  else
  {
  }

  v24 = v0[17];
  v23 = v0[18];
  swift_getErrorValue();
  v25 = v0[7];
  v26 = v0[9];
  sub_1002DEA80(v0[8]);
  v24();

  v28 = v0[26];
  v27 = v0[27];
  v29 = v0[24];
  v30 = v0[22];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100088F18()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_100089114;
  }

  else
  {
    v6 = *(v2 + 296);
    v5 = *(v2 + 304);

    v4 = sub_10008903C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10008903C()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[24];
  v6 = v0[17];
  v5 = v0[18];

  v6(0);
  sub_1000949A8(v4, type metadata accessor for CloudShareInfo);
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100089114()
{
  v42 = v0;
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[24];

  sub_1000949A8(v6, type metadata accessor for CloudShareInfo);
  v7 = v0[40];
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v8 = v0[25];
  v9 = v0[13];
  v11 = qword_1003DAC00;
  v10 = *algn_1003DAC08;

  v40 = v11;
  v41 = v10;
  v12._object = 0x800000010032DA10;
  v12._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v12);
  v13 = *(v8 + 20);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v38 = v11;
  v39 = v10;
  v40 = 0x7272652068746977;
  v41 = 0xEB0000000020726FLL;
  v15 = _convertErrorToNSError(_:)();
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x7272652068746977;
  v21._object = 0xEB0000000020726FLL;
  String.append(_:)(v21);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAB8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136315138;
    v27 = sub_10021145C(v38, v39, &v40);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
    sub_10000839C(v26);
  }

  else
  {
  }

  v29 = v0[17];
  v28 = v0[18];
  swift_getErrorValue();
  v30 = v0[7];
  v31 = v0[9];
  sub_1002DEA80(v0[8]);
  v29();

  v33 = v0[26];
  v32 = v0[27];
  v34 = v0[24];
  v35 = v0[22];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1000894F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 176) = a4;
  *(v7 + 56) = a2;
  v8 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v11 = type metadata accessor for ShareMessageContext(0);
  *(v7 + 120) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v13 = type metadata accessor for CustodianRecoveryInfoRecord();
  *(v7 + 136) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100089628, 0, 0);
}

uint64_t sub_100089628()
{
  v33 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  *(v0 + 152) = sub_100008D04(v3, qword_1003FAAB8);
  sub_100094A08(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v6 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    *(v6 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v32);
    *(v6 + 12) = 2080;
    v9 = *(v7 + 20);
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1000949A8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v13 = sub_10021145C(v10, v12, &v32);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - sending new share to custodian %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 144);

    sub_1000949A8(v14, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = *(v0 + 64);
  v31 = *(v0 + 72);
  v21 = *(v0 + 176);
  v22 = *(v0 + 56);
  v23 = *(*(v0 + 136) + 20);
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 16))(v15, v22 + v23, v24);
  sub_100094A08(v20, v15 + *(v17 + 20), type metadata accessor for CloudShareInfo);
  *(v15 + *(v17 + 24)) = v21;
  (*(v19 + 16))(v16, v31 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__messenger, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v16, v18);
  v25 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  *v26 = v0;
  v26[1] = sub_100089A0C;
  v27 = *(v0 + 128);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);

  return sub_1000E9600(v27, v28, v29, 2, 0);
}

uint64_t sub_100089A0C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100089CE4;
  }

  else
  {
    v3 = sub_100089B20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100089B20()
{
  v15 = v0;
  v1 = v0[19];
  sub_10000839C(v0 + 2);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    *(v4 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - CKShare message sent.", v4, 0xCu);
    sub_10000839C(v5);

    v7 = v6;
  }

  else
  {
    v8 = v0[16];

    v7 = v8;
  }

  sub_1000949A8(v7, type metadata accessor for ShareMessageContext);
  v9 = v0[18];
  v10 = v0[16];
  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100089CE4()
{
  v1 = v0[18];
  v2 = v0[14];
  sub_1000949A8(v0[16], type metadata accessor for ShareMessageContext);
  sub_10000839C(v0 + 2);

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_100089D90()
{
  v1 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController;
  v4 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage;
  v6 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__idmsRequestController;
  v8 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__storageController;
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__messenger;
  v12 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage;
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController;
  v16 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__urlBagProvider;
  v18 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__followUpController;
  v20 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsEventFactory;
  v22 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter;
  v24 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = *(v0 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair____lazy_storage___custodianDefaults);

  return v0;
}

uint64_t sub_10008A160()
{
  sub_100089D90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10008A1E0()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v24 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
    if (v3 <= 0x3F)
    {
      v25 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
      if (v5 <= 0x3F)
      {
        v26 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DC930, &unk_1003D9800, &unk_10033EFB0);
        if (v7 <= 0x3F)
        {
          v27 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
          if (v9 <= 0x3F)
          {
            v28 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
            if (v11 <= 0x3F)
            {
              v29 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
              if (v13 <= 0x3F)
              {
                v30 = *(v12 - 8) + 64;
                sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
                if (v15 <= 0x3F)
                {
                  v31 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
                  if (v17 <= 0x3F)
                  {
                    v32 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
                    if (v19 <= 0x3F)
                    {
                      v33 = *(v18 - 8) + 64;
                      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                      if (v21 <= 0x3F)
                      {
                        v34 = *(v20 - 8) + 64;
                        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                        if (v23 <= 0x3F)
                        {
                          v35 = *(v22 - 8) + 64;
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10008A638()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v1 - 8);
  v14 = v1;
  v2 = *(v13 + 64);
  __chkstk_darwin(v1);
  v12 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v11[1] = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair____lazy_storage___custodianDefaults) = 0;
  v9 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair_repairSerialQueue;
  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *(v0 + v9) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

id sub_10008AB1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-1] - v8;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29[-1] - v13;
  (*(v11 + 16))(&v29[-1] - v13, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v15 = [*(*sub_1000080F8(v29 v29[3]) + 16)];
  if (v15 && (v16 = v15, v17 = [v15 aa_altDSID], v16, v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v29);
    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsEventFactory, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v9, v5);
    v18 = kAACustodianRepairEvent;

    v19 = v18;
    v20 = String._bridgeToObjectiveC()();

    if (a2)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    v27 = [objc_opt_self() analyticsEventWithName:v19 altDSID:v20 flowID:v21];

    sub_10000839C(v29);
    return v27;
  }

  else
  {
    sub_10000839C(v29);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAD0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Account is nil. Not reporting repair failure", v25, 2u);
    }

    return 0;
  }
}

void sub_10008AEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v51 = a8;
  v52 = a7;
  v50 = a6;
  v53 = a4;
  v54 = a3;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for RecoveryKeys(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v48 - v25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_100012D04(a1, v26, &qword_1003D8EF8, &qword_10033EB18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v26;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAAB8);
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v33 = 136315394;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v33 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v56);
        *(v33 + 12) = 2112;
        v36 = _convertErrorToNSError(_:)();
        *(v33 + 14) = v36;
        *v34 = v36;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - AutoHeal: error creating recovery keys, unable to repair: %@", v33, 0x16u);
        sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v35);
      }

      v37 = v51;
      if (v51)
      {
        swift_errorRetain();
        v38 = v37;
        v39 = _convertErrorToNSError(_:)();
        [v38 updateTaskResultWithError:v39];

        v41 = v48;
        v40 = v49;
        (*(v48 + 16))(v13, v28 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter, v49);
        Dependency.wrappedValue.getter();
        (*(v41 + 8))(v13, v40);
        [v56 sendEvent:v38];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_errorRetain();
      }

      v54(v29);
    }

    else
    {
      sub_100094BE4(v26, v22, type metadata accessor for RecoveryKeys);
      sub_100094A08(v22, v17, type metadata accessor for RecoveryKeys);
      (*(v19 + 56))(v17, 0, 1, v18);
      sub_10008B618(a5, v17, v50, v52, v54, v53);

      sub_100008D3C(v17, &unk_1003DE920, &unk_10033F9A8);
      sub_1000949A8(v22, type metadata accessor for RecoveryKeys);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAB8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v45 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v56);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s - AutoHeal: Self is nil. Abort Custodian Key Repair", v45, 0xCu);
      sub_10000839C(v46);
    }

    type metadata accessor for AACustodianError(0);
    v55 = -7022;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v56;
    v54(v56);
  }
}

id sub_10008B618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v361 = a6;
  v355 = a5;
  v399 = a4;
  v383 = a3;
  v409 = a2;
  v411 = a1;
  v382 = *v6;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v363 = &v337 - v9;
  v359 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v357 = *(v359 - 8);
  v10 = *(v357 + 64);
  __chkstk_darwin(v359);
  v356 = &v337 - v11;
  v386 = type metadata accessor for KeyRepairContext(0);
  v353 = *(v386 - 8);
  v12 = *(v353 + 64);
  v13 = __chkstk_darwin(v386);
  v360 = &v337 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = v14;
  __chkstk_darwin(v13);
  v354 = &v337 - v15;
  v372 = type metadata accessor for CustodianshipRecords(0);
  v351 = *(v372 - 8);
  v16 = *(v351 + 64);
  v17 = __chkstk_darwin(v372);
  v362 = &v337 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v358 = &v337 - v20;
  v21 = __chkstk_darwin(v19);
  v377 = &v337 - v22;
  v23 = __chkstk_darwin(v21);
  v376 = &v337 - v24;
  v352 = v25;
  __chkstk_darwin(v23);
  v407 = &v337 - v26;
  v371 = type metadata accessor for CustodianHealthRecord();
  v27 = *(*(v371 - 8) + 64);
  v28 = __chkstk_darwin(v371);
  v350 = &v337 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v375 = &v337 - v31;
  __chkstk_darwin(v30);
  v380 = &v337 - v32;
  v396 = type metadata accessor for CustodianRecoveryInfoRecord();
  v33 = *(*(v396 - 8) + 64);
  v34 = __chkstk_darwin(v396);
  v370 = &v337 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v397 = &v337 - v37;
  __chkstk_darwin(v36);
  v379 = &v337 - v38;
  v344 = type metadata accessor for Date.ISO8601FormatStyle();
  v343 = *(v344 - 8);
  v39 = *(v343 + 64);
  __chkstk_darwin(v344);
  v342 = &v337 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = type metadata accessor for Date();
  v403 = *(v408 - 1);
  v41 = *(v403 + 8);
  __chkstk_darwin(v408);
  v341 = &v337 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v374 = &v337 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v368 = &v337 - v48;
  __chkstk_darwin(v47);
  v390 = &v337 - v49;
  v50 = type metadata accessor for CustodianRecord();
  v51 = *(*(v50 - 1) + 64);
  v52 = __chkstk_darwin(v50);
  v402 = (&v337 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __chkstk_darwin(v52);
  v412 = &v337 - v55;
  __chkstk_darwin(v54);
  v398 = &v337 - v56;
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  v59 = v58[8];
  v60 = __chkstk_darwin(v57);
  v339 = &v337 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v340 = &v337 - v63;
  __chkstk_darwin(v62);
  v387 = &v337 - v64;
  v65 = sub_100005814(&unk_1003DB078, &qword_10033F9B8);
  v66 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = &v337 - v67;
  v69 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v70 = *(*(v69 - 8) + 64);
  v71 = __chkstk_darwin(v69 - 8);
  v338 = &v337 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v348 = &v337 - v74;
  v75 = __chkstk_darwin(v73);
  v388 = &v337 - v76;
  v77 = __chkstk_darwin(v75);
  v373 = &v337 - v78;
  __chkstk_darwin(v77);
  v80 = &v337 - v79;
  v81 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v82 = *(*(v81 - 8) + 64);
  v83 = __chkstk_darwin(v81 - 8);
  v349 = &v337 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v369 = &v337 - v86;
  v87 = __chkstk_darwin(v85);
  v393 = &v337 - v88;
  v89 = __chkstk_darwin(v87);
  v392 = &v337 - v90;
  v91 = __chkstk_darwin(v89);
  v93 = &v337 - v92;
  __chkstk_darwin(v91);
  v95 = &v337 - v94;
  v97 = (v58 + 2);
  v96 = v58[2];
  (v96)(&v337 - v94, v411 + v50[5], v57);
  v395 = v58;
  v98 = v58[7];
  v406 = v58 + 7;
  v410 = v98;
  (v98)(v95, 0, 1, v57);
  sub_100012D04(v409, v80, &unk_1003DE920, &unk_10033F9A8);
  v99 = type metadata accessor for RecoveryKeys(0);
  v100 = *(v99 - 8);
  v101 = *(v100 + 48);
  v400 = v100 + 48;
  v401 = v101;
  v102 = v101(v80, 1, v99);
  v404 = v96;
  v405 = v97;
  v391 = v99;
  if (v102 == 1)
  {
    sub_100008D3C(v80, &unk_1003DE920, &unk_10033F9A8);
    v103 = 1;
  }

  else
  {
    (v96)(v93, &v80[*(v99 + 24)], v57);
    sub_1000949A8(v80, type metadata accessor for RecoveryKeys);
    v103 = 0;
  }

  (v410)(v93, v103, 1, v57);
  v104 = *(v65 + 48);
  sub_100012D04(v95, v68, &qword_1003D8B60, &unk_10033F210);
  sub_100012D04(v93, &v68[v104], &qword_1003D8B60, &unk_10033F210);
  v105 = v395 + 6;
  v106 = v395[6];
  v107 = v106(v68, 1, v57);
  v108 = v412;
  v385 = v105;
  v394 = v106;
  if (v107 == 1)
  {
    sub_100008D3C(v93, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v95, &qword_1003D8B60, &unk_10033F210);
    if (v394(&v68[v104], 1, v57) == 1)
    {
      sub_100008D3C(v68, &qword_1003D8B60, &unk_10033F210);
      v389 = 1;
LABEL_10:
      v110 = v411;
      goto LABEL_12;
    }

LABEL_9:
    sub_100008D3C(v68, &unk_1003DB078, &qword_10033F9B8);
    v389 = 0;
    goto LABEL_10;
  }

  v109 = v392;
  sub_100012D04(v68, v392, &qword_1003D8B60, &unk_10033F210);
  if (v106(&v68[v104], 1, v57) == 1)
  {
    sub_100008D3C(v93, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v95, &qword_1003D8B60, &unk_10033F210);
    (v395[1])(v109, v57);
    v108 = v412;
    goto LABEL_9;
  }

  v111 = v395;
  v112 = v387;
  (v395[4])(v387, &v68[v104], v57);
  sub_100097CB0(&qword_1003DB088, &type metadata accessor for UUID);
  v389 = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = v111[1];
  v113(v112, v57);
  sub_100008D3C(v93, &qword_1003D8B60, &unk_10033F210);
  sub_100008D3C(v95, &qword_1003D8B60, &unk_10033F210);
  v113(v109, v57);
  sub_100008D3C(v68, &qword_1003D8B60, &unk_10033F210);
  v110 = v411;
  v108 = v412;
LABEL_12:
  v114 = v408;
  v115 = v404;
  v116 = v391;
  result = [objc_opt_self() currentInfo];
  if (!result)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v118 = result;
  v119 = [result qualifiedBuildVersion];

  if (v119)
  {
    v384 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v392 = v120;
  }

  else
  {
    v384 = 0;
    v392 = 0;
  }

  v121 = v388;
  sub_100094A08(v110, v108, type metadata accessor for CustodianRecord);
  v122 = v373;
  sub_100012D04(v409, v373, &unk_1003DE920, &unk_10033F9A8);
  if (v401(v122, 1, v116) == 1)
  {
    sub_100008D3C(v122, &unk_1003DE920, &unk_10033F9A8);
    v388 = 0;
    v387 = 0xF000000000000000;
  }

  else
  {
    v123 = v122[1];
    v388 = *v122;
    v387 = v123;
    sub_100015D6C(v388, v123);
    sub_1000949A8(v122, type metadata accessor for RecoveryKeys);
  }

  LODWORD(v373) = *(v399 + *(v386 + 20));
  if (v373)
  {
    v124 = 1;
  }

  else
  {
    v124 = *(v110 + v50[12]);
  }

  v125 = v403;
  v126 = v390;
  if (v389)
  {
    v127 = 1;
    v128 = v410;
    (v410)(v393, 1, 1, v57);
  }

  else
  {
    sub_100012D04(v409, v121, &unk_1003DE920, &unk_10033F9A8);
    if (v401(v121, 1, v116) == 1)
    {
      sub_100008D3C(v121, &unk_1003DE920, &unk_10033F9A8);
      v129 = 1;
      v130 = v393;
    }

    else
    {
      v130 = v393;
      (v115)(v393, v121 + *(v116 + 24), v57);
      sub_1000949A8(v121, type metadata accessor for RecoveryKeys);
      v129 = 0;
    }

    v128 = v410;
    (v410)(v130, v129, 1, v57);
    Date.init()();
    v127 = 0;
  }

  v131 = *(v125 + 7);
  v347 = v125 + 56;
  v346 = v131;
  v131(v126, v127, 1, v114);
  v132 = v402;
  v133 = (v402 + v50[7]);
  *v133 = 0;
  v133[1] = 0;
  v134 = (v132 + v50[8]);
  *v134 = 0;
  v134[1] = 0;
  v367 = v134;
  v135 = (v132 + v50[13]);
  *v135 = 0;
  v135[1] = 0;
  v365 = v135;
  v136 = (v132 + v50[14]);
  *v136 = 0;
  v136[1] = 0;
  v366 = v136;
  v137 = (v132 + v50[15]);
  *v137 = 0;
  v345 = v137;
  *(v137 + 8) = 1;
  v364 = v50[16];
  (v128)(v132 + v364, 1, 1, v57);
  v138 = v412;
  (v115)(v132, v412, v57);
  (v115)(v132 + v50[5], v138 + v50[5], v57);
  v139 = v50[11];
  if (v124 == *(v138 + v50[12]))
  {
    v140 = *(v138 + v139);
    v141 = *(v138 + v139 + 8);
    v142 = (v132 + v139);
    *v142 = v140;
    v142[1] = v141;
    sub_100015D6C(v140, v141);
  }

  else
  {
    *(v132 + v139) = xmmword_10033F8D0;
  }

  v143 = v388;
  v144 = v387;
  v145 = v50[6];
  v146 = *(v138 + v145);
  v147 = *(v138 + v145 + 8);
  v148 = (v132 + v145);
  *v148 = v146;
  v148[1] = v147;
  *(v132 + v50[9]) = *(v138 + v50[9]);
  v149 = v50[10];
  if (v144 >> 60 == 15)
  {
    v150 = *(v138 + v149);
    v151 = *(v138 + v149 + 8);
    v152 = (v132 + v149);
    *v152 = v150;
    v152[1] = v151;
    sub_100052704(v150, v151);
  }

  else
  {
    v153 = (v132 + v149);
    *v153 = v143;
    v153[1] = v144;
  }

  *(v132 + v50[12]) = v124;
  v154 = type metadata accessor for ContactsHelper();
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();

  sub_100052704(v143, v144);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v157 = v413[0];
  v158 = String._bridgeToObjectiveC()();
  v159 = [v157 contactForHandle:v158];

  swift_unknownObjectRelease();
  if (!v159)
  {

    sub_1000EF4CC();
    v163 = 0;
    goto LABEL_47;
  }

  v160 = objc_allocWithZone(AALocalContactInfo);
  v161 = v159;
  v162 = String._bridgeToObjectiveC()();
  v163 = [v160 initWithHandle:v162 contact:v161];

  if ((sub_1000EF4CC() & 1) == 0)
  {
LABEL_47:
    v164 = v410;
    v165 = v412;
LABEL_48:
    v166 = v392;
    v167 = v393;
    v168 = v369;
    goto LABEL_49;
  }

  v164 = v410;
  v165 = v412;
  v166 = v392;
  v167 = v393;
  v168 = v369;
  if (!v163)
  {
LABEL_49:
    v189 = (v165 + v50[7]);
    v190 = v189[1];
    *v133 = *v189;
    v133[1] = v190;
    v191 = (v165 + v50[8]);
    v193 = *v191;
    v192 = v191[1];
    v194 = v367;
    *v367 = v193;
    v194[1] = v192;

    goto LABEL_50;
  }

  v163 = v163;
  v169 = [v163 firstName];
  if (!v169)
  {

    goto LABEL_49;
  }

  v170 = v169;
  v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v173 = v172;

  v174 = sub_1002576F0(v171, v173);
  v176 = v175;

  if (!v176)
  {
LABEL_99:
    v166 = v392;
    v167 = v393;
    goto LABEL_49;
  }

  v163 = v163;
  v177 = [v163 lastName];
  if (!v177)
  {

    goto LABEL_99;
  }

  v178 = v177;
  v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v180 = v163;
  v182 = v181;

  v183 = sub_1002576F0(v179, v182);
  v185 = v184;
  v186 = v180;

  if (!v185)
  {

    v164 = v410;
    v166 = v392;
    v167 = v393;
    v168 = v369;
    v163 = v186;
    v165 = v412;
    goto LABEL_49;
  }

  v187 = (v412 + v50[7]);
  v188 = v187[1];
  v163 = v180;
  if (v188 && (*v187 == v174 && v188 == v176 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v164 = v410;
    v166 = v392;
    v167 = v393;
    v168 = v369;
    v165 = v412;
    goto LABEL_49;
  }

  v165 = v412;
  v334 = (v412 + v50[8]);
  v335 = v334[1];
  if (v335 && (*v334 == v183 && v335 == v185 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v164 = v410;
    goto LABEL_48;
  }

  *v133 = v174;
  v133[1] = v176;
  v336 = v367;
  *v367 = v183;
  v336[1] = v185;
  v164 = v410;
  v166 = v392;
  v167 = v393;
  v168 = v369;
LABEL_50:
  sub_100012D04(v167, v168, &qword_1003D8B60, &unk_10033F210);
  v195 = v394(v168, 1, v57);
  v393 = v57;
  v196 = v163;
  if (v195 == 1)
  {
    sub_100008D3C(v168, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v412 + v50[16], v402 + v364);
  }

  else
  {
    v197 = v395[4];
    v198 = v340;
    v197(v340, v168, v393);
    v199 = v364;
    v200 = v402;
    sub_100008D3C(v402 + v364, &qword_1003D8B60, &unk_10033F210);
    v201 = v198;
    v202 = v393;
    v197(&v200[v199], v201, v393);
    (v164)(&v200[v199], 0, 1, v202);
  }

  v203 = v403;
  v204 = v408;
  v205 = v384;
  v206 = v166;
  v207 = v368;
  if (!v166)
  {
    v208 = (v412 + v50[13]);
    v205 = *v208;
    v209 = v208[1];
  }

  v210 = v365;
  *v365 = v205;
  v210[1] = v206;
  v211 = v390;
  sub_100012D04(v390, v207, &qword_1003DA110, &qword_10033F230);
  v212 = *(v203 + 6);
  v369 = v203 + 48;
  v367 = v212;
  if ((v212)(v207, 1, v204) == 1)
  {

    sub_100015D58(v388, v387);
    sub_100008D3C(v211, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v167, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v207, &qword_1003DA110, &qword_10033F230);
    v213 = v412;
    v214 = (v412 + v50[14]);
    v216 = *v214;
    v215 = v214[1];

    v217 = v391;
    v218 = v389;
  }

  else
  {
    v219 = v341;
    (*(v203 + 4))(v341, v207, v204);

    v220 = v167;
    v221 = v342;
    sub_100195ACC(v342);
    v216 = Date.ISO8601Format(_:)();
    v215 = v222;

    sub_100015D58(v388, v387);
    (*(v343 + 8))(v221, v344);
    (*(v203 + 1))(v219, v204);
    sub_100008D3C(v211, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v220, &qword_1003D8B60, &unk_10033F210);
    v217 = v391;
    v218 = v389;
    v213 = v412;
  }

  v223 = v366;
  *v366 = v216;
  v223[1] = v215;
  v224 = v213 + v50[15];
  v225 = *v224;
  v226 = *(v224 + 8);
  result = sub_1000949A8(v213, type metadata accessor for CustodianRecord);
  if (v218)
  {
    v227 = v225;
  }

  else
  {
    v227 = 1;
  }

  if ((v218 | v226))
  {
    v228 = v218 & v226;
    v229 = v372;
    goto LABEL_65;
  }

  v227 = v225 + 1;
  v229 = v372;
  if (v225 == -1)
  {
    __break(1u);
    goto LABEL_108;
  }

  v228 = 0;
LABEL_65:
  v230 = v345;
  *v345 = v227;
  *(v230 + 8) = v228 & 1;
  sub_100094BE4(v402, v398, type metadata accessor for CustodianRecord);
  v231 = v411 + *(v229 + 20);
  sub_100094A08(v231, v397, type metadata accessor for CustodianRecoveryInfoRecord);
  v232 = v348;
  sub_100012D04(v409, v348, &unk_1003DE920, &unk_10033F9A8);
  v233 = v401(v232, 1, v217);
  v234 = v349;
  if (v233 == 1)
  {
    sub_100008D3C(v232, &unk_1003DE920, &unk_10033F9A8);
    v391 = 0;
    v412 = 0xF000000000000000;
  }

  else
  {
    v235 = *(v232 + 24);
    v391 = *(v232 + 16);
    v412 = v235;
    sub_100015D6C(v391, v235);
    sub_1000949A8(v232, type metadata accessor for RecoveryKeys);
  }

  if (v373)
  {
    v236 = 1;
  }

  else
  {
    v236 = *(v231 + *(v396 + 40));
  }

  LODWORD(v402) = v236;
  v237 = v397;
  if ((v218 & 1) == 0)
  {
    v238 = v338;
    sub_100012D04(v409, v338, &unk_1003DE920, &unk_10033F9A8);
    if (v401(v238, 1, v217) != 1)
    {
      v240 = v393;
      (v404)(v234, v238 + *(v217 + 24), v393);
      sub_1000949A8(v238, type metadata accessor for RecoveryKeys);
      v239 = 0;
      goto LABEL_76;
    }

    sub_100008D3C(v238, &unk_1003DE920, &unk_10033F9A8);
  }

  v239 = 1;
  v240 = v393;
LABEL_76:
  v241 = v410;
  (v410)(v234, v239, 1, v240);
  v242 = v396;
  v243 = *(v396 + 44);
  v244 = v370;
  (v241)(&v370[v243], 1, 1, v240);
  v245 = v404;
  (v404)(v244, v237, v240);
  (v245)(v244 + v242[5], v237 + v242[5], v240);
  v246 = v242[6];
  v247 = v237;
  v248 = *(v237 + v246);
  v249 = *(v237 + v246 + 8);
  v250 = (v244 + v246);
  *v250 = v248;
  v250[1] = v249;
  if (v394(v234, 1, v240) == 1)
  {
    v251 = v240;

    sub_100008D3C(v234, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v247 + v242[11], v244 + v243);
  }

  else
  {
    v252 = v395[4];
    v253 = v234;
    v254 = v339;
    v252(v339, v253, v240);

    sub_100008D3C(v244 + v243, &qword_1003D8B60, &unk_10033F210);
    v252((v244 + v243), v254, v240);
    v229 = v372;
    v251 = v240;
    (v410)(v244 + v243, 0, 1, v240);
  }

  v255 = v384;
  v256 = v242[9];
  v257 = v402;
  if (v402 == *(v247 + v242[10]))
  {
    v259 = *(v247 + v256);
    v260 = *(v247 + v256 + 8);
    v261 = (v244 + v256);
    *v261 = v259;
    v261[1] = v260;
    sub_100015D6C(v259, v260);
    v258 = v396;
  }

  else
  {
    v258 = v242;
    *(v244 + v256) = xmmword_10033F8D0;
  }

  v262 = v251;
  v263 = v258[7];
  v265 = *(v247 + v263);
  v264 = *(v247 + v263 + 8);
  v266 = (v244 + v263);
  *v266 = v265;
  v266[1] = v264;
  v267 = v258[8];
  v268 = v392;
  if (v412 >> 60 == 15)
  {
    v269 = *(v247 + v267);
    v270 = *(v247 + v267 + 8);
    v271 = (v244 + v267);
    *v271 = v269;
    v271[1] = v270;
    sub_100052704(v269, v270);
    v258 = v396;
  }

  else
  {
    v272 = (v244 + v267);
    v273 = v412;
    *v272 = v391;
    v272[1] = v273;
  }

  v274 = (v244 + v258[12]);
  *(v244 + v258[10]) = v257;
  if (v268)
  {
    sub_100015D6C(v265, v264);
    v275 = v379;
    v276 = v397;
  }

  else
  {
    v277 = v397;
    v278 = (v397 + v258[12]);
    v255 = *v278;
    v268 = v278[1];
    sub_100015D6C(v265, v264);

    v276 = v277;
    v244 = v370;
    v275 = v379;
  }

  sub_1000949A8(v276, type metadata accessor for CustodianRecoveryInfoRecord);
  *v274 = v255;
  v274[1] = v268;
  sub_100094BE4(v244, v275, type metadata accessor for CustodianRecoveryInfoRecord);
  v279 = v411 + *(v229 + 24);
  sub_100094A08(v279, v375, type metadata accessor for CustodianHealthRecord);
  v280 = v374;
  Date.init(timeIntervalSince1970:)();
  v281 = 1;
  v346(v280, 0, 1, v408);
  if ((v373 & 1) == 0)
  {
    v281 = *(v279 + *(v371 + 36));
  }

  v282 = v350;
  v283 = v375;
  v284 = v404;
  (v404)(v350, v375, v262);
  v285 = v371;
  (v284)(v282 + *(v371 + 20), v283 + *(v371 + 20), v262);
  v286 = v285[8];
  if (v281 == *(v283 + v285[9]))
  {
    v287 = *(v283 + v286);
    v288 = *(v283 + v286 + 8);
    v289 = (v282 + v286);
    *v289 = v287;
    v289[1] = v288;
    sub_100015D6C(v287, v288);
  }

  else
  {
    *(v282 + v286) = xmmword_10033F8D0;
  }

  v290 = v374;
  v291 = v408;
  if ((v367)(v374, 1, v408) == 1)
  {
    sub_100008D3C(v290, &qword_1003DA110, &qword_10033F230);
    (*(v403 + 2))(v282 + v285[6], v283 + v285[6], v291);
  }

  else
  {
    (*(v403 + 4))(v282 + v285[6], v290, v291);
  }

  *(v282 + v285[9]) = v281;
  *(v282 + v285[7]) = xmmword_10033F8D0;
  v292 = v283 + v285[10];
  v293 = v285;
  v294 = *v292;
  v295 = *(v292 + 8);
  v408 = type metadata accessor for CustodianHealthRecord;
  sub_1000949A8(v283, type metadata accessor for CustodianHealthRecord);
  v296 = v282 + v293[10];
  *v296 = v294;
  *(v296 + 8) = v295;
  v297 = v380;
  sub_100094BE4(v282, v380, type metadata accessor for CustodianHealthRecord);
  v298 = v407;
  sub_100094A08(v398, v407, type metadata accessor for CustodianRecord);
  sub_100094A08(v275, v298 + *(v229 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100094A08(v297, v298 + *(v229 + 24), type metadata accessor for CustodianHealthRecord);
  v299 = v399;
  v300 = sub_10008AB1C(*(v399 + *(v386 + 28)), *(v399 + *(v386 + 28) + 8));
  v301 = swift_allocObject();
  v412 = v301;
  swift_weakInit();
  v405 = type metadata accessor for KeyRepairContext;
  v302 = v354;
  sub_100094A08(v299, v354, type metadata accessor for KeyRepairContext);
  v410 = type metadata accessor for CustodianshipRecords;
  sub_100094A08(v411, v376, type metadata accessor for CustodianshipRecords);
  sub_100094A08(v298, v377, type metadata accessor for CustodianshipRecords);
  v303 = *(v353 + 80);
  v304 = (v303 + 48) & ~v303;
  v305 = *(v351 + 80);
  v306 = (v378 + v305 + v304) & ~v305;
  v411 = v305 | 7;
  v307 = (v352 + v305 + v306) & ~v305;
  v409 = v352 + 7;
  v308 = (v352 + 7 + v307) & 0xFFFFFFFFFFFFFFF8;
  v309 = swift_allocObject();
  *(v309 + 2) = v301;
  *(v309 + 3) = v300;
  v310 = v361;
  *(v309 + 4) = v355;
  *(v309 + 5) = v310;
  v404 = type metadata accessor for KeyRepairContext;
  sub_100094BE4(v302, v309 + v304, type metadata accessor for KeyRepairContext);
  v403 = type metadata accessor for CustodianshipRecords;
  sub_100094BE4(v376, v309 + v306, type metadata accessor for CustodianshipRecords);
  sub_100094BE4(v377, v309 + v307, type metadata accessor for CustodianshipRecords);
  *(v309 + v308) = v382;
  v311 = v357;
  v312 = v356;
  v313 = v359;
  (*(v357 + 16))(v356, v381 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v359);
  v406 = v300;

  Dependency.wrappedValue.getter();
  (*(v311 + 8))(v312, v313);
  v402 = sub_1000080F8(v413, v413[3]);
  v401 = swift_allocObject();
  swift_weakInit();
  v314 = v360;
  sub_100094A08(v399, v360, v405);
  v315 = v358;
  sub_100094A08(v407, v358, v410);
  v316 = (v303 + 24) & ~v303;
  v317 = (v378 + v316 + 7) & 0xFFFFFFFFFFFFFFF8;
  v318 = (v317 + 15) & 0xFFFFFFFFFFFFFFF8;
  v319 = (v305 + v318 + 16) & ~v305;
  v320 = (v409 + v319) & 0xFFFFFFFFFFFFFFF8;
  v321 = swift_allocObject();
  *(v321 + 16) = v383;
  sub_100094BE4(v314, v321 + v316, v404);
  *(v321 + v317) = v401;
  v322 = (v321 + v318);
  *v322 = sub_100095F70;
  v322[1] = v309;
  v323 = v315;
  v324 = v403;
  sub_100094BE4(v323, v321 + v319, v403);
  *(v321 + v320) = v382;
  v325 = *v402;
  v326 = type metadata accessor for TaskPriority();
  v327 = v363;
  (*(*(v326 - 8) + 56))(v363, 1, 1, v326);
  v328 = v362;
  sub_100094A08(v407, v362, v410);
  v329 = (v305 + 40) & ~v305;
  v330 = (v409 + v329) & 0xFFFFFFFFFFFFFFF8;
  v331 = swift_allocObject();
  v331[2] = 0;
  v331[3] = 0;
  v331[4] = v325;
  sub_100094BE4(v328, v331 + v329, v324);
  v332 = (v331 + v330);
  *v332 = sub_1000964DC;
  v332[1] = v321;
  v333 = v383;

  sub_1000BCD5C(0, 0, v327, &unk_10033F240, v331);

  sub_1000949A8(v407, type metadata accessor for CustodianshipRecords);
  sub_1000949A8(v380, v408);
  sub_1000949A8(v379, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000949A8(v398, type metadata accessor for CustodianRecord);

  sub_10000839C(v413);
}

uint64_t sub_10008DCB4(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a7;
  v68 = a6;
  v70 = a1;
  v11 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v15 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  __chkstk_darwin(v15);
  v65 = &v59 - v17;
  v69 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v18 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v20 = (&v59 - v19);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v60 = v20;
    v61 = a5;
    v62 = a4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72[0] = v26;
    *v24 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v70 & 1;
    *(v24 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v24 + 20) = v27;
    *v25 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s - AutoHeal: CRK exists on OT? %{BOOL}d error:%@", v24, 0x1Cu);
    sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v26);

    a5 = v61;
    a4 = v62;
    v20 = v60;
  }

  else
  {
  }

  v29 = a3 + *(type metadata accessor for CustodianshipRecords(0) + 20);
  v30 = *(v29 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 32) + 8);
  if (v70)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    if (v30 >> 60 == 15)
    {
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v72[0] = v35;
        *v34 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v34 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - AutoHeal: CRK exists on OT, RKC not present in CK. KeyRepair is needed. But, cannot delete keys from Octagon. Aborting KeyRepair.", v34, 0xCu);
        sub_10000839C(v35);
      }

      type metadata accessor for AACustodianError(0);
      v36 = -7027;
    }

    else
    {
      if (v33)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v72[0] = v49;
        *v48 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - AutoHeal: CRK exists on OT, RKC present in CK. KeyRepair not needed. Aborting KeyRepair.", v48, 0xCu);
        sub_10000839C(v49);
      }

      type metadata accessor for AACustodianError(0);
      v36 = -7025;
    }

LABEL_40:
    v71 = v36;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v20 = v72[0];
    swift_storeEnumTagMultiPayload();
    a4(v20);
    return sub_100008D3C(v20, &qword_1003D8EF8, &qword_10033EB18);
  }

  if (v30 >> 60 == 15)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72[0] = v40;
      *v39 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v39 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - AutoHeal: CRK not exists on OT, CRK never existed. Recovery Info Record is missing RKC. Attempting to create CRK on Octagon", v39, 0xCu);
      sub_10000839C(v40);
    }

    v41 = v65;
    v42 = v66;
    v43 = v67;
    (*(v66 + 16))(v65, v68 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v67);
    Dependency.wrappedValue.getter();
    (*(v42 + 8))(v41, v43);
    v44 = sub_1000080F8(v72, v72[3]);
    v45 = type metadata accessor for CustodianRecord();
    v46 = *v44;
    sub_1000160C4(a3 + *(v45 + 20), a4, a5);
    return sub_10000839C(v72);
  }

  else
  {
    v50 = v64;
    (*(v64 + 16))(v14, v68 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__urlBagProvider, v11);
    Dependency.wrappedValue.getter();
    (*(v50 + 8))(v14, v11);
    v51 = [objc_opt_self() canRepairCustodian];
    sub_10000839C(v72);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    if (!v51)
    {
      if (v54)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v72[0] = v58;
        *v57 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v57 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
        _os_log_impl(&_mh_execute_header, v52, v53, "%s - AutoHeal: CRK not exists on OT, But, Recovery Info Record has an RKC. decoupleCRK is not enabled. Aborting repair.", v57, 0xCu);
        sub_10000839C(v58);
      }

      type metadata accessor for AACustodianError(0);
      v36 = -7026;
      goto LABEL_40;
    }

    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72[0] = v56;
      *v55 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v55 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v72);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s - AutoHeal: CRK not exists on OT, Recovery Info Record has an RKC. Invoking Preflight and repair.", v55, 0xCu);
      sub_10000839C(v56);
    }

    return sub_10008E6E8(a3, v63, a4, a5);
  }
}

uint64_t sub_10008E6E8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  v54 = *v4;
  v7 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v45 - v9);
  v50 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v53 = *(v50 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v50);
  v13 = &v45 - v12;
  v51 = type metadata accessor for RecoveryKeys(0);
  v14 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for CustodianshipRecords(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CustodianRecord();
  v21 = (a1 + *(v52 + 40));
  v22 = v21[1];
  if (v22 >> 60 == 15 || (v23 = *v21, v24 = a1 + *(v17 + 20), v25 = (v24 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 32)), v26 = v25[1], v26 >> 60 == 15))
  {
    type metadata accessor for AACustodianError(0);
    v57[5] = -7019;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v10 = v57[0];
    swift_storeEnumTagMultiPayload();
    v55(v10);
    return sub_100008D3C(v10, &qword_1003D8EF8, &qword_10033EB18);
  }

  else
  {
    v28 = *v25;
    sub_100052704(v23, v22);
    v49 = v26;
    sub_100052704(v28, v26);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    sub_100094A08(a1, v20, type metadata accessor for CustodianshipRecords);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v46 = v31;
      v47 = v30;
      v48 = v28;
      v45 = v23;
      v32 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v32 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v57);
      *(v32 + 12) = 2080;
      v33 = sub_1000A92F8();
      v35 = v34;
      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
      v36 = sub_10021145C(v33, v35, v57);

      *(v32 + 14) = v36;
      v37 = v47;
      _os_log_impl(&_mh_execute_header, v47, v46, "%s - Starting to Preflight Custodian Recovery before repair for %s", v32, 0x16u);
      swift_arrayDestroy();

      v23 = v45;
      v28 = v48;
    }

    else
    {

      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
    }

    sub_1000A8E58(v16 + *(v51 + 24));
    *v16 = v23;
    v16[1] = v22;
    v38 = v49;
    v39 = v50;
    v16[2] = v28;
    v16[3] = v38;
    v40 = v53;
    (*(v53 + 16))(v13, v5 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v39);
    Dependency.wrappedValue.getter();
    (*(v40 + 8))(v13, v39);
    v41 = sub_1000080F8(v57, v57[3]);
    v42 = *(v52 + 20);
    v43 = *v41;
    v44 = v56;

    sub_100019304(a1 + v42, v16, v43, v55, v44, v5, v54);
    sub_1000949A8(v16, type metadata accessor for RecoveryKeys);
    return sub_10000839C(v57);
  }
}

uint64_t sub_10008ECC8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v41 = a7;
  v42 = a6;
  v43 = a4;
  v12 = type metadata accessor for CustodianshipRecords(0);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a3)
    {
      v38 = a5;
      v21 = a3;
      if (a1)
      {
        v22 = _convertErrorToNSError(_:)();
      }

      else
      {
        v22 = 0;
      }

      [a3 updateTaskResultWithError:{v22, v38}];

      (*(v15 + 16))(v18, v20 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter, v14);
      Dependency.wrappedValue.getter();
      (*(v15 + 8))(v18, v14);
      [v44[0] sendEvent:a3];

      swift_unknownObjectRelease();
      a5 = v38;
    }
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v26 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v44);
      *(v26 + 12) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - error updating record: %@", v26, 0x16u);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v28);
    }

    swift_errorRetain();
    v43(a1);
  }

  else if ((*(v42 + *(type metadata accessor for KeyRepairContext(0) + 20)) & 1) != 0 && (*(v41 + *(type metadata accessor for CustodianRecord() + 48)) & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100094A08(v40, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
      v36 = (*(v39 + 80) + 40) & ~*(v39 + 80);
      v37 = swift_allocObject();
      v37[2] = v43;
      v37[3] = a5;
      v37[4] = a2;
      sub_100094BE4(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for CustodianshipRecords);

      sub_10008F3F8(v41, sub_100096D8C, v37);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAB8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v44);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - skipping old custodian record cleanup and sharing of new record...", v34, 0xCu);
      sub_10000839C(v35);
    }

    return (v43)(0);
  }

  return result;
}

uint64_t sub_10008F310(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = *(type metadata accessor for CustodianshipRecords(0) + 20);
      v11 = type metadata accessor for CustodianRecord();
      sub_10008742C(a5 + v10, *(a5 + *(v11 + 24)), *(a5 + *(v11 + 24) + 8), a2, a3);
    }
  }

  return result;
}

uint64_t sub_10008F3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v98 = a2;
  v118 = *v3;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v102 - 8);
  v5 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS.QoSClass();
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v110 = *(v92 - 8);
  v9 = *(v110 + 64);
  __chkstk_darwin(v92);
  v91 = &v85 - v10;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v109 - 1) + 64);
  __chkstk_darwin(v109);
  v111 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v96 = *(v97 - 8);
  v18 = *(v96 + 64);
  __chkstk_darwin(v97);
  v113 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CustodianshipRecords(0);
  v107 = *(v20 - 8);
  v21 = *(v107 + 64);
  v22 = __chkstk_darwin(v20);
  v90 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v85 - v25;
  v105 = v27;
  __chkstk_darwin(v24);
  v29 = &v85 - v28;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAAE8);
  sub_100094A08(a1, v29, type metadata accessor for CustodianshipRecords);
  sub_100094A08(a1, v26, type metadata accessor for CustodianshipRecords);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v117 = a1;
  v114 = v20;
  v112 = v11;
  if (v33)
  {
    LODWORD(v106) = v32;
    v108 = v15;
    v115 = v12;
    v34 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v34 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v34 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
    *(v34 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_1000949A8(v29, type metadata accessor for CustodianshipRecords);
    v38 = sub_10021145C(v35, v37, aBlock);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    v39 = *(v114 + 24);
    v40 = &v26[v39 + *(type metadata accessor for CustodianHealthRecord() + 20)];
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_1000949A8(v26, type metadata accessor for CustodianshipRecords);
    v44 = sub_10021145C(v41, v43, aBlock);

    *(v34 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v31, v106, "%s - Cleaning up old custodian records: %s, custodianID: %s", v34, 0x20u);
    swift_arrayDestroy();

    v12 = v115;
    v15 = v108;
  }

  else
  {

    sub_1000949A8(v26, type metadata accessor for CustodianshipRecords);
    sub_1000949A8(v29, type metadata accessor for CustodianshipRecords);
  }

  v45 = dispatch_group_create();
  v87 = v45;
  v115 = swift_allocObject();
  *(v115 + 16) = &_swiftEmptyDictionarySingleton;
  v89 = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v112);
  v86 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  dispatch_group_enter(v45);
  v46 = v110;
  v108 = *(v110 + 16);
  v111 = (v110 + 16);
  v112 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage;
  v47 = v91;
  v48 = v92;
  (v108)(v91, v116 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage, v92);
  Dependency.wrappedValue.getter();
  v110 = *(v46 + 8);
  (v110)(v47, v48);
  v109 = type metadata accessor for CustodianshipRecords;
  v49 = v90;
  sub_100094A08(v117, v90, type metadata accessor for CustodianshipRecords);
  v50 = *(v107 + 80);
  v51 = (v50 + 16) & ~v50;
  v106 = v51;
  v107 = v50;
  v105 = (v105 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = v105;
  v53 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = v53;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v103 = type metadata accessor for CustodianshipRecords;
  sub_100094BE4(v49, v56 + v51, type metadata accessor for CustodianshipRecords);
  v57 = v86;
  *(v56 + v52) = v86;
  *(v56 + v53) = v115;
  v88 = v54;
  v58 = v87;
  *(v56 + v54) = v87;
  *(v56 + v55) = v118;
  v59 = v57;

  v60 = v58;
  v61 = v117;
  sub_10019F4BC(v117, sub_100096E40, v56);

  sub_10000839C(aBlock);
  dispatch_group_enter(v60);
  (v108)(v47, v116 + v112, v48);
  Dependency.wrappedValue.getter();
  (v110)(v47, v48);
  v87 = *(v114 + 24);
  sub_100094A08(v61, v49, v109);
  v62 = swift_allocObject();
  sub_100094BE4(v49, v62 + v106, v103);
  *(v62 + v105) = v59;
  *(v62 + v104) = v115;
  *(v62 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;
  *(v62 + v55) = v118;
  v63 = v59;

  v64 = v60;
  v65 = v117;
  sub_10019E39C(v87 + v117, sub_100096E58, v62);

  sub_10000839C(aBlock);
  dispatch_group_enter(v64);
  (v108)(v47, v116 + v112, v48);
  Dependency.wrappedValue.getter();
  (v110)(v47, v48);
  v66 = *(v114 + 20);
  v67 = v65;
  sub_100094A08(v65, v49, v109);
  v68 = swift_allocObject();
  sub_100094BE4(v49, v68 + v106, v103);
  *(v68 + v105) = v63;
  v69 = v115;
  *(v68 + v104) = v115;
  *(v68 + v88) = v64;
  v70 = v118;
  *(v68 + v55) = v118;
  v71 = v63;

  v116 = v64;
  sub_10019E068(v67 + v66, sub_100097230, v68);

  sub_10000839C(aBlock);
  v72 = v94;
  v73 = v93;
  v74 = v95;
  (*(v94 + 104))(v93, enum case for DispatchQoS.QoSClass.default(_:), v95);
  v75 = static OS_dispatch_queue.global(qos:)();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v76[2] = v71;
  v76[3] = v69;
  v77 = v99;
  v76[4] = v98;
  v76[5] = v77;
  v76[6] = v70;
  aBlock[4] = sub_100097364;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6D50;
  v78 = _Block_copy(aBlock);
  v79 = v71;

  v80 = v113;
  static DispatchQoS.unspecified.getter();
  v119 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v81 = v100;
  v82 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v83 = v116;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v78);

  (*(v101 + 8))(v81, v82);
  (*(v96 + 8))(v80, v97);
}

uint64_t sub_10009027C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v47 = a5;
  v48 = a6;
  v44 = a3;
  v45 = a4;
  v10 = type metadata accessor for UUID();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v44 - v20);
  sub_100012D04(a1, &v44 - v20, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    v23 = *(type metadata accessor for CustodianRecord() + 20);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    v25 = v46;
    (*(v46 + 16))(v13, a7 + v23, v10);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v28 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v49);
      *(v28 + 12) = 2080;
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v46 + 8))(v13, v10);
      v33 = sub_10021145C(v30, v32, v49);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v28 + 24) = v34;
      *v29 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - failed to save custodianship records %s: %@", v28, 0x20u);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v25 + 8))(v13, v10);
    }

    swift_errorRetain();
    v47(v22);
  }

  else
  {
    sub_100094BE4(v21, v17, type metadata accessor for CustodianshipRecords);
    v35 = [objc_allocWithZone(AKCustodianContext) init];
    v36 = [a2 aa_altDSID];
    [v35 setAltDSID:v36];

    v37 = type metadata accessor for CustodianRecord();
    v38 = &v17[*(v37 + 20)];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v35 setCustodianUUID:isa];

    v40 = 0;
    v41 = &v17[*(v37 + 40)];
    if (*(v41 + 1) >> 60 != 15)
    {
      v42 = *v41;
      v40 = Data._bridgeToObjectiveC()().super.isa;
    }

    [v35 setWrappingKeyRKC:{v40, v44, v45}];

    [v35 setCustodianSyncAction:*(v44 + *(type metadata accessor for KeyRepairContext(0) + 24))];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100090834(v35, v47, v48);
    }

    else
    {
    }

    return sub_1000949A8(v17, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_100090834(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = *v3;
  v8 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  if ([objc_opt_self() shouldSkipIdMSKeyUpdate])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - 🚨 TCS IdMS Endpoint Testing: SkipIdMSKeyUpdate. Custodian recovery key update skipped.", v16, 0xCu);
      sub_10000839C(v17);
    }

    return a2(0);
  }

  else
  {
    (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__idmsRequestController, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v12, v8);
    sub_1000080F8(v21, v21[3]);
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = v7;

    sub_10011A258(a1, sub_1000969F0, v19);

    return sub_10000839C(v21);
  }
}

uint64_t sub_100090B3C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAB8);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v7 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v17);
      *(v7 + 12) = 2112;
      v10 = _convertErrorToNSError(_:)();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s - error updating recovery key: %@", v7, 0x16u);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v9);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v17);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - custodian recovery key update complete!", v15, 0xCu);
      sub_10000839C(v16);
    }

    return (a2)(0);
  }
}

void sub_100090EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v76 = a5;
  v68 = a4;
  v73 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  __chkstk_darwin(v72);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianshipRecords(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v65 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v65 - v27);
  sub_100012D04(a1, &v65 - v27, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_100094A08(a2, v24, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v22, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v67 = v32;
      v33 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v33 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v33 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000949A8(v24, type metadata accessor for CustodianshipRecords);
      v37 = sub_10021145C(v34, v36, aBlock);

      *(v33 + 14) = v37;
      *(v33 + 22) = 2080;
      v38 = &v22[*(type metadata accessor for CustodianRecord() + 20)];
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_1000949A8(v22, type metadata accessor for CustodianshipRecords);
      v42 = sub_10021145C(v39, v41, aBlock);

      *(v33 + 24) = v42;
      *(v33 + 32) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 34) = v43;
      v44 = v65;
      *v65 = v43;
      _os_log_impl(&_mh_execute_header, v31, v67, "%s - Failed to clean up Custodian Record from cloud, recordID: %s, custodianID: %s, error: %@", v33, 0x2Au);
      sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v22, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v24, type metadata accessor for CustodianshipRecords);
    }

    v58 = swift_allocObject();
    v58[2] = v68;
    v58[3] = v29;
    v59 = v76;
    v58[4] = v76;
    aBlock[4] = sub_100097420;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6E90;
    v60 = _Block_copy(aBlock);
    swift_errorRetain();

    v61 = v59;
    v62 = v69;
    static DispatchQoS.unspecified.getter();
    v77 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v63 = v71;
    v64 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);

    (*(v74 + 8))(v63, v64);
    (*(v70 + 8))(v62, v72);
  }

  else
  {
    sub_100008D3C(v28, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAE8);
    sub_100094A08(a2, v19, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v16, type metadata accessor for CustodianshipRecords);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v48 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v48 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
      v52 = sub_10021145C(v49, v51, aBlock);

      *(v48 + 14) = v52;
      *(v48 + 22) = 2080;
      v53 = &v16[*(type metadata accessor for CustodianRecord() + 20)];
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
      v57 = sub_10021145C(v54, v56, aBlock);

      *(v48 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s - Successfully cleaned up Custodian Record from cloud, recordID: %s, custodianID: %s", v48, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v76);
  }
}

void sub_1000918C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  v6 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000014, 0x800000010032DB30, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v8;
  swift_endAccess();
  dispatch_group_leave(a3);
}

void sub_100091970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v83 = a5;
  v75 = a4;
  v80 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  __chkstk_darwin(v7);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  v10 = *(v77 + 64);
  __chkstk_darwin(v79);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(*(v74 - 8) + 64);
  v13 = __chkstk_darwin(v74);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v24 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v70 - v26);
  sub_100012D04(a1, &v70 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_100094A08(a2, v23, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v21, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v72 = v31;
      v73 = v30;
      v32 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v32 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v32 + 12) = 2080;
      v33 = v74;
      v34 = *(v74 + 24);
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1000949A8(v23, type metadata accessor for CustodianshipRecords);
      v38 = sub_10021145C(v35, v37, aBlock);

      *(v32 + 14) = v38;
      *(v32 + 22) = 2080;
      v39 = *(v33 + 24);
      v40 = &v21[v39 + *(type metadata accessor for CustodianHealthRecord() + 20)];
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
      v44 = sub_10021145C(v41, v43, aBlock);

      *(v32 + 24) = v44;
      *(v32 + 32) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 34) = v45;
      v46 = v70;
      *v70 = v45;
      v47 = v73;
      _os_log_impl(&_mh_execute_header, v73, v72, "%s - Failed to clean up Health Record from cloud, recordID: %s, custodianID: %s, error: %@", v32, 0x2Au);
      sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v23, type metadata accessor for CustodianshipRecords);
    }

    v63 = swift_allocObject();
    v63[2] = v75;
    v63[3] = v28;
    v64 = v83;
    v63[4] = v83;
    aBlock[4] = sub_1000973CC;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6E40;
    v65 = _Block_copy(aBlock);
    swift_errorRetain();

    v66 = v64;
    v67 = v76;
    static DispatchQoS.unspecified.getter();
    v84 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v68 = v78;
    v69 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v81 + 8))(v68, v69);
    (*(v77 + 8))(v67, v79);
  }

  else
  {
    sub_100008D3C(v27, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    sub_100094A08(a2, v18, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v15, type metadata accessor for CustodianshipRecords);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v82) = v50;
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v51 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v51 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v51 + 12) = 2080;
      v52 = v74;
      v53 = *(v74 + 24);
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      v57 = sub_10021145C(v54, v56, aBlock);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = &v15[*(v52 + 24)];
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      v62 = sub_10021145C(v59, v61, aBlock);

      *(v51 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v82, "%s - Successfully cleaned up Health Record from cloud, recordID: %s, custodianID: %s", v51, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v83);
  }
}

void sub_1000923B0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  v6 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000020, 0x800000010032DB00, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v8;
  swift_endAccess();
  dispatch_group_leave(a3);
}

void sub_10009245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v83 = a5;
  v75 = a4;
  v80 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  __chkstk_darwin(v7);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  v10 = *(v77 + 64);
  __chkstk_darwin(v79);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(*(v74 - 8) + 64);
  v13 = __chkstk_darwin(v74);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v24 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v70 - v26);
  sub_100012D04(a1, &v70 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_100094A08(a2, v23, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v21, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v72 = v31;
      v73 = v30;
      v32 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v32 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v32 + 12) = 2080;
      v33 = v74;
      v34 = *(v74 + 20);
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1000949A8(v23, type metadata accessor for CustodianshipRecords);
      v38 = sub_10021145C(v35, v37, aBlock);

      *(v32 + 14) = v38;
      *(v32 + 22) = 2080;
      v39 = *(v33 + 20);
      v40 = &v21[v39 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 20)];
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
      v44 = sub_10021145C(v41, v43, aBlock);

      *(v32 + 24) = v44;
      *(v32 + 32) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 34) = v45;
      v46 = v70;
      *v70 = v45;
      v47 = v73;
      _os_log_impl(&_mh_execute_header, v73, v72, "%s - Failed to clean up Recovery Info Record from cloud, recordID: %s, custodianID: %s, error: %@", v32, 0x2Au);
      sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v23, type metadata accessor for CustodianshipRecords);
    }

    v63 = swift_allocObject();
    v63[2] = v75;
    v63[3] = v28;
    v64 = v83;
    v63[4] = v83;
    aBlock[4] = sub_1000973C0;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6DF0;
    v65 = _Block_copy(aBlock);
    swift_errorRetain();

    v66 = v64;
    v67 = v76;
    static DispatchQoS.unspecified.getter();
    v84 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v68 = v78;
    v69 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v81 + 8))(v68, v69);
    (*(v77 + 8))(v67, v79);
  }

  else
  {
    sub_100008D3C(v27, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    sub_100094A08(a2, v18, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v15, type metadata accessor for CustodianshipRecords);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v82) = v50;
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v51 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v51 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v51 + 12) = 2080;
      v52 = v74;
      v53 = *(v74 + 20);
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      v57 = sub_10021145C(v54, v56, aBlock);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = &v15[*(v52 + 20)];
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      v62 = sub_10021145C(v59, v61, aBlock);

      *(v51 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v82, "%s - Successfully cleaned up Recovery Info Record from cloud, recordID: %s, custodianID: %s", v51, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v83);
  }
}

void sub_100092E9C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  v6 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000017, 0x800000010032DAE0, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v8;
  swift_endAccess();
  dispatch_group_leave(a3);
}

uint64_t sub_100092F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  aBlock[4] = sub_1000973B0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6DA0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

void sub_100093218(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_100097CB0(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAB8);
    v8 = v21;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v21);
      *(v11 + 12) = 2112;
      v14 = _convertErrorToNSError(_:)();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - failed to delete all custodianship records from cloud store: %@", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    v15 = v8;
    a2(v8);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - custodianship records deleted successfully from cloud store.", v19, 0xCu);
      sub_10000839C(v20);
    }

    a2(0);
  }
}

uint64_t sub_10009366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v25 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v26 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v27 = v13;
    v30(v11, v26 + v29 * v13, v4);
    if (*(v12 + 16))
    {
      v17 = *(v12 + 40);
      sub_100097CB0(&qword_1003DB0B8, &type metadata accessor for UUID);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v12 + 32);
      v20 = v18 & ~v19;
      if ((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_4:
    v13 = v27 + 1;
    (*v16)(v11, v4);
    if (v13 == v25)
    {
      return 1;
    }
  }

  v21 = ~v19;
  while (1)
  {
    v30(v8, *(v12 + 48) + v20 * v29, v4);
    sub_100097CB0(&qword_1003DB088, &type metadata accessor for UUID);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v16;
    (*v16)(v8, v4);
    if (v22)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v28 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v23(v11, v4);
  return 0;
}

uint64_t sub_100093948()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000839C((v0 + 32));
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v8(v0 + v3 + v1[5], v6);
  v9 = *(v0 + v3 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = (v0 + v3 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v12 = v1[11];
  if (!(*(v7 + 48))(v5 + v12, 1, v6))
  {
    v8(v5 + v12, v6);
  }

  v13 = (v21 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v5 + v1[12] + 8);

  v17 = *(v0 + v13);

  v18 = *(v0 + v14 + 8);

  v19 = *(v0 + v15 + 8);

  return _swift_deallocObject(v0, ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100093B64(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for CustodianRecoveryInfoRecord() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v18 = *(v1 + 16);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v14 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v15 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000082A8;

  return sub_100087C50(a1, v18, v9, v1 + 32, v1 + v5, v10, v11, v12);
}

uint64_t sub_100093CE0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v7 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v10 = &v61 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v61 - v17);
  if (!a1)
  {
    type metadata accessor for AACustodianError(0);
    v77 = -7025;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v18 = v73[0];
    swift_storeEnumTagMultiPayload();
    a2(v18);
    return sub_100008D3C(v18, &qword_1003D8EF8, &qword_10033EB18);
  }

  v63 = v12;
  v65 = v11;
  v66 = a3;
  swift_getErrorValue();
  v19 = v76;
  swift_errorRetain();
  if (qword_1003D7E38 != -1)
  {
    swift_once();
  }

  v64 = v7;
  v70 = sub_100255F78(qword_1003FA950, v19);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73[0] = v24;
    *v23 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v73);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v70 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - isMissingCRK: %{BOOL}d", v23, 0x12u);
    sub_10000839C(v24);
  }

  v71 = v15;
  swift_getErrorValue();
  v25 = v75;
  if (qword_1003D7E40 != -1)
  {
    v58 = v75;
    swift_once();
    v25 = v58;
  }

  v26 = sub_100255F78(qword_1003FA958, v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73[0] = v30;
    *v29 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v73);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v26 & 1;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s - isUntrustedCRK: %{BOOL}d", v29, 0x12u);
    sub_10000839C(v30);
  }

  swift_getErrorValue();
  v31 = v74;
  if (qword_1003D7E48 != -1)
  {
    v59 = v74;
    swift_once();
    v31 = v59;
  }

  if (sub_100255F78(qword_1003FA960, v31))
  {
    swift_getErrorValue();
    v32 = v72;
    if (qword_1003D7E50 != -1)
    {
      v60 = v72;
      swift_once();
      v32 = v60;
    }

    sub_1002561AC(qword_1003FA968, v32);
    v34 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v62 = a2;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v73[0] = v38;
      *v37 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v73);
      *(v37 + 12) = 1024;
      *(v37 + 14) = v34 & 1;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - isError31WithUnderlyingError9: %{BOOL}d", v37, 0x12u);
      sub_10000839C(v38);

      a2 = v62;
    }

    else
    {
    }

    if ((v70 | v26 | v34))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73[0] = v42;
    *v41 = 136315138;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v41 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v73);
    _os_log_impl(&_mh_execute_header, v39, v40, "%s - isError31WithUnderlyingError9: false", v41, 0xCu);
    sub_10000839C(v42);

    if ((v70 | v26))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (((v70 | v26) & 1) == 0)
  {
LABEL_37:
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Preflight error other than repairable errors: %@", v55, 0xCu);
      sub_100008D3C(v56, &unk_1003D9140, &qword_10033E640);
    }

    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v18);

    return sub_100008D3C(v18, &qword_1003D8EF8, &qword_10033EB18);
  }

LABEL_33:
  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v47;
    *v46 = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "Recreating decoupled CRK due to preflight error: %@", v45, 0xCu);
    sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);
  }

  v48 = v67;
  UUID.init()();
  v49 = v68;
  v50 = v64;
  (*(v68 + 16))(v10, v69 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v64);
  Dependency.wrappedValue.getter();
  (*(v49 + 8))(v10, v50);
  v51 = *sub_1000080F8(v73, v73[3]);
  sub_1000160C4(v48, a2, v66);

  (*(v63 + 8))(v48, v65);
  return sub_10000839C(v73);
}

uint64_t sub_10009487C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000894F0(a1, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100094968()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000949A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100094A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094A90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094AC8()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[9] + 8);

  v9 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100094BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094C4C(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + v5;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v6);

  return sub_1000868B4(a1, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_100094CFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094D3C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v40 = *(*(v1 - 8) + 80);
  v39 = *(*(v1 - 8) + 64);
  v41 = type metadata accessor for KeyRepairContext(0);
  v38 = *(*(v41 - 8) + 80);
  v37 = *(*(v41 - 8) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v42 = v0;
  v4 = v0 + ((v40 + 40) & ~v40);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for CustodianRecord();
  v7(v4 + v8[5], v5);
  v9 = *(v4 + v8[6] + 8);

  v10 = *(v4 + v8[7] + 8);

  v11 = *(v4 + v8[8] + 8);

  v12 = (v4 + v8[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  sub_100012324(*(v4 + v8[11]), *(v4 + v8[11] + 8));
  v14 = *(v4 + v8[13] + 8);

  v15 = *(v4 + v8[14] + 8);

  v16 = v8[16];
  v17 = *(v6 + 48);
  if (!v17(v4 + v16, 1, v5))
  {
    v7(v4 + v16, v5);
  }

  v18 = v1;
  v19 = v4 + *(v1 + 20);
  v7(v19, v5);
  v20 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7(v19 + v20[5], v5);
  v21 = *(v19 + v20[6] + 8);

  sub_100012324(*(v19 + v20[7]), *(v19 + v20[7] + 8));
  v22 = (v19 + v20[8]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100012324(*v22, v23);
  }

  sub_100012324(*(v19 + v20[9]), *(v19 + v20[9] + 8));
  v24 = v20[11];
  if (!v17(v19 + v24, 1, v5))
  {
    v7(v19 + v24, v5);
  }

  v25 = *(v19 + v20[12] + 8);

  v26 = v4 + *(v18 + 24);
  v7(v26, v5);
  v27 = type metadata accessor for CustodianHealthRecord();
  v7(v26 + v27[5], v5);
  v28 = v27[6];
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 8))(v26 + v28, v29);
  v30 = (v26 + v27[7]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100012324(*v30, v31);
  }

  v32 = (v39 + ((v40 + 40) & ~v40) + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + v38 + 8) & ~v38;
  v34 = (v37 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v26 + v27[8]), *(v26 + v27[8] + 8));

  v7(v42 + v33, v5);
  v35 = *(v42 + v33 + *(v41 + 28) + 8);

  return _swift_deallocObject(v42, ((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v40 | v38 | 7);
}

void sub_1000951A8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_10008AEE0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v8));
}

uint64_t sub_1000952CC()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v40 = *(*(v1 - 8) + 80);
  v39 = *(*(v1 - 8) + 64);
  v41 = type metadata accessor for KeyRepairContext(0);
  v38 = *(*(v41 - 8) + 80);
  v37 = *(*(v41 - 8) + 64);
  v42 = v0;
  v2 = v0 + ((v40 + 16) & ~v40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = type metadata accessor for CustodianRecord();
  v5(v2 + v6[5], v3);
  v7 = *(v2 + v6[6] + 8);

  v8 = *(v2 + v6[7] + 8);

  v9 = *(v2 + v6[8] + 8);

  v10 = (v2 + v6[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));
  v12 = *(v2 + v6[13] + 8);

  v13 = *(v2 + v6[14] + 8);

  v14 = v6[16];
  v15 = *(v4 + 48);
  if (!v15(v2 + v14, 1, v3))
  {
    v5(v2 + v14, v3);
  }

  v16 = v1;
  v17 = v2 + *(v1 + 20);
  v5(v17, v3);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v5(v17 + v18[5], v3);
  v19 = *(v17 + v18[6] + 8);

  sub_100012324(*(v17 + v18[7]), *(v17 + v18[7] + 8));
  v20 = (v17 + v18[8]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v17 + v18[9]), *(v17 + v18[9] + 8));
  v22 = v18[11];
  if (!v15(v17 + v22, 1, v3))
  {
    v5(v17 + v22, v3);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v2 + *(v16 + 24);
  v5(v24, v3);
  v25 = type metadata accessor for CustodianHealthRecord();
  v5(v24 + v25[5], v3);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v39 + ((v40 + 16) & ~v40) + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + v38 + 8) & ~v38;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v33 = *(v42 + v30 + 8);

  v34 = *(v42 + v31);

  v5(v42 + v32, v3);
  v35 = *(v42 + v32 + *(v41 + 28) + 8);

  return _swift_deallocObject(v42, ((v37 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v40 | v38 | 7);
}

uint64_t sub_10009572C(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v2 + v7);
  v12 = *(v2 + v7 + 8);
  v13 = *(v2 + v8);
  v14 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008DCB4(a1, a2, v2 + v6, v11, v12, v13, v2 + v10);
}

uint64_t sub_10009585C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000958CC()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v61 = *(*v1 + 80);
  v2 = (v61 + 48) & ~v61;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for CustodianshipRecords(0);
  v65 = *(*(v4 - 8) + 80);
  v66 = v4;
  v5 = (v2 + v3 + v65) & ~v65;
  v6 = *(*(v4 - 8) + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 40);

  v9 = v0 + v2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = *(v9 + v1[9] + 8);

  v63 = v0;
  v14 = v0 + v5;
  v15 = v5;
  v12(v14, v10);
  v16 = type metadata accessor for CustodianRecord();
  v12(v14 + v16[5], v10);
  v17 = *(v14 + v16[6] + 8);

  v18 = *(v14 + v16[7] + 8);

  v19 = *(v14 + v16[8] + 8);

  v20 = (v14 + v16[10]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v14 + v16[11]), *(v14 + v16[11] + 8));
  v22 = *(v14 + v16[13] + 8);

  v23 = *(v14 + v16[14] + 8);

  v24 = v16[16];
  v64 = *(v11 + 48);
  if (!v64(v14 + v24, 1, v10))
  {
    v12(v14 + v24, v10);
  }

  v60 = v6;
  v25 = v6 + v65;
  v26 = v14 + *(v66 + 20);
  v12(v26, v10);
  v27 = type metadata accessor for CustodianRecoveryInfoRecord();
  v12(v26 + v27[5], v10);
  v28 = *(v26 + v27[6] + 8);

  sub_100012324(*(v26 + v27[7]), *(v26 + v27[7] + 8));
  v29 = (v26 + v27[8]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100012324(*v29, v30);
  }

  v31 = v25 + v15;
  sub_100012324(*(v26 + v27[9]), *(v26 + v27[9] + 8));
  v32 = v27[11];
  if (!v64(v26 + v32, 1, v10))
  {
    v12(v26 + v32, v10);
  }

  v62 = v31 & ~v65;
  v33 = *(v26 + v27[12] + 8);

  v34 = v14 + *(v66 + 24);
  v12(v34, v10);
  v35 = type metadata accessor for CustodianHealthRecord();
  v12(v34 + v35[5], v10);
  v36 = v35[6];
  v37 = type metadata accessor for Date();
  v59 = *(*(v37 - 8) + 8);
  v59(v34 + v36, v37);
  v38 = (v34 + v35[7]);
  v39 = v38[1];
  if (v39 >> 60 != 15)
  {
    sub_100012324(*v38, v39);
  }

  sub_100012324(*(v34 + v35[8]), *(v34 + v35[8] + 8));
  v40 = v63 + v62;
  v12(v63 + v62, v10);
  v12(v63 + v62 + v16[5], v10);
  v41 = *(v63 + v62 + v16[6] + 8);

  v42 = *(v63 + v62 + v16[7] + 8);

  v43 = *(v63 + v62 + v16[8] + 8);

  v44 = (v63 + v62 + v16[10]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_100012324(*v44, v45);
  }

  sub_100012324(*(v40 + v16[11]), *(v40 + v16[11] + 8));
  v46 = *(v40 + v16[13] + 8);

  v47 = *(v40 + v16[14] + 8);

  v48 = v16[16];
  if (!v64(v40 + v48, 1, v10))
  {
    v12(v40 + v48, v10);
  }

  v49 = v40 + *(v66 + 20);
  v12(v49, v10);
  v12(v49 + v27[5], v10);
  v50 = *(v49 + v27[6] + 8);

  sub_100012324(*(v49 + v27[7]), *(v49 + v27[7] + 8));
  v51 = (v49 + v27[8]);
  v52 = v51[1];
  if (v52 >> 60 != 15)
  {
    sub_100012324(*v51, v52);
  }

  sub_100012324(*(v49 + v27[9]), *(v49 + v27[9] + 8));
  v53 = v27[11];
  if (!v64(v49 + v53, 1, v10))
  {
    v12(v49 + v53, v10);
  }

  v54 = *(v49 + v27[12] + 8);

  v55 = v40 + *(v66 + 24);
  v12(v55, v10);
  v12(v55 + v35[5], v10);
  v59(v55 + v35[6], v37);
  v56 = (v55 + v35[7]);
  v57 = v56[1];
  if (v57 >> 60 != 15)
  {
    sub_100012324(*v56, v57);
  }

  sub_100012324(*(v55 + v35[8]), *(v55 + v35[8] + 8));

  return _swift_deallocObject(v63, ((v60 + v62 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v61 | v65 | 7);
}

uint64_t sub_100095F70(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v12 = *(v1 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10008ECC8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, v1 + v8, v1 + v10);
}

uint64_t sub_100096088()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = type metadata accessor for CustodianshipRecords(0);
  v41 = *(*(v38 - 8) + 80);
  v39 = *(*(v38 - 8) + 64);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v5 + v1[9] + 8);

  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  v40 = (v4 + v41 + 16) & ~v41;
  v12 = v0 + v40;
  v8(v0 + v40, v6);
  v13 = type metadata accessor for CustodianRecord();
  v8(v0 + v40 + v13[5], v6);
  v14 = *(v0 + v40 + v13[6] + 8);

  v15 = *(v0 + v40 + v13[7] + 8);

  v16 = *(v0 + v40 + v13[8] + 8);

  v17 = (v0 + v40 + v13[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100012324(*v17, v18);
  }

  sub_100012324(*(v12 + v13[11]), *(v12 + v13[11] + 8));
  v19 = *(v12 + v13[13] + 8);

  v20 = *(v12 + v13[14] + 8);

  v21 = v13[16];
  v22 = *(v7 + 48);
  if (!v22(v12 + v21, 1, v6))
  {
    v8(v12 + v21, v6);
  }

  v23 = v12 + *(v38 + 20);
  v8(v23, v6);
  v24 = type metadata accessor for CustodianRecoveryInfoRecord();
  v8(v23 + v24[5], v6);
  v25 = *(v23 + v24[6] + 8);

  sub_100012324(*(v23 + v24[7]), *(v23 + v24[7] + 8));
  v26 = (v23 + v24[8]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100012324(*v26, v27);
  }

  sub_100012324(*(v23 + v24[9]), *(v23 + v24[9] + 8));
  v28 = v24[11];
  if (!v22(v23 + v28, 1, v6))
  {
    v8(v23 + v28, v6);
  }

  v29 = *(v23 + v24[12] + 8);

  v30 = v12 + *(v38 + 24);
  v8(v30, v6);
  v31 = type metadata accessor for CustodianHealthRecord();
  v8(v30 + v31[5], v6);
  v32 = v31[6];
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 8))(v30 + v32, v33);
  v34 = (v30 + v31[7]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_100012324(*v34, v35);
  }

  sub_100012324(*(v30 + v31[8]), *(v30 + v31[8] + 8));

  return _swift_deallocObject(v37, ((v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000964DC(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009027C(a1, v9, v1 + v4, v10, v11, v12, v1 + v8);
}

uint64_t sub_100096608()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v37 = *(*(v1 - 8) + 80);
  v35 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v36 = (v37 + 40) & ~v37;
  v4 = v0 + v36;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v36, v5);
  v8 = type metadata accessor for CustodianRecord();
  v7(v0 + v36 + v8[5], v5);
  v9 = *(v0 + v36 + v8[6] + 8);

  v10 = *(v0 + v36 + v8[7] + 8);

  v11 = *(v0 + v36 + v8[8] + 8);

  v12 = (v0 + v36 + v8[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  sub_100012324(*(v4 + v8[11]), *(v4 + v8[11] + 8));
  v14 = *(v4 + v8[13] + 8);

  v15 = *(v4 + v8[14] + 8);

  v16 = v8[16];
  v17 = *(v6 + 48);
  if (!v17(v4 + v16, 1, v5))
  {
    v7(v4 + v16, v5);
  }

  v34 = v1;
  v18 = v4 + *(v1 + 20);
  v7(v18, v5);
  v19 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7(v18 + v19[5], v5);
  v20 = *(v18 + v19[6] + 8);

  sub_100012324(*(v18 + v19[7]), *(v18 + v19[7] + 8));
  v21 = (v18 + v19[8]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100012324(*v21, v22);
  }

  sub_100012324(*(v18 + v19[9]), *(v18 + v19[9] + 8));
  v23 = v19[11];
  if (!v17(v18 + v23, 1, v5))
  {
    v7(v18 + v23, v5);
  }

  v24 = *(v18 + v19[12] + 8);

  v25 = v4 + *(v34 + 24);
  v7(v25, v5);
  v26 = type metadata accessor for CustodianHealthRecord();
  v7(v25 + v26[5], v5);
  v27 = v26[6];
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 8))(v25 + v27, v28);
  v29 = (v25 + v26[7]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100012324(*v29, v30);
  }

  v31 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v25 + v26[8]), *(v25 + v26[8] + 8));
  v32 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_1000969B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000969F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100090B3C(a1, *(v1 + 16));
}

uint64_t sub_1000969FC()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v34 = *(*(v1 - 8) + 80);
  v32 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v35 = v0;
  v33 = (v34 + 40) & ~v34;
  v4 = v0 + v33;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v33, v5);
  v8 = type metadata accessor for CustodianRecord();
  v7(v0 + v33 + v8[5], v5);
  v9 = *(v0 + v33 + v8[6] + 8);

  v10 = *(v0 + v33 + v8[7] + 8);

  v11 = *(v0 + v33 + v8[8] + 8);

  v12 = (v0 + v33 + v8[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  sub_100012324(*(v4 + v8[11]), *(v4 + v8[11] + 8));
  v14 = *(v4 + v8[13] + 8);

  v15 = *(v4 + v8[14] + 8);

  v16 = v8[16];
  v17 = *(v6 + 48);
  if (!v17(v4 + v16, 1, v5))
  {
    v7(v4 + v16, v5);
  }

  v18 = v4 + *(v1 + 20);
  v7(v18, v5);
  v19 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7(v18 + v19[5], v5);
  v20 = *(v18 + v19[6] + 8);

  sub_100012324(*(v18 + v19[7]), *(v18 + v19[7] + 8));
  v21 = (v18 + v19[8]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100012324(*v21, v22);
  }

  sub_100012324(*(v18 + v19[9]), *(v18 + v19[9] + 8));
  v23 = v19[11];
  if (!v17(v18 + v23, 1, v5))
  {
    v7(v18 + v23, v5);
  }

  v24 = *(v18 + v19[12] + 8);

  v25 = v4 + *(v1 + 24);
  v7(v25, v5);
  v26 = type metadata accessor for CustodianHealthRecord();
  v7(v25 + v26[5], v5);
  v27 = v26[6];
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 8))(v25 + v27, v28);
  v29 = (v25 + v26[7]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100012324(*v29, v30);
  }

  sub_100012324(*(v25 + v26[8]), *(v25 + v26[8] + 8));

  return _swift_deallocObject(v35, v33 + v32);
}

uint64_t sub_100096D8C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10008F310(a1, v4, v5, v6, v7);
}

uint64_t sub_100096E04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100096E70()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v37 = *(*(v1 - 8) + 80);
  v35 = *(*(v1 - 8) + 64);
  v36 = (v37 + 16) & ~v37;
  v2 = v0 + v36;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v36, v3);
  v6 = type metadata accessor for CustodianRecord();
  v5(v0 + v36 + v6[5], v3);
  v7 = *(v0 + v36 + v6[6] + 8);

  v8 = *(v0 + v36 + v6[7] + 8);

  v9 = *(v0 + v36 + v6[8] + 8);

  v10 = (v0 + v36 + v6[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));
  v12 = *(v2 + v6[13] + 8);

  v13 = *(v2 + v6[14] + 8);

  v14 = v6[16];
  v15 = *(v4 + 48);
  if (!v15(v2 + v14, 1, v3))
  {
    v5(v2 + v14, v3);
  }

  v34 = v1;
  v16 = v2 + *(v1 + 20);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianRecoveryInfoRecord();
  v5(v16 + v17[5], v3);
  v18 = *(v16 + v17[6] + 8);

  sub_100012324(*(v16 + v17[7]), *(v16 + v17[7] + 8));
  v19 = (v16 + v17[8]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100012324(*v19, v20);
  }

  sub_100012324(*(v16 + v17[9]), *(v16 + v17[9] + 8));
  v21 = v17[11];
  if (!v15(v16 + v21, 1, v3))
  {
    v5(v16 + v21, v3);
  }

  v22 = *(v16 + v17[12] + 8);

  v23 = v2 + *(v34 + 24);
  v5(v23, v3);
  v24 = type metadata accessor for CustodianHealthRecord();
  v5(v23 + v24[5], v3);
  v25 = v24[6];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v23 + v25, v26);
  v27 = (v23 + v24[7]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100012324(*v27, v28);
  }

  v29 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v23 + v24[8]), *(v23 + v24[8] + 8));

  v32 = *(v0 + v30);

  return _swift_deallocObject(v0, ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100097248(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v9, v10, v11, v12);
}

uint64_t sub_10009731C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10009737C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000973B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100093218(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1000973D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009742C()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[9] + 8);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100097544(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100084B4C(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_100097600()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100097680()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000976D4()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[9] + 8);

  v10 = *(v0 + v3);

  v11 = *(v0 + v4);

  v12 = *(v0 + v5 + 8);

  v13 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100097810(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v7 + 8);
  v12 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100084D00(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_1000978D4()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[9] + 8);

  v8 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000979E0()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100085768(v3, v0 + v2, v5);
}

uint64_t sub_100097A74()
{
  v1 = (type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[9] + 8);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100097B90()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100085910(v4, v0 + v2, v5, v7);
}

uint64_t sub_100097C4C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100097CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100097D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_100097DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}