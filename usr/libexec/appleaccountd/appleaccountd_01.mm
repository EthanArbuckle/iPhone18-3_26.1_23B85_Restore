uint64_t sub_100021EC8()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_10002214C;
  }

  else
  {
    v3 = sub_100021FDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100021FDC()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = *(v0 + 256);
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v1;
    sub_100246FA8(v1);
  }

  v4 = *(v0 + 160);
  if (v4)
  {
    v5 = *(v0 + 168);
    v4();
  }

  v6 = *(v0 + 200);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching CustodianRecoveryInfoRecord from local disk after fetching from cloud", v9, 2u);
  }

  v10 = swift_task_alloc();
  *(v0 + 328) = v10;
  *v10 = v0;
  v10[1] = sub_1000222B8;
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 152);

  return sub_10002291C(v11, v12, v13);
}

uint64_t sub_10002214C()
{
  v1 = v0[40];
  v2 = v0[38];
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[4];
  sub_1002DEA80(v0[3]);
  if (v2)
  {
    v5 = v0[38];
    v6 = v0[32];
    v7 = v0[30];
    v8 = v0[27];
    v9 = v5;
    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];

    swift_getObjectType();
    v11 = v9;
    sub_100246FA8(v5);
    swift_willThrow();
  }

  else
  {
    v7 = v0[30];
    v12 = v0[27];
    swift_willThrow();
  }

  v14 = v0[23];
  v13 = v0[24];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000222B8()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1000225D8;
  }

  else
  {
    v3 = sub_1000223CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000223CC()
{
  v1 = v0[25];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecoveryInfoRecord found on the local disk, after fetching from cloud", v4, 2u);
  }

  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v10 = v0[31];
  v11 = v0[29];

  v12 = kAAAnalyticsEventCustodianSystemSync;

  v13 = sub_100245D38(v12, v9, v8, v7, v5);
  v0[17] = -7755;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v14 = v0[16];
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    v17 = _convertErrorToNSError(_:)();

    [v15 updateTaskResultWithError:v17];
  }

  v18 = v0[32];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[23];
  v22 = v0[18];
  swift_getObjectType();
  sub_100246FA8(v13);

  sub_100039200(v21, v22, type metadata accessor for CustodianRecoveryInfoRecord);
  v24 = v0[23];
  v23 = v0[24];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000225D8()
{
  v0[10] = v0[42];
  v2 = v0[28];
  v1 = v0[29];
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v3 = v0[11];
    v0[12] = v3;
    v4 = v0[31];
    v5 = v0[29];
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7062)
    {
      v40 = v3;
      v6 = v0[25];
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "🚨 CustodianRecoveryInfoRecord not found on the local disk, even after fetching from cloud", v9, 2u);
      }

      v11 = v0[36];
      v10 = v0[37];
      v13 = v0[34];
      v12 = v0[35];
      v14 = v0[33];
      v15 = v0[31];
      v16 = v0[29];

      v17 = kAAAnalyticsEventCustodianSystemSync;

      v18 = sub_100245D38(v17, v14, v13, v12, v11);
      v0[15] = -7755;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v19 = v0[14];
      if (v18)
      {
        v20 = v18;
        v21 = v19;
        v22 = _convertErrorToNSError(_:)();

        [v20 updateTaskResultWithError:v22];
      }

      v23 = v0[32];
      swift_getObjectType();
      sub_100246FA8(v18);
    }

    else
    {
    }
  }

  v24 = v0[42];
  v25 = v0[25];
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[42];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching CustodianRecoveryInfoRecord from the local disk, after fetching from cloud: %@", v29, 0xCu);
    sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
  }

  v32 = v0[42];
  v33 = v0[30];
  v34 = v0[27];

  swift_willThrow();

  v35 = v0[42];
  v37 = v0[23];
  v36 = v0[24];

  v38 = v0[1];

  return v38();
}

uint64_t sub_10002291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100022940, 0, 0);
}

uint64_t sub_100022940()
{
  v1 = v0[4];
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  if (*(v1 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v3 = RecoveryRecordsRequest;
    v4 = kAAAnalyticsEventFetchRecoveryInfo;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v5 = *(v3 + 36);
    v6 = (v1 + *(v3 + 32));
    v7 = *v6;
    v8 = v6[1];
    v9 = v1 + v5;
    v10 = *(v1 + v5);
    v11 = *(v9 + 8);

    v12 = v4;

    v13 = sub_100245D38(v12, v7, v8, v10, v11);
    v1 = v0[4];
  }

  else
  {
    v13 = 0;
  }

  v0[5] = v13;
  v14 = v0[3];
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v14;
  v15[3] = v1;
  v15[4] = v13;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[7] = v17;
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  *v17 = v0;
  v17[1] = sub_100022AEC;
  v19 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v19, 0, 0, 0xD00000000000001CLL, 0x800000010032CEC0, sub_100039500, v15, v18);
}

uint64_t sub_100022AEC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100022C6C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100022C08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100022C08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022C6C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_100022CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100005814(&unk_1003D91F0, &unk_10033EC80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  (*(v9 + 16))(&v17 - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = a4;

  sub_100020600(a3, sub_1000395E8, v14);
}

uint64_t sub_100022E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v16 - v12);
  if (a2)
  {
    sub_1000D258C(a1);
  }

  v14 = *(a3 + 56);
  swift_getObjectType();
  sub_100246FA8(a2);
  sub_100012D04(a1, v13, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16[1] = *v13;
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v13, v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100022FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v53 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v56 = &v46 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v46 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v50 = v17;
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA88);
  v49 = *(v14 + 16);
  v49(v19, a1, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = a1;
    v24 = v23;
    v46 = swift_slowAlloc();
    v60[0] = v46;
    *v24 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v8;
    v26 = v7;
    v28 = v27;
    (*(v14 + 8))(v19, v13);
    v29 = sub_10021145C(v25, v28, v60);
    v7 = v26;
    v8 = v48;

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetching custodian with ID: %s", v24, 0xCu);
    sub_10000839C(v46);

    a1 = v47;
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  v30 = v51;
  v49(v51, a1, v13);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v14 + 32))(v33 + v31, v30, v13);
  v34 = (v33 + v32);
  v35 = v55;
  *v34 = v53;
  v34[1] = v35;
  v36 = sub_1000080F8((v54 + 16), *(v54 + 40));
  type metadata accessor for LocalCache();

  v37 = v52;
  sub_100307F40();
  v38 = v57;
  URL.appendingPathComponent(_:isDirectory:)();
  v39 = *(v8 + 8);
  v39(v37, v7);
  v40 = *v36;
  v42 = v58;
  v41 = v59;
  v43 = v56;
  (*(v58 + 16))(v56, v40 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v42 + 8))(v43, v41);
  v44 = *sub_1000080F8(v60, v60[3]);
  sub_100032500(v38, sub_1000394B8, v33, &unk_1003A4D58, sub_1000383B4, &unk_1003A4D70);

  v39(v38, v7);
  return sub_10000839C(v60);
}

uint64_t sub_1000235A4(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v45 = a5;
  v46 = a4;
  v44 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v10 = (&v42 - v9);
  v11 = type metadata accessor for UUID();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v42 - v17;
  v19 = type metadata accessor for CustodianRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = _convertErrorToNSError(_:)();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching custodian records: %@", v28, 0xCu);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    __chkstk_darwin(v22);
    *(&v42 - 2) = a3;
    sub_100213F34(sub_1000394D0, a1, v18);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      sub_100039200(v18, v24, type metadata accessor for CustodianRecord);
      sub_100038554(v24, v10, type metadata accessor for CustodianRecord);
      swift_storeEnumTagMultiPayload();
      v46(v10);
      sub_100008D3C(v10, &unk_1003DA200, &unk_10033FA80);
      return sub_1000385BC(v24, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v18, &unk_1003DF000, &unk_10033EC50);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA88);
    v32 = v43;
    (*(v43 + 16))(v14, a3, v11);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v32 + 8))(v14, v11);
      v40 = sub_10021145C(v37, v39, &v48);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "No custodian with id %s found.", v35, 0xCu);
      sub_10000839C(v36);
    }

    else
    {

      (*(v32 + 8))(v14, v11);
    }

    type metadata accessor for AACustodianError(0);
    v47 = -7063;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v10 = v48;
    swift_storeEnumTagMultiPayload();
  }

  v46(v10);
  return sub_100008D3C(v10, &unk_1003DA200, &unk_10033FA80);
}

uint64_t sub_100023C4C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for CustodianRecord();
  v3[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100023CFC, 0, 0);
}

uint64_t sub_100023CFC()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = v1;
  *(v0 + 208) = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianRecord from local disk", v4, 2u);
  }

  v11 = *(v0 + 152);

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  v5[1] = vextq_s8(v11, v11, 8uLL);
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_100023EB8;
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000019, 0x800000010032CE70, sub_100039388, v5, v9);
}

uint64_t sub_100023EB8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_100024110;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100023FD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100023FD4()
{
  v1 = v0[26];
  sub_100039200(v0[23], v0[24], type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecord found on the local disk, no need to fetch from cloud", v4, 2u);
  }

  v5 = v0[29];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100024778;
  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];

  return sub_10002A020(v10, v7, v8, v5 == 0, v9);
}

uint64_t sub_100024110()
{
  v31 = v0;
  v1 = v0[29];
  v2 = v0[27];

  v0[5] = v1;
  swift_errorRetain();
  v0[30] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[31] = v3;
  if (swift_dynamicCast())
  {
    v4 = v0[6];
    v0[7] = v4;
    v0[34] = v4;
    v0[35] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7063)
    {
      v5 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      v0[36] = RecoveryRecordsRequest;
      if (*(v5 + *(RecoveryRecordsRequest + 20)))
      {
        v7 = v0[26];
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "CustodianRecord not found on the local disk, Fetching the record from cloud", v10, 2u);
        }

        v11 = v0[20];

        v0[37] = *(v11 + 56);
        v12 = kAAAnalyticsEventCustodianRecoveryExperimentalCustodianRecordNotFoundFetchFromCloud;
        v13 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianRecoveryExperimentalCustodianRecordNotFoundFetchFromCloud altDSID:0 flowID:0];
        v0[38] = v13;
        if (v13)
        {
          v14 = v13;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v15 = v14;
          v16 = NSString.init(stringLiteral:)();
          [v15 setObject:0 forKeyedSubscript:v16];
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v0[39] = sub_100008D04(v0[25], qword_1003FAA40);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v30 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v30);
          _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
          sub_10000839C(v20);
        }

        sub_100257274(v12);
        v28 = *sub_1000080F8((v0[20] + 16), *(v0[20] + 40));
        v29 = swift_task_alloc();
        v0[40] = v29;
        *v29 = v0;
        v29[1] = sub_10002492C;

        return sub_10030DB58();
      }
    }
  }

  v21 = v0[29];
  swift_willThrow();
  v22 = v0[29];
  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100024778()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100025680;
  }

  else
  {
    v3 = sub_10002488C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002488C()
{
  v1 = v0[23];
  v2 = v0[22];
  sub_1000385BC(v0[24], type metadata accessor for CustodianRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002492C()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100024CD4;
  }

  else
  {
    v3 = sub_100024A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100024A40()
{
  v21 = v0;
  v1 = *(v0 + 312);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 304);
  if (v6)
  {
    v7 = *(v0 + 296);
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v6;
    sub_100246FA8(v6);
  }

  v9 = *(v0 + 208);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching CustodianRecord from local disk after fetching from cloud", v12, 2u);
  }

  v19 = *(v0 + 152);

  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  v13[1] = vextq_s8(v19, v19, 8uLL);
  v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 344) = v15;
  *v15 = v0;
  v15[1] = sub_100024F68;
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD000000000000019, 0x800000010032CE70, sub_10003A54C, v13, v17);
}

uint64_t sub_100024CD4()
{
  v25 = v0;
  v1 = v0[41];
  v2 = v0[39];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD000000000000024, 0x800000010032CE90, &v24);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[38];
  swift_getErrorValue();
  v10 = v0[2];
  v11 = v0[4];
  sub_1002DEA80(v0[3]);
  if (v9)
  {
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[34];
    v15 = v0[29];
    v16 = v12;
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    [v16 updateTaskResultWithError:v17];

    swift_getObjectType();
    sub_100246FA8(v12);
    swift_willThrow();
  }

  else
  {
    v14 = v0[34];
    v18 = v0[29];
    swift_willThrow();
  }

  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[22];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100024F68()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1000252F4;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_100025084;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100025084()
{
  v1 = v0[26];
  sub_100039200(v0[22], v0[24], type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianRecord found on the local disk, after fetching from cloud", v4, 2u);
  }

  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[31];
  v8 = v0[19];

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v9 = kAAAnalyticsEventCustodianSystemSync;
  v10 = *(v5 + 36);
  v11 = (v8 + *(v5 + 32));
  v12 = *v11;
  v13 = v11[1];
  v14 = v8 + v10;
  v15 = *(v8 + v10);
  v16 = *(v14 + 8);

  v17 = v9;

  v18 = sub_100245D38(v17, v12, v13, v15, v16);
  v0[17] = -7751;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v19 = v0[16];
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v22 = _convertErrorToNSError(_:)();

    [v20 updateTaskResultWithError:v22];
  }

  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[29];
  swift_getObjectType();
  sub_100246FA8(v18);

  v26 = v0[29];
  v27 = swift_task_alloc();
  v0[32] = v27;
  *v27 = v0;
  v27[1] = sub_100024778;
  v28 = v0[24];
  v29 = v0[19];
  v30 = v0[20];
  v31 = v0[18];

  return sub_10002A020(v31, v28, v29, v26 == 0, v30);
}

uint64_t sub_1000252F4()
{
  v1 = v0[44];
  v2 = v0[42];
  v4 = v0[30];
  v3 = v0[31];

  v0[10] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v5 = v0[11];
    v0[12] = v5;
    v6 = v0[35];
    v7 = v0[31];
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7063)
    {
      v48 = v5;
      v8 = v0[26];
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "🚨 CustodianRecord still not found on the local disk, even after fetching from cloud", v11, 2u);
      }

      v13 = v0[35];
      v12 = v0[36];
      v14 = v0[31];
      v15 = v0[19];

      sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
      v16 = kAAAnalyticsEventCustodianSystemSync;
      v17 = *(v12 + 36);
      v18 = (v15 + *(v12 + 32));
      v19 = *v18;
      v20 = v18[1];
      v21 = v15 + v17;
      v22 = *(v15 + v17);
      v23 = *(v21 + 8);

      v24 = v16;

      v25 = sub_100245D38(v24, v19, v20, v22, v23);
      v0[15] = -7750;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v26 = v0[14];
      if (v25)
      {
        v27 = v25;
        v28 = v26;
        v29 = _convertErrorToNSError(_:)();

        [v27 updateTaskResultWithError:v29];
      }

      v30 = v0[37];
      swift_getObjectType();
      sub_100246FA8(v25);
    }

    else
    {
    }
  }

  v31 = v0[44];
  v32 = v0[26];
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[44];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error fetching CustodianRecord from the local disk, after fetching from cloud: %@", v36, 0xCu);
    sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
  }

  v39 = v0[44];
  v40 = v0[34];
  v41 = v0[29];

  swift_willThrow();

  v42 = v0[44];
  v44 = v0[23];
  v43 = v0[24];
  v45 = v0[22];

  v46 = v0[1];

  return v46();
}

uint64_t sub_100025680()
{
  sub_1000385BC(v0[24], type metadata accessor for CustodianRecord);
  v1 = v0[33];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100022FF4(a3, sub_100039490, v11);
}

uint64_t sub_10002586C(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100012D04(a1, v11 - v8, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v9, v5, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000259E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v53 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v56 = &v46 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v46 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v50 = v17;
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA88);
  v49 = *(v14 + 16);
  v49(v19, a1, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = a1;
    v24 = v23;
    v46 = swift_slowAlloc();
    v60[0] = v46;
    *v24 = 136315138;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v8;
    v26 = v7;
    v28 = v27;
    (*(v14 + 8))(v19, v13);
    v29 = sub_10021145C(v25, v28, v60);
    v7 = v26;
    v8 = v48;

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetching custodianship info with ID: %s", v24, 0xCu);
    sub_10000839C(v46);

    a1 = v47;
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  v30 = v51;
  v49(v51, a1, v13);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v14 + 32))(v33 + v31, v30, v13);
  v34 = (v33 + v32);
  v35 = v55;
  *v34 = v53;
  v34[1] = v35;
  v36 = sub_1000080F8((v54 + 16), *(v54 + 40));
  type metadata accessor for LocalCache();

  v37 = v52;
  sub_100307F40();
  v38 = v57;
  URL.appendingPathComponent(_:isDirectory:)();
  v39 = *(v8 + 8);
  v39(v37, v7);
  v40 = *v36;
  v42 = v58;
  v41 = v59;
  v43 = v56;
  (*(v58 + 16))(v56, v40 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v42 + 8))(v43, v41);
  v44 = *sub_1000080F8(v60, v60[3]);
  sub_100032500(v38, sub_100039340, v33, &unk_1003A4DA8, sub_100038510, &unk_1003A4DC0);

  v39(v38, v7);
  return sub_10000839C(v60);
}

uint64_t sub_100025F8C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v71 = a5;
  v72 = a4;
  v69 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v8 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v64[-v9];
  v10 = type metadata accessor for UUID();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v64[-v15];
  v17 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v64[-v19];
  v21 = type metadata accessor for CustodianshipInfoRecord();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v64[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v24);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = _convertErrorToNSError(_:)();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error fetching custodianship info records: %@", v32, 0xCu);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);
    }

    v35 = v70;
    *v70 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
LABEL_18:
    v72(v35);
    return sub_100008D3C(v35, &unk_1003DA0E0, &unk_10033F1D0);
  }

  v36 = &v64[-v28];
  __chkstk_darwin(v27);
  v66 = a3;
  *&v64[-16] = a3;
  sub_10021410C(sub_100039358, a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100008D3C(v20, &qword_1003D9270, &qword_10033ECF0);
    v37 = v67;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = v68;
    (*(v37 + 16))(v16, v66, v68);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v37 + 8))(v16, v39);
      v47 = sub_10021145C(v44, v46, v74);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "No custodian with id %s found.", v42, 0xCu);
      sub_10000839C(v43);
    }

    else
    {

      (*(v37 + 8))(v16, v39);
    }

    type metadata accessor for AACustodianError(0);
    v73 = -7059;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v35 = v70;
    *v70 = v74[0];
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  sub_100039200(v20, v36, type metadata accessor for CustodianshipInfoRecord);
  v48 = v67;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100008D04(v49, qword_1003FAA88);
  v50 = v68;
  (*(v48 + 16))(v14, v66, v68);
  sub_100038554(v36, v26, type metadata accessor for CustodianshipInfoRecord);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v74[0] = v66;
    *v53 = 136315394;
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v65 = v52;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v48 + 8))(v14, v50);
    v57 = sub_10021145C(v54, v56, v74);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    sub_1000385BC(v26, type metadata accessor for CustodianshipInfoRecord);
    v61 = sub_10021145C(v58, v60, v74);

    *(v53 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v51, v65, "Found custodian for id %s: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v26, type metadata accessor for CustodianshipInfoRecord);
    (*(v48 + 8))(v14, v50);
  }

  v63 = v70;
  sub_100038554(v36, v70, type metadata accessor for CustodianshipInfoRecord);
  swift_storeEnumTagMultiPayload();
  v72(v63);
  sub_100008D3C(v63, &unk_1003DA0E0, &unk_10033F1D0);
  return sub_1000385BC(v36, type metadata accessor for CustodianshipInfoRecord);
}

uint64_t sub_1000268EC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v3[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002699C, 0, 0);
}

uint64_t sub_10002699C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = v1;
  *(v0 + 208) = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching CustodianshipInfoRecord from local disk", v4, 2u);
  }

  v11 = *(v0 + 152);

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  v5[1] = vextq_s8(v11, v11, 8uLL);
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_100026B58;
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000022, 0x800000010032CDF0, sub_1000392FC, v5, v9);
}

uint64_t sub_100026B58()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_100026DB0;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100026C74;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100026C74()
{
  v1 = v0[26];
  sub_100039200(v0[23], v0[24], type metadata accessor for CustodianshipInfoRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianshipInfoRecord found on the local disk, no need to fetch from cloud", v4, 2u);
  }

  v5 = v0[29];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100027418;
  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];

  return sub_10002877C(v10, v7, v8, v5 == 0, v9);
}

uint64_t sub_100026DB0()
{
  v31 = v0;
  v1 = v0[29];
  v2 = v0[27];

  v0[5] = v1;
  swift_errorRetain();
  v0[30] = sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  v0[31] = v3;
  if (swift_dynamicCast())
  {
    v4 = v0[6];
    v0[7] = v4;
    v0[34] = v4;
    v0[35] = sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    if (v0[8] == -7059)
    {
      v5 = v0[19];
      RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
      v0[36] = RecoveryRecordsRequest;
      if (*(v5 + *(RecoveryRecordsRequest + 20)))
      {
        v7 = v0[26];
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "CustodianshipInfoRecord not found on the local disk, Fetching the record from cloud", v10, 2u);
        }

        v11 = v0[20];

        v0[37] = *(v11 + 56);
        v12 = kAAAnalyticsEventCustodianRecoveryExperimentalCustodianshipInfoRecordNotFoundFetchFromCloud;
        v13 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianRecoveryExperimentalCustodianshipInfoRecordNotFoundFetchFromCloud altDSID:0 flowID:0];
        v0[38] = v13;
        if (v13)
        {
          v14 = v13;
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v15 = v14;
          v16 = NSString.init(stringLiteral:)();
          [v15 setObject:0 forKeyedSubscript:v16];
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v0[39] = sub_100008D04(v0[25], qword_1003FAA40);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v30 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v30);
          _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
          sub_10000839C(v20);
        }

        sub_100257274(v12);
        v28 = *sub_1000080F8((v0[20] + 16), *(v0[20] + 40));
        v29 = swift_task_alloc();
        v0[40] = v29;
        *v29 = v0;
        v29[1] = sub_1000275CC;

        return sub_10030DB58();
      }
    }
  }

  v21 = v0[29];
  swift_willThrow();
  v22 = v0[29];
  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100027418()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100028320;
  }

  else
  {
    v3 = sub_10002752C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002752C()
{
  v1 = v0[23];
  v2 = v0[22];
  sub_1000385BC(v0[24], type metadata accessor for CustodianshipInfoRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000275CC()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100027974;
  }

  else
  {
    v3 = sub_1000276E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000276E0()
{
  v21 = v0;
  v1 = *(v0 + 312);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 304);
  if (v6)
  {
    v7 = *(v0 + 296);
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v6;
    sub_100246FA8(v6);
  }

  v9 = *(v0 + 208);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching CustodianshipInfoRecord from local disk after fetching from cloud", v12, 2u);
  }

  v19 = *(v0 + 152);

  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  v13[1] = vextq_s8(v19, v19, 8uLL);
  v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 344) = v15;
  *v15 = v0;
  v15[1] = sub_100027C08;
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD000000000000022, 0x800000010032CDF0, sub_10003A548, v13, v17);
}

uint64_t sub_100027974()
{
  v25 = v0;
  v1 = v0[41];
  v2 = v0[39];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD00000000000002CLL, 0x800000010032CE20, &v24);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[38];
  swift_getErrorValue();
  v10 = v0[2];
  v11 = v0[4];
  sub_1002DEA80(v0[3]);
  if (v9)
  {
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[34];
    v15 = v0[29];
    v16 = v12;
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    [v16 updateTaskResultWithError:v17];

    swift_getObjectType();
    sub_100246FA8(v12);
    swift_willThrow();
  }

  else
  {
    v14 = v0[34];
    v18 = v0[29];
    swift_willThrow();
  }

  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[22];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100027C08()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_100027F94;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_100027D24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027D24()
{
  v1 = v0[26];
  sub_100039200(v0[22], v0[24], type metadata accessor for CustodianshipInfoRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CustodianshipInfoRecord found on the local disk, after fetching from cloud", v4, 2u);
  }

  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[31];
  v8 = v0[19];

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v9 = kAAAnalyticsEventCustodianSystemSync;
  v10 = *(v5 + 36);
  v11 = (v8 + *(v5 + 32));
  v12 = *v11;
  v13 = v11[1];
  v14 = v8 + v10;
  v15 = *(v8 + v10);
  v16 = *(v14 + 8);

  v17 = v9;

  v18 = sub_100245D38(v17, v12, v13, v15, v16);
  v0[17] = -7753;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v19 = v0[16];
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v22 = _convertErrorToNSError(_:)();

    [v20 updateTaskResultWithError:v22];
  }

  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[29];
  swift_getObjectType();
  sub_100246FA8(v18);

  v26 = v0[29];
  v27 = swift_task_alloc();
  v0[32] = v27;
  *v27 = v0;
  v27[1] = sub_100027418;
  v28 = v0[24];
  v29 = v0[19];
  v30 = v0[20];
  v31 = v0[18];

  return sub_10002877C(v31, v28, v29, v26 == 0, v30);
}

uint64_t sub_100027F94()
{
  v1 = v0[44];
  v2 = v0[42];
  v4 = v0[30];
  v3 = v0[31];

  v0[10] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v5 = v0[11];
    v0[12] = v5;
    v6 = v0[35];
    v7 = v0[31];
    _BridgedStoredNSError.code.getter();
    if (v0[13] == -7059)
    {
      v48 = v5;
      v8 = v0[26];
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "🚨 CustodianshipInfoRecord found on the local disk, even after fetching from cloud", v11, 2u);
      }

      v13 = v0[35];
      v12 = v0[36];
      v14 = v0[31];
      v15 = v0[19];

      sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
      v16 = kAAAnalyticsEventCustodianSystemSync;
      v17 = *(v12 + 36);
      v18 = (v15 + *(v12 + 32));
      v19 = *v18;
      v20 = v18[1];
      v21 = v15 + v17;
      v22 = *(v15 + v17);
      v23 = *(v21 + 8);

      v24 = v16;

      v25 = sub_100245D38(v24, v19, v20, v22, v23);
      v0[15] = -7752;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v26 = v0[14];
      if (v25)
      {
        v27 = v25;
        v28 = v26;
        v29 = _convertErrorToNSError(_:)();

        [v27 updateTaskResultWithError:v29];
      }

      v30 = v0[37];
      swift_getObjectType();
      sub_100246FA8(v25);
    }

    else
    {
    }
  }

  v31 = v0[44];
  v32 = v0[26];
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[44];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error fetching CustodianshipInfoRecord from the local disk, after fetching from cloud: %@", v36, 0xCu);
    sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
  }

  v39 = v0[44];
  v40 = v0[34];
  v41 = v0[29];

  swift_willThrow();

  v42 = v0[44];
  v44 = v0[23];
  v43 = v0[24];
  v45 = v0[22];

  v46 = v0[1];

  return v46();
}

uint64_t sub_100028320()
{
  sub_1000385BC(v0[24], type metadata accessor for CustodianshipInfoRecord);
  v1 = v0[33];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

void sub_1000283BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v12 = 0;
  if (*(a3 + *(RecoveryRecordsRequest + 28)) == 1)
  {
    v13 = RecoveryRecordsRequest;
    v14 = kAAAnalyticsEventFetchCustodianshipInfo;
    v15 = sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v16 = *(v13 + 36);
    v17 = (a3 + *(v13 + 32));
    v18 = v17[1];
    v27 = *v17;
    v28 = v15;
    v29 = a1;
    v20 = *(a3 + v16);
    v19 = *(a3 + v16 + 8);

    v21 = v14;

    v22 = v19;
    a1 = v29;
    v12 = sub_100245D38(v21, v27, v18, v20, v22);
  }

  (*(v7 + 16))(v10, a1, v6);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  *(v24 + 24) = a2;
  (*(v7 + 32))(v24 + v23, v10, v6);
  v25 = v12;

  sub_1000259E4(a3, sub_100039318, v24);
}

uint64_t sub_1000285CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianshipInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v16 - v12);
  if (a2)
  {
    sub_1000D2720(a1);
  }

  v14 = *(a3 + 56);
  swift_getObjectType();
  sub_100246FA8(a2);
  sub_100012D04(a1, v13, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16[1] = *v13;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v13, v9, type metadata accessor for CustodianshipInfoRecord);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002877C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 145) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = a5;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  v7 = *(v6 - 8);
  *(v5 + 304) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v5 + 320) = RecoveryRecordsRequest;
  v10 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v11 = type metadata accessor for CustodianshipInfoRecord();
  *(v5 + 336) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_1000288BC, 0, 0);
}

uint64_t sub_1000288BC()
{
  v89 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + *(*(v0 + 336) + 28));
  sub_100038554(v1, *(v0 + 360), type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100008D04(v5, qword_1003FAA88);
  sub_100038554(v4, v3, type metadata accessor for FetchRecoveryRecordsRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = v2;
    v84 = v7;
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);
    v81 = *(v0 + 296);
    v82 = *(v0 + 312);
    v14 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v12 + *(v11 + 24);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *(v0 + 136) = v16;
    *(v0 + 144) = v15;
    sub_100005814(&qword_1003D9258, &qword_10033ECD8);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = v12;
    v2 = v10;
    sub_1000385BC(v20, type metadata accessor for FetchRecoveryRecordsRequest);
    v21 = sub_10021145C(v17, v19, v88);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v9, v8, type metadata accessor for CustodianshipInfoRecord);
    (*(v13 + 16))(v82, v8, v81);
    sub_1000385BC(v8, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v82, v81);
    v25 = sub_10021145C(v22, v24, v88);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v6, v84, "Check if expected state: %s == local record state: %ld for recordID: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 328);

    sub_1000385BC(v26, type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v27 = (*(v0 + 280) + *(*(v0 + 320) + 24));
  v28 = *v27;
  *(v0 + 376) = *v27;
  if ((v27[1] & 1) == 0 && v2 != v28)
  {
    v87 = v2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 296);
      v85 = *(v0 + 145);
      v36 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v36 = 134218754;
      *(v36 + 4) = v28;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v87;
      *(v36 + 22) = 2080;
      swift_beginAccess();
      sub_100038554(v32, v31, type metadata accessor for CustodianshipInfoRecord);
      (*(v34 + 16))(v33, v31, v35);
      sub_1000385BC(v31, type metadata accessor for CustodianshipInfoRecord);
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_10021145C(v37, v39, v88);

      *(v36 + 24) = v40;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v85;
      _os_log_impl(&_mh_execute_header, v29, v30, "Expected state: %ld, but local record state: %ld for recordID: %s, shouldRefresh: %{BOOL}d", v36, 0x26u);
      sub_10000839C(v83);
    }

    if (*(v0 + 145) == 1)
    {
      v41 = *sub_1000080F8((*(v0 + 288) + 16), *(*(v0 + 288) + 40));
      v42 = swift_task_alloc();
      *(v0 + 384) = v42;
      *v42 = v0;
      v42[1] = sub_100029568;
      v43 = *(v0 + 344);
      v44 = *(v0 + 272);

      return sub_10022C868(v43, v44);
    }

    v46 = v87;
    if (v87 != *(v0 + 376))
    {
      v54 = *(v0 + 368);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 376);
        v58 = *(v0 + 352);
        v59 = *(v0 + 360);
        v61 = *(v0 + 304);
        v60 = *(v0 + 312);
        v62 = *(v0 + 296);
        v63 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v88[0] = v86;
        *v63 = 134218498;
        *(v63 + 4) = v87;
        *(v63 + 12) = 2048;
        *(v63 + 14) = v57;
        *(v63 + 22) = 2080;
        swift_beginAccess();
        sub_100038554(v59, v58, type metadata accessor for CustodianshipInfoRecord);
        (*(v61 + 16))(v60, v58, v62);
        sub_1000385BC(v58, type metadata accessor for CustodianshipInfoRecord);
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v46 = v87;
        (*(v61 + 8))(v60, v62);
        v67 = sub_10021145C(v64, v66, v88);

        *(v63 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v55, v56, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v63, 0x20u);
        sub_10000839C(v86);
      }

      v68 = *(v0 + 360);
      if (v46 > 2)
      {
        switch(v46)
        {
          case 3:
            type metadata accessor for AACustodianError(0);
            *(v0 + 192) = -7078;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v72 = *(v0 + 184);
            goto LABEL_35;
          case 4:
            type metadata accessor for AACustodianError(0);
            *(v0 + 240) = -7077;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v75 = *(v0 + 232);
            goto LABEL_35;
          case 5:
            type metadata accessor for AACustodianError(0);
            *(v0 + 224) = -7079;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v70 = *(v0 + 216);
            goto LABEL_35;
        }
      }

      else
      {
        switch(v46)
        {
          case -1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 176) = -7081;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v71 = *(v0 + 168);
            goto LABEL_35;
          case 1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 256) = -7076;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v74 = *(v0 + 248);
            goto LABEL_35;
          case 2:
            type metadata accessor for AACustodianError(0);
            *(v0 + 208) = -7080;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v69 = *(v0 + 200);
LABEL_35:
            swift_willThrow();
            sub_1000385BC(v68, type metadata accessor for CustodianshipInfoRecord);
            v77 = *(v0 + 352);
            v76 = *(v0 + 360);
            v78 = *(v0 + 344);
            v79 = *(v0 + 328);
            v80 = *(v0 + 312);

            v53 = *(v0 + 8);
            goto LABEL_16;
        }
      }

      type metadata accessor for AACustodianError(0);
      *(v0 + 160) = -7081;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v73 = *(v0 + 152);
      goto LABEL_35;
    }
  }

  v47 = *(v0 + 352);
  v48 = *(v0 + 360);
  v49 = *(v0 + 344);
  v50 = *(v0 + 328);
  v51 = *(v0 + 312);
  v52 = *(v0 + 264);
  swift_beginAccess();
  sub_100038554(v48, v52, type metadata accessor for CustodianshipInfoRecord);
  sub_1000385BC(v48, type metadata accessor for CustodianshipInfoRecord);

  v53 = *(v0 + 8);
LABEL_16:

  return v53();
}

uint64_t sub_100029568()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_100029F64;
  }

  else
  {
    v3 = sub_10002967C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002967C()
{
  v59 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  swift_beginAccess();
  sub_100039390(v4, v1, type metadata accessor for CustodianshipInfoRecord);
  sub_100038554(v1, v3, type metadata accessor for CustodianshipInfoRecord);
  v6 = *(v3 + *(v5 + 28));
  sub_1000385BC(v3, type metadata accessor for CustodianshipInfoRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[44];
    v9 = v0[45];
    v12 = v0[38];
    v11 = v0[39];
    v13 = v0[37];
    v56 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v58[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = v56;
    *(v14 + 12) = 2080;
    sub_100038554(v9, v10, type metadata accessor for CustodianshipInfoRecord);
    (*(v12 + 16))(v11, v10, v13);
    sub_1000385BC(v10, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_10021145C(v16, v18, v58);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Record state after refresh: %ld, recordID %s", v14, 0x16u);
    sub_10000839C(v15);

    v6 = v56;
  }

  if (v6 == v0[47])
  {
    v20 = v0[44];
    v21 = v0[45];
    v22 = v0[43];
    v23 = v0[41];
    v24 = v0[39];
    v25 = v0[33];
    swift_beginAccess();
    sub_100038554(v21, v25, type metadata accessor for CustodianshipInfoRecord);
    sub_1000385BC(v21, type metadata accessor for CustodianshipInfoRecord);

    v26 = v0[1];
    goto LABEL_22;
  }

  v27 = v0[46];
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[47];
    v31 = v0[44];
    v32 = v0[45];
    v34 = v0[38];
    v33 = v0[39];
    v35 = v0[37];
    v57 = v6;
    v36 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v36 = 134218498;
    *(v36 + 4) = v57;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v30;
    *(v36 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v32, v31, type metadata accessor for CustodianshipInfoRecord);
    (*(v34 + 16))(v33, v31, v35);
    sub_1000385BC(v31, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v34 + 8))(v33, v35);
    v40 = sub_10021145C(v37, v39, v58);

    *(v36 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v36, 0x20u);
    sub_10000839C(v55);

    v6 = v57;
  }

  v41 = v0[45];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        type metadata accessor for AACustodianError(0);
        v0[24] = -7078;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v45 = v0[23];
        goto LABEL_21;
      case 4:
        type metadata accessor for AACustodianError(0);
        v0[30] = -7077;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v48 = v0[29];
        goto LABEL_21;
      case 5:
        type metadata accessor for AACustodianError(0);
        v0[28] = -7079;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v43 = v0[27];
        goto LABEL_21;
    }

LABEL_18:
    type metadata accessor for AACustodianError(0);
    v0[20] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v0[19];
    goto LABEL_21;
  }

  if (v6 == -1)
  {
    type metadata accessor for AACustodianError(0);
    v0[22] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v44 = v0[21];
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    type metadata accessor for AACustodianError(0);
    v0[32] = -7076;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v0[31];
    goto LABEL_21;
  }

  if (v6 != 2)
  {
    goto LABEL_18;
  }

  type metadata accessor for AACustodianError(0);
  v0[26] = -7080;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v42 = v0[25];
LABEL_21:
  swift_willThrow();
  sub_1000385BC(v41, type metadata accessor for CustodianshipInfoRecord);
  v50 = v0[44];
  v49 = v0[45];
  v51 = v0[43];
  v52 = v0[41];
  v53 = v0[39];

  v26 = v0[1];
LABEL_22:

  return v26();
}

uint64_t sub_100029F64()
{
  sub_1000385BC(v0[45], type metadata accessor for CustodianshipInfoRecord);
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[39];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002A020(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 145) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = a5;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  v7 = *(v6 - 8);
  *(v5 + 304) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v5 + 320) = RecoveryRecordsRequest;
  v10 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v11 = type metadata accessor for CustodianRecord();
  *(v5 + 336) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_10002A160, 0, 0);
}

uint64_t sub_10002A160()
{
  v89 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + *(*(v0 + 336) + 36));
  sub_100038554(v1, *(v0 + 360), type metadata accessor for CustodianRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100008D04(v5, qword_1003FAA88);
  sub_100038554(v4, v3, type metadata accessor for FetchRecoveryRecordsRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = v2;
    v84 = v7;
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);
    v81 = *(v0 + 296);
    v82 = *(v0 + 312);
    v14 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v12 + *(v11 + 24);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *(v0 + 136) = v16;
    *(v0 + 144) = v15;
    sub_100005814(&qword_1003D9258, &qword_10033ECD8);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = v12;
    v2 = v10;
    sub_1000385BC(v20, type metadata accessor for FetchRecoveryRecordsRequest);
    v21 = sub_10021145C(v17, v19, v88);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v9, v8, type metadata accessor for CustodianRecord);
    (*(v13 + 16))(v82, v8, v81);
    sub_1000385BC(v8, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v82, v81);
    v25 = sub_10021145C(v22, v24, v88);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v6, v84, "Check if expected state: %s == local record state: %ld for recordID: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 328);

    sub_1000385BC(v26, type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v27 = (*(v0 + 280) + *(*(v0 + 320) + 24));
  v28 = *v27;
  *(v0 + 376) = *v27;
  if ((v27[1] & 1) == 0 && v2 != v28)
  {
    v87 = v2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 296);
      v85 = *(v0 + 145);
      v36 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v36 = 134218754;
      *(v36 + 4) = v28;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v87;
      *(v36 + 22) = 2080;
      swift_beginAccess();
      sub_100038554(v32, v31, type metadata accessor for CustodianRecord);
      (*(v34 + 16))(v33, v31, v35);
      sub_1000385BC(v31, type metadata accessor for CustodianRecord);
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_10021145C(v37, v39, v88);

      *(v36 + 24) = v40;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v85;
      _os_log_impl(&_mh_execute_header, v29, v30, "Expected state: %ld, but local record state: %ld for recordID: %s, shouldRefresh: %{BOOL}d", v36, 0x26u);
      sub_10000839C(v83);
    }

    if (*(v0 + 145) == 1)
    {
      v41 = *sub_1000080F8((*(v0 + 288) + 16), *(*(v0 + 288) + 40));
      v42 = swift_task_alloc();
      *(v0 + 384) = v42;
      *v42 = v0;
      v42[1] = sub_10002AE0C;
      v43 = *(v0 + 344);
      v44 = *(v0 + 272);

      return sub_10022DA0C(v43, v44);
    }

    v46 = v87;
    if (v87 != *(v0 + 376))
    {
      v54 = *(v0 + 368);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 376);
        v58 = *(v0 + 352);
        v59 = *(v0 + 360);
        v61 = *(v0 + 304);
        v60 = *(v0 + 312);
        v62 = *(v0 + 296);
        v63 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v88[0] = v86;
        *v63 = 134218498;
        *(v63 + 4) = v87;
        *(v63 + 12) = 2048;
        *(v63 + 14) = v57;
        *(v63 + 22) = 2080;
        swift_beginAccess();
        sub_100038554(v59, v58, type metadata accessor for CustodianRecord);
        (*(v61 + 16))(v60, v58, v62);
        sub_1000385BC(v58, type metadata accessor for CustodianRecord);
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v46 = v87;
        (*(v61 + 8))(v60, v62);
        v67 = sub_10021145C(v64, v66, v88);

        *(v63 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v55, v56, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v63, 0x20u);
        sub_10000839C(v86);
      }

      v68 = *(v0 + 360);
      if (v46 > 2)
      {
        switch(v46)
        {
          case 3:
            type metadata accessor for AACustodianError(0);
            *(v0 + 192) = -7078;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v72 = *(v0 + 184);
            goto LABEL_35;
          case 4:
            type metadata accessor for AACustodianError(0);
            *(v0 + 240) = -7077;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v75 = *(v0 + 232);
            goto LABEL_35;
          case 5:
            type metadata accessor for AACustodianError(0);
            *(v0 + 224) = -7079;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v70 = *(v0 + 216);
            goto LABEL_35;
        }
      }

      else
      {
        switch(v46)
        {
          case -1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 176) = -7081;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v71 = *(v0 + 168);
            goto LABEL_35;
          case 1:
            type metadata accessor for AACustodianError(0);
            *(v0 + 256) = -7076;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v74 = *(v0 + 248);
            goto LABEL_35;
          case 2:
            type metadata accessor for AACustodianError(0);
            *(v0 + 208) = -7080;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v69 = *(v0 + 200);
LABEL_35:
            swift_willThrow();
            sub_1000385BC(v68, type metadata accessor for CustodianRecord);
            v77 = *(v0 + 352);
            v76 = *(v0 + 360);
            v78 = *(v0 + 344);
            v79 = *(v0 + 328);
            v80 = *(v0 + 312);

            v53 = *(v0 + 8);
            goto LABEL_16;
        }
      }

      type metadata accessor for AACustodianError(0);
      *(v0 + 160) = -7081;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v73 = *(v0 + 152);
      goto LABEL_35;
    }
  }

  v47 = *(v0 + 352);
  v48 = *(v0 + 360);
  v49 = *(v0 + 344);
  v50 = *(v0 + 328);
  v51 = *(v0 + 312);
  v52 = *(v0 + 264);
  swift_beginAccess();
  sub_100038554(v48, v52, type metadata accessor for CustodianRecord);
  sub_1000385BC(v48, type metadata accessor for CustodianRecord);

  v53 = *(v0 + 8);
LABEL_16:

  return v53();
}

uint64_t sub_10002AE0C()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_10002B808;
  }

  else
  {
    v3 = sub_10002AF20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002AF20()
{
  v59 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  swift_beginAccess();
  sub_100039390(v4, v1, type metadata accessor for CustodianRecord);
  sub_100038554(v1, v3, type metadata accessor for CustodianRecord);
  v6 = *(v3 + *(v5 + 36));
  sub_1000385BC(v3, type metadata accessor for CustodianRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[44];
    v9 = v0[45];
    v12 = v0[38];
    v11 = v0[39];
    v13 = v0[37];
    v56 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v58[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = v56;
    *(v14 + 12) = 2080;
    sub_100038554(v9, v10, type metadata accessor for CustodianRecord);
    (*(v12 + 16))(v11, v10, v13);
    sub_1000385BC(v10, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_10021145C(v16, v18, v58);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Record state after refresh: %ld, recordID %s", v14, 0x16u);
    sub_10000839C(v15);

    v6 = v56;
  }

  if (v6 == v0[47])
  {
    v20 = v0[44];
    v21 = v0[45];
    v22 = v0[43];
    v23 = v0[41];
    v24 = v0[39];
    v25 = v0[33];
    swift_beginAccess();
    sub_100038554(v21, v25, type metadata accessor for CustodianRecord);
    sub_1000385BC(v21, type metadata accessor for CustodianRecord);

    v26 = v0[1];
    goto LABEL_22;
  }

  v27 = v0[46];
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[47];
    v31 = v0[44];
    v32 = v0[45];
    v34 = v0[38];
    v33 = v0[39];
    v35 = v0[37];
    v57 = v6;
    v36 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v36 = 134218498;
    *(v36 + 4) = v57;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v30;
    *(v36 + 22) = 2080;
    swift_beginAccess();
    sub_100038554(v32, v31, type metadata accessor for CustodianRecord);
    (*(v34 + 16))(v33, v31, v35);
    sub_1000385BC(v31, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v34 + 8))(v33, v35);
    v40 = sub_10021145C(v37, v39, v58);

    *(v36 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Record state(%ld) does not matches expected state(%ld) after refreshing for recordID: %s", v36, 0x20u);
    sub_10000839C(v55);

    v6 = v57;
  }

  v41 = v0[45];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        type metadata accessor for AACustodianError(0);
        v0[24] = -7078;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v45 = v0[23];
        goto LABEL_21;
      case 4:
        type metadata accessor for AACustodianError(0);
        v0[30] = -7077;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v48 = v0[29];
        goto LABEL_21;
      case 5:
        type metadata accessor for AACustodianError(0);
        v0[28] = -7079;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v43 = v0[27];
        goto LABEL_21;
    }

LABEL_18:
    type metadata accessor for AACustodianError(0);
    v0[20] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v0[19];
    goto LABEL_21;
  }

  if (v6 == -1)
  {
    type metadata accessor for AACustodianError(0);
    v0[22] = -7081;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v44 = v0[21];
    goto LABEL_21;
  }

  if (v6 == 1)
  {
    type metadata accessor for AACustodianError(0);
    v0[32] = -7076;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v0[31];
    goto LABEL_21;
  }

  if (v6 != 2)
  {
    goto LABEL_18;
  }

  type metadata accessor for AACustodianError(0);
  v0[26] = -7080;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v42 = v0[25];
LABEL_21:
  swift_willThrow();
  sub_1000385BC(v41, type metadata accessor for CustodianRecord);
  v50 = v0[44];
  v49 = v0[45];
  v51 = v0[43];
  v52 = v0[41];
  v53 = v0[39];

  v26 = v0[1];
LABEL_22:

  return v26();
}

uint64_t sub_10002B808()
{
  sub_1000385BC(v0[45], type metadata accessor for CustodianRecord);
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[39];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002B8C4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v32);
  v6 = &v28 - v5;
  v7 = type metadata accessor for URL();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_100005814(&qword_1003D9118, &qword_10033EC18);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  (*(v15 + 16))(&v28 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = sub_1000080F8((v31 + 16), *(v31 + 40));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = v30;
  v23 = *(v29 + 8);
  v23(v11, v30);
  v24 = *v21 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v25 = v32;
  (*(v3 + 16))(v6, v24, v32);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v25);
  v26 = *sub_1000080F8(v33, v33[3]);
  sub_100032500(v13, sub_100030B24, v20, &unk_1003A4D58, sub_1000383B4, &unk_1003A4D70);

  v23(v13, v22);
  return sub_10000839C(v33);
}

uint64_t sub_10002BC50(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(a4, a5);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(a4, a5);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v34 = type metadata accessor for URL();
  v31 = *(v34 - 8);
  v9 = *(v31 + 64);
  v10 = __chkstk_darwin(v34);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  (*(v16 + 16))(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = swift_allocObject();
  (*(v16 + 32))(v19 + v18, &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v20 = (v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v33;
  *v20 = v32;
  v20[1] = v21;
  v22 = sub_1000080F8((v3 + 16), *(v3 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v23 = *(v31 + 8);
  v24 = v34;
  v23(v12, v34);
  v25 = *v22;
  v27 = v35;
  v26 = v36;
  (*(v35 + 16))(v8, v25 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v36);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v8, v26);
  v28 = *sub_1000080F8(v37, v37[3]);
  sub_100032500(v14, sub_1000392B4, v19, &unk_1003A4FD8, sub_1000389A8, &unk_1003A4FF0);

  v23(v14, v24);
  return sub_10000839C(v37);
}

uint64_t sub_10002C068(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v80 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v8 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = (&v75 - v9);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v17 = type metadata accessor for CustodianHealthRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v75 - v23;
  v24 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = _convertErrorToNSError(_:)();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error fetching health records: %@", v33, 0xCu);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);
    }

    v36 = v81;
    *v81 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v83(v36);
    v37 = &qword_1003D91E8;
    v38 = &qword_100346AC0;
    v39 = v36;
  }

  else
  {
    v76 = v11;
    v40 = v10;
    __chkstk_darwin(v29);
    v75 = a3;
    *(&v75 - 2) = a3;
    v42 = v41;
    sub_10021414C(sub_1000392CC, a1, v41);
    v77 = v42;
    sub_100012D04(v42, v28, &qword_1003D91A8, &unk_10033EC40);
    if ((*(v18 + 48))(v28, 1, v17) == 1)
    {
      sub_100008D3C(v28, &qword_1003D91A8, &unk_10033EC40);
      v43 = v40;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAA88);
      v45 = v76;
      (*(v76 + 16))(v16, v75, v40);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v85[0] = v49;
        *v48 = 136315138;
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        (*(v45 + 8))(v16, v43);
        v53 = sub_10021145C(v50, v52, v85);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "Couldn't find health check record for %s", v48, 0xCu);
        sub_10000839C(v49);
      }

      else
      {

        (*(v45 + 8))(v16, v40);
      }

      type metadata accessor for AACustodianError(0);
      v84 = -7060;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v70 = v85[0];
      v71 = v81;
      *v81 = v85[0];
      swift_storeEnumTagMultiPayload();
      v72 = v70;
      v83(v71);

      sub_100008D3C(v71, &qword_1003D91E8, &qword_100346AC0);
    }

    else
    {
      v54 = v79;
      sub_100039200(v28, v79, type metadata accessor for CustodianHealthRecord);
      v55 = v40;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100008D04(v56, qword_1003FAA88);
      v57 = v76;
      v58 = v78;
      (*(v76 + 16))(v78, v75, v55);
      sub_100038554(v54, v22, type metadata accessor for CustodianHealthRecord);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v85[0] = v75;
        *v61 = 136315394;
        sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        (*(v57 + 8))(v58, v55);
        v65 = sub_10021145C(v62, v64, v85);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_1000385BC(v22, type metadata accessor for CustodianHealthRecord);
        v69 = sub_10021145C(v66, v68, v85);

        *(v61 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v59, v60, "Found health check record for %s: %s", v61, 0x16u);
        swift_arrayDestroy();

        v54 = v79;
      }

      else
      {

        sub_1000385BC(v22, type metadata accessor for CustodianHealthRecord);
        (*(v57 + 8))(v58, v55);
      }

      v73 = v81;
      sub_100038554(v54, v81, type metadata accessor for CustodianHealthRecord);
      swift_storeEnumTagMultiPayload();
      v83(v73);
      sub_100008D3C(v73, &qword_1003D91E8, &qword_100346AC0);
      sub_1000385BC(v54, type metadata accessor for CustodianHealthRecord);
    }

    v37 = &qword_1003D91A8;
    v38 = &unk_10033EC40;
    v39 = v77;
  }

  return sub_100008D3C(v39, v37, v38);
}

uint64_t sub_10002CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005814(&qword_1003D91E0, &unk_10033EC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_10002BCD0(a3, sub_100038980, v11);
}

uint64_t sub_10002CBB0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100012D04(a1, v11 - v8, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v9, v5, type metadata accessor for CustodianHealthRecord);
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v8 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v28 = type metadata accessor for URL();
  v26 = *(v28 - 8);
  v13 = *(v26 + 64);
  v14 = __chkstk_darwin(v28);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v27;
  v19[5] = a4;
  v20 = sub_1000080F8((v4 + 16), *(v4 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v26 + 8);
  v22 = v16;
  v23 = v28;
  v21(v22, v28);
  (*(v9 + 16))(v12, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  v24 = *sub_1000080F8(v29, v29[3]);
  sub_100032500(v18, sub_1000391A8, v19, &unk_1003A5140, sub_1000391BC, &unk_1003A5158);

  v21(v18, v23);
  return sub_10000839C(v29);
}

uint64_t sub_10002D000(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v59 = a6;
  v57 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v11 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = (&v54 - v12);
  v13 = type metadata accessor for CustodianRecoverySessionRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = sub_100005814(&unk_1003D9240, &unk_10033ECC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = _convertErrorToNSError(_:)();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching recovery session records: %@", v29, 0xCu);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
    }

    v32 = v58;
    *v58 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a5(v32);
    v33 = &qword_1003DA0F0;
    v34 = qword_100342AC0;
    v35 = v32;
  }

  else
  {
    v36 = &v54 - v25;
    v55 = a5;
    v37 = *(a1 + 16);
    if (v37)
    {
      v38 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v39 = *(v14 + 72);
      while (1)
      {
        sub_100038554(v38, v19, type metadata accessor for CustodianRecoverySessionRecord);
        v40 = &v19[*(v13 + 28)];
        v41 = *v40 == a3 && *(v40 + 1) == a4;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        sub_1000385BC(v19, type metadata accessor for CustodianRecoverySessionRecord);
        v38 += v39;
        if (!--v37)
        {
          goto LABEL_15;
        }
      }

      sub_100039200(v19, v36, type metadata accessor for CustodianRecoverySessionRecord);
      v42 = 0;
    }

    else
    {
LABEL_15:
      v42 = 1;
    }

    (*(v14 + 56))(v36, v42, 1, v13);
    sub_100012D04(v36, v24, &unk_1003D9240, &unk_10033ECC0);
    v43 = (*(v14 + 48))(v24, 1, v13);
    v44 = v55;
    if (v43 == 1)
    {
      sub_100008D3C(v24, &unk_1003D9240, &unk_10033ECC0);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100008D04(v45, qword_1003FAA88);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v61 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_10021145C(a3, a4, &v61);
        _os_log_impl(&_mh_execute_header, v46, v47, "Couldn't find recovery session record for %s", v48, 0xCu);
        sub_10000839C(v49);
      }

      type metadata accessor for AACustodianError(0);
      v60 = -7061;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v50 = v58;
      *v58 = v61;
      swift_storeEnumTagMultiPayload();
      v44(v50);
      sub_100008D3C(v50, &qword_1003DA0F0, qword_100342AC0);
    }

    else
    {
      v51 = v56;
      sub_100039200(v24, v56, type metadata accessor for CustodianRecoverySessionRecord);
      v52 = v58;
      sub_100038554(v51, v58, type metadata accessor for CustodianRecoverySessionRecord);
      swift_storeEnumTagMultiPayload();
      v44(v52);
      sub_100008D3C(v52, &qword_1003DA0F0, qword_100342AC0);
      sub_1000385BC(v51, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v33 = &unk_1003D9240;
    v34 = &unk_10033ECC0;
    v35 = v36;
  }

  return sub_100008D3C(v35, v33, v34);
}

uint64_t sub_10002D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for CustodianHealthRecord();
  v7[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7[10] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = type metadata accessor for CustodianRecord();
  v7[12] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002D808, 0, 0);
}

uint64_t sub_10002D808()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10002D8F0;
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_10003874C, v1, v5);
}

uint64_t sub_10002D8F0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10002E030;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_1000385BC(*(v2 + 104), type metadata accessor for CustodianRecord);

    v4 = sub_10002DA28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DA28()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_10002DB10;
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_100038754, v1, v5);
}

uint64_t sub_10002DB10()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10002E234;
  }

  else
  {
    v5 = *(v2 + 136);
    sub_1000385BC(*(v2 + 88), type metadata accessor for CustodianRecoveryInfoRecord);

    v4 = sub_10002DC4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_10002DD34;
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x800000010032CD60, sub_10003875C, v1, v5);
}

uint64_t sub_10002DD34()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_10002E438;
  }

  else
  {
    v5 = *(v2 + 160);
    sub_1000385BC(*(v2 + 72), type metadata accessor for CustodianHealthRecord);

    v4 = sub_10002DE70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DE70()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Custodianship records saved successfully.", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100038554(v9, v5, type metadata accessor for CustodianshipRecords);
  swift_storeEnumTagMultiPayload();
  v8(v5);
  sub_100008D3C(v5, &unk_1003D91C0, &unk_10033FA50);
  v10 = v0[13];
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002E030()
{
  v1 = v0[16];
  v2 = v0[14];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save CustodianshipRecords: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];

  *v9 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v9);

  sub_100008D3C(v9, &unk_1003D91C0, &unk_10033FA50);
  v13 = v0[13];
  v14 = v0[11];
  v15 = v0[9];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10002E234()
{
  v1 = v0[19];
  v2 = v0[17];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save CustodianshipRecords: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];

  *v9 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v9);

  sub_100008D3C(v9, &unk_1003D91C0, &unk_10033FA50);
  v13 = v0[13];
  v14 = v0[11];
  v15 = v0[9];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10002E438()
{
  v1 = v0[22];
  v2 = v0[20];

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save CustodianshipRecords: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];

  *v9 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v9);

  sub_100008D3C(v9, &unk_1003D91C0, &unk_10033FA50);
  v13 = v0[13];
  v14 = v0[11];
  v15 = v0[9];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10002E63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = sub_1000080F8((a2 + 16), *(a2 + 40));
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  v14 = *v11;
  sub_10022FCA0(a3, sub_100038864, v13);
}

uint64_t sub_10002E7A0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (v21 - v11);
  sub_100012D04(a1, v21 - v11, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save custodian record: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v12, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100012D04(a1, v10, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21[1] = *v10;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v10, v5, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&unk_1003D91F0, &unk_10033EC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_1000080F8((a2 + 16), *(a2 + 40));
  v12 = *(type metadata accessor for CustodianshipRecords(0) + 20);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = *v11;
  sub_10023030C(a3 + v12, sub_1000387B4, v14);
}

uint64_t sub_10002EC40(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (v21 - v11);
  sub_100012D04(a1, v21 - v11, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save custodianship record: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v12, &unk_1003DB610, &unk_10033FA90);
  }

  sub_100012D04(a1, v10, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21[1] = *v10;
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v10, v5, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100005814(&unk_1003D91F0, &unk_10033EC80);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003D91E0, &unk_10033EC70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_1000080F8((a2 + 16), *(a2 + 40));
  v12 = *(type metadata accessor for CustodianshipRecords(0) + 24);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = *v11;
  sub_100230970(a3 + v12, sub_100038778, v14);
}

uint64_t sub_10002F0E0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (v21 - v11);
  sub_100012D04(a1, v21 - v11, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save health record: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  else
  {
    sub_100008D3C(v12, &qword_1003D91E8, &qword_100346AC0);
  }

  sub_100012D04(a1, v10, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21[1] = *v10;
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100039200(v10, v5, type metadata accessor for CustodianHealthRecord);
    sub_100005814(&qword_1003D91E0, &unk_10033EC70);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Owner attempting to delete all records", v11, 2u);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v25 = a2;
      v16 = a1;
      v17 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = Array.description.getter();
      v20 = v19;

      v21 = v18;
      a1 = v16;
      a2 = v25;
      v22 = sub_10021145C(v21, v20, &v26);

      *(v14 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Owner attempting to delete all records, call stack: %s", v14, 0xCu);
      sub_10000839C(v15);
    }
  }

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v4;

  sub_10001DDA4(a1, sub_100038A2C, v23);
}

uint64_t sub_10002F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v49 = a5;
  v50 = a6;
  v46 = a2;
  v47 = a3;
  v45 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v8 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v10 = (&v45 - v9);
  v11 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v45 - v17;
  v19 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v45 - v21;
  v23 = type metadata accessor for CustodianRecord();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012D04(a1, v22, &unk_1003DF000, &unk_10033EC50);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100008D3C(v22, &unk_1003DF000, &unk_10033EC50);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "CustodianRecord not found. Aborting Delete.", v31, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v51 = -7063;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100039268(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v52;
    v33 = sub_10002FCF0(-7074, v52);

    *v10 = v33;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v49(v10);

    return sub_100008D3C(v10, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    sub_100039200(v22, v27, type metadata accessor for CustodianRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA88);
    v36 = v46;
    sub_100012D04(v46, v18, &unk_1003D91B0, qword_1003444F0);
    v37 = v47;
    sub_100012D04(v47, v14, &qword_1003D91A8, &unk_10033EC40);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      v41 = type metadata accessor for CustodianRecoveryInfoRecord();
      v42 = (*(*(v41 - 8) + 48))(v18, 1, v41) != 1;
      sub_100008D3C(v18, &unk_1003D91B0, qword_1003444F0);
      *(v40 + 4) = v42;
      *(v40 + 8) = 1024;
      v43 = type metadata accessor for CustodianHealthRecord();
      v44 = (*(*(v43 - 8) + 48))(v14, 1, v43) != 1;
      sub_100008D3C(v14, &qword_1003D91A8, &unk_10033EC40);
      *(v40 + 10) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "RecoveryInfoRecord found?: %{BOOL}d. HealthRecord found? %{BOOL}d. Continuing to delete", v40, 0xEu);
    }

    else
    {
      sub_100008D3C(v14, &qword_1003D91A8, &unk_10033EC40);
      sub_100008D3C(v18, &unk_1003D91B0, qword_1003444F0);
    }

    sub_10002FE34(v27, v36, v37, v49, v50);
    return sub_1000385BC(v27, type metadata accessor for CustodianRecord);
  }
}

id sub_10002FCF0(uint64_t a1, void *a2)
{
  v4 = AACustodianErrorDomain;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  type metadata accessor for AACustodianError(0);
  *(inited + 72) = v7;
  *(inited + 48) = a2;
  v8 = v4;
  v9 = a2;
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
  v10 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithDomain:v8 code:a1 userInfo:isa];

  return v12;
}

uint64_t sub_10002FE34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a4;
  v88 = a5;
  v78 = a3;
  v74 = a2;
  v86 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  __chkstk_darwin(v5);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v92);
  v89 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianRecord();
  v83 = *(v10 - 8);
  v11 = *(v83 + 64);
  __chkstk_darwin(v10 - 8);
  v84 = v12;
  v85 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v76 = &v71 - v18;
  v75 = type metadata accessor for CustodianHealthRecord();
  v77 = *(v75 - 8);
  v19 = *(v77 + 64);
  v20 = __chkstk_darwin(v75);
  v72 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v21;
  __chkstk_darwin(v20);
  v73 = &v71 - v22;
  v23 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v71 - v25;
  v27 = type metadata accessor for CustodianRecoveryInfoRecord();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v31 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v71 - v32;
  v34 = dispatch_group_create();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  sub_100012D04(v74, v26, &unk_1003D91B0, qword_1003444F0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v37 = v34;
    sub_100008D3C(v26, &unk_1003D91B0, qword_1003444F0);
  }

  else
  {
    sub_100039200(v26, v33, type metadata accessor for CustodianRecoveryInfoRecord);
    dispatch_group_enter(v34);
    v74 = sub_1000080F8(v79 + 2, v79[5]);
    sub_100038554(v33, v31, type metadata accessor for CustodianRecoveryInfoRecord);
    v38 = v36;
    v39 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v40 = (v29 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v41 + v39;
    v36 = v38;
    sub_100039200(v31, v42, type metadata accessor for CustodianRecoveryInfoRecord);
    *(v41 + v40) = v35;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v43 = *v74;

    v37 = v34;
    v44 = v34;
    sub_1002377F0(v33, sub_10003907C, v41);

    sub_1000385BC(v33, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v45 = v35;
  v46 = v76;
  sub_100012D04(v78, v76, &qword_1003D91A8, &unk_10033EC40);
  v47 = v77;
  if ((*(v77 + 48))(v46, 1, v75) == 1)
  {
    sub_100008D3C(v46, &qword_1003D91A8, &unk_10033EC40);
    v48 = v37;
  }

  else
  {
    v49 = v73;
    sub_100039200(v46, v73, type metadata accessor for CustodianHealthRecord);
    v48 = v37;
    dispatch_group_enter(v37);
    v79 = sub_1000080F8(v79 + 2, v79[5]);
    v50 = v45;
    v51 = v72;
    sub_100038554(v49, v72, type metadata accessor for CustodianHealthRecord);
    v52 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v53 = (v71 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v51;
    v45 = v50;
    sub_100039200(v55, v54 + v52, type metadata accessor for CustodianHealthRecord);
    *(v54 + v53) = v36;
    *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
    v56 = *v79;
    v57 = v48;

    sub_1002372B8(v49, sub_100038E64, v54);

    sub_1000385BC(v49, type metadata accessor for CustodianHealthRecord);
  }

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v59 = v81;
  v58 = v82;
  v60 = v80;
  (*(v81 + 104))(v80, enum case for DispatchQoS.QoSClass.default(_:), v82);
  v61 = static OS_dispatch_queue.global(qos:)();
  (*(v59 + 8))(v60, v58);
  v62 = v85;
  sub_100038554(v86, v85, type metadata accessor for CustodianRecord);
  v63 = (*(v83 + 80) + 48) & ~*(v83 + 80);
  v64 = swift_allocObject();
  v64[2] = v45;
  v64[3] = v36;
  v65 = v88;
  v64[4] = v87;
  v64[5] = v65;
  sub_100039200(v62, v64 + v63, type metadata accessor for CustodianRecord);
  aBlock[4] = sub_100038C60;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A5090;
  v66 = _Block_copy(aBlock);

  v67 = v89;
  static DispatchQoS.unspecified.getter();
  v95 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v68 = v91;
  v69 = v94;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v66);

  (*(v93 + 8))(v68, v69);
  (*(v90 + 8))(v67, v92);
}

uint64_t sub_100030868()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000308F0()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_100005814(&qword_1003D9108, &qword_10033EC08);
  *v2 = v0;
  v2[1] = sub_1000309D8;
  v4 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x800000010032CD40, sub_100030B08, v4, v3);
}

uint64_t sub_1000309D8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1000131B8;
  }

  else
  {
    v3 = sub_100030AEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100030BBC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v65 = a4;
  v63 = a3;
  v64 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6 = *(*(v64 - 8) + 64);
  v7 = __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v59 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v59 - v20);
  sub_100012D04(a1, &v59 - v20, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = sub_100008D04(v23, qword_1003FAA88);
    sub_100038554(a2, v12, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100038554(a2, v9, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66[0] = v60;
      *v27 = 136315650;
      type metadata accessor for UUID();
      v62 = v22;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v24;
      v30 = v29;
      sub_1000385BC(v12, type metadata accessor for CustodianRecoveryInfoRecord);
      v31 = sub_10021145C(v28, v30, v66);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = &v9[*(v64 + 20)];
      v22 = v62;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000385BC(v9, type metadata accessor for CustodianRecoveryInfoRecord);
      v36 = sub_10021145C(v33, v35, v66);

      *(v27 + 14) = v36;
      *(v27 + 22) = 2112;
      v37 = _convertErrorToNSError(_:)();
      *(v27 + 24) = v37;
      v38 = v59;
      *v59 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Recovery info record delete failed, recordID: %s, custodianID: %s, error: %@", v27, 0x20u);
      sub_100008D3C(v38, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000385BC(v9, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1000385BC(v12, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    swift_getErrorValue();
    v52 = sub_1002DE99C(v66[4]);
    if (v52)
    {
      v53 = v52;
      if (sub_1002DEA78(v52))
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Recovery info record failed delete due to unknown item, this is not an actual error", v56, 2u);
        }

        goto LABEL_19;
      }
    }

    v57 = v63;
    swift_beginAccess();
    v58 = *(v57 + 16);
    *(v57 + 16) = v22;
LABEL_19:

    goto LABEL_20;
  }

  sub_100008D3C(v21, &unk_1003D9220, &unk_10033E8C0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100008D04(v39, qword_1003FAA88);
  sub_100038554(a2, v17, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100038554(a2, v15, type metadata accessor for CustodianRecoveryInfoRecord);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66[0] = v63;
    *v42 = 136315394;
    type metadata accessor for UUID();
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1000385BC(v17, type metadata accessor for CustodianRecoveryInfoRecord);
    v46 = sub_10021145C(v43, v45, v66);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v47 = &v15[*(v64 + 20)];
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    sub_1000385BC(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    v51 = sub_10021145C(v48, v50, v66);

    *(v42 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Recovery info record deleted sucessfully, recordID: %s, custodianID: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1000385BC(v17, type metadata accessor for CustodianRecoveryInfoRecord);
  }

LABEL_20:
  dispatch_group_leave(v65);
}

void sub_10003135C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v65 = a4;
  v63 = a3;
  v64 = type metadata accessor for CustodianHealthRecord();
  v6 = *(*(v64 - 8) + 64);
  v7 = __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v59 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v59 - v20);
  sub_100012D04(a1, &v59 - v20, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = sub_100008D04(v23, qword_1003FAA88);
    sub_100038554(a2, v12, type metadata accessor for CustodianHealthRecord);
    sub_100038554(a2, v9, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66[0] = v60;
      *v27 = 136315650;
      type metadata accessor for UUID();
      v62 = v22;
      sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v24;
      v30 = v29;
      sub_1000385BC(v12, type metadata accessor for CustodianHealthRecord);
      v31 = sub_10021145C(v28, v30, v66);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = &v9[*(v64 + 20)];
      v22 = v62;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000385BC(v9, type metadata accessor for CustodianHealthRecord);
      v36 = sub_10021145C(v33, v35, v66);

      *(v27 + 14) = v36;
      *(v27 + 22) = 2112;
      v37 = _convertErrorToNSError(_:)();
      *(v27 + 24) = v37;
      v38 = v59;
      *v59 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Health record delete failed, recordID: %s, custodianID: %s, error: %@", v27, 0x20u);
      sub_100008D3C(v38, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000385BC(v9, type metadata accessor for CustodianHealthRecord);
      sub_1000385BC(v12, type metadata accessor for CustodianHealthRecord);
    }

    swift_getErrorValue();
    v52 = sub_1002DE99C(v66[4]);
    if (v52)
    {
      v53 = v52;
      if (sub_1002DEA78(v52))
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Health record record failed delete due to unknown item, this is not an actual error", v56, 2u);
        }

        goto LABEL_19;
      }
    }

    v57 = v63;
    swift_beginAccess();
    v58 = *(v57 + 16);
    *(v57 + 16) = v22;
LABEL_19:

    goto LABEL_20;
  }

  sub_100008D3C(v21, &unk_1003D9220, &unk_10033E8C0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100008D04(v39, qword_1003FAA88);
  sub_100038554(a2, v17, type metadata accessor for CustodianHealthRecord);
  sub_100038554(a2, v15, type metadata accessor for CustodianHealthRecord);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66[0] = v63;
    *v42 = 136315394;
    type metadata accessor for UUID();
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1000385BC(v17, type metadata accessor for CustodianHealthRecord);
    v46 = sub_10021145C(v43, v45, v66);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v47 = &v15[*(v64 + 20)];
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    sub_1000385BC(v15, type metadata accessor for CustodianHealthRecord);
    v51 = sub_10021145C(v48, v50, v66);

    *(v42 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Health record deletes successfully, recordID: %s, custodianID: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000385BC(v15, type metadata accessor for CustodianHealthRecord);
    sub_1000385BC(v17, type metadata accessor for CustodianHealthRecord);
  }

LABEL_20:
  dispatch_group_leave(v65);
}

uint64_t sub_100031AFC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  swift_beginAccess();
  if (*(a1 + 16) || (swift_beginAccess(), *(a2 + 16)))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v30 = a5;
      v16 = a3;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      swift_beginAccess();
      if (*(a1 + 16))
      {
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v17 + 4) = v19;
      *v18 = v20;
      *(v17 + 12) = 2112;
      swift_beginAccess();
      if (*(a2 + 16))
      {
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(v17 + 14) = v21;
      v18[1] = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Custodianship records deleted with recovery info record error: %@, health check record error: %@", v17, 0x16u);
      sub_100005814(&unk_1003D9140, &qword_10033E640);
      swift_arrayDestroy();

      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    v14 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v27))
    {
      v30 = a5;
      v16 = a3;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v14, v27, "Custodianship records deleted successfully", v28, 2u);
LABEL_13:

      a3 = v16;
      a5 = v30;
    }
  }

  [objc_opt_self() postRecoveryContactChangedNotification];
  v23 = *(type metadata accessor for CustodianRecord() + 20);
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 16))(v12, a5 + v23, v24);
  swift_storeEnumTagMultiPayload();
  a3(v12);
  return sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100031EF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100031FEC(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v9 = v4;
  result = Data.init(contentsOf:options:)();
  if (!v5)
  {
    v12 = result;
    v13 = *(v4 + 40);
    v14 = *(v9 + 40);
    v15 = v11;

    v16 = objc_autoreleasePoolPush();
    sub_10030390C(&v29, v28);
    v27 = v15;
    objc_autoreleasePoolPop(v16);

    v17 = v28[0];
    v26 = v28[1];
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Successfully decrypted data", v21, 2u);
    }

    v22 = *(v9 + 24);
    a2(0);
    sub_100039268(a3, a4);

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Local Cache: Successfully decoded data to record object", v25, 2u);
    }

    sub_100012324(v17, v26);

    return sub_100012324(v12, v27);
  }

  return result;
}

uint64_t sub_100032500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v27[1] = a4;
  v28 = a2;
  v29 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v34);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v11 = *(v33 + 64);
  __chkstk_darwin(v35);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v6 + 32);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v18, v17, v14);
  v22 = (v21 + v19);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  *(v21 + v20) = v6;
  aBlock[4] = v31;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = v32;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100039268(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v36 + 8))(v10, v25);
  (*(v33 + 8))(v13, v35);
}

uint64_t sub_100032984(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v76 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v70 = &v67 - v14;
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAAE8);
  v72 = v8[2];
  v73 = v8 + 2;
  v72(v16, a1, v7);
  v74 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v71 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v69 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v78 = v24;
    *v23 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v75 = v8[1];
    v75(v16, v7);
    v28 = sub_10021145C(v25, v27, &v78);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Fetching containts of the base URL: %s", v23, 0xCu);
    sub_10000839C(v24);

    a2 = v69;
  }

  else
  {

    v75 = v8[1];
    v75(v16, v7);
  }

  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 fileExistsAtPath:v31];

  if (v32)
  {
    v70 = v8;
    v78 = _swiftEmptyArrayStorage;
    v33 = [v29 defaultManager];
    URL.path.getter();
    v34 = String._bridgeToObjectiveC()();

    v77 = 0;
    v35 = [v33 contentsOfDirectoryAtPath:v34 error:&v77];

    v36 = v77;
    if (v35)
    {
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v36;

      __chkstk_darwin(v39);
      v41 = v67;
      v40 = v68;
      *(&v67 - 4) = a1;
      *(&v67 - 3) = v41;
      *(&v67 - 2) = &v78;
      sub_10001CD84(v40, (&v67 - 6), v37);

      a2(v78, 0);
    }

    else
    {
      v51 = v77;
      v52 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v53 = v71;

      v72(v53, a1, v7);
      swift_errorRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69 = a2;
        v59 = v58;
        v78 = v58;
        *v56 = 136315394;
        sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v53;
        v63 = v62;
        v75(v61, v7);
        v64 = sub_10021145C(v60, v63, &v78);

        *(v56 + 4) = v64;
        *(v56 + 12) = 2112;
        v65 = _convertErrorToNSError(_:)();
        *(v56 + 14) = v65;
        *v57 = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "Local Cache: Error fetching records from %s: %@", v56, 0x16u);
        sub_100008D3C(v57, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v59);
        a2 = v69;
      }

      else
      {

        v75(v53, v7);
      }

      sub_10030AF38(v52);
      swift_errorRetain();
      a2(v52, 1);
    }
  }

  else
  {
    v42 = v70;
    v72(v70, a1, v7);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78 = v46;
      *v45 = 136315138;
      sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v75(v42, v7);
      v50 = sub_10021145C(v47, v49, &v78);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Local Cache: No records found at path %s.", v45, 0xCu);
      sub_10000839C(v46);
    }

    else
    {

      v75(v42, v7);
    }

    return (a2)(_swiftEmptyArrayStorage, 0);
  }
}

uint64_t sub_1000331E4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v86 = a4;
  v84 = a5;
  v92 = a2;
  v89 = a1;
  v6 = type metadata accessor for UUID();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecord();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = (&v78 - v14);
  __chkstk_darwin(v13);
  v90 = (&v78 - v15);
  v16 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v28 = *(v21 + 16);
  v29 = a3;
  v31 = &v78 - v30;
  v28(v19, v29, v20);
  v93 = v21;
  v32 = v21;
  v33 = v20;
  (*(v32 + 56))(v19, 0, 1, v20);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v19, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAE8);
  v92 = v31;
  v85 = v28;
  v28(v27, v31, v33);
  v81 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v89 = *(v93 + 8);
    v89(v27, v33);
    v43 = sub_10021145C(v40, v42, &v94);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Decoding file at path %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {

    v89 = *(v93 + 8);
    v89(v27, v33);
  }

  v45 = v90;
  v44 = v91;
  v46 = v87;
  v47 = v88;
  v48 = v92;
  sub_100031FEC(v92, type metadata accessor for CustodianRecord, &qword_1003DD6F0, type metadata accessor for CustodianRecord);
  v49 = v85;
  if (v46)
  {
    return (v89)(v48, v33);
  }

  sub_100038554(v45, v47, type metadata accessor for CustodianRecord);
  v49(v44, v48, v33);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94 = v90;
    *v53 = 136315394;
    v55 = v78;
    v54 = v79;
    v56 = *(v79 + 16);
    v57 = v47;
    v88 = v51;
    v58 = v47;
    v59 = v80;
    v56(v78, v57, v80);
    sub_1000385BC(v58, type metadata accessor for CustodianRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v87) = v52;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v54 + 8))(v55, v59);
    v63 = sub_10021145C(v60, v62, &v94);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v64 = v91;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = v89;
    v89(v64, v33);
    v69 = sub_10021145C(v65, v67, &v94);

    *(v53 + 14) = v69;
    v70 = v88;
    _os_log_impl(&_mh_execute_header, v88, v87, "Local Cache: Decoding record successfully: %s, path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v47, type metadata accessor for CustodianRecord);

    v68 = v89;
    v89(v44, v33);
  }

  v71 = v84;
  v72 = v82;
  sub_100038554(v45, v82, type metadata accessor for CustodianRecord);
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_10030603C(0, v73[2] + 1, 1, v73);
    *v71 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    *v71 = sub_10030603C(v75 > 1, v76 + 1, 1, v73);
  }

  sub_1000385BC(v45, type metadata accessor for CustodianRecord);
  v68(v92, v33);
  v77 = *v71;
  v77[2] = v76 + 1;
  return sub_100039200(v72, v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, type metadata accessor for CustodianRecord);
}

uint64_t sub_100033AF4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v86 = a4;
  v84 = a5;
  v92 = a2;
  v89 = a1;
  v6 = type metadata accessor for UUID();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecoveryInfoRecord();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = (&v78 - v14);
  __chkstk_darwin(v13);
  v90 = (&v78 - v15);
  v16 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v28 = *(v21 + 16);
  v29 = a3;
  v31 = &v78 - v30;
  v28(v19, v29, v20);
  v93 = v21;
  v32 = v21;
  v33 = v20;
  (*(v32 + 56))(v19, 0, 1, v20);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v19, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAE8);
  v92 = v31;
  v85 = v28;
  v28(v27, v31, v33);
  v81 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v89 = *(v93 + 8);
    v89(v27, v33);
    v43 = sub_10021145C(v40, v42, &v94);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Decoding file at path %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {

    v89 = *(v93 + 8);
    v89(v27, v33);
  }

  v45 = v90;
  v44 = v91;
  v46 = v87;
  v47 = v88;
  v48 = v92;
  sub_100031FEC(v92, type metadata accessor for CustodianRecoveryInfoRecord, &unk_1003D9170, type metadata accessor for CustodianRecoveryInfoRecord);
  v49 = v85;
  if (v46)
  {
    return (v89)(v48, v33);
  }

  sub_100038554(v45, v47, type metadata accessor for CustodianRecoveryInfoRecord);
  v49(v44, v48, v33);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94 = v90;
    *v53 = 136315394;
    v55 = v78;
    v54 = v79;
    v56 = *(v79 + 16);
    v57 = v47;
    v88 = v51;
    v58 = v47;
    v59 = v80;
    v56(v78, v57, v80);
    sub_1000385BC(v58, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v87) = v52;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v54 + 8))(v55, v59);
    v63 = sub_10021145C(v60, v62, &v94);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v64 = v91;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = v89;
    v89(v64, v33);
    v69 = sub_10021145C(v65, v67, &v94);

    *(v53 + 14) = v69;
    v70 = v88;
    _os_log_impl(&_mh_execute_header, v88, v87, "Local Cache: Decoding record successfully: %s, path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v47, type metadata accessor for CustodianRecoveryInfoRecord);

    v68 = v89;
    v89(v44, v33);
  }

  v71 = v84;
  v72 = v82;
  sub_100038554(v45, v82, type metadata accessor for CustodianRecoveryInfoRecord);
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_100306064(0, v73[2] + 1, 1, v73);
    *v71 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    *v71 = sub_100306064(v75 > 1, v76 + 1, 1, v73);
  }

  sub_1000385BC(v45, type metadata accessor for CustodianRecoveryInfoRecord);
  v68(v92, v33);
  v77 = *v71;
  v77[2] = v76 + 1;
  return sub_100039200(v72, v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, type metadata accessor for CustodianRecoveryInfoRecord);
}

uint64_t sub_100034404(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v86 = a4;
  v84 = a5;
  v92 = a2;
  v89 = a1;
  v6 = type metadata accessor for UUID();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianHealthRecord();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = (&v78 - v14);
  __chkstk_darwin(v13);
  v90 = (&v78 - v15);
  v16 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v28 = *(v21 + 16);
  v29 = a3;
  v31 = &v78 - v30;
  v28(v19, v29, v20);
  v93 = v21;
  v32 = v21;
  v33 = v20;
  (*(v32 + 56))(v19, 0, 1, v20);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v19, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAE8);
  v92 = v31;
  v85 = v28;
  v28(v27, v31, v33);
  v81 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v89 = *(v93 + 8);
    v89(v27, v33);
    v43 = sub_10021145C(v40, v42, &v94);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Decoding file at path %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {

    v89 = *(v93 + 8);
    v89(v27, v33);
  }

  v45 = v90;
  v44 = v91;
  v46 = v87;
  v47 = v88;
  v48 = v92;
  sub_100031FEC(v92, type metadata accessor for CustodianHealthRecord, &qword_1003DD5A0, type metadata accessor for CustodianHealthRecord);
  v49 = v85;
  if (v46)
  {
    return (v89)(v48, v33);
  }

  sub_100038554(v45, v47, type metadata accessor for CustodianHealthRecord);
  v49(v44, v48, v33);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94 = v90;
    *v53 = 136315394;
    v55 = v78;
    v54 = v79;
    v56 = *(v79 + 16);
    v57 = v47;
    v88 = v51;
    v58 = v47;
    v59 = v80;
    v56(v78, v57, v80);
    sub_1000385BC(v58, type metadata accessor for CustodianHealthRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v87) = v52;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v54 + 8))(v55, v59);
    v63 = sub_10021145C(v60, v62, &v94);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v64 = v91;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = v89;
    v89(v64, v33);
    v69 = sub_10021145C(v65, v67, &v94);

    *(v53 + 14) = v69;
    v70 = v88;
    _os_log_impl(&_mh_execute_header, v88, v87, "Local Cache: Decoding record successfully: %s, path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v47, type metadata accessor for CustodianHealthRecord);

    v68 = v89;
    v89(v44, v33);
  }

  v71 = v84;
  v72 = v82;
  sub_100038554(v45, v82, type metadata accessor for CustodianHealthRecord);
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_10030608C(0, v73[2] + 1, 1, v73);
    *v71 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    *v71 = sub_10030608C(v75 > 1, v76 + 1, 1, v73);
  }

  sub_1000385BC(v45, type metadata accessor for CustodianHealthRecord);
  v68(v92, v33);
  v77 = *v71;
  v77[2] = v76 + 1;
  return sub_100039200(v72, v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, type metadata accessor for CustodianHealthRecord);
}

uint64_t sub_100034D14(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v86 = a4;
  v84 = a5;
  v92 = a2;
  v89 = a1;
  v6 = type metadata accessor for UUID();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = (&v78 - v14);
  __chkstk_darwin(v13);
  v90 = (&v78 - v15);
  v16 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v28 = *(v21 + 16);
  v29 = a3;
  v31 = &v78 - v30;
  v28(v19, v29, v20);
  v93 = v21;
  v32 = v21;
  v33 = v20;
  (*(v32 + 56))(v19, 0, 1, v20);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v19, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAE8);
  v92 = v31;
  v85 = v28;
  v28(v27, v31, v33);
  v81 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v89 = *(v93 + 8);
    v89(v27, v33);
    v43 = sub_10021145C(v40, v42, &v94);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Decoding file at path %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {

    v89 = *(v93 + 8);
    v89(v27, v33);
  }

  v45 = v90;
  v44 = v91;
  v46 = v87;
  v47 = v88;
  v48 = v92;
  sub_100031FEC(v92, type metadata accessor for CustodianshipInfoRecord, &qword_1003D9160, type metadata accessor for CustodianshipInfoRecord);
  v49 = v85;
  if (v46)
  {
    return (v89)(v48, v33);
  }

  sub_100038554(v45, v47, type metadata accessor for CustodianshipInfoRecord);
  v49(v44, v48, v33);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94 = v90;
    *v53 = 136315394;
    v55 = v78;
    v54 = v79;
    v56 = *(v79 + 16);
    v57 = v47;
    v88 = v51;
    v58 = v47;
    v59 = v80;
    v56(v78, v57, v80);
    sub_1000385BC(v58, type metadata accessor for CustodianshipInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v87) = v52;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v54 + 8))(v55, v59);
    v63 = sub_10021145C(v60, v62, &v94);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v64 = v91;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = v89;
    v89(v64, v33);
    v69 = sub_10021145C(v65, v67, &v94);

    *(v53 + 14) = v69;
    v70 = v88;
    _os_log_impl(&_mh_execute_header, v88, v87, "Local Cache: Decoding record successfully: %s, path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v47, type metadata accessor for CustodianshipInfoRecord);

    v68 = v89;
    v89(v44, v33);
  }

  v71 = v84;
  v72 = v82;
  sub_100038554(v45, v82, type metadata accessor for CustodianshipInfoRecord);
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_1003060B4(0, v73[2] + 1, 1, v73);
    *v71 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    *v71 = sub_1003060B4(v75 > 1, v76 + 1, 1, v73);
  }

  sub_1000385BC(v45, type metadata accessor for CustodianshipInfoRecord);
  v68(v92, v33);
  v77 = *v71;
  v77[2] = v76 + 1;
  return sub_100039200(v72, v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, type metadata accessor for CustodianshipInfoRecord);
}

uint64_t sub_100035624(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v86 = a4;
  v84 = a5;
  v92 = a2;
  v89 = a1;
  v6 = type metadata accessor for UUID();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecoverySessionRecord();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = (&v78 - v14);
  __chkstk_darwin(v13);
  v90 = (&v78 - v15);
  v16 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v28 = *(v21 + 16);
  v29 = a3;
  v31 = &v78 - v30;
  v28(v19, v29, v20);
  v93 = v21;
  v32 = v21;
  v33 = v20;
  (*(v32 + 56))(v19, 0, 1, v20);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v19, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAAE8);
  v92 = v31;
  v85 = v28;
  v28(v27, v31, v33);
  v81 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v38 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v89 = *(v93 + 8);
    v89(v27, v33);
    v43 = sub_10021145C(v40, v42, &v94);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Decoding file at path %s", v38, 0xCu);
    sub_10000839C(v39);
  }

  else
  {

    v89 = *(v93 + 8);
    v89(v27, v33);
  }

  v45 = v90;
  v44 = v91;
  v46 = v87;
  v47 = v88;
  v48 = v92;
  sub_100031FEC(v92, type metadata accessor for CustodianRecoverySessionRecord, &unk_1003D9230, type metadata accessor for CustodianRecoverySessionRecord);
  v49 = v85;
  if (v46)
  {
    return (v89)(v48, v33);
  }

  sub_100038554(v45, v47, type metadata accessor for CustodianRecoverySessionRecord);
  v49(v44, v48, v33);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v94 = v90;
    *v53 = 136315394;
    v55 = v78;
    v54 = v79;
    v56 = *(v79 + 16);
    v57 = v47;
    v88 = v51;
    v58 = v47;
    v59 = v80;
    v56(v78, v57, v80);
    sub_1000385BC(v58, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v87) = v52;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v54 + 8))(v55, v59);
    v63 = sub_10021145C(v60, v62, &v94);

    *(v53 + 4) = v63;
    *(v53 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v64 = v91;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = v89;
    v89(v64, v33);
    v69 = sub_10021145C(v65, v67, &v94);

    *(v53 + 14) = v69;
    v70 = v88;
    _os_log_impl(&_mh_execute_header, v88, v87, "Local Cache: Decoding record successfully: %s, path: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v47, type metadata accessor for CustodianRecoverySessionRecord);

    v68 = v89;
    v89(v44, v33);
  }

  v71 = v84;
  v72 = v82;
  sub_100038554(v45, v82, type metadata accessor for CustodianRecoverySessionRecord);
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_1003060DC(0, v73[2] + 1, 1, v73);
    *v71 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    *v71 = sub_1003060DC(v75 > 1, v76 + 1, 1, v73);
  }

  sub_1000385BC(v45, type metadata accessor for CustodianRecoverySessionRecord);
  v68(v92, v33);
  v77 = *v71;
  v77[2] = v76 + 1;
  return sub_100039200(v72, v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, type metadata accessor for CustodianRecoverySessionRecord);
}

uint64_t sub_100035F34(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v87 = a4;
  v85 = a5;
  v93 = a2;
  v90 = a1;
  v6 = type metadata accessor for UUID();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for BenefactorInfoRecord();
  v84 = *(v78 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v78);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v89 = (&v77 - v13);
  __chkstk_darwin(v12);
  v91 = (&v77 - v14);
  v15 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v77 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v92 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v27 = *(v20 + 16);
  v28 = a3;
  v30 = &v77 - v29;
  v27(v18, v28, v19);
  v94 = v20;
  v31 = v20;
  v32 = v19;
  (*(v31 + 56))(v18, 0, 1, v19);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v18, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100008D04(v33, qword_1003FAAE8);
  v93 = v30;
  v86 = v27;
  v27(v26, v30, v32);
  v82 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v95 = v38;
    *v37 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v90 = *(v94 + 8);
    v90(v26, v32);
    v42 = sub_10021145C(v39, v41, &v95);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Local Cache: Decoding file at path %s", v37, 0xCu);
    sub_10000839C(v38);
  }

  else
  {

    v90 = *(v94 + 8);
    v90(v26, v32);
  }

  v44 = v91;
  v43 = v92;
  v45 = v88;
  v46 = v89;
  v47 = v93;
  sub_100031FEC(v93, type metadata accessor for BenefactorInfoRecord, &unk_1003E25B0, type metadata accessor for BenefactorInfoRecord);
  v48 = v86;
  if (v45)
  {
    return (v90)(v47, v32);
  }

  sub_100038554(v44, v46, type metadata accessor for BenefactorInfoRecord);
  v48(v43, v47, v32);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v95 = v91;
    *v52 = 136315394;
    v53 = v79;
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v46 + *(v78 + 28);
    v89 = v50;
    v57 = v46;
    v58 = v81;
    v55(v79, v56, v81);
    sub_1000385BC(v57, type metadata accessor for BenefactorInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v88) = v51;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v54 + 8))(v53, v58);
    v62 = sub_10021145C(v59, v61, &v95);

    *(v52 + 4) = v62;
    *(v52 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v63 = v92;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = v90;
    v90(v63, v32);
    v68 = sub_10021145C(v64, v66, &v95);

    *(v52 + 14) = v68;
    v69 = v89;
    _os_log_impl(&_mh_execute_header, v89, v88, "Local Cache: Decoding record successfully: %s, path: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v46, type metadata accessor for BenefactorInfoRecord);

    v67 = v90;
    v90(v43, v32);
  }

  v70 = v85;
  v71 = v83;
  sub_100038554(v44, v83, type metadata accessor for BenefactorInfoRecord);
  v72 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_100306208(0, v72[2] + 1, 1, v72);
    *v70 = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    *v70 = sub_100306208(v74 > 1, v75 + 1, 1, v72);
  }

  sub_1000385BC(v44, type metadata accessor for BenefactorInfoRecord);
  v67(v93, v32);
  v76 = *v70;
  v76[2] = v75 + 1;
  return sub_100039200(v71, v76 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v75, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_100036854(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v87 = a4;
  v85 = a5;
  v93 = a2;
  v90 = a1;
  v6 = type metadata accessor for UUID();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for BeneficiaryInfoRecord();
  v84 = *(v78 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v78);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v89 = (&v77 - v13);
  __chkstk_darwin(v12);
  v91 = (&v77 - v14);
  v15 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v77 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v92 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v27 = *(v20 + 16);
  v28 = a3;
  v30 = &v77 - v29;
  v27(v18, v28, v19);
  v94 = v20;
  v31 = v20;
  v32 = v19;
  (*(v31 + 56))(v18, 0, 1, v19);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v18, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100008D04(v33, qword_1003FAAE8);
  v93 = v30;
  v86 = v27;
  v27(v26, v30, v32);
  v82 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v95 = v38;
    *v37 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v90 = *(v94 + 8);
    v90(v26, v32);
    v42 = sub_10021145C(v39, v41, &v95);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Local Cache: Decoding file at path %s", v37, 0xCu);
    sub_10000839C(v38);
  }

  else
  {

    v90 = *(v94 + 8);
    v90(v26, v32);
  }

  v44 = v91;
  v43 = v92;
  v45 = v88;
  v46 = v89;
  v47 = v93;
  sub_100031FEC(v93, type metadata accessor for BeneficiaryInfoRecord, &unk_1003E26B0, type metadata accessor for BeneficiaryInfoRecord);
  v48 = v86;
  if (v45)
  {
    return (v90)(v47, v32);
  }

  sub_100038554(v44, v46, type metadata accessor for BeneficiaryInfoRecord);
  v48(v43, v47, v32);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v95 = v91;
    *v52 = 136315394;
    v53 = v79;
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v46 + *(v78 + 32);
    v89 = v50;
    v57 = v46;
    v58 = v81;
    v55(v79, v56, v81);
    sub_1000385BC(v57, type metadata accessor for BeneficiaryInfoRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v88) = v51;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v54 + 8))(v53, v58);
    v62 = sub_10021145C(v59, v61, &v95);

    *(v52 + 4) = v62;
    *(v52 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v63 = v92;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = v90;
    v90(v63, v32);
    v68 = sub_10021145C(v64, v66, &v95);

    *(v52 + 14) = v68;
    v69 = v89;
    _os_log_impl(&_mh_execute_header, v89, v88, "Local Cache: Decoding record successfully: %s, path: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v46, type metadata accessor for BeneficiaryInfoRecord);

    v67 = v90;
    v90(v43, v32);
  }

  v70 = v85;
  v71 = v83;
  sub_100038554(v44, v83, type metadata accessor for BeneficiaryInfoRecord);
  v72 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_100306230(0, v72[2] + 1, 1, v72);
    *v70 = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    *v70 = sub_100306230(v74 > 1, v75 + 1, 1, v72);
  }

  sub_1000385BC(v44, type metadata accessor for BeneficiaryInfoRecord);
  v67(v93, v32);
  v76 = *v70;
  v76[2] = v75 + 1;
  return sub_100039200(v71, v76 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v75, type metadata accessor for BeneficiaryInfoRecord);
}

uint64_t sub_100037174(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v87 = a4;
  v85 = a5;
  v93 = a2;
  v90 = a1;
  v6 = type metadata accessor for UUID();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for InheritanceInvitationRecord();
  v84 = *(v78 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v78);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v89 = (&v77 - v13);
  __chkstk_darwin(v12);
  v91 = (&v77 - v14);
  v15 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v77 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v92 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v27 = *(v20 + 16);
  v28 = a3;
  v30 = &v77 - v29;
  v27(v18, v28, v19);
  v94 = v20;
  v31 = v20;
  v32 = v19;
  (*(v31 + 56))(v18, 0, 1, v19);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v18, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100008D04(v33, qword_1003FAAE8);
  v93 = v30;
  v86 = v27;
  v27(v26, v30, v32);
  v82 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v95 = v38;
    *v37 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v90 = *(v94 + 8);
    v90(v26, v32);
    v42 = sub_10021145C(v39, v41, &v95);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Local Cache: Decoding file at path %s", v37, 0xCu);
    sub_10000839C(v38);
  }

  else
  {

    v90 = *(v94 + 8);
    v90(v26, v32);
  }

  v44 = v91;
  v43 = v92;
  v45 = v88;
  v46 = v89;
  v47 = v93;
  sub_100031FEC(v93, type metadata accessor for InheritanceInvitationRecord, &unk_1003D9180, type metadata accessor for InheritanceInvitationRecord);
  v48 = v86;
  if (v45)
  {
    return (v90)(v47, v32);
  }

  sub_100038554(v44, v46, type metadata accessor for InheritanceInvitationRecord);
  v48(v43, v47, v32);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v95 = v91;
    *v52 = 136315394;
    v53 = v79;
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v46 + *(v78 + 36);
    v89 = v50;
    v57 = v46;
    v58 = v81;
    v55(v79, v56, v81);
    sub_1000385BC(v57, type metadata accessor for InheritanceInvitationRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v88) = v51;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v54 + 8))(v53, v58);
    v62 = sub_10021145C(v59, v61, &v95);

    *(v52 + 4) = v62;
    *(v52 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v63 = v92;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = v90;
    v90(v63, v32);
    v68 = sub_10021145C(v64, v66, &v95);

    *(v52 + 14) = v68;
    v69 = v89;
    _os_log_impl(&_mh_execute_header, v89, v88, "Local Cache: Decoding record successfully: %s, path: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v46, type metadata accessor for InheritanceInvitationRecord);

    v67 = v90;
    v90(v43, v32);
  }

  v70 = v85;
  v71 = v83;
  sub_100038554(v44, v83, type metadata accessor for InheritanceInvitationRecord);
  v72 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_100306258(0, v72[2] + 1, 1, v72);
    *v70 = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    *v70 = sub_100306258(v74 > 1, v75 + 1, 1, v72);
  }

  sub_1000385BC(v44, type metadata accessor for InheritanceInvitationRecord);
  v67(v93, v32);
  v76 = *v70;
  v76[2] = v75 + 1;
  return sub_100039200(v71, v76 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v75, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_100037A94(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v87 = a4;
  v85 = a5;
  v93 = a2;
  v90 = a1;
  v6 = type metadata accessor for UUID();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for InheritanceHealthRecord();
  v84 = *(v78 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v78);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v89 = (&v77 - v13);
  __chkstk_darwin(v12);
  v91 = (&v77 - v14);
  v15 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v77 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v92 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v27 = *(v20 + 16);
  v28 = a3;
  v30 = &v77 - v29;
  v27(v18, v28, v19);
  v94 = v20;
  v31 = v20;
  v32 = v19;
  (*(v31 + 56))(v18, 0, 1, v19);
  URL.init(fileURLWithPath:relativeTo:)();
  sub_100008D3C(v18, &qword_1003E7500, &qword_10033EC30);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100008D04(v33, qword_1003FAAE8);
  v93 = v30;
  v86 = v27;
  v27(v26, v30, v32);
  v82 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v95 = v38;
    *v37 = 136315138;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v90 = *(v94 + 8);
    v90(v26, v32);
    v42 = sub_10021145C(v39, v41, &v95);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Local Cache: Decoding file at path %s", v37, 0xCu);
    sub_10000839C(v38);
  }

  else
  {

    v90 = *(v94 + 8);
    v90(v26, v32);
  }

  v44 = v91;
  v43 = v92;
  v45 = v88;
  v46 = v89;
  v47 = v93;
  sub_100031FEC(v93, type metadata accessor for InheritanceHealthRecord, &qword_1003D91A0, type metadata accessor for InheritanceHealthRecord);
  v48 = v86;
  if (v45)
  {
    return (v90)(v47, v32);
  }

  sub_100038554(v44, v46, type metadata accessor for InheritanceHealthRecord);
  v48(v43, v47, v32);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v95 = v91;
    *v52 = 136315394;
    v53 = v79;
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v46 + *(v78 + 28);
    v89 = v50;
    v57 = v46;
    v58 = v81;
    v55(v79, v56, v81);
    sub_1000385BC(v57, type metadata accessor for InheritanceHealthRecord);
    sub_100039268(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v88) = v51;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v54 + 8))(v53, v58);
    v62 = sub_10021145C(v59, v61, &v95);

    *(v52 + 4) = v62;
    *(v52 + 12) = 2080;
    sub_100039268(&qword_1003DD590, &type metadata accessor for URL);
    v63 = v92;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = v90;
    v90(v63, v32);
    v68 = sub_10021145C(v64, v66, &v95);

    *(v52 + 14) = v68;
    v69 = v89;
    _os_log_impl(&_mh_execute_header, v89, v88, "Local Cache: Decoding record successfully: %s, path: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000385BC(v46, type metadata accessor for InheritanceHealthRecord);

    v67 = v90;
    v90(v43, v32);
  }

  v70 = v85;
  v71 = v83;
  sub_100038554(v44, v83, type metadata accessor for InheritanceHealthRecord);
  v72 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_10030650C(0, v72[2] + 1, 1, v72);
    *v70 = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    *v70 = sub_10030650C(v74 > 1, v75 + 1, 1, v72);
  }

  sub_1000385BC(v44, type metadata accessor for InheritanceHealthRecord);
  v67(v93, v32);
  v76 = *v70;
  v76[2] = v75 + 1;
  return sub_100039200(v71, v76 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v75, type metadata accessor for InheritanceHealthRecord);
}

uint64_t sub_1000383CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000383E4()
{
  result = qword_1003D9130;
  if (!qword_1003D9130)
  {
    sub_100008CBC(&unk_1003DABE0, &unk_10033EC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9130);
  }

  return result;
}

void sub_100038470(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100038554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000385BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000387DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_100005814(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1000388CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_100020340(a1, v5, v4);
}

uint64_t sub_1000389EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038A38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038A70()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v11(&v0[v3 + v1[5]], v9);
  v12 = *&v0[v3 + 8 + v1[6]];

  v13 = *&v0[v3 + 8 + v1[7]];

  v14 = *&v0[v3 + 8 + v1[8]];

  v15 = &v0[v3 + v1[10]];
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100012324(*v15, v16);
  }

  sub_100012324(*&v8[v1[11]], *&v8[v1[11] + 8]);
  v17 = *&v8[v1[13] + 8];

  v18 = *&v8[v1[14] + 8];

  v19 = v1[16];
  if (!(*(v10 + 48))(&v8[v19], 1, v9))
  {
    v11(&v8[v19], v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100038C60()
{
  v1 = *(type metadata accessor for CustodianRecord() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100031AFC(v2, v3, v4, v5, v6);
}

uint64_t sub_100038CC8()
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
  sub_100012324(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v14 = *(v0 + v12);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_100038E90()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);
  v8 = *(v0 + v3 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v9 = (v0 + v3 + v1[8]);
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

  v12 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[12] + 8);

  v15 = *(v0 + v12);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_1000390A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v8, v9);
}

uint64_t sub_100039168()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100039390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003940C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100005814(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100039520(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100005814(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100039610(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100005814(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9);
}

uint64_t sub_10003969C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100039754(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2 & 1, v3 + v7, v9, v10);
}

uint64_t sub_100039818()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000398E0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100032984(v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1000399DC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100039A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *(a2(0) + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100039A88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039ADC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100039B44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  return sub_10001EFE4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_100039B58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005814(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100039C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for CustodianRecoveryInfoRecord();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = type metadata accessor for CustodianHealthRecord();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_100039DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  v14 = type metadata accessor for CustodianRecoveryInfoRecord();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = v14;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v17 = type metadata accessor for CustodianHealthRecord();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100039F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CustodianRecoveryInfoRecord();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for CustodianHealthRecord();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100039FE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 32) + 8);
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

uint64_t sub_10003A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_10003A184()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10003A230();
    if (v1 <= 0x3F)
    {
      sub_10003A288();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003A230()
{
  if (!qword_1003D9410[0])
  {
    type metadata accessor for Status(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1003D9410);
    }
  }
}

void sub_10003A288()
{
  if (!qword_1003DB130)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB130);
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchRecoveryRecordsRequest.CachePolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FetchRecoveryRecordsRequest.CachePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003A450()
{
  result = qword_1003D9458;
  if (!qword_1003D9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9458);
  }

  return result;
}

void sub_10003A550(void (*a1)(void, uint64_t), uint64_t a2)
{
  v5 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - v8;
  v10 = sub_1000080F8(v2 + 7, v2[10]);
  v11 = *v10;
  v12 = [*(*v10 + 16) aa_primaryAppleAccount];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *(v11 + 16);
  v14 = v12;
  v15 = [v12 aa_altDSID];
  v16 = [v13 aa_authKitAccountForAltDSID:v15];

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = [*(v11 + 24) canBeCustodianForAccount:v16];

  if (v17)
  {
    v18 = sub_1000080F8(v2 + 2, v2[5]);
    (*(v6 + 16))(v9, *v18 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v9, v5);
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v19 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    aBlock[4] = sub_100016014;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003A5478;
    v21 = _Block_copy(aBlock);

    [v19 accountInfoWithCompletionHandler:v21];
    _Block_release(v21);

    sub_10000839C(v29);
  }

  else
  {
LABEL_9:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Account is ineligible to be a custodian", v25, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v29[0] = -7012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = aBlock[0];
    a1(aBlock[0], 1);
  }
}

uint64_t sub_10003A95C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_10003A9C0()
{
  result = qword_1003D8140;
  if (!qword_1003D8140)
  {
    type metadata accessor for AACustodianError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8140);
  }

  return result;
}

uint64_t sub_10003AA18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10003AA68(uint64_t a1)
{
  v2 = v1;
  v497 = a1;
  v498 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  v483 = *(v498 - 8);
  v3 = *(v483 + 64);
  __chkstk_darwin(v498);
  v496 = v459 - v4;
  v495 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v482 = *(v495 - 8);
  v5 = *(v482 + 64);
  __chkstk_darwin(v495);
  v494 = v459 - v6;
  v522 = type metadata accessor for DependencyRegistry.Entry();
  v521 = *(v522 - 8);
  v7 = *(v521 + 64);
  __chkstk_darwin(v522);
  v9 = (v459 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v507 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v481 = *(v507 - 8);
  v10 = *(v481 + 64);
  __chkstk_darwin(v507);
  v12 = v459 - v11;
  v504 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v480 = *(v504 - 8);
  v13 = *(v480 + 64);
  __chkstk_darwin(v504);
  v15 = v459 - v14;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v479 = *(v16 - 8);
  v17 = *(v479 + 64);
  __chkstk_darwin(v16);
  v19 = v459 - v18;
  v508 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v510 = v19;
  v511 = v16;
  Dependency.wrappedValue.getter();
  sub_10003E950(&v556, (v2 + 18));
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  v503 = v15;
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  sub_10003E950(&v556, (v2 + 13));
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  v506 = v12;
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v2[28] = v556;
  v519 = type metadata accessor for DependencyRegistry();
  v20 = sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  v21 = type metadata accessor for AnalyticsEventFactory();
  v22 = swift_allocObject();
  v23 = v9;
  v9[3] = v21;
  *v9 = v22;
  v24 = enum case for DependencyRegistry.Entry.exact(_:);
  v25 = v521;
  v517 = *(v521 + 104);
  v518 = v521 + 104;
  v26 = v9;
  v516 = enum case for DependencyRegistry.Entry.exact(_:);
  v27 = v522;
  (v517)(v26, enum case for DependencyRegistry.Entry.exact(_:), v522);
  v478 = v20;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520 = *(v25 + 8);
  v521 = v25 + 8;
  v520(v23, v27);
  v509 = sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v476 = sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v2[2] = v556;
  v28 = type metadata accessor for StorageController();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  v475 = sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  v513 = v2;
  v2[3] = v31;
  v32 = v2 + 3;
  v2[6] = v28;
  v2[7] = &off_1003B49F0;
  v33 = sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  v514 = v32;
  v34 = sub_1000080F8(v32, v28);
  v23[3] = v28;
  v35 = sub_10000DBEC(v23);
  v36 = *(v28 - 8);
  v37 = *(v36 + 16);
  v38 = v36 + 16;
  (v37)(v35, v34, v28);
  v39 = v24;
  v40 = v522;
  (v517)(v23, v39, v522);
  v474 = v33;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v23, v40);
  sub_100040738(v32, &v556);
  Dependency.wrappedValue.getter();
  v41 = v552;
  v42 = v557;
  v43 = sub_10003E968(&v556, v557);
  v44 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = (v459 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v46;
  v554 = &off_1003B49F0;
  v553 = v28;
  *&v552 = v48;
  v49 = type metadata accessor for CustodianStorageController();
  v50 = swift_allocObject();
  v51 = sub_10003E968(&v552, v28);
  v52 = *(v38 + 48);
  __chkstk_darwin(v51);
  v54 = (v459 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37(v54);
  v55 = *v54;
  v500 = v28;
  v50[5] = v28;
  v50[6] = &off_1003B49F0;
  v50[2] = v55;
  v50[7] = v41;
  sub_10000839C(&v552);
  sub_10000839C(&v556);
  v56 = v513;
  v57 = v513;
  v513[8] = v50;
  v57 += 8;
  v515 = v57;
  v56[11] = v49;
  v56[12] = &off_1003A4C78;
  v58 = sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  v59 = sub_1000080F8(v57, v49);
  v23[3] = v49;
  v60 = sub_10000DBEC(v23);
  v487 = *(v49 - 8);
  v61 = v487[2];
  v491 = v487 + 2;
  v492 = v49;
  v490 = v61;
  (v61)(v60, v59, v49);
  v62 = v522;
  v63 = v517;
  (v517)(v23, v516, v522);
  v477 = v50;

  v493 = v58;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v64 = v62;
  v65 = v520;
  v520(v23, v62);
  v502 = sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  v66 = type metadata accessor for CustodianHealthCheckVersionProviderFactory();
  v67 = swift_allocObject();
  v23[3] = v66;
  v23[4] = sub_1000405B8(&unk_1003D9850, type metadata accessor for CustodianHealthCheckVersionProviderFactory);
  *v23 = v67;
  v512 = v23;
  v505 = enum case for DependencyRegistry.Entry.factory(_:);
  v63(v23);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v65(v23, v64);
  v68 = type metadata accessor for DaemonDestinationBuilder();
  v69 = swift_allocObject();
  v70 = v513;
  v513[32] = v68;
  v70[33] = &off_1003A9008;
  v70[29] = v69;
  Dependency.wrappedValue.getter();
  v71 = v556;
  sub_100040738((v70 + 29), &v556);
  v72 = v557;
  v73 = sub_10003E968(&v556, v557);
  v74 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = (v459 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v554 = &off_1003A9008;
  v553 = v68;
  *&v552 = v78;
  v79 = type metadata accessor for DaemonCustodianMessenger();
  v80 = swift_allocObject();
  v81 = sub_10003E968(&v552, v68);
  v82 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v81);
  v84 = (v459 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84);
  v86 = *v84;
  v80[6] = v68;
  v80[7] = &off_1003A9008;
  v80[2] = v71;
  v80[3] = v86;
  v87 = v515;
  sub_10000839C(&v552);
  sub_10000839C(&v556);
  v88 = v70;
  v70[23] = v80;
  v70 += 23;
  v70[3] = v79;
  v70[4] = &off_1003A8FD8;
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  v499 = v70;
  v89 = sub_1000080F8(v70, v79);
  v90 = v512;
  v512[3] = v79;
  v91 = sub_10000DBEC(v90);
  (*(*(v79 - 8) + 16))(v91, v89, v79);
  v92 = v522;
  (v517)(v90, v516, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v90, v92);
  Dependency.wrappedValue.getter();
  sub_100040738(v514, &v558);
  sub_100040738(v87, v559);
  if (qword_1003D7DE8 != -1)
  {
    swift_once();
  }

  v559[5] = qword_1003FA820;
  v559[6] = &off_1003AA010;
  sub_10003E9B8(&v556, &v552);
  v93 = type metadata accessor for CustodianRecoveryController();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();

  v96 = sub_1000FACE4(&v552);
  v88[37] = v93;
  v88[38] = &off_1003A9790;
  v88[34] = v96;
  v97 = [objc_allocWithZone(AAFollowUpController) init];
  sub_100040738(v87, &v552);
  Dependency.wrappedValue.getter();
  v98 = v553;
  v99 = sub_10003E968(&v552, v553);
  v100 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = (v459 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v103 + 16))(v102);
  v104 = v550;
  v105 = sub_10003E968(&v549, v550);
  v106 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = v459 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v109 + 16))(v108);
  v110 = *v102;
  v473 = v97;
  v111 = sub_10003F044(v110, v108, v473);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v112 = type metadata accessor for CustodianRecoveryFollowUpController();
  v88[42] = v112;
  v88[43] = &off_1003A9DE8;
  v88[39] = v111;
  sub_100040738((v88 + 34), &v552);
  v113 = v553;
  v114 = sub_10003E968(&v552, v553);
  v115 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v114);
  v117 = (v459 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v118 + 16))(v117);
  v119 = *v117;
  v551 = &off_1003A9790;
  v550 = v93;
  *&v549 = v119;
  type metadata accessor for CustodianPushServiceDelegate();
  v120 = swift_allocObject();
  v121 = sub_10003E968(&v549, v93);
  v122 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v121);
  v124 = (v459 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v125 + 16))(v124);
  v126 = *v124;
  v548 = &off_1003A9790;
  v547 = v93;
  *&v546 = v126;
  sub_100040738(&v546, v120 + 16);
  type metadata accessor for SerialQueue();
  v127 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10000839C(&v546);
  *(v127 + 112) = _swiftEmptyArrayStorage;
  *(v127 + 120) = 0;
  *(v127 + 128) = 0;
  *(v120 + 56) = v127;
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v88[44] = v120;
  v88[45] = &off_1003B30C8;
  sub_100040738((v88 + 39), &v552);
  v128 = v553;
  v129 = sub_10003E968(&v552, v553);
  v130 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v129);
  v132 = (v459 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v133 + 16))(v132);
  v134 = *v132;
  v551 = &off_1003A9DE8;
  v550 = v112;
  *&v549 = v134;
  type metadata accessor for EmbargoPushServiceDelegate();
  v135 = swift_allocObject();
  v136 = sub_10003E968(&v549, v112);
  v137 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v136);
  v139 = (v459 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v140 + 16))(v139);
  v141 = *v139;
  v135[5] = v112;
  v135[6] = &off_1003A9DE8;
  v135[2] = v141;
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v88[46] = v135;
  v88[47] = &off_1003B3130;
  sub_100040738(v515, &v552);
  type metadata accessor for DaemonFamilyRequester();
  v142 = swift_allocObject();
  v143 = v553;
  v144 = sub_10003E968(&v552, v553);
  v145 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v144);
  v147 = (v459 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v148 + 16))(v147);
  v149 = sub_10003F284(*v147, v142);
  sub_10000839C(&v552);
  v88[56] = type metadata accessor for CustodianFamilyManager();
  v88[57] = &off_1003B3860;
  v88[53] = v149;
  sub_100040738(v514, &v552);
  sub_100040738((v88 + 18), &v549);
  v150 = v553;
  v151 = sub_10003E968(&v552, v553);
  v152 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v151);
  v154 = (v459 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = v550;
  v157 = sub_10003E968(&v549, v550);
  v158 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v157);
  v160 = (v459 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v161 + 16))(v160);
  v162 = sub_10003F458(*v154, *v160);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v88[72] = type metadata accessor for CustodianAutoAcceptValidator();
  v88[73] = &off_1003A5440;
  v88[69] = v162;
  v163 = sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.wrappedValue.getter();
  v164 = v553;
  v165 = sub_10003E968(&v552, v553);
  v166 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v165);
  v168 = (v459 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v169 + 16))(v168);
  v170 = *v168;
  v171 = type metadata accessor for DaemonAccountStore();
  v551 = &off_1003AB0B8;
  v550 = v171;
  *&v549 = v170;
  v172 = type metadata accessor for DaemonSecurityController(0);
  v173 = *(v172 + 48);
  v174 = *(v172 + 52);
  v175 = swift_allocObject();
  v176 = sub_10003E968(&v549, v171);
  v501 = v171;
  v488 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v176);
  v489 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = (v459 - v489);
  v180 = *(v179 + 16);
  v485 = (v179 + 16);
  v486 = v180;
  v180(v459 - v489);
  v181 = *v178;
  v175[5] = v171;
  v175[6] = &off_1003AB0B8;
  v175[2] = v181;
  v484 = sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  Dependency.init(dependencyId:config:)();
  v471 = sub_100005814(&qword_1003D9870, &qword_10033F000);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v182 = v512;
  v512[3] = v172;
  *v182 = v175;
  v183 = v522;
  (v517)(v182, v516, v522);
  v472 = v163;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v182, v183);
  sub_100040738(v499, &v552);
  v184 = v515;
  sub_100040738(v515, &v549);
  sub_100040738(v514, &v546);
  v185 = v553;
  v186 = sub_10003E968(&v552, v553);
  v470 = v459;
  v187 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v186);
  v189 = (v459 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  v191 = v550;
  v192 = sub_10003E968(&v549, v550);
  v193 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v192);
  v195 = (v459 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v196 + 16))(v195);
  v197 = v547;
  v198 = sub_10003E968(&v546, v547);
  v199 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v198);
  v201 = (v459 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v202 + 16))(v201);
  v502 = sub_10003F65C(*v189, *v195, *v201);
  sub_10000839C(&v546);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  Dependency.wrappedValue.getter();
  sub_100040738(v184, &v549);
  Dependency.wrappedValue.getter();
  Dependency.wrappedValue.getter();
  v203 = v544;
  v204 = sub_10003E968(v543, v544);
  v205 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v204);
  v207 = (v459 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v208 + 16))(v207);
  v209 = *v207;
  v542 = &off_1003AB0B8;
  v210 = v501;
  v541 = v501;
  *&v540 = v209;
  v211 = *(v172 + 48);
  v212 = *(v172 + 52);
  v213 = swift_allocObject();
  v214 = sub_10003E968(&v540, v210);
  __chkstk_darwin(v214);
  v215 = (v459 - v489);
  v486(v459 - v489);
  v216 = *v215;
  v213[5] = v210;
  v213[6] = &off_1003AB0B8;
  v213[2] = v216;
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v540);
  sub_10000839C(v543);
  v217 = v553;
  v218 = sub_10003E968(&v552, v553);
  v219 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v218);
  v221 = (v459 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v222 + 16))(v221);
  v223 = v550;
  v224 = sub_10003E968(&v549, v550);
  v225 = *(*(v223 - 8) + 64);
  __chkstk_darwin(v224);
  v227 = (v459 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v228 + 16))(v227);
  v229 = v547;
  v230 = sub_10003E968(&v546, v547);
  v231 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v230);
  v233 = v459 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v234 + 16))(v233);
  v235 = sub_10003F8F8(*v221, *v227, v233, v213);
  v489 = v235;
  sub_10000839C(&v546);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  sub_100005814(&qword_1003D9878, &qword_10033F008);
  v485 = type metadata accessor for CustodianCleanupController();
  v182[3] = v485;
  *v182 = v235;
  v236 = v522;
  v237 = v517;
  (v517)(v182, v516, v522);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v238 = v236;
  v239 = v520;
  v520(v182, v238);
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  v240 = type metadata accessor for RecoveryFactorsControllerFactory();
  v241 = swift_allocObject();
  v182[3] = v240;
  v182[4] = sub_1000405B8(&qword_1003D9888, type metadata accessor for RecoveryFactorsControllerFactory);
  *v182 = v241;
  v242 = v522;
  v237(v182, v505, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v239(v182, v242);
  v554 = &off_1003A4830;
  v243 = v485;
  v553 = v485;
  *&v552 = v489;
  v486 = type metadata accessor for DeclinedStatusHandler();
  v244 = *(v486 + 12);
  v245 = *(v486 + 26);
  v246 = swift_allocObject();
  v247 = sub_10003E968(&v552, v243);
  v248 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v247);
  v250 = (v459 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v251 + 16))(v250);
  v252 = *v250;
  v551 = &off_1003A4830;
  v550 = v243;
  *&v549 = v252;

  Dependency.init(dependencyId:config:)();
  v471 = sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v488 = v246;
  sub_10003E950(&v549, v246 + 16);
  sub_10000839C(&v552);
  sub_100040738(v515, &v552);
  sub_100040738(v514, &v549);
  v253 = type metadata accessor for NotReachableStatusHandler();
  v254 = *(v253 + 48);
  v255 = *(v253 + 52);
  v256 = swift_allocObject();

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v257 = v553;
  v258 = sub_10003E968(&v552, v553);
  v485 = v459;
  v259 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v258);
  v261 = (v459 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v262 + 16))(v261);
  v263 = v550;
  v264 = sub_10003E968(&v549, v550);
  v484 = v459;
  v265 = *(*(v263 - 8) + 64);
  __chkstk_darwin(v264);
  v267 = (v459 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v268 + 16))(v267);
  v269 = *v261;
  v270 = *v267;
  v548 = &off_1003A4C78;
  v271 = v492;
  v547 = v492;
  *&v546 = v269;
  v545 = &off_1003B49F0;
  v272 = v500;
  v544 = v500;
  v543[0] = v270;
  v273 = type metadata accessor for AcceptedStatusHandler();
  v542 = &off_1003AA600;
  v541 = v273;
  *&v540 = v502;
  v539 = &off_1003AABB0;
  v538 = v486;
  *&v537 = v488;
  v536 = &off_1003AAC38;
  v535 = v253;
  *&v534 = v256;
  v274 = type metadata accessor for CustodianStatusUpdater(0);
  v275 = *(v274 + 48);
  v276 = *(v274 + 52);
  v277 = swift_allocObject();
  v278 = sub_10003E968(&v546, v271);
  v486 = v459;
  v469 = v487[8];
  __chkstk_darwin(v278);
  v470 = ((v279 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = (v459 - v470);
  v490(v459 - v470);
  v281 = v544;
  v282 = sub_10003E968(v543, v544);
  v487 = v459;
  v283 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v282);
  v285 = (v459 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v286 + 16))(v285);
  v287 = *v280;
  v288 = *v285;
  v533 = &off_1003A4C78;
  v532 = v271;
  *&v531 = v287;
  v530 = &off_1003B49F0;
  v529 = v272;
  *&v528 = v288;

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();

  sub_10003E950(&v531, v277 + 16);
  sub_10003E950(&v528, v277 + 56);
  sub_10003E950(&v540, v277 + 96);
  sub_10003E950(&v537, v277 + 136);
  sub_10003E950(&v534, v277 + 176);
  sub_10000839C(v543);
  sub_10000839C(&v546);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v289 = v513;
  v513[61] = v274;
  v289[62] = &off_1003AAAB0;
  v289[58] = v277;
  v290 = v289;
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  v291 = sub_1000080F8(v290 + 58, v274);
  v292 = v512;
  v512[3] = v274;
  v293 = sub_10000DBEC(v292);
  (*(*(v274 - 8) + 16))(v293, v291, v274);
  v294 = v522;
  (v517)(v292, v516, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v292, v294);
  v295 = v499;
  sub_100040738(v499, &v552);
  sub_100040738((v290 + 53), &v549);
  v296 = v514;
  sub_100040738(v514, &v546);
  sub_100040738((v290 + 69), v543);
  v297 = v553;
  v298 = sub_10003E968(&v552, v553);
  v299 = *(*(v297 - 8) + 64);
  __chkstk_darwin(v298);
  v301 = (v459 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v302 + 16))(v301);
  v303 = v547;
  v304 = sub_10003E968(&v546, v547);
  v305 = *(*(v303 - 8) + 64);
  __chkstk_darwin(v304);
  v307 = (v459 - ((v306 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v308 + 16))(v307);
  v309 = v544;
  v310 = sub_10003E968(v543, v544);
  v311 = *(*(v309 - 8) + 64);
  __chkstk_darwin(v310);
  v313 = (v459 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v314 + 16))(v313);
  v485 = sub_10003FD04(*v301, &v549, *v307, *v313);
  sub_10000839C(v543);
  sub_10000839C(&v546);
  sub_10000839C(&v552);
  v484 = type metadata accessor for DaemonInvitationResponseHandler();
  v315 = *(v484 + 12);
  v316 = *(v484 + 26);
  swift_allocObject();
  v500 = sub_1000DA9C4();
  sub_100040738(v295, &v552);
  sub_100040738(v296, &v549);
  v317 = v553;
  v318 = sub_10003E968(&v552, v553);
  v319 = *(*(v317 - 8) + 64);
  __chkstk_darwin(v318);
  v321 = (v459 - ((v320 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v322 + 16))(v321);
  v323 = v550;
  v324 = sub_10003E968(&v549, v550);
  v325 = *(*(v323 - 8) + 64);
  __chkstk_darwin(v324);
  v327 = (v459 - ((v326 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v328 + 16))(v327);
  v499 = sub_1000400BC(*v321, *v327);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  sub_10004035C(v497, &v552);
  v329 = type metadata accessor for DaemonSetupFinalizationHandler();
  v330 = *(v329 + 48);
  v331 = *(v329 + 52);
  v332 = v329;
  swift_allocObject();
  v333 = sub_1000DCDD0(&v552);
  sub_100005814(&unk_1003D98B0, &unk_10033F790);
  v334 = v512;
  v512[3] = v332;
  v461 = v332;
  *v334 = v333;
  v335 = v334;
  v336 = v522;
  (v517)();
  v487 = v333;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v335, v336);
  sub_100040738(v296, &v552);
  sub_100040738(v515, &v549);
  v337 = v553;
  v338 = sub_10003E968(&v552, v553);
  v339 = *(*(v337 - 8) + 64);
  __chkstk_darwin(v338);
  v341 = (v459 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v342 + 16))(v341);
  v343 = v550;
  v344 = sub_10003E968(&v549, v550);
  v345 = *(*(v343 - 8) + 64);
  __chkstk_darwin(v344);
  v347 = (v459 - ((v346 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v348 + 16))(v347);
  v349 = sub_1000403CC(*v341, *v347, type metadata accessor for DaemonCustodianRemovedHandler, sub_10003ED24);
  v486 = v349;
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  Dependency.wrappedValue.getter();
  v350 = v553;
  v351 = sub_10003E968(&v552, v553);
  v468 = v459;
  v352 = *(*(v350 - 8) + 64);
  __chkstk_darwin(v351);
  v354 = (v459 - ((v353 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v355 + 16))(v354);
  v356 = *v354;
  v551 = &off_1003AB0B8;
  v550 = v501;
  *&v549 = v356;
  v463 = type metadata accessor for DaemonInvitationHandler();
  v548 = &off_1003A8760;
  v547 = v463;
  *&v546 = v485;
  v545 = &off_1003A8950;
  v544 = v484;
  v543[0] = v500;
  v462 = type metadata accessor for DaemonShareHandler();
  v542 = &off_1003A8AE8;
  v541 = v462;
  *&v540 = v499;
  v539 = &off_1003A8A88;
  v538 = v332;
  *&v537 = v333;
  v460 = type metadata accessor for DaemonCustodianRemovedHandler();
  v536 = &off_1003A89D8;
  v535 = v460;
  *&v534 = v349;
  v465 = type metadata accessor for CustodianMessageProcessor();
  v357 = objc_allocWithZone(v465);
  v358 = v550;
  v359 = sub_10003E968(&v549, v550);
  v467 = v459;
  v360 = *(*(v358 - 8) + 64);
  __chkstk_darwin(v359);
  v362 = (v459 - ((v361 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v363 + 16))(v362);
  v364 = v547;
  v365 = sub_10003E968(&v546, v547);
  v466 = v459;
  v366 = *(*(v364 - 8) + 64);
  __chkstk_darwin(v365);
  v368 = (v459 - ((v367 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v369 + 16))(v368);
  v370 = v544;
  v371 = sub_10003E968(v543, v544);
  v464 = v459;
  v372 = *(*(v370 - 8) + 64);
  __chkstk_darwin(v371);
  v374 = (v459 - ((v373 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v375 + 16))(v374);
  v376 = v541;
  v377 = sub_10003E968(&v540, v541);
  v459[3] = v459;
  v378 = *(*(v376 - 8) + 64);
  __chkstk_darwin(v377);
  v380 = (v459 - ((v379 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v381 + 16))(v380);
  v382 = v538;
  v383 = sub_10003E968(&v537, v538);
  v459[2] = v459;
  v384 = *(*(v382 - 8) + 64);
  __chkstk_darwin(v383);
  v386 = (v459 - ((v385 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v387 + 16))(v386);
  v388 = v535;
  v389 = sub_10003E968(&v534, v535);
  v459[1] = v459;
  v390 = *(*(v388 - 8) + 64);
  __chkstk_darwin(v389);
  v392 = (v459 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v393 + 16))(v392);
  v394 = *v362;
  v395 = *v368;
  v396 = *v374;
  v397 = *v380;
  v398 = *v386;
  v399 = *v392;
  v533 = &off_1003AB0B8;
  v532 = v501;
  *&v531 = v394;
  v530 = &off_1003A8760;
  v529 = v463;
  *&v528 = v395;
  v527[4] = &off_1003A8950;
  v527[3] = v484;
  v527[0] = v396;
  v526[4] = &off_1003A8AE8;
  v526[3] = v462;
  v526[0] = v397;
  v525[4] = &off_1003A8A88;
  v525[3] = v461;
  v525[0] = v398;
  v524[4] = &off_1003A89D8;
  v524[3] = v460;
  v524[0] = v399;

  Dependency.init(dependencyId:config:)();
  sub_100040738(&v531, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore);
  sub_100040738(&v528, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler);
  sub_100040738(v527, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler);
  sub_100040738(v526, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler);
  sub_100040738(v525, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler);
  sub_100040738(v524, v357 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler);
  v523.receiver = v357;
  v523.super_class = v465;
  v400 = objc_msgSendSuper2(&v523, "init");
  sub_10000839C(v524);
  sub_10000839C(v525);
  sub_10000839C(v526);
  sub_10000839C(v527);
  sub_10000839C(&v528);
  sub_10000839C(&v531);
  sub_10000839C(&v534);
  sub_10000839C(&v537);
  sub_10000839C(&v540);
  sub_10000839C(v543);
  sub_10000839C(&v546);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v401 = v513;
  v513[63] = v400;
  Dependency.wrappedValue.getter();
  [v552 setCustodianDelegate:v401[63]];
  swift_unknownObjectRelease();
  sub_100040738(v515, &v552);
  v402 = v553;
  v403 = sub_10003E968(&v552, v553);
  v404 = *(*(v402 - 8) + 64);
  __chkstk_darwin(v403);
  v406 = (v459 - ((v405 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v407 + 16))(v406);
  v408 = *v406;
  v551 = &off_1003A4C78;
  v409 = v492;
  v550 = v492;
  *&v549 = v408;
  v410 = type metadata accessor for CustodianInvitationStatusChecker();
  v411 = *(v410 + 48);
  v412 = *(v410 + 52);
  v413 = swift_allocObject();
  v414 = sub_10003E968(&v549, v409);
  __chkstk_darwin(v414);
  v415 = (v459 - v470);
  v490(v459 - v470);
  v416 = *v415;
  v548 = &off_1003A4C78;
  v547 = v409;
  *&v546 = v416;
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v546, v413 + 16);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v401[67] = v410;
  v401[68] = &off_1003A8090;
  v401[64] = v413;
  v417 = *sub_1000080F8(v401 + 64, v410);
  v418 = sub_1000C23E4();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v419 = sub_10030F0FC("com.apple.appleaccountd.custodian.invitationStatusCheck", 55, 2);
  sub_1000C28D0(v419, v418);

  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  v420 = type metadata accessor for CustodianIdMSConfirmationHandlerFactory();
  v421 = swift_allocObject();
  v422 = v512;
  v512[3] = v420;
  v422[4] = sub_1000405B8(&unk_1003D98C0, type metadata accessor for CustodianIdMSConfirmationHandlerFactory);
  *v422 = v421;
  v423 = v522;
  (v517)(v422, v505, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v520(v422, v423);
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  v424 = type metadata accessor for DaemonCustodianFetcher();
  v425 = *(v424 + 48);
  v426 = *(v424 + 52);
  v427 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v422[3] = v424;
  *v422 = v427;
  v428 = v522;
  v429 = v517;
  (v517)(v422, v516, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v430 = v520;
  v520(v422, v428);
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  v431 = type metadata accessor for CustodianKeyRepairFactory();
  v432 = swift_allocObject();
  v422[3] = v431;
  v422[4] = sub_1000405B8(&unk_1003D98E0, type metadata accessor for CustodianKeyRepairFactory);
  *v422 = v432;
  v433 = v522;
  v429(v422, v505, v522);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v434 = v433;
  v430(v422, v433);
  sub_100040738(v514, &v552);
  sub_100040738(v515, &v549);
  v435 = v553;
  v436 = sub_10003E968(&v552, v553);
  v437 = *(*(v435 - 8) + 64);
  __chkstk_darwin(v436);
  v439 = (v459 - ((v438 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v440 + 16))(v439);
  v441 = v550;
  v442 = sub_10003E968(&v549, v550);
  v443 = *(*(v441 - 8) + 64);
  __chkstk_darwin(v442);
  v445 = (v459 - ((v444 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v446 + 16))(v445);
  v447 = sub_1000403CC(*v439, *v445, type metadata accessor for CustodianManateeMigrator, sub_10003EEB0);
  sub_10000839C(&v549);
  sub_10000839C(&v552);
  v448 = type metadata accessor for CustodianManateeMigrator();
  v449 = v513;
  v513[51] = v448;
  v449[52] = &off_1003A82B8;
  v449[48] = v447;
  v450 = type metadata accessor for CustodianPreflightHealthCheck();
  v451 = *(v450 + 48);
  v452 = *(v450 + 52);
  swift_allocObject();
  v453 = sub_1000A9560();
  v554 = &off_1003A7598;
  v555 = &off_1003A7510;
  v553 = v450;
  *&v552 = v453;
  v454 = type metadata accessor for CustodianPreflightHealthCheckSequoiaB();
  v455 = *(v454 + 48);
  v456 = *(v454 + 52);
  v457 = swift_allocObject();

  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100040600(&v552, (v457 + 16));
  sub_100005814(&unk_1003D9A70, &unk_10033F060);
  v422[3] = v454;
  *v422 = v457;
  v429(v422, v516, v434);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();

  sub_100040618(v497);
  sub_100040680(&v556);
  (*(v483 + 8))(v496, v498);
  (*(v482 + 8))(v494, v495);
  (*(v481 + 8))(v506, v507);
  (*(v480 + 8))(v503, v504);
  (*(v479 + 8))(v510, v511);
  v520(v422, v434);
  return v449;
}

uint64_t *sub_10003E850()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 3);
  sub_10000839C(v0 + 8);
  sub_10000839C(v0 + 13);
  sub_10000839C(v0 + 18);
  sub_10000839C(v0 + 23);
  v2 = v0[28];
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 29);
  sub_10000839C(v0 + 34);
  sub_10000839C(v0 + 39);
  v3 = v0[44];
  swift_unknownObjectRelease();
  v4 = v0[46];
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 48);
  sub_10000839C(v0 + 53);
  sub_10000839C(v0 + 58);
  v5 = v0[63];
  swift_unknownObjectRelease();
  sub_10000839C(v0 + 64);
  sub_10000839C(v0 + 69);
  return v0;
}

uint64_t sub_10003E8F8()
{
  sub_10003E850();

  return swift_deallocClassInstance();
}

uint64_t sub_10003E950(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003E968(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10003EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for CustodianStorageController();
  v21[4] = &off_1003A4C78;
  v21[0] = a1;
  v6 = type metadata accessor for DaemonFamilyRequester();
  v20[3] = v6;
  v20[4] = &off_1003B3A18;
  v20[0] = a2;
  sub_100040738(v21, a3 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage);
  sub_100040738(v20, v18);
  v7 = v19;
  v8 = sub_10003E968(v18, v19);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v16 = v6;
  v17 = &off_1003B3A18;
  *&v15 = v13;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v20);
  sub_10000839C(v21);
  sub_10003E950(&v15, a3 + 16);
  sub_10000839C(v18);
  return a3;
}

uint64_t sub_10003EBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for DaemonCustodianMessenger();
  v17 = &off_1003A8FD8;
  *&v15 = a1;
  v13 = type metadata accessor for CustodianStorageController();
  v14 = &off_1003A4C78;
  *&v12 = a2;
  v10 = type metadata accessor for StorageController();
  v11 = &off_1003B49F0;
  *&v9 = a3;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v15, a4 + 16);
  sub_10003E950(&v12, a4 + 56);
  sub_10003E950(&v9, a4 + 96);
  return a4;
}

uint64_t sub_10003ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = type metadata accessor for StorageController();
  v24 = &off_1003B49F0;
  *&v22 = a1;
  v20 = type metadata accessor for CustodianStorageController();
  v21 = &off_1003A4C78;
  *&v19 = a2;
  v6 = type metadata accessor for CustodianMetadataController(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  Dependency.init(dependencyId:config:)();
  v10 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v9 + v10) = JSONEncoder.init()();
  v14 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v9 + v14) = JSONDecoder.init()();
  *(a3 + 96) = v9;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v22, a3 + 16);
  sub_10003E950(&v19, a3 + 56);
  return a3;
}

uint64_t sub_10003EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = type metadata accessor for StorageController();
  v11[4] = &off_1003B49F0;
  v11[0] = a1;
  v10[3] = type metadata accessor for CustodianStorageController();
  v10[4] = &off_1003A4C78;
  v10[0] = a2;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  v6 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup;
  *(a3 + v6) = dispatch_group_create();
  v7 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(a3 + v7) = v8;
  *(a3 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = 0;
  sub_100040738(v11, a3 + 16);
  sub_100040738(v10, a3 + 56);
  *(a3 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors) = _swiftEmptyArrayStorage;
  sub_1000C55A8();
  if (qword_1003D7DE0 != -1)
  {
    swift_once();
  }

  [qword_1003DBF18 setMaxConcurrentOperationCount:{1, v10[0]}];
  sub_10000839C(v10);
  sub_10000839C(v11);
  return a3;
}

void *sub_10003F044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianStorageController();
  v31[3] = v6;
  v31[4] = &off_1003A4C78;
  v31[0] = a1;
  v7 = type metadata accessor for CustodianIDMSRequestManager();
  v29 = v7;
  v30 = &off_1003AA430;
  v8 = sub_10000DBEC(v28);
  sub_1000406D4(a2, v8);
  v26 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v27 = &off_1003B1488;
  *&v25 = a3;
  type metadata accessor for CustodianRecoveryFollowUpController();
  v9 = swift_allocObject();
  v10 = sub_10003E968(v31, v6);
  v11 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v29;
  v16 = sub_10003E968(v28, v29);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = *v13;
  v9[5] = v6;
  v9[6] = &off_1003A4C78;
  v9[2] = v21;
  v9[10] = v7;
  v9[11] = &off_1003AA430;
  v22 = sub_10000DBEC(v9 + 7);
  sub_1000406D4(v19, v22);
  sub_10003E950(&v25, (v9 + 12));
  sub_10000839C(v28);
  sub_10000839C(v31);
  return v9;
}

uint64_t sub_10003F284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianStorageController();
  v25[3] = v4;
  v25[4] = &off_1003A4C78;
  v25[0] = a1;
  v23 = type metadata accessor for DaemonFamilyRequester();
  v24 = &off_1003B3A18;
  v22[0] = a2;
  v5 = type metadata accessor for CustodianFamilyManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_10003E968(v25, v4);
  v10 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v23;
  v15 = sub_10003E968(v22, v23);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_10003EA14(*v12, *v18, v8);
  sub_10000839C(v22);
  sub_10000839C(v25);
  return v20;
}

uint64_t sub_10003F458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageController();
  v30[3] = v4;
  v30[4] = &off_1003B49F0;
  v30[0] = a1;
  v5 = type metadata accessor for DaemonAccountStore();
  v28 = v5;
  v29 = &off_1003AB0B8;
  v27[0] = a2;
  type metadata accessor for CustodianAutoAcceptValidator();
  v6 = swift_allocObject();
  v7 = sub_10003E968(v30, v4);
  v8 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v28;
  v13 = sub_10003E968(v27, v28);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v10;
  v19 = *v16;
  v25 = v4;
  v26 = &off_1003B49F0;
  v23 = &off_1003AB0B8;
  *&v24 = v18;
  v22 = v5;
  *&v21 = v19;
  sub_10003E950(&v24, v6 + 16);
  sub_10003E950(&v21, v6 + 56);
  sub_10000839C(v27);
  sub_10000839C(v30);
  return v6;
}

uint64_t sub_10003F65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DaemonCustodianMessenger();
  v37[3] = v6;
  v37[4] = &off_1003A8FD8;
  v37[0] = a1;
  v35 = type metadata accessor for CustodianStorageController();
  v36 = &off_1003A4C78;
  v34[0] = a2;
  v32 = type metadata accessor for StorageController();
  v33 = &off_1003B49F0;
  v31[0] = a3;
  v7 = type metadata accessor for AcceptedStatusHandler();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_10003E968(v37, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v35;
  v17 = sub_10003E968(v34, v35);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v31[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v32;
  v23 = sub_10003E968(v31, v32);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v31[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = sub_10003EBDC(*v14, *v20, *v26, v10);
  sub_10000839C(v31);
  sub_10000839C(v34);
  sub_10000839C(v37);
  return v28;
}

void *sub_10003F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DaemonAccountStore();
  v55[3] = v8;
  v55[4] = &off_1003AB0B8;
  v55[0] = a1;
  v9 = type metadata accessor for CustodianStorageController();
  v53 = v9;
  v54 = &off_1003A4C78;
  v52[0] = a2;
  v10 = type metadata accessor for CustodianIDMSRequestManager();
  v50 = v10;
  v51 = &off_1003AA430;
  v11 = sub_10000DBEC(v49);
  sub_1000406D4(a3, v11);
  v12 = type metadata accessor for DaemonSecurityController(0);
  v47 = v12;
  v48 = &off_1003A49D8;
  v46[0] = a4;
  v13 = type metadata accessor for CustodianCleanupController();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_10003E968(v55, v8);
  v18 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v46[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v53;
  v23 = sub_10003E968(v52, v53);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v46[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = v50;
  v29 = sub_10003E968(v49, v50);
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v46[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  v34 = v47;
  v35 = sub_10003E968(v46, v47);
  v36 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v46[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v20;
  v41 = *v26;
  v42 = *v38;
  v16[5] = v8;
  v16[6] = &off_1003AB0B8;
  v16[2] = v40;
  v16[10] = v9;
  v16[11] = &off_1003A4C78;
  v16[7] = v41;
  v16[15] = v10;
  v16[16] = &off_1003AA430;
  v43 = sub_10000DBEC(v16 + 12);
  sub_1000406D4(v32, v43);
  v16[20] = v12;
  v16[21] = &off_1003A49D8;
  v16[17] = v42;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v46);
  sub_10000839C(v49);
  sub_10000839C(v52);
  sub_10000839C(v55);
  return v16;
}

uint64_t sub_10003FD04(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v7 = type metadata accessor for DaemonCustodianMessenger();
  v51[3] = v7;
  v51[4] = &off_1003A8FD8;
  v51[0] = a1;
  v8 = type metadata accessor for StorageController();
  v49 = v8;
  v50 = &off_1003B49F0;
  v48[0] = a3;
  v9 = type metadata accessor for CustodianAutoAcceptValidator();
  v46 = v9;
  v47 = &off_1003A5440;
  v45[0] = a4;
  v10 = type metadata accessor for DaemonInvitationHandler();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = sub_10003E968(v51, v7);
  v15 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v49;
  v20 = sub_10003E968(v48, v49);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v46;
  v26 = sub_10003E968(v45, v46);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v17;
  v32 = *v23;
  v33 = *v29;
  v43 = v7;
  v44 = &off_1003A8FD8;
  v41 = &off_1003B49F0;
  *&v42 = v31;
  v40 = v8;
  *&v39 = v32;
  v38 = &off_1003A5440;
  v37 = v9;
  *&v36 = v33;
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v42, v13 + 16);
  sub_10003E950(v35, v13 + 56);
  sub_10003E950(&v39, v13 + 96);
  sub_10003E950(&v36, v13 + 136);
  sub_10000839C(v45);
  sub_10000839C(v48);
  sub_10000839C(v51);
  return v13;
}

uint64_t sub_1000400BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonCustodianMessenger();
  v33[3] = v4;
  v33[4] = &off_1003A8FD8;
  v33[0] = a1;
  v5 = type metadata accessor for StorageController();
  v31 = v5;
  v32 = &off_1003B49F0;
  v30[0] = a2;
  v6 = type metadata accessor for DaemonShareHandler();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = sub_10003E968(v33, v4);
  v11 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v31;
  v16 = sub_10003E968(v30, v31);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v13;
  v22 = *v19;
  v28 = v4;
  v29 = &off_1003A8FD8;
  v26 = &off_1003B49F0;
  *&v27 = v21;
  v25 = v5;
  *&v24 = v22;
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v27, v9 + 16);
  sub_10003E950(&v24, v9 + 56);
  sub_10000839C(v30);
  sub_10000839C(v33);
  return v9;
}

uint64_t sub_10004035C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DCB30, &unk_10033F030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000403CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void, uint64_t))
{
  v8 = type metadata accessor for StorageController();
  v29[3] = v8;
  v29[4] = &off_1003B49F0;
  v29[0] = a1;
  v27 = type metadata accessor for CustodianStorageController();
  v28 = &off_1003A4C78;
  v26[0] = a2;
  v9 = a3(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = sub_10003E968(v29, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v27;
  v19 = sub_10003E968(v26, v27);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = a4(*v16, *v22, v12);
  sub_10000839C(v26);
  sub_10000839C(v29);
  return v24;
}

uint64_t sub_1000405B8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_100040600(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100040618(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DCB30, &unk_10033F030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000406D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianIDMSRequestManager();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000407A0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, void *), uint64_t a5)
{
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  if (a2)
  {
    v36 = a2;
    swift_errorRetain();
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for AACustodianError(0);
    if (swift_dynamicCast())
    {
      v13 = v35;
      v36 = v35;
      v34 = -7014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = v35;
      v34 = v35;
      v15 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v15)
      {
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100008D04(v16, qword_1003FAA88);
        v17 = a3;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v36 = v33;
          *v20 = 136315138;
          v21 = [v17 handle];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v13;
          v23 = v22;
          v25 = v24;

          v26 = sub_10021145C(v23, v25, &v36);

          *(v20 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "Custodianship already exists with handle %s. Abandoning custodian setup.", v20, 0xCu);
          sub_10000839C(v33);

          goto LABEL_13;
        }
      }
    }

LABEL_13:
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    swift_errorRetain();
    a4(v12, a2);

    return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000415AC(a3, a4, a5);
  }

  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  type metadata accessor for AACustodianError(0);
  v34 = -7022;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v29 = v35;
  a4(v12, v35);

  return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
}

void sub_100040C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_100012D04(a1, &v14 - v8, &qword_1003D8B60, &unk_10033F210);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

uint64_t sub_100040D94(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v30 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v30);
  v9 = &v28 - v8;
  v29 = type metadata accessor for URL();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v29);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_100005814(&qword_1003DA128, &unk_10033F280);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10033F070;
  *(v17 + 32) = xmmword_10033F080;
  *(v17 + 48) = 3;
  v18 = sub_1000080F8((v3 + 144), *(v3 + 168));
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v17;
  v19[4] = v28;
  v19[5] = a3;
  v20 = sub_1000080F8((*v18 + 16), *(*v18 + 40));
  type metadata accessor for LocalCache();
  v21 = a1;

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = *(v10 + 8);
  v23 = v14;
  v24 = v29;
  v22(v23, v29);
  v25 = v30;
  (*(v6 + 16))(v9, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v30);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v25);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_1000324D8(v16, sub_100054144, v19);

  v22(v16, v24);
  return sub_10000839C(v31);
}

uint64_t sub_10004109C(uint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v54 = a3;
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v47 - v14;
  v15 = type metadata accessor for CustodianRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch custodians with error %@.", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    a5(v13, a1);
    return sub_100008D3C(v13, &qword_1003D8B60, &unk_10033F210);
  }

  v52 = *(a1 + 16);
  if (!v52)
  {
    v43 = 0;
    goto LABEL_23;
  }

  v47 = a5;
  v27 = 0;
  v28 = &v19[*(v15 + 24)];
  v29 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v50 = v28;
  v51 = (a4 + 32);
  v31 = &unk_1003D3000;
  v48 = v30;
  v49 = v29;
  do
  {
    sub_10005AA4C(v29 + v30 * v27, v19, type metadata accessor for CustodianRecord);
    v32 = *v28;
    v33 = *(v28 + 1);
    v34 = [v54 v31[311]];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v32 == v35 && v33 == v37)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v40 = *(a4 + 16);
    v41 = v51;
    while (v40)
    {
      v42 = *v41++;
      --v40;
      if (v42 == *&v19[*(v15 + 36)])
      {
        sub_10005AD7C(v19, type metadata accessor for CustodianRecord);
        v43 = 1;
        goto LABEL_21;
      }
    }

LABEL_9:
    ++v27;
    sub_10005AD7C(v19, type metadata accessor for CustodianRecord);
    v29 = v49;
    v28 = v50;
    v30 = v48;
    v31 = &unk_1003D3000;
  }

  while (v27 != v52);
  v43 = 0;
LABEL_21:
  a5 = v47;
LABEL_23:
  v44 = type metadata accessor for UUID();
  v13 = v53;
  (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
  v45 = 0;
  if (v43)
  {
    type metadata accessor for AACustodianError(0);
    v55 = -7014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v56;
  }

  a5(v13, v45);

  return sub_100008D3C(v13, &qword_1003D8B60, &unk_10033F210);
}

uint64_t sub_1000415AC(void *a1, void (*a2)(char *, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[CustodianDaemonService buildRecords] was called.", v11, 2u);
  }

  v12 = *sub_1000080F8((v4 + 16), *(v4 + 40));
  v13 = type metadata accessor for CustodianDaemonContainer();
  v33 = v13;
  v34 = &off_1003A54A0;
  v32[0] = v12;
  v14 = type metadata accessor for CustodianshipRecordBuilder(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = sub_10003E968(v32, v13);
  v19 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v32[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;

  v24 = a1;
  v25 = sub_100053E08(v24, v23, v17);

  sub_10000839C(v32);
  v33 = v14;
  v34 = &off_1003AA488;
  v32[0] = v25;
  v26 = sub_1000080F8(v32, v14);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *v26;
  v29 = v24;

  sub_10011FDD0(v28, v27, a2, a3, v29);

  return sub_10000839C(v32);
}

uint64_t sub_100041854(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, void *a5)
{
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v34 - v11;
  v13 = type metadata accessor for CustodianshipRecords(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v34 - v19);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Self is nil. Failed to build custodianship record. Abandoning custodian setup.", v30, 2u);
    }

    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    type metadata accessor for AACustodianError(0);
    v34[1] = -7022;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v35;
    a3(v12, v35);

    return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
  }

  sub_100012D04(a1, v20, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to build custodianship record. Abandoning custodian setup.", v25, 2u);
    }

    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    swift_errorRetain();
    a3(v12, v21);

    return sub_100008D3C(v12, &qword_1003D8B60, &unk_10033F210);
  }

  sub_10005ABD0(v20, v16, type metadata accessor for CustodianshipRecords);
  sub_100041D0C(a5, v16, a3, a4);

  return sub_10005AD7C(v16, type metadata accessor for CustodianshipRecords);
}

uint64_t sub_100041D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v54 = a3;
  v50 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v56 = &v47 - v9;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v47 - v13;
  v14 = kAAAnalyticsEventCustodianSetupOwnerStoredCustodianRecordToCloud;
  v15 = [a1 altDSID];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 telemetryFlowID];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v51 = sub_100245D38(v14, v17, v19, v22, v24);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v58 = a1;
  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Saving freshly built records.", v28, 2u);
  }

  v48 = sub_1000080F8((v5 + 144), *(v5 + 168));
  v29 = swift_allocObject();
  v49 = v29;
  swift_weakInit();
  v30 = v50;
  v31 = v53;
  sub_10005AA4C(v50, v53, type metadata accessor for CustodianshipRecords);
  v32 = *(v52 + 80);
  v33 = (v32 + 32) & ~v32;
  v34 = v11 + 7;
  v35 = (v11 + 7 + v33) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v51;
  *(v36 + 24) = v29;
  sub_10005ABD0(v31, v36 + v33, type metadata accessor for CustodianshipRecords);
  *(v36 + v35) = v58;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  v38 = v57;
  *v37 = v54;
  v37[1] = v38;
  v54 = *v48;
  v39 = type metadata accessor for TaskPriority();
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  v41 = v55;
  sub_10005AA4C(v30, v55, type metadata accessor for CustodianshipRecords);
  v42 = (v32 + 40) & ~v32;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v54;
  sub_10005ABD0(v41, v43 + v42, type metadata accessor for CustodianshipRecords);
  v44 = (v43 + ((v34 + v42) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_100052C60;
  v44[1] = v36;

  v45 = v58;

  sub_1000BCD5C(0, 0, v40, &unk_10033F240, v43);
}