uint64_t sub_10021F95C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100240EAC;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100240EA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10021FA78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecord();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10021FB6C, 0, 0);
}

uint64_t sub_10021FB6C()
{
  v38 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9C0;
  }

  v2 = *(v0 + 24);
  v3 = *v1;
  v4 = v1[1];

  v5 = sub_1002E2BC4(v3, v4);

  v6 = [v5 privateCloudDatabase];
  *(v0 + 80) = v6;

  v7 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  *(v0 + 88) = v7;
  sub_10023E004();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = v7;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  v13.super.isa = CKRecordID.init(recordName:zoneID:)(v12, v11).super.isa;
  *(v0 + 96) = v13;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 24);
  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA58);
  sub_10023FBA0(v15, v14, type metadata accessor for CustodianRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 72);
  if (v19)
  {
    isa = v13.super.isa;
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = *(v0 + 40);
    v24 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v37);
    *(v24 + 12) = 2080;
    (*(v22 + 16))(v21, v20, v23);
    sub_10023FC08(v20, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v22 + 8))(v21, v23);
    v13.super.isa = isa;
    v28 = sub_10021145C(v25, v27, &v37);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s recordID:%s one-off record fetch", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for CustodianRecord);
  }

  v29 = swift_task_alloc();
  *(v0 + 104) = v29;
  v30 = *(v0 + 24);
  *(v29 + 16) = v6;
  *(v29 + 24) = v13;
  *(v29 + 32) = v30;
  v31 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v32 = swift_task_alloc();
  *(v0 + 112) = v32;
  *v32 = v0;
  v32[1] = sub_10021F95C;
  v33 = *(v0 + 64);
  v34 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v34, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_100240998, v29, v33);
}

uint64_t sub_100220038(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for BenefactorInfoRecord();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10022012C, 0, 0);
}

uint64_t sub_10022012C()
{
  v43 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9F0;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v5 = *v1;
  v4 = v1[1];

  v6 = sub_1002E2BC4(v5, v4);

  v7 = [v6 privateCloudDatabase];
  *(v0 + 80) = v7;

  v8 = UUID.uuidString.getter();
  v10 = sub_1002E2EE0(v8, v9);
  *(v0 + 88) = v10;

  sub_10023E004();
  v11 = v3 + *(v2 + 28);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = v10;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, v15).super.isa;
  *(v0 + 96) = v17;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 24);
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA58);
  sub_10023FBA0(v19, v18, type metadata accessor for BenefactorInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 72);
  if (v23)
  {
    isa = v17.super.isa;
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    v28 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v42);
    *(v28 + 12) = 2080;
    (*(v26 + 16))(v25, v24 + *(v2 + 28), v27);
    sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v7;
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v17.super.isa = isa;
    v33 = sub_10021145C(v29, v32, &v42);
    v7 = v30;

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s recordID:%s one-off record fetch", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for BenefactorInfoRecord);
  }

  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  v35 = *(v0 + 24);
  *(v34 + 16) = v7;
  *(v34 + 24) = v17;
  *(v34 + 32) = v35;
  v36 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v37 = swift_task_alloc();
  *(v0 + 112) = v37;
  *v37 = v0;
  v37[1] = sub_100220608;
  v38 = *(v0 + 64);
  v39 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v39, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023E050, v34, v38);
}

uint64_t sub_100220608()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1002207B0;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100220724;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100220724()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002207B0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);
  v7 = *(v0 + 120);

  return v6();
}

void sub_100220850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CustodianshipInfoRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for CustodianshipInfoRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10023F908;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0878;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

void sub_100220B00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CustodianRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for CustodianRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_100240C44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0AA8;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

void sub_100220DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&qword_1003E3630, &unk_100346AA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for BenefactorInfoRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for BenefactorInfoRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10023E240;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0440;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_100221060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a4;
  v11 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v74 - v13;
  v15 = type metadata accessor for UUID();
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  __chkstk_darwin(v15);
  v84 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustodianshipInfoRecord();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v25 = &v74 - v24;
  v26 = __chkstk_darwin(v23);
  result = __chkstk_darwin(v26);
  v32 = &v74 - v31;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA58);
    sub_10023FBA0(a3, v32, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v36 = 136315650;
      *(v36 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v88);
      *(v36 + 12) = 2080;
      v38 = v84;
      v39 = v85;
      v40 = v86;
      (*(v85 + 16))(v84, v32, v86);
      sub_10023FC08(v32, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v39 + 8))(v38, v40);
      v44 = sub_10021145C(v41, v43, v88);

      *(v36 + 14) = v44;
      *(v36 + 22) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v45;
      *v37 = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s recordID:%s one-off record fetch failed %@", v36, 0x20u);
      sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v32, type metadata accessor for CustodianshipInfoRecord);
    }

    v88[0] = a2;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v82 = a5;
    v83 = a6;
    if (a1)
    {
      v46 = v30;
      v80 = v28;
      v81 = v29;
      v47 = *(a3 + *(v18 + 36));
      v48 = a1;
      sub_1000F80E0(v48, v47, v14);
      (*(v19 + 56))(v14, 0, 1, v18);
      v49 = v81;
      sub_10023FC6C(v14, v81, type metadata accessor for CustodianshipInfoRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100008D04(v50, qword_1003FAA58);
      sub_10023FBA0(a3, v25, type metadata accessor for CustodianshipInfoRecord);
      v51 = v46;
      sub_10023FBA0(v49, v46, type metadata accessor for CustodianshipInfoRecord);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v77 = v52;
        v55 = v54;
        v78 = swift_slowAlloc();
        v88[0] = v78;
        *v55 = 136315650;
        *(v55 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v88);
        *(v55 + 12) = 2080;
        v56 = v85;
        v57 = v86;
        v75 = *(v85 + 16);
        v79 = v48;
        v58 = v84;
        v75(v84, v25, v86);
        v74 = type metadata accessor for CustodianshipInfoRecord;
        sub_10023FC08(v25, type metadata accessor for CustodianshipInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v76 = v53;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v62 = *(v56 + 8);
        v62(v58, v57);
        v63 = sub_10021145C(v59, v61, v88);

        *(v55 + 14) = v63;
        *(v55 + 22) = 2080;
        v75(v58, v51, v57);
        sub_10023FC08(v51, v74);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v67 = v58;
        v48 = v79;
        v62(v67, v57);
        v68 = sub_10021145C(v64, v66, v88);

        *(v55 + 24) = v68;
        v69 = v77;
        _os_log_impl(&_mh_execute_header, v77, v76, "%s recordID:%s one-off record fetch success newRecordID: %s", v55, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v46, type metadata accessor for CustodianshipInfoRecord);
        sub_10023FC08(v25, type metadata accessor for CustodianshipInfoRecord);
      }

      v70 = v83;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1003431D0;
        *(v71 + 32) = v48;
        v72 = v48;
        sub_1002EBDD8(v70, v71);

        swift_unknownObjectRelease();
      }

      v73 = v81;
      sub_10023FBA0(v81, v80, type metadata accessor for CustodianshipInfoRecord);
      sub_100005814(&unk_1003D9260, &unk_10033ECE0);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v73, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  return result;
}

uint64_t sub_1002219CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a4;
  v11 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v74 - v13;
  v15 = type metadata accessor for UUID();
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  __chkstk_darwin(v15);
  v84 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustodianRecord();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v25 = &v74 - v24;
  v26 = __chkstk_darwin(v23);
  result = __chkstk_darwin(v26);
  v32 = &v74 - v31;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA58);
    sub_10023FBA0(a3, v32, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v36 = 136315650;
      *(v36 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v88);
      *(v36 + 12) = 2080;
      v38 = v84;
      v39 = v85;
      v40 = v86;
      (*(v85 + 16))(v84, v32, v86);
      sub_10023FC08(v32, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v39 + 8))(v38, v40);
      v44 = sub_10021145C(v41, v43, v88);

      *(v36 + 14) = v44;
      *(v36 + 22) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v45;
      *v37 = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s recordID:%s one-off record fetch failed %@", v36, 0x20u);
      sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v32, type metadata accessor for CustodianRecord);
    }

    v88[0] = a2;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v82 = a5;
    v83 = a6;
    if (a1)
    {
      v46 = v30;
      v80 = v28;
      v81 = v29;
      v47 = *(a3 + *(v18 + 48));
      v48 = a1;
      sub_1000EF6D0(v48, v47, v14);
      (*(v19 + 56))(v14, 0, 1, v18);
      v49 = v81;
      sub_10023FC6C(v14, v81, type metadata accessor for CustodianRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100008D04(v50, qword_1003FAA58);
      sub_10023FBA0(a3, v25, type metadata accessor for CustodianRecord);
      v51 = v46;
      sub_10023FBA0(v49, v46, type metadata accessor for CustodianRecord);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v77 = v52;
        v55 = v54;
        v78 = swift_slowAlloc();
        v88[0] = v78;
        *v55 = 136315650;
        *(v55 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v88);
        *(v55 + 12) = 2080;
        v56 = v85;
        v57 = v86;
        v75 = *(v85 + 16);
        v79 = v48;
        v58 = v84;
        v75(v84, v25, v86);
        v74 = type metadata accessor for CustodianRecord;
        sub_10023FC08(v25, type metadata accessor for CustodianRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v76 = v53;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v62 = *(v56 + 8);
        v62(v58, v57);
        v63 = sub_10021145C(v59, v61, v88);

        *(v55 + 14) = v63;
        *(v55 + 22) = 2080;
        v75(v58, v51, v57);
        sub_10023FC08(v51, v74);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v67 = v58;
        v48 = v79;
        v62(v67, v57);
        v68 = sub_10021145C(v64, v66, v88);

        *(v55 + 24) = v68;
        v69 = v77;
        _os_log_impl(&_mh_execute_header, v77, v76, "%s recordID:%s one-off record fetch success newRecordID: %s", v55, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v46, type metadata accessor for CustodianRecord);
        sub_10023FC08(v25, type metadata accessor for CustodianRecord);
      }

      v70 = v83;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1003431D0;
        *(v71 + 32) = v48;
        v72 = v48;
        sub_1002EBDD8(v70, v71);

        swift_unknownObjectRelease();
      }

      v73 = v81;
      sub_10023FBA0(v81, v80, type metadata accessor for CustodianRecord);
      sub_100005814(&unk_1003D9200, &unk_10033EC90);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v73, type metadata accessor for CustodianRecord);
    }
  }

  return result;
}

uint64_t sub_100222348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a4;
  v11 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for UUID();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = *(v89 + 64);
  __chkstk_darwin(v15);
  v88 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BenefactorInfoRecord();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v24 = &v76 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v76 - v26;
  v28 = __chkstk_darwin(v25);
  result = __chkstk_darwin(v28);
  v33 = &v76 - v32;
  if (a2)
  {
    v34 = result;
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA58);
    sub_10023FBA0(a3, v33, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92[0] = v87;
      *v38 = 136315650;
      *(v38 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v92);
      *(v38 + 12) = 2080;
      v40 = *(v34 + 28);
      v41 = v88;
      v42 = v89;
      v43 = v90;
      (*(v89 + 16))(v88, &v33[v40], v90);
      sub_10023FC08(v33, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v42 + 8))(v41, v43);
      v47 = sub_10021145C(v44, v46, v92);

      *(v38 + 14) = v47;
      *(v38 + 22) = 2112;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 24) = v48;
      *v39 = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s recordID:%s one-off record fetch failed %@", v38, 0x20u);
      sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v33, type metadata accessor for BenefactorInfoRecord);
    }

    v92[0] = a2;
    sub_100005814(&qword_1003E3630, &unk_100346AA0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v86 = a5;
    v87 = a6;
    if (a1)
    {
      v84 = v30;
      v85 = v31;
      v49 = *(a3 + *(result + 36));
      v50 = result;
      v51 = a1;
      sub_1001E17B0(v51, v49, v14);
      (*(v19 + 56))(v14, 0, 1, v50);
      v52 = v14;
      v53 = v85;
      sub_10023FC6C(v52, v85, type metadata accessor for BenefactorInfoRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100008D04(v54, qword_1003FAA58);
      sub_10023FBA0(a3, v27, type metadata accessor for BenefactorInfoRecord);
      sub_10023FBA0(v53, v24, type metadata accessor for BenefactorInfoRecord);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v81 = v55;
        v58 = v57;
        v82 = swift_slowAlloc();
        v92[0] = v82;
        *v58 = 136315650;
        *(v58 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v92);
        *(v58 + 12) = 2080;
        v83 = v51;
        v77 = v50;
        v59 = *(v50 + 28);
        v61 = v88;
        v60 = v89;
        v79 = *(v89 + 16);
        v62 = v90;
        v79(v88, &v27[v59], v90);
        v78 = type metadata accessor for BenefactorInfoRecord;
        sub_10023FC08(v27, type metadata accessor for BenefactorInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v80 = v56;
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v89 = *(v60 + 8);
        (v89)(v61, v62);
        v66 = sub_10021145C(v63, v65, v92);

        *(v58 + 14) = v66;
        *(v58 + 22) = 2080;
        v51 = v83;
        v79(v61, &v24[*(v77 + 28)], v62);
        sub_10023FC08(v24, v78);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        (v89)(v61, v62);
        v70 = sub_10021145C(v67, v69, v92);

        *(v58 + 24) = v70;
        v71 = v81;
        _os_log_impl(&_mh_execute_header, v81, v80, "%s recordID:%s one-off record fetch success newRecordID: %s", v58, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
        sub_10023FC08(v27, type metadata accessor for BenefactorInfoRecord);
      }

      v72 = v87;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1003431D0;
        *(v73 + 32) = v51;
        v74 = v51;
        sub_1002EBDD8(v72, v73);

        swift_unknownObjectRelease();
      }

      v75 = v85;
      sub_10023FBA0(v85, v84, type metadata accessor for BenefactorInfoRecord);
      sub_100005814(&qword_1003E3630, &unk_100346AA0);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v75, type metadata accessor for BenefactorInfoRecord);
    }
  }

  return result;
}

uint64_t sub_100222CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipInfoRecord();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAE8);
  sub_10023FBA0(a1, v18, type metadata accessor for CustodianshipInfoRecord);
  v54 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v4;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    (*(v10 + 16))(v13, v18, v9);
    sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = sub_10021145C(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Local Cache: Delete record called: %s", v24, 0xCu);
    sub_10000839C(v26);
    v4 = v53;

    a1 = v52;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = a1;
      v36 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_10021145C(v37, v39, aBlock);

      *(v33 + 4) = v40;
      a1 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Delete call stack: %s", v33, 0xCu);
      sub_10000839C(v34);
    }
  }

  v41 = v56;
  v42 = *(v57 + 32);
  sub_10023FBA0(a1, v56, type metadata accessor for CustodianshipInfoRecord);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_10023FC6C(v41, v44 + v43, type metadata accessor for CustodianshipInfoRecord);
  v45 = (v44 + ((v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  aBlock[4] = sub_10023F6EC;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0828;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v49 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v64 + 8))(v49, v4);
  (*(v61 + 8))(v48, v63);
}

uint64_t sub_100223438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecord();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAE8);
  sub_10023FBA0(a1, v18, type metadata accessor for CustodianRecord);
  v54 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v4;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    (*(v10 + 16))(v13, v18, v9);
    sub_10023FC08(v18, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = sub_10021145C(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Local Cache: Delete record called: %s", v24, 0xCu);
    sub_10000839C(v26);
    v4 = v53;

    a1 = v52;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for CustodianRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = a1;
      v36 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_10021145C(v37, v39, aBlock);

      *(v33 + 4) = v40;
      a1 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Delete call stack: %s", v33, 0xCu);
      sub_10000839C(v34);
    }
  }

  v41 = v56;
  v42 = *(v57 + 32);
  sub_10023FBA0(a1, v56, type metadata accessor for CustodianRecord);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_10023FC6C(v41, v44 + v43, type metadata accessor for CustodianRecord);
  v45 = (v44 + ((v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  aBlock[4] = sub_1002408C0;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0A58;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v49 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v64 + 8))(v49, v4);
  (*(v61 + 8))(v48, v63);
}

uint64_t sub_100223BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianHealthRecord();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAE8);
  sub_10023FBA0(a1, v18, type metadata accessor for CustodianHealthRecord);
  v54 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v4;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    (*(v10 + 16))(v13, v18, v9);
    sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = sub_10021145C(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Local Cache: Delete record called: %s", v24, 0xCu);
    sub_10000839C(v26);
    v4 = v53;

    a1 = v52;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = a1;
      v36 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_10021145C(v37, v39, aBlock);

      *(v33 + 4) = v40;
      a1 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Delete call stack: %s", v33, 0xCu);
      sub_10000839C(v34);
    }
  }

  v41 = v56;
  v42 = *(v57 + 32);
  sub_10023FBA0(a1, v56, type metadata accessor for CustodianHealthRecord);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_10023FC6C(v41, v44 + v43, type metadata accessor for CustodianHealthRecord);
  v45 = (v44 + ((v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  aBlock[4] = sub_100240548;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B09E0;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v49 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v64 + 8))(v49, v4);
  (*(v61 + 8))(v48, v63);
}

uint64_t sub_100224308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecoveryInfoRecord();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAE8);
  sub_10023FBA0(a1, v18, type metadata accessor for CustodianRecoveryInfoRecord);
  v54 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v4;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    (*(v10 + 16))(v13, v18, v9);
    sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = sub_10021145C(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Local Cache: Delete record called: %s", v24, 0xCu);
    sub_10000839C(v26);
    v4 = v53;

    a1 = v52;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = a1;
      v36 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_10021145C(v37, v39, aBlock);

      *(v33 + 4) = v40;
      a1 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Local Cache: Delete call stack: %s", v33, 0xCu);
      sub_10000839C(v34);
    }
  }

  v41 = v56;
  v42 = *(v57 + 32);
  sub_10023FBA0(a1, v56, type metadata accessor for CustodianRecoveryInfoRecord);
  v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v44 = swift_allocObject();
  sub_10023FC6C(v41, v44 + v43, type metadata accessor for CustodianRecoveryInfoRecord);
  v45 = (v44 + ((v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  aBlock[4] = sub_1002400FC;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0968;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v49 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v64 + 8))(v49, v4);
  (*(v61 + 8))(v48, v63);
}

uint64_t sub_100224A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BenefactorInfoRecord();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v57 = v18;
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAE8);
  v60 = a1;
  sub_10023FBA0(a1, v20, type metadata accessor for BenefactorInfoRecord);
  v55 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v53 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v54 = v4;
    v28 = v27;
    aBlock[0] = v27;
    *v26 = 136315138;
    (*(v11 + 16))(v14, &v20[*(v15 + 28)], v10);
    sub_10023FC08(v20, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v11 + 8))(v14, v10);
    v32 = sub_10021145C(v29, v31, aBlock);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Local Cache: Delete record called: %s", v26, 0xCu);
    sub_10000839C(v28);
    v4 = v54;

    v5 = v53;
  }

  else
  {
    sub_10023FC08(v20, type metadata accessor for BenefactorInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_10021145C(v38, v40, aBlock);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Local Cache: Delete call stack: %s", v35, 0xCu);
      sub_10000839C(v36);
    }
  }

  v42 = *(v59 + 32);
  v43 = v58;
  sub_10023FBA0(v60, v58, type metadata accessor for BenefactorInfoRecord);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_10023FC6C(v43, v46 + v44, type metadata accessor for BenefactorInfoRecord);
  v47 = (v46 + v45);
  v48 = v62;
  *v47 = v61;
  v47[1] = v48;
  aBlock[4] = sub_10023DB08;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0300;
  v49 = _Block_copy(aBlock);

  v50 = v63;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v51 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v5 + 8))(v51, v4);
  (*(v64 + 8))(v50, v66);
}

uint64_t sub_1002251E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v57 = v18;
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAE8);
  v60 = a1;
  sub_10023FBA0(a1, v20, type metadata accessor for BeneficiaryInfoRecord);
  v55 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v53 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v54 = v4;
    v28 = v27;
    aBlock[0] = v27;
    *v26 = 136315138;
    (*(v11 + 16))(v14, &v20[*(v15 + 32)], v10);
    sub_10023FC08(v20, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v11 + 8))(v14, v10);
    v32 = sub_10021145C(v29, v31, aBlock);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Local Cache: Delete record called: %s", v26, 0xCu);
    sub_10000839C(v28);
    v4 = v54;

    v5 = v53;
  }

  else
  {
    sub_10023FC08(v20, type metadata accessor for BeneficiaryInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_10021145C(v38, v40, aBlock);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Local Cache: Delete call stack: %s", v35, 0xCu);
      sub_10000839C(v36);
    }
  }

  v42 = *(v59 + 32);
  v43 = v58;
  sub_10023FBA0(v60, v58, type metadata accessor for BeneficiaryInfoRecord);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_10023FC6C(v43, v46 + v44, type metadata accessor for BeneficiaryInfoRecord);
  v47 = (v46 + v45);
  v48 = v62;
  *v47 = v61;
  v47[1] = v48;
  aBlock[4] = sub_10023E5C8;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0530;
  v49 = _Block_copy(aBlock);

  v50 = v63;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v51 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v5 + 8))(v51, v4);
  (*(v64 + 8))(v50, v66);
}

uint64_t sub_100225958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InheritanceInvitationRecord();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v57 = v18;
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAE8);
  v60 = a1;
  sub_10023FBA0(a1, v20, type metadata accessor for InheritanceInvitationRecord);
  v55 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v53 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v54 = v4;
    v28 = v27;
    aBlock[0] = v27;
    *v26 = 136315138;
    (*(v11 + 16))(v14, &v20[*(v15 + 36)], v10);
    sub_10023FC08(v20, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v11 + 8))(v14, v10);
    v32 = sub_10021145C(v29, v31, aBlock);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Local Cache: Delete record called: %s", v26, 0xCu);
    sub_10000839C(v28);
    v4 = v54;

    v5 = v53;
  }

  else
  {
    sub_10023FC08(v20, type metadata accessor for InheritanceInvitationRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_10021145C(v38, v40, aBlock);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Local Cache: Delete call stack: %s", v35, 0xCu);
      sub_10000839C(v36);
    }
  }

  v42 = *(v59 + 32);
  v43 = v58;
  sub_10023FBA0(v60, v58, type metadata accessor for InheritanceInvitationRecord);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_10023FC6C(v43, v46 + v44, type metadata accessor for InheritanceInvitationRecord);
  v47 = (v46 + v45);
  v48 = v62;
  *v47 = v61;
  v47[1] = v48;
  aBlock[4] = sub_10023EA84;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0698;
  v49 = _Block_copy(aBlock);

  v50 = v63;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v51 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v5 + 8))(v51, v4);
  (*(v64 + 8))(v50, v66);
}

uint64_t sub_1002260CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InheritanceHealthRecord();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v15);
  v57 = v18;
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAE8);
  v60 = a1;
  sub_10023FBA0(a1, v20, type metadata accessor for InheritanceHealthRecord);
  v55 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v53 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v54 = v4;
    v28 = v27;
    aBlock[0] = v27;
    *v26 = 136315138;
    (*(v11 + 16))(v14, &v20[*(v15 + 28)], v10);
    sub_10023FC08(v20, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v11 + 8))(v14, v10);
    v32 = sub_10021145C(v29, v31, aBlock);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Local Cache: Delete record called: %s", v26, 0xCu);
    sub_10000839C(v28);
    v4 = v54;

    v5 = v53;
  }

  else
  {
    sub_10023FC08(v20, type metadata accessor for InheritanceHealthRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_10021145C(v38, v40, aBlock);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Local Cache: Delete call stack: %s", v35, 0xCu);
      sub_10000839C(v36);
    }
  }

  v42 = *(v59 + 32);
  v43 = v58;
  sub_10023FBA0(v60, v58, type metadata accessor for InheritanceHealthRecord);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_10023FC6C(v43, v46 + v44, type metadata accessor for InheritanceHealthRecord);
  v47 = (v46 + v45);
  v48 = v62;
  *v47 = v61;
  v47[1] = v48;
  aBlock[4] = sub_10023D740;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B01C0;
  v49 = _Block_copy(aBlock);

  v50 = v63;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v51 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v5 + 8))(v51, v4);
  (*(v64 + 8))(v50, v66);
}

uint64_t sub_100226840(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v108 = a3;
  v109 = a2;
  v106 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = (&v91 - v5);
  v6 = type metadata accessor for UUID();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v96 = (&v91 - v14);
  v15 = __chkstk_darwin(v13);
  v102 = (&v91 - v16);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v91 - v26;
  __chkstk_darwin(v25);
  v29 = &v91 - v28;
  v30 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "hipinforecord-from-privatedb";
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v110 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v31(v27, v19);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v100 = v31;
  v101 = v29;
  v31(v29, v19);
  v111 = 0;
  LODWORD(a1) = [v30 removeItemAtURL:v34 error:&v111];

  if (a1)
  {
    v35 = qword_1003D7F58;
    v36 = v111;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAE8);
    v38 = v110;
    sub_10023FBA0(v110, v18, type metadata accessor for CustodianshipInfoRecord);
    v39 = v102;
    sub_10023FBA0(v38, v102, type metadata accessor for CustodianshipInfoRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v111 = v95;
      *v42 = 136315394;
      v43 = v104;
      v96 = *(v104 + 16);
      v103 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v94 = v40;
      v44 = v99;
      LODWORD(v93) = v41;
      v45 = v105;
      v96(v99, v18, v105);
      v92 = type metadata accessor for CustodianshipInfoRecord;
      sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v43 + 8))(v44, v45);
      v49 = sub_10021145C(v46, v48, &v111);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v50 = v100;
      v100(v24, v19);
      v51 = v102;
      UUID.uuidString.getter();
      v52 = v101;
      URL.appendingPathComponent(_:)();

      v50(v27, v19);
      sub_10023FC08(v51, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v50(v52, v19);
      v56 = sub_10021145C(v53, v55, &v111);

      *(v42 + 14) = v56;
      v57 = v94;
      _os_log_impl(&_mh_execute_header, v94, v93, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v58 = v96;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for CustodianshipInfoRecord);
      sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);

      v45 = v105;
      v58 = *(v104 + 16);
    }

    v89 = v107;
    v58(v107, v110, v45);
    swift_storeEnumTagMultiPayload();
    v109(v89);
  }

  else
  {
    v59 = v111;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAAE8);
    v62 = v110;
    v63 = v96;
    sub_10023FBA0(v110, v96, type metadata accessor for CustodianshipInfoRecord);
    v64 = v103;
    sub_10023FBA0(v62, v103, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v105;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v92 = v60;
      v70 = v69;
      v91 = v69;
      v102 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v110;
      *v70 = 136315650;
      v60 = v92;
      LODWORD(v95) = v66;
      v71 = v104;
      v72 = *(v104 + 16);
      v94 = v65;
      v73 = v99;
      v72(v99, v63, v68);
      v93 = type metadata accessor for CustodianshipInfoRecord;
      sub_10023FC08(v63, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v71 + 8))(v73, v68);
      v77 = sub_10021145C(v74, v76, &v111);

      v78 = v91;
      *(v91 + 4) = v77;
      *(v78 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v100;
      v100(v24, v19);
      v80 = v103;
      UUID.uuidString.getter();
      v81 = v101;
      URL.appendingPathComponent(_:)();

      v79(v27, v19);
      sub_10023FC08(v80, v93);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v79(v81, v19);
      v85 = sub_10021145C(v82, v84, &v111);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2112;
      v86 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v86;
      v87 = v78;
      v88 = v102;
      *v102 = v86;
      v65 = v94;
      _os_log_impl(&_mh_execute_header, v94, v95, "Local Cache: Error deleting record: %s at path: %s - %@", v87, 0x20u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v64, type metadata accessor for CustodianshipInfoRecord);
      sub_10023FC08(v63, type metadata accessor for CustodianshipInfoRecord);
    }

    v89 = v107;
    *v107 = v60;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v109(v89);
  }

  return sub_100008D3C(v89, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100227410(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v108 = a3;
  v109 = a2;
  v106 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = (&v91 - v5);
  v6 = type metadata accessor for UUID();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v97 = (&v91 - v14);
  v15 = __chkstk_darwin(v13);
  v102 = (&v91 - v16);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v91 - v26;
  __chkstk_darwin(v25);
  v29 = &v91 - v28;
  v30 = [objc_opt_self() defaultManager];
  v98 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v110 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v31(v27, v19);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v100 = v31;
  v101 = v29;
  v31(v29, v19);
  v111 = 0;
  LODWORD(a1) = [v30 removeItemAtURL:v34 error:&v111];

  if (a1)
  {
    v35 = qword_1003D7F58;
    v36 = v111;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAE8);
    v38 = v110;
    sub_10023FBA0(v110, v18, type metadata accessor for CustodianRecord);
    v39 = v102;
    sub_10023FBA0(v38, v102, type metadata accessor for CustodianRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v111 = v96;
      *v42 = 136315394;
      v43 = v104;
      v97 = *(v104 + 16);
      v103 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v95 = v40;
      v44 = v99;
      LODWORD(v94) = v41;
      v45 = v105;
      v97(v99, v18, v105);
      v93 = type metadata accessor for CustodianRecord;
      sub_10023FC08(v18, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v43 + 8))(v44, v45);
      v49 = sub_10021145C(v46, v48, &v111);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v50 = v100;
      v100(v24, v19);
      v51 = v102;
      UUID.uuidString.getter();
      v52 = v101;
      URL.appendingPathComponent(_:)();

      v50(v27, v19);
      sub_10023FC08(v51, v93);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v50(v52, v19);
      v56 = sub_10021145C(v53, v55, &v111);

      *(v42 + 14) = v56;
      v57 = v95;
      _os_log_impl(&_mh_execute_header, v95, v94, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v58 = v97;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for CustodianRecord);
      sub_10023FC08(v18, type metadata accessor for CustodianRecord);

      v45 = v105;
      v58 = *(v104 + 16);
    }

    v89 = v107;
    v58(v107, v110, v45);
    swift_storeEnumTagMultiPayload();
    v109(v89);
  }

  else
  {
    v59 = v111;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAAE8);
    v62 = v110;
    v63 = v97;
    sub_10023FBA0(v110, v97, type metadata accessor for CustodianRecord);
    v64 = v103;
    sub_10023FBA0(v62, v103, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v105;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v93 = v60;
      v70 = v69;
      v92 = v69;
      v102 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v110;
      *v70 = 136315650;
      v60 = v93;
      LODWORD(v96) = v66;
      v71 = v104;
      v72 = *(v104 + 16);
      v95 = v65;
      v73 = v99;
      v72(v99, v63, v68);
      v94 = type metadata accessor for CustodianRecord;
      sub_10023FC08(v63, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v71 + 8))(v73, v68);
      v77 = sub_10021145C(v74, v76, &v111);

      v78 = v92;
      *(v92 + 4) = v77;
      *(v78 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v100;
      v100(v24, v19);
      v80 = v103;
      UUID.uuidString.getter();
      v81 = v101;
      URL.appendingPathComponent(_:)();

      v79(v27, v19);
      sub_10023FC08(v80, v94);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v79(v81, v19);
      v85 = sub_10021145C(v82, v84, &v111);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2112;
      v86 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v86;
      v87 = v78;
      v88 = v102;
      *v102 = v86;
      v65 = v95;
      _os_log_impl(&_mh_execute_header, v95, v96, "Local Cache: Error deleting record: %s at path: %s - %@", v87, 0x20u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v64, type metadata accessor for CustodianRecord);
      sub_10023FC08(v63, type metadata accessor for CustodianRecord);
    }

    v89 = v107;
    *v107 = v60;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v109(v89);
  }

  return sub_100008D3C(v89, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100227FF8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v108 = a3;
  v109 = a2;
  v106 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = (&v91 - v5);
  v6 = type metadata accessor for UUID();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianHealthRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v96 = (&v91 - v14);
  v15 = __chkstk_darwin(v13);
  v102 = (&v91 - v16);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v91 - v26;
  __chkstk_darwin(v25);
  v29 = &v91 - v28;
  v30 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "RecoverySessionRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v110 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v31(v27, v19);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v100 = v31;
  v101 = v29;
  v31(v29, v19);
  v111 = 0;
  LODWORD(a1) = [v30 removeItemAtURL:v34 error:&v111];

  if (a1)
  {
    v35 = qword_1003D7F58;
    v36 = v111;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAE8);
    v38 = v110;
    sub_10023FBA0(v110, v18, type metadata accessor for CustodianHealthRecord);
    v39 = v102;
    sub_10023FBA0(v38, v102, type metadata accessor for CustodianHealthRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v111 = v95;
      *v42 = 136315394;
      v43 = v104;
      v96 = *(v104 + 16);
      v103 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v94 = v40;
      v44 = v99;
      LODWORD(v93) = v41;
      v45 = v105;
      v96(v99, v18, v105);
      v92 = type metadata accessor for CustodianHealthRecord;
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v43 + 8))(v44, v45);
      v49 = sub_10021145C(v46, v48, &v111);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v50 = v100;
      v100(v24, v19);
      v51 = v102;
      UUID.uuidString.getter();
      v52 = v101;
      URL.appendingPathComponent(_:)();

      v50(v27, v19);
      sub_10023FC08(v51, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v50(v52, v19);
      v56 = sub_10021145C(v53, v55, &v111);

      *(v42 + 14) = v56;
      v57 = v94;
      _os_log_impl(&_mh_execute_header, v94, v93, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v58 = v96;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for CustodianHealthRecord);
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);

      v45 = v105;
      v58 = *(v104 + 16);
    }

    v89 = v107;
    v58(v107, v110, v45);
    swift_storeEnumTagMultiPayload();
    v109(v89);
  }

  else
  {
    v59 = v111;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAAE8);
    v62 = v110;
    v63 = v96;
    sub_10023FBA0(v110, v96, type metadata accessor for CustodianHealthRecord);
    v64 = v103;
    sub_10023FBA0(v62, v103, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v105;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v92 = v60;
      v70 = v69;
      v91 = v69;
      v102 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v110;
      *v70 = 136315650;
      v60 = v92;
      LODWORD(v95) = v66;
      v71 = v104;
      v72 = *(v104 + 16);
      v94 = v65;
      v73 = v99;
      v72(v99, v63, v68);
      v93 = type metadata accessor for CustodianHealthRecord;
      sub_10023FC08(v63, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v71 + 8))(v73, v68);
      v77 = sub_10021145C(v74, v76, &v111);

      v78 = v91;
      *(v91 + 4) = v77;
      *(v78 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v100;
      v100(v24, v19);
      v80 = v103;
      UUID.uuidString.getter();
      v81 = v101;
      URL.appendingPathComponent(_:)();

      v79(v27, v19);
      sub_10023FC08(v80, v93);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v79(v81, v19);
      v85 = sub_10021145C(v82, v84, &v111);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2112;
      v86 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v86;
      v87 = v78;
      v88 = v102;
      *v102 = v86;
      v65 = v94;
      _os_log_impl(&_mh_execute_header, v94, v95, "Local Cache: Error deleting record: %s at path: %s - %@", v87, 0x20u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v64, type metadata accessor for CustodianHealthRecord);
      sub_10023FC08(v63, type metadata accessor for CustodianHealthRecord);
    }

    v89 = v107;
    *v107 = v60;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v109(v89);
  }

  return sub_100008D3C(v89, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100228BC8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v108 = a3;
  v109 = a2;
  v106 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = (&v91 - v5);
  v6 = type metadata accessor for UUID();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecoveryInfoRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v96 = (&v91 - v14);
  v15 = __chkstk_darwin(v13);
  v102 = (&v91 - v16);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v91 - v26;
  __chkstk_darwin(v25);
  v29 = &v91 - v28;
  v30 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "fetchRecoveryInfoFromCache()";
  URL.appendingPathComponent(_:isDirectory:)();
  v31 = *(v20 + 8);
  v31(v24, v19);
  v110 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v31(v27, v19);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v100 = v31;
  v101 = v29;
  v31(v29, v19);
  v111 = 0;
  LODWORD(a1) = [v30 removeItemAtURL:v34 error:&v111];

  if (a1)
  {
    v35 = qword_1003D7F58;
    v36 = v111;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAE8);
    v38 = v110;
    sub_10023FBA0(v110, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    v39 = v102;
    sub_10023FBA0(v38, v102, type metadata accessor for CustodianRecoveryInfoRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v111 = v95;
      *v42 = 136315394;
      v43 = v104;
      v96 = *(v104 + 16);
      v103 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v94 = v40;
      v44 = v99;
      LODWORD(v93) = v41;
      v45 = v105;
      v96(v99, v18, v105);
      v92 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v43 + 8))(v44, v45);
      v49 = sub_10021145C(v46, v48, &v111);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v50 = v100;
      v100(v24, v19);
      v51 = v102;
      UUID.uuidString.getter();
      v52 = v101;
      URL.appendingPathComponent(_:)();

      v50(v27, v19);
      sub_10023FC08(v51, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v50(v52, v19);
      v56 = sub_10021145C(v53, v55, &v111);

      *(v42 + 14) = v56;
      v57 = v94;
      _os_log_impl(&_mh_execute_header, v94, v93, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v58 = v96;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);

      v45 = v105;
      v58 = *(v104 + 16);
    }

    v89 = v107;
    v58(v107, v110, v45);
    swift_storeEnumTagMultiPayload();
    v109(v89);
  }

  else
  {
    v59 = v111;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAAE8);
    v62 = v110;
    v63 = v96;
    sub_10023FBA0(v110, v96, type metadata accessor for CustodianRecoveryInfoRecord);
    v64 = v103;
    sub_10023FBA0(v62, v103, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v105;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v92 = v60;
      v70 = v69;
      v91 = v69;
      v102 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v110;
      *v70 = 136315650;
      v60 = v92;
      LODWORD(v95) = v66;
      v71 = v104;
      v72 = *(v104 + 16);
      v94 = v65;
      v73 = v99;
      v72(v99, v63, v68);
      v93 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_10023FC08(v63, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v71 + 8))(v73, v68);
      v77 = sub_10021145C(v74, v76, &v111);

      v78 = v91;
      *(v91 + 4) = v77;
      *(v78 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v100;
      v100(v24, v19);
      v80 = v103;
      UUID.uuidString.getter();
      v81 = v101;
      URL.appendingPathComponent(_:)();

      v79(v27, v19);
      sub_10023FC08(v80, v93);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v79(v81, v19);
      v85 = sub_10021145C(v82, v84, &v111);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2112;
      v86 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v86;
      v87 = v78;
      v88 = v102;
      *v102 = v86;
      v65 = v94;
      _os_log_impl(&_mh_execute_header, v94, v95, "Local Cache: Error deleting record: %s at path: %s - %@", v87, 0x20u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v64, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023FC08(v63, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v89 = v107;
    *v107 = v60;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v109(v89);
  }

  return sub_100008D3C(v89, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100229798(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v115 = a3;
  v116 = a2;
  v113 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = (&v96 - v5);
  v112 = type metadata accessor for UUID();
  v110 = *(v112 - 8);
  v6 = *(v110 + 64);
  __chkstk_darwin(v112);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BenefactorInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = (&v96 - v15);
  __chkstk_darwin(v14);
  v100 = &v96 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v96 - v24;
  __chkstk_darwin(v23);
  v27 = &v96 - v26;
  v28 = [objc_opt_self() defaultManager];
  v103 = type metadata accessor for LocalCache();
  sub_100307F40();
  v104 = "iciaryManifestRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v29 = *(v18 + 8);
  v29(v22, v17);
  v111 = v8;
  v30 = *(v8 + 28);
  v117 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v29(v25, v17);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v107 = v29;
  v108 = v27;
  v106 = v17;
  v29(v27, v17);
  v118 = 0;
  LODWORD(a1) = [v28 removeItemAtURL:v33 error:&v118];

  if (a1)
  {
    v109 = v30;
    v34 = qword_1003D7F58;
    v35 = v118;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAE8);
    v37 = v117;
    v38 = v100;
    sub_10023FBA0(v117, v100, type metadata accessor for BenefactorInfoRecord);
    v39 = v102;
    sub_10023FBA0(v37, v102, type metadata accessor for BenefactorInfoRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v42 = 136315394;
      v43 = *(v111 + 28);
      v97 = v40;
      v44 = v110;
      v99 = *(v110 + 16);
      v101 = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45 = v105;
      v46 = v112;
      (v99)(v105, v38 + v43, v112);
      v96 = type metadata accessor for BenefactorInfoRecord;
      sub_10023FC08(v38, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v100) = v41;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, &v118);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v52 = v106;
      v51 = v107;
      v107(v22, v106);
      v53 = v39 + *(v111 + 28);
      UUID.uuidString.getter();
      v54 = v108;
      URL.appendingPathComponent(_:)();

      v51(v25, v52);
      sub_10023FC08(v39, v96);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v51(v54, v52);
      v58 = sub_10021145C(v55, v57, &v118);

      *(v42 + 14) = v58;
      v59 = v97;
      _os_log_impl(&_mh_execute_header, v97, v100, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v60 = v99;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for BenefactorInfoRecord);
      sub_10023FC08(v38, type metadata accessor for BenefactorInfoRecord);

      v60 = *(v110 + 16);
      v46 = v112;
    }

    v94 = v114;
    (v60)(v114, &v117[v109], v46);
    swift_storeEnumTagMultiPayload();
    v116(v94);
  }

  else
  {
    v61 = v118;
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAE8);
    v64 = v117;
    v65 = v101;
    sub_10023FBA0(v117, v101, type metadata accessor for BenefactorInfoRecord);
    v66 = v109;
    sub_10023FBA0(v64, v109, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v112;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315650;
      v72 = *(v111 + 28);
      LODWORD(v100) = v68;
      v73 = v65;
      v74 = v110;
      v75 = *(v110 + 16);
      v99 = v67;
      v76 = v105;
      v75(v105, v73 + v72, v70);
      v98 = type metadata accessor for BenefactorInfoRecord;
      sub_10023FC08(v73, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v74 + 8))(v76, v70);
      v80 = sub_10021145C(v77, v79, &v118);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v81 = v22;
      v83 = v106;
      v82 = v107;
      v107(v81, v106);
      v84 = v109;
      v85 = v109 + *(v111 + 28);
      UUID.uuidString.getter();
      v86 = v108;
      URL.appendingPathComponent(_:)();

      v82(v25, v83);
      sub_10023FC08(v84, v98);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v82(v86, v83);
      v90 = sub_10021145C(v87, v89, &v118);

      *(v71 + 14) = v90;
      *(v71 + 22) = 2112;
      v91 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v91;
      v92 = v102;
      *v102 = v91;
      v93 = v99;
      _os_log_impl(&_mh_execute_header, v99, v100, "Local Cache: Error deleting record: %s at path: %s - %@", v71, 0x20u);
      sub_100008D3C(v92, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v66, type metadata accessor for BenefactorInfoRecord);
      sub_10023FC08(v65, type metadata accessor for BenefactorInfoRecord);
    }

    v94 = v114;
    *v114 = v62;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v116(v94);
  }

  return sub_100008D3C(v94, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022A3CC(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v115 = a3;
  v116 = a2;
  v113 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = (&v96 - v5);
  v112 = type metadata accessor for UUID();
  v110 = *(v112 - 8);
  v6 = *(v110 + 64);
  __chkstk_darwin(v112);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = (&v96 - v15);
  __chkstk_darwin(v14);
  v100 = &v96 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v96 - v24;
  __chkstk_darwin(v23);
  v27 = &v96 - v26;
  v28 = [objc_opt_self() defaultManager];
  v103 = type metadata accessor for LocalCache();
  sub_100307F40();
  v104 = "8@NSArray16@NSError24";
  URL.appendingPathComponent(_:isDirectory:)();
  v29 = *(v18 + 8);
  v29(v22, v17);
  v111 = v8;
  v30 = *(v8 + 32);
  v117 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v29(v25, v17);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v107 = v29;
  v108 = v27;
  v106 = v17;
  v29(v27, v17);
  v118 = 0;
  LODWORD(a1) = [v28 removeItemAtURL:v33 error:&v118];

  if (a1)
  {
    v109 = v30;
    v34 = qword_1003D7F58;
    v35 = v118;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAE8);
    v37 = v117;
    v38 = v100;
    sub_10023FBA0(v117, v100, type metadata accessor for BeneficiaryInfoRecord);
    v39 = v102;
    sub_10023FBA0(v37, v102, type metadata accessor for BeneficiaryInfoRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v42 = 136315394;
      v43 = *(v111 + 32);
      v97 = v40;
      v44 = v110;
      v99 = *(v110 + 16);
      v101 = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45 = v105;
      v46 = v112;
      (v99)(v105, v38 + v43, v112);
      v96 = type metadata accessor for BeneficiaryInfoRecord;
      sub_10023FC08(v38, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v100) = v41;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, &v118);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v52 = v106;
      v51 = v107;
      v107(v22, v106);
      v53 = v39 + *(v111 + 32);
      UUID.uuidString.getter();
      v54 = v108;
      URL.appendingPathComponent(_:)();

      v51(v25, v52);
      sub_10023FC08(v39, v96);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v51(v54, v52);
      v58 = sub_10021145C(v55, v57, &v118);

      *(v42 + 14) = v58;
      v59 = v97;
      _os_log_impl(&_mh_execute_header, v97, v100, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v60 = v99;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023FC08(v38, type metadata accessor for BeneficiaryInfoRecord);

      v60 = *(v110 + 16);
      v46 = v112;
    }

    v94 = v114;
    (v60)(v114, &v117[v109], v46);
    swift_storeEnumTagMultiPayload();
    v116(v94);
  }

  else
  {
    v61 = v118;
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAE8);
    v64 = v117;
    v65 = v101;
    sub_10023FBA0(v117, v101, type metadata accessor for BeneficiaryInfoRecord);
    v66 = v109;
    sub_10023FBA0(v64, v109, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v112;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315650;
      v72 = *(v111 + 32);
      LODWORD(v100) = v68;
      v73 = v65;
      v74 = v110;
      v75 = *(v110 + 16);
      v99 = v67;
      v76 = v105;
      v75(v105, v73 + v72, v70);
      v98 = type metadata accessor for BeneficiaryInfoRecord;
      sub_10023FC08(v73, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v74 + 8))(v76, v70);
      v80 = sub_10021145C(v77, v79, &v118);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v81 = v22;
      v83 = v106;
      v82 = v107;
      v107(v81, v106);
      v84 = v109;
      v85 = v109 + *(v111 + 32);
      UUID.uuidString.getter();
      v86 = v108;
      URL.appendingPathComponent(_:)();

      v82(v25, v83);
      sub_10023FC08(v84, v98);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v82(v86, v83);
      v90 = sub_10021145C(v87, v89, &v118);

      *(v71 + 14) = v90;
      *(v71 + 22) = 2112;
      v91 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v91;
      v92 = v102;
      *v102 = v91;
      v93 = v99;
      _os_log_impl(&_mh_execute_header, v99, v100, "Local Cache: Error deleting record: %s at path: %s - %@", v71, 0x20u);
      sub_100008D3C(v92, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v66, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023FC08(v65, type metadata accessor for BeneficiaryInfoRecord);
    }

    v94 = v114;
    *v114 = v62;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v116(v94);
  }

  return sub_100008D3C(v94, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022B000(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v115 = a3;
  v116 = a2;
  v113 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = (&v96 - v5);
  v112 = type metadata accessor for UUID();
  v110 = *(v112 - 8);
  v6 = *(v110 + 64);
  __chkstk_darwin(v112);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InheritanceInvitationRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = (&v96 - v15);
  __chkstk_darwin(v14);
  v100 = &v96 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v96 - v24;
  __chkstk_darwin(v23);
  v27 = &v96 - v26;
  v28 = [objc_opt_self() defaultManager];
  v103 = type metadata accessor for LocalCache();
  sub_100307F40();
  v104 = "iciaryInfoRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v29 = *(v18 + 8);
  v29(v22, v17);
  v111 = v8;
  v30 = *(v8 + 36);
  v117 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v29(v25, v17);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v107 = v29;
  v108 = v27;
  v106 = v17;
  v29(v27, v17);
  v118 = 0;
  LODWORD(a1) = [v28 removeItemAtURL:v33 error:&v118];

  if (a1)
  {
    v109 = v30;
    v34 = qword_1003D7F58;
    v35 = v118;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAE8);
    v37 = v117;
    v38 = v100;
    sub_10023FBA0(v117, v100, type metadata accessor for InheritanceInvitationRecord);
    v39 = v102;
    sub_10023FBA0(v37, v102, type metadata accessor for InheritanceInvitationRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v42 = 136315394;
      v43 = *(v111 + 36);
      v97 = v40;
      v44 = v110;
      v99 = *(v110 + 16);
      v101 = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45 = v105;
      v46 = v112;
      (v99)(v105, v38 + v43, v112);
      v96 = type metadata accessor for InheritanceInvitationRecord;
      sub_10023FC08(v38, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v100) = v41;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, &v118);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v52 = v106;
      v51 = v107;
      v107(v22, v106);
      v53 = v39 + *(v111 + 36);
      UUID.uuidString.getter();
      v54 = v108;
      URL.appendingPathComponent(_:)();

      v51(v25, v52);
      sub_10023FC08(v39, v96);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v51(v54, v52);
      v58 = sub_10021145C(v55, v57, &v118);

      *(v42 + 14) = v58;
      v59 = v97;
      _os_log_impl(&_mh_execute_header, v97, v100, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v60 = v99;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for InheritanceInvitationRecord);
      sub_10023FC08(v38, type metadata accessor for InheritanceInvitationRecord);

      v60 = *(v110 + 16);
      v46 = v112;
    }

    v94 = v114;
    (v60)(v114, &v117[v109], v46);
    swift_storeEnumTagMultiPayload();
    v116(v94);
  }

  else
  {
    v61 = v118;
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAE8);
    v64 = v117;
    v65 = v101;
    sub_10023FBA0(v117, v101, type metadata accessor for InheritanceInvitationRecord);
    v66 = v109;
    sub_10023FBA0(v64, v109, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v112;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315650;
      v72 = *(v111 + 36);
      LODWORD(v100) = v68;
      v73 = v65;
      v74 = v110;
      v75 = *(v110 + 16);
      v99 = v67;
      v76 = v105;
      v75(v105, v73 + v72, v70);
      v98 = type metadata accessor for InheritanceInvitationRecord;
      sub_10023FC08(v73, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v74 + 8))(v76, v70);
      v80 = sub_10021145C(v77, v79, &v118);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v81 = v22;
      v83 = v106;
      v82 = v107;
      v107(v81, v106);
      v84 = v109;
      v85 = v109 + *(v111 + 36);
      UUID.uuidString.getter();
      v86 = v108;
      URL.appendingPathComponent(_:)();

      v82(v25, v83);
      sub_10023FC08(v84, v98);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v82(v86, v83);
      v90 = sub_10021145C(v87, v89, &v118);

      *(v71 + 14) = v90;
      *(v71 + 22) = 2112;
      v91 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v91;
      v92 = v102;
      *v102 = v91;
      v93 = v99;
      _os_log_impl(&_mh_execute_header, v99, v100, "Local Cache: Error deleting record: %s at path: %s - %@", v71, 0x20u);
      sub_100008D3C(v92, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v66, type metadata accessor for InheritanceInvitationRecord);
      sub_10023FC08(v65, type metadata accessor for InheritanceInvitationRecord);
    }

    v94 = v114;
    *v114 = v62;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v116(v94);
  }

  return sub_100008D3C(v94, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022BC34(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v115 = a3;
  v116 = a2;
  v113 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v4 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = (&v96 - v5);
  v112 = type metadata accessor for UUID();
  v110 = *(v112 - 8);
  v6 = *(v110 + 64);
  __chkstk_darwin(v112);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InheritanceHealthRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v102 = (&v96 - v15);
  __chkstk_darwin(v14);
  v100 = &v96 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v96 - v24;
  __chkstk_darwin(v23);
  v27 = &v96 - v26;
  v28 = [objc_opt_self() defaultManager];
  v103 = type metadata accessor for LocalCache();
  sub_100307F40();
  v104 = "_inheritanceStorage";
  URL.appendingPathComponent(_:isDirectory:)();
  v29 = *(v18 + 8);
  v29(v22, v17);
  v111 = v8;
  v30 = *(v8 + 28);
  v117 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v29(v25, v17);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v107 = v29;
  v108 = v27;
  v106 = v17;
  v29(v27, v17);
  v118 = 0;
  LODWORD(a1) = [v28 removeItemAtURL:v33 error:&v118];

  if (a1)
  {
    v109 = v30;
    v34 = qword_1003D7F58;
    v35 = v118;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAE8);
    v37 = v117;
    v38 = v100;
    sub_10023FBA0(v117, v100, type metadata accessor for InheritanceHealthRecord);
    v39 = v102;
    sub_10023FBA0(v37, v102, type metadata accessor for InheritanceHealthRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v42 = 136315394;
      v43 = *(v111 + 28);
      v97 = v40;
      v44 = v110;
      v99 = *(v110 + 16);
      v101 = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45 = v105;
      v46 = v112;
      (v99)(v105, v38 + v43, v112);
      v96 = type metadata accessor for InheritanceHealthRecord;
      sub_10023FC08(v38, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v100) = v41;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, &v118);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v52 = v106;
      v51 = v107;
      v107(v22, v106);
      v53 = v39 + *(v111 + 28);
      UUID.uuidString.getter();
      v54 = v108;
      URL.appendingPathComponent(_:)();

      v51(v25, v52);
      sub_10023FC08(v39, v96);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v51(v54, v52);
      v58 = sub_10021145C(v55, v57, &v118);

      *(v42 + 14) = v58;
      v59 = v97;
      _os_log_impl(&_mh_execute_header, v97, v100, "Local Cache: Record deleted successfully - %s, - URL: %s", v42, 0x16u);
      swift_arrayDestroy();

      v60 = v99;
    }

    else
    {
      sub_10023FC08(v39, type metadata accessor for InheritanceHealthRecord);
      sub_10023FC08(v38, type metadata accessor for InheritanceHealthRecord);

      v60 = *(v110 + 16);
      v46 = v112;
    }

    v94 = v114;
    (v60)(v114, &v117[v109], v46);
    swift_storeEnumTagMultiPayload();
    v116(v94);
  }

  else
  {
    v61 = v118;
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAE8);
    v64 = v117;
    v65 = v101;
    sub_10023FBA0(v117, v101, type metadata accessor for InheritanceHealthRecord);
    v66 = v109;
    sub_10023FBA0(v64, v109, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v112;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315650;
      v72 = *(v111 + 28);
      LODWORD(v100) = v68;
      v73 = v65;
      v74 = v110;
      v75 = *(v110 + 16);
      v99 = v67;
      v76 = v105;
      v75(v105, v73 + v72, v70);
      v98 = type metadata accessor for InheritanceHealthRecord;
      sub_10023FC08(v73, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v74 + 8))(v76, v70);
      v80 = sub_10021145C(v77, v79, &v118);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v81 = v22;
      v83 = v106;
      v82 = v107;
      v107(v81, v106);
      v84 = v109;
      v85 = v109 + *(v111 + 28);
      UUID.uuidString.getter();
      v86 = v108;
      URL.appendingPathComponent(_:)();

      v82(v25, v83);
      sub_10023FC08(v84, v98);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v82(v86, v83);
      v90 = sub_10021145C(v87, v89, &v118);

      *(v71 + 14) = v90;
      *(v71 + 22) = 2112;
      v91 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v91;
      v92 = v102;
      *v102 = v91;
      v93 = v99;
      _os_log_impl(&_mh_execute_header, v99, v100, "Local Cache: Error deleting record: %s at path: %s - %@", v71, 0x20u);
      sub_100008D3C(v92, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v66, type metadata accessor for InheritanceHealthRecord);
      sub_10023FC08(v65, type metadata accessor for InheritanceHealthRecord);
    }

    v94 = v114;
    *v114 = v62;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v116(v94);
  }

  return sub_100008D3C(v94, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022C868(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CustodianshipInfoRecord() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10022C9E4, 0, 0);
}

uint64_t sub_10022C9E4()
{
  v25 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    (*(v10 + 16))(v8, v7, v9);
    sub_10023FC08(v7, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v10 + 8))(v8, v9);
    v15 = sub_10021145C(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v24);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[26], type metadata accessor for CustodianshipInfoRecord);
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  (*(v17 + 16))(v16, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v19 = *sub_1000080F8(v0 + 2, v0[5]);
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = sub_10022CD4C;
  v21 = v0[14];
  v22 = v0[15];

  return sub_10021F398(v21, v22);
}

uint64_t sub_10022CD4C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10022CF14;
  }

  else
  {
    v3 = sub_10022CE60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022CE60()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  sub_10000839C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10022CF14()
{
  v69 = v0;
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 240) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    v5 = *(v0 + 120);
    v6 = *(v0 + 232);

    v7 = *(v0 + 88);
    *(v0 + 248) = v7;
    sub_10023FBA0(v5, v4, type metadata accessor for CustodianshipInfoRecord);
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    if (v11)
    {
      v13 = *(v0 + 184);
      v67 = v8;
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v16 = 136315650;
      (*(v14 + 16))(v13, v12, v15);
      sub_10023FC08(v12, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v8 = v67;
      v20 = sub_10021145C(v17, v19, v68);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v68);
      *(v16 + 22) = 2112;
      v21 = v67;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v66 = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v16, 0x20u);
      sub_100008D3C(v66, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    }

    if (sub_1002DEA78(v8))
    {
      v25 = *(v0 + 216);
      sub_10023FBA0(*(v0 + 120), *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 192);
      if (v28)
      {
        v30 = *(v0 + 184);
        v31 = *(v0 + 160);
        v32 = *(v0 + 168);
        v33 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v33 = 136315394;
        (*(v32 + 16))(v30, v29, v31);
        sub_10023FC08(v29, type metadata accessor for CustodianshipInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v32 + 8))(v30, v31);
        v37 = sub_10021145C(v34, v36, v68);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v68);
        _os_log_impl(&_mh_execute_header, v26, v27, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
      }

      v49 = swift_task_alloc();
      *(v0 + 256) = v49;
      v49[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v50 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v51 = swift_task_alloc();
      *(v0 + 264) = v51;
      *v51 = v0;
      v51[1] = sub_10022D670;
      v52 = *(v0 + 176);
      v53 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v52, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023F564, v49, v53);
    }

    v38 = *(v0 + 248);
    v39 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (v39 && (v40 = sub_10030B6CC(v39), , v40))
    {
      v41 = *(v0 + 248);
      swift_getErrorValue();
      v42 = *(v0 + 56);
      v43 = *(v0 + 72);
      sub_1002DEA80(*(v0 + 64));
    }

    else
    {
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);

      *(v0 + 96) = v45;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError);
      v46 = v45;
      v47 = _getErrorEmbeddedNSError<A>(_:)();
      v48 = *(v0 + 248);
      if (v47)
      {
      }

      else
      {
        v54 = *(v0 + 240);
        swift_allocError();
        *v55 = v48;
      }
    }

    v56 = *(v0 + 248);
    swift_willThrow();

    v57 = *(v0 + 80);
  }

  else
  {
    v23 = *(v0 + 80);

    swift_willThrow();
    v24 = *(v0 + 232);
  }

  v59 = *(v0 + 200);
  v58 = *(v0 + 208);
  v61 = *(v0 + 184);
  v60 = *(v0 + 192);
  v62 = *(v0 + 176);
  v63 = *(v0 + 152);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_10022D670()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_10022D94C;
  }

  else
  {
    v5 = v2[32];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = sub_10022D7A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10022D7A8()
{
  v1 = *(v0 + 248);
  v2 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (v2)
  {
    v3 = sub_10030B6CC(v2);

    if (v3)
    {
      v4 = *(v0 + 248);
      swift_getErrorValue();
      v5 = *(v0 + 56);
      v6 = *(v0 + 72);
      sub_1002DEA80(*(v0 + 64));

LABEL_5:

      goto LABEL_7;
    }
  }

  v7 = *(v0 + 240);
  v8 = *(v0 + 248);

  *(v0 + 96) = v8;
  sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError);
  v9 = v8;
  v10 = _getErrorEmbeddedNSError<A>(_:)();
  v4 = *(v0 + 248);
  if (v10)
  {
    goto LABEL_5;
  }

  v11 = *(v0 + 240);
  swift_allocError();
  *v12 = v4;
LABEL_7:
  v13 = *(v0 + 248);
  swift_willThrow();

  v14 = *(v0 + 80);

  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10022D94C()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 80);

  v3 = *(v0 + 272);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10022DA0C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CustodianRecord() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10022DB88, 0, 0);
}

uint64_t sub_10022DB88()
{
  v25 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    (*(v10 + 16))(v8, v7, v9);
    sub_10023FC08(v7, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v10 + 8))(v8, v9);
    v15 = sub_10021145C(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v24);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[26], type metadata accessor for CustodianRecord);
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  (*(v17 + 16))(v16, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v19 = *sub_1000080F8(v0 + 2, v0[5]);
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = sub_10022DEF8;
  v21 = v0[14];
  v22 = v0[15];

  return sub_10021FA78(v21, v22);
}

uint64_t sub_10022DEF8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10022E00C;
  }

  else
  {
    v3 = sub_100240EB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022E00C()
{
  v69 = v0;
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 240) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    v5 = *(v0 + 120);
    v6 = *(v0 + 232);

    v7 = *(v0 + 88);
    *(v0 + 248) = v7;
    sub_10023FBA0(v5, v4, type metadata accessor for CustodianRecord);
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    if (v11)
    {
      v13 = *(v0 + 184);
      v67 = v8;
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v16 = 136315650;
      (*(v14 + 16))(v13, v12, v15);
      sub_10023FC08(v12, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v8 = v67;
      v20 = sub_10021145C(v17, v19, v68);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v68);
      *(v16 + 22) = 2112;
      v21 = v67;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v66 = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v16, 0x20u);
      sub_100008D3C(v66, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 200), type metadata accessor for CustodianRecord);
    }

    if (sub_1002DEA78(v8))
    {
      v25 = *(v0 + 216);
      sub_10023FBA0(*(v0 + 120), *(v0 + 192), type metadata accessor for CustodianRecord);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 192);
      if (v28)
      {
        v30 = *(v0 + 184);
        v31 = *(v0 + 160);
        v32 = *(v0 + 168);
        v33 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v33 = 136315394;
        (*(v32 + 16))(v30, v29, v31);
        sub_10023FC08(v29, type metadata accessor for CustodianRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v32 + 8))(v30, v31);
        v37 = sub_10021145C(v34, v36, v68);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v68);
        _os_log_impl(&_mh_execute_header, v26, v27, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 192), type metadata accessor for CustodianRecord);
      }

      v49 = swift_task_alloc();
      *(v0 + 256) = v49;
      v49[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v50 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v51 = swift_task_alloc();
      *(v0 + 264) = v51;
      *v51 = v0;
      v51[1] = sub_10022E778;
      v52 = *(v0 + 176);
      v53 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v52, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_100240574, v49, v53);
    }

    v38 = *(v0 + 248);
    v39 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (v39 && (v40 = sub_10030B6CC(v39), , v40))
    {
      v41 = *(v0 + 248);
      swift_getErrorValue();
      v42 = *(v0 + 56);
      v43 = *(v0 + 72);
      sub_1002DEA80(*(v0 + 64));
    }

    else
    {
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);

      *(v0 + 96) = v45;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError);
      v46 = v45;
      v47 = _getErrorEmbeddedNSError<A>(_:)();
      v48 = *(v0 + 248);
      if (v47)
      {
      }

      else
      {
        v54 = *(v0 + 240);
        swift_allocError();
        *v55 = v48;
      }
    }

    v56 = *(v0 + 248);
    swift_willThrow();

    v57 = *(v0 + 80);
  }

  else
  {
    v23 = *(v0 + 80);

    swift_willThrow();
    v24 = *(v0 + 232);
  }

  v59 = *(v0 + 200);
  v58 = *(v0 + 208);
  v61 = *(v0 + 184);
  v60 = *(v0 + 192);
  v62 = *(v0 + 176);
  v63 = *(v0 + 152);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_10022E778()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_100240EB4;
  }

  else
  {
    v5 = v2[32];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = sub_100240E2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10022E8B0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = type metadata accessor for BenefactorInfoRecord();
  v3[24] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10022EA30, 0, 0);
}

uint64_t sub_10022EA30()
{
  v26 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[28] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for BenefactorInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[20];
    v11 = v0[21];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136315394;
    (*(v11 + 16))(v8, v7 + *(v9 + 28), v10);
    sub_10023FC08(v7, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v8, v10);
    v16 = sub_10021145C(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v25);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[27], type metadata accessor for BenefactorInfoRecord);
  }

  v18 = v0[18];
  v17 = v0[19];
  v19 = v0[17];
  (*(v18 + 16))(v17, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  v20 = *sub_1000080F8(v0 + 2, v0[5]);
  v21 = swift_task_alloc();
  v0[29] = v21;
  *v21 = v0;
  v21[1] = sub_10022ED9C;
  v22 = v0[14];
  v23 = v0[15];

  return sub_100220038(v22, v23);
}

uint64_t sub_10022ED9C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10022EF64;
  }

  else
  {
    v3 = sub_10022EEB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022EEB0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  sub_10000839C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10022EF64()
{
  v71 = v0;
  v1 = *(v0 + 240);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 248) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 120);
    v6 = *(v0 + 240);

    v7 = *(v0 + 88);
    *(v0 + 256) = v7;
    sub_10023FBA0(v5, v4, type metadata accessor for BenefactorInfoRecord);
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 208);
    if (v11)
    {
      v13 = *(v0 + 184);
      v14 = *(v0 + 192);
      v69 = v8;
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v17 = 136315650;
      (*(v15 + 16))(v13, v12 + *(v14 + 28), v16);
      sub_10023FC08(v12, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v16);
      v8 = v69;
      v21 = sub_10021145C(v18, v20, v70);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v70);
      *(v17 + 22) = 2112;
      v22 = v69;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      *v68 = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v17, 0x20u);
      sub_100008D3C(v68, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 208), type metadata accessor for BenefactorInfoRecord);
    }

    if (sub_1002DEA78(v8))
    {
      v26 = *(v0 + 224);
      sub_10023FBA0(*(v0 + 120), *(v0 + 200), type metadata accessor for BenefactorInfoRecord);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 200);
      if (v29)
      {
        v31 = *(v0 + 184);
        v32 = *(v0 + 192);
        v33 = *(v0 + 160);
        v34 = *(v0 + 168);
        v35 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v35 = 136315394;
        (*(v34 + 16))(v31, v30 + *(v32 + 28), v33);
        sub_10023FC08(v30, type metadata accessor for BenefactorInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v34 + 8))(v31, v33);
        v39 = sub_10021145C(v36, v38, v70);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v70);
        _os_log_impl(&_mh_execute_header, v27, v28, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v35, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 200), type metadata accessor for BenefactorInfoRecord);
      }

      v51 = swift_task_alloc();
      *(v0 + 264) = v51;
      v51[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v52 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v53 = swift_task_alloc();
      *(v0 + 272) = v53;
      *v53 = v0;
      v53[1] = sub_10022F6C8;
      v54 = *(v0 + 176);
      v55 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v54, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023DFB4, v51, v55);
    }

    v40 = *(v0 + 256);
    v41 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (v41 && (v42 = sub_10030B6CC(v41), , v42))
    {
      v43 = *(v0 + 256);
      swift_getErrorValue();
      v44 = *(v0 + 56);
      v45 = *(v0 + 72);
      sub_1002DEA80(*(v0 + 64));
    }

    else
    {
      v46 = *(v0 + 248);
      v47 = *(v0 + 256);

      *(v0 + 96) = v47;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError);
      v48 = v47;
      v49 = _getErrorEmbeddedNSError<A>(_:)();
      v50 = *(v0 + 256);
      if (v49)
      {
      }

      else
      {
        v56 = *(v0 + 248);
        swift_allocError();
        *v57 = v50;
      }
    }

    v58 = *(v0 + 256);
    swift_willThrow();

    v59 = *(v0 + 80);
  }

  else
  {
    v24 = *(v0 + 80);

    swift_willThrow();
    v25 = *(v0 + 240);
  }

  v61 = *(v0 + 208);
  v60 = *(v0 + 216);
  v62 = *(v0 + 200);
  v64 = *(v0 + 176);
  v63 = *(v0 + 184);
  v65 = *(v0 + 152);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10022F6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_10022F9A4;
  }

  else
  {
    v5 = v2[33];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = sub_10022F800;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10022F800()
{
  v1 = *(v0 + 256);
  v2 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (v2)
  {
    v3 = sub_10030B6CC(v2);

    if (v3)
    {
      v4 = *(v0 + 256);
      swift_getErrorValue();
      v5 = *(v0 + 56);
      v6 = *(v0 + 72);
      sub_1002DEA80(*(v0 + 64));

LABEL_5:

      goto LABEL_7;
    }
  }

  v7 = *(v0 + 248);
  v8 = *(v0 + 256);

  *(v0 + 96) = v8;
  sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError);
  v9 = v8;
  v10 = _getErrorEmbeddedNSError<A>(_:)();
  v4 = *(v0 + 256);
  if (v10)
  {
    goto LABEL_5;
  }

  v11 = *(v0 + 248);
  swift_allocError();
  *v12 = v4;
LABEL_7:
  v13 = *(v0 + 256);
  swift_willThrow();

  v14 = *(v0 + 80);

  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 152);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10022F9A4()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 80);

  v3 = *(v0 + 280);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10022FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v8 = sub_100005814(&qword_1003E3628, qword_10034A980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a2 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v18 = sub_1000080F8(v26, v26[3]);
  (*(v9 + 16))(v12, a1, v8);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v9 + 32))(v20 + v19, v12, v8);
  v21 = *v18;
  v25(v23, v24, v20);

  return sub_10000839C(v26);
}

uint64_t sub_10022FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CustodianRecord();
  v48 = *(v51 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v51);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, v15, v8);
    sub_10023FC08(v15, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianRecord);
  }

  v27 = v50;
  v28 = v53;
  (*(v50 + 16))(v7, v53 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for CustodianRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v54;
  *v34 = v52;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v51 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9C0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100174A80(a1, v42, sub_10023FB44, v33);

  return sub_10000839C(v55);
}

uint64_t sub_10023030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CustodianRecoveryInfoRecord();
  v48 = *(v51 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v51);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianRecoveryInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, v15, v8);
    sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v27 = v50;
  v28 = v53;
  (*(v50 + 16))(v7, v53 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for CustodianRecoveryInfoRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v54;
  *v34 = v52;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v51 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9C0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100174D78(a1, v42, sub_10023FB74, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100230970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CustodianHealthRecord();
  v48 = *(v51 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v51);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianHealthRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, v15, v8);
    sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
  }

  v27 = v50;
  v28 = v53;
  (*(v50 + 16))(v7, v53 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for CustodianHealthRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianHealthRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v54;
  *v34 = v52;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v51 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9C0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175070(a1, v42, sub_10023FCD4, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100230FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CustodianshipInfoRecord();
  v48 = *(v51 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v51);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianshipInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, v15, v8);
    sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
  }

  v27 = v50;
  v28 = v53;
  (*(v50 + 16))(v7, v53 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for CustodianshipInfoRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianshipInfoRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v54;
  *v34 = v52;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v51 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9C0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175368(a1, v42, sub_10023F538, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100231638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for BeneficiaryInfoRecord();
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v54);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for BeneficiaryInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, &v15[*(v54 + 32)], v8);
    sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v7, v52 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for BeneficiaryInfoRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for BeneficiaryInfoRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v53;
  *v34 = v51;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v54 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9F0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175958(a1, v42, sub_10023E7EC, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100231CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InheritanceHealthRecord();
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v54);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for InheritanceHealthRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, &v15[*(v54 + 28)], v8);
    sub_10023FC08(v15, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for InheritanceHealthRecord);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v7, v52 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for InheritanceHealthRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for InheritanceHealthRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v53;
  *v34 = v51;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v54 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9F0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175660(a1, v42, sub_10023D900, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100232310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InheritanceInvitationRecord();
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v54);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for InheritanceInvitationRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, &v15[*(v54 + 36)], v8);
    sub_10023FC08(v15, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for InheritanceInvitationRecord);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v7, v52 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for InheritanceInvitationRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for InheritanceInvitationRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v53;
  *v34 = v51;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v54 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9F0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175C50(a1, v42, sub_10023EC28, v33);

  return sub_10000839C(v55);
}

uint64_t sub_10023297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for BenefactorInfoRecord();
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v54);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for BenefactorInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, &v15[*(v54 + 28)], v8);
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record with recordID: %s, type: %s...", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v7, v52 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_10023FBA0(a1, v49, type metadata accessor for BenefactorInfoRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for BenefactorInfoRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v53;
  *v34 = v51;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v54 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9F0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 privateCloudDatabase];

  sub_100175F48(a1, v42, sub_10023DC8C, v33);

  return sub_10000839C(v55);
}

uint64_t sub_100232FE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v65 = a4;
  v66 = a5;
  v59 = a3;
  v64 = a2;
  v62 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v60 = *(v62 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v62);
  v58 = &v57 - v7;
  v63 = type metadata accessor for UUID();
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v63);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v57 - v17;
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v57 - v26);
  sub_100012D04(a1, &v57 - v26, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_10023FBA0(v64, v15, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v32 = 136315650;
      v33 = v61;
      v34 = v63;
      (*(v61 + 16))(v10, v15, v63);
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v62) = v31;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v33 + 8))(v10, v34);
      v38 = sub_10021145C(v35, v37, v67);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v67);
      *(v32 + 22) = 2080;
      v67[5] = v28;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, v67);

      *(v32 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v30, v62, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);
    }

    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v65(v25);

    return sub_100008D3C(v25, &unk_1003DA200, &unk_10033FA80);
  }

  else
  {
    sub_10023FC6C(v27, v20, type metadata accessor for CustodianRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAE8);
    sub_10023FBA0(v64, v18, type metadata accessor for CustodianRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v45 = 136315394;
      v46 = v61;
      v47 = v63;
      (*(v61 + 16))(v10, v18, v63);
      sub_10023FC08(v18, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v46 + 8))(v10, v47);
      v51 = sub_10021145C(v48, v50, v67);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v67);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianRecord);
    }

    v53 = v60;
    v54 = v58;
    v55 = v62;
    (*(v60 + 16))(v58, v59 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v62);
    Dependency.wrappedValue.getter();
    (*(v53 + 8))(v54, v55);
    v56 = *sub_1000080F8(v67, v67[3]);
    sub_10017DF74(v20, 0, 2, v65, v66);
    sub_10023FC08(v20, type metadata accessor for CustodianRecord);
    return sub_10000839C(v67);
  }
}

uint64_t sub_10023384C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v61 = a3;
  v66 = a2;
  v64 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v64);
  v8 = &v59 - v7;
  v65 = type metadata accessor for UUID();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v65);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecoveryInfoRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v59 - v26);
  sub_100012D04(a1, &v59 - v26, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_10023FBA0(v66, v15, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v32 = 136315650;
      v33 = v63;
      v34 = *(v63 + 16);
      LODWORD(v64) = v31;
      v35 = v60;
      v36 = v65;
      v34(v60, v15, v65);
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v33 + 8))(v35, v36);
      v40 = sub_10021145C(v37, v39, v69);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v69);
      *(v32 + 22) = 2080;
      v69[5] = v28;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = String.init<A>(describing:)();
      v43 = sub_10021145C(v41, v42, v69);

      *(v32 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v30, v64, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v67(v25);

    return sub_100008D3C(v25, &unk_1003DB610, &unk_10033FA90);
  }

  else
  {
    sub_10023FC6C(v27, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    sub_10023FBA0(v66, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v47 = 136315394;
      v48 = v63;
      v49 = v60;
      v50 = v65;
      (*(v63 + 16))(v60, v18, v65);
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v48 + 8))(v49, v50);
      v54 = sub_10021145C(v51, v53, v69);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v69);
      _os_log_impl(&_mh_execute_header, v45, v46, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v56 = v62;
    v57 = v64;
    (*(v62 + 16))(v8, v61 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v64);
    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v8, v57);
    v58 = *sub_1000080F8(v69, v69[3]);
    sub_10017E358(v20, 0, 2, v67, v68);
    sub_10023FC08(v20, type metadata accessor for CustodianRecoveryInfoRecord);
    return sub_10000839C(v69);
  }
}

uint64_t sub_1002340A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v61 = a3;
  v66 = a2;
  v64 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v64);
  v8 = &v59 - v7;
  v65 = type metadata accessor for UUID();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v65);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianHealthRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v59 - v26);
  sub_100012D04(a1, &v59 - v26, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_10023FBA0(v66, v15, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v32 = 136315650;
      v33 = v63;
      v34 = *(v63 + 16);
      LODWORD(v64) = v31;
      v35 = v60;
      v36 = v65;
      v34(v60, v15, v65);
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v33 + 8))(v35, v36);
      v40 = sub_10021145C(v37, v39, v69);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v69);
      *(v32 + 22) = 2080;
      v69[5] = v28;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = String.init<A>(describing:)();
      v43 = sub_10021145C(v41, v42, v69);

      *(v32 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v30, v64, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
    }

    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v67(v25);

    return sub_100008D3C(v25, &qword_1003D91E8, &qword_100346AC0);
  }

  else
  {
    sub_10023FC6C(v27, v20, type metadata accessor for CustodianHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    sub_10023FBA0(v66, v18, type metadata accessor for CustodianHealthRecord);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v47 = 136315394;
      v48 = v63;
      v49 = v60;
      v50 = v65;
      (*(v63 + 16))(v60, v18, v65);
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v48 + 8))(v49, v50);
      v54 = sub_10021145C(v51, v53, v69);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v69);
      _os_log_impl(&_mh_execute_header, v45, v46, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
    }

    v56 = v62;
    v57 = v64;
    (*(v62 + 16))(v8, v61 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v64);
    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v8, v57);
    v58 = *sub_1000080F8(v69, v69[3]);
    sub_10017E73C(v20, 0, 2, v67, v68);
    sub_10023FC08(v20, type metadata accessor for CustodianHealthRecord);
    return sub_10000839C(v69);
  }
}

uint64_t sub_1002348F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v61 = a3;
  v66 = a2;
  v64 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v64);
  v8 = &v59 - v7;
  v65 = type metadata accessor for UUID();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v65);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianshipInfoRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v59 - v26);
  sub_100012D04(a1, &v59 - v26, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAE8);
    sub_10023FBA0(v66, v15, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v32 = 136315650;
      v33 = v63;
      v34 = *(v63 + 16);
      LODWORD(v64) = v31;
      v35 = v60;
      v36 = v65;
      v34(v60, v15, v65);
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v33 + 8))(v35, v36);
      v40 = sub_10021145C(v37, v39, v69);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v69);
      *(v32 + 22) = 2080;
      v69[5] = v28;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = String.init<A>(describing:)();
      v43 = sub_10021145C(v41, v42, v69);

      *(v32 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v30, v64, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
    }

    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v67(v25);

    return sub_100008D3C(v25, &unk_1003DA0E0, &unk_10033F1D0);
  }

  else
  {
    sub_10023FC6C(v27, v20, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    sub_10023FBA0(v66, v18, type metadata accessor for CustodianshipInfoRecord);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v47 = 136315394;
      v48 = v63;
      v49 = v60;
      v50 = v65;
      (*(v63 + 16))(v60, v18, v65);
      sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v48 + 8))(v49, v50);
      v54 = sub_10021145C(v51, v53, v69);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v69);
      _os_log_impl(&_mh_execute_header, v45, v46, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianshipInfoRecord);
    }

    v56 = v62;
    v57 = v64;
    (*(v62 + 16))(v8, v61 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v64);
    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v8, v57);
    v58 = *sub_1000080F8(v69, v69[3]);
    sub_10017EB20(v20, 0, 2, v67, v68);
    sub_10023FC08(v20, type metadata accessor for CustodianshipInfoRecord);
    return sub_10000839C(v69);
  }
}

uint64_t sub_100235148(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v63 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for UUID();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for BeneficiaryInfoRecord();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v61 - v27);
  sub_100012D04(a1, &v61 - v27, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_10023FBA0(v68, v16, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v33 = 136315650;
      v35 = v66;
      v34 = v67;
      v36 = *(v66 + 16);
      v37 = &v16[*(v61 + 32)];
      LODWORD(v65) = v32;
      v38 = v62;
      v36(v62, v37, v67);
      sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v38, v34);
      v42 = sub_10021145C(v39, v41, v71);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v71);
      *(v33 + 22) = 2080;
      v71[5] = v29;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v43 = String.init<A>(describing:)();
      v45 = sub_10021145C(v43, v44, v71);

      *(v33 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v31, v65, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
    }

    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v69(v26);

    return sub_100008D3C(v26, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v28, v21, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAE8);
    sub_10023FBA0(v68, v19, type metadata accessor for BeneficiaryInfoRecord);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v49 = 136315394;
      v50 = v62;
      v52 = v66;
      v51 = v67;
      (*(v66 + 16))(v62, &v19[*(v61 + 32)], v67);
      sub_10023FC08(v19, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v52 + 8))(v50, v51);
      v56 = sub_10021145C(v53, v55, v71);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v71);
      _os_log_impl(&_mh_execute_header, v47, v48, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v19, type metadata accessor for BeneficiaryInfoRecord);
    }

    v58 = v64;
    v59 = v65;
    (*(v64 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v65);
    Dependency.wrappedValue.getter();
    (*(v58 + 8))(v9, v59);
    v60 = *sub_1000080F8(v71, v71[3]);
    sub_10017F6CC(v21, 0, 2, v69, v70);
    sub_10023FC08(v21, type metadata accessor for BeneficiaryInfoRecord);
    return sub_10000839C(v71);
  }
}

uint64_t sub_1002359A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v63 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for UUID();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for InheritanceHealthRecord();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v61 - v27);
  sub_100012D04(a1, &v61 - v27, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_10023FBA0(v68, v16, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v33 = 136315650;
      v35 = v66;
      v34 = v67;
      v36 = *(v66 + 16);
      v37 = &v16[*(v61 + 28)];
      LODWORD(v65) = v32;
      v38 = v62;
      v36(v62, v37, v67);
      sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v38, v34);
      v42 = sub_10021145C(v39, v41, v71);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v71);
      *(v33 + 22) = 2080;
      v71[5] = v29;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v43 = String.init<A>(describing:)();
      v45 = sub_10021145C(v43, v44, v71);

      *(v33 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v31, v65, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
    }

    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v69(v26);

    return sub_100008D3C(v26, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_10023FC6C(v28, v21, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAE8);
    sub_10023FBA0(v68, v19, type metadata accessor for InheritanceHealthRecord);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v49 = 136315394;
      v50 = v62;
      v52 = v66;
      v51 = v67;
      (*(v66 + 16))(v62, &v19[*(v61 + 28)], v67);
      sub_10023FC08(v19, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v52 + 8))(v50, v51);
      v56 = sub_10021145C(v53, v55, v71);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v71);
      _os_log_impl(&_mh_execute_header, v47, v48, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v19, type metadata accessor for InheritanceHealthRecord);
    }

    v58 = v64;
    v59 = v65;
    (*(v64 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v65);
    Dependency.wrappedValue.getter();
    (*(v58 + 8))(v9, v59);
    v60 = *sub_1000080F8(v71, v71[3]);
    sub_10017F2E8(v21, 0, 2, v69, v70);
    sub_10023FC08(v21, type metadata accessor for InheritanceHealthRecord);
    return sub_10000839C(v71);
  }
}

uint64_t sub_100236200(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v63 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for UUID();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for InheritanceInvitationRecord();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v61 - v27);
  sub_100012D04(a1, &v61 - v27, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_10023FBA0(v68, v16, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v33 = 136315650;
      v35 = v66;
      v34 = v67;
      v36 = *(v66 + 16);
      v37 = &v16[*(v61 + 36)];
      LODWORD(v65) = v32;
      v38 = v62;
      v36(v62, v37, v67);
      sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v38, v34);
      v42 = sub_10021145C(v39, v41, v71);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v71);
      *(v33 + 22) = 2080;
      v71[5] = v29;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v43 = String.init<A>(describing:)();
      v45 = sub_10021145C(v43, v44, v71);

      *(v33 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v31, v65, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
    }

    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v69(v26);

    return sub_100008D3C(v26, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_10023FC6C(v28, v21, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAE8);
    sub_10023FBA0(v68, v19, type metadata accessor for InheritanceInvitationRecord);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v49 = 136315394;
      v50 = v62;
      v52 = v66;
      v51 = v67;
      (*(v66 + 16))(v62, &v19[*(v61 + 36)], v67);
      sub_10023FC08(v19, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v52 + 8))(v50, v51);
      v56 = sub_10021145C(v53, v55, v71);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v71);
      _os_log_impl(&_mh_execute_header, v47, v48, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v19, type metadata accessor for InheritanceInvitationRecord);
    }

    v58 = v64;
    v59 = v65;
    (*(v64 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v65);
    Dependency.wrappedValue.getter();
    (*(v58 + 8))(v9, v59);
    v60 = *sub_1000080F8(v71, v71[3]);
    sub_10017FAB0(v21, 0, 2, v69, v70);
    sub_10023FC08(v21, type metadata accessor for InheritanceInvitationRecord);
    return sub_10000839C(v71);
  }
}

uint64_t sub_100236A5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v63 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for UUID();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for BenefactorInfoRecord();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v61 - v27);
  sub_100012D04(a1, &v61 - v27, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_10023FBA0(v68, v16, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v33 = 136315650;
      v35 = v66;
      v34 = v67;
      v36 = *(v66 + 16);
      v37 = &v16[*(v61 + 28)];
      LODWORD(v65) = v32;
      v38 = v62;
      v36(v62, v37, v67);
      sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v38, v34);
      v42 = sub_10021145C(v39, v41, v71);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v71);
      *(v33 + 22) = 2080;
      v71[5] = v29;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v43 = String.init<A>(describing:)();
      v45 = sub_10021145C(v43, v44, v71);

      *(v33 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v31, v65, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
    }

    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v69(v26);

    return sub_100008D3C(v26, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_10023FC6C(v28, v21, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAE8);
    sub_10023FBA0(v68, v19, type metadata accessor for BenefactorInfoRecord);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v49 = 136315394;
      v50 = v62;
      v52 = v66;
      v51 = v67;
      (*(v66 + 16))(v62, &v19[*(v61 + 28)], v67);
      sub_10023FC08(v19, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v52 + 8))(v50, v51);
      v56 = sub_10021145C(v53, v55, v71);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v71);
      _os_log_impl(&_mh_execute_header, v47, v48, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v19, type metadata accessor for BenefactorInfoRecord);
    }

    v58 = v64;
    v59 = v65;
    (*(v64 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v65);
    Dependency.wrappedValue.getter();
    (*(v58 + 8))(v9, v59);
    v60 = *sub_1000080F8(v71, v71[3]);
    sub_10017FE94(v21, 0, 2, v69, v70);
    sub_10023FC08(v21, type metadata accessor for BenefactorInfoRecord);
    return sub_10000839C(v71);
  }
}

uint64_t sub_1002372B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = v37 - v6;
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianHealthRecord();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v42 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  sub_10023FBA0(a1, v16, type metadata accessor for CustodianHealthRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a1;
    v37[1] = v22;
    v47[0] = v22;
    *v21 = 136315394;
    v23 = v40;
    (*(v40 + 16))(v11, v16, v8);
    sub_10023FC08(v16, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v23 + 8))(v11, v8);
    v27 = sub_10021145C(v24, v26, v47);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v47);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a1 = v39;

    v4 = v38;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianHealthRecord);
  }

  v28 = v43;
  v29 = v45;
  (*(v43 + 16))(v7, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v28 + 8))(v7, v4);
  v30 = v42;
  sub_10023FBA0(a1, v42, type metadata accessor for CustodianHealthRecord);
  v31 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianHealthRecord);
  *(v33 + v32) = v29;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_10019E39C(a1, sub_1002402C8, v33);

  return sub_10000839C(v47);
}

uint64_t sub_1002377F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = v37 - v6;
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v42 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  sub_10023FBA0(a1, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a1;
    v37[1] = v22;
    v47[0] = v22;
    *v21 = 136315394;
    v23 = v40;
    (*(v40 + 16))(v11, v16, v8);
    sub_10023FC08(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v23 + 8))(v11, v8);
    v27 = sub_10021145C(v24, v26, v47);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v47);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a1 = v39;

    v4 = v38;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v28 = v43;
  v29 = v45;
  (*(v43 + 16))(v7, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v28 + 8))(v7, v4);
  v30 = v42;
  sub_10023FBA0(a1, v42, type metadata accessor for CustodianRecoveryInfoRecord);
  v31 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v33 + v32) = v29;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_10019E068(a1, sub_10023FEF0, v33);

  return sub_10000839C(v47);
}

uint64_t sub_100237D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v39 = &v37 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BenefactorInfoRecord();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = __chkstk_darwin(v12);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v47 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v20 = 136315394;
    (*(v8 + 16))(v11, &v16[*(v12 + 28)], v7);
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_10021145C(v21, v23, v48);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v48);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
  }

  v26 = v42;
  v25 = v43;
  v27 = v45;
  v28 = v39;
  (*(v42 + 16))(v39, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v43);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v28, v25);
  v29 = v47;
  v30 = v41;
  sub_10023FBA0(v47, v41, type metadata accessor for BenefactorInfoRecord);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for BenefactorInfoRecord);
  *(v33 + v32) = v27;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_10019FDE0(v29, sub_10023D9A4, v33);

  return sub_10000839C(v48);
}

uint64_t sub_100238260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v39 = &v37 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeneficiaryInfoRecord();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = __chkstk_darwin(v12);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v47 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for BeneficiaryInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v20 = 136315394;
    (*(v8 + 16))(v11, &v16[*(v12 + 32)], v7);
    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_10021145C(v21, v23, v48);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v48);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
  }

  v26 = v42;
  v25 = v43;
  v27 = v45;
  v28 = v39;
  (*(v42 + 16))(v39, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v43);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v28, v25);
  v29 = v47;
  v30 = v41;
  sub_10023FBA0(v47, v41, type metadata accessor for BeneficiaryInfoRecord);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for BeneficiaryInfoRecord);
  *(v33 + v32) = v27;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_10019FAAC(v29, sub_10023E3BC, v33);

  return sub_10000839C(v48);
}

uint64_t sub_100238798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v39 = &v37 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InheritanceInvitationRecord();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = __chkstk_darwin(v12);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v47 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for InheritanceInvitationRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v20 = 136315394;
    (*(v8 + 16))(v11, &v16[*(v12 + 36)], v7);
    sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_10021145C(v21, v23, v48);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v48);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
  }

  v26 = v42;
  v25 = v43;
  v27 = v45;
  v28 = v39;
  (*(v42 + 16))(v39, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v43);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v28, v25);
  v29 = v47;
  v30 = v41;
  sub_10023FBA0(v47, v41, type metadata accessor for InheritanceInvitationRecord);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for InheritanceInvitationRecord);
  *(v33 + v32) = v27;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_1001A0114(v29, sub_10023E900, v33);

  return sub_10000839C(v48);
}

uint64_t sub_100238CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v39 = &v37 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InheritanceHealthRecord();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = __chkstk_darwin(v12);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v47 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for InheritanceHealthRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v20 = 136315394;
    (*(v8 + 16))(v11, &v16[*(v12 + 28)], v7);
    sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_10021145C(v21, v23, v48);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v48);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
  }

  v26 = v42;
  v25 = v43;
  v27 = v45;
  v28 = v39;
  (*(v42 + 16))(v39, v45 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v43);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v28, v25);
  v29 = v47;
  v30 = v41;
  sub_10023FBA0(v47, v41, type metadata accessor for InheritanceHealthRecord);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_10023FC6C(v30, v33 + v31, type metadata accessor for InheritanceHealthRecord);
  *(v33 + v32) = v27;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  *v34 = v44;
  v34[1] = v35;

  sub_1001A0448(v29, sub_10023D598, v33);

  return sub_10000839C(v48);
}

uint64_t sub_100239208(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v96 = a4;
  v97 = a5;
  v92 = a3;
  v98 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  __chkstk_darwin(v6);
  v93 = &v83[-v8];
  v9 = type metadata accessor for UUID();
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = *(v90 + 64);
  __chkstk_darwin(v9);
  v89 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CustodianHealthRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v83[-v18];
  __chkstk_darwin(v17);
  v21 = &v83[-v20];
  v22 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v83[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v83[-v27];
  sub_100012D04(a1, &v83[-v27], &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10023FBA0(v98, v21, type metadata accessor for CustodianHealthRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = v89;
      v54 = v90;
      v55 = v91;
      (*(v90 + 16))(v89, v21, v91);
      sub_10023FC08(v21, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v54 + 8))(v53, v55);
      v59 = sub_10021145C(v56, v58, v99);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v99);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v21, type metadata accessor for CustodianHealthRecord);
    }

    v73 = v93;
    v74 = v94;
    v75 = v95;
    (*(v94 + 16))(v93, v92 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v95);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    v76 = *sub_1000080F8(v99, v100);
    sub_100223BA0(v98, v96, v97);
    sub_10000839C(v99);
    v77 = v28;
    return sub_100008D3C(v77, &unk_1003D9220, &unk_10033E8C0);
  }

  v29 = *v28;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  sub_10023FBA0(v98, v19, type metadata accessor for CustodianHealthRecord);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v87 = v31;
    v35 = v34;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v99[0] = v86;
    *v35 = 136315650;
    v88 = v29;
    v36 = v90;
    v37 = *(v90 + 16);
    v84 = v33;
    v38 = v89;
    v39 = v16;
    v40 = v91;
    v37(v89, v19, v91);
    sub_10023FC08(v19, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v36;
    v29 = v88;
    v45 = v40;
    v16 = v39;
    (*(v44 + 8))(v38, v45);
    v46 = sub_10021145C(v41, v43, v99);

    *(v35 + 4) = v46;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v99);
    *(v35 + 22) = 2112;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 24) = v47;
    v48 = v85;
    *v85 = v47;
    _os_log_impl(&_mh_execute_header, v32, v84, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v35, 0x20u);
    sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v19, type metadata accessor for CustodianHealthRecord);
  }

  swift_getErrorValue();
  v60 = sub_1002DE99C(v101);
  if (!v60)
  {
LABEL_18:
    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v96(v26);

    v77 = v26;
    return sub_100008D3C(v77, &unk_1003D9220, &unk_10033E8C0);
  }

  v61 = v60;
  if (!sub_1002DEA78(v60))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v98, v16, type metadata accessor for CustodianHealthRecord);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v99[0] = v88;
    *v64 = 136315394;
    v66 = v90;
    v65 = v91;
    v67 = v16;
    v68 = v89;
    (*(v90 + 16))(v89, v67, v91);
    sub_10023FC08(v67, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v66 + 8))(v68, v65);
    v72 = sub_10021145C(v69, v71, v99);

    *(v64 + 4) = v72;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v99);
    _os_log_impl(&_mh_execute_header, v62, v63, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianHealthRecord);
  }

  v79 = v93;
  v80 = v94;
  v81 = v95;
  (*(v94 + 16))(v93, v92 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v95);
  Dependency.wrappedValue.getter();
  (*(v80 + 8))(v79, v81);
  v82 = *sub_1000080F8(v99, v100);
  sub_100223BA0(v98, v96, v97);

  return sub_10000839C(v99);
}

uint64_t sub_100239D14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v96 = a4;
  v97 = a5;
  v92 = a3;
  v98 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  __chkstk_darwin(v6);
  v93 = &v83[-v8];
  v9 = type metadata accessor for UUID();
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = *(v90 + 64);
  __chkstk_darwin(v9);
  v89 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CustodianRecoveryInfoRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v83[-v18];
  __chkstk_darwin(v17);
  v21 = &v83[-v20];
  v22 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v83[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v83[-v27];
  sub_100012D04(a1, &v83[-v27], &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10023FBA0(v98, v21, type metadata accessor for CustodianRecoveryInfoRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = v89;
      v54 = v90;
      v55 = v91;
      (*(v90 + 16))(v89, v21, v91);
      sub_10023FC08(v21, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v54 + 8))(v53, v55);
      v59 = sub_10021145C(v56, v58, v99);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v99);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v21, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v73 = v93;
    v74 = v94;
    v75 = v95;
    (*(v94 + 16))(v93, v92 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v95);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    v76 = *sub_1000080F8(v99, v100);
    sub_100224308(v98, v96, v97);
    sub_10000839C(v99);
    v77 = v28;
    return sub_100008D3C(v77, &unk_1003D9220, &unk_10033E8C0);
  }

  v29 = *v28;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  sub_10023FBA0(v98, v19, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v87 = v31;
    v35 = v34;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v99[0] = v86;
    *v35 = 136315650;
    v88 = v29;
    v36 = v90;
    v37 = *(v90 + 16);
    v84 = v33;
    v38 = v89;
    v39 = v16;
    v40 = v91;
    v37(v89, v19, v91);
    sub_10023FC08(v19, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v36;
    v29 = v88;
    v45 = v40;
    v16 = v39;
    (*(v44 + 8))(v38, v45);
    v46 = sub_10021145C(v41, v43, v99);

    *(v35 + 4) = v46;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v99);
    *(v35 + 22) = 2112;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 24) = v47;
    v48 = v85;
    *v85 = v47;
    _os_log_impl(&_mh_execute_header, v32, v84, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v35, 0x20u);
    sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v19, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  swift_getErrorValue();
  v60 = sub_1002DE99C(v101);
  if (!v60)
  {
LABEL_18:
    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v96(v26);

    v77 = v26;
    return sub_100008D3C(v77, &unk_1003D9220, &unk_10033E8C0);
  }

  v61 = v60;
  if (!sub_1002DEA78(v60))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v98, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v99[0] = v88;
    *v64 = 136315394;
    v66 = v90;
    v65 = v91;
    v67 = v16;
    v68 = v89;
    (*(v90 + 16))(v89, v67, v91);
    sub_10023FC08(v67, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v66 + 8))(v68, v65);
    v72 = sub_10021145C(v69, v71, v99);

    *(v64 + 4) = v72;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v99);
    _os_log_impl(&_mh_execute_header, v62, v63, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v79 = v93;
  v80 = v94;
  v81 = v95;
  (*(v94 + 16))(v93, v92 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v95);
  Dependency.wrappedValue.getter();
  (*(v80 + 8))(v79, v81);
  v82 = *sub_1000080F8(v99, v100);
  sub_100224308(v98, v96, v97);

  return sub_10000839C(v99);
}

uint64_t sub_10023A820(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v100 = a4;
  v101 = a5;
  v96 = a3;
  v102 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v87 - v8;
  v95 = type metadata accessor for UUID();
  v9 = *(v95 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v95);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for BenefactorInfoRecord();
  v13 = *(*(v94 - 8) + 64);
  v14 = __chkstk_darwin(v94);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = &v87 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v87 - v26);
  sub_100012D04(a1, &v87 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    v49 = v102;
    sub_10023FBA0(v102, v20, type metadata accessor for BenefactorInfoRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = *(v9 + 16);
      v54 = v12;
      v55 = v12;
      v56 = v9;
      v57 = v95;
      v53(v54, &v20[*(v94 + 28)], v95);
      sub_10023FC08(v20, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v55, v57);
      v61 = sub_10021145C(v58, v60, v103);

      *(v52 + 4) = v61;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v103);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
      v49 = v102;
    }

    else
    {
      sub_10023FC08(v20, type metadata accessor for BenefactorInfoRecord);
    }

    v77 = v97;
    v78 = v98;
    v79 = v99;
    (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
    Dependency.wrappedValue.getter();
    (*(v78 + 8))(v77, v79);
    v80 = *sub_1000080F8(v103, v104);
    sub_100224A70(v49, v100, v101);
    sub_10000839C(v103);
    v81 = v27;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v28 = *v27;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v92 = v9;
  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v31 = v102;
  sub_10023FBA0(v102, v18, type metadata accessor for BenefactorInfoRecord);
  swift_errorRetain();
  v90 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103[0] = v89;
    *v34 = 136315650;
    v35 = *(v94 + 28);
    v91 = v28;
    v36 = v92;
    v37 = v12;
    v38 = v12;
    v39 = v95;
    (*(v92 + 16))(v37, &v18[v35], v95);
    sub_10023FC08(v18, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v36;
    v28 = v91;
    v44 = v39;
    v12 = v38;
    (*(v43 + 8))(v38, v44);
    v45 = sub_10021145C(v40, v42, v103);

    *(v34 + 4) = v45;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v103);
    *(v34 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v46;
    v47 = v88;
    *v88 = v46;
    _os_log_impl(&_mh_execute_header, v32, v33, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v34, 0x20u);
    sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v31 = v102;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for BenefactorInfoRecord);
  }

  v62 = v93;
  swift_getErrorValue();
  v63 = sub_1002DE99C(v105);
  if (!v63)
  {
LABEL_18:
    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v100(v25);

    v81 = v25;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v64 = v63;
  if (!sub_1002DEA78(v63))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v31, v62, type metadata accessor for BenefactorInfoRecord);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v67 = 136315394;
    v68 = *(v94 + 28);
    v91 = v28;
    v69 = v92;
    v70 = v62 + v68;
    v71 = v62;
    v72 = v95;
    (*(v92 + 16))(v12, v70, v95);
    sub_10023FC08(v71, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    (*(v69 + 8))(v12, v72);
    v76 = sub_10021145C(v73, v75, v103);
    v31 = v102;

    *(v67 + 4) = v76;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v103);
    _os_log_impl(&_mh_execute_header, v65, v66, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v62, type metadata accessor for BenefactorInfoRecord);
  }

  v83 = v97;
  v84 = v98;
  v85 = v99;
  (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v83, v85);
  v86 = *sub_1000080F8(v103, v104);
  sub_100224A70(v31, v100, v101);

  return sub_10000839C(v103);
}

uint64_t sub_10023B364(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v100 = a4;
  v101 = a5;
  v96 = a3;
  v102 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v87 - v8;
  v95 = type metadata accessor for UUID();
  v9 = *(v95 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v95);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for BeneficiaryInfoRecord();
  v13 = *(*(v94 - 8) + 64);
  v14 = __chkstk_darwin(v94);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = &v87 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v87 - v26);
  sub_100012D04(a1, &v87 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    v49 = v102;
    sub_10023FBA0(v102, v20, type metadata accessor for BeneficiaryInfoRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = *(v9 + 16);
      v54 = v12;
      v55 = v12;
      v56 = v9;
      v57 = v95;
      v53(v54, &v20[*(v94 + 32)], v95);
      sub_10023FC08(v20, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v55, v57);
      v61 = sub_10021145C(v58, v60, v103);

      *(v52 + 4) = v61;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v103);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
      v49 = v102;
    }

    else
    {
      sub_10023FC08(v20, type metadata accessor for BeneficiaryInfoRecord);
    }

    v77 = v97;
    v78 = v98;
    v79 = v99;
    (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
    Dependency.wrappedValue.getter();
    (*(v78 + 8))(v77, v79);
    v80 = *sub_1000080F8(v103, v104);
    sub_1002251E4(v49, v100, v101);
    sub_10000839C(v103);
    v81 = v27;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v28 = *v27;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v92 = v9;
  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v31 = v102;
  sub_10023FBA0(v102, v18, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v90 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103[0] = v89;
    *v34 = 136315650;
    v35 = *(v94 + 32);
    v91 = v28;
    v36 = v92;
    v37 = v12;
    v38 = v12;
    v39 = v95;
    (*(v92 + 16))(v37, &v18[v35], v95);
    sub_10023FC08(v18, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v36;
    v28 = v91;
    v44 = v39;
    v12 = v38;
    (*(v43 + 8))(v38, v44);
    v45 = sub_10021145C(v40, v42, v103);

    *(v34 + 4) = v45;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v103);
    *(v34 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v46;
    v47 = v88;
    *v88 = v46;
    _os_log_impl(&_mh_execute_header, v32, v33, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v34, 0x20u);
    sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v31 = v102;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for BeneficiaryInfoRecord);
  }

  v62 = v93;
  swift_getErrorValue();
  v63 = sub_1002DE99C(v105);
  if (!v63)
  {
LABEL_18:
    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v100(v25);

    v81 = v25;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v64 = v63;
  if (!sub_1002DEA78(v63))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v31, v62, type metadata accessor for BeneficiaryInfoRecord);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v67 = 136315394;
    v68 = *(v94 + 32);
    v91 = v28;
    v69 = v92;
    v70 = v62 + v68;
    v71 = v62;
    v72 = v95;
    (*(v92 + 16))(v12, v70, v95);
    sub_10023FC08(v71, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    (*(v69 + 8))(v12, v72);
    v76 = sub_10021145C(v73, v75, v103);
    v31 = v102;

    *(v67 + 4) = v76;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v103);
    _os_log_impl(&_mh_execute_header, v65, v66, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v62, type metadata accessor for BeneficiaryInfoRecord);
  }

  v83 = v97;
  v84 = v98;
  v85 = v99;
  (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v83, v85);
  v86 = *sub_1000080F8(v103, v104);
  sub_1002251E4(v31, v100, v101);

  return sub_10000839C(v103);
}

uint64_t sub_10023BEA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v100 = a4;
  v101 = a5;
  v96 = a3;
  v102 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v87 - v8;
  v95 = type metadata accessor for UUID();
  v9 = *(v95 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v95);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for InheritanceInvitationRecord();
  v13 = *(*(v94 - 8) + 64);
  v14 = __chkstk_darwin(v94);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = &v87 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v87 - v26);
  sub_100012D04(a1, &v87 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    v49 = v102;
    sub_10023FBA0(v102, v20, type metadata accessor for InheritanceInvitationRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = *(v9 + 16);
      v54 = v12;
      v55 = v12;
      v56 = v9;
      v57 = v95;
      v53(v54, &v20[*(v94 + 36)], v95);
      sub_10023FC08(v20, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v55, v57);
      v61 = sub_10021145C(v58, v60, v103);

      *(v52 + 4) = v61;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v103);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
      v49 = v102;
    }

    else
    {
      sub_10023FC08(v20, type metadata accessor for InheritanceInvitationRecord);
    }

    v77 = v97;
    v78 = v98;
    v79 = v99;
    (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
    Dependency.wrappedValue.getter();
    (*(v78 + 8))(v77, v79);
    v80 = *sub_1000080F8(v103, v104);
    sub_100225958(v49, v100, v101);
    sub_10000839C(v103);
    v81 = v27;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v28 = *v27;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v92 = v9;
  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v31 = v102;
  sub_10023FBA0(v102, v18, type metadata accessor for InheritanceInvitationRecord);
  swift_errorRetain();
  v90 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103[0] = v89;
    *v34 = 136315650;
    v35 = *(v94 + 36);
    v91 = v28;
    v36 = v92;
    v37 = v12;
    v38 = v12;
    v39 = v95;
    (*(v92 + 16))(v37, &v18[v35], v95);
    sub_10023FC08(v18, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v36;
    v28 = v91;
    v44 = v39;
    v12 = v38;
    (*(v43 + 8))(v38, v44);
    v45 = sub_10021145C(v40, v42, v103);

    *(v34 + 4) = v45;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v103);
    *(v34 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v46;
    v47 = v88;
    *v88 = v46;
    _os_log_impl(&_mh_execute_header, v32, v33, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v34, 0x20u);
    sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v31 = v102;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for InheritanceInvitationRecord);
  }

  v62 = v93;
  swift_getErrorValue();
  v63 = sub_1002DE99C(v105);
  if (!v63)
  {
LABEL_18:
    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v100(v25);

    v81 = v25;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v64 = v63;
  if (!sub_1002DEA78(v63))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v31, v62, type metadata accessor for InheritanceInvitationRecord);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v67 = 136315394;
    v68 = *(v94 + 36);
    v91 = v28;
    v69 = v92;
    v70 = v62 + v68;
    v71 = v62;
    v72 = v95;
    (*(v92 + 16))(v12, v70, v95);
    sub_10023FC08(v71, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    (*(v69 + 8))(v12, v72);
    v76 = sub_10021145C(v73, v75, v103);
    v31 = v102;

    *(v67 + 4) = v76;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v103);
    _os_log_impl(&_mh_execute_header, v65, v66, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v62, type metadata accessor for InheritanceInvitationRecord);
  }

  v83 = v97;
  v84 = v98;
  v85 = v99;
  (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v83, v85);
  v86 = *sub_1000080F8(v103, v104);
  sub_100225958(v31, v100, v101);

  return sub_10000839C(v103);
}

uint64_t sub_10023C9EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v100 = a4;
  v101 = a5;
  v96 = a3;
  v102 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v87 - v8;
  v95 = type metadata accessor for UUID();
  v9 = *(v95 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v95);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for InheritanceHealthRecord();
  v13 = *(*(v94 - 8) + 64);
  v14 = __chkstk_darwin(v94);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = &v87 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v87 - v26);
  sub_100012D04(a1, &v87 - v26, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAE8);
    v49 = v102;
    sub_10023FBA0(v102, v20, type metadata accessor for InheritanceHealthRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = *(v9 + 16);
      v54 = v12;
      v55 = v12;
      v56 = v9;
      v57 = v95;
      v53(v54, &v20[*(v94 + 28)], v95);
      sub_10023FC08(v20, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v55, v57);
      v61 = sub_10021145C(v58, v60, v103);

      *(v52 + 4) = v61;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v103);
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v52, 0x16u);
      swift_arrayDestroy();
      v49 = v102;
    }

    else
    {
      sub_10023FC08(v20, type metadata accessor for InheritanceHealthRecord);
    }

    v77 = v97;
    v78 = v98;
    v79 = v99;
    (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
    Dependency.wrappedValue.getter();
    (*(v78 + 8))(v77, v79);
    v80 = *sub_1000080F8(v103, v104);
    sub_1002260CC(v49, v100, v101);
    sub_10000839C(v103);
    v81 = v27;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v28 = *v27;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v92 = v9;
  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAE8);
  v31 = v102;
  sub_10023FBA0(v102, v18, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v90 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103[0] = v89;
    *v34 = 136315650;
    v35 = *(v94 + 28);
    v91 = v28;
    v36 = v92;
    v37 = v12;
    v38 = v12;
    v39 = v95;
    (*(v92 + 16))(v37, &v18[v35], v95);
    sub_10023FC08(v18, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v36;
    v28 = v91;
    v44 = v39;
    v12 = v38;
    (*(v43 + 8))(v38, v44);
    v45 = sub_10021145C(v40, v42, v103);

    *(v34 + 4) = v45;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v103);
    *(v34 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v46;
    v47 = v88;
    *v88 = v46;
    _os_log_impl(&_mh_execute_header, v32, v33, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v34, 0x20u);
    sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v31 = v102;
  }

  else
  {
    sub_10023FC08(v18, type metadata accessor for InheritanceHealthRecord);
  }

  v62 = v93;
  swift_getErrorValue();
  v63 = sub_1002DE99C(v105);
  if (!v63)
  {
LABEL_18:
    *v25 = v28;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v100(v25);

    v81 = v25;
    return sub_100008D3C(v81, &unk_1003D9220, &unk_10033E8C0);
  }

  v64 = v63;
  if (!sub_1002DEA78(v63))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v31, v62, type metadata accessor for InheritanceHealthRecord);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v67 = 136315394;
    v68 = *(v94 + 28);
    v91 = v28;
    v69 = v92;
    v70 = v62 + v68;
    v71 = v62;
    v72 = v95;
    (*(v92 + 16))(v12, v70, v95);
    sub_10023FC08(v71, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    (*(v69 + 8))(v12, v72);
    v76 = sub_10021145C(v73, v75, v103);
    v31 = v102;

    *(v67 + 4) = v76;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v103);
    _os_log_impl(&_mh_execute_header, v65, v66, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v62, type metadata accessor for InheritanceHealthRecord);
  }

  v83 = v97;
  v84 = v98;
  v85 = v99;
  (*(v98 + 16))(v97, v96 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v99);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v83, v85);
  v86 = *sub_1000080F8(v103, v104);
  sub_1002260CC(v31, v100, v101);

  return sub_10000839C(v103);
}

uint64_t sub_10023D530()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10023D574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023D5C4()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023D774()
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

uint64_t sub_10023D9D0()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = *(v4 + v1[7] + 8);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v8 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023DB3C()
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

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10023DD30()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023DE78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000082A8;

  return sub_10021A42C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_10023E004()
{
  result = qword_1003DEC08;
  if (!qword_1003DEC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DEC08);
  }

  return result;
}

uint64_t sub_10023E05C()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v14 = sub_100005814(&qword_1003E3630, &unk_100346AA0);
  v4 = *(v14 - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v11 = *(v8 + v1[7] + 8);

  v10(v8 + v1[9], v9);
  sub_100012324(*(v8 + v1[10]), *(v8 + v1[10] + 8));
  (*(v4 + 8))(v0 + v5, v14);
  v12 = *(v0 + v6);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_10023E27C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

id sub_10023E304@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100219190(a1, v6, a2);
}

uint64_t sub_10023E3E8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
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

  v10 = (v15 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v1[12] + 8);

  v12 = *(v3 + v1[14] + 8);

  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_10023E5FC()
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
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[14] + 8);

  v14 = *(v0 + v10);

  v15 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16);
}

uint64_t sub_10023E834()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10023E8B4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10023E92C()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = *(v4 + v1[7] + 8);

  v8 = *(v4 + v1[8] + 8);

  v9 = *(v4 + v1[9] + 8);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023EAB8()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t sub_10023EC6C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2 & 1, v3 + v7, v9, v10);
}

void sub_10023ED60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v49 = a2;
  v15 = type metadata accessor for InheritanceInvitationRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v50 = a3;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a8;
  v20 = qword_1003D7F40;

  v21 = a5;
  v22 = a6;

  if (v20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAA0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Changing CK record status to declined...", v26, 2u);
  }

  v27 = objc_autoreleasePoolPush();
  v28 = sub_1002E1D08(*(a1 + *(v15 + 40)), *(a1 + *(v15 + 40) + 8));
  if (!v28)
  {
    v28 = sub_10017DD94(a1);
  }

  v29 = v28;
  v53 = v28;
  sub_1001EE71C(&v53);
  objc_autoreleasePoolPop(v27);
  v30 = CKRecord.recordType.getter();
  v32 = v31;

  if ((v30 != 0xD00000000000001FLL || 0x80000001003303D0 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v30 == 0xD00000000000001BLL && 0x8000000100330380 == v32)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_13;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "Cannot recognize record type! Failed to change CKRecord trusted contact status to declined.";
        goto LABEL_12;
      }
    }

    sub_10023FBA0(a1, v18, type metadata accessor for InheritanceInvitationRecord);
    v45 = sub_1000080F8((v49 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v49 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
    v46 = swift_allocObject();
    *(v46 + 16) = sub_10023F384;
    *(v46 + 24) = v19;
    v47 = *v45;

    sub_1002792B4(v18, sub_10021F028, 0, 0, sub_10023F398, v46);

    sub_10023FC08(v18, type metadata accessor for InheritanceInvitationRecord);

    return;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Invalid Record! Failed to change CKRecord trusted contact status to declined.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
  }

LABEL_13:

  type metadata accessor for InheritanceError(0);
  v52 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v37 = v53;
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v40, 0xCu);
    sub_100008D3C(v41, &unk_1003D9140, &qword_10033E640);
  }

  v51 = 2113;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v43 = v52;
  v50(v52);
}

uint64_t sub_10023F334()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10023F3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023F3E8()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t sub_10023F5B4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = *(v4 + v1[8] + 8);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v8 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023F724()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v14 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v4 = *(v14 - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v10(v8 + v1[7], v9);
  v11 = *(v8 + v1[8] + 8);

  sub_100012324(*(v8 + v1[10]), *(v8 + v1[10] + 8));
  (*(v4 + 8))(v0 + v5, v14);
  v12 = *(v0 + v6);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_10023F944()
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
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v16);

  v19 = *(v0 + v17 + 8);

  return _swift_deallocObject(v0, v17 + 16);
}

uint64_t sub_10023FBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023FC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10023FC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023FD00()
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
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v1[12] + 8);

  v14 = *(v0 + v11);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_10023FF1C()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
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

  v11 = (v15 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16);
}

uint64_t sub_100240128()
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
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v13 = *(v0 + v11);

  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_1002402F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_1002403B8()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));
  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_1002405C0()
{
  v1 = sub_100005814(&qword_1003E3628, qword_10034A980);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100240654(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003E3628, qword_10034A980) - 8) + 80);

  return sub_10030B848(a1);
}

uint64_t sub_1002406D0()
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
  v17 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16);
}

uint64_t sub_1002408EC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_1002409A4()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v3 = *(v24 - 8);
  v4 = *(v3 + 80);
  v22 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[5], v6);
  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = (v5 + v1[10]);
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

  v17 = (((v2 + 16) & ~v2) + v23 + v4) & ~v4;
  v18 = (v22 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v17, v24);
  v20 = *(v0 + v18);

  return _swift_deallocObject(v0, v19 + 8);
}