unint64_t sub_10018F804(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F824(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10018F8DC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10018F97C(uint64_t a1)
{
  v9 = sub_100005814(&qword_1003E0E40, &unk_100344498);
  v10 = sub_1000D10EC(&qword_1003E0E48, &qword_1003E0E40, &unk_100344498);
  v8[0] = a1;
  v2 = sub_1000080F8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10031D508(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000839C(v8);
  return v5;
}

uint64_t sub_10018FA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23[-1] - v10;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v22 = v6;
    v15 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v16 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s - started.", v16, 0xCu);
    sub_10000839C(v17);

    a1 = v15;
    v6 = v22;
  }

  else
  {
  }

  (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v18 = sub_1000080F8(v23, v23[3]);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v3;
  v19[5] = v6;
  v20 = *v18;

  sub_10021AD90(sub_10018FD60, v19);

  return sub_10000839C(v23);
}

uint64_t sub_10018FD70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10018FDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018FDC8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = *(v0 + v3);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_10018FF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001714C4(a1, v1 + v4, v7, v8);
}

uint64_t sub_10018FFD0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100190008()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v4);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100190160(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001728D0(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100190218()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v17 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = *(v7 + v1[7] + 8);

  v9(v7 + v1[9], v8);
  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v4);

  v13 = v0 + v6;
  v9(v0 + v6, v8);
  v14 = v5[7];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  sub_100012324(*(v13 + v5[8]), *(v13 + v5[8] + 8));
  v9(v0 + v6 + v5[9], v8);
  sub_100012324(*(v13 + v5[10]), *(v13 + v5[10] + 8));

  return _swift_deallocObject(v0, v17 + 8);
}

uint64_t sub_100190474(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10017303C(a1, v1 + v4, v9, v10, v11, v1 + v8);
}

uint64_t sub_10019059C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001905E8()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100190774(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10018DF38(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_100190820()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  sub_100012324(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001909E0()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2, v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  sub_100012324(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v8(v0 + v2 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_100190C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for CustodianRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  v11 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v10];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003431D0;
  *(v12 + 32) = v11;
  v13 = v11;
  v23.value._rawValue = v12;
  v23.is_nil = 0;
  v14.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v23, v24).super.super.super.super.isa;
  sub_1002DE8D4();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC4A8;
  v16 = _Block_copy(aBlock);

  [(objc_class *)v14.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v16];
  _Block_release(v16);
  if (v9[*(v6 + 48)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v17 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v17 = &qword_1003FA9C0;
  }

  v18 = *v17;
  v19 = v17[1];

  sub_100195024(v9, type metadata accessor for CustodianRecord);
  v20 = sub_1002E2BC4(v18, v19);

  v21 = [v20 privateCloudDatabase];

  [v21 addOperation:v14.super.super.super.super.isa];
}

void sub_100190F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for CustodianRecoveryInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = &v9[*(v6 + 20)];
  v11 = UUID.uuidString.getter();
  v13 = sub_1002E2EE0(v11, v12);

  v14 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v13];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003431D0;
  *(v15 + 32) = v14;
  v16 = v14;
  v26.value._rawValue = v15;
  v26.is_nil = 0;
  v17.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v26, v27).super.super.super.super.isa;
  sub_1002DE8D4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC5C0;
  v19 = _Block_copy(aBlock);

  [(objc_class *)v17.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v19];
  _Block_release(v19);
  if (v9[*(v6 + 40)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9C0;
  }

  v21 = *v20;
  v22 = v20[1];

  sub_100195024(v9, type metadata accessor for CustodianRecoveryInfoRecord);
  v23 = sub_1002E2BC4(v21, v22);

  v24 = [v23 privateCloudDatabase];

  [v24 addOperation:v17.super.super.super.super.isa];
}

void sub_1001912C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianHealthRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = &v9[*(v6 + 20)];
  v11 = UUID.uuidString.getter();
  v13 = sub_1002E2EE0(v11, v12);

  v14 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v13];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003431D0;
  *(v15 + 32) = v14;
  v16 = v14;
  v26.value._rawValue = v15;
  v26.is_nil = 0;
  v17.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v26, v27).super.super.super.super.isa;
  sub_1002DE8D4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC688;
  v19 = _Block_copy(aBlock);

  [(objc_class *)v17.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v19];
  _Block_release(v19);
  if (v9[*(v6 + 36)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9C0;
  }

  v21 = *v20;
  v22 = v20[1];

  sub_100195024(v9, type metadata accessor for CustodianHealthRecord);
  v23 = sub_1002E2BC4(v21, v22);

  v24 = [v23 privateCloudDatabase];

  [v24 addOperation:v17.super.super.super.super.isa];
}

void sub_10019162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianshipInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = &v9[*(v6 + 20)];
  v11 = UUID.uuidString.getter();
  v13 = sub_1002E2EE0(v11, v12);

  v14 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v13];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003431D0;
  *(v15 + 32) = v14;
  v16 = v14;
  v26.value._rawValue = v15;
  v26.is_nil = 0;
  v17.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v26, v27).super.super.super.super.isa;
  sub_1002DE8D4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003ABEE0;
  v19 = _Block_copy(aBlock);

  [(objc_class *)v17.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v19];
  _Block_release(v19);
  if (v9[*(v6 + 36)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v20 = &qword_1003FA9C0;
  }

  v21 = *v20;
  v22 = v20[1];

  sub_100195024(v9, type metadata accessor for CustodianshipInfoRecord);
  v23 = sub_1002E2BC4(v21, v22);

  v24 = [v23 privateCloudDatabase];

  [v24 addOperation:v17.super.super.super.super.isa];
}

void sub_100191990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InheritanceHealthRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for InheritanceHealthRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = UUID.uuidString.getter();
  v12 = sub_1002E2EE0(v10, v11);

  v13 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v12];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v13;
  v15 = v13;
  v25.value._rawValue = v14;
  v25.is_nil = 0;
  v16.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v25, v26).super.super.super.super.isa;
  sub_1002DE8D4();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100191CF0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003ABDC8;
  v18 = _Block_copy(aBlock);

  [(objc_class *)v16.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v18];
  _Block_release(v18);
  if (v9[*(v6 + 36)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FA9F0;
  }

  v20 = *v19;
  v21 = v19[1];

  sub_100195024(v9, type metadata accessor for InheritanceHealthRecord);
  v22 = sub_1002E2BC4(v20, v21);

  v23 = [v22 privateCloudDatabase];

  [v23 addOperation:v16.super.super.super.super.isa];
}

uint64_t sub_100191CF8()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_100191EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = UUID.uuidString.getter();
  v12 = sub_1002E2EE0(v10, v11);

  v13 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v12];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v13;
  v15 = v13;
  v25.value._rawValue = v14;
  v25.is_nil = 0;
  v16.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v25, v26).super.super.super.super.isa;
  sub_1002DE8D4();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC2F0;
  v18 = _Block_copy(aBlock);

  [(objc_class *)v16.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v18];
  _Block_release(v18);
  if (v9[*(v6 + 40)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FA9F0;
  }

  v20 = *v19;
  v21 = v19[1];

  sub_100195024(v9, type metadata accessor for BeneficiaryInfoRecord);
  v22 = sub_1002E2BC4(v20, v21);

  v23 = [v22 privateCloudDatabase];

  [v23 addOperation:v16.super.super.super.super.isa];
}

void sub_100192210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InheritanceInvitationRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  v11 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v10];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003431D0;
  *(v12 + 32) = v11;
  v13 = v11;
  v23.value._rawValue = v12;
  v23.is_nil = 0;
  v14.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v23, v24).super.super.super.super.isa;
  sub_1002DE8D4();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC3B8;
  v16 = _Block_copy(aBlock);

  [(objc_class *)v14.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v16];
  _Block_release(v16);
  if (v9[*(v6 + 44)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v17 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v17 = &qword_1003FA9F0;
  }

  v18 = *v17;
  v19 = v17[1];

  sub_100195024(v9, type metadata accessor for InheritanceInvitationRecord);
  v20 = sub_1002E2BC4(v18, v19);

  v21 = [v20 privateCloudDatabase];

  [v21 addOperation:v14.super.super.super.super.isa];
}

void sub_100192574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BenefactorInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v9, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v10 = UUID.uuidString.getter();
  v12 = sub_1002E2EE0(v10, v11);

  v13 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v12];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003431D0;
  *(v14 + 32) = v13;
  v15 = v13;
  v25.value._rawValue = v14;
  v25.is_nil = 0;
  v16.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v25, v26).super.super.super.super.isa;
  sub_1002DE8D4();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC228;
  v18 = _Block_copy(aBlock);

  [(objc_class *)v16.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v18];
  _Block_release(v18);
  if (v9[*(v6 + 36)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1003FA9F0;
  }

  v20 = *v19;
  v21 = v19[1];

  sub_100195024(v9, type metadata accessor for BenefactorInfoRecord);
  v22 = sub_1002E2BC4(v20, v21);

  v23 = [v22 privateCloudDatabase];

  [v23 addOperation:v16.super.super.super.super.isa];
}

void *sub_1001928D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018EFD0(sub_10019293C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10019295C()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = *(v6 + v1[8] + 8);

  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100192AE0()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v7(v0 + v2 + v1[7], v6);
  v8 = *(v0 + v2 + v1[8] + 8);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100192CC4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = *(v5 + v1[8] + 8);

  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100192E40()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);
  v8 = *(v0 + v2 + v1[6] + 8);

  v9 = *(v0 + v2 + v1[7] + 8);

  v10 = *(v0 + v2 + v1[8] + 8);

  v11 = (v0 + v2 + v1[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));
  v13 = *(v4 + v1[13] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = v1[16];
  if (!(*(v6 + 48))(v4 + v15, 1, v5))
  {
    v7(v4 + v15, v5);
  }

  v16 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v16);

  v19 = *(v0 + v17 + 8);

  return _swift_deallocObject(v0, v17 + 16);
}

uint64_t sub_10019306C()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);
  v7 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v8 = (v0 + v2 + v1[8]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v5 + 48))(v3 + v10, 1, v4))
  {
    v6(v3 + v10, v4);
  }

  v11 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v1[12] + 8);

  v14 = *(v0 + v11);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_100193288()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[5], v5);
  v7 = v1[6];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[7]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v13 = *(v0 + v11);

  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_100193454()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v9 = *(v5 + v1[8] + 8);

  v10 = *(v5 + v1[9] + 8);

  v7(v5 + v1[11], v6);
  sub_100012324(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001935F0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[14] + 8);

  v14 = *(v0 + v10);

  v15 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16);
}

uint64_t sub_10019380C()
{
  v1 = (type metadata accessor for BeneficiaryManifestRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7]);

  v7(v5 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100193984()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100193B00()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100193C84()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = *(v0 + v2 + v1[7] + 8);

  v7(v0 + v2 + v1[9], v6);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100193E68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100193EA0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[12] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_1001940C4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = *(v5 + v1[12] + 8);

  v13 = *(v5 + v1[14] + 8);

  return _swift_deallocObject(v0, v2 + v15);
}

uint64_t sub_1001942C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v5 = *(a2(0) - 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8, v9);
}

uint64_t sub_100194358()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v10 = *(v6 + v1[8] + 8);

  v11 = *(v6 + v1[9] + 8);

  v8(v6 + v1[11], v7);
  sub_100012324(*(v6 + v1[12]), *(v6 + v1[12] + 8));

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001944FC()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = *(v0 + v2 + v1[7] + 8);

  v9 = *(v0 + v2 + v1[8] + 8);

  v10 = *(v0 + v2 + v1[9] + 8);

  v7(v0 + v2 + v1[11], v6);
  sub_100012324(*(v0 + v2 + v1[12]), *(v0 + v2 + v1[12] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100194680()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100194758(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001721D8(a1, v5, v6, v7, v1 + v4);
}

uint64_t sub_1001947FC()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v8(v0 + v2 + v1[5], v6);
  v9 = *(v0 + v2 + v1[6] + 8);

  v10 = *(v0 + v2 + v1[7] + 8);

  v11 = *(v0 + v2 + v1[8] + 8);

  v12 = (v0 + v2 + v1[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  sub_100012324(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v14 = *(v5 + v1[13] + 8);

  v15 = *(v5 + v1[14] + 8);

  v16 = v1[16];
  if (!(*(v7 + 48))(v5 + v16, 1, v6))
  {
    v8(v5 + v16, v6);
  }

  v17 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;

  v19 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_100194A30()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2, v7);
  v9(v0 + v2 + v1[5], v7);
  v10 = *(v0 + v2 + v1[6] + 8);

  v11 = *(v0 + v2 + v1[7] + 8);

  v12 = *(v0 + v2 + v1[8] + 8);

  v13 = (v0 + v2 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v15 = *(v6 + v1[13] + 8);

  v16 = *(v6 + v1[14] + 8);

  v17 = v1[16];
  if (!(*(v8 + 48))(v6 + v17, 1, v7))
  {
    v9(v6 + v17, v7);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100194C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100194CAC()
{
  v1 = type metadata accessor for CustodianRecoverySessionRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);
  v6(v0 + v2 + v1[6], v4);
  v7 = *(v0 + v2 + v1[7] + 8);

  v8 = *(v0 + v2 + v1[8] + 8);

  v9 = (v0 + v2 + v1[9]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v11 = *(v3 + v1[11] + 8);

  v12 = v1[12];
  if (!(*(v5 + 48))(v3 + v12, 1, v4))
  {
    v6(v3 + v12, v4);
  }

  v13 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v3 + v1[13] + 8);

  v16 = *(v0 + v13);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_100194EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100194F58(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v5);
  v8 = (v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = *(v2 + v6);
  v11 = *(v2 + v6 + 8);
  v12 = *(v8 + 8);

  return a2(v2 + v4, v7, v9, v12, v10, v11);
}

uint64_t sub_100195024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100195084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001950CC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);
  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v6 + 48))(v4 + v11, 1, v5))
  {
    v7(v4 + v11, v5);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[12] + 8);

  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1001952F0()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v8(v0 + v2 + v1[5], v6);
  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = (v0 + v2 + v1[8]);
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

  v13 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v2 + v15);
}

uint64_t sub_1001954F4()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v7(v0 + v2 + v1[5], v6);
  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = (v0 + v2 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v14 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1001956C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a4(0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v5 + v11);
  v13 = *(v5 + 16);
  v14 = (v5 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a5(a1, a2, a3, v13, v5 + v10, v12, v15, v16);
}

uint64_t sub_1001957A8()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v7(v0 + v2 + v1[5], v6);
  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = (v0 + v2 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100195ACC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100005814(&qword_1003E10B8, &qword_100344610);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = &v30 - v3;
  v34 = type metadata accessor for TimeZone();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v11);
  (*(v7 + 104))(v27, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v33);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t sub_100195ED0()
{
  type metadata accessor for BeneficiaryAccessKeyRepairHandler();
  sub_100005814(&qword_1003E1080, &qword_1003445F0);
  result = String.init<A>(describing:)();
  qword_1003E0E90 = result;
  *algn_1003E0E98 = v1;
  return result;
}

id sub_100195F24()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext;
  v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10019F7F0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1001A2024(v4);
  }

  sub_1001A2034(v2);
  return v3;
}

uint64_t sub_100195F94(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = *v4;
  v21 = a3;
  v7 = type metadata accessor for BeneficiaryInfoRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1001A3E54(a1, v10, type metadata accessor for BeneficiaryInfoRecord);
  v12 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  sub_1001A409C(v10, v15 + v12, type metadata accessor for BeneficiaryInfoRecord);
  *(v15 + v13) = v11;
  v16 = (v15 + v14);
  *v16 = v21;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_100198D88(a1, sub_1001A1C2C, v15);
}

uint64_t sub_100196180(void *a1, char a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v156 = a8;
  v162 = a5;
  v164 = a4;
  v165 = a3;
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v139 - v14);
  v155 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v154 = *(v155 - 8);
  v16 = *(v154 + 64);
  __chkstk_darwin(v155);
  v153 = &v139 - v17;
  v152 = type metadata accessor for Date.ISO8601FormatStyle();
  v151 = *(v152 - 8);
  v18 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Date();
  v168 = *(v169 - 8);
  v20 = *(v168 + 64);
  __chkstk_darwin(v169);
  v149 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v167 = *(v22 - 8);
  v23 = *(v167 + 64);
  __chkstk_darwin(v22);
  v148 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v160 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v170 = &v139 - v29;
  v30 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v159 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v171 = (&v139 - v34);
  v35 = type metadata accessor for BeneficiaryInfoRecord();
  v36 = *(*(v35 - 1) + 64);
  v37 = __chkstk_darwin(*(v35 - 1));
  v38 = __chkstk_darwin(v37);
  v39 = __chkstk_darwin(v38);
  v161 = &v139 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v139 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v139 - v45;
  v47 = __chkstk_darwin(v44);
  v163 = &v139 - v51;
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a6(v15);
    return sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    v141 = v47;
    v142 = v50;
    v143 = v49;
    v144 = v48;
    sub_100135D08(a1, 0);
    sub_1001E960C(a1, &v176);
    v53 = v178;
    v145 = a6;
    if (v165)
    {
      v157 = 1;
      v54 = v164;
    }

    else
    {
      v54 = v164;
      v157 = *(v164 + v35[10]);
    }

    v146 = a7;
    v55 = v176;
    sub_1001A3E54(v54, v46, type metadata accessor for BeneficiaryInfoRecord);
    if (v53)
    {
      v182 = v177;
      v180 = v179;
      v181 = v176;
      v56 = type metadata accessor for JSONEncoder();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      sub_100015D6C(v55, *(&v55 + 1));

      JSONEncoder.init()();
      v172 = v181;
      v173 = v182;
      v174 = v53;
      v175 = v180;
      sub_1001A23F4();
      v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v166 = v60;
      v158 = v59;

      sub_100008D3C(&v176, &unk_1003E1660, &qword_100344608);
    }

    else
    {
      v158 = 0;
      v166 = 0xF000000000000000;
    }

    v61 = v169;
    v62 = v170;
    v63 = v159;
    v64 = v167;
    v65 = *(v167 + 56);
    v65(v171, 1, 1, v22);
    (*(v168 + 56))(v62, 1, 1, v61);
    v159 = v35[11];
    v140 = v65;
    v65((v43 + v159), 1, 1, v22);
    v66 = *(v64 + 16);
    v66(v43, v46, v22);
    v67 = v35[6];
    v69 = *&v46[v67];
    v68 = *&v46[v67 + 8];
    v70 = (v43 + v67);
    *v70 = v69;
    *(v70 + 1) = v68;
    v147 = v68;
    v66(v43 + v35[8], &v46[v35[8]], v22);
    v71 = v35[9];
    if (v157 == v46[v35[10]])
    {
      v72 = *&v46[v71];
      v73 = *&v46[v71 + 8];
      v74 = (v43 + v71);
      *v74 = v72;
      v74[1] = v73;
      sub_100015D6C(v72, v73);
    }

    else
    {
      *(v43 + v71) = xmmword_10033F8D0;
    }

    v75 = v166;
    v76 = v35[5];
    v77 = *&v46[v76];
    v78 = *&v46[v76 + 8];
    v79 = (v43 + v76);
    *v79 = v77;
    *(v79 + 1) = v78;
    v80 = v35[7];
    v81 = v167;
    v82 = v158;
    if (v75 >> 60 == 15)
    {
      v83 = *&v46[v80];
      v84 = *&v46[v80 + 8];
      v85 = (v43 + v80);
      *v85 = v83;
      v85[1] = v84;
      sub_100015D6C(v83, v84);
    }

    else
    {
      v86 = (v43 + v80);
      *v86 = v158;
      *(v86 + 1) = v75;
    }

    *(v43 + v35[10]) = v157;
    sub_100012D04(v171, v63, &qword_1003D8B60, &unk_10033F210);
    if ((*(v81 + 48))(v63, 1, v22) == 1)
    {

      sub_100052704(v82, v75);
      sub_100008D3C(v63, &qword_1003D8B60, &unk_10033F210);
      sub_10009585C(&v46[v35[11]], v43 + v159);
    }

    else
    {
      v166 = v75;
      v87 = *(v81 + 32);
      v88 = v63;
      v89 = v148;
      v87(v148, v88, v22);

      sub_100052704(v82, v166);
      v90 = v159;
      sub_100008D3C(v43 + v159, &qword_1003D8B60, &unk_10033F210);
      v87((v43 + v90), v89, v22);
      v140((v43 + v90), 0, 1, v22);
    }

    v91 = v169;
    v92 = (v43 + v35[12]);
    v93 = v170;
    v94 = v160;
    sub_100012D04(v170, v160, &qword_1003DA110, &qword_10033F230);
    v95 = v168;
    if ((*(v168 + 48))(v94, 1, v91) == 1)
    {
      sub_100015D58(v158, v166);
      sub_100008D3C(v93, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v171, &qword_1003D8B60, &unk_10033F210);
      sub_100008D3C(v94, &qword_1003DA110, &qword_10033F230);
      v96 = &v46[v35[12]];
      v98 = *v96;
      v97 = v96[1];
    }

    else
    {
      v99 = v149;
      (*(v95 + 32))(v149, v94, v91);
      v100 = v150;
      sub_100195ACC(v150);
      v98 = Date.ISO8601Format(_:)();
      v97 = v101;
      sub_100015D58(v158, v166);
      (*(v151 + 8))(v100, v152);
      (*(v95 + 8))(v99, v91);
      sub_100008D3C(v170, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v171, &qword_1003D8B60, &unk_10033F210);
    }

    *v92 = v98;
    v92[1] = v97;
    v102 = v35[14];
    v103 = (v43 + v35[13]);
    v104 = (v43 + v102);
    v105 = &v46[v102];
    v106 = *(v105 + 1);
    *v104 = *v105;
    *(v104 + 1) = v106;
    v107 = &v46[v35[13]];
    v108 = *v107;
    v109 = v107[8];

    sub_1001A3A5C(v46, type metadata accessor for BeneficiaryInfoRecord);
    *v103 = v108;
    v103[8] = v109;
    v110 = v43;
    v111 = v163;
    sub_1001A409C(v110, v163, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_100008D04(v112, qword_1003FAAB8);
    v113 = v161;
    sub_1001A3E54(v111, v161, type metadata accessor for BeneficiaryInfoRecord);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *&v172 = swift_slowAlloc();
      *v116 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v116 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v172);
      *(v116 + 12) = 2080;
      v117 = sub_1001E6794();
      v119 = v118;
      sub_1001A3A5C(v113, type metadata accessor for BeneficiaryInfoRecord);
      v120 = sub_10021145C(v117, v119, &v172);

      *(v116 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v114, v115, "%s - created new BeneficiaryInfoRecord with updated accessKey - %s", v116, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001A3A5C(v113, type metadata accessor for BeneficiaryInfoRecord);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v122 = v154;
      v123 = v153;
      v124 = v155;
      (*(v154 + 16))(v153, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v155);
      Dependency.wrappedValue.getter();

      (*(v122 + 8))(v123, v124);
      v171 = sub_1000080F8(&v172, v174);
      v170 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v125 = v143;
      sub_1001A3E54(v111, v143, type metadata accessor for BeneficiaryInfoRecord);
      v126 = v144;
      sub_1001A3E54(v164, v144, type metadata accessor for BeneficiaryInfoRecord);
      v127 = *(v141 + 80);
      v128 = (v127 + 16) & ~v127;
      v129 = (v142 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v130 = (v129 + 23) & 0xFFFFFFFFFFFFFFF8;
      v131 = (v127 + v130 + 8) & ~v127;
      v132 = v131 + v142;
      v133 = (v131 + v142) & 0xFFFFFFFFFFFFFFF8;
      v134 = swift_allocObject();
      sub_1001A409C(v125, v134 + v128, type metadata accessor for BeneficiaryInfoRecord);
      v135 = (v134 + v129);
      v136 = v146;
      *v135 = v145;
      v135[1] = v136;
      *(v134 + v130) = v170;
      sub_1001A409C(v126, v134 + v131, type metadata accessor for BeneficiaryInfoRecord);
      *(v134 + v132) = v165 & 1;
      *(v134 + v133 + 8) = v156;
      v137 = *v171;

      v138 = v163;
      sub_1002183D4(v163, sub_1001A2324, v134);

      sub_100008D3C(&v176, &unk_1003E1660, &qword_100344608);
      sub_1001A3A5C(v138, type metadata accessor for BeneficiaryInfoRecord);

      return sub_10000839C(&v172);
    }

    else
    {
      sub_100008D3C(&v176, &unk_1003E1660, &qword_100344608);
      return sub_1001A3A5C(v111, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}

uint64_t sub_1001972B8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v53 = a8;
  v52 = a7;
  v56 = a6;
  v57 = a5;
  v58 = a4;
  v11 = type metadata accessor for BeneficiaryInfoRecord();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v48 - v14;
  v15 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = (&v48 - v20);
  sub_100012D04(a1, &v48 - v20, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v19);

    v21 = v19;
  }

  else
  {
    v22 = (a2 + *(v11 + 20));
    v23 = v22[1];
    v24 = a2;
    if (v23)
    {
      v49 = *v22;
      v50 = v23;
      v25 = qword_1003D7F48;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008D04(v26, qword_1003FAAB8);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v48 = a2;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v59[0] = v30;
        *v29 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v29 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v59);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - saved new BeneficiaryInfoRecord.", v29, 0xCu);
        sub_10000839C(v30);

        v24 = v48;
      }

      else
      {
      }

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v59[0] = v34;
        *v33 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v33 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v59);
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - notifying Beneficiary of Access Key Change...", v33, 0xCu);
        sub_10000839C(v34);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        sub_1001A3E54(v56, v54, type metadata accessor for BeneficiaryInfoRecord);
        sub_1001A3E54(v24, v55, type metadata accessor for BeneficiaryInfoRecord);
        v36 = *(v51 + 80);
        v37 = (v36 + 33) & ~v36;
        v38 = v12 + 7;
        v39 = (v12 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v36 + v39 + 8) & ~v36;
        v41 = v58;
        v42 = (v38 + v40) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        *(v43 + 16) = a3;
        *(v43 + 24) = v41;
        v44 = v52 & 1;
        *(v43 + 32) = v52 & 1;
        sub_1001A409C(v54, v43 + v37, type metadata accessor for BeneficiaryInfoRecord);
        *(v43 + v39) = v57;
        sub_1001A409C(v55, v43 + v40, type metadata accessor for BeneficiaryInfoRecord);
        v45 = (v43 + v42);
        v46 = v50;
        *v45 = v49;
        v45[1] = v46;
        *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;

        sub_100198AB0(v56, v44, sub_1001A2728, v43);
      }

      else
      {
      }
    }

    else
    {
      sub_1001A3E54(a2, v19, type metadata accessor for BeneficiaryInfoRecord);
      swift_storeEnumTagMultiPayload();
      a3(v19);
      sub_100008D3C(v19, &unk_1003E10A0, &unk_100344480);
    }
  }

  return sub_100008D3C(v21, &unk_1003E10A0, &unk_100344480);
}

void sub_1001978BC(uint64_t a1, void (*a2)(void *), uint64_t a3, int a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a5;
  LODWORD(v39) = a4;
  v13 = type metadata accessor for BeneficiaryInfoRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v34 - v18);
  if (a1)
  {
    *v19 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v19);
    sub_100008D3C(v19, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    v35 = a10;
    v20 = a2;
    v21 = a3;
    v23 = v37;
    v22 = v38;
    if ((v39 & 1) != 0 && (*(&v40->isa + *(v13 + 40)) & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        sub_1001A3E54(v23, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
        v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
        v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        v32[2] = v20;
        v32[3] = v21;
        v32[4] = v22;
        sub_1001A409C(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30, type metadata accessor for BeneficiaryInfoRecord);
        v33 = (v32 + v31);
        *v33 = v36;
        v33[1] = a9;
        *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;

        sub_100198918(v40, sub_1001A2CE4, v32);
      }
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAAB8);
      v40 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v41 = v27;
        *v26 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v26 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v41);
        _os_log_impl(&_mh_execute_header, v40, v25, "%s - skipping old beneficiary record cleanup and sharing of new record.", v26, 0xCu);
        sub_10000839C(v27);
      }

      else
      {
        v28 = v40;
      }
    }
  }
}

uint64_t sub_100197CC4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a2;
  v12 = type metadata accessor for BeneficiaryInfoRecord();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v28 - v16);
  if (a1)
  {
    *v17 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v30(v17);
    sub_100008D3C(v17, &unk_1003E10A0, &unk_100344480);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v28 = a5;
    v21 = a6;
    v22 = a7;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v31);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - attempting to share new beneficiary manatee record.", v23, 0xCu);
    sub_10000839C(v24);

    a7 = v22;
    a6 = v21;
    a5 = v28;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A3E54(a5, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
    v26 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v30;
    *(v27 + 24) = a3;
    sub_1001A409C(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for BeneficiaryInfoRecord);

    sub_100198160(a5, a6, a7, sub_1001A2FDC, v27);
  }

  return result;
}

uint64_t sub_100198054(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v12 - v9);
  if (a1)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    sub_1001A3E54(a4, &v12 - v9, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
  }

  a2(v10);
  return sub_100008D3C(v10, &unk_1003E10A0, &unk_100344480);
}

void sub_100198160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v6 = v5;
  v59 = a4;
  v60 = a5;
  v58 = a3;
  v54 = a2;
  v56 = a1;
  v53 = *v5;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v57 = &v49 - v9;
  v10 = type metadata accessor for BeneficiaryInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v52 = &v49 - v14;
  v15 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
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
    v51 = v11;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v64[0] = v24;
    *v23 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - sharing BeneficiaryInfoRecord...", v23, 0xCu);
    sub_10000839C(v24);

    v11 = v51;
  }

  else
  {
  }

  (*(v16 + 16))(v19, v6 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v61, v64);
    v50 = sub_1000080F8(v64, v64[3]);
    v25 = swift_allocObject();
    v51 = v25;
    swift_weakInit();
    v49 = type metadata accessor for BeneficiaryInfoRecord;
    v26 = v56;
    v27 = v52;
    sub_1001A3E54(v56, v52, type metadata accessor for BeneficiaryInfoRecord);
    v28 = *(v11 + 80);
    v29 = (v28 + 24) & ~v28;
    v30 = v12 + 7;
    v31 = (v30 + v29) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    sub_1001A409C(v27, v33 + v29, type metadata accessor for BeneficiaryInfoRecord);
    v34 = (v33 + v31);
    v35 = v58;
    *v34 = v54;
    v34[1] = v35;
    v36 = (v33 + v32);
    v37 = v60;
    *v36 = v59;
    v36[1] = v37;
    *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;
    v59 = *v50;
    v38 = type metadata accessor for TaskPriority();
    v39 = v57;
    (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
    v40 = v55;
    sub_1001A3E54(v26, v55, v49);
    v41 = (v28 + 40) & ~v28;
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v59;
    sub_1001A409C(v40, v42 + v41, type metadata accessor for BeneficiaryInfoRecord);
    v43 = (v42 + ((v30 + v41) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_10019DC74;
    v43[1] = v33;

    sub_1000BCD5C(0, 0, v39, &unk_1003445C0, v42);

    sub_10000839C(v64);
  }

  else
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_100008D3C(v61, &unk_1003DB050, &qword_10033FA60);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v46 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v46 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
      _os_log_impl(&_mh_execute_header, v44, v45, "%s - shareBeneficiaryRecord could not get reference to CloudKitSharing", v46, 0xCu);
      sub_10000839C(v47);
    }

    type metadata accessor for InheritanceError(0);
    v63 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v64[0];
    v59(v64[0]);
  }
}

uint64_t sub_100198918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16[-1] - v11;
  (*(v9 + 16))(&v16[-1] - v11, v3 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v7;

  sub_10019FAAC(a1, sub_1001A2DD0, v13);

  return sub_10000839C(v16);
}

uint64_t sub_100198AB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v24 = *v4;
  v25 = a3;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  (*(v12 + 16))(&v24 - v14, v5 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v16 = sub_1000080F8(v27, v27[3]);
  v17 = swift_allocObject();
  swift_weakInit();
  sub_1001A3E54(a1, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = (v18 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1001A409C(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for BeneficiaryInfoRecord);
  v21 = v20 + ((v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = v25;
  *(v21 + 8) = a4;
  *(v21 + 16) = v26;
  *(v20 + v19) = v17;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v22 = *v16;

  sub_10021CBFC(a1, sub_1001A29F0, v20);

  return sub_10000839C(v27);
}

void sub_100198D88(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v85 = a2;
  v86 = a3;
  v84 = *v3;
  v5 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  __chkstk_darwin(v5);
  v81 = &v74 - v7;
  v8 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v88 = &v74 - v10;
  v11 = type metadata accessor for UUID();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  __chkstk_darwin(v11);
  v89 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord();
  v78 = *(v14 - 1);
  v15 = *(v78 + 64);
  v16 = __chkstk_darwin(v14);
  v79 = v17;
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v74 - v18;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  sub_1001A3E54(a1, v19, type metadata accessor for BeneficiaryInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v87 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v24 = 136315394;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    *(v24 + 12) = 2080;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001A3A5C(v19, type metadata accessor for BeneficiaryInfoRecord);
    v28 = sub_10021145C(v25, v27, aBlock);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - generating new accessKey for beneficiaryID - %s.", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v19, type metadata accessor for BeneficiaryInfoRecord);
  }

  v29 = sub_100195F24();
  if (v29)
  {
    v76 = v29;
    (*(v90 + 16))(v89, a1, v91);
    v30 = v14[5];
    v31 = (a1 + v14[6]);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(a1 + v30);
    v35 = *(a1 + v30 + 8);
    sub_100012D04(a1 + v14[11], v88, &qword_1003D8B60, &unk_10033F210);
    v36 = (a1 + v14[12]);
    v37 = *v36;
    v38 = v36[1];
    v39 = a1 + v14[13];
    if (*(v39 + 8))
    {
      v40 = 0;
    }

    else
    {
      v40 = *v39;
    }

    v75 = v40;
    v41 = (a1 + v14[14]);
    v42 = v41[1];
    v74 = *v41;
    v43.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v44 = String._bridgeToObjectiveC()();
    if (v35)
    {
      v45 = String._bridgeToObjectiveC()();
    }

    else
    {
      v45 = 0;
    }

    v77 = a1;
    v52 = v90;
    v51 = v91;
    v53 = v88;
    if ((*(v90 + 48))(v88, 1, v91) == 1)
    {
      isa = 0;
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v52 + 8))(v53, v51);
      if (v38)
      {
LABEL_22:
        v55 = String._bridgeToObjectiveC()();
        if (v42)
        {
LABEL_23:
          v56 = String._bridgeToObjectiveC()();
LABEL_27:
          v57 = objc_allocWithZone(AABeneficiaryInfo);
          v88 = [v57 initWithBeneficiaryID:v43.super.isa benefactorAltDSID:v44 handle:v45 otPeerID:isa repairDate:v55 repairCount:v75 recordBuildVersion:v56];

          (*(v52 + 8))(v89, v51);
          v58 = v81;
          v59 = v82;
          v60 = v83;
          (*(v82 + 16))(v81, v87 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__securityManager, v83);
          Dependency.wrappedValue.getter();
          (*(v59 + 8))(v58, v60);
          v61 = aBlock[0];
          v62 = swift_allocObject();
          swift_weakInit();
          v63 = v80;
          sub_1001A3E54(v77, v80, type metadata accessor for BeneficiaryInfoRecord);
          v64 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          v65 = (v79 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
          v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
          v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          v69 = v86;
          *(v68 + 16) = v85;
          *(v68 + 24) = v69;
          sub_1001A409C(v63, v68 + v64, type metadata accessor for BeneficiaryInfoRecord);
          v70 = v76;
          *(v68 + v65) = v76;
          v71 = v88;
          *(v68 + v66) = v88;
          *(v68 + v67) = v62;
          *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
          aBlock[4] = sub_1001A1F04;
          aBlock[5] = v68;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100015858;
          aBlock[3] = &unk_1003AC7E0;
          v72 = _Block_copy(aBlock);
          v50 = v71;

          v73 = v70;

          [v61 createInheritanceAccessKeyForContact:v50 completion:v72];
          _Block_release(v72);

          swift_unknownObjectRelease();
          goto LABEL_28;
        }

LABEL_26:
        v56 = 0;
        goto LABEL_27;
      }
    }

    v55 = 0;
    if (v42)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s - inheritanceContext is nil. Cannot proceed with updating accessKey", v48, 0xCu);
    sub_10000839C(v49);
  }

  type metadata accessor for InheritanceError(0);
  aBlock[6] = 10;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v50 = aBlock[0];
  v85(aBlock[0], 1);
LABEL_28:
}

void sub_100199768(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v69 = a7;
  v70 = a8;
  v15 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v15);
  v66 = &v62 - v17;
  v18 = type metadata accessor for UUID();
  v68 = *(v18 - 8);
  v19 = *(v68 + 64);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BeneficiaryInfoRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAB8);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v38 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
      *(v38 + 12) = 2080;
      v73 = a2;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, aBlock);

      *(v38 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s - error generating new access code: %s", v38, 0x16u);
      swift_arrayDestroy();

      v42 = a2;
      if (a2)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v42 = a2;
      if (a2)
      {
LABEL_25:
        swift_errorRetain();
        swift_errorRetain();
        a3(v42, 1);

        return;
      }
    }

    type metadata accessor for InheritanceError(0);
    v73 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = aBlock[0];
    goto LABEL_25;
  }

  v64 = a3;
  v65 = a4;
  v62 = v15;
  v63 = a6;
  v26 = qword_1003D7F48;
  v71 = a1;
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAAB8);
  sub_1001A3E54(a5, v25, type metadata accessor for BeneficiaryInfoRecord);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 136315394;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    *(v30 + 12) = 2080;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    sub_1001A3A5C(v25, type metadata accessor for BeneficiaryInfoRecord);
    v34 = sub_10021145C(v31, v33, aBlock);

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s - created new accessKey for beneficiaryID - %s.", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v25, type metadata accessor for BeneficiaryInfoRecord);
  }

  v43 = v63;
  [v63 setAccessKey:v71];
  v44 = [v69 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v68 + 8))(v21, v18);
  v45 = String._bridgeToObjectiveC()();

  [v43 setBeneficiaryIdentifier:v45];

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v64;
  v50 = v62;
  if (v48)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v51 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s - notifying IdMS of the accessKey change...", v51, 0xCu);
    sub_10000839C(v52);
  }

  v53 = v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v55 = v66;
    v56 = v67;
    (*(v67 + 16))(v66, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__requestController, v50);
    Dependency.wrappedValue.getter();

    (*(v56 + 8))(v55, v50);
    v57 = aBlock[0];
    v58 = swift_allocObject();
    v58[2] = v49;
    v58[3] = v53;
    v59 = v71;
    v58[4] = v71;
    v58[5] = a9;
    aBlock[4] = sub_1001A2018;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AC830;
    v60 = _Block_copy(aBlock);
    v61 = v59;

    [v57 updateBeneficiaryWithInheritanceContext:v43 completion:v60];
    swift_unknownObjectRelease();

    _Block_release(v60);
  }

  else
  {
  }
}

uint64_t sub_10019A090(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
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
      v20 = swift_slowAlloc();
      *v9 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v20);
      *(v9 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = String.init<A>(describing:)();
      v12 = sub_10021145C(v10, v11, &v20);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s - error updating access code with IdMS: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v20);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - successfully updated AccessKey with IdMS", v18, 0xCu);
      sub_10000839C(v19);
    }

    return (a2)(a4, 0);
  }
}

void sub_10019A400(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v66 = a6;
  v67 = a3;
  v68 = a4;
  v63 = a2;
  v8 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for InheritanceHealthRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BeneficiaryInfoRecord();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v62 - v22);
  sub_100012D04(a1, &v62 - v22, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v70[0] = *v23;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v25 = v71;
      v70[0] = v71;
      v69 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v26 = v71;
      v69 = v71;
      v27 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v27)
      {
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100008D04(v28, qword_1003FAAB8);
        sub_1001A3E54(v63, v19, type metadata accessor for BeneficiaryInfoRecord);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v70[0] = swift_slowAlloc();
          *v31 = 136315394;
          if (qword_1003D7E20 != -1)
          {
            swift_once();
          }

          *(v31 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v70);
          *(v31 + 12) = 2080;
          type metadata accessor for UUID();
          sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          sub_1001A3A5C(v19, type metadata accessor for BeneficiaryInfoRecord);
          v35 = sub_10021145C(v32, v34, v70);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "%s - there is no InheritanceHealthRecord for beneficiaryID - %s.", v31, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1001A3A5C(v19, type metadata accessor for BeneficiaryInfoRecord);
        }

        v67(0);

        return;
      }
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100008D04(v55, qword_1003FAAB8);
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v58 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v58 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v70);
      *(v58 + 12) = 2080;
      v71 = v24;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = sub_10021145C(v59, v60, v70);

      *(v58 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s - error fetching InheritanceHealthRecord. Abandoning migration - %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    v67(v24);
  }

  else
  {
    sub_1001A409C(v23, v15, type metadata accessor for InheritanceHealthRecord);
    v36 = *(v12 + 36);
    if (v15[v36])
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAAB8);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v70[0] = v41;
        *v40 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v40 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v70);
        _os_log_impl(&_mh_execute_header, v38, v39, "%s - inheritanceHealthRecord is already in Manatee.", v40, 0xCu);
        sub_10000839C(v41);
      }

      v67(0);
    }

    else
    {
      v15[v36] = a5 & 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100008D04(v42, qword_1003FAAB8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v45 = 136315394;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v45 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v70);
        *(v45 + 12) = 2080;
        swift_beginAccess();
        v46 = sub_1001EC510();
        v48 = sub_10021145C(v46, v47, v70);

        *(v45 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v43, v44, "%s - saving updated InheritanceHealthRecord - %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v51 = v64;
        v50 = v65;
        (*(v64 + 16))(v11, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v65);
        Dependency.wrappedValue.getter();

        (*(v51 + 8))(v11, v50);
        v52 = sub_1000080F8(v70, v70[3]);
        swift_beginAccess();
        v53 = swift_allocObject();
        *(v53 + 16) = v67;
        *(v53 + 24) = v68;
        v54 = *v52;

        sub_10021DAF0(v15, sub_1001A2AE4, v53);

        sub_10000839C(v70);
      }
    }

    sub_1001A3A5C(v15, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_10019AEE8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v10 - v6);
  sub_100012D04(a1, &v10 - v6, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    swift_errorRetain();
    a2(v8);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v7, &unk_1003E10C0, &qword_100346A70);
  }
}

uint64_t sub_10019B000(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a7;
  v35 = a6;
  v33 = a5;
  v34 = a1;
  v10 = type metadata accessor for BeneficiaryInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_100005814(&qword_1003E1060, &qword_1003445D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v14 + 16))(v17, result + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudSharingController, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v17, v13);
    v32 = sub_1000080F8(v38, v38[3]);
    v19 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v20 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1001A3E54(a3, v20, type metadata accessor for BeneficiaryInfoRecord);
    v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v22 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = v33;
    v31 = a3;
    v26 = swift_allocObject();
    sub_1001A409C(v20, v26 + v21, type metadata accessor for BeneficiaryInfoRecord);
    v27 = v26 + v22;
    v28 = v37;
    *v27 = v35;
    *(v27 + 8) = v28;
    *(v27 + 16) = v34 & 1;
    *(v26 + v23) = v19;
    v29 = (v26 + v24);
    *v29 = a4;
    v29[1] = v25;
    *(v26 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
    v30 = *v32;

    sub_1001F58C8(v31, a4, v25, sub_1001A1920, v26);

    return sub_10000839C(v38);
  }

  return result;
}

uint64_t sub_10019B34C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133 = a6;
  v134 = a8;
  v131 = a7;
  v132 = a5;
  v135 = a3;
  v136 = a4;
  v137 = a2;
  v130 = type metadata accessor for InheritanceAccessKeyMessage();
  v9 = *(*(v130 - 8) + 64);
  v10 = __chkstk_darwin(v130);
  v124 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v125 = &v122 - v13;
  v14 = __chkstk_darwin(v12);
  v126 = &v122 - v15;
  __chkstk_darwin(v14);
  v17 = &v122 - v16;
  v18 = sub_100005814(&qword_1003E1068, &unk_1003445E0);
  v128 = *(v18 - 8);
  v129 = v18;
  v19 = *(v128 + 64);
  __chkstk_darwin(v18);
  v127 = &v122 - v20;
  v21 = type metadata accessor for CloudShareInfo();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v122 - v26;
  v28 = type metadata accessor for BeneficiaryInfoRecord();
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v122 - v33;
  v35 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v122 - v37);
  sub_100012D04(a1, &v122 - v37, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v123 = v17;
    sub_1001A409C(v38, v27, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_100008D04(v122, qword_1003FAAB8);
    v50 = v27;
    sub_1001A3E54(v27, v25, type metadata accessor for CloudShareInfo);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v53 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v53 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v139);
      *(v53 + 12) = 2080;
      type metadata accessor for URL();
      sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_1001A3A5C(v25, type metadata accessor for CloudShareInfo);
      v57 = sub_10021145C(v54, v56, v139);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s - successfully shared BeneficiaryInfoRecord with URL - %s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001A3A5C(v25, type metadata accessor for CloudShareInfo);
    }

    v59 = v134;
    v60 = v50;
    if (v132)
    {
      sub_1001A3E54(v137, v32, type metadata accessor for BeneficiaryInfoRecord);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v139[0] = swift_slowAlloc();
        *v63 = 136315394;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v63 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v139);
        *(v63 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        sub_1001A3A5C(v32, type metadata accessor for BeneficiaryInfoRecord);
        v67 = sub_10021145C(v64, v66, v139);

        *(v63 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "%s - we removed the previous share, will send as new share for beneficiaryID - %s", v63, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001A3A5C(v32, type metadata accessor for BeneficiaryInfoRecord);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v90 = v126;
      if (Strong)
      {
        v91 = v127;
        v92 = v128;
        v93 = v129;
        (*(v128 + 16))(v127, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger, v129);
        Dependency.wrappedValue.getter();

        (*(v92 + 8))(v91, v93);
        v94 = *sub_1000080F8(v139, v140);
        v95 = v130;
        v96 = *(v130 + 20);
        v97 = type metadata accessor for UUID();
        v98 = &v123[v96];
        v99 = v123;
        (*(*(v97 - 8) + 16))(v98, v137, v97);
        sub_1001A3E54(v60, &v99[*(v95 + 24)], type metadata accessor for CloudShareInfo);
        *v99 = 1;
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        sub_100008D04(v122, qword_1003FAAA0);
        sub_1001A3E54(v99, v90, type metadata accessor for InheritanceAccessKeyMessage);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v138 = v103;
          *v102 = 136315138;
          v104 = sub_1001D9780();
          v106 = v105;
          sub_1001A3A5C(v90, type metadata accessor for InheritanceAccessKeyMessage);
          v107 = sub_10021145C(v104, v106, &v138);

          *(v102 + 4) = v107;
          _os_log_impl(&_mh_execute_header, v100, v101, "Created share accessKey message - %s.\nSending....", v102, 0xCu);
          sub_10000839C(v103);
        }

        else
        {

          sub_1001A3A5C(v90, type metadata accessor for InheritanceAccessKeyMessage);
        }

        v113 = sub_1000080F8((v94 + 16), *(v94 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v120 = v113;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v114 = v121;
          }

          else
          {
            v114 = &_swiftEmptySetSingleton;
          }

          v113 = v120;
        }

        else
        {
          v114 = &_swiftEmptySetSingleton;
        }

        v115 = *v113;
        v116 = v136;

        v117 = v123;
        sub_1002B43F0(v123, v131, v59, 0, 0, v114, v115, v135, v116);

        v112 = v117;
LABEL_42:
        sub_1001A3A5C(v112, type metadata accessor for InheritanceAccessKeyMessage);
        sub_1001A3A5C(v60, type metadata accessor for CloudShareInfo);
        return sub_10000839C(v139);
      }
    }

    else
    {
      swift_beginAccess();
      v68 = swift_weakLoadStrong();
      if (v68)
      {
        v69 = v127;
        v70 = v128;
        v71 = v129;
        (*(v128 + 16))(v127, v68 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger, v129);
        Dependency.wrappedValue.getter();

        (*(v70 + 8))(v69, v71);
        v72 = *sub_1000080F8(v139, v140);
        v73 = v130;
        v74 = *(v130 + 20);
        v75 = type metadata accessor for UUID();
        v76 = v125;
        (*(*(v75 - 8) + 16))(&v125[v74], v137, v75);
        sub_1001A3E54(v60, &v76[*(v73 + 24)], type metadata accessor for CloudShareInfo);
        *v76 = 2;
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        sub_100008D04(v122, qword_1003FAAA0);
        v77 = v124;
        sub_1001A3E54(v76, v124, type metadata accessor for InheritanceAccessKeyMessage);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = v77;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v138 = v82;
          *v81 = 136315138;
          v83 = v60;
          v84 = sub_1001D9780();
          v86 = v85;
          sub_1001A3A5C(v80, type metadata accessor for InheritanceAccessKeyMessage);
          v87 = v84;
          v60 = v83;
          v88 = sub_10021145C(v87, v86, &v138);

          *(v81 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v78, v79, "Created accessKey Changed message - %s.\nSending....", v81, 0xCu);
          sub_10000839C(v82);
          v59 = v134;
        }

        else
        {

          sub_1001A3A5C(v77, type metadata accessor for InheritanceAccessKeyMessage);
        }

        v108 = sub_1000080F8((v72 + 16), *(v72 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v118 = v108;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v109 = v119;
          }

          else
          {
            v109 = &_swiftEmptySetSingleton;
          }

          v108 = v118;
        }

        else
        {
          v109 = &_swiftEmptySetSingleton;
        }

        v110 = *v108;
        v111 = v136;

        sub_1002B4454(v76, v131, v59, 0, 0, v109, v110, v135, v111);

        v112 = v76;
        goto LABEL_42;
      }
    }

    return sub_1001A3A5C(v50, type metadata accessor for CloudShareInfo);
  }

  v39 = *v38;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100008D04(v40, qword_1003FAAB8);
  sub_1001A3E54(v137, v34, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v139[0] = swift_slowAlloc();
    *v43 = 136315650;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v43 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v139);
    *(v43 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_1001A3A5C(v34, type metadata accessor for BeneficiaryInfoRecord);
    v48 = sub_10021145C(v45, v47, v139);

    *(v43 + 14) = v48;
    *(v43 + 22) = 2112;
    v49 = _convertErrorToNSError(_:)();
    *(v43 + 24) = v49;
    *v44 = v49;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - failed to share BeneficiaryInfoRecord for beneficiaryID %s with error: %@", v43, 0x20u);
    sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v34, type metadata accessor for BeneficiaryInfoRecord);
  }

  swift_errorRetain();
  v135(v39);
}

uint64_t sub_10019C41C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22 - v6);
  sub_100012D04(a1, &v22 - v6, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v12 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v23);
      *(v12 + 12) = 2112;
      v15 = _convertErrorToNSError(_:)();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - failed to delete beneficiary record from cloud store: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    sub_100008D3C(v7, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v23);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - cloud store beneficiary record deleted successfully.", v20, 0xCu);
      sub_10000839C(v21);
    }

    return (a2)(0);
  }
}

uint64_t sub_10019C800()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__requestController;
  v6 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__securityManager;
  v8 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudSharingController;
  v10 = sub_100005814(&qword_1003E1060, &qword_1003445D8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger;
  v12 = sub_100005814(&qword_1003E1068, &unk_1003445E0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage;
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  sub_1001A2024(*(v0 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext));
  v15 = *(*v0 + 48);
  v16 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryAccessKeyRepairHandler()
{
  result = qword_1003E0F08;
  if (!qword_1003E0F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019CAD4()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003E2BE0, &qword_1003E0F80, &unk_100344570);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &qword_1003E0F88, &qword_1003E0F90, &unk_100343CF0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003E0F98, &unk_1003E0220, &unk_100344580);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10019CD78(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA58);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error saving record to CloudKit: %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
  }

  else
  {
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(v11, a5, v18);
    swift_storeEnumTagMultiPayload();
    a3(v11);
  }

  return sub_100008D3C(v11, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019CFF0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA58);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error saving record to CloudKit: %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
  }

  else
  {
    v18 = *(type metadata accessor for BeneficiaryInfoRecord() + 32);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v11, a5 + v18, v19);
    swift_storeEnumTagMultiPayload();
    a3(v11);
  }

  return sub_100008D3C(v11, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D274(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA58);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error saving record to CloudKit: %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
  }

  else
  {
    v18 = *(type metadata accessor for InheritanceInvitationRecord() + 36);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v11, a5 + v18, v19);
    swift_storeEnumTagMultiPayload();
    a3(v11);
  }

  return sub_100008D3C(v11, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D4F8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v23 - v12);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA58);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving record to CloudKit: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v13);
  }

  else
  {
    v20 = *(a6(0) + 28);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v13, a5 + v20, v21);
    swift_storeEnumTagMultiPayload();
    a3(v13);
  }

  return sub_100008D3C(v13, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10019D830;

  return sub_1001A077C(a5);
}

uint64_t sub_10019D830(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_10019D9C4;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_10019D95C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10019D95C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019D9C4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 16))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10019DA38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10019DA70()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[12] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = *(v0 + v11 + 8);

  v16 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10019DC74(int a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_10019B000(a1, v7, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_10019DD34()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_10019DF24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000082A8;

  return sub_10019D784(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

void sub_10019E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 36)), *(a1 + *(v5 + 36) + 8));
  if (!v14)
  {
    v14 = sub_10017DBB8(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F3E8C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianRecoveryInfoRecord);
  aBlock[4] = sub_1001A3C8C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACB50;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_10019E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianHealthRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D624(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000ECC30(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianHealthRecord);
  aBlock[4] = sub_1001A3E24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACBA0;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10019E6D0(uint64_t a1)
{
  v1[19] = a1;
  v3 = type metadata accessor for UUID();
  v1[20] = v3;
  v4 = *(v3 - 8);
  v1[21] = v4;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for CustodianRecoveryInfoRecord();
  v1[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[28] = v8;
  *v8 = v1;
  v8[1] = sub_10019E818;

  return sub_1001326E8(a1);
}

uint64_t sub_10019E818(uint64_t a1)
{
  v3 = *(*v2 + 224);
  v4 = *v2;
  v4[29] = a1;

  if (v1)
  {
    v6 = v4[26];
    v5 = v4[27];
    v8 = v4[24];
    v7 = v4[25];
    v9 = v4[22];

    v10 = v4[1];

    return v10(0);
  }

  else
  {

    return _swift_task_switch(sub_10019E998, 0, 0);
  }
}

uint64_t sub_10019E998()
{
  v61 = v0;
  v1 = v0[29];
  if (v1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = v0[27];
    v3 = v0[19];
    v4 = type metadata accessor for Logger();
    v0[30] = sub_100008D04(v4, qword_1003FAA58);
    sub_1001A3E54(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[27];
    v10 = &unk_1003D3000;
    if (v8)
    {
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v60 = v14;
      *v12 = 138412546;
      v15 = [v5 recordID];
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      v16 = v9 + *(v11 + 20);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      sub_1001A3A5C(v9, type metadata accessor for CustodianRecoveryInfoRecord);
      v20 = sub_10021145C(v17, v19, &v60);
      v10 = &unk_1003D3000;

      *(v12 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v6, v7, "Existing CKShare found, now deleting the existing CKShare, recordID: %@, zoneName: %s", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);
    }

    else
    {

      sub_1001A3A5C(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(v0[19] + *(v0[23] + 40)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v43 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v43 = &qword_1003FA9C0;
    }

    v44 = *v43;
    v45 = v43[1];

    v46 = sub_1002E2BC4(v44, v45);

    v47 = [v46 privateCloudDatabase];
    v0[31] = v47;

    v48 = [v5 v10[395]];
    v0[32] = v48;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019F114;
    v49 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E1058, &qword_1003445D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000B070;
    v0[13] = &unk_1003ACB00;
    v0[14] = v49;
    [v47 deleteRecordWithID:v48 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v21 = v0[25];
    v22 = v0[26];
    v23 = v0[19];
    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1001A3E54(v23, v22, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001A3E54(v23, v21, type metadata accessor for CustodianRecoveryInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[25];
    v29 = v0[26];
    if (v27)
    {
      v58 = v0[23];
      v59 = v26;
      v31 = v0[21];
      v30 = v0[22];
      v32 = v0[20];
      v33 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v33 = 136315394;
      (*(v31 + 16))(v30, v29, v32);
      sub_1001A3A5C(v29, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = sub_10021145C(v34, v36, &v60);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = v28 + *(v58 + 20);
      v39 = UUID.uuidString.getter();
      v41 = v40;
      sub_1001A3A5C(v28, type metadata accessor for CustodianRecoveryInfoRecord);
      v42 = sub_10021145C(v39, v41, &v60);

      *(v33 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v25, v59, "Did not find a CKShareRecord %s for zone %s when attempt to remove existing share", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001A3A5C(v0[26], type metadata accessor for CustodianRecoveryInfoRecord);

      sub_1001A3A5C(v28, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v51 = v0[26];
    v50 = v0[27];
    v53 = v0[24];
    v52 = v0[25];
    v54 = v0[22];

    v55 = v0[1];
    v56 = v0[29] != 0;

    return v55(v56);
  }
}

uint64_t sub_10019F114()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1001A41C4;
  }

  else
  {
    v3 = sub_10019F224;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019F224()
{
  v32 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);

  sub_1001A3E54(v5, v4, type metadata accessor for CustodianRecoveryInfoRecord);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  if (v9)
  {
    v12 = *(v0 + 184);
    v30 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v13 = 138412546;
    v16 = [v10 recordID];
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2080;
    v17 = v11 + *(v12 + 20);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_1001A3A5C(v11, type metadata accessor for CustodianRecoveryInfoRecord);
    v21 = sub_10021145C(v18, v20, &v31);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removed existing CKShareRecord %@ for zone %s when attempt to remove existing share", v13, 0x16u);
    sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v15);
  }

  else
  {

    sub_1001A3A5C(v11, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v23 = *(v0 + 208);
  v22 = *(v0 + 216);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v26 = *(v0 + 176);

  v27 = *(v0 + 8);
  v28 = *(v0 + 232) != 0;

  return v27(v28);
}

void sub_10019F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 44)), *(a1 + *(v5 + 44) + 8));
  if (!v14)
  {
    v14 = sub_10017D094();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F0774(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianRecord);
  aBlock[4] = sub_1001A4104;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACBF0;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

id sub_10019F7F0(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-1] - v5;
  (*(v3 + 16))(&v18[-1] - v5, a1 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__accountStore, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v7 = [*(*sub_1000080F8(v18 v18[3]) + 16)];
  if (v7 && (v8 = v7, v9 = [v7 aa_altDSID], v8, v9))
  {
    sub_10000839C(v18);
    v10 = [objc_allocWithZone(AKInheritanceContext) initWithOwnerAltDSID:v9];

    return v10;
  }

  else
  {
    sub_10000839C(v18);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - error creating inheritance context. No altDSID for owner found.", v15, 0xCu);
      sub_10000839C(v16);
    }

    return 0;
  }
}

void sub_10019FAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for BeneficiaryInfoRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 36)), *(a1 + *(v5 + 36) + 8));
  if (!v14)
  {
    v14 = sub_10017D448(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001E5D58(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BeneficiaryInfoRecord);
  aBlock[4] = sub_1001A2DE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AC970;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_10019FDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for BenefactorInfoRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D26C(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001E2B8C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BenefactorInfoRecord);
  aBlock[4] = sub_1001A3318;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACA38;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1001A0114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for InheritanceInvitationRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 40)), *(a1 + *(v5 + 40) + 8));
  if (!v14)
  {
    v14 = sub_10017DD94(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001EE71C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for InheritanceInvitationRecord);
  aBlock[4] = sub_1001A3518;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACA88;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1001A0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for InheritanceHealthRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D9DC(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001EAE54(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for InheritanceHealthRecord);
  aBlock[4] = sub_1001A31BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AC9E8;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1001A077C(uint64_t a1)
{
  v1[19] = a1;
  v3 = type metadata accessor for UUID();
  v1[20] = v3;
  v4 = *(v3 - 8);
  v1[21] = v4;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v1[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[28] = v8;
  *v8 = v1;
  v8[1] = sub_1001A08C4;

  return sub_1001376F4(a1);
}

uint64_t sub_1001A08C4(uint64_t a1)
{
  v3 = *(*v2 + 224);
  v4 = *v2;
  v4[29] = a1;

  if (v1)
  {
    v6 = v4[26];
    v5 = v4[27];
    v8 = v4[24];
    v7 = v4[25];
    v9 = v4[22];

    v10 = v4[1];

    return v10(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A0A44, 0, 0);
  }
}

uint64_t sub_1001A0A44()
{
  v59 = v0;
  v1 = v0[29];
  if (v1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = v0[27];
    v3 = v0[19];
    v4 = type metadata accessor for Logger();
    v0[30] = sub_100008D04(v4, qword_1003FAA58);
    sub_1001A3E54(v3, v2, type metadata accessor for BeneficiaryInfoRecord);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[27];
    v10 = &unk_1003D3000;
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v58 = v13;
      *v11 = 138412546;
      v14 = [v5 recordID];
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 2080;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      sub_1001A3A5C(v9, type metadata accessor for BeneficiaryInfoRecord);
      v18 = v15;
      v10 = &unk_1003D3000;
      v19 = sub_10021145C(v18, v17, &v58);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Existing CKShare found, now deleting the existing CKShare, recordID: %@, zoneName: %s", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    else
    {

      sub_1001A3A5C(v9, type metadata accessor for BeneficiaryInfoRecord);
    }

    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(v0[19] + *(v0[23] + 40)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v42 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v42 = &qword_1003FA9F0;
    }

    v43 = *v42;
    v44 = v42[1];

    v45 = sub_1002E2BC4(v43, v44);

    v46 = [v45 privateCloudDatabase];
    v0[31] = v46;

    v47 = [v5 v10[395]];
    v0[32] = v47;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001A11A8;
    v48 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E1058, &qword_1003445D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000B070;
    v0[13] = &unk_1003AC740;
    v0[14] = v48;
    [v46 deleteRecordWithID:v47 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v20 = v0[25];
    v21 = v0[26];
    v22 = v0[19];
    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    sub_1001A3E54(v22, v21, type metadata accessor for BeneficiaryInfoRecord);
    sub_1001A3E54(v22, v20, type metadata accessor for BeneficiaryInfoRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[25];
    v28 = v0[26];
    if (v26)
    {
      v57 = v25;
      v29 = v0[22];
      v30 = v0[23];
      v32 = v0[20];
      v31 = v0[21];
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v33 = 136315394;
      (*(v31 + 16))(v29, v28 + *(v30 + 32), v32);
      sub_1001A3A5C(v28, type metadata accessor for BeneficiaryInfoRecord);
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v31 + 8))(v29, v32);
      v37 = sub_10021145C(v34, v36, &v58);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      sub_1001A3A5C(v27, type metadata accessor for BeneficiaryInfoRecord);
      v41 = sub_10021145C(v38, v40, &v58);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v24, v57, "Did not find a CKShareRecord %s for zone %s when attempt to remove existing share", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001A3A5C(v0[26], type metadata accessor for BeneficiaryInfoRecord);

      sub_1001A3A5C(v27, type metadata accessor for BeneficiaryInfoRecord);
    }

    v50 = v0[26];
    v49 = v0[27];
    v52 = v0[24];
    v51 = v0[25];
    v53 = v0[22];

    v54 = v0[1];
    v55 = v0[29] != 0;

    return v54(v55);
  }
}

uint64_t sub_1001A11A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1001A1544;
  }

  else
  {
    v3 = sub_1001A12B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A12B8()
{
  v30 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);

  sub_1001A3E54(v5, v4, type metadata accessor for BeneficiaryInfoRecord);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  if (v9)
  {
    v28 = *(v0 + 248);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 138412546;
    v15 = [v10 recordID];
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2080;
    v16 = UUID.uuidString.getter();
    v18 = v17;
    sub_1001A3A5C(v11, type metadata accessor for BeneficiaryInfoRecord);
    v19 = sub_10021145C(v16, v18, &v29);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removed existing CKShareRecord %@ for zone %s when attempt to remove existing share", v12, 0x16u);
    sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v14);
  }

  else
  {

    sub_1001A3A5C(v11, type metadata accessor for BeneficiaryInfoRecord);
  }

  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 176);

  v25 = *(v0 + 8);
  v26 = *(v0 + 232) != 0;

  return v25(v26);
}

uint64_t sub_1001A1544()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error deleting zone share from CloudKit: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[33];
  v11 = v0[31];
  v12 = v0[29];

  swift_willThrow();
  v13 = v0[33];
  v15 = v0[26];
  v14 = v0[27];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[22];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_1001A1714()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = v2 + v20;
  v11 = (v2 + v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v3 + v1[12] + 8);

  v15 = *(v3 + v1[14] + 8);

  v16 = *(v0 + v13 + 8);

  v17 = *(v0 + v11);

  v18 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A1920(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_10019B34C(a1, v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8));
}

uint64_t sub_1001A19EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A1A34()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[14] + 8);

  v14 = *(v0 + v10);

  v15 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A1C2C(void *a1, char a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v8 + 8);
  v13 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100196180(a1, a2 & 1, v9, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_1001A1CF8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[12] + 8);

  v15 = *(v4 + v1[14] + 8);

  v16 = *(v0 + v13);

  return _swift_deallocObject(v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A1F04(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100199768(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A1FD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

void sub_1001A2024(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1001A2034(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001A2044()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v25 = *(*(v1 - 1) + 64);
  v23 = (v25 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v2 + v24 + 8) & ~v2;
  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = *(v4 + v1[5] + 8);

  v9 = *(v4 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v4 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  v11 = *(v6 + 48);
  if (!v11(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v12 = *(v4 + v1[12] + 8);

  v13 = *(v4 + v1[14] + 8);

  v14 = *(v0 + v23 + 8);

  v15 = *(v0 + v24);

  v16 = v0 + v26;
  v7(v0 + v26, v5);
  v17 = *(v0 + v26 + v1[5] + 8);

  v18 = *(v0 + v26 + v1[6] + 8);

  sub_100012324(*(v16 + v1[7]), *(v16 + v1[7] + 8));
  v7(v0 + v26 + v1[8], v5);
  sub_100012324(*(v16 + v1[9]), *(v16 + v1[9] + 8));
  v19 = v1[11];
  if (!v11(v0 + v26 + v19, 1, v5))
  {
    v7(v16 + v19, v5);
  }

  v20 = *(v16 + v1[12] + 8);

  v21 = *(v16 + v1[14] + 8);

  return _swift_deallocObject(v0, ((v26 + v25) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001A2324(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = v9 + v6;
  v11 = v1 + v7;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v10);
  v16 = *(v1 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1001972B8(a1, v1 + v5, v12, v13, v14, v1 + v9, v15, v16);
}

unint64_t sub_1001A23F4()
{
  result = qword_1003E10B0;
  if (!qword_1003E10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E10B0);
  }

  return result;
}

uint64_t sub_1001A2448()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 33) & ~v2;
  v26 = *(*(v1 - 1) + 64) + 7;
  v25 = (v26 + v3) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v2 + v25 + 8) & ~v2;
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v5 + v1[5] + 8);

  v10 = *(v5 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v5 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  v12 = *(v7 + 48);
  if (!v12(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  v15 = *(v0 + v25);

  v16 = v0 + v27;
  v8(v0 + v27, v6);
  v17 = *(v0 + v27 + v1[5] + 8);

  v18 = *(v0 + v27 + v1[6] + 8);

  sub_100012324(*(v16 + v1[7]), *(v16 + v1[7] + 8));
  v8(v0 + v27 + v1[8], v6);
  sub_100012324(*(v16 + v1[9]), *(v16 + v1[9] + 8));
  v19 = v1[11];
  if (!v12(v0 + v27 + v19, 1, v6))
  {
    v8(v16 + v19, v6);
  }

  v20 = (v26 + v27) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v16 + v1[12] + 8);

  v22 = *(v16 + v1[14] + 8);

  v23 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A2728(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 33) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  sub_1001978BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v5), *(v1 + v7), v1 + v8, *(v1 + ((v6 + v8) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + v8) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + v8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A27F8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v2 + v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v1[12] + 8);

  v12 = *(v3 + v1[14] + 8);

  v13 = *(v0 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v14 = *(v0 + v10);

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A29F0(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10019A400(a1, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1001A2AAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001A2AEC()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A2CE4(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);

  return sub_100197CC4(a1, v7, v8, v9, v1 + v4, v11, v12);
}

uint64_t sub_1001A2D98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001A2DD0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_10019C41C(a1, *(v1 + 16));
}

uint64_t sub_1001A2E0C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = *(v4 + v1[12] + 8);

  v12 = *(v4 + v1[14] + 8);

  return _swift_deallocObject(v0, v2 + v14);
}

uint64_t sub_1001A2FDC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100198054(a1, v4, v5, v6);
}

uint64_t sub_1001A3050()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v7(v0 + v2 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A31E8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = *(v0 + v2 + v1[7] + 8);

  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A33C8()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = *(v0 + v2 + v1[7] + 8);

  v8 = *(v0 + v2 + v1[8] + 8);

  v9 = *(v0 + v2 + v1[9] + 8);

  v6(v0 + v2 + v1[11], v5);
  sub_100012324(*(v0 + v2 + v1[12]), *(v0 + v2 + v1[12] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

void sub_1001A35E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianshipInfoRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D800(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F8C14(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianshipInfoRecord);
  aBlock[4] = sub_1001A3A44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACAD8;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1001A3914()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[7], v5);
  v7 = *(v0 + v2 + v1[8] + 8);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A3ABC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);
  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v6 + 48))(v4 + v11, 1, v5))
  {
    v7(v4 + v11, v5);
  }

  v12 = *(v4 + v1[12] + 8);

  return _swift_deallocObject(v0, v2 + v14);
}

uint64_t sub_1001A3CA4()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[5], v5);
  v7 = v1[6];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[7]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A3E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A3EBC()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v8(v0 + v2 + v1[5], v6);
  v9 = *(v0 + v2 + v1[6] + 8);

  v10 = *(v0 + v2 + v1[7] + 8);

  v11 = *(v0 + v2 + v1[8] + 8);

  v12 = (v0 + v2 + v1[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100012324(*v12, v13);
  }

  sub_100012324(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v14 = *(v5 + v1[13] + 8);

  v15 = *(v5 + v1[14] + 8);

  v16 = v1[16];
  if (!(*(v7 + 48))(v5 + v16, 1, v6))
  {
    v8(v5 + v16, v6);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A409C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A41F0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;

      sub_1001669E4(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_1001A4278(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002E02EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      sub_100005814(&qword_1003E12A8, &qword_100344710);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E02EC((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1001A43B8()
{
  type metadata accessor for BeneficiaryHealthCheck();
  sub_100005814(&unk_1003E1278, &unk_1003446C0);
  result = String.init<A>(describing:)();
  qword_1003E10D0 = result;
  *algn_1003E10D8 = v1;
  return result;
}

void sub_1001A440C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  __chkstk_darwin(v16);
  v73 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v71 = *(v19 - 8);
  v72 = v19;
  v20 = *(v71 + 64);
  __chkstk_darwin(v19);
  v70 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_1003D7F48 == -1)
    {
LABEL_11:
      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAAB8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315138;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v34 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
        _os_log_impl(&_mh_execute_header, v32, v33, "%s - Self is nil. Aborting.", v34, 0xCu);
        sub_10000839C(v35);
      }

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_11;
  }

  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76 = a1;
      aBlock[0] = v26;
      *v25 = 136315394;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v27 = String.init<A>(describing:)();
      v29 = sub_10021145C(v27, v28, aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v25 + 14) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching beneficiaries error: %s. Aborting %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    sub_1001A4E94();
    v30 = a1;
    goto LABEL_30;
  }

  v69 = v15;
  v36 = *(a1 + 16);
  if (v36)
  {
    v67 = a4;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v64 = v16;
    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAB8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v68 = a5;
    v66 = v11;
    v65 = v12;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v36;
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v38, v39, "%s - performing health check on %ld beneficiaries", v41, 0x16u);
      sub_10000839C(v42);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v48 = dispatch_group_create();
    v49 = sub_1001AEB84(*(*(Strong + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) + 16), v36);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = 0;
    v52 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      sub_1001A4FA0(a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51++, Strong, v49, v48, v50, a6);
      if (v53 == v36)
      {
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v55 = v70;
        v54 = v71;
        v56 = v72;
        (*(v71 + 104))(v70, enum case for DispatchQoS.QoSClass.default(_:), v72);
        v57 = static OS_dispatch_queue.global(qos:)();
        (*(v54 + 8))(v55, v56);
        v58 = swift_allocObject();
        v59 = v68;
        v58[2] = v67;
        v58[3] = v59;
        v58[4] = v50;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v58;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003ACD58;
        v60 = _Block_copy(aBlock);

        v61 = v73;
        static DispatchQoS.unspecified.getter();
        v76 = _swiftEmptyArrayStorage;
        sub_1001B271C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v62 = v69;
        v63 = v66;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v60);

        (*(v65 + 8))(v62, v63);
        (*(v74 + 8))(v61, v64);

        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100008D04(v43, qword_1003FAAB8);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v46 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "%s - no beneficiaries found. Skipping Beneficiary Health Check", v46, 0xCu);
    sub_10000839C(v47);
  }

  sub_1001A4E94();
  v30 = 0;
LABEL_30:
  a4(v30);
LABEL_36:
}

void sub_1001A4E94()
{
  if (*(*(v0 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "idMS has MORE number of beneficiaries registered.", v3, 2u);
    }
  }
}

void sub_1001A4FA0(uint64_t a1, void *a2, char *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v71 = a3;
  v68 = a6;
  v69 = a5;
  v73 = a4;
  v70 = a1;
  v7 = type metadata accessor for BeneficiaryInfoRecord();
  v8 = v7 - 8;
  v65 = *(v7 - 8);
  v9 = *(v65 + 64);
  v10 = __chkstk_darwin(v7);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v11;
  __chkstk_darwin(v10);
  v67 = &v62 - v12;
  v13 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v62 - v25;
  v27 = *(v23 + 16);
  v72 = a2;
  v27(&v62 - v25, a2 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__analyticsEventFactory, v22);
  Dependency.wrappedValue.getter();
  (*(v23 + 8))(v26, v22);
  v28 = v70;
  v29 = objc_allocWithZone(type metadata accessor for InheritanceHealthCheckAnalyticsEvent());
  v30 = sub_10024CFF0();
  sub_10000839C(v74);
  *&v30[qword_1003E3FD8] = v71;
  dispatch_group_enter(v73);
  if (*(v28 + *(v8 + 28) + 8))
  {
    v31 = v72;
    (*(v18 + 16))(v21, v72 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol, v17);
    Dependency.wrappedValue.getter();
    (*(v18 + 8))(v21, v17);
    v32 = sub_1000080F8(v74, v74[3]);
    v33 = v31;
    v34 = *(v31 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData);
    v36 = v63;
    v35 = v64;
    (*(v63 + 16))(v16, v33 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__securityController, v64);

    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v16, v35);
    v37 = v74[6];
    v38 = *v32;
    v71 = v30;
    v39 = v68;
    sub_100166388(v28, v34, v37, v38, v71, &off_1003B0F58, v68);

    swift_unknownObjectRelease();
    sub_10000839C(v74);
    v40 = v67;
    sub_1001B2990(v28, v67, type metadata accessor for BeneficiaryInfoRecord);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = (v66 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v30;
    v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = v28;
    v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    sub_1001AF9BC(v40, v47 + v41, type metadata accessor for BeneficiaryInfoRecord);
    *(v47 + v42) = v69;
    v48 = v73;
    *(v47 + v44) = v73;
    v30 = v43;
    *(v47 + v46) = v39;

    v49 = v48;
    sub_1001AC958(v45, v71, sub_1001AF020, v47, v72);
  }

  else
  {
    v50 = v62;
    v51 = v73;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAAB8);
    sub_1001B2990(v28, v50, type metadata accessor for BeneficiaryInfoRecord);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v30;
      v57 = swift_slowAlloc();
      v74[0] = v57;
      *v55 = 136315138;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      sub_1001B29F8(v50, type metadata accessor for BeneficiaryInfoRecord);
      v61 = sub_10021145C(v58, v60, v74);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Handle is nil. BeneficiaryID:%s does not require health check", v55, 0xCu);
      sub_10000839C(v57);
      v30 = v56;
    }

    else
    {

      sub_1001B29F8(v50, type metadata accessor for BeneficiaryInfoRecord);
    }

    dispatch_group_leave(v51);
    sub_10024D10C();
  }
}

void sub_1001A56AC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_1001B2990(a2, v11, type metadata accessor for BeneficiaryInfoRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v15 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v27);
      *(v15 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1001B29F8(v11, type metadata accessor for BeneficiaryInfoRecord);
      v19 = sub_10021145C(v16, v18, v27);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - failed for beneficiary - %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v11, type metadata accessor for BeneficiaryInfoRecord);
    }

    swift_beginAccess();
    v25 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v27);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s completed.", v23, 0xCu);
      sub_10000839C(v24);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1001A5AD0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__cloudStorage;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__securityController;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accessKeyRepairHandler;
  v8 = sub_100005814(&unk_1003E1298, &unk_100344700);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__akAccountManager;
  v12 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__analyticsEventFactory;
  v14 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol;
  v16 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(v0 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData);

  v18 = *(*v0 + 48);
  v19 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryHealthCheck()
{
  result = qword_1003E1150;
  if (!qword_1003E1150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A5DF0()
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &qword_1003E1180, &qword_1003E1188, &unk_100346930);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_10000DA14();
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &qword_1003E1190, &unk_1003E1198, &qword_100344650);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
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

uint64_t sub_1001A60D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001A611C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1001A616C()
{
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E1188, &unk_100346930);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E1198, &qword_100344650);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData;
  *(v0 + v1) = sub_10030866C(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1001A6374(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a8;
  v81 = a7;
  v84 = a6;
  v85 = a3;
  v87 = a4;
  v88 = a5;
  v86 = a2;
  v89 = a1;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v82 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v79 = &v74 - v11;
  v76 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v75 = *(v76 - 8);
  v12 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v74 - v13;
  v14 = type metadata accessor for InheritanceInvitationRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v77 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = &v74 - v18;
  v19 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v74 - v24;
  v26 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v74 - v28);
  sub_100012D04(v89, &v74 - v28, &qword_1003E1288, &unk_10034A3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAB8);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v34 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v90);
      *(v34 + 12) = 2080;
      v91 = v30;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, v90);

      *(v34 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - error fetching InheritanceInvitationRecord. Abandoning Health Check - %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    ObjectType = swift_getObjectType();
    type metadata accessor for InheritanceError(0);
    v90[0] = 2103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v91;
    _convertErrorToNSError(_:)();

    v40 = (*(v85 + 24))(v90, ObjectType);
    v42 = v41;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v73 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40(v90, 0);
    swift_errorRetain();
    v87(v30);
  }

  else
  {
    sub_1001AF510(v29, v25);
    sub_100012D04(v25, v23, &qword_1003E4F40, &unk_1003446D0);
    if ((*(v15 + 48))(v23, 1, v14) == 1)
    {
      sub_100008D3C(v23, &qword_1003E4F40, &unk_1003446D0);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAAB8);
      v45 = v82;
      sub_1001B2990(v84, v82, type metadata accessor for BeneficiaryInfoRecord);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v90[0] = swift_slowAlloc();
        *v48 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v90);
        *(v48 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        sub_1001B29F8(v45, type metadata accessor for BeneficiaryInfoRecord);
        v52 = sub_10021145C(v49, v51, v90);

        *(v48 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "%s - skipping Health Check for Beneficiary - %s", v48, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001B29F8(v45, type metadata accessor for BeneficiaryInfoRecord);
      }

      *(v86 + qword_1003E3FE0) = 1;
      sub_10024D10C();
      v87(0);
    }

    else
    {
      v53 = v15;
      v54 = v83;
      sub_1001AF9BC(v23, v83, type metadata accessor for InheritanceInvitationRecord);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v56 = v75;
        v57 = v74;
        v58 = v76;
        (*(v75 + 16))(v74, Strong + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v76);
        Dependency.wrappedValue.getter();

        (*(v56 + 8))(v57, v58);
        v89 = sub_1000080F8(v90, v90[3]);
        v59 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v60 = v79;
        sub_1001B2990(v84, v79, type metadata accessor for BeneficiaryInfoRecord);
        v82 = type metadata accessor for InheritanceInvitationRecord;
        v61 = v77;
        sub_1001B2990(v54, v77, type metadata accessor for InheritanceInvitationRecord);
        v62 = (*(v78 + 80) + 16) & ~*(v78 + 80);
        v63 = (v9 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
        v81 = v25;
        v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
        v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
        v66 = (*(v53 + 80) + v65 + 8) & ~*(v53 + 80);
        v67 = swift_allocObject();
        sub_1001AF9BC(v60, v67 + v62, type metadata accessor for BeneficiaryInfoRecord);
        v68 = (v67 + v63);
        v69 = v85;
        *v68 = v86;
        v68[1] = v69;
        v70 = (v67 + v64);
        v71 = v88;
        *v70 = v87;
        v70[1] = v71;
        *(v67 + v65) = v59;
        sub_1001AF9BC(v61, v67 + v66, type metadata accessor for InheritanceInvitationRecord);
        *(v67 + ((v16 + v66 + 7) & 0xFFFFFFFFFFFFFFF8)) = v80;
        v72 = *v89;
        swift_unknownObjectRetain();

        sub_10021CBFC(v84, sub_1001AF884, v67);

        sub_1001B29F8(v83, v82);
        sub_100008D3C(v81, &qword_1003E4F40, &unk_1003446D0);

        return sub_10000839C(v90);
      }

      sub_1001B29F8(v54, type metadata accessor for InheritanceInvitationRecord);
    }

    return sub_100008D3C(v25, &qword_1003E4F40, &unk_1003446D0);
  }
}

uint64_t sub_1001A6F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a4;
  v11 = type metadata accessor for InheritanceHealthRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v37 - v21);
  sub_100012D04(a1, &v37 - v21, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    sub_1001B2990(a2, v18, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = a3;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v28 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v42);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1001B29F8(v18, type metadata accessor for BeneficiaryInfoRecord);
      v32 = sub_10021145C(v29, v31, v42);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      v41 = v23;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v33 = String.init<A>(describing:)();
      v35 = sub_10021145C(v33, v34, v42);

      *(v28 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s - failed to fetch InheritanceHealthRecord for %s. Error :- %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v18, type metadata accessor for BeneficiaryInfoRecord);
    }

    *(v27 + qword_1003E3FE8) = 1;
    sub_10024D10C();
    swift_errorRetain();
    v39(v23);
  }

  else
  {
    sub_1001AF9BC(v22, v14, type metadata accessor for InheritanceHealthRecord);
    *(a3 + qword_1003E4000) = sub_1001E9D7C();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001A7400(a2, v38, v14, a3, v37, v39, v40);
    }

    return sub_1001B29F8(v14, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_1001A7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v34 = a4;
  v35 = a5;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v36 = *v7;
  v9 = type metadata accessor for InheritanceHealthRecord();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9 - 8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InheritanceInvitationRecord();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1001B2990(v31, v17, type metadata accessor for BeneficiaryInfoRecord);
  sub_1001B2990(v32, v13, type metadata accessor for InheritanceInvitationRecord);
  sub_1001B2990(a3, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = (v16 + *(v29 + 80) + v19) & ~*(v29 + 80);
  v21 = (v12 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v35;
  v23[2] = v34;
  v23[3] = v24;
  v23[4] = v18;
  sub_1001AF9BC(v17, v23 + v19, type metadata accessor for BeneficiaryInfoRecord);
  sub_1001AF9BC(v13, v23 + v20, type metadata accessor for InheritanceInvitationRecord);
  sub_1001AF9BC(v28, v23 + v21, type metadata accessor for InheritanceHealthRecord);
  v25 = (v23 + v22);
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  swift_unknownObjectRetain();

  sub_1001AAB60(v30, sub_1001AFE10, v23);
}

uint64_t sub_1001A7794(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v145 = a7;
  v144 = a6;
  v155 = a5;
  v163 = a4;
  v164 = a3;
  v158 = a2;
  v147 = type metadata accessor for InheritanceInvitationMessage();
  v8 = *(*(v147 - 8) + 64);
  v9 = __chkstk_darwin(v147);
  v148 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v156 = &v140 - v11;
  v151 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v149 = *(v151 - 8);
  v12 = *(v149 + 64);
  __chkstk_darwin(v151);
  v150 = &v140 - v13;
  v154 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v153 = *(v154 - 8);
  v14 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = &v140 - v15;
  v160 = type metadata accessor for InheritanceInvitationRecord();
  v159 = *(v160 - 8);
  v16 = *(v159 + 64);
  v17 = __chkstk_darwin(v160);
  v146 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v157 = &v140 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v140 - v22;
  __chkstk_darwin(v21);
  v25 = &v140 - v24;
  v161 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  v26 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v162 = (&v140 - v27);
  v165 = type metadata accessor for UUID();
  v28 = *(v165 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v165);
  v32 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v140 - v33;
  v35 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v140 - v37);
  sub_100012D04(a1, &v140 - v37, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001AF9BC(v38, v25, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    v54 = sub_100008D04(v53, qword_1003FAAB8);
    v55 = *(v28 + 16);
    v56 = v165;
    v143 = v28 + 16;
    v142 = v55;
    v55(v32, v158, v165);
    sub_1001B2990(v25, v23, type metadata accessor for InheritanceInvitationRecord);
    v158 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v25;
      v60 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *v60 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v60 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v168);
      *(v60 + 12) = 2080;
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v28 + 8))(v32, v165);
      v64 = sub_10021145C(v61, v63, &v168);

      *(v60 + 14) = v64;
      *(v60 + 22) = 2048;
      v65 = v160;
      v66 = *&v23[*(v160 + 32)];
      sub_1001B29F8(v23, type metadata accessor for InheritanceInvitationRecord);
      *(v60 + 24) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s - inheritanceInvitationRecord for beneficiaryID - %s is in %ld status", v60, 0x20u);
      swift_arrayDestroy();

      v25 = v59;
    }

    else
    {
      sub_1001B29F8(v23, type metadata accessor for InheritanceInvitationRecord);

      (*(v28 + 8))(v32, v56);
      v65 = v160;
    }

    v67 = *&v25[*(v65 + 32)];
    v68 = v157;
    if ((v67 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v69 = v162;
      sub_1001B2990(v25, v162, type metadata accessor for InheritanceInvitationRecord);
      (*(v159 + 56))(v69, 0, 1, v65);
    }

    else
    {
      if (v67 == 1)
      {
        v70 = v153;
        v71 = v152;
        v72 = v154;
        (*(v153 + 16))(v152, v155 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore, v154);
        Dependency.wrappedValue.getter();
        (*(v70 + 8))(v71, v72);
        v73 = [*(*sub_1000080F8(&v168 v169) + 16)];
        if (v73)
        {
          v74 = v73;
          v75 = [v73 aa_altDSID];

          if (v75)
          {
            v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v154 = v76;

            sub_10000839C(&v168);
            sub_1001B2990(v25, v68, type metadata accessor for InheritanceInvitationRecord);
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v168 = v80;
              *v79 = 136315138;
              sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
              v81 = dispatch thunk of CustomStringConvertible.description.getter();
              v83 = v82;
              sub_1001B29F8(v68, type metadata accessor for InheritanceInvitationRecord);
              v84 = sub_10021145C(v81, v83, &v168);

              *(v79 + 4) = v84;
              _os_log_impl(&_mh_execute_header, v77, v78, "Beneficiary id %s is pending. Resending CK share...", v79, 0xCu);
              sub_10000839C(v80);
            }

            else
            {

              sub_1001B29F8(v68, type metadata accessor for InheritanceInvitationRecord);
            }

            ObjectType = swift_getObjectType();
            type metadata accessor for InheritanceError(0);
            v168 = 2106;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v95 = v167;
            _convertErrorToNSError(_:)();

            v96 = (*(v145 + 24))(&v168, ObjectType);
            v98 = v97;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v139 = *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v96(&v168, 0);
            sub_100005814(&unk_1003E03A0, &unk_1003436D0);
            Dependency.init(dependencyId:config:)();
            v99 = type metadata accessor for DaemonDestinationBuilder();
            v100 = swift_allocObject();
            Dependency.wrappedValue.getter();
            v101 = v168;
            v169 = v99;
            v170 = &off_1003A9008;
            v168 = v100;
            type metadata accessor for DaemonIDSMessenger();
            inited = swift_initStackObject();
            v103 = v169;
            v104 = sub_10003E968(&v168, v169);
            v105 = *(*(v103 - 8) + 64);
            __chkstk_darwin(v104);
            v107 = (&v140 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v108 + 16))(v107);
            inited[3] = *v107;
            v109 = inited + 3;
            inited[6] = v99;
            inited[7] = &off_1003A9008;
            inited[2] = v101;

            sub_10000839C(&v168);
            v110 = v147;
            v111 = v156;
            v142(&v156[*(v147 + 20)], v25, v165);
            *v111 = 4;
            v112 = &v111[*(v110 + 24)];
            v113 = v154;
            *v112 = v155;
            v112[1] = v113;
            v114 = v146;
            sub_1001B2990(v25, v146, type metadata accessor for InheritanceInvitationRecord);
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.info.getter();
            v117 = os_log_type_enabled(v115, v116);
            v141 = v25;
            if (v117)
            {
              v118 = v114;
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v167 = v120;
              *v119 = 136315138;
              v121 = sub_1001EEBA0();
              v165 = inited;
              v122 = v121;
              v124 = v123;
              sub_1001B29F8(v118, type metadata accessor for InheritanceInvitationRecord);
              v109 = inited + 3;
              inited = v165;
              v125 = sub_10021145C(v122, v124, &v167);

              *(v119 + 4) = v125;
              _os_log_impl(&_mh_execute_header, v115, v116, "invitation %s", v119, 0xCu);
              sub_10000839C(v120);
            }

            else
            {

              sub_1001B29F8(v114, type metadata accessor for InheritanceInvitationRecord);
            }

            v126 = v148;
            sub_1001B2990(v156, v148, type metadata accessor for InheritanceInvitationMessage);
            v127 = Logger.logObject.getter();
            v128 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v167 = v130;
              *v129 = 136315138;
              v131 = sub_1001DA768();
              v132 = v126;
              v134 = v133;
              sub_1001B29F8(v132, type metadata accessor for InheritanceInvitationMessage);
              v135 = sub_10021145C(v131, v134, &v167);

              *(v129 + 4) = v135;
              _os_log_impl(&_mh_execute_header, v127, v128, "invitationMessage %s", v129, 0xCu);
              sub_10000839C(v130);
            }

            else
            {

              sub_1001B29F8(v126, type metadata accessor for InheritanceInvitationMessage);
            }

            v25 = v141;
            v136 = v160;
            v137 = v156;
            sub_1002B3838(v156, *&v141[*(v160 + 20)], *&v141[*(v160 + 20) + 8], 0, 0, &_swiftEmptySetSingleton, inited);
            v138 = v162;
            sub_1001B2990(v25, v162, type metadata accessor for InheritanceInvitationRecord);
            (*(v159 + 56))(v138, 0, 1, v136);
            swift_storeEnumTagMultiPayload();
            v164(v138);
            swift_unknownObjectRelease();
            swift_setDeallocating();
            sub_10000839C(v109);

            sub_100008D3C(v138, &qword_1003E1288, &unk_10034A3E0);
            sub_1001B29F8(v137, type metadata accessor for InheritanceInvitationMessage);
            (*(v149 + 8))(v150, v151);
            return sub_1001B29F8(v25, type metadata accessor for InheritanceInvitationRecord);
          }
        }

        sub_10000839C(&v168);
      }

      v69 = v162;
      (*(v159 + 56))(v162, 1, 1, v65);
    }

    swift_storeEnumTagMultiPayload();
    v164(v69);
    sub_100008D3C(v69, &qword_1003E1288, &unk_10034A3E0);
    return sub_1001B29F8(v25, type metadata accessor for InheritanceInvitationRecord);
  }

  v39 = *v38;
  v168 = *v38;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100008D04(v85, qword_1003FAAB8);
    swift_errorRetain();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *v88 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v88 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v168);
      *(v88 + 12) = 2080;
      v167 = v39;
      swift_errorRetain();
      v89 = String.init<A>(describing:)();
      v91 = sub_10021145C(v89, v90, &v168);

      *(v88 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v86, v87, "%s - error fetching InheritanceInvitationRecord - %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v92 = v162;
    *v162 = v39;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v164(v92);
    goto LABEL_38;
  }

  v40 = v167;
  v168 = v167;
  v166 = 3;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v41 = v167;
  v166 = v167;
  v42 = static _BridgedStoredNSError.== infix(_:_:)();

  if ((v42 & 1) == 0)
  {

    goto LABEL_25;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100008D04(v43, qword_1003FAAB8);
  v44 = v165;
  (*(v28 + 16))(v34, v158, v165);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v168 = v158;
    *v47 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v47 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v168);
    *(v47 + 12) = 2080;
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v48 = v165;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v28 + 8))(v34, v48);
    v52 = sub_10021145C(v49, v51, &v168);

    *(v47 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s - there is no InheritanceInvitationRecord for beneficiaryID - %s.", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v28 + 8))(v34, v44);
  }

  v92 = v162;
  (*(v159 + 56))(v162, 1, 1, v160);
  swift_storeEnumTagMultiPayload();
  v164(v92);

LABEL_38:

  return sub_100008D3C(v92, &qword_1003E1288, &unk_10034A3E0);
}

void sub_1001A8DEC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v6 = String.init<A>(describing:)();
      v8 = sub_10021145C(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error sending IDS Message for Inheritance Invitation: %s", v4, 0xCu);
      sub_10000839C(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Sent the IDS message for Inheritance Invitation successfully.", v11, 2u);
    }
  }
}

uint64_t sub_1001A908C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v72 = a8;
  v73 = a5;
  v70 = a6;
  v71 = a3;
  v12 = a9;
  v13 = type metadata accessor for InheritanceInvitationRecord();
  v14 = *(v13 - 8);
  v67 = v13;
  v68 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v69 = v16;
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003E1298, &unk_100344700);
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  __chkstk_darwin(v18);
  v21 = &v58 - v20;
  v22 = type metadata accessor for InheritanceHealthRecord();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  __chkstk_darwin(v24);
  v28 = &v58 - v27;
  if (a1)
  {
    *(a2 + qword_1003E3FD0) = 1;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001A9794(v73, v70, a7, a2, v71, v72, a9);
    }
  }

  else
  {
    v61 = v26;
    v62 = v25;
    v65 = a2;
    *(a2 + qword_1003E3FD0) = 0;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    v64 = a7;
    sub_1001B2990(a7, v28, type metadata accessor for InheritanceHealthRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v31, v32);
    v63 = v17;
    if (v33)
    {
      v60 = a9;
      v34 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74[0] = v59;
      *v34 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v74);
      *(v34 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1001B29F8(v28, type metadata accessor for InheritanceHealthRecord);
      v38 = sub_10021145C(v35, v37, v74);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - marking beneficiary %s as not reachable, and attempting to re-share.", v34, 0x16u);
      swift_arrayDestroy();

      v12 = v60;
    }

    else
    {

      sub_1001B29F8(v28, type metadata accessor for InheritanceHealthRecord);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    v39 = v64;
    v40 = v65;
    if (result)
    {
      v41 = v66;
      v42 = v12;
      (*(v66 + 16))(v21, result + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accessKeyRepairHandler, v18);
      Dependency.wrappedValue.getter();

      (*(v41 + 8))(v21, v18);
      v60 = sub_1000080F8(v74, v74[3]);
      v43 = v70;
      v44 = (v70 + *(v67 + 20));
      v45 = *v44;
      v66 = v44[1];
      v67 = v45;
      v46 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v47 = v63;
      sub_1001B2990(v43, v63, type metadata accessor for InheritanceInvitationRecord);
      v48 = v62;
      sub_1001B2990(v39, v62, type metadata accessor for InheritanceHealthRecord);
      v49 = (*(v68 + 80) + 24) & ~*(v68 + 80);
      v50 = (v69 + *(v61 + 80) + v49) & ~*(v61 + 80);
      v51 = (v23 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = v46;
      sub_1001AF9BC(v47, v52 + v49, type metadata accessor for InheritanceInvitationRecord);
      sub_1001AF9BC(v48, v52 + v50, type metadata accessor for InheritanceHealthRecord);
      v53 = (v52 + v51);
      v55 = v71;
      v54 = v72;
      *v53 = v40;
      v53[1] = v55;
      v56 = (v52 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v56 = v54;
      v56[1] = v42;
      v57 = *v60;

      swift_unknownObjectRetain();

      sub_100198160(v73, v67, v66, sub_1001B2604, v52);

      return sub_10000839C(v74);
    }
  }

  return result;
}

uint64_t sub_1001A9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v131 = a2;
  v134 = a4;
  v135 = a7;
  v129 = a1;
  v9 = type metadata accessor for SHA256();
  v122 = *(v9 - 8);
  v123 = v9;
  v10 = *(v122 + 64);
  __chkstk_darwin(v9);
  v121 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v125 = *(v12 - 8);
  v126 = v12;
  v13 = *(v125 + 64);
  __chkstk_darwin(v12);
  v124 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for BeneficiaryInfoRecord();
  v15 = *(*(v120 - 8) + 64);
  v16 = __chkstk_darwin(v120);
  v119 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v127 = &v118 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InheritanceHealthRecord();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v130 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v128 = &v118 - v29;
  v30 = __chkstk_darwin(v28);
  v136 = &v118 - v31;
  __chkstk_darwin(v30);
  v33 = &v118 - v32;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAB8);
  sub_1001B2990(a3, v33, type metadata accessor for InheritanceHealthRecord);
  v137 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v118 = a3;
    v132 = v24;
    v133 = a6;
    v38 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v38 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v38 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
    *(v38 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    sub_1001B29F8(v33, type metadata accessor for InheritanceHealthRecord);
    v42 = sub_10021145C(v39, v41, v138);

    *(v38 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s - verifying beneficiary health record for beneficiaryID - %s", v38, 0x16u);
    swift_arrayDestroy();

    v24 = v132;
    a6 = v133;
    a3 = v118;
  }

  else
  {

    sub_1001B29F8(v33, type metadata accessor for InheritanceHealthRecord);
  }

  v43 = *(v24 + 20);
  Date.init(timeIntervalSince1970:)();
  sub_1001B271C(&qword_1003DB600, &type metadata accessor for Date);
  LOBYTE(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v20 + 8))(v23, v19);
  v44 = v136;
  if (v43)
  {
    v45 = v130;
    sub_1001B2990(a3, v130, type metadata accessor for InheritanceHealthRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v48 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
      *(v48 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_1001B29F8(v45, type metadata accessor for InheritanceHealthRecord);
      v52 = sub_10021145C(v49, v51, v138);

      *(v48 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s - beneficiary %s hasn't updated to a version that has Health Check enabled. Skipping Health Check.", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v45, type metadata accessor for InheritanceHealthRecord);
    }

    sub_10024D10C();
    return a6(0);
  }

  else if (sub_1001E9F40())
  {
    v53 = v129;
    v54 = v127;
    sub_1001B2990(v129, v127, type metadata accessor for BeneficiaryInfoRecord);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    v57 = os_log_type_enabled(v55, v56);
    v132 = v24;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v58 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v58 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
      *(v58 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v59 = v127;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      sub_1001B29F8(v59, type metadata accessor for BeneficiaryInfoRecord);
      v63 = sub_10021145C(v60, v62, v138);

      *(v58 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "%s - beneficiary %s has checked in recently, continue health check.", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v54, type metadata accessor for BeneficiaryInfoRecord);
    }

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    v82 = os_log_type_enabled(v80, v81);
    v133 = a6;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v138[0] = v84;
      *v83 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      v85 = a3;
      *(v83 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
      _os_log_impl(&_mh_execute_header, v80, v81, "%s - verifying accessKeyHash...", v83, 0xCu);
      sub_10000839C(v84);
    }

    else
    {
      v85 = a3;
    }

    sub_1001AB0FC(v131);
    v86 = (v53 + *(v120 + 28));
    v87 = *v86;
    v88 = v86[1];
    sub_1001B271C(&unk_1003DA8A0, &type metadata accessor for SHA256);
    v89 = v121;
    v90 = v123;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v87, v88);
    sub_10018F16C(v87, v88);
    sub_100012324(v87, v88);
    v91 = v124;
    dispatch thunk of HashFunction.finalize()();
    (*(v122 + 8))(v89, v90);
    sub_1001B271C(&qword_1003DE938, &type metadata accessor for SHA256Digest);
    v92 = v126;
    v93 = Digest.makeIterator()();
    v95 = sub_10018F47C(v93, v94);

    v96 = sub_10018F97C(v95);
    v98 = v97;

    (*(v125 + 8))(v91, v92);
    LOBYTE(v92) = sub_10018F69C(v96, v98, *(v85 + *(v132 + 24)), *(v85 + *(v132 + 24) + 8));
    sub_100012324(v96, v98);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.info.getter();
    v101 = os_log_type_enabled(v99, v100);
    if (v92)
    {
      v102 = v133;
      if (v101)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v138[0] = v104;
        *v103 = 136315138;
        v105 = v129;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v103 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
        _os_log_impl(&_mh_execute_header, v99, v100, "%s - verified accessKeyHash matches with healthRecord. We're good.", v103, 0xCu);
        sub_10000839C(v104);
      }

      else
      {

        v105 = v129;
      }

      v109 = v119;
      sub_1001B2990(v105, v119, type metadata accessor for BeneficiaryInfoRecord);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v138[0] = swift_slowAlloc();
        *v112 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v112 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
        *(v112 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
        v113 = v119;
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v115;
        sub_1001B29F8(v113, type metadata accessor for BeneficiaryInfoRecord);
        v117 = sub_10021145C(v114, v116, v138);

        *(v112 + 14) = v117;
        _os_log_impl(&_mh_execute_header, v110, v111, "%s - beneficiary %s is healthy!", v112, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001B29F8(v109, type metadata accessor for BeneficiaryInfoRecord);
      }

      sub_10024D10C();
      return v102(0);
    }

    else
    {
      v106 = v133;
      if (v101)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v138[0] = v108;
        *v107 = 136315138;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v107 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
        _os_log_impl(&_mh_execute_header, v99, v100, "%s - accessKeyHash doesn't match with healthRecord. No action taken at the moment", v107, 0xCu);
        sub_10000839C(v108);
      }

      *(v134 + qword_1003E3FF0) = 1;
      sub_10024D10C();
      return v106(0);
    }
  }

  else
  {
    sub_1001B2990(a3, v44, type metadata accessor for InheritanceHealthRecord);
    v65 = v128;
    sub_1001B2990(a3, v128, type metadata accessor for InheritanceHealthRecord);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v132 = v24;
      v133 = a6;
      v68 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v68 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v68 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v138);
      *(v68 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v69 = v136;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_1001B29F8(v69, type metadata accessor for InheritanceHealthRecord);
      v73 = sub_10021145C(v70, v72, v138);

      *(v68 + 14) = v73;
      *(v68 + 22) = 2080;
      v74 = *(v132 + 20);
      sub_1001B271C(&qword_1003DB608, &type metadata accessor for Date);
      v75 = v128;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      sub_1001B29F8(v75, type metadata accessor for InheritanceHealthRecord);
      v79 = sub_10021145C(v76, v78, v138);

      *(v68 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s - beneficiary %s last check in was %s, marking as not reachable.", v68, 0x20u);
      swift_arrayDestroy();

      a6 = v133;
    }

    else
    {

      sub_1001B29F8(v65, type metadata accessor for InheritanceHealthRecord);
      sub_1001B29F8(v44, type metadata accessor for InheritanceHealthRecord);
    }

    *(v134 + qword_1003E3FF0) = 0;
    sub_10024D10C();
    return sub_1001AB4DC(v131, 3, a6, v135);
  }
}

uint64_t sub_1001AAAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(a5 + qword_1003E3FF0) = a1 == 0;
    sub_10024D10C();
    sub_1001AB4DC(a3, 3, a7, a8);
  }

  return result;
}

uint64_t sub_1001AAB60(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v49 = *v3;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for InheritanceHealthRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  (*(v18 + 16))(&v44 - v20, v4 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__cloudStorage, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v21, v17);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v52, v54);
    v45 = sub_1000080F8(v54, v54[3]);
    v47 = a1;
    v48 = type metadata accessor for InheritanceHealthRecord;
    sub_1001B2990(a1, v16, type metadata accessor for InheritanceHealthRecord);
    v22 = *(v12 + 80);
    v23 = (v22 + 16) & ~v22;
    v24 = v13 + 7;
    v25 = a2;
    v26 = (v24 + v23) & 0xFFFFFFFFFFFFFFF8;
    v27 = v16;
    v28 = v51;
    v29 = swift_allocObject();
    v46 = type metadata accessor for InheritanceHealthRecord;
    sub_1001AF9BC(v27, v29 + v23, type metadata accessor for InheritanceHealthRecord);
    v30 = (v29 + v26);
    *v30 = v25;
    v30[1] = v28;
    *(v29 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;
    v31 = *v45;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v33 = v50;
    sub_1001B2990(v47, v50, v48);
    v34 = (v22 + 40) & ~v22;
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v31;
    sub_1001AF9BC(v33, v35 + v34, v46);
    v36 = (v35 + ((v24 + v34) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_1001B0110;
    v36[1] = v29;

    sub_1000BCD5C(0, 0, v10, &unk_1003446E8, v35);

    return sub_10000839C(v54);
  }

  else
  {
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    sub_100008D3C(v52, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAB8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = a2;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54[0] = v43;
      *v42 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v42 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v54);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s - isSharedAndAccepted unable to obtain pointer to CloudKitSharing", v42, 0xCu);
      sub_10000839C(v43);

      return v41(1);
    }

    else
    {

      return a2(1);
    }
  }
}

uint64_t sub_1001AB0FC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for InheritanceInvitationRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (*(a1 + *(result + 40)) == 3)
  {
    v24 = v1;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_1001B2990(a1, v11, type metadata accessor for InheritanceInvitationRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v22 = v5;
      v23 = v3;
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v15 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v25);
      *(v15 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1001B29F8(v11, type metadata accessor for InheritanceInvitationRecord);
      v19 = sub_10021145C(v16, v18, &v25);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - beneficiary %s was marked as not reachable, marking as accepted again.", v15, 0x16u);
      swift_arrayDestroy();

      v5 = v22;
      v3 = v23;
    }

    else
    {

      sub_1001B29F8(v11, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_1001B2990(a1, v8, type metadata accessor for InheritanceInvitationRecord);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    sub_1001AF9BC(v8, v21 + v20, type metadata accessor for InheritanceInvitationRecord);
    *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    sub_1001AB4DC(a1, 2, sub_1001B28B0, v21);
  }

  return result;
}

uint64_t sub_1001AB4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for InheritanceInvitationRecord();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 32);
  v38 = a1;
  if (*(a1 + v20) == a2)
  {
    return a3(0);
  }

  v36 = v10;
  v37 = a3;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v35 = a2;
  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAB8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v34 = a4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v25 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v40);
    *(v25 + 12) = 2048;
    v27 = v35;
    *(v25 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - updating invitation to %ld", v25, 0x16u);
    sub_10000839C(v26);

    a4 = v34;
  }

  else
  {

    v27 = v35;
  }

  sub_1001B2990(v38, v19, type metadata accessor for InheritanceInvitationRecord);
  *&v19[*(v15 + 32)] = v27;
  v28 = v39;
  (*(v39 + 16))(v14, v5 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v11);
  Dependency.wrappedValue.getter();
  (*(v28 + 8))(v14, v11);
  v29 = sub_1000080F8(v40, v40[3]);
  v30 = swift_allocObject();
  v31 = v36;
  v30[2] = v37;
  v30[3] = a4;
  v30[4] = v31;
  v32 = *v29;

  sub_100215214(v19, sub_1001B2984, v30);

  sub_1001B29F8(v19, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(v40);
}

void sub_1001AB8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    sub_1001B2990(a2, v10, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v31);
      *(v14 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1001B29F8(v10, type metadata accessor for InheritanceInvitationRecord);
      v19 = sub_10021145C(v16, v18, &v31);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2112;
      v20 = _convertErrorToNSError(_:)();
      *(v14 + 24) = v20;
      *v15 = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - failed to mark Beneficiary %s as accepted (after being not reachable). Error: %@", v14, 0x20u);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      return;
    }

    v29 = v10;
LABEL_16:
    sub_1001B29F8(v29, type metadata accessor for InheritanceInvitationRecord);
    return;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  sub_1001B2990(a2, v8, type metadata accessor for InheritanceInvitationRecord);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v22, v23))
  {

    v29 = v8;
    goto LABEL_16;
  }

  v24 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v24 = 136315394;
  if (qword_1003D7E28 != -1)
  {
    swift_once();
  }

  *(v24 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v31);
  *(v24 + 12) = 2080;
  type metadata accessor for UUID();
  sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v26;
  sub_1001B29F8(v8, type metadata accessor for InheritanceInvitationRecord);
  v28 = sub_10021145C(v25, v27, &v31);

  *(v24 + 14) = v28;
  _os_log_impl(&_mh_execute_header, v22, v23, "%s - successfully marked Beneficiary %s as accepted (after being not reachable).", v24, 0x16u);
  swift_arrayDestroy();
}

uint64_t sub_1001ABE1C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v17 - v6);
  sub_100012D04(a1, &v17 - v6, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v18);
      *(v12 + 12) = 2080;
      v17 = v8;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v13 = String.init<A>(describing:)();
      v15 = sub_10021145C(v13, v14, &v18);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - failed to save invitation. Unable to update status - %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v7, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_1001AC0E8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = type metadata accessor for InheritanceHealthRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  if ((a2 & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100008D04(v38, qword_1003FAAB8);
      sub_1001B2990(a3, v15, type metadata accessor for InheritanceHealthRecord);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v41 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v41 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v48);
        *(v41 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        sub_1001B29F8(v15, type metadata accessor for InheritanceHealthRecord);
        v45 = sub_10021145C(v42, v44, &v48);

        *(v41 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "%s - beneficiary %s is NOT shared and accepted", v41, 0x16u);
        swift_arrayDestroy();

        v46 = 0;
      }

      else
      {

        sub_1001B29F8(v15, type metadata accessor for InheritanceHealthRecord);
        v46 = 0;
      }

      return a4(v46);
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    sub_1001B2990(a3, v17, type metadata accessor for InheritanceHealthRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v32 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v48);
      *(v32 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1001B29F8(v17, type metadata accessor for InheritanceHealthRecord);
      v36 = sub_10021145C(v33, v35, &v48);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - beneficiary %s is shared and accepted", v32, 0x16u);
      swift_arrayDestroy();

      goto LABEL_24;
    }

    v37 = v17;
LABEL_23:
    sub_1001B29F8(v37, type metadata accessor for InheritanceHealthRecord);
LABEL_24:
    v46 = 1;
    return a4(v46);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  sub_1001B2990(a3, v12, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  sub_1000A6B60(a1, 1);
  if (!os_log_type_enabled(v19, v20))
  {

    v37 = v12;
    goto LABEL_23;
  }

  v47 = a4;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  *v21 = 136315650;
  if (qword_1003D7E28 != -1)
  {
    swift_once();
  }

  *(v21 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v48);
  *(v21 + 12) = 2080;
  type metadata accessor for UUID();
  sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v24;
  sub_1001B29F8(v12, type metadata accessor for InheritanceHealthRecord);
  v26 = sub_10021145C(v23, v25, &v48);

  *(v21 + 14) = v26;
  *(v21 + 22) = 2112;
  v27 = _convertErrorToNSError(_:)();
  *(v21 + 24) = v27;
  *v22 = v27;
  _os_log_impl(&_mh_execute_header, v19, v20, "%s - beneficiary %s failed to check if shared and accepted, assuming accepted for now. Error: %@", v21, 0x20u);
  sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

  swift_arrayDestroy();

  return v47(1);
}

uint64_t sub_1001AC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1000A5780;

  return sub_1001B142C(a5);
}

uint64_t sub_1001AC958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v61 = a3;
  v64 = a2;
  v68 = *a5;
  v69 = a5;
  v7 = type metadata accessor for UUID();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v59 = &v54 - v11;
  v12 = type metadata accessor for BeneficiaryInfoRecord();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v15;
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  sub_1001B2990(a1, v17, type metadata accessor for BeneficiaryInfoRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v65 = v8;
  v57 = v7;
  if (v21)
  {
    v55 = a4;
    v22 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v22 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v70);
    *(v22 + 12) = 2080;
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001B29F8(v17, type metadata accessor for BeneficiaryInfoRecord);
    v26 = sub_10021145C(v23, v25, v70);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - fetching health record for beneficiaryID: %s", v22, 0x16u);
    swift_arrayDestroy();

    v27 = v55;
  }

  else
  {

    sub_1001B29F8(v17, type metadata accessor for BeneficiaryInfoRecord);
    v27 = a4;
  }

  v28 = swift_allocObject();
  v29 = v69;
  swift_weakInit();
  v30 = a1;
  v54 = a1;
  v31 = a1;
  v32 = v60;
  sub_1001B2990(v31, v60, type metadata accessor for BeneficiaryInfoRecord);
  v33 = (*(v58 + 80) + 48) & ~*(v58 + 80);
  v34 = (v56 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v64;
  *(v35 + 2) = v64;
  *(v35 + 3) = &off_1003B0F58;
  *(v35 + 4) = v61;
  *(v35 + 5) = v27;
  sub_1001AF9BC(v32, v35 + v33, type metadata accessor for BeneficiaryInfoRecord);
  v55 = v28;
  *(v35 + v34) = v28;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v38 = v62;
  v37 = v63;
  v39 = v59;
  (*(v62 + 16))(v59, v29 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v63);
  v64 = v36;

  Dependency.wrappedValue.getter();
  (*(v38 + 8))(v39, v37);
  v63 = sub_1000080F8(v70, v70[3]);
  v41 = v66;
  v40 = v67;
  v42 = v57;
  (*(v67 + 16))(v66, v30, v57);
  v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v44 = (v65 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v40 + 32))(v47 + v43, v41, v42);
  v48 = (v47 + v44);
  *v48 = sub_1001AF2C8;
  v48[1] = v35;
  *(v47 + v45) = v69;
  v49 = (v47 + v46);
  v50 = v64;
  *v49 = v64;
  v49[1] = &off_1003B0F58;
  *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v51 = *v63;
  v52 = v50;

  sub_100214780(v54, sub_1001AF448, v47);

  sub_10000839C(v70);
}

unint64_t sub_1001AD018(uint64_t a1, void *a2)
{
  v28 = type metadata accessor for DaemonAccountStore();
  v29 = &off_1003AB0B8;
  v27[0] = a1;
  v4 = *(*sub_1000080F8(v27, v28) + 16);

  v5 = [v4 aa_primaryAppleAccount];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 aa_altDSID];

    if (v7)
    {
      v8 = [a2 authKitAccountWithAltDSID:v7];

      if (v8)
      {
        v9 = [a2 beneficiaryInfoForAccount:v8];
        if (v9)
        {
          v10 = v9;
          sub_100005814(&unk_1003DABD0, &qword_10033E720);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v12 = sub_1001A4278(v11);

          if (v12)
          {
            if (qword_1003D7F48 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            sub_100008D04(v13, qword_1003FAAB8);
            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 0;
              _os_log_impl(&_mh_execute_header, v14, v15, "Parsing beneficiaryInfo...", v16, 2u);
            }

            v26 = &_swiftEmptyDictionarySingleton;
            sub_1001A41F0(v12, &v26);

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "Finished parsing beneficiaryInfo...", v19, 2u);
            }

            v20 = v26;
            goto LABEL_19;
          }
        }
      }
    }
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failure to fetch beneficiaryInfo.", v24, 2u);
  }

  v20 = sub_10030866C(_swiftEmptyArrayStorage);
LABEL_19:
  sub_10000839C(v27);
  return v20;
}

uint64_t sub_1001AD378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = *v2;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49 = &v43 - v8;
  v9 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v46 = &v43 - v11;
  v45 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v45);
  v15 = &v43 - v14;
  v16 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v43 = a1;
    v44 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55[0] = v25;
    *v24 = 136315138;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v55);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s - started.", v24, 0xCu);
    sub_10000839C(v25);

    a1 = v43;
    a2 = v44;
  }

  else
  {
  }

  (*(v17 + 16))(v20, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v26 = v45;
  (*(v12 + 16))(v15, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore, v45);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v26);
  v27 = v46;
  v28 = v47;
  v29 = v48;
  (*(v47 + 16))(v46, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__akAccountManager, v48);
  Dependency.wrappedValue.getter();
  (*(v28 + 8))(v27, v29);
  v30 = v53;
  v31 = sub_1000080F8(v54, v54[3]);
  v32 = sub_1001AD018(*v31, v30);

  sub_10000839C(v54);
  v33 = *(v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData);
  *(v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) = v32;

  sub_10000839C(v55);
  v34 = v49;
  v35 = v50;
  v36 = v51;
  (*(v50 + 16))(v49, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v51);
  Dependency.wrappedValue.getter();
  (*(v35 + 8))(v34, v36);
  v37 = sub_1000080F8(v55, v55[3]);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = a1;
  v40 = v52;
  v39[4] = a2;
  v39[5] = v40;
  v41 = *v37;

  sub_100216650(sub_1001AD9DC, v39);

  return sub_10000839C(v55);
}

uint64_t sub_1001AD964()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001AD99C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001AD9EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for CustodianRecoveryInfoRecord();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001ADB24, 0, 0);
}

uint64_t sub_1001ADB24()
{
  v29 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1001B2990(v3, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v26 = v0[6];
    v27 = v6;
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136315394;
    (*(v11 + 16))(v10, v9, v12);
    sub_1001B29F8(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10021145C(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = v8 + *(v26 + 20);
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_1001B29F8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v22 = sub_10021145C(v19, v21, &v28);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v27, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for CustodianRecoveryInfoRecord);

    sub_1001B29F8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_1001ADE74;
  v24 = v0[2];

  return sub_1001326E8(v24);
}

uint64_t sub_1001ADE74(uint64_t a1)
{
  v3 = *(*v2 + 120);
  v4 = *v2;
  v4[16] = a1;

  if (v1)
  {
    v6 = v4[12];
    v5 = v4[13];
    v8 = v4[10];
    v7 = v4[11];
    v10 = v4[8];
    v9 = v4[9];
    v11 = v4[7];
    v12 = v4[5];

    v13 = v4[1];

    return v13(0);
  }

  else
  {

    return _swift_task_switch(sub_1001AE020, 0, 0);
  }
}

uint64_t sub_1001AE020()
{
  v98 = v0;
  v1 = v0[16];
  v2 = v0[14];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for CustodianRecoveryInfoRecord);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[6];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v97 = v11;
      *v9 = 138412546;
      v12 = [v3 recordID];
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      v13 = v7 + *(v8 + 5);
      v14 = UUID.uuidString.getter();
      v16 = v15;
      sub_1001B29F8(v7, type metadata accessor for CustodianRecoveryInfoRecord);
      v17 = sub_10021145C(v14, v16, &v97);

      *(v9 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Existing CKShare found, recordID: %@, zoneName: %s", v9, 0x16u);
      sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v11);
    }

    else
    {

      sub_1001B29F8(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v39 = v0[14];
    v40 = v0[8];
    v41 = v0[2];
    v95 = v3;
    v42 = [v3 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v41, v40, type metadata accessor for CustodianRecoveryInfoRecord);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = v43 >> 62;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97 = v48;
      *v47 = 134218242;
      if (v46)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v50 = v0[8];
      v51 = v0[6];
      *(v47 + 4) = v49;

      *(v47 + 12) = 2080;
      v52 = v50 + *(v51 + 5);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      sub_1001B29F8(v50, type metadata accessor for CustodianRecoveryInfoRecord);
      v56 = sub_10021145C(v53, v55, &v97);

      *(v47 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Found %ld participant(s) for zone %s", v47, 0x16u);
      sub_10000839C(v48);
    }

    else
    {
      v57 = v0[8];

      sub_1001B29F8(v57, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    if (v46)
    {
      goto LABEL_31;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v93 = v0;
      v59 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v59 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v60 = *(v43 + 8 * v59 + 32);
        }

        v61 = v60;
        v62 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if ([v60 isCurrentUser])
        {
        }

        else
        {
          v63 = [v61 acceptanceStatus];

          if (v63 == 2)
          {
            v38 = 1;
LABEL_28:
            v0 = v93;
            goto LABEL_33;
          }
        }

        ++v59;
        if (v62 == i)
        {
          v38 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v38 = 0;
LABEL_33:
    v64 = v0[14];
    v65 = v0[7];
    v66 = v0[2];

    sub_1001B2990(v66, v65, type metadata accessor for CustodianRecoveryInfoRecord);
    v67 = v95;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[7];
    if (v70)
    {
      v72 = v0[6];
      v73 = swift_slowAlloc();
      v96 = v38;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v97 = v75;
      *v73 = 138412546;
      v76 = [v67 recordID];
      *(v73 + 4) = v76;
      *v74 = v76;
      *(v73 + 12) = 2080;
      v77 = v71 + *(v72 + 5);
      v78 = UUID.uuidString.getter();
      v80 = v79;
      sub_1001B29F8(v71, type metadata accessor for CustodianRecoveryInfoRecord);
      v81 = sub_10021145C(v78, v80, &v97);

      *(v73 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v68, v69, "CKShare accepted for recordID: %@, zoneName: %s", v73, 0x16u);
      sub_100008D3C(v74, &unk_1003D9140, &qword_10033E640);
      v38 = v96;

      sub_10000839C(v75);
    }

    else
    {

      sub_1001B29F8(v71, type metadata accessor for CustodianRecoveryInfoRecord);
    }
  }

  else
  {
    v18 = v0[9];
    v19 = v0[2];
    sub_1001B2990(v19, v0[10], type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001B2990(v19, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[9];
    v24 = v0[10];
    if (v22)
    {
      v92 = v0[6];
      v94 = v21;
      v26 = v0[4];
      v25 = v0[5];
      v27 = v0[3];
      v28 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v28 = 136315394;
      (*(v26 + 2))(v25, v24, v27);
      sub_1001B29F8(v24, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v26 + 1))(v25, v27);
      v32 = sub_10021145C(v29, v31, &v97);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = v23 + *(v92 + 5);
      v34 = UUID.uuidString.getter();
      v36 = v35;
      sub_1001B29F8(v23, type metadata accessor for CustodianRecoveryInfoRecord);
      v37 = sub_10021145C(v34, v36, &v97);

      *(v28 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v20, v94, "CKShare not found for recordID: %s, zoneName: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for CustodianRecoveryInfoRecord);

      sub_1001B29F8(v23, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v38 = 0;
  }

  v83 = v0[12];
  v82 = v0[13];
  v85 = v0[10];
  v84 = v0[11];
  v87 = v0[8];
  v86 = v0[9];
  v88 = v0[7];
  v89 = v0[5];

  v90 = v0[1];

  return (v90)(v38);
}