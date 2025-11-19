uint64_t sub_1002936F8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_1002939CC;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_100293814;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100293814()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002938EC()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002939CC()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 392);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100293AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for CustodianRecord();
  v6[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100293B50, 0, 0);
}

uint64_t sub_100293B50()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator);
  v2 = sub_10026ECEC(v0[6]);
  v3 = *(v0[6] + *(v0[12] + 36));
  if (v3 == 1)
  {
    v21 = sub_10029CDA8(v0[6], v2 & 1);
LABEL_12:
    v22 = v21;
    v23 = v0[13];

    v24 = v0[1];

    return v24(v22);
  }

  if (v3 != 4)
  {
    if (v3 == 2)
    {
      v4 = v2;
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = sub_100294024;
      v6 = v0[10];
      v7 = v0[11];
      v8 = v0[8];
      v9 = v0[9];
      v11 = v0[6];
      v10 = v0[7];

      return sub_10029572C(v11, v4 & 1, v10, v8, v9, v6);
    }

    v21 = sub_10029D010(v0[6], v2 & 1);
    goto LABEL_12;
  }

  v13 = v2;
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_10029417C;
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];

  return sub_100297AE0(v20, v13 & 1, v19, v17, v18, v15);
}

uint64_t sub_100294024(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002942D4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 104);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10029417C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002945D0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 104);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1002942D4()
{
  v24 = v0;
  v1 = v0[15];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAB8);
  sub_10029D880(v3, v2, type metadata accessor for CustodianRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    v13 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
    v17 = sub_10021145C(v14, v16, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occured when owner was checking readiness state for custodianID: %s, error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  else
  {

    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
  }

  v19 = v0[13];
  swift_getErrorValue();
  v20 = v0[2];
  sub_100255F6C(-7305, v0[3], v0[4]);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002945D0()
{
  v24 = v0;
  v1 = v0[17];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAB8);
  sub_10029D880(v3, v2, type metadata accessor for CustodianRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    v13 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
    v17 = sub_10021145C(v14, v16, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occured when owner was checking readiness state for custodianID: %s, error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  else
  {

    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
  }

  v19 = v0[13];
  swift_getErrorValue();
  v20 = v0[2];
  sub_100255F6C(-7305, v0[3], v0[4]);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002948CC(uint64_t a1, char a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 168) = a3;
  *(v8 + 170) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for CustodianRecord();
  *(v8 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100294994, 0, 0);
}

uint64_t sub_100294994()
{
  v32 = v0;
  v1 = *(v0 + 168);
  if (v1 >> 8 == 2 || (v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v30 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3;
    *(v6 + 40) = v30;
    *(v6 + 56) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_100294D08;
    v8 = *(v0 + 96);

    return sub_10026A614(v8, "OwnerTearDownSetup", 18, 2, &unk_100348268, v6);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = *(v0 + 16);
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_10029D880(v11, v10, type metadata accessor for CustodianRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v17 = *(v0 + 64);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      v20 = *(v17 + 20);
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10029DADC(v16, type metadata accessor for CustodianRecord);
      v24 = sub_10021145C(v21, v23, &v31);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Owner not tearing down stale setup for custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {

      sub_10029DADC(v16, type metadata accessor for CustodianRecord);
    }

    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_100294D08()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10026E1D8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100294E24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100294E24()
{
  v29 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 128) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 170);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    v12 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v16 = sub_10021145C(v13, v15, &v28);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner notifying custodian of tear down with reason: %ld for custodianID: %s", v10, 0x16u);
    sub_10000839C(v11);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v17 = *(v0 + 170);
  OSTransaction.complete()();
  v19 = v18;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_1002950D8;
  v21 = *(v0 + 96);
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);

  return sub_100299EA8(v21, v19, v26, v24, v25, v22);
}

uint64_t sub_1002950D8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100295684;
  }

  else
  {
    v3 = sub_1002951EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002951EC()
{
  v18 = v0;
  v1 = v0[16];
  sub_10029D880(v0[12], v0[10], type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = *(v6 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10029DADC(v5, type metadata accessor for CustodianRecord);
    v13 = sub_10021145C(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Owner posting tear down CFU for custodianID: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {

    sub_10029DADC(v5, type metadata accessor for CustodianRecord);
  }

  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_100295420;
  v15 = v0[12];

  return sub_10029D328(v15);
}

uint64_t sub_100295420()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1002955DC;
  }

  else
  {
    v3 = sub_100295534;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100295534()
{
  sub_10029DADC(v0[12], type metadata accessor for CustodianRecord);
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5(1);
}

uint64_t sub_1002955DC()
{
  sub_10029DADC(v0[12], type metadata accessor for CustodianRecord);
  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_100295684()
{
  sub_10029DADC(v0[12], type metadata accessor for CustodianRecord);
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10029572C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 412) = a2;
  *(v7 + 128) = a1;
  *(v7 + 136) = a3;
  v8 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  *(v7 + 176) = v8;
  v9 = *(v8 - 8);
  *(v7 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v11 = type metadata accessor for CustodianRecoveryInfoRecord();
  *(v7 + 200) = v11;
  v12 = *(v11 - 8);
  *(v7 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  v14 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 224) = v14;
  v15 = *(v14 - 8);
  *(v7 + 232) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 248) = RecoveryRecordsRequest;
  v18 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v19 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v20 = type metadata accessor for CustodianRecord();
  *(v7 + 280) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_1002959B4, 0, 0);
}

uint64_t sub_1002959B4()
{
  v38 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 344) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 336);
  if (v6)
  {
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v15 = sub_10021145C(v12, v14, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner invitation is accepted, checking if RecoveryInfoRecord is found, custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  v34 = *(v0 + 152);
  v23 = *(v0 + 128);
  v35 = *(v0 + 136);
  v36 = *(v0 + 168);
  v24 = *(*(v0 + 280) + 20);
  *(v0 + 408) = v24;
  v25 = type metadata accessor for UUID();
  *(v0 + 352) = v25;
  (*(*(v25 - 8) + 16))(v16, v23 + v24, v25);
  *(v16 + v17[5]) = 0;
  v26 = v16 + v17[6];
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v16 + v17[7]) = 1;
  v27 = (v16 + v17[8]);
  *v27 = v34;
  v27[1] = v21;
  v28 = (v16 + v17[9]);
  *v28 = v35;
  v28[1] = v22;
  (*(v19 + 16))(v18, v36 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v20);

  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  v29 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v30 = swift_task_alloc();
  *(v0 + 360) = v30;
  *v30 = v0;
  v30[1] = sub_100295D6C;
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);

  return sub_100021548(v31, v32, 0, 0);
}

uint64_t sub_100295D6C()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_100296474;
  }

  else
  {
    v3 = sub_100295E80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100295E80()
{
  v64 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_10029DADC(*(v0 + 256), type metadata accessor for FetchRecoveryRecordsRequest);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = *(v0 + 264);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  sub_10029DA04(*(v0 + 272), v4);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = *(v0 + 344);
  v9 = *(v0 + 264);
  if (v7 == 1)
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 128);
    sub_100008D3C(v9, &unk_1003D91B0, qword_1003444F0);
    sub_10029D880(v11, v10, type metadata accessor for CustodianRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 352);
      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      v17 = *(v0 + 272);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v63 = v19;
      *v18 = 136315138;
      v20 = *(v15 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10029DADC(v16, type metadata accessor for CustodianRecord);
      v24 = sub_10021145C(v21, v23, &v63);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Owner RecoveryInfoRecord is not found, incomplete setup, custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {
      v39 = *(v0 + 288);
      v17 = *(v0 + 272);

      sub_10029DADC(v39, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v17, &unk_1003D91B0, qword_1003444F0);
    v62 = *(v0 + 412);
    v41 = *(v0 + 328);
    v40 = *(v0 + 336);
    v43 = *(v0 + 312);
    v42 = *(v0 + 320);
    v45 = *(v0 + 296);
    v44 = *(v0 + 304);
    v46 = *(v0 + 288);
    v48 = *(v0 + 264);
    v47 = *(v0 + 272);
    v49 = *(v0 + 256);
    v59 = *(v0 + 240);
    v60 = *(v0 + 216);
    v61 = *(v0 + 192);

    v50 = *(v0 + 8);
    if (v62)
    {
      v51 = 4294967234;
    }

    else
    {
      v51 = 66;
    }

    return v50(v51);
  }

  else
  {
    v25 = *(v0 + 328);
    v26 = *(v0 + 128);
    sub_10029DA74(v9, *(v0 + 216), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10029D880(v26, v25, type metadata accessor for CustodianRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 352);
      v30 = *(v0 + 328);
      v31 = *(v0 + 280);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = 136315138;
      v34 = *(v31 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_10029DADC(v30, type metadata accessor for CustodianRecord);
      v38 = sub_10021145C(v35, v37, &v63);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Owner RecoveryInfoRecord found, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v32, 0xCu);
      sub_10000839C(v33);
    }

    else
    {
      v53 = *(v0 + 328);

      sub_10029DADC(v53, type metadata accessor for CustodianRecord);
    }

    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v56 = *(v0 + 176);
    (*(v55 + 16))(v54, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare, v56);
    Dependency.wrappedValue.getter();
    (*(v55 + 8))(v54, v56);
    v57 = swift_task_alloc();
    *(v0 + 376) = v57;
    *v57 = v0;
    v57[1] = sub_100296C30;
    v58 = *(v0 + 216);

    return sub_1001AD9EC(v58);
  }
}

uint64_t sub_100296474()
{
  v85 = v0;
  v1 = *(v0 + 368);
  sub_10000839C((v0 + 16));
  *(v0 + 96) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 104);
    *(v0 + 112) = v2;
    v3 = *(v0 + 256);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    sub_10029DADC(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 120) == -7062)
    {
      v4 = *(v0 + 368);
      v5 = *(v0 + 272);
      v6 = *(v0 + 200);
      v7 = *(v0 + 208);

      (*(v7 + 56))(v5, 1, 1, v6);
      v8 = *(v0 + 96);

      v9 = *(v0 + 264);
      v10 = *(v0 + 200);
      v11 = *(v0 + 208);
      sub_10029DA04(*(v0 + 272), v9);
      v12 = (*(v11 + 48))(v9, 1, v10);
      v13 = *(v0 + 344);
      v14 = *(v0 + 264);
      if (v12 == 1)
      {
        v15 = *(v0 + 288);
        v16 = *(v0 + 128);
        sub_100008D3C(v14, &unk_1003D91B0, qword_1003444F0);
        sub_10029D880(v16, v15, type metadata accessor for CustodianRecord);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v0 + 352);
          v20 = *(v0 + 280);
          v21 = *(v0 + 288);
          v22 = *(v0 + 272);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v84 = v24;
          *v23 = 136315138;
          v25 = *(v20 + 20);
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
          v26 = dispatch thunk of CustomStringConvertible.description.getter();
          v28 = v27;
          sub_10029DADC(v21, type metadata accessor for CustodianRecord);
          v29 = sub_10021145C(v26, v28, &v84);

          *(v23 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v17, v18, "Owner RecoveryInfoRecord is not found, incomplete setup, custodianID: %s", v23, 0xCu);
          sub_10000839C(v24);
        }

        else
        {
          v57 = *(v0 + 288);
          v22 = *(v0 + 272);

          sub_10029DADC(v57, type metadata accessor for CustodianRecord);
        }

        sub_100008D3C(v22, &unk_1003D91B0, qword_1003444F0);
        v83 = *(v0 + 412);
        v59 = *(v0 + 328);
        v58 = *(v0 + 336);
        v61 = *(v0 + 312);
        v60 = *(v0 + 320);
        v63 = *(v0 + 296);
        v62 = *(v0 + 304);
        v64 = *(v0 + 288);
        v66 = *(v0 + 264);
        v65 = *(v0 + 272);
        v67 = *(v0 + 256);
        v77 = *(v0 + 240);
        v79 = *(v0 + 216);
        v81 = *(v0 + 192);

        v68 = *(v0 + 8);
        if (v83)
        {
          v69 = 4294967234;
        }

        else
        {
          v69 = 66;
        }

        return v68(v69);
      }

      else
      {
        v43 = *(v0 + 328);
        v44 = *(v0 + 128);
        sub_10029DA74(v14, *(v0 + 216), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10029D880(v44, v43, type metadata accessor for CustodianRecord);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = *(v0 + 352);
          v48 = *(v0 + 328);
          v49 = *(v0 + 280);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v84 = v51;
          *v50 = 136315138;
          v52 = *(v49 + 20);
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v54;
          sub_10029DADC(v48, type metadata accessor for CustodianRecord);
          v56 = sub_10021145C(v53, v55, &v84);

          *(v50 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v45, v46, "Owner RecoveryInfoRecord found, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v50, 0xCu);
          sub_10000839C(v51);
        }

        else
        {
          v70 = *(v0 + 328);

          sub_10029DADC(v70, type metadata accessor for CustodianRecord);
        }

        v72 = *(v0 + 184);
        v71 = *(v0 + 192);
        v73 = *(v0 + 176);
        (*(v72 + 16))(v71, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare, v73);
        Dependency.wrappedValue.getter();
        (*(v72 + 8))(v71, v73);
        v74 = swift_task_alloc();
        *(v0 + 376) = v74;
        *v74 = v0;
        v74[1] = sub_100296C30;
        v75 = *(v0 + 216);

        return sub_1001AD9EC(v75);
      }
    }
  }

  else
  {
    sub_10029DADC(*(v0 + 256), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v30 = *(v0 + 96);

  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v34 = *(v0 + 312);
  v33 = *(v0 + 320);
  v36 = *(v0 + 296);
  v35 = *(v0 + 304);
  v37 = *(v0 + 288);
  v39 = *(v0 + 264);
  v38 = *(v0 + 272);
  v40 = *(v0 + 256);
  v76 = *(v0 + 240);
  v78 = *(v0 + 216);
  v80 = *(v0 + 192);
  v82 = *(v0 + 368);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100296C30(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = sub_100297260;
  }

  else
  {
    *(v4 + 413) = a1 & 1;
    v7 = sub_100296D5C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100296D5C()
{
  v54 = v0;
  v1 = *(v0 + 413);
  sub_10000839C((v0 + 56));
  v2 = *(v0 + 344);
  v3 = *(v0 + 128);
  if (v1 == 1)
  {
    sub_10029D880(v3, *(v0 + 320), type metadata accessor for CustodianRecord);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 352);
      v7 = *(v0 + 320);
      v8 = *(v0 + 280);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315138;
      v11 = *(v8 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_10029DADC(v7, type metadata accessor for CustodianRecord);
      v15 = sub_10021145C(v12, v14, &v53);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Owner RecoveryInfoRecord share is accepted by custodian, checking if setup is finalized with server, custodianID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
      v30 = *(v0 + 320);

      sub_10029DADC(v30, type metadata accessor for CustodianRecord);
    }

    v31 = *(v0 + 408);
    v32 = *(v0 + 128);
    v33 = swift_task_alloc();
    *(v0 + 392) = v33;
    *v33 = v0;
    v33[1] = sub_1002973B0;
    v34 = *(v0 + 168);

    return sub_10029C5D0(v32 + v31);
  }

  else
  {
    sub_10029D880(v3, *(v0 + 296), type metadata accessor for CustodianRecord);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 352);
      v19 = *(v0 + 296);
      v21 = *(v0 + 272);
      v20 = *(v0 + 280);
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315138;
      v25 = *(v20 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_10029DADC(v19, type metadata accessor for CustodianRecord);
      v29 = sub_10021145C(v26, v28, &v53);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "Owner RecoveryInfoRecord share is not accepted by custodian, incomplete setup, custodianID: %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    else
    {
      v36 = *(v0 + 296);
      v21 = *(v0 + 272);
      v22 = *(v0 + 216);

      sub_10029DADC(v36, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v22, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v21, &unk_1003D91B0, qword_1003444F0);
    v52 = *(v0 + 412);
    v38 = *(v0 + 328);
    v37 = *(v0 + 336);
    v40 = *(v0 + 312);
    v39 = *(v0 + 320);
    v42 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 288);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 256);
    v49 = *(v0 + 240);
    v50 = *(v0 + 216);
    v51 = *(v0 + 192);

    v47 = *(v0 + 8);
    if (v52)
    {
      v48 = 4294967235;
    }

    else
    {
      v48 = 67;
    }

    return v47(v48);
  }
}

uint64_t sub_100297260()
{
  v1 = v0[34];
  sub_10029DADC(v0[27], type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100008D3C(v1, &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 7);
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002973B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = sub_100297998;
  }

  else
  {
    *(v4 + 414) = a1 & 1;
    v7 = sub_1002974DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002974DC()
{
  v51 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 128);
  if (*(v0 + 414) == 1)
  {
    sub_10029D880(v2, *(v0 + 312), type metadata accessor for CustodianRecord);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 352);
      v6 = *(v0 + 312);
      v8 = *(v0 + 272);
      v7 = *(v0 + 280);
      v9 = *(v0 + 216);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v50 = v11;
      *v10 = 136315138;
      v12 = *(v7 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_10029DADC(v6, type metadata accessor for CustodianRecord);
      v16 = sub_10021145C(v13, v15, &v50);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "Owner setup is accepted and completed, custodianID: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
      v31 = *(v0 + 312);
      v8 = *(v0 + 272);
      v9 = *(v0 + 216);

      sub_10029DADC(v31, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v8, &unk_1003D91B0, qword_1003444F0);
    v32 = 1;
  }

  else
  {
    sub_10029D880(v2, *(v0 + 304), type metadata accessor for CustodianRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 352);
      v20 = *(v0 + 304);
      v22 = *(v0 + 272);
      v21 = *(v0 + 280);
      v23 = *(v0 + 216);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315138;
      v26 = *(v21 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10029DADC(v20, type metadata accessor for CustodianRecord);
      v30 = sub_10021145C(v27, v29, &v50);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "Owner setup is not finalized with server, incomplete setup, custodianID: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {
      v33 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 216);

      sub_10029DADC(v33, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v23, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v22, &unk_1003D91B0, qword_1003444F0);
    if (*(v0 + 412))
    {
      v32 = -60;
    }

    else
    {
      v32 = 68;
    }
  }

  v49 = v32;
  v35 = *(v0 + 328);
  v34 = *(v0 + 336);
  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v39 = *(v0 + 296);
  v38 = *(v0 + 304);
  v40 = *(v0 + 288);
  v42 = *(v0 + 264);
  v41 = *(v0 + 272);
  v43 = *(v0 + 256);
  v46 = *(v0 + 240);
  v47 = *(v0 + 216);
  v48 = *(v0 + 192);

  v44 = *(v0 + 8);

  return v44(v49);
}

uint64_t sub_100297998()
{
  v1 = v0[34];
  sub_10029DADC(v0[27], type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100008D3C(v1, &unk_1003D91B0, qword_1003444F0);
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[50];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100297AE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 380) = a2;
  *(v7 + 128) = a1;
  *(v7 + 136) = a3;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  *(v7 + 176) = v8;
  v9 = *(v8 - 8);
  *(v7 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v11 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 200) = v11;
  v12 = *(v11 - 8);
  *(v7 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 224) = RecoveryRecordsRequest;
  v15 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v16 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  v17 = type metadata accessor for CustodianRecord();
  *(v7 + 248) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100297D00, 0, 0);
}

uint64_t sub_100297D00()
{
  v38 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v15 = sub_10021145C(v12, v14, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner invitation is declined, checking if RecoveryInfoRecord is removed, custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  v34 = *(v0 + 152);
  v23 = *(v0 + 128);
  v35 = *(v0 + 136);
  v36 = *(v0 + 168);
  v24 = *(*(v0 + 248) + 20);
  *(v0 + 376) = v24;
  v25 = type metadata accessor for UUID();
  *(v0 + 320) = v25;
  (*(*(v25 - 8) + 16))(v16, v23 + v24, v25);
  *(v16 + v17[5]) = 0;
  v26 = v16 + v17[6];
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v16 + v17[7]) = 1;
  v27 = (v16 + v17[8]);
  *v27 = v34;
  v27[1] = v21;
  v28 = (v16 + v17[9]);
  *v28 = v35;
  v28[1] = v22;
  (*(v19 + 16))(v18, v36 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v20);

  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  v29 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v30 = swift_task_alloc();
  *(v0 + 328) = v30;
  *v30 = v0;
  v30[1] = sub_1002980B4;
  v32 = *(v0 + 232);
  v31 = *(v0 + 240);

  return sub_100021548(v31, v32, 0, 0);
}

uint64_t sub_1002980B4()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_100298790;
  }

  else
  {
    v3 = sub_1002981C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002981C8()
{
  v55 = v0;
  v1 = *(v0 + 240);
  sub_10029DADC(*(v0 + 232), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 240), 1, v2);
  v5 = *(v0 + 312);
  v6 = *(v0 + 128);
  if (v4 == 1)
  {
    sub_10029D880(v6, *(v0 + 296), type metadata accessor for CustodianRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 320);
      v10 = *(v0 + 296);
      v11 = *(v0 + 248);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54 = v13;
      *v12 = 136315138;
      v14 = *(v11 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_10029DADC(v10, type metadata accessor for CustodianRecord);
      v18 = sub_10021145C(v15, v17, &v54);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Owner RecoveryInfoRecord is removed, checking if setup is revoked with server, custodianID: %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    else
    {
      v31 = *(v0 + 296);

      sub_10029DADC(v31, type metadata accessor for CustodianRecord);
    }

    v32 = *(v0 + 376);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    v36 = *(v0 + 128);
    (*(v34 + 16))(v33, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v35);
    Dependency.wrappedValue.getter();
    (*(v34 + 8))(v33, v35);
    v37 = *sub_1000080F8((v0 + 56), *(v0 + 80));
    v38 = swift_task_alloc();
    *(v0 + 344) = v38;
    *v38 = v0;
    v38[1] = sub_100298F08;

    return sub_100080620(v36 + v32, 0);
  }

  else
  {
    sub_10029D880(v6, *(v0 + 256), type metadata accessor for CustodianRecord);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 320);
      v22 = *(v0 + 248);
      v23 = *(v0 + 256);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136315138;
      v26 = *(v22 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10029DADC(v23, type metadata accessor for CustodianRecord);
      v30 = sub_10021145C(v27, v29, &v54);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Owner RecoveryInfoRecord is not removed, incomplete setup, custodianID: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {
      v40 = *(v0 + 256);

      sub_10029DADC(v40, type metadata accessor for CustodianRecord);
    }

    v53 = *(v0 + 380);
    v41 = *(v0 + 296);
    v42 = *(v0 + 304);
    v44 = *(v0 + 280);
    v43 = *(v0 + 288);
    v46 = *(v0 + 264);
    v45 = *(v0 + 272);
    v47 = *(v0 + 256);
    v48 = *(v0 + 232);
    v51 = *(v0 + 216);
    v52 = *(v0 + 192);
    sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

    v49 = *(v0 + 8);
    if (v53)
    {
      v50 = 4294967237;
    }

    else
    {
      v50 = 69;
    }

    return v49(v50);
  }
}

uint64_t sub_100298790()
{
  v74 = v0;
  v1 = *(v0 + 336);
  sub_10000839C((v0 + 16));
  *(v0 + 96) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 104);
    *(v0 + 112) = v2;
    v3 = *(v0 + 232);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    sub_10029DADC(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 120) == -7062)
    {
      v4 = *(v0 + 336);
      v5 = *(v0 + 240);

      v6 = type metadata accessor for CustodianRecoveryInfoRecord();
      v7 = *(v6 - 8);
      (*(v7 + 56))(v5, 1, 1, v6);
      v8 = *(v0 + 96);

      v9 = (*(v7 + 48))(*(v0 + 240), 1, v6);
      v10 = *(v0 + 312);
      v11 = *(v0 + 128);
      if (v9 == 1)
      {
        sub_10029D880(v11, *(v0 + 296), type metadata accessor for CustodianRecord);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 320);
          v15 = *(v0 + 296);
          v16 = *(v0 + 248);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v73 = v18;
          *v17 = 136315138;
          v19 = *(v16 + 20);
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v21;
          sub_10029DADC(v15, type metadata accessor for CustodianRecord);
          v23 = sub_10021145C(v20, v22, &v73);

          *(v17 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v12, v13, "Owner RecoveryInfoRecord is removed, checking if setup is revoked with server, custodianID: %s", v17, 0xCu);
          sub_10000839C(v18);
        }

        else
        {
          v49 = *(v0 + 296);

          sub_10029DADC(v49, type metadata accessor for CustodianRecord);
        }

        v50 = *(v0 + 376);
        v52 = *(v0 + 184);
        v51 = *(v0 + 192);
        v53 = *(v0 + 176);
        v54 = *(v0 + 128);
        (*(v52 + 16))(v51, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v53);
        Dependency.wrappedValue.getter();
        (*(v52 + 8))(v51, v53);
        v55 = *sub_1000080F8((v0 + 56), *(v0 + 80));
        v56 = swift_task_alloc();
        *(v0 + 344) = v56;
        *v56 = v0;
        v56[1] = sub_100298F08;

        return sub_100080620(v54 + v50, 0);
      }

      else
      {
        sub_10029D880(v11, *(v0 + 256), type metadata accessor for CustodianRecord);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 320);
          v40 = *(v0 + 248);
          v41 = *(v0 + 256);
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v73 = v43;
          *v42 = 136315138;
          v44 = *(v40 + 20);
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          sub_10029DADC(v41, type metadata accessor for CustodianRecord);
          v48 = sub_10021145C(v45, v47, &v73);

          *(v42 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v37, v38, "Owner RecoveryInfoRecord is not removed, incomplete setup, custodianID: %s", v42, 0xCu);
          sub_10000839C(v43);
        }

        else
        {
          v57 = *(v0 + 256);

          sub_10029DADC(v57, type metadata accessor for CustodianRecord);
        }

        v72 = *(v0 + 380);
        v58 = *(v0 + 296);
        v59 = *(v0 + 304);
        v61 = *(v0 + 280);
        v60 = *(v0 + 288);
        v63 = *(v0 + 264);
        v62 = *(v0 + 272);
        v64 = *(v0 + 256);
        v65 = *(v0 + 232);
        v68 = *(v0 + 216);
        v70 = *(v0 + 192);
        sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

        v66 = *(v0 + 8);
        if (v72)
        {
          v67 = 4294967237;
        }

        else
        {
          v67 = 69;
        }

        return v66(v67);
      }
    }
  }

  else
  {
    sub_10029DADC(*(v0 + 232), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v24 = *(v0 + 96);

  v26 = *(v0 + 296);
  v25 = *(v0 + 304);
  v28 = *(v0 + 280);
  v27 = *(v0 + 288);
  v30 = *(v0 + 264);
  v29 = *(v0 + 272);
  v31 = *(v0 + 256);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 216);
  v69 = *(v0 + 192);
  v71 = *(v0 + 336);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100298F08(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_100299570;
  }

  else
  {
    *(v4 + 381) = a1;
    v7 = sub_100299030;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100299030()
{
  v50 = v0;
  v1 = *(v0 + 381);
  sub_10000839C((v0 + 56));
  if (v1 > 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + 312);
      sub_10029D880(*(v0 + 128), *(v0 + 264), type metadata accessor for CustodianRecord);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 320);
        v7 = *(v0 + 264);
        v8 = *(v0 + 248);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v49 = v10;
        *v9 = 136315138;
        v11 = *(v8 + 20);
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        sub_10029DADC(v7, type metadata accessor for CustodianRecord);
        v15 = sub_10021145C(v12, v14, &v49);

        *(v9 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v4, v5, "Owner setup is not revoked with server, incomplete setup, custodianID: %s", v9, 0xCu);
        sub_10000839C(v10);
      }

      else
      {
        v35 = *(v0 + 264);

        sub_10029DADC(v35, type metadata accessor for CustodianRecord);
      }

      v48 = *(v0 + 380);
      v36 = *(v0 + 296);
      v37 = *(v0 + 304);
      v39 = *(v0 + 280);
      v38 = *(v0 + 288);
      v41 = *(v0 + 264);
      v40 = *(v0 + 272);
      v42 = *(v0 + 256);
      v43 = *(v0 + 232);
      v46 = *(v0 + 216);
      v47 = *(v0 + 192);
      sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

      v44 = *(v0 + 8);
      if (v48)
      {
        v45 = 4294967239;
      }

      else
      {
        v45 = 71;
      }

      return v44(v45);
    }
  }

  v16 = *(v0 + 312);
  sub_10029D880(*(v0 + 128), *(v0 + 288), type metadata accessor for CustodianRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 320);
    v20 = *(v0 + 288);
    v21 = *(v0 + 248);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v49 = v23;
    *v22 = 136315138;
    v24 = *(v21 + 20);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_10029DADC(v20, type metadata accessor for CustodianRecord);
    v28 = sub_10021145C(v25, v27, &v49);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Owner setup is revoked with server, checking if setup was torn down by custodian, custodianID: %s", v22, 0xCu);
    sub_10000839C(v23);
  }

  else
  {
    v29 = *(v0 + 288);

    sub_10029DADC(v29, type metadata accessor for CustodianRecord);
  }

  v30 = *(v0 + 376);
  v31 = *(v0 + 168);
  v32 = *(v0 + 128);
  *(v0 + 360) = sub_10028D75C();
  v33 = swift_task_alloc();
  *(v0 + 368) = v33;
  *v33 = v0;
  v33[1] = sub_100299684;

  return sub_100014A24(0, v32 + v30);
}

uint64_t sub_100299570()
{
  sub_100008D3C(v0[30], &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 7);
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v13 = v0[24];
  v14 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100299684(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *v2;
  *(*v2 + 382) = a1;

  v6 = *(v3 + 360);
  if (v1)
  {

    v7 = sub_100299C14;
  }

  else
  {

    v7 = sub_1002997D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002997D4()
{
  v44 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 128);
  if (*(v0 + 382) == 11)
  {
    sub_10029D880(v2, *(v0 + 272), type metadata accessor for CustodianRecord);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 320);
      v6 = *(v0 + 272);
      v7 = *(v0 + 248);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v43 = v9;
      *v8 = 136315138;
      v10 = *(v7 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10029DADC(v6, type metadata accessor for CustodianRecord);
      v14 = sub_10021145C(v11, v13, &v43);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Owner setup is declined and completed, custodianID: %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    else
    {
      v28 = *(v0 + 272);

      sub_10029DADC(v28, type metadata accessor for CustodianRecord);
    }

    v42 = 0;
  }

  else
  {
    sub_10029D880(v2, *(v0 + 280), type metadata accessor for CustodianRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 382);
      v18 = *(v0 + 320);
      v19 = *(v0 + 280);
      v20 = *(v0 + 248);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 134218242;
      *(v21 + 4) = v17;
      *(v21 + 12) = 2080;
      v23 = *(v20 + 20);
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_10029DADC(v19, type metadata accessor for CustodianRecord);
      v27 = sub_10021145C(v24, v26, &v43);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "Owner setup was torn down by custodian, reason: %ld, custodianID: %s", v21, 0x16u);
      sub_10000839C(v22);
    }

    else
    {
      v29 = *(v0 + 280);

      sub_10029DADC(v29, type metadata accessor for CustodianRecord);
    }

    v42 = *(v0 + 382) | 0xFFFFFF80;
  }

  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v33 = *(v0 + 280);
  v32 = *(v0 + 288);
  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 256);
  v37 = *(v0 + 232);
  v40 = *(v0 + 216);
  v41 = *(v0 + 192);
  sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

  v38 = *(v0 + 8);

  return v38(v42);
}

uint64_t sub_100299C14()
{
  v28 = v0;
  v1 = v0[39];
  sub_10029D880(v0[16], v0[34], type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[40];
    v5 = v0[34];
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = *(v6 + 20);
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10029DADC(v5, type metadata accessor for CustodianRecord);
    v13 = sub_10021145C(v10, v12, &v27);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Owner setup is declined and completed, custodianID: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {
    v14 = v0[34];

    sub_10029DADC(v14, type metadata accessor for CustodianRecord);
  }

  v15 = v0[37];
  v16 = v0[38];
  v18 = v0[35];
  v17 = v0[36];
  v20 = v0[33];
  v19 = v0[34];
  v21 = v0[32];
  v22 = v0[29];
  v25 = v0[27];
  v26 = v0[24];
  sub_100008D3C(v0[30], &unk_1003D91B0, qword_1003444F0);

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_100299EA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 160) = a2;
  *(v7 + 56) = a1;
  *(v7 + 64) = a3;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100299F80, 0, 0);
}

uint64_t sub_100299F80()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 96) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 128) = *(v0 + 40);
  v5 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;
  if (v4)
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;

    v10 = String._bridgeToObjectiveC()();

    v11 = *(v0 + 72);
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;

    v10 = 0;
  }

  v14 = *(v0 + 64);
  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 analyticsEventWithName:v5 altDSID:v10 flowID:v16];
  *(v0 + 136) = v17;

  if (v17)
  {
    v18 = objc_allocWithZone(NSNumber);
    v19 = v17;
    v20 = [v18 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v21 = NSString.init(stringLiteral:)();
    [v19 setObject:v20 forKeyedSubscript:v21];
  }

  sub_100257274(v5);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_1002722C0;
  v23 = *(v0 + 96);
  v24 = *(v0 + 56);
  v25 = *(v0 + 160);

  return sub_10029B58C(v22, v23, v24, v25);
}

uint64_t sub_10029A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = type metadata accessor for CustodianRecord();
  v7[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_10029A3FC, 0, 0);
}

uint64_t sub_10029A3FC()
{
  v38 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[14];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[23] = v0[8];
  v7 = kAAAnalyticsEventSetupFailSafeTearDown;
  v37[0] = 0x776F642D72616574;
  v37[1] = 0xEA00000000002D6ELL;
  v8 = *(v5 + 20);
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v0[24] = 0x776F642D72616574;
  v0[25] = 0xEA00000000002D6ELL;
  if (v6)
  {
    v10 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v7;

    v14 = String._bridgeToObjectiveC()();

    v15 = v0[16];
  }

  else
  {
    v16 = v0[16];
    v17 = v7;

    v14 = 0;
  }

  v18 = v0[15];
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 analyticsEventWithName:v7 altDSID:v14 flowID:v20];
  v0[26] = v21;

  if (v21)
  {
    v22 = objc_allocWithZone(NSNumber);
    v23 = v21;
    v24 = [v22 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v25 = NSString.init(stringLiteral:)();
    [v23 setObject:v24 forKeyedSubscript:v25];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v26, qword_1003FAA40);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10021145C(0x776F642D72616574, 0xEA00000000002D6ELL, v37);
    _os_log_impl(&_mh_execute_header, v27, v28, "Performing: %s...", v29, 0xCu);
    sub_10000839C(v30);
  }

  sub_100257274(v7);
  v31 = swift_task_alloc();
  v0[28] = v31;
  *v31 = v0;
  v31[1] = sub_10029AA7C;
  v32 = v0[19];
  v34 = v0[16];
  v33 = v0[17];
  v35 = v0[15];

  return sub_10029B004(v32, v33, v35, v34);
}

uint64_t sub_10029AA7C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10029AB90;
  }

  else
  {
    v3 = sub_10029AE28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029AB90()
{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[25];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10021145C(v7, v6, &v27);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  v12 = v0[26];
  swift_getErrorValue();
  v13 = v0[2];
  v14 = v0[4];
  sub_1002DEA80(v0[3]);
  swift_getErrorValue();
  v15 = v0[5];
  sub_100255F6C(-7304, v0[6], v0[7]);
  if (v12)
  {
    v16 = v0[26];
    v17 = v0[23];
    v18 = v16;
    v19 = _convertErrorToNSError(_:)();
    [v18 updateTaskResultWithError:v19];

    swift_getObjectType();
    sub_100246FA8(v16);
  }

  v20 = v0[25];
  v21 = v0[26];
  v23 = v0[22];
  v22 = v0[23];
  v24 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v25 = v0[1];

  return v25();
}

uint64_t sub_10029AE28()
{
  v18 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed!", v7, 0xCu);
    sub_10000839C(v8);
  }

  v9 = *(v0 + 208);
  if (v9)
  {
    v10 = *(v0 + 184);
    [*(v0 + 208) updateTaskResultWithError:0];
    swift_getObjectType();
    v11 = v9;
    sub_100246FA8(v9);
  }

  v12 = *(v0 + 200);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  sub_10029DA74(*(v0 + 152), *(v0 + 88), type metadata accessor for CustodianRecord);

  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10029B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v4[12] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10029B104, 0, 0);
}

uint64_t sub_10029B104()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  v8 = type metadata accessor for CustodianRecord();
  v9 = *(v8 + 20);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v2, v7 + v9, v10);
  *(v2 + v5[5]) = 4;
  *(v2 + v5[6]) = 0;
  *(v2 + v5[7]) = 0;
  v11 = (v2 + v5[8]);
  *v11 = v6;
  v11[1] = v4;
  *(v2 + v5[9]) = 1;
  v12 = v2 + v5[10];
  *v12 = 0;
  *(v12 + 8) = 1;

  Dependency.wrappedValue.getter();
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *(v13 + 16) = v0 + 7;
  *(v13 + 24) = v2;
  v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_10029B304;
  v16 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD000000000000016, 0x8000000100332E80, sub_10029D7E8, v13, v8);
}

uint64_t sub_10029B304()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10029B4CC;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10029B420;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10029B420()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10029DADC(v1, type metadata accessor for CustodianStatusUpdateRequest);
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10029B4CC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  (*(v4 + 8))(v2, v3);
  sub_10029DADC(v5, type metadata accessor for CustodianStatusUpdateRequest);
  sub_10000839C(v0 + 2);

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_10029B58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  v5 = type metadata accessor for UUID();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  *(v4 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10029B6B8, 0, 0);
}

uint64_t sub_10029B6B8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v25 = *(v0 + 120);
  v7 = *(v0 + 64);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__messenger, v4);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v4);
  v8 = sub_1000080F8((v0 + 16), *(v0 + 40));
  v9 = type metadata accessor for CustodianRecord();
  v10 = (v7 + *(v9 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = *v8;
  (*(v6 + 16))(v3, v7 + *(v9 + 20), v5);
  v14 = type metadata accessor for CustodianRemovedMessage();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v18 = v17 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v17 + 16) = 4;
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v3, v5);
  *(v17 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = v25;
  v19 = v17 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v19 = 12;
  *(v19 + 8) = 0;
  v20 = sub_1000E9D30(v11, v12);
  sub_100262BAC(v17, v20, 0xD00000000000001FLL, 0x800000010032D510);
  v22 = *(v0 + 112);
  v23 = *(v0 + 88);

  sub_10000839C((v0 + 16));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10029B920()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare;
  v6 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__messenger;
  v10 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);

  v14 = *(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator);

  v15 = *(*v0 + 48);
  v16 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OwnerSetupReadinessHealthCheck()
{
  result = qword_1003E5650;
  if (!qword_1003E5650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10029BBB8()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003E5660, &unk_1003D98D0, &unk_10033F050);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10029BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = *v4;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_1000BCD5C(0, 0, v12, &unk_100348210, v15);
}

uint64_t sub_10029BF5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10029BFAC(uint64_t a1)
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
  v11[1] = sub_10000EF88;

  return sub_10028D860(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10029C088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *a2;
  (*(v9 + 16))(&v17 - v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  sub_10007DE60(a3, a4, sub_10010BC1C, v15);
}

uint64_t sub_10029C1F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = a3;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v26 = *(updated - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(updated - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *a2;
  (*(v13 + 16))(&v26 - v15, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v16, v12);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_10029D880(v27, v7, type metadata accessor for CustodianStatusUpdateRequest);
  v21 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_10029DA74(v7, v23 + v21, type metadata accessor for CustodianStatusUpdateRequest);
  *(v23 + v22) = v17;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_10029D804;
  v24[1] = v19;

  sub_1000BCD5C(0, 0, v11, &unk_10033F360, v23);
}

uint64_t sub_10029C4FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_10029A2F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10029C5D0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10029C69C, 0, 0);
}

uint64_t sub_10029C69C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v0[17] = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v6 = *(v2 + 16);
  v0[18] = v6;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[20] = v7;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v8 = *sub_1000080F8(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_10029C7D0;
  v10 = v0[12];

  return sub_100080620(v10, 1);
}

uint64_t sub_10029C7D0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_10029CAC0;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_10029C8F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10029C8F8()
{
  if (*(v0 + 208) && *(v0 + 208) == 1)
  {

    sub_10000839C((v0 + 16));
LABEL_5:
    v2 = *(v0 + 128);

    v3 = *(v0 + 8);

    return v3(1);
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_10000839C((v0 + 16));
  if (v1)
  {
    goto LABEL_5;
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  (*(v0 + 144))(v8, *(v0 + 104) + *(v0 + 136), v9);
  Dependency.wrappedValue.getter();
  v6(v8, v9);
  v10 = *sub_1000080F8((v0 + 56), *(v0 + 80));
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_10029CB30;
  v12 = *(v0 + 96);

  return sub_100080620(v12, 0);
}

uint64_t sub_10029CAC0()
{
  sub_10000839C(v0 + 2);
  v1 = v0[23];
  v2 = v0[16];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10029CB30(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_10029CD38;
  }

  else
  {
    *(v4 + 209) = a1;
    v7 = sub_10029CC58;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10029CC58()
{
  if (*(v0 + 209) && *(v0 + 209) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000839C((v0 + 56));
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_10029CD38()
{
  sub_10000839C(v0 + 7);
  v1 = v0[25];
  v2 = v0[16];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10029CDA8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CustodianRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAB8);
  sub_10029D880(a1, v7, type metadata accessor for CustodianRecord);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v17 = sub_10021145C(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Owner invitation is pending for record with custodianID: %s", v11, 0xCu);
    sub_10000839C(v12);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  if (a2)
  {
    return 4294967233;
  }

  else
  {
    return 65;
  }
}

uint64_t sub_10029D010(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = type metadata accessor for CustodianRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  sub_10029D880(a1, v10, type metadata accessor for CustodianRecord);
  sub_10029D880(a1, v8, type metadata accessor for CustodianRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v2 = v14;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v2 = 134218242;
    v16 = *&v10[*(v4 + 36)];
    sub_10029DADC(v10, type metadata accessor for CustodianRecord);
    *(v2 + 4) = v16;
    *(v2 + 12) = 2080;
    v17 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
    v21 = sub_10021145C(v18, v20, &v29);

    *(v2 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Owner invitation is other status: %ld for record with custodianID: %s", v2, 0x16u);
    sub_10000839C(v15);

    LOBYTE(v2) = v28;
  }

  else
  {
    sub_10029DADC(v10, type metadata accessor for CustodianRecord);

    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
  }

  v22 = *(a1 + *(v4 + 36));
  if (v22 == 5)
  {
    v23 = (v2 & 1) == 0;
    v24 = 73;
    v25 = -55;
  }

  else
  {
    v23 = (v2 & 1) == 0;
    if (v22 == 3)
    {
      v24 = 72;
      v25 = -56;
    }

    else
    {
      v24 = 74;
      v25 = -54;
    }
  }

  if (v23)
  {
    return v24;
  }

  else
  {
    return v25;
  }
}

uint64_t sub_10029D328(uint64_t a1)
{
  v1[13] = a1;
  v2 = type metadata accessor for CustodianRecord();
  v1[14] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for TrustedContactUserNotification();
  v1[16] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10029D454, 0, 0);
}

uint64_t sub_10029D454()
{
  v35 = v0;
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_10029D880(v5, v3, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  Dependency.wrappedValue.getter();
  v6 = sub_1000080F8(v0 + 8, v0[11]);
  sub_1002CA150(v0 + 2);
  v7 = *v6;
  sub_1002D2E28((v0 + 2), 0, 0);
  sub_1000C5460((v0 + 2));
  sub_10000839C(v0 + 8);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v8 = v0[15];
  v9 = v0[13];
  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  sub_10029D880(v9, v8, type metadata accessor for CustodianRecord);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[15];
  if (v13)
  {
    v33 = v0[20];
    v19 = v0[14];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136315138;
    v22 = *(v19 + 20);
    type metadata accessor for UUID();
    v32 = v16;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10029DADC(v18, type metadata accessor for CustodianRecord);
    v26 = sub_10021145C(v23, v25, &v34);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "Owner removed CFU posted after tear down for record with custodianID: %s", v20, 0xCu);
    sub_10000839C(v21);

    sub_10029DADC(v17, type metadata accessor for TrustedContactUserNotification);
    (*(v15 + 8))(v33, v32);
  }

  else
  {

    sub_10029DADC(v18, type metadata accessor for CustodianRecord);
    sub_10029DADC(v17, type metadata accessor for TrustedContactUserNotification);
    (*(v15 + 8))(v14, v16);
  }

  v27 = v0[20];
  v28 = v0[17];
  v29 = v0[15];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10029D804(uint64_t a1)
{
  v2 = *(*(sub_100005814(&unk_1003D9200, &unk_10033EC90) - 8) + 80);

  return sub_10013F2A4(a1);
}

uint64_t sub_10029D880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029D8E8()
{
  v1 = (type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10029DA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029DA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029DADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10029DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100005814(&qword_1003E5AD8, &qword_100348310);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_10029DD18(a3, a4, a5, sub_1002A0FE0, v15);
}

uint64_t sub_10029DCC8()
{
  swift_errorRetain();
  sub_100005814(&qword_1003E5AD8, &qword_100348310);
  return CheckedContinuation.resume(returning:)();
}

void sub_10029DD18(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v56 = a2;
  v51 = a1;
  v57 = *v5;
  v7 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  __chkstk_darwin(v7);
  v52 = &v50 - v9;
  v10 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController;
  v16 = v11[2];
  v16(&v50 - v13, v6 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController, v10);
  Dependency.wrappedValue.getter();
  v17 = v11[1];
  v17(v14, v10);
  v18 = [objc_allocWithZone(ACAccountStore) init];
  v19 = [v18 aa_primaryAppleAccount];

  if (!v19 || (v20 = [v19 aa_personID], v19, !v20))
  {
    sub_10000839C(v61);
    goto LABEL_7;
  }

  v21 = [objc_opt_self() isICDPEnabledForDSID:v20];

  sub_10000839C(v61);
  if ((v21 & 1) == 0)
  {
LABEL_7:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAB8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v61);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - CDP is not enabled or has never been enabled for this account, bailing from health check...", v39, 0xCu);
      sub_10000839C(v40);
    }

    type metadata accessor for AAError(0);
    v60 = -16;
    sub_100212324(_swiftEmptyArrayStorage);
    v41 = &qword_1003D8370;
    v42 = type metadata accessor for AAError;
    goto LABEL_12;
  }

  v16(v14, v6 + v15, v10);
  Dependency.wrappedValue.getter();
  v17(v14, v10);
  v22 = *(*sub_1000080F8(v61, v62) + 24);
  v60 = 0;
  if ([v22 isManateeAvailable:&v60])
  {
    v23 = v60;
    sub_10000839C(v61);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v26 = v58;
    v27 = v59;
    v25[2] = v24;
    v25[3] = v26;
    v29 = v55;
    v28 = v56;
    v25[4] = v27;
    v25[5] = v29;
    v30 = v52;
    v25[6] = v51;
    v25[7] = v28;
    v31 = v57;
    v25[8] = v57;
    v33 = v53;
    v32 = v54;
    (*(v53 + 16))(v30, v6 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__urlBagProvider, v54);

    v34 = v29;

    Dependency.wrappedValue.getter();
    (*(v33 + 8))(v30, v32);
    v35 = *sub_1000080F8(v61, v62);

    sub_1003214A8(v35, v6, sub_1002A1234, v25, v31);

    sub_10000839C(v61);

    return;
  }

  v44 = v60;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_10000839C(v61);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100008D04(v45, qword_1003FAAB8);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v61);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s - Manatee is not available, proceeding to post CDP repair.", v48, 0xCu);
    sub_10000839C(v49);
  }

  sub_10029E484();
  type metadata accessor for AASignInError(0);
  v60 = -8008;
  sub_100212324(_swiftEmptyArrayStorage);
  v41 = &qword_1003D8338;
  v42 = type metadata accessor for AASignInError;
LABEL_12:
  sub_100287E08(v41, v42);
  _BridgedStoredNSError.init(_:userInfo:)();
  v43 = v61[0];
  v58(v61[0]);
}

uint64_t sub_10029E484()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - v5 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - CDP not enabled, posting a CDP repair CFU.", v10, 0xCu);
    sub_10000839C(v11);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  sub_100260F04(1u, 0);
  return sub_10000839C(v14);
}

void sub_10029E830(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v32 = a3;
      swift_errorRetain();
      if (qword_1003D7F88 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAB78);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v31 = a4;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v18;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v19;
        *v17 = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s - Error performing Walrus Status Mismatch Detection: %@", v16, 0x16u);
        sub_100083380(v17);

        sub_10000839C(v18);

        a4 = v31;
      }

      else
      {
      }

      a3 = v32;
    }

    else
    {
      if (qword_1003D7F88 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008D04(v26, qword_1003FAB78);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - Successfully performed Walrus Status Mismatch Detection", v29, 0xCu);
        sub_10000839C(v30);
      }
    }

    sub_10029ED2C(a5, a6, a7, a3, a4);
  }

  else
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAB78);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - Self is nil", v23, 0xCu);
      sub_10000839C(v24);
    }

    type metadata accessor for AAError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100287E08(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v33;
    a3(v33);
  }
}

uint64_t sub_10029ED2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v6;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a1;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = v12;

  v19 = a1;

  sub_1000BCD5C(0, 0, v16, &unk_100348320, v18);
}

uint64_t sub_10029EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v23;
  v8[27] = a4;
  v8[28] = a7;
  v9 = sub_100005814(&qword_1003E5AE0, &qword_100348328);
  v8[31] = v9;
  v10 = *(v9 - 8);
  v8[32] = v10;
  v11 = *(v10 + 64) + 15;
  v8[33] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003E5AE8, qword_100348330);
  v8[34] = v12;
  v13 = *(v12 - 8);
  v8[35] = v13;
  v14 = *(v13 + 64) + 15;
  v8[36] = swift_task_alloc();
  v15 = sub_100005814(&qword_1003E4960, qword_100347B68);
  v8[37] = v15;
  v16 = *(v15 - 8);
  v8[38] = v16;
  v17 = *(v16 + 64) + 15;
  v8[39] = swift_task_alloc();
  v18 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v8[40] = v18;
  v19 = *(v18 - 8);
  v8[41] = v19;
  v20 = *(v19 + 64) + 15;
  v8[42] = swift_task_alloc();

  return _swift_task_switch(sub_10029F0BC, 0, 0);
}

uint64_t sub_10029F0BC()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  (*(v2 + 16))(v1, v0[27] + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__featureFlagStateProvider, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[10] = &type metadata for AAFeatureFlags;
  v4 = sub_10015B62C();
  *(v0 + 56) = 6;
  v0[11] = v4;
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v5 = v0[27];
  if (v3)
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[34];
    (*(v7 + 16))(v6, v5 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider, v8);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v6, v8);
    v9 = *sub_1000080F8(v0 + 17, v0[20]);
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_10029F8C0;

    return sub_1002A4C4C();
  }

  else
  {
    v13 = v0[38];
    v12 = v0[39];
    v14 = v0[37];
    (*(v13 + 16))(v12, v5 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__escrowRecordViabilityProvider, v14);
    Dependency.wrappedValue.getter();
    (*(v13 + 8))(v12, v14);
    v15 = *sub_1000080F8(v0 + 12, v0[15]);
    v16 = swift_task_alloc();
    v0[43] = v16;
    *v16 = v0;
    v16[1] = sub_10029F338;
    v17 = v0[28];

    return sub_100287260(v17);
  }
}

uint64_t sub_10029F338(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_10029F67C;
  }

  else
  {
    v5 = sub_10029F44C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10029F44C()
{
  v14 = v0;
  sub_10000839C(v0 + 12);
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[44];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v13);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - EscrowRecordViability State %lu", v5, 0x16u);
    sub_10000839C(v6);
  }

  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  (*(v8 + 16))(v7, v0[27] + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider, v9);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  v10 = *sub_1000080F8(v0 + 17, v0[20]);
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_10029F8C0;

  return sub_1002A4C4C();
}

uint64_t sub_10029F67C()
{
  v20 = v0;
  sub_10000839C(v0 + 12);
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v19);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Error performing escrow record viability check: %@", v6, 0x16u);
    sub_100083380(v7);

    sub_10000839C(v8);
  }

  v10 = v0[45];
  v12 = v0[29];
  v11 = v0[30];
  swift_errorRetain();
  v12(v10);

  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[36];
  v16 = v0[33];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10029F8C0(char a1)
{
  v2 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10029F9C0, 0, 0);
}

uint64_t sub_10029F9C0()
{
  v20 = v0;
  v1 = *(v0 + 392);
  sub_10000839C((v0 + 136));
  if (v1 == 1)
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAB78);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v19);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s - Recovery Key mismatch detected", v5, 0xCu);
      sub_10000839C(v6);
    }

    v7 = *(v0 + 240);
    (*(v0 + 232))(0);
    v8 = *(v0 + 336);
    v9 = *(v0 + 312);
    v10 = *(v0 + 288);
    v11 = *(v0 + 264);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 248);
    (*(v15 + 16))(v14, *(v0 + 216) + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__walrusStateHandler, v16);
    Dependency.wrappedValue.getter();
    (*(v15 + 8))(v14, v16);
    v17 = *sub_1000080F8((v0 + 176), *(v0 + 200));
    v18 = swift_task_alloc();
    *(v0 + 376) = v18;
    *v18 = v0;
    v18[1] = sub_10029FC60;

    return sub_1002AE234();
  }
}

uint64_t sub_10029FC60()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_10029FE18;
  }

  else
  {
    v3 = sub_10029FD74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029FD74()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_10000839C(v0 + 22);
  v1(0);
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10029FE18()
{
  v1 = v0[48];
  v3 = v0[29];
  v2 = v0[30];
  sub_10000839C(v0 + 22);
  swift_errorRetain();
  v3(v1);

  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10029FED8()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - v5 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - trying to tear down existing state repair CFUs.", v10, 0xCu);
    sub_10000839C(v11);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  sub_100260D64();
  return sub_10000839C(v14);
}

uint64_t sub_1002A027C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryFactorsController;
  v6 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__deviceState;
  v8 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler;
  v10 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__accountStore;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__escrowRecordViabilityProvider;
  v14 = sub_100005814(&qword_1003E4960, qword_100347B68);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider;
  v16 = sub_100005814(&qword_1003E5AE8, qword_100348330);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__walrusStateHandler;
  v18 = sub_100005814(&qword_1003E5AE0, &qword_100348328);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__urlBagProvider;
  v20 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__featureFlagStateProvider;
  v22 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  return v0;
}

uint64_t sub_1002A05E0()
{
  sub_1002A027C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDPAndADPChecks()
{
  result = qword_1003E57B8;
  if (!qword_1003E57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A068C()
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
        if (v7 <= 0x3F)
        {
          v25 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
          if (v9 <= 0x3F)
          {
            v26 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
            if (v11 <= 0x3F)
            {
              v27 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &qword_1003E46A0, &qword_1003E03E8, &qword_100343DC8);
              if (v13 <= 0x3F)
              {
                v28 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &qword_1003E57C8, &qword_1003E03D8, &qword_100343DB8);
                if (v15 <= 0x3F)
                {
                  v29 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, &unk_1003E57D0, &qword_1003E03D0, &qword_100343DB0);
                  if (v17 <= 0x3F)
                  {
                    v30 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
                    if (v19 <= 0x3F)
                    {
                      v31 = *(v18 - 8) + 64;
                      sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
                      if (v21 <= 0x3F)
                      {
                        v32 = *(v20 - 8) + 64;
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

uint64_t sub_1002A0A78()
{
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF5B0, &qword_100343688);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E8, &qword_100343DC8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03D8, &qword_100343DB8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03D0, &qword_100343DB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E0, &qword_100343DC0);
  Dependency.init(dependencyId:config:)();
  return v0;
}

uint64_t sub_1002A0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return _swift_task_switch(sub_1002A0CFC, 0, 0);
}

uint64_t sub_1002A0CFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_100005814(&unk_1003E1090, &qword_100344600);
  *v6 = v0;
  v6[1] = sub_1002A0E10;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x8000000100332F10, sub_1002A0F40, v3, v7);
}

uint64_t sub_1002A0E10()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1002A0F28, 0, 0);
}

uint64_t sub_1002A0F4C()
{
  v1 = sub_100005814(&qword_1003E5AD8, &qword_100348310);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002A0FE0()
{
  v0 = *(*(sub_100005814(&qword_1003E5AD8, &qword_100348310) - 8) + 80);

  return sub_10029DCC8();
}

uint64_t sub_1002A1060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002A10B8(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000082A8;

  return sub_10029EEAC(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1002A11AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A11E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1002A1248(int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v36 = a1;
  v33 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v9 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100008D04(v32, qword_1003FAB78);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v36 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "isWalrusStatusMismatchDetectionEnabled: %{BOOL}d", v16, 8u);
  }

  (*(v10 + 16))(v13, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v17 = *sub_1000080F8(v37, v37[3]);
  v18 = sub_10013B354();
  sub_10000839C(v37);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "isWalrusStatusMismatched: %{BOOL}d", v21, 8u);
  }

  v22 = v18 & v36;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  if (v22)
  {
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Found mismatch in CombinedWalrusStatus. Posting adpStateHealing CFU", v26, 2u);
    }

    v27 = v33;
    (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v33);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v27);
    sub_100260F04(4u, 0);
  }

  else
  {
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No mismatch found in CombinedWalrusStatus. Tearing down adpStateHealing CFU, if posted already.", v29, 2u);
    }

    v30 = v33;
    (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v33);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v30);
    sub_100261308();
  }

  sub_10000839C(v37);
  return v35(0);
}

uint64_t sub_1002A18BC()
{
  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10003A9C0();
  _BridgedStoredNSError.init(_:userInfo:)();
  return v1;
}

uint64_t sub_1002A19B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v3)
  {
    v5 = "ck";
  }

  else
  {
    v5 = "ownerSetupGracePeriodInSeconds";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v7 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v8 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v8 = "ck";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_1002A1A64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1AE4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002A1B50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1BCC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3C18, *a1);

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

void sub_1002A1C2C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v1)
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1002A1C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x436B63754C657270;
  v4 = 0xEC00000072656568;
  if (v2 != 1)
  {
    v3 = 0x656568436B63756CLL;
    v4 = 0xE900000000000072;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x436B63754C657270;
  v8 = 0xEC00000072656568;
  if (*a2 != 1)
  {
    v7 = 0x656568436B63756CLL;
    v8 = 0xE900000000000072;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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

Swift::Int sub_1002A1D88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1E38()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002A1ED4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A1F80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A3A34(*a1);
  *a2 = result;
  return result;
}

void sub_1002A1FB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000072656568;
  v5 = 0x436B63754C657270;
  if (v2 != 1)
  {
    v5 = 0x656568436B63756CLL;
    v4 = 0xE900000000000072;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL sub_1002A201C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1002A206C(char a1, uint64_t a2)
{
  sub_1002A32B4();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user) = a1 & 1;
  sub_1002A35EC(a2, &v6);
  if (v7)
  {
    sub_1002A365C(a2);
    sub_10003E950(&v6, &v8);
  }

  else
  {
    v9 = &type metadata for DateProvider;
    v10 = &off_1003B2060;
    sub_1002A365C(a2);
    if (v7)
    {
      sub_1002A365C(&v6);
    }
  }

  sub_10003E950(&v8, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_dateProvider);
  return v2;
}

uint64_t sub_1002A217C()
{
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v1 = 0xD000000000000022;
  }

  else
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v2 = "ck";
  }

  v3 = sub_1002A25A0(v1, v2 | 0x8000000000000000);
  v5 = v4;

  if (v5)
  {
    *&result = 0.0;
  }

  else
  {
    v7 = sub_1002A25A0(0xD000000000000020, 0x8000000100332FF0);
    if (v8)
    {
      v7 = 4.0;
    }

    *&result = v7 * v3;
  }

  return result;
}

uint64_t sub_1002A2248(char a1)
{
  if (a1 == 2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stale setup tear-down enabled because setup version is LuckCheer+", v4, 2u);
    }

    return 1;
  }

  else
  {
    v6 = sub_1002A25A0(0xD000000000000030, 0x8000000100332FB0);
    if (v7)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100008D04(v8, qword_1003FAAB8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Stale setup tear-down disabled because setup version is pre-LuckCheer, probability: nil", v11, 2u);
      }

      return 0;
    }

    else
    {
      v12 = v6 / 100.0;
      sub_1002A33CC(v6, 0.0, 1.0);
      v14 = v13;
      v15 = v13 <= v12;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008D04(v16, qword_1003FAAB8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136315394;
        if (v14 > v12)
        {
          v21 = 0x64656C6261736964;
        }

        else
        {
          v21 = 0x64656C62616E65;
        }

        if (v14 > v12)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE700000000000000;
        }

        v23 = sub_10021145C(v21, v22, &v24);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v17, v18, "Stale setup tear-down %s because setup version is pre-LuckCheer, probability: %f", v19, 0x16u);
        sub_10000839C(v20);
      }

      return v15;
    }
  }
}

id sub_1002A25A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = sub_100005814(&qword_1003E5BE8, &qword_100348460);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  if ([objc_opt_self() isInternalBuild])
  {
    v15 = *(v11 + 16);
    v61 = v2;
    v15(v14, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__defaults, v10);
    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v14, v10);
    v16 = v64[0];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 integerForKey:v17];

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v62 = a1;
    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v18;
      v24 = a2;
      v25 = swift_slowAlloc();
      v64[0] = v25;
      *v22 = 136315394;
      *(v22 + 4) = sub_10021145C(v62, v24, v64);
      *(v22 + 12) = 2048;
      *(v22 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v20, v21, "🔔 Internal build: %s override is set to: %ld", v22, 0x16u);
      sub_10000839C(v25);
      a2 = v24;
      v18 = v23;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    if (v18 >= 1)
    {
      v29 = v62;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v64[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10021145C(v29, a2, v64);
        _os_log_impl(&_mh_execute_header, v26, v27, "Internal build: using %s override", v30, 0xCu);
        sub_10000839C(v31);
      }

      return v18;
    }

    a1 = v62;
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10021145C(a1, a2, v64);
      _os_log_impl(&_mh_execute_header, v26, v27, "Internal build: %s doesn't have override, checking in url bag", v32, 0xCu);
      sub_10000839C(v33);
    }

    v2 = v61;
  }

  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__urlBag, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v35 = result;
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 configurationAtKey:v36];

    if (!v37 || (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100005814(&qword_1003DBB88, &qword_10033FC30), (swift_dynamicCast() & 1) == 0))
    {
      sub_10000839C(v64);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100008D04(v41, qword_1003FAAB8);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v64[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_10021145C(0x6169646F74737563, 0xEF3256736766436ELL, v64);
        _os_log_impl(&_mh_execute_header, v42, v43, "Couldn't find configuration container at %s in the url bag", v44, 0xCu);
        sub_10000839C(v45);
      }

      return 0;
    }

    v38 = v63[0];
    sub_10000839C(v64);
    v63[0] = a1;
    v63[1] = a2;

    AnyHashable.init<A>(_:)();
    if (*(v38 + 16) && (v39 = sub_10031B060(v64), (v40 & 1) != 0))
    {
      sub_10000DB1C(*(v38 + 56) + 32 * v39, v65);
      sub_1000526B0(v64);
      if (swift_dynamicCast())
      {

        v18 = v63[0];
        if (v63[0] > 0)
        {
          return v18;
        }

        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100008D04(v55, qword_1003FAAB8);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v64[0] = v59;
          *v58 = 136315394;
          *(v58 + 4) = sub_10021145C(a1, a2, v64);
          *(v58 + 12) = 2048;
          *(v58 + 14) = v18;
          _os_log_impl(&_mh_execute_header, v56, v57, "%s is 0 or negative in the url bag: %ld", v58, 0x16u);
          sub_10000839C(v59);
        }

        return 0;
      }
    }

    else
    {
      sub_1000526B0(v64);
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAB8);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_10021145C(a1, a2, v63);
      *(v49 + 12) = 2080;
      *&v65[0] = a1;
      *(&v65[0] + 1) = a2;

      AnyHashable.init<A>(_:)();
      if (*(v38 + 16) && (v50 = sub_10031B060(v64), (v51 & 1) != 0))
      {
        sub_10000DB1C(*(v38 + 56) + 32 * v50, v65);
        sub_1000526B0(v64);
      }

      else
      {

        sub_1000526B0(v64);
        memset(v65, 0, sizeof(v65));
      }

      sub_100005814(&qword_1003D87C8, qword_100344800);
      v52 = String.init<A>(describing:)();
      v54 = sub_10021145C(v52, v53, v63);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Couldn't find configuration value at %s in the url bag, %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A3024()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__defaults;
  v2 = sub_100005814(&qword_1003E5BE8, &qword_100348460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__urlBag;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_dateProvider));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadinessCheckGracePeriodEvaluator()
{
  result = qword_1003E5B38;
  if (!qword_1003E5B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A317C()
{
  sub_1002A325C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002A3300();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002A325C()
{
  if (!qword_1003E5B48)
  {
    sub_1002A32B4();
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E5B48);
    }
  }
}

unint64_t sub_1002A32B4()
{
  result = qword_1003DF5F8;
  if (!qword_1003DF5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF5F8);
  }

  return result;
}

void sub_1002A3300()
{
  if (!qword_1003DB6F0)
  {
    sub_100008CBC(&qword_1003D7FD0, &unk_10033FB30);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB6F0);
    }
  }
}

unint64_t sub_1002A3378()
{
  result = qword_1003E5BE0;
  if (!qword_1003E5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E5BE0);
  }

  return result;
}

uint64_t sub_1002A33CC(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_1002A33CC(v6, a2, a3);
  }

  return result;
}

BOOL sub_1002A3470(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x436B63754C657270;
    }

    else
    {
      v5 = 0x656568436B63756CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000072656568;
    }

    else
    {
      v6 = 0xE900000000000072;
    }

    v7 = a2;
    if (a2)
    {
LABEL_9:
      if (v7 == 1)
      {
        v8 = 0x436B63754C657270;
      }

      else
      {
        v8 = 0x656568436B63756CLL;
      }

      if (v7 == 1)
      {
        v9 = 0xEC00000072656568;
      }

      else
      {
        v9 = 0xE900000000000072;
      }

      if (v5 != v8)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
    v7 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v9 = 0xE700000000000000;
  if (v5 != 0x6E776F6E6B6E75)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v6 == v9)
  {

    goto LABEL_22;
  }

LABEL_21:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_22:
  if (v3 != 2)
  {
    return v2 != 2 && ((v2 ^ v3) & 1) == 0;
  }

  return v2 == 2;
}

uint64_t sub_1002A35EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E5BF0, &qword_100348468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A365C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E5BF0, &qword_100348468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory.Age(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory.Age(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002A3828(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002A3844(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1002A39E0()
{
  result = qword_1003E5BF8;
  if (!qword_1003E5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E5BF8);
  }

  return result;
}

unint64_t sub_1002A3A34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3C68, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002A3A80(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v17;
  v21[4] = v19;
  v22 = v20;

  sub_1002A41CC(sub_1002A4B6C, v21);

  dispatch_group_enter(v22);
  (*(v13 + 16))(v16, v2 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v23 = *sub_1000080F8(aBlock, v49);
  v24 = v22;

  sub_10013DF88(v23, v18, v24);

  sub_10000839C(aBlock);
  sub_100071C74();
  v26 = v37;
  v25 = v38;
  (*(v37 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v38);
  v36 = static OS_dispatch_queue.global(qos:)();
  (*(v26 + 8))(v11, v25);
  v27 = swift_allocObject();
  v28 = v40;
  v29 = v41;
  v27[2] = v19;
  v27[3] = v28;
  v27[4] = v29;
  v27[5] = v17;
  v27[6] = v18;
  v50 = sub_1002A4BCC;
  v51 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v49 = &unk_1003B2448;
  v30 = _Block_copy(aBlock);

  v31 = v39;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_1002A4BF4();
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v33 = v42;
  v32 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v36;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v30);

  (*(v46 + 8))(v33, v32);
  (*(v44 + 8))(v31, v45);
}

void sub_1002A3FF4(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a5 + 16);
    *(a5 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = a1 & 1;
  }

  dispatch_group_leave(a3);
}

void sub_1002A4088(char a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_1002A40E0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_errorRetain();
    a2(v9, 1);
  }

  swift_beginAccess();
  if (*(a4 + 16))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  swift_beginAccess();
  if (*(a5 + 16))
  {
    v12 = 4;
LABEL_10:
    v11 |= v12;
    return (a2)(v11, 0);
  }

  if ((v11 & 1) == 0)
  {
    v12 = 1;
    goto LABEL_10;
  }

  return (a2)(v11, 0);
}

uint64_t sub_1002A41CC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v32 = type metadata accessor for URL();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  (*(v16 + 16))(&v29 - v18, v2 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianStorage, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  v20 = sub_1000080F8(v34, v34[3]);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = v22;
  v23 = sub_1000080F8((*v20 + 16), *(*v20 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v24 = *(v8 + 8);
  v25 = v12;
  v26 = v32;
  v24(v25, v32);
  (*(v4 + 16))(v7, *v23 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v27 = *sub_1000080F8(v33, v33[3]);
  sub_1000324D8(v14, sub_1002A4AD0, v21);

  v24(v14, v26);
  sub_10000839C(v33);
  return sub_10000839C(v34);
}

uint64_t sub_1002A4558(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for CustodianRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a1;
    v12 = 1;
  }

  else
  {
    v13 = 0;
    v14 = *(a1 + 16);
    while (v14 != v13)
    {
      sub_100012050(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13++, v10);
      v15 = *&v10[*(v6 + 36)];
      sub_1000120B4(v10);
      if (v15 == 2)
      {
        v11 = 1;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_1002A4694()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianFetcher;
  v4 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecoveryFactorsController()
{
  result = qword_1003E5C40;
  if (!qword_1003E5C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A4828()
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003D9A48, &unk_1003D9A50, qword_100343CC0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002A4974()
{
  v1 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-1] - v4;
  (*(v2 + 16))(&v9[-1] - v4, *v0 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  v6 = *sub_1000080F8(v9, v9[3]);
  LOBYTE(v1) = sub_10013BBD4();
  sub_10000839C(v9);
  return v1 & 1;
}

uint64_t sub_1002A4A98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002A4AEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A4B24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002A4B7C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002A4BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002A4BF4()
{
  result = qword_1003D9120;
  if (!qword_1003D9120)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9120);
  }

  return result;
}

uint64_t sub_1002A4C4C()
{
  v1[18] = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002A4D80, 0, 0);
}

uint64_t sub_1002A4D80()
{
  v24 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(v2 + 16))(v1, *(v0 + 144) + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 64), *(v0 + 88));
  type metadata accessor for RecoveryFactorsController();
  LOBYTE(v1) = sub_1002A4974();
  *(v0 + 57) = v1 & 1;
  sub_10000839C((v0 + 64));
  if (v1)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    (*(v5 + 16))(v4, *(v0 + 144) + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    v7 = sub_1000080F8((v0 + 104), *(v0 + 128));
    v8 = AAFollowUpIdentifierRecoveryKeyMismatch;
    v9 = sub_1003090E8(_swiftEmptyArrayStorage);
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    v10 = *v7;
    sub_1002D3AB8(v0 + 16);

    sub_10000839C((v0 + 104));
    v11 = *(v0 + 57);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);

    v14 = *(v0 + 8);

    return v14((v11 & 1) == 0);
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
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - RK Mismatch exists, proceeding to post RK Mismatch Repair CFU.", v19, 0xCu);
      sub_10000839C(v20);
    }

    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_1002A5108;
    v22 = *(v0 + 144);

    return sub_1002A5244();
  }
}

uint64_t sub_1002A5108()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;

  v4 = *(v1 + 57);
  v5 = *(v1 + 192);
  v6 = *(v1 + 168);

  v7 = *(v3 + 8);

  return v7((v4 & 1) == 0);
}

uint64_t sub_1002A5244()
{
  v1[25] = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for TrustedContactUserNotification();
  v1[29] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v1[31] = v7;
  v8 = *(v7 - 8);
  v1[32] = v8;
  v9 = *(v8 + 64) + 15;
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002A53D4, 0, 0);
}

uint64_t sub_1002A53D4()
{
  v11 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - recovery key mismatch found, posting CFU to verify RK", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1002A561C;
  v8 = v0[25];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 57, 0, 0, 0xD00000000000001BLL, 0x8000000100333080, sub_1002A634C, v8, &type metadata for Bool);
}

uint64_t sub_1002A561C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1002A5BF0;
  }

  else
  {
    v3 = sub_1002A575C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A575C()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);
  *(v0 + 58) = *(v0 + 57);
  v5 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  *(v0 + 296) = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  v6 = *(v2 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = *sub_1000080F8((v0 + 64), *(v0 + 88));
  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_1002A58A8;

  return sub_10013BFB0();
}

uint64_t sub_1002A58A8(char a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 59) = a1;

  return _swift_task_switch(sub_1002A59D4, 0, 0);
}

uint64_t sub_1002A59D4()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 200);
  sub_10000839C((v0 + 64));
  v4(v6, v8 + v5, v7);
  Dependency.wrappedValue.getter();
  v2(v6, v7);
  v9 = *(*sub_1000080F8((v0 + 104), *(v0 + 128)) + 16);
  *(v0 + 192) = 0;
  v10 = [v9 walrusStatus:v0 + 192];
  if (*(v0 + 192))
  {
    swift_willThrow();
    v11 = 0;
  }

  else
  {
    v11 = v10 == 1;
  }

  v12 = *(v0 + 59);
  v13 = *(v0 + 58);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  *v15 = v11;
  v15[1] = v13;
  v15[2] = v12;
  swift_storeEnumTagMultiPayload();
  sub_10000839C((v0 + 104));
  (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v20 = sub_1000080F8((v0 + 144), *(v0 + 168));
  sub_1002CA150((v0 + 16));
  v21 = *v20;
  sub_1002D2E28(v0 + 16, 0, 0);
  sub_1000C5460(v0 + 16);
  sub_1002A6354(v15);
  sub_10000839C((v0 + 144));
  v22 = *(v0 + 264);
  v23 = *(v0 + 240);
  v24 = *(v0 + 224);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1002A5BF0()
{
  v17 = v0;
  v1 = v0[36];
  v2 = v0[34];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v6 = v0[36];
    *(v5 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v16);
    *(v5 + 12) = 2080;
    v0[23] = v6;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v7 = String.init<A>(describing:)();
    v9 = sub_10021145C(v7, v8, &v16);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - failed to fetch healthy recovery contact status: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = v0[36];
  }

  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[28];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002A5E2C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController;
  v2 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecoveryKeyStateProvider()
{
  result = qword_1003E5DC8;
  if (!qword_1003E5DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A5FC0()
{
  sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002A610C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - v7;
  v9 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20[-1] - v12;
  (*(v10 + 16))(&v20[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v14 = sub_1000080F8(v20, v20[3]);
  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v8, v4);
  v17 = *v14;
  sub_1002A41CC(sub_100015F50, v16);

  return sub_10000839C(v20);
}

uint64_t sub_1002A6354(uint64_t a1)
{
  v2 = type metadata accessor for TrustedContactUserNotification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002A63B0()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002A6444()
{
  type metadata accessor for TrustedContactsAwarenessSync();
  sub_100005814(&unk_1003E5FE0, &unk_100348730);
  result = String.init<A>(describing:)();
  qword_1003E5EF8 = result;
  unk_1003E5F00 = v1;
  return result;
}

uint64_t sub_1002A6498(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v34 - v16;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v21 = 136315394;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v34);
      *(v21 + 12) = 2080;
      v34[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, v34);

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - error fetching manatee status: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    return a3(a1);
  }

  else if (a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v34);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - updating Trusted Contacts Awareness on account", v29, 0xCu);
      sub_10000839C(v30);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v31 = swift_allocObject();
      v31[2] = a5;
      v31[3] = a3;
      v31[4] = a4;
      v31[5] = a6;

      sub_1002A6E2C(sub_1002A8590, v31);
    }
  }

  else
  {
    v32 = v15;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v13 + 16))(v17, result + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore, v32);
      Dependency.wrappedValue.getter();

      (*(v13 + 8))(v17, v32);
      v33 = *sub_1000080F8(v34, v34[3]);
      sub_10015BD58(0, 0, a3, a4);
      return sub_10000839C(v34);
    }
  }

  return result;
}

uint64_t sub_1002A698C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v17 = 136315394;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v17 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v31);
      *(v17 + 12) = 2080;
      v31[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, v31);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - error fetching trusted contacts on cloud - %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    return a4(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v30 = a4;
      v25 = a5;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136315650;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v31);
      *(v26 + 12) = 2048;
      *(v26 + 14) = a1;
      *(v26 + 22) = 2048;
      *(v26 + 24) = BYTE1(a1);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - account state: \n\nCustodianAssignee - %ld\n\nBeneficiaryAssignee - %ld", v26, 0x20u);
      sub_10000839C(v27);

      a5 = v25;
      a4 = v30;
    }

    else
    {
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v10 + 16))(v13, result + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore, v9);
      Dependency.wrappedValue.getter();

      (*(v10 + 8))(v13, v9);
      v28 = *sub_1000080F8(v31, v31[3]);
      sub_10015BD58(a1, BYTE1(a1), a4, a5);
      return sub_10000839C(v31);
    }
  }

  return result;
}

uint64_t sub_1002A6E2C(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v3 = *v2;
  v86 = v2;
  v87 = v3;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v81 - 8);
  v4 = *(v84 + 64);
  __chkstk_darwin(v81);
  v80 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS.QoSClass();
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v66 - v12;
  v70 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v70);
  v16 = &v66 - v15;
  v69 = type metadata accessor for URL();
  v68 = *(v69 - 8);
  v17 = *(v68 + 64);
  v18 = __chkstk_darwin(v69);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v66 - v21;
  v23 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v66 - v26;
  v28 = dispatch_group_create();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  dispatch_group_enter(v28);
  (*(v24 + 16))(v27, v86 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__custodianStorage, v23);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v27, v23);
  v32 = sub_1000080F8(aBlock, v89);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v31;
  v85 = v31;
  v67 = v30;
  v34 = v87;
  v33[4] = v30;
  v33[5] = v34;
  v35 = sub_1000080F8((*v32 + 16), *(*v32 + 40));
  type metadata accessor for LocalCache();
  v36 = v28;

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v37 = *(v68 + 8);
  v38 = v20;
  v39 = v69;
  v37(v38, v69);
  v40 = *v35 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v41 = v70;
  (*(v13 + 16))(v16, v40, v70);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v41);
  v42 = *sub_1000080F8(v92, v92[3]);
  sub_1000328BC(v22, sub_1002A85F4, v33);

  v37(v22, v39);
  sub_10000839C(v92);
  sub_10000839C(aBlock);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  dispatch_group_enter(v36);
  v44 = v72;
  v45 = v71;
  v46 = v73;
  (*(v72 + 16))(v71, v86 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage, v73);
  Dependency.wrappedValue.getter();
  (*(v44 + 8))(v45, v46);
  v47 = sub_1000080F8(aBlock, v89);
  v48 = swift_allocObject();
  v48[2] = v36;
  v48[3] = v43;
  v49 = v67;
  v50 = v87;
  v48[4] = v67;
  v48[5] = v50;
  v51 = *v47;
  v52 = v36;

  sub_10021AD90(sub_1002A8654, v48);

  sub_10000839C(aBlock);
  sub_100071C74();
  v53 = v75;
  v54 = v74;
  v55 = v76;
  (*(v75 + 104))(v74, enum case for DispatchQoS.QoSClass.default(_:), v76);
  v56 = static OS_dispatch_queue.global(qos:)();
  (*(v53 + 8))(v54, v55);
  v57 = swift_allocObject();
  v58 = v78;
  v59 = v79;
  v57[2] = v49;
  v57[3] = v58;
  v60 = v85;
  v57[4] = v59;
  v57[5] = v60;
  v57[6] = v43;
  v90 = sub_1002A86D4;
  v91 = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v89 = &unk_1003B2618;
  v61 = _Block_copy(aBlock);

  v62 = v77;
  static DispatchQoS.unspecified.getter();
  v92[0] = _swiftEmptyArrayStorage;
  sub_1002A4BF4();
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v64 = v80;
  v63 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v61);

  (*(v84 + 8))(v64, v63);
  (*(v82 + 8))(v62, v83);
}

uint64_t sub_1002A778C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsAwarenessSync()
{
  result = qword_1003E5F48;
  if (!qword_1003E5F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A7920()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002A7A98(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v35 - v16;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, &v38);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - failed to fetch custodianship List", v21, 0xCu);
      sub_10000839C(v22);
    }

    swift_beginAccess();
    v23 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  else
  {
    v36 = a4;
    v37 = a3;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v26 = *(v15 + 72);
      v27 = a1 + v25;
      v28 = _swiftEmptyArrayStorage;
      do
      {
        sub_1002A86FC(v27, v17, type metadata accessor for CustodianshipInfoRecord);
        if (*&v17[*(v10 + 28)] == 2)
        {
          sub_1002A87C4(v17, v14, type metadata accessor for CustodianshipInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0244(0, v28[2] + 1, 1);
            v28 = v38;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            sub_1002E0244(v30 > 1, v31 + 1, 1);
            v28 = v38;
          }

          v28[2] = v31 + 1;
          sub_1002A87C4(v14, v28 + v25 + v31 * v26, type metadata accessor for CustodianshipInfoRecord);
        }

        else
        {
          sub_1002A8764(v17, type metadata accessor for CustodianshipInfoRecord);
        }

        v27 += v26;
        --v24;
      }

      while (v24);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    v32 = v28[2];

    if (v32)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v34 = v36;
    swift_beginAccess();
    *(v34 + 16) = v33;
    a3 = v37;
  }

  dispatch_group_leave(a3);
}

void sub_1002A7E5C(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v35 - v16;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, &v38);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - failed to fetch benefactors List", v21, 0xCu);
      sub_10000839C(v22);
    }

    swift_beginAccess();
    v23 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  else
  {
    v36 = a4;
    v37 = a3;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v26 = *(v15 + 72);
      v27 = a1 + v25;
      v28 = _swiftEmptyArrayStorage;
      do
      {
        sub_1002A86FC(v27, v17, type metadata accessor for BenefactorInfoRecord);
        if (*&v17[*(v10 + 24)] == 2)
        {
          sub_1002A87C4(v17, v14, type metadata accessor for BenefactorInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E047C(0, v28[2] + 1, 1);
            v28 = v38;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            sub_1002E047C(v30 > 1, v31 + 1, 1);
            v28 = v38;
          }

          v28[2] = v31 + 1;
          sub_1002A87C4(v14, v28 + v25 + v31 * v26, type metadata accessor for BenefactorInfoRecord);
        }

        else
        {
          sub_1002A8764(v17, type metadata accessor for BenefactorInfoRecord);
        }

        v27 += v26;
        --v24;
      }

      while (v24);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    v32 = v28[2];

    if (v32)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v34 = v36;
    swift_beginAccess();
    *(v34 + 16) = v33;
    a3 = v37;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1002A8220(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_errorRetain();
    a2(v9, 1);
  }

  else
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    swift_beginAccess();
    return (a2)(v11 | (*(a5 + 16) << 8), 0);
  }
}

uint64_t sub_1002A82E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18[-1] - v10;
  (*(v8 + 16))(&v18[-1] - v10, v3 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = sub_1000080F8(v18, v18[3]);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  v14[5] = v6;
  v15 = *v12;

  sub_10021E8F0(sub_1002A8538, v14);

  return sub_10000839C(v18);
}

uint64_t sub_1002A84C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A84F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A8550()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A85A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A860C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A8684()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002A86E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A86FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A8764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A87C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1002A8834()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1003E5FF0 = result;
  return result;
}

uint64_t sub_1002A8868()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003E6000 = result;
  return result;
}

void sub_1002A8ACC(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v2);
    Dependency.wrappedValue.getter();
    (*(v3 + 8))(v6, v2);
    v8 = [*(*sub_1000080F8(v20 v20[3]) + 16)];
    if (v8)
    {

      sub_10000839C(v20);
      v9 = [objc_opt_self() lock];
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a1;
      v11 = v9;

      sub_1002A8E48(1, sub_1002AC7DC, v10);
    }

    else
    {
      sub_10000839C(v20);
      sub_10030FF34();
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
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No account signed in. Skipping CPR.", v19, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Lost reference to self. Aborting Trusted Contacts Preflight XPC activity", v15, 2u);
    }
  }
}

uint64_t sub_1002A8E48(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (qword_1003D7E78 != -1)
  {
    swift_once();
  }

  v8 = qword_1003E6000;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1 & 1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002ACD48;
  *(v10 + 24) = v9;
  v14[4] = sub_1002ACED0;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10030F718;
  v14[3] = &unk_1003B2908;
  v11 = _Block_copy(v14);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1002A9020(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_1003E5FF8)
  {
    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    swift_beginAccess();
    v7 = off_1003E6008;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    off_1003E6008 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100306534(0, v7[2] + 1, 1, v7);
      off_1003E6008 = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_100306534((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_1002ACED4;
    v11[5] = v6;
    off_1003E6008 = v7;
    swift_endAccess();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "❌ Skipping concurrent preflight as another preflight is already in progress.", v15, 2u);
    }
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2 & 1;
    v19 = type metadata accessor for AsyncOperation();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v21 = &v20[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v21 = sub_1002ACD94;
    v21[1] = v18;
    v30.receiver = v20;
    v30.super_class = v19;

    v22 = objc_msgSendSuper2(&v30, "init");
    v23 = qword_1003E5FF8;
    qword_1003E5FF8 = v22;
    v13 = v22;

    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    swift_beginAccess();
    v25 = off_1003E6008;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    off_1003E6008 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_100306534(0, v25[2] + 1, 1, v25);
      off_1003E6008 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_100306534((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1002ACDD8;
    v29[5] = v24;
    off_1003E6008 = v25;
    swift_endAccess();
    if (qword_1003D7E70 != -1)
    {
      swift_once();
    }

    [qword_1003E5FF0 addOperation:v13];
  }
}

uint64_t sub_1002A9414(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v36 = v18;
  v37 = v16;
  sub_1002AB924(v16);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = a4;
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    if (v19)
    {
      v25 = 0x656C756465686353;
    }

    else
    {
      v25 = 0x6E616D6544206E4FLL;
    }

    v26 = sub_10021145C(v25, 0xE900000000000064, v40);

    *(v23 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting to pull all cloud data before %s Trusted Contacts Preflight activity", v23, 0xCu);
    sub_10000839C(v24);
  }

  (*(v7 + 16))(v10, a3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__syncManager, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v27 = sub_1000080F8(v40, v40[3]);
  v28 = swift_allocObject();
  *(v28 + 16) = v19 & 1;
  v30 = v36;
  v29 = v37;
  *(v28 + 24) = a3;
  *(v28 + 32) = v29;
  v32 = v38;
  v31 = v39;
  *(v28 + 40) = v30;
  *(v28 + 48) = v31;
  *(v28 + 56) = v32;
  v33 = *v27;

  sub_1002E93B4(3, 1, sub_1002ACE50, v28);

  return sub_10000839C(v40);
}

uint64_t sub_1002A97B0(char a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315394;
    if (a2)
    {
      v18 = 0x656C756465686353;
    }

    else
    {
      v18 = 0x6E616D6544206E4FLL;
    }

    v28 = a1;
    v19 = a3;
    v20 = a7;
    v21 = a2;
    v22 = a6;
    v23 = a4;
    v24 = a5;
    v25 = sub_10021145C(v18, 0xE900000000000064, &v30);

    *(v17 + 4) = v25;
    a5 = v24;
    a4 = v23;
    a6 = v22;
    a2 = v21;
    a7 = v20;
    a3 = v19;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Completed pulling all cloud data before %s Trusted Contacts Preflight activity: %{BOOL}d", v17, 0x12u);
    sub_10000839C(v29);
  }

  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a6;
  v26[4] = a7;

  sub_1002A9F1C(a2 & 1, a4, a5, sub_1002ACEA4, v26);
}

uint64_t sub_1002A99FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Finished preflight.", v12, 2u);
  }

  return sub_1002A9B10(a1 & 1, a2, a4, a5);
}

uint64_t sub_1002A9B10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  if (qword_1003D7E78 != -1)
  {
    swift_once();
  }

  v10 = qword_1003E6000;
  v11 = swift_allocObject();
  *(v11 + 16) = a1 & 1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002ACCF8;
  *(v12 + 24) = v11;
  v16[4] = sub_1002ACED0;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10030F718;
  v16[3] = &unk_1003B2890;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A9CE0(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1003D7F48 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (qword_1003D7E80 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      *(v9 + 4) = *(off_1003E6008 + 2);
      _os_log_impl(&_mh_execute_header, v7, v8, "Handling Preflight completions. Count: %ld", v9, 0xCu);
    }

    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_1003E6008;
    off_1003E6008 = _swiftEmptyArrayStorage;
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v12 = 0;
    a1 &= 1u;
    v13 = v10 + 5;
    while (v12 < v10[2])
    {
      ++v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      v19 = a1;
      v18 = a2;

      v15(&v19, &v18);

      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_12:

  v16 = qword_1003E5FF8;
  qword_1003E5FF8 = 0;

  return a3();
}

uint64_t sub_1002A9F1C(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v84 = a4;
  v101 = a2;
  v102 = a3;
  LODWORD(v95) = a1;
  v91 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS.QoSClass();
  v82 = *(v83 - 8);
  v7 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v97 = *(v103 - 8);
  v9 = *(v97 + 64);
  __chkstk_darwin(v103);
  v96 = v80 - v10;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  v13 = *(v86 + 64);
  __chkstk_darwin(v88);
  v15 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = dispatch_group_create();
  v100 = swift_allocObject();
  *(v100 + 16) = &_swiftEmptyDictionarySingleton;
  v22 = sub_100071C74();
  v99 = "ivityProvider";
  (*(v17 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v85 = v15;
  v80[1] = v22;
  v98 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v99 = swift_allocObject();
  v99[16] = 0;
  v23 = v92;
  v24 = sub_1002ABF04();
  v25 = v97;
  v26 = v96;
  v27 = v103;
  (*(v97 + 16))(v96, v23 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsAccountModel, v103);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v26, v27);
  v28 = sub_1000080F8(&v111, v112);
  v29 = *v28;
  v30 = *(*v28 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10028B50C;
  *(v31 + 24) = v29;
  v109 = sub_100071DCC;
  v110 = v31;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_10030F718;
  v108 = &unk_1003B2700;
  v32 = _Block_copy(&aBlock);

  dispatch_sync(v30, v32);
  _Block_release(v32);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    v80[0] = v24;
    sub_10000839C(&v111);
    if (qword_1003D7F48 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v33 = type metadata accessor for Logger();
  v96 = sub_100008D04(v33, qword_1003FAAB8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v95;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136315138;
    if (v37)
    {
      v40 = 0x656C756465686353;
    }

    else
    {
      v40 = 0x6E616D6544206E4FLL;
    }

    v41 = sub_10021145C(v40, 0xE900000000000064, &aBlock);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Starting %s Trusted Contacts Preflight activities.", v38, 0xCu);
    sub_10000839C(v39);
  }

  v43 = *(v92 + 16);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = v43 + 32;
    LODWORD(v97) = v37 & 1;
    if (v37)
    {
      v46 = 0x656C756465686353;
    }

    else
    {
      v46 = 0x6E616D6544206E4FLL;
    }

    v94 = v46;
    *&v42 = 136315394;
    v93 = v42;
    v95 = v21;
    do
    {
      v103 = v44;
      sub_100040738(v45, &aBlock);
      dispatch_group_enter(v21);
      sub_100040738(&aBlock, &v111);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v58 = v93;
        v59 = sub_10021145C(v94, 0xE900000000000064, &v104);

        *(v58 + 4) = v59;
        *(v58 + 12) = 2080;
        sub_1000080F8(&v111, v112);
        swift_getDynamicType();
        v60 = _typeName(_:qualified:)();
        v62 = v61;
        sub_10000839C(&v111);
        v63 = sub_10021145C(v60, v62, &v104);

        *(v58 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v56, v57, "Starting %s Trusted Contacts Preflight activity - %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v111);
      }

      v47 = v108;
      v48 = v109;
      sub_1000080F8(&aBlock, v108);
      sub_100040738(&aBlock, &v111);
      v49 = swift_allocObject();
      *(v49 + 16) = v97;
      sub_10003E950(&v111, v49 + 24);
      v50 = v98;
      v51 = v99;
      v52 = v100;
      *(v49 + 64) = v98;
      *(v49 + 72) = v52;
      v21 = v95;
      *(v49 + 80) = v51;
      *(v49 + 88) = v21;
      v53 = *(v48 + 2);
      v54 = v50;

      v55 = v21;
      v53(v101, v102, sub_1002AC8D4, v49, v47, v48);

      sub_10000839C(&aBlock);
      v45 += 40;
      v44 = v103 - 1;
    }

    while (v103 != 1);
    v64 = v80[0];
    v65 = v97;
  }

  else
  {
    v65 = v37 & 1;
    v64 = v80[0];
  }

  v66 = v82;
  v67 = v81;
  v68 = v83;
  (*(v82 + 104))(v81, enum case for DispatchQoS.QoSClass.default(_:), v83);
  v103 = static OS_dispatch_queue.global(qos:)();
  (*(v66 + 8))(v67, v68);
  v69 = swift_allocObject();
  v71 = v98;
  v70 = v99;
  *(v69 + 16) = v98;
  *(v69 + 24) = v65;
  v72 = v92;
  *(v69 + 32) = v100;
  *(v69 + 40) = v72;
  v73 = v84;
  *(v69 + 48) = v64;
  *(v69 + 56) = v73;
  *(v69 + 64) = v87;
  *(v69 + 72) = v70;
  v109 = sub_1002AC948;
  v110 = v69;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_100031EF0;
  v108 = &unk_1003B2778;
  v74 = _Block_copy(&aBlock);
  v102 = v64;

  v101 = v71;

  v75 = v85;
  static DispatchQoS.unspecified.getter();
  *&v111 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v76 = v89;
  v77 = v91;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v78 = v103;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v74);

  (*(v90 + 8))(v76, v77);
  (*(v86 + 8))(v75, v88);
}

void sub_1002AABEC(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v68 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v63 = v23;
    v64 = v21;
    v66 = v20;
    v67 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v62 = a5;
    v65 = v17;
    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = v14;
      v28 = v27;
      v29 = swift_slowAlloc();
      v60 = a6;
      v30 = v29;
      v59 = swift_slowAlloc();
      *&v76[0] = v59;
      *v28 = 136315650;
      if (a2)
      {
        v31 = 0x656C756465686353;
      }

      else
      {
        v31 = 0x6E616D6544206E4FLL;
      }

      v32 = sub_10021145C(v31, 0xE900000000000064, v76);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_1000080F8(&aBlock, v73);
      swift_getDynamicType();
      v33 = _typeName(_:qualified:)();
      v35 = v34;
      sub_10000839C(&aBlock);
      v36 = sub_10021145C(v33, v35, v76);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2112;
      v37 = _convertErrorToNSError(_:)();
      *(v28 + 24) = v37;
      *v30 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s %s Trusted Contacts Preflight activity failed with error %@", v28, 0x20u);
      sub_100083380(v30);
      a6 = v60;

      swift_arrayDestroy();

      v14 = v61;
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v49 = a3[4];
    aBlock = DynamicType;
    v71 = v49;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v50 = String.init<A>(describing:)();
    v52 = v51;
    sub_100040738(a3, v76);
    v53 = swift_allocObject();
    v54 = v62;
    v53[2] = a1;
    v53[3] = v54;
    v53[4] = v50;
    v53[5] = v52;
    v53[6] = a6;
    sub_10003E950(v76, (v53 + 7));
    v74 = sub_100259C78;
    v75 = v53;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100031EF0;
    v73 = &unk_1003B2818;
    v55 = _Block_copy(&aBlock);
    swift_errorRetain();

    v56 = v63;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v57 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);

    (*(v14 + 8))(v57, v13);
    (*(v64 + 8))(v56, v66);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *&v76[0] = swift_slowAlloc();
      *v41 = 136315394;
      if (a2)
      {
        v42 = 0x656C756465686353;
      }

      else
      {
        v42 = 0x6E616D6544206E4FLL;
      }

      v43 = sub_10021145C(v42, 0xE900000000000064, v76);

      *(v41 + 4) = v43;
      *(v41 + 12) = 2080;
      sub_1000080F8(&aBlock, v73);
      swift_getDynamicType();
      v44 = _typeName(_:qualified:)();
      v46 = v45;
      sub_10000839C(&aBlock);
      v47 = sub_10021145C(v44, v46, v76);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s %s Trusted Contacts Preflight activity completed.", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v68);
}

uint64_t sub_1002AB358(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v28 = *(v19 - 8);
  v29 = v19;
  v20 = *(v28 + 64);
  __chkstk_darwin(v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a2 & 1;
  *(v23 + 24) = a3;
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
  *(v23 + 48) = a6;
  *(v23 + 56) = a7;
  *(v23 + 64) = a8;
  aBlock[4] = sub_1002ACA00;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B27C8;
  v24 = _Block_copy(aBlock);
  v25 = a5;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v30 + 8))(v18, v15);
  (*(v28 + 8))(v22, v29);
}

uint64_t sub_1002AB654(char a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
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
    v27 = a4;
    v15 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (a1)
    {
      v16 = 0x656C756465686353;
    }

    else
    {
      v16 = 0x6E616D6544206E4FLL;
    }

    v17 = sub_10021145C(v16, 0xE900000000000064, v28);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    swift_beginAccess();
    v18 = *(a2 + 16);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v19 = Dictionary.description.getter();
    v20 = a5;
    v22 = v21;

    v23 = sub_10021145C(v19, v22, v28);
    a5 = v20;

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Overall %s Trusted Contacts Preflight activities finished with errors: %s", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v27;
  }

  sub_1002ACA14(a4, 0);
  swift_beginAccess();
  v24 = *(a7 + 16);
  swift_beginAccess();
  v25 = *(a2 + 16);

  a5(v24, v25);
}

void sub_1002AB924(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  (*(v13 + 16))(&v39 - v15, v2 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v17 = [*(*sub_1000080F8(v42 v42[3]) + 16)];
  if (v17 && (v18 = v17, v19 = [v17 aa_altDSID], v18, v19))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v42);
    (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v20 = kAATrustedContactsPreflightBeginEvent;
    v21 = objc_opt_self();
    v22 = v20;

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();

    v25 = [v21 analyticsEventWithName:v22 altDSID:v23 flowID:v24];

    sub_10000839C(v42);
    if (v25)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      [v25 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAAB8);
      v28 = v25;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v25;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Reporting Preflight begin Event %@", v31, 0xCu);
        sub_100083380(v32);
      }

      v34 = v40;
      (*(v40 + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter, v3);
      Dependency.wrappedValue.getter();
      (*(v34 + 8))(v6, v3);
      [v42[0] sendEvent:v28];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_10000839C(v42);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAB8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Account is nil. Not reporting Preflight begin Event.", v38, 2u);
    }
  }
}

id sub_1002ABF04()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27[-1] - v5;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27[-1] - v10;
  (*(v8 + 16))(&v27[-1] - v10, v1 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v27);
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory, v2);
    Dependency.wrappedValue.getter();
    (*(v3 + 8))(v6, v2);
    v15 = kAATrustedContactsPreflightEndEvent;
    v16 = objc_opt_self();
    v17 = v15;

    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v20 = [v16 analyticsEventWithName:v17 altDSID:v18 flowID:v19];

    sub_10000839C(v27);
    return v20;
  }

  else
  {
    sub_10000839C(v27);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Account is nil. Not reporting Preflight end Event.", v25, 2u);
    }

    return 0;
  }
}

uint64_t sub_1002AC2C4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__storageController;
  v3 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsAccountModel;
  v5 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__syncManager;
  v9 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory;
  v11 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  v12 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsPreflightActivityProvider()
{
  result = qword_1003E6068;
  if (!qword_1003E6068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AC544()
{
  sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002AC79C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

BOOL sub_1002AC7DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 unlock];
  return sub_10030FF34();
}

uint64_t sub_1002AC80C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002AC864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002AC87C()
{
  sub_10000839C((v0 + 24));

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1002AC8E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1002AC960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AC9A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

void sub_1002ACA14(void *a1, void *a2)
{
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  if (a1)
  {
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    [a1 updateTaskResultWithError:a2];
  }

  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  swift_getObjectType();
  sub_100246FA8(a1);
  swift_unknownObjectRelease();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = a1;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Reporting Preflight end Event %@", v14, 0xCu);
    sub_100083380(v15);
  }
}

uint64_t sub_1002ACC68()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  sub_10000839C(v0 + 7);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1002ACCC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002ACCF8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return sub_1002A9CE0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1002ACD08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002ACD5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1002ACDA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002ACDD8(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1002ACE08()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002ACE64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002ACEEC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002AE048();
    v4 = type metadata accessor for TrustedContactsPreflightActivityProvider();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2B0, &unk_10033F430);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9A40, &unk_10033F180);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003D9810, &unk_10033EFC0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    if (qword_1003D7E70 != -1)
    {
      swift_once();
    }

    [qword_1003E5FF0 setMaxConcurrentOperationCount:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002AD0F8()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - v5;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduling Trusted Contacts preflight activity", v10, 2u);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler__xpcActivityScheduler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v11 = sub_1000080F8(v22, v22[3]);
  sub_1002ACEEC();
  v12 = *v11;
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  v23 = 1;
  v24 = xmmword_1003487B0;
  v25 = xmmword_1003487C0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = sub_100313A50(&v23, v13, v15, sub_1002AE228, v16);

  v18 = *(v12 + 16);
  *(v12 + 16) = v17;

  v19 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v20 = sub_10030F0FC("com.apple.appleaccountd.trustedContacts.preflight", 49, 2);
  sub_10031352C(v20, v19);

  return sub_10000839C(v22);
}

uint64_t sub_1002AD3FC(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x656C756465686353;
    }

    else
    {
      v11 = 0x6E616D6544206E4FLL;
    }

    v12 = sub_10021145C(v11, 0xE900000000000064, &v16);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting %s Trusted Contacts preflight activity", v9, 0xCu);
    sub_10000839C(v10);
  }

  sub_1002ACEEC();
  v13 = swift_allocObject();
  v14 = a1 & 1;
  *(v13 + 16) = v14;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;

  sub_1002A8E48(v14, sub_1002ADC48, v13);
}

void sub_1002AD5F8(uint64_t a1, uint64_t a2, char a3, void (*a4)(id))
{
  if (*(a2 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a2;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    v10 = v27;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v13 = 136315394;
      if (a3)
      {
        v16 = 0x656C756465686353;
      }

      else
      {
        v16 = 0x6E616D6544206E4FLL;
      }

      v17 = sub_10021145C(v16, 0xE900000000000064, &v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      v18 = _convertErrorToNSError(_:)();
      *(v13 + 14) = v18;
      *v14 = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Overall %s Trusted Contacts preflight activity failed: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);
    }

    v19 = v10;
    a4(v10);
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
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      if (a3)
      {
        v25 = 0x656C756465686353;
      }

      else
      {
        v25 = 0x6E616D6544206E4FLL;
      }

      v26 = sub_10021145C(v25, 0xE900000000000064, &v27);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Overall %s Trusted Contacts preflight activity completed successfully.", v23, 0xCu);
      sub_10000839C(v24);
    }

    a4(0);
  }
}

uint64_t sub_1002ADA18()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsPreflightScheduler()
{
  result = qword_1003E62E8;
  if (!qword_1003E62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002ADB24()
{
  sub_100260880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002ADC10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002ADC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DependencyRegistry.Entry();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E1198, &qword_100344650);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E03C0, &unk_100343DA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0400, &qword_100344870);
  Dependency.init(dependencyId:config:)();
  v9 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue;
  *(a2 + v9) = [objc_allocWithZone(NSOperationQueue) init];
  v10 = (a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
  v15[1] = type metadata accessor for InheritancePreflightHealthCheck();
  sub_100005814(&qword_1003E63F8, qword_100348878);
  *v10 = String.init<A>(describing:)();
  v10[1] = v11;
  *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) = a1;
  [*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue) setMaxConcurrentOperationCount:1];
  type metadata accessor for DependencyRegistry();
  v12 = sub_100016034(0, &unk_1003E6400, AAPreferences_ptr);
  v13 = [objc_allocWithZone(AAPreferences) init];
  v8[3] = v12;
  *v8 = v13;
  (*(v5 + 104))(v8, enum case for DependencyRegistry.Entry.exact(_:), v4);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  (*(v5 + 8))(v8, v4);
  return a2;
}

uint64_t sub_1002AE048()
{
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  v1 = type metadata accessor for CustodianPreflightHealthCheck();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v18 = &off_1003A7598;
  v19 = &off_1003A7510;
  v17 = v1;
  *&v16 = sub_1000A9560();
  v4 = type metadata accessor for CustodianPreflightHealthCheckSequoiaB();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();

  sub_100040600(&v16, (v7 + 16));
  *(v0 + 56) = v4;
  *(v0 + 64) = &off_1003A7AD0;
  *(v0 + 32) = v7;
  v8 = objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter());
  v9 = [v8 init];
  v10 = type metadata accessor for InheritancePreflightHealthCheck();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = sub_1002ADC54(v9, v13);
  *(v0 + 96) = v10;
  *(v0 + 104) = &off_1003ACF98;
  *(v0 + 72) = v14;
  return v0;
}

uint64_t sub_1002AE1F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002AE234()
{
  v1[31] = v0;
  v2 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v5 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v1[38] = v8;
  v9 = *(v8 - 8);
  v1[39] = v9;
  v10 = *(v9 + 64) + 15;
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE3FC, 0, 0);
}

uint64_t sub_1002AE3FC()
{
  v62 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  v5 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController;
  v6 = *(v2 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v1, v3);
  v8 = *(*sub_1000080F8((v0 + 64), *(v0 + 88)) + 16);
  *(v0 + 224) = 0;
  v9 = [v8 walrusStatus:v0 + 224];
  if (*(v0 + 224))
  {
    swift_willThrow();
    sub_10000839C((v0 + 64));
LABEL_18:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAB8);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61 = v39;
      *v38 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v61);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s - Walrus is disabled, skipping remaining checks", v38, 0xCu);
      sub_10000839C(v39);
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v42 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v61);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s - Also, tearing down any left over Walrus CFUs", v42, 0xCu);
      sub_10000839C(v43);
    }

    v44 = *(v0 + 248);
    sub_1002B03AC();
    sub_1002B0888();
    v45 = *(v0 + 320);
    v46 = *(v0 + 296);
    v47 = *(v0 + 272);

    v48 = *(v0 + 8);
LABEL_29:

    return v48();
  }

  v10 = v9;
  sub_10000839C((v0 + 64));
  if (v10 != 1)
  {
    goto LABEL_18;
  }

  v58 = v4;
  v11 = *(v0 + 296);
  v59 = *(v0 + 304);
  v60 = *(v0 + 320);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  (*(v12 + 16))(v11, *(v0 + 248) + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v13);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v11, v13);
  v14 = sub_1000080F8((v0 + 104), *(v0 + 128));
  v15 = AAFollowUpIdentifierADPUserMissingHealthyCustodian;
  v16 = sub_1003090E8(_swiftEmptyArrayStorage);
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0;
  v17 = *v14;
  sub_1002D3AB8(v0 + 16);

  sub_10000839C((v0 + 104));
  v6(v60, v58 + v5, v59);
  Dependency.wrappedValue.getter();
  v7(v60, v59);
  v18 = *sub_1000080F8((v0 + 144), *(v0 + 168));
  sub_10013B040();
  sub_10000839C((v0 + 144));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v61 = v23;
    *v22 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v61);
    _os_log_impl(&_mh_execute_header, v20, v21, "    %s - Walrus is enabled, proceeding     with checking for passcode presence and other recovery factors.", v22, 0xCu);
    sub_10000839C(v23);
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v26 = *(v0 + 256);
  (*(v24 + 16))(v25, *(v0 + 248) + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__deviceState, v26);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v25, v26);
  v27 = [objc_allocWithZone(AKDevice) init];
  LODWORD(v26) = [v27 isProtectedWithPasscode];

  sub_10000839C((v0 + 184));
  if (!v26)
  {
    v49 = *(v0 + 248);
    sub_1002AEF38();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v52 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v52 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v61);
      _os_log_impl(&_mh_execute_header, v50, v51, "    %s - No passcode.", v52, 0xCu);
      sub_10000839C(v53);
    }

    type metadata accessor for AAError(0);
    *(v0 + 240) = -4407;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = *(v0 + 232);
    swift_willThrow();
    v55 = *(v0 + 320);
    v56 = *(v0 + 296);
    v57 = *(v0 + 272);

    v48 = *(v0 + 8);
    goto LABEL_29;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v61 = v31;
    *v30 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v61);
    _os_log_impl(&_mh_execute_header, v28, v29, "    %s - escrow record is available or could not be verified,     proceeding to check other recovery factors availability.", v30, 0xCu);
    sub_10000839C(v31);
  }

  v32 = swift_task_alloc();
  *(v0 + 328) = v32;
  *v32 = v0;
  v32[1] = sub_1002AED8C;
  v33 = *(v0 + 248);

  return sub_1002AF460();
}

uint64_t sub_1002AED8C()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v8 = *v0;

  v3 = v1[40];
  v4 = v1[37];
  v5 = v1[34];

  v6 = *(v8 + 8);

  return v6();
}

id sub_1002AEF38()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100008D04(v12, qword_1003FAAB8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v22 = v1;
    v23 = v13;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v16 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v25);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s - device has NO passcode, posting CFU to create and verify passcode", v16, 0xCu);
    sub_10000839C(v17);

    v1 = v22;
  }

  else
  {
  }

  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    v20 = [result contextForPrimaryAccount];

    sub_100260F04(0, v20);
    sub_10000839C(v24);
    return sub_10000839C(v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AF480()
{
  v11 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - checking available recovery factors.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_100241EC8;
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000016, 0x8000000100333280, sub_1002B0C64, v8, &type metadata for () + 8);
}

uint64_t sub_1002AF694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - v7;
  v9 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20[-1] - v12;
  (*(v10 + 16))(&v20[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__recoveryFactorsController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v14 = sub_1000080F8(v20, v20[3]);
  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v5 + 32))(v16 + v15, v8, v4);
  v17 = *v14;

  sub_1002A3A80(sub_1002B0D3C, v16);

  return sub_10000839C(v20);
}

uint64_t sub_1002AF8DC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v6 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v16);
      *(v6 + 12) = 2080;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_10021145C(v7, v8, &v16);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s - error checking recovery factors: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_18;
  }

  if (a1 != 1)
  {
    sub_1002B03AC();
    sub_1002B0888();
LABEL_18:
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }

  sub_1002AFC94();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "    %s - No recovery factors.", v13, 0xCu);
    sub_10000839C(v14);
  }

  type metadata accessor for AAError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001530B4();
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_100005814(&qword_1003DABC0, &unk_100342840);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AFC94()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20[-1] - v5;
  v7 = type metadata accessor for TrustedContactUserNotification();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v21);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - no recovery factors found, posting CFU to add recovery factors", v14, 0xCu);
    sub_10000839C(v15);
  }

  sub_1002B03AC();
  sub_1002B0888();
  swift_storeEnumTagMultiPayload();
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v16 = sub_1000080F8(v20, v20[3]);
  sub_1002CA150(v21);
  v17 = *v16;
  sub_1002D2E28(v21, 0, 0);
  sub_1000C5460(v21);
  sub_1002A6354(v10);
  return sub_10000839C(v20);
}

uint64_t sub_1002AFF8C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__deviceState;
  v6 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__recoveryFactorsController;
  v8 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler;
  v10 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WalrusStateHandler()
{
  result = qword_1003E6460;
  if (!qword_1003E6460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B01B8()
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}