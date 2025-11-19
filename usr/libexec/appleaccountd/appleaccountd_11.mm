uint64_t sub_100137364()
{
  v37 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[29];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v6 = v0[18];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA58);
  sub_10013AEFC(v7, v6, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136315394;
    (*(v14 + 16))(v15, v12 + *(v13 + 32), v16);
    sub_10013AF64(v12, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v14 + 8))(v15, v16);
    v22 = sub_10021145C(v19, v21, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v18 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error performing modify operation when sharing record with recordID: %s, error: %@", v17, 0x16u);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v34);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for BeneficiaryInfoRecord);
  }

  v25 = v0[20];
  v24 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v29 = v0[15];
  v28 = v0[16];
  v35 = v0[14];
  swift_getErrorValue();
  v30 = v0[2];
  v31 = v0[4];
  sub_1002DEA80(v0[3]);
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1001376F4(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001377E4, 0, 0);
}

uint64_t sub_1001377E4()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for BeneficiaryInfoRecord();
  v6 = *(v5 + 32);
  v7 = *(v3 + 16);
  v0[39] = v7;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v5 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = v0[31];
  v11 = *v9;
  v12 = v9[1];

  v13 = sub_1002E2BC4(v11, v12);

  v14 = [v13 privateCloudDatabase];
  v0[43] = v14;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18._object = v19;
  v20._countAndFlagsBits = v15;
  v20._object = v17;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v18).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = isa;
  v26._countAndFlagsBits = v22;
  v26._object = v24;
  v27 = CKRecordID.init(recordName:zoneID:)(v26, v25).super.isa;
  v0[45] = v27;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100137B14;
  v28 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA750;
  v0[14] = v28;
  [v14 fetchRecordWithID:v27 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100137B14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1001382A8;
  }

  else
  {
    v3 = sub_100137C24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100137C24()
{
  v82 = v0;
  v1 = *(v0 + 192);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 256);
    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA58);
    v6(v8, v7, v9);
    v11 = v1;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 352);
    v16 = *(v0 + 336);
    v17 = *(v0 + 344);
    if (v14)
    {
      v70 = *(v0 + 328);
      v79 = *(v0 + 304);
      v73 = v13;
      v18 = *(v0 + 296);
      v19 = *(v0 + 256);
      v67 = *(v0 + 264);
      v75 = *(v0 + 360);
      v77 = *(v0 + 352);
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v20 = 138412802;
      *(v20 + 4) = v3;
      v68->isa = v3;
      *(v20 + 12) = 2080;
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v74 = v17;
      v21 = v11;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = *(v67 + 8);
      v25(v18, v19);
      v26 = sub_10021145C(v22, v24, &v81);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      v27 = sub_10021145C(v70, v16, &v81);

      *(v20 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v12, v73, "Found an existing share %@, recordID: %s - zone: %s", v20, 0x20u);
      sub_100008D3C(v68, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v25(v79, v19);
    }

    else
    {
      v51 = *(v0 + 296);
      v50 = *(v0 + 304);
      v52 = *(v0 + 256);
      v53 = *(v0 + 264);

      v54 = *(v53 + 8);
      v54(v51, v52);
      v54(v50, v52);
    }
  }

  else
  {

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 336);
    v30 = *(v0 + 312);
    v29 = *(v0 + 320);
    v31 = *(v0 + 304);
    v32 = *(v0 + 288);
    v33 = *(v0 + 256);
    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA58);
    v30(v32, v31, v33);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 352);
    v39 = *(v0 + 336);
    v40 = *(v0 + 344);
    if (v37)
    {
      v80 = *(v0 + 304);
      v41 = *(v0 + 288);
      v42 = *(v0 + 256);
      v71 = *(v0 + 264);
      v72 = *(v0 + 328);
      v76 = *(v0 + 360);
      v78 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v43 = 136315394;
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v69 = v35;
      v47 = *(v71 + 8);
      v47(v41, v42);
      v48 = sub_10021145C(v44, v46, &v81);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = sub_10021145C(v72, v39, &v81);

      *(v43 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v69, v36, "Existing share not found, recordID: %s - zone: %s", v43, 0x16u);
      swift_arrayDestroy();

      v47(v80, v42);
    }

    else
    {
      v55 = *(v0 + 304);
      v56 = *(v0 + 288);
      v57 = *(v0 + 256);
      v58 = *(v0 + 264);

      v59 = *(v58 + 8);
      v59(v56, v57);
      v59(v55, v57);
    }

    v3 = 0;
  }

  v61 = *(v0 + 296);
  v60 = *(v0 + 304);
  v63 = *(v0 + 280);
  v62 = *(v0 + 288);
  v64 = *(v0 + 272);

  v65 = *(v0 + 8);

  return v65(v3);
}

uint64_t sub_1001382A8()
{
  v87 = v0;
  v1 = *(v0 + 368);
  swift_willThrow();
  *(v0 + 200) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 208);
    *(v0 + 232) = v2;
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 240) == 11)
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 336);
      v5 = *(v0 + 312);
      v4 = *(v0 + 320);
      v6 = *(v0 + 304);
      v7 = *(v0 + 280);
      v8 = *(v0 + 256);
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA58);
      v5(v7, v6, v8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 344);
      v14 = *(v0 + 352);
      v82 = v13;
      v84 = *(v0 + 368);
      v15 = *(v0 + 336);
      if (v12)
      {
        v72 = *(v0 + 328);
        v79 = *(v0 + 304);
        v73 = v11;
        v16 = *(v0 + 280);
        log = v10;
        v18 = *(v0 + 256);
        v17 = *(v0 + 264);
        v75 = *(v0 + 360);
        v77 = *(v0 + 352);
        v19 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v19 = 136315394;
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v23 = *(v17 + 8);
        v23(v16, v18);
        v24 = sub_10021145C(v20, v22, v86);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = sub_10021145C(v72, v15, v86);

        *(v19 + 14) = v25;
        _os_log_impl(&_mh_execute_header, log, v73, "The record is not shared, recordID: %s - zone: %s", v19, 0x16u);
        swift_arrayDestroy();

        v23(v79, v18);
      }

      else
      {
        v61 = *(v0 + 304);
        v62 = *(v0 + 280);
        v64 = *(v0 + 256);
        v63 = *(v0 + 264);

        v65 = *(v63 + 8);
        v65(v62, v64);
        v65(v61, v64);
      }

      v67 = *(v0 + 296);
      v66 = *(v0 + 304);
      v69 = *(v0 + 280);
      v68 = *(v0 + 288);
      v70 = *(v0 + 272);

      v71 = *(v0 + 8);

      return v71(0);
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 336);
  v28 = *(v0 + 312);
  v27 = *(v0 + 320);
  v29 = *(v0 + 304);
  v30 = *(v0 + 272);
  v31 = *(v0 + 256);
  v32 = type metadata accessor for Logger();
  sub_100008D04(v32, qword_1003FAA58);
  v28(v30, v29, v31);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 336);
  if (v35)
  {
    v80 = *(v0 + 328);
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);
    v39 = *(v0 + 256);
    v40 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v40 = 136315394;
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v85 = *(v37 + 8);
    v85(v38, v39);
    v44 = sub_10021145C(v41, v43, v86);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = sub_10021145C(v80, v36, v86);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error checking for existing, recordID: %s - zone: %s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v46 = *(v0 + 264);
    v47 = *(v0 + 272);
    v48 = *(v0 + 256);
    v49 = *(v0 + 336);

    v85 = *(v46 + 8);
    v85(v47, v48);
  }

  v50 = *(v0 + 360);
  v51 = *(v0 + 368);
  v53 = *(v0 + 344);
  v52 = *(v0 + 352);
  v54 = *(v0 + 304);
  v76 = *(v0 + 296);
  v78 = *(v0 + 288);
  v81 = *(v0 + 280);
  v83 = *(v0 + 272);
  v55 = *(v0 + 256);
  swift_getErrorValue();
  v56 = *(v0 + 144);
  v57 = *(v0 + 160);
  sub_1002DEA80(*(v0 + 152));
  swift_getErrorValue();
  v58 = *(v0 + 168);
  sub_100255F6C(-7084, *(v0 + 176), *(v0 + 184));

  swift_willThrow();

  v85(v54, v55);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100138A0C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_100005814(&qword_1003E7500, &qword_10033EC30) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for InheritanceHealthRecord();
  v2[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100138B64, 0, 0);
}

uint64_t sub_100138B64()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  v0[22] = isa;
  v10 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v10;
  [v10 addParticipant:v2];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v11 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v11 = &qword_1003FA9F0;
  }

  v12 = *v11;
  v13 = v11[1];

  v14 = sub_1002E2BC4(v12, v13);

  v0[24] = [v14 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15 = swift_allocObject();
  v0[25] = v15;
  *(v15 + 16) = xmmword_1003431D0;
  *(v15 + 32) = v10;
  v16 = async function pointer to CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)[1];
  v17 = v10;
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_100138DEC;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v15, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_100138DEC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v9 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_100139EE8;
  }

  else
  {
    v7 = v4[25];

    v6 = sub_100138F0C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100138F0C()
{
  v156 = v0;
  v1 = v0[27];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[27] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[27];

  v9 = 0;
  v154 = v0;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v19 = v0[27];
    v20 = v0[28];

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA58);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saved share record not found.", v24, 2u);
    }

    v25 = v0[23];
    v26 = v0[24];
    v27 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v0[8];
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v10 = v9;
LABEL_8:
    v11 = v0[23];
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v151[6] + 8 * v12);
    v14 = v151[7] + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v17 = v13;
    sub_100135D08(v15, v16);
    v18 = [v11 recordID];
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if (v11)
    {
      break;
    }

    v7 &= v7 - 1;
    sub_10005A40C(v15, v16);
    v9 = v10;
    v0 = v154;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v151 = v15;
  v0 = v154;
  v57 = v154[27];
  v56 = v154[28];

  if (v16)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v58 = v154[21];
    v59 = v154[10];
    v60 = type metadata accessor for Logger();
    sub_100008D04(v60, qword_1003FAA58);
    sub_10013AEFC(v59, v58, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    sub_10005A40C(v151, 1);
    v63 = os_log_type_enabled(v61, v62);
    v64 = v154[21];
    if (v63)
    {
      v65 = v154[17];
      v66 = v154[13];
      v67 = v154[14];
      v68 = v154[12];
      v69 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v155[0] = v150;
      *v69 = 138412546;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v70;
      logb->isa = v70;
      *(v69 + 12) = 2080;
      (*(v66 + 16))(v67, v64 + *(v65 + 28), v68);
      sub_10013AF64(v64, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v0 = v154;
      (*(v66 + 8))(v67, v68);
      v74 = sub_10021145C(v71, v73, v155);

      *(v69 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v61, v62, "Error creating CKShare: %@, recordID: %s", v69, 0x16u);
      sub_100008D3C(logb, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v150);
    }

    else
    {
      sub_10013AF64(v154[21], type metadata accessor for InheritanceHealthRecord);
    }

    v89 = v0[23];
    v88 = v0[24];
    v90 = v0[22];
    swift_willThrow();
    sub_10005A40C(v151, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v29 = v0[18];
    v30 = v0[10];
    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA58);
    sub_10013AEFC(v30, v29, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[18];
    if (v34)
    {
      v36 = v0[17];
      v38 = v0[13];
      v37 = v0[14];
      v39 = v0[12];
      v40 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v155[0] = v152;
      *v40 = 136315394;
      (*(v38 + 16))(v37, v35 + *(v36 + 28), v39);
      sub_10013AF64(v35, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v38 + 8))(v37, v39);
      v44 = sub_10021145C(v41, v43, v155);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v45;
      loga->isa = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error performing modify operation when sharing record with recordID: %s, error: %@", v40, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v152);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for InheritanceHealthRecord);
    }

    v47 = v0[20];
    v46 = v0[21];
    v49 = v0[18];
    v48 = v0[19];
    v51 = v0[15];
    v50 = v0[16];
    v153 = v0[14];
    swift_getErrorValue();
    v52 = v0[2];
    v53 = v0[4];
    sub_1002DEA80(v0[3]);
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }

  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  v76 = qword_1003D7F28;
  if (!v75)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100008D04(v91, qword_1003FAA58);
    v92 = v151;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    sub_10005A40C(v151, 0);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v155[0] = v96;
      *v95 = 136315138;
      swift_getObjectType();
      v97 = _typeName(_:qualified:)();
      v99 = sub_10021145C(v97, v98, v155);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v95, 0xCu);
      sub_10000839C(v96);
    }

    v100 = v154[23];
    v101 = v154[24];
    v102 = v154[22];
    type metadata accessor for AACustodianError(0);
    v154[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v103 = v154[6];
    swift_willThrow();

    sub_10005A40C(v151, 0);
    goto LABEL_16;
  }

  v149 = v75;
  v77 = v151;
  if (v76 != -1)
  {
    swift_once();
  }

  v78 = v154[19];
  v10 = v154[20];
  v79 = v154[10];
  v80 = type metadata accessor for Logger();
  sub_100008D04(v80, qword_1003FAA58);
  sub_10013AEFC(v79, v10, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v79, v78, type metadata accessor for InheritanceHealthRecord);
  v81 = v77;
  v82 = Logger.logObject.getter();
  LOBYTE(v10) = static os_log_type_t.default.getter();
  sub_10005A40C(v151, 0);
  if (os_log_type_enabled(v82, v10))
  {
    v8 = swift_slowAlloc();
    v155[0] = swift_slowAlloc();
    *v8 = 136315650;
    v83 = [v149 URL];
    log = v82;
    if (v83)
    {
      v84 = v154;
      v85 = v154[15];
      v86 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = 0;
    }

    else
    {
LABEL_44:
      v87 = 1;
      v84 = v154;
    }

    v110 = v84[15];
    v109 = v84[16];
    v111 = v84;
    v112 = type metadata accessor for URL();
    v113 = *(v112 - 8);
    (*(v113 + 56))(v110, v87, 1, v112);
    sub_100135D14(v110, v109);
    v114 = (*(v113 + 48))(v109, 1, v112);
    v115 = v111[16];
    v145 = v10;
    if (v114 == 1)
    {
      sub_100008D3C(v115, &qword_1003E7500, &qword_10033EC30);
      v116 = 0xE500000000000000;
      v117 = 0x3E6C696E3CLL;
    }

    else
    {
      v117 = URL.absoluteString.getter();
      v116 = v118;
      (*(v113 + 8))(v115, v112);
    }

    v108 = v154;
    v143 = v154[23];
    v144 = v154[24];
    v142 = v154[22];
    v120 = v154[19];
    v119 = v154[20];
    v121 = v154[17];
    v123 = v154[13];
    v122 = v154[14];
    v124 = v154[12];
    v125 = sub_10021145C(v117, v116, v155);

    *(v8 + 4) = v125;
    *(v8 + 12) = 2080;
    (*(v123 + 16))(v122, v119 + *(v121 + 28), v124);
    sub_10013AF64(v119, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    (*(v123 + 8))(v122, v124);
    v129 = sub_10021145C(v126, v128, v155);

    *(v8 + 14) = v129;
    *(v8 + 22) = 2080;
    v130 = UUID.uuidString.getter();
    v132 = v131;
    sub_10013AF64(v120, type metadata accessor for InheritanceHealthRecord);
    v133 = sub_10021145C(v130, v132, v155);

    *(v8 + 24) = v133;
    _os_log_impl(&_mh_execute_header, log, v145, "Successfully created CKShare %s for recordID: %s, zone: %s", v8, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v151, 0);
  }

  else
  {
    v104 = v154[23];
    v105 = v154[24];
    v106 = v154[22];
    v107 = v154[19];
    sub_10013AF64(v154[20], type metadata accessor for InheritanceHealthRecord);

    sub_10005A40C(v151, 0);
    sub_10013AF64(v107, type metadata accessor for InheritanceHealthRecord);
    v108 = v154;
  }

  v135 = v108[20];
  v134 = v108[21];
  v137 = v108[18];
  v136 = v108[19];
  v139 = v108[15];
  v138 = v108[16];
  v140 = v108[14];

  v141 = v108[1];

  return v141(v149);
}

uint64_t sub_100139EE8()
{
  v37 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[29];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v6 = v0[18];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA58);
  sub_10013AEFC(v7, v6, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136315394;
    (*(v14 + 16))(v15, v12 + *(v13 + 28), v16);
    sub_10013AF64(v12, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v14 + 8))(v15, v16);
    v22 = sub_10021145C(v19, v21, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v18 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error performing modify operation when sharing record with recordID: %s, error: %@", v17, 0x16u);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v34);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for InheritanceHealthRecord);
  }

  v25 = v0[20];
  v24 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v29 = v0[15];
  v28 = v0[16];
  v35 = v0[14];
  swift_getErrorValue();
  v30 = v0[2];
  v31 = v0[4];
  sub_1002DEA80(v0[3]);
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_10013A278(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10013A368, 0, 0);
}

uint64_t sub_10013A368()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for InheritanceHealthRecord();
  v6 = *(v5 + 28);
  v7 = *(v3 + 16);
  v0[39] = v7;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = v0[31];
  v11 = *v9;
  v12 = v9[1];

  v13 = sub_1002E2BC4(v11, v12);

  v14 = [v13 privateCloudDatabase];
  v0[43] = v14;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18._object = v19;
  v20._countAndFlagsBits = v15;
  v20._object = v17;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v18).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = isa;
  v26._countAndFlagsBits = v22;
  v26._object = v24;
  v27 = CKRecordID.init(recordName:zoneID:)(v26, v25).super.isa;
  v0[45] = v27;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v28 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA728;
  v0[14] = v28;
  [v14 fetchRecordWithID:v27 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A698(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10013A788, 0, 0);
}

uint64_t sub_10013A788()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = type metadata accessor for CustodianHealthRecord();
  v7 = *(v6 + 20);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v6 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9C0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);

  v13 = [v12 privateCloudDatabase];
  v0[43] = v13;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17._object = v18;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v17).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = isa;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  v26 = CKRecordID.init(recordName:zoneID:)(v25, v24).super.isa;
  v0[45] = v26;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v27 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA778;
  v0[14] = v27;
  [v13 fetchRecordWithID:v26 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

Swift::Int sub_10013AAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003DEC38, &qword_100343338);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10013AC10(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_100005814(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100016034(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100016034(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10013AEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013AF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013AFC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10013B040()
{
  v1 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initiating walrus status repair", v5, 2u);
  }

  v6 = *(v1 + 16);
  v9[4] = sub_10013B1B0;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10020E828;
  v9[3] = &unk_1003AAA88;
  v7 = _Block_copy(v9);
  v8 = v6;
  [v8 repairWalrusStatusWithCompletion:v7];
  _Block_release(v7);
}

void sub_10013B1B0()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v4 = String.init<A>(describing:)();
    v6 = sub_10021145C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Error repairing walrus status - %s", v2, 0xCu);
    sub_10000839C(v3);
  }

  else
  {
  }
}

id sub_10013B354()
{
  v1 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initiating combined walrus status fetch", v5, 2u);
  }

  v6 = *(v1 + 16);
  v14 = 0;
  v7 = [v6 combinedWalrusStatus:&v14];
  v8 = v7;
  if (v14)
  {
    v9 = v14;

    swift_willThrow();
    v8 = 0;
LABEL_14:

    return v8;
  }

  if (v7)
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    sub_100008D04(v2, qword_1003FAB78);
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218496;
      *(v12 + 4) = [v9 pcsWalrusStatus];
      *(v12 + 12) = 2048;
      *(v12 + 14) = [v9 octagonWalrusStatus];
      *(v12 + 22) = 2048;
      *(v12 + 24) = [v9 escrowWalrusStatus];

      _os_log_impl(&_mh_execute_header, v10, v11, "CombinedWalrusStatus: pcs:%lu octagon:%lu escrow:%lu", v12, 0x20u);
    }

    else
    {

      v10 = v9;
    }

    v8 = [v9 mismatchDetected];
    goto LABEL_14;
  }

  return v8;
}

void sub_10013B5F4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = NSSelectorFromString(v6);

  if ([*(v3 + 24) respondsToSelector:v7])
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = a1;
    v9[4] = a2;
    v19[4] = sub_10013F290;
    v19[5] = v9;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10013BB5C;
    v19[3] = &unk_1003AAA60;
    v10 = _Block_copy(v19);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA40);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v14, 2u);
    }

    [*(v3 + 24) performSelector:v7 withObject:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v18, 2u);
    }

    a1(0);
  }
}

uint64_t sub_10013B8D0(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100008D04(v8, qword_1003FAA40);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = _convertErrorToNSError(_:)();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Error fetch walrus recovery key availability: %@", v11, 0xCu);
        sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
      }

      a4(1);
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA40);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = a1 & 1;
        _os_log_impl(&_mh_execute_header, v15, v16, "Walrus Recovery Key isAvailable: %{BOOL}d", v17, 8u);
      }

      a4(a1 & 1);
    }
  }

  return result;
}

void sub_10013BB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10013BBD4()
{
  v1 = *(v0 + 24);
  v28 = 0;
  if ([v1 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:&v28])
  {
    v2 = v28;
    return 1;
  }

  v3 = v28;
  v4 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v28 = v4;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_1000EBAD0();
  if (!swift_dynamicCast())
  {
LABEL_10:

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_errorRetain();
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "recoveryKeyObservingSystemsHaveMatchingState error: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    else
    {
    }

    return 1;
  }

  if (![v26 cdp_isCDPErrorWithCode:-5317])
  {

    goto LABEL_10;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = v26;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10021145C(v13, v15, &v27);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "recoveryKeyObservingSystemsHaveMatchingState error: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10013BFD0()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100008D04(v1, qword_1003FAA40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking with CDP if any recovery keys are octagon distrusted", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + 24);
  v0[20] = v6;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_10013C1B0;
  v7 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003AAA10;
  v0[14] = v7;
  [v6 anyRecoveryKeysAreOctagonDistrustedWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013C1B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10013C328;
  }

  else
  {
    v3 = sub_10013C2C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013C2C0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013C328()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to check if any recovery keys are octagon distrusted due to error: %@. Assuming no keys are distrusted", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10013C498()
{
  v1 = *(v0 + 24);
  v41 = 0;
  v2 = 1;
  [v1 shouldPerformRepairWithOptionForceFetch:1 error:&v41];
  v3 = v41;
  if (!v41)
  {
    return v2;
  }

  swift_willThrow();
  v41 = v3;
  v4 = v3;
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_1000EBAD0();
  if (swift_dynamicCast())
  {
    if ([v39 cdp_isCDPErrorWithCode:-5305])
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100008D04(v5, qword_1003FAA40);
      v6 = v39;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v40 = v10;
        *v9 = 136315138;
        v11 = v6;
        v12 = [v11 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_10021145C(v13, v15, &v40);

        *(v9 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Missing escrow record detected: %s", v9, 0xCu);
        sub_10000839C(v10);
      }

      else
      {
      }

      return 2;
    }

    if ([v39 cdp_isCDPErrorWithCode:-5322])
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100008D04(v17, qword_1003FAA40);
      v18 = v39;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;
        v23 = v18;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10021145C(v25, v27, &v40);

        *(v21 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Out of sync escrow record detected: %s", v21, 0xCu);
        sub_10000839C(v22);
      }

      else
      {
      }

      return 4;
    }
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAA40);
  v30 = v4;
  v2 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v32 = 136315138;
    v34 = v30;
    v35 = String.init<A>(describing:)();
    v37 = sub_10021145C(v35, v36, &v41);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v2, v31, "Could not determine escrow record state: %s", v32, 0xCu);
    sub_10000839C(v33);
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_10013C9D8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for TimeoutError();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10013CA9C, 0, 0);
}

uint64_t sub_10013CA9C()
{
  v33 = v0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return withTimeout<A>(after:_:)(v1, v2, v3, v4, v5, v6);
  }

  v7 = v1;
  v8 = [v1 contextForPrimaryAccount];
  v0[12] = v8;

  if (v8)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[13] = sub_100008D04(v9, qword_1003FAA40);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[6];
      v12 = v0[7];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      v16 = Duration.description.getter();
      v18 = sub_10021145C(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching Octagon status with timeout %s", v14, 0xCu);
      sub_10000839C(v15);
    }

    v19 = v0[8];
    v20 = swift_allocObject();
    v0[14] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v8;
    v21 = async function pointer to withTimeout<A>(after:_:)[1];

    v22 = v8;
    v23 = swift_task_alloc();
    v0[15] = v23;
    type metadata accessor for CliqueStatus(0);
    v6 = v24;
    *v23 = v0;
    v23[1] = sub_10013CE04;
    v2 = v0[6];
    v3 = v0[7];
    v4 = &unk_100343440;
    v1 = v0 + 2;
    v5 = v20;

    return withTimeout<A>(after:_:)(v1, v2, v3, v4, v5, v6);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA40);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Missing context, reporting CliqueStatus.error", v28, 2u);
  }

  v29 = v0[11];

  v30 = v0[1];

  return v30(-1);
}

uint64_t sub_10013CE04()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10013CF94;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_10013CF20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013CF20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10013CF94()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];

  v0[3] = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v5 = swift_dynamicCast();
  v6 = v0[16];
  v7 = v0[13];
  if (v5)
  {
    v8 = v0[16];

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Mapping TimeoutError to codeOctagonCliqueStatusFetchTimeout", v11, 2u);
    }

    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[10];

    type metadata accessor for AAError(0);
    v0[5] = -4420;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013F130(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v0[4];
    swift_willThrow();

    (*(v15 + 8))(v12, v14);
    v17 = v0[3];
  }

  else
  {
    v18 = v0[3];

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[16];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch Octagon status: %@", v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
    }

    v25 = v0[16];
    v26 = v0[12];

    swift_willThrow();
    v27 = v0[16];
  }

  v28 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10013D27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_10013D29C, 0, 0);
}

uint64_t sub_10013D29C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10013D3F0;
    v4 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003DEDF8, &qword_100343448);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10013D5DC;
    v0[13] = &unk_1003AA9E8;
    v0[14] = v4;
    [v2 octagonStatusForContext:v3 withCompletion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10013D3F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10013D56C;
  }

  else
  {
    v3 = sub_10013D500;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013D500()
{
  v1 = *(v0 + 168);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013D56C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_10013D5DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10013D6A8(uint64_t a1, int a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10013D774(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003DEDF0, &qword_100343430);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_10013F0A4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013D9B0;
  aBlock[3] = &unk_1003AA998;
  v13 = _Block_copy(aBlock);

  [a2 performEscrowRecordCheckWithContext:a3 isBackground:0 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10013D930(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DEDF0, &qword_100343430);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DEDF0, &qword_100343430);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10013D9B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10013DA28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10013DA94(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        type metadata accessor for EscrowRecordError(0);
        v6 = -4501;
      }

      else
      {
        type metadata accessor for EscrowRecordError(0);
        v6 = -4502;
      }

      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

    if (a1 == 5)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4503;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

    if (a1 == 6)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4504;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      goto LABEL_17;
    }

LABEL_13:
    a1 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
LABEL_14:
    type metadata accessor for AAError(a1);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013F130(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      type metadata accessor for EscrowRecordError(0);
      v6 = -4500;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10013F130(&qword_1003D82C0, type metadata accessor for EscrowRecordError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v1 = v7;
      type metadata accessor for AAError(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
LABEL_17:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033EB30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v4;
      v5 = _convertErrorToNSError(_:)();
      *(inited + 72) = sub_1000EBAD0();
      *(inited + 48) = v5;
      sub_100308978(inited);
      swift_setDeallocating();
      sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
      sub_10013F130(&qword_1003D8370, type metadata accessor for AAError);
      _BridgedStoredNSError.init(_:userInfo:)();

      return v6;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_10013DF88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = a3;
  v8 = String._bridgeToObjectiveC()();
  v9 = NSSelectorFromString(v8);

  if ([*(a1 + 24) respondsToSelector:v9])
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = sub_10013EB88;
    v11[4] = v6;
    v22[4] = sub_10013F290;
    v22[5] = v11;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10013BB5C;
    v22[3] = &unk_1003AA948;
    v12 = _Block_copy(v22);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA40);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v16, 2u);
    }

    [*(a1 + 24) performSelector:v9 withObject:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v20, 2u);
    }

    swift_beginAccess();
    *(a2 + 16) = 0;
    dispatch_group_leave(v7);
  }
}

uint64_t sub_10013E2DC()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 contextForPrimaryAccount];
  v0[18] = v4;

  if (v4)
  {
    v2 = [v1 sharedInstance];
    v0[19] = v2;
    if (v2)
    {
      v5 = v2;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_10013E568;
      v6 = swift_continuation_init();
      v0[17] = sub_100005814(&qword_1003DEDE8, &unk_100343418);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10013D6A8;
      v0[13] = &unk_1003AA8D0;
      v0[14] = v6;
      [v5 sosStatusForContext:v4 withCompletion:v0 + 10];
      v2 = v0 + 2;

      return _swift_continuation_await(v2);
    }

LABEL_15:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Missing context, reporting SOSCCStatus.error", v10, 2u);
  }

  v11 = v0[1];

  return v11(0xFFFFFFFFLL);
}

uint64_t sub_10013E568()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10013E6E8;
  }

  else
  {
    v3 = sub_10013E678;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013E678()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10013E6E8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_10013E760(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = String._bridgeToObjectiveC()();
  v10 = NSSelectorFromString(v9);

  if ([*(a1 + 24) respondsToSelector:v10])
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_10013EB00;
    v12[4] = v8;
    v23[4] = sub_10013EB48;
    v23[5] = v12;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10013BB5C;
    v23[3] = &unk_1003AA8A8;
    v13 = _Block_copy(v23);

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Calling stateController.isWalrusRecoveryKeyAvailable via selector", v17, 2u);
    }

    [*(a1 + 24) performSelector:v10 withObject:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "AppleAccount change for isWalrusRecoveryKeyAvailable has not been integrated yet", v22, 2u);
    }

    sub_100149814(0, a2, a3, a4);
  }
}

uint64_t sub_10013EAC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10013EB0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10013EB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013EBAC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = [v1 contextForPrimaryAccount];
  v0[3] = v10;

  if (v10)
  {
    v11 = [objc_allocWithZone(CDPStateController) init];
    v0[4] = v11;
    v12 = swift_task_alloc();
    v0[5] = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v14 = swift_task_alloc();
    v0[6] = v14;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v8 = v15;
    *v14 = v0;
    v14[1] = sub_10013EE0C;
    v6 = sub_10013F008;
    v4 = 0x6843776F72637365;
    v5 = 0xED000029286B6365;
    v1 = v0 + 2;
    v2 = 0;
    v3 = 0;
    v7 = v12;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Missing context, reporting CliqueStatus.error", v19, 2u);
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_10013EE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_10013EF94;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10013EF28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013EF28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10013EF94()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_10013F010()
{
  v1 = sub_100005814(&qword_1003DEDF0, &qword_100343430);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10013F0A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&qword_1003DEDF0, &qword_100343430) - 8) + 80);

  return sub_10013D930(a1, a2);
}

uint64_t sub_10013F130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013F178()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10013F1B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_10013D27C(a1, v5, v4);
}

uint64_t sub_10013F2A4(uint64_t a1)
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
    sub_100147014(v9, v5, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10013F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v7[22] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v7[25] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v12 = type metadata accessor for CustodianRecord();
  v7[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7[33] = v14;
  v15 = *(v14 - 8);
  v7[34] = v15;
  v16 = *(v15 + 64) + 15;
  v7[35] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v7[36] = RecoveryRecordsRequest;
  v18 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v7[37] = swift_task_alloc();

  return _swift_task_switch(sub_10013F5F4, 0, 0);
}

uint64_t sub_10013F5F4()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[18];
  v6 = v0[19];
  v7 = type metadata accessor for UUID();
  v0[38] = v7;
  (*(*(v7 - 8) + 16))(v1, v5, v7);
  (*(v3 + 16))(v2, v6 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v8 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v8 && (v9 = v8, v10 = [v8 aa_altDSID], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[19];
  v17 = (v0[18] + *(v0[22] + 32));
  v18 = *v17;
  v0[39] = *v17;
  v19 = v17[1];
  v0[40] = v19;
  *(v14 + v15[5]) = 1;
  v20 = v14 + v15[6];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v21 = (v14 + v15[8]);
  *v21 = v11;
  v21[1] = v13;
  v22 = (v14 + v15[9]);
  *v22 = v18;
  v22[1] = v19;

  sub_10000839C(v0 + 2);
  v23 = *sub_1000080F8((v16 + 16), *(v16 + 40));
  v24 = swift_task_alloc();
  v0[41] = v24;
  *v24 = v0;
  v24[1] = sub_10013F828;
  v25 = v0[37];
  v26 = v0[32];

  return sub_100023C4C(v26, v25);
}

uint64_t sub_10013F828()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1001400D8;
  }

  else
  {
    v3 = sub_10013F93C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013F93C()
{
  v66 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = *(v2 + *(v1 + 20));
  switch(v3)
  {
    case 4:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA88);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Processing decline status update", v26, 2u);
      }

      v27 = swift_task_alloc();
      v0[45] = v27;
      *v27 = v0;
      v27[1] = sub_100140614;
      v28 = v0[32];
      v29 = v0[30];
      v30 = v0[18];
      v31 = v0[19];

      return sub_1001429A4(v29, v30, v28);
    case 3:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA88);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Processing not reachable status update", v17, 2u);
      }

      v18 = swift_task_alloc();
      v0[47] = v18;
      *v18 = v0;
      v18[1] = sub_1001408D0;
      v19 = v0[32];
      v20 = v0[28];
      v21 = v0[18];
      v22 = v0[19];

      return sub_1001446C8(v20, v19, v21);
    case 2:
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
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Processing accept status update", v7, 2u);
      }

      v8 = swift_task_alloc();
      v0[43] = v8;
      *v8 = v0;
      v8[1] = sub_10014035C;
      v9 = v0[31];
      v10 = v0[32];
      v11 = v0[18];
      v12 = v0[19];

      return sub_1001418F4(v9, v11, v10);
    default:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
        v2 = v0[18];
      }

      v33 = v0[23];
      v32 = v0[24];
      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAA88);
      sub_100146EAC(v2, v32, type metadata accessor for CustodianStatusUpdateRequest);
      sub_100146EAC(v2, v33, type metadata accessor for CustodianStatusUpdateRequest);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v0[38];
        v38 = v0[23];
        v39 = v0[24];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v65 = v41;
        *v40 = 134218242;
        v42 = *(v39 + *(v1 + 20));
        sub_100146CDC(v39, type metadata accessor for CustodianStatusUpdateRequest);
        *(v40 + 4) = v42;
        *(v40 + 12) = 2080;
        sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_100146CDC(v38, type metadata accessor for CustodianStatusUpdateRequest);
        v46 = sub_10021145C(v43, v45, &v65);

        *(v40 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unexpected response status %ld for custodian ID: %s", v40, 0x16u);
        sub_10000839C(v41);
      }

      else
      {
        v47 = v0[23];
        sub_100146CDC(v0[24], type metadata accessor for CustodianStatusUpdateRequest);

        sub_100146CDC(v47, type metadata accessor for CustodianStatusUpdateRequest);
      }

      v48 = v0[37];
      v49 = v0[32];
      v51 = v0[25];
      v50 = v0[26];
      v53 = v0[20];
      v52 = v0[21];
      type metadata accessor for AACustodianError(0);
      v0[17] = -7000;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001478F0(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v50 = v0[16];
      swift_storeEnumTagMultiPayload();
      v53(v50);
      sub_100008D3C(v50, &unk_1003DA200, &unk_10033FA80);
      sub_100146CDC(v49, type metadata accessor for CustodianRecord);
      sub_100146CDC(v48, type metadata accessor for FetchRecoveryRecordsRequest);
      v54 = v0[37];
      v55 = v0[35];
      v57 = v0[31];
      v56 = v0[32];
      v59 = v0[29];
      v58 = v0[30];
      v60 = v0[28];
      v61 = v0[26];
      v63 = v0[23];
      v62 = v0[24];

      v64 = v0[1];

      return v64();
  }
}

uint64_t sub_1001400D8()
{
  v1 = v0[42];
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating custodian status %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[20];
  v10 = v0[21];

  swift_getErrorValue();
  v12 = v0[12];
  v13 = v0[14];
  *v8 = sub_1002DEA80(v0[13]);
  swift_storeEnumTagMultiPayload();
  v11(v8);

  sub_100008D3C(v8, &unk_1003DA200, &unk_10033FA80);
  v14 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v23 = v0[23];
  v22 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10014035C()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1001413B4;
  }

  else
  {
    v3 = sub_100140470;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100140470()
{
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[20];
  v6 = v0[21];
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v4, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v7(v4);
  sub_100008D3C(v4, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  v8 = v0[37];
  v9 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100140614()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_100141654;
  }

  else
  {
    v3 = sub_100140728;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100140728()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[20];
  v6 = v0[21];
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v4, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v7(v4);
  sub_100008D3C(v4, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  v8 = v0[37];
  v9 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001408D0()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_100140C8C;
  }

  else
  {
    v3 = sub_1001409E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001409E4()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[18];
  sub_100040738(v0[19] + 176, (v0 + 7));
  v5 = v0[11];
  sub_1000080F8(v0 + 7, v0[10]);
  v6 = *(v1 + *(v2 + 36));
  v7 = *(v4 + *(v3 + 24));
  v8 = (v4 + *(v3 + 40));
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v5 + 8);
  v18 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[49] = v13;
  *v13 = v0;
  v13[1] = sub_100140B78;
  v14 = v0[39];
  v15 = v0[40];
  v16 = v0[32];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_100140B78()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_1001410FC;
  }

  else
  {
    v3 = sub_100140F2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100140C8C()
{
  v1 = v0[48];
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating custodian status %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[20];
  v10 = v0[21];

  swift_getErrorValue();
  v12 = v0[12];
  v13 = v0[14];
  *v8 = sub_1002DEA80(v0[13]);
  swift_storeEnumTagMultiPayload();
  v11(v8);

  sub_100008D3C(v8, &unk_1003DA200, &unk_10033FA80);
  v14 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v23 = v0[23];
  v22 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100140F2C()
{
  v1 = v0[37];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[20];
  v7 = v0[21];
  sub_10000839C(v0 + 7);
  sub_100147014(v4, v3, type metadata accessor for CustodianRecord);
  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_100146EAC(v3, v5, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v8(v5);
  sub_100008D3C(v5, &unk_1003DA200, &unk_10033FA80);
  sub_100146CDC(v3, type metadata accessor for CustodianRecord);
  sub_100146CDC(v2, type metadata accessor for CustodianRecord);
  sub_100146CDC(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  v9 = v0[37];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[28];
  v16 = v0[26];
  v18 = v0[23];
  v17 = v0[24];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001410FC()
{
  sub_100146CDC(v0[28], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 7);
  v1 = v0[50];
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating custodian status %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[20];
  v10 = v0[21];

  swift_getErrorValue();
  v12 = v0[12];
  v13 = v0[14];
  *v8 = sub_1002DEA80(v0[13]);
  swift_storeEnumTagMultiPayload();
  v11(v8);

  sub_100008D3C(v8, &unk_1003DA200, &unk_10033FA80);
  v14 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v23 = v0[23];
  v22 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001413B4()
{
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  v1 = v0[44];
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating custodian status %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[20];
  v10 = v0[21];

  swift_getErrorValue();
  v12 = v0[12];
  v13 = v0[14];
  *v8 = sub_1002DEA80(v0[13]);
  swift_storeEnumTagMultiPayload();
  v11(v8);

  sub_100008D3C(v8, &unk_1003DA200, &unk_10033FA80);
  v14 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v23 = v0[23];
  v22 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100141654()
{
  sub_100146CDC(v0[32], type metadata accessor for CustodianRecord);
  v1 = v0[46];
  sub_100146CDC(v0[37], type metadata accessor for FetchRecoveryRecordsRequest);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating custodian status %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[20];
  v10 = v0[21];

  swift_getErrorValue();
  v12 = v0[12];
  v13 = v0[14];
  *v8 = sub_1002DEA80(v0[13]);
  swift_storeEnumTagMultiPayload();
  v11(v8);

  sub_100008D3C(v8, &unk_1003DA200, &unk_10033FA80);
  v14 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v23 = v0[23];
  v22 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001418F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v11 = type metadata accessor for CustodianRecord();
  v4[27] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100141A5C, 0, 0);
}

uint64_t sub_100141A5C()
{
  v63 = v0;
  v1 = v0[19];
  v2 = *(v1 + *(v0[27] + 36));
  v0[29] = v2;
  if (v2 == 4)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
      v1 = v0[19];
    }

    v3 = v0[28];
    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    sub_100146EAC(v1, v3, type metadata accessor for CustodianRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[28];
    if (v7)
    {
      v9 = v0[27];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v62 = v11;
      *v10 = 136315138;
      v12 = *(v9 + 20);
      type metadata accessor for UUID();
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100146CDC(v8, type metadata accessor for CustodianRecord);
      v16 = sub_10021145C(v13, v15, &v62);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Accept request received for a declined custodian: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {

      sub_100146CDC(v8, type metadata accessor for CustodianRecord);
    }

    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[24];
    v26 = kAAAnalyticsEventCustodianSystemSync;
    (*(v24 + 16))(v23, v0[20] + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v25);
    v27 = v26;
    Dependency.wrappedValue.getter();
    (*(v24 + 8))(v23, v25);
    v28 = [*(*sub_1000080F8(v0 + 7 v0[10]) + 16)];
    if (v28 && (v29 = v28, v30 = [v28 aa_altDSID], v29, v30))
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = v0[18];
    sub_100012004();
    updated = type metadata accessor for CustodianStatusUpdateRequest(0);
    v36 = (v34 + *(updated + 32));
    v37 = *v36;
    v38 = v36[1];

    v39 = sub_100245D38(v27, v31, v33, v37, v38);
    sub_10000839C(v0 + 7);
    if (v39)
    {
      v40 = v0[18] + *(updated + 40);
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = v39;
      sub_100245E08(v41, v42);
    }

    else
    {
      v43 = 0;
    }

    type metadata accessor for CustodianSystemState(0);
    v0[13] = -10001;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001478F0(&qword_1003DF010, type metadata accessor for CustodianSystemState);
    _BridgedStoredNSError.init(_:userInfo:)();
    v44 = v0[12];
    if (v39)
    {
      v45 = v43;
      v46 = v44;
      v47 = _convertErrorToNSError(_:)();

      [v45 updateTaskResultWithError:v47];
    }

    v49 = v0[22];
    v48 = v0[23];
    v50 = v0[21];
    (*(v49 + 16))(v48, v0[20] + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter, v50);
    Dependency.wrappedValue.getter();
    (*(v49 + 8))(v48, v50);
    v51 = v0[14];
    swift_getObjectType();
    sub_100246FA8(v39);
    swift_unknownObjectRelease();
    type metadata accessor for AACustodianError(0);
    v0[16] = -7077;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001478F0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v0[15];
    swift_willThrow();

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Saving accept response failed: %@", v55, 0xCu);
      sub_100008D3C(v56, &unk_1003D9140, &qword_10033E640);
    }

    v58 = v0[28];
    v59 = v0[26];
    v60 = v0[23];

    swift_willThrow();

    v61 = v0[1];

    return v61();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[30] = v17;
    *v17 = v0;
    v17[1] = sub_1001421A8;
    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[17];
    v21 = v0[18];

    return sub_1001446C8(v20, v18, v21);
  }
}

uint64_t sub_1001421A8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100142600;
  }

  else
  {
    v3 = sub_1001422BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001422BC()
{
  v1 = v0[18];
  sub_100040738(v0[20] + 96, (v0 + 2));
  v2 = v0[6];
  sub_1000080F8(v0 + 2, v0[5]);
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v4 = *(v1 + updated[6]);
  v5 = (v1 + updated[8]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (v1 + updated[10]);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v2 + 8);
  v16 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_10014245C;
  v14 = v0[29];
  v15 = v0[19];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_10014245C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1001427C0;
  }

  else
  {
    v3 = sub_100142570;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100142570()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  sub_10000839C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100142600()
{
  v1 = v0[31];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Saving accept response failed: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[23];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001427C0()
{
  sub_100146CDC(v0[17], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 2);
  v1 = v0[33];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Saving accept response failed: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[23];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001429A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v7 = *(*(sub_100005814(&unk_1003DF000, &unk_10033EC50) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Date.ISO8601FormatStyle();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = *(*(sub_100005814(&qword_1003DA110, &qword_10033F230) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v18 = *(*(sub_100005814(&qword_1003D8B60, &unk_10033F210) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v19 = type metadata accessor for CustodianRecord();
  v4[31] = v19;
  v20 = *(v19 - 8);
  v4[32] = v20;
  v21 = *(v20 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v22 = swift_task_alloc();
  v4[35] = v22;
  v23 = swift_task_alloc();
  v4[36] = v23;
  *v23 = v4;
  v23[1] = sub_100142CA4;

  return sub_1001446C8(v22, a3, a2);
}

uint64_t sub_100142CA4()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100143250;
  }

  else
  {
    v3 = sub_100142DB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100142DB8()
{
  sub_100147014(v0[35], v0[13], type metadata accessor for CustodianRecord);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continuing to process decline status.", v4, 2u);
  }

  v5 = v0[31];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  sub_100040738(v6 + 136, (v0 + 2));
  v9 = v0[6];
  sub_1000080F8(v0 + 2, v0[5]);
  v10 = *(v7 + *(v5 + 36));
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v12 = *(v8 + updated[6]);
  v13 = (v8 + updated[8]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v8 + updated[10]);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v9 + 8);
  v24 = v19 + *v19;
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_10014303C;
  v22 = v0[15];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_10014303C()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1001445AC;
  }

  else
  {
    v3 = sub_100143150;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100143150()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v12 = v0[20];
  v13 = v0[17];
  sub_10000839C(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100143250()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v146 = type metadata accessor for Logger();
  sub_100008D04(v146, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving decline response failed: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[30];
  v147 = v0[31];
  v159 = v0[28];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[22];
  v156 = v0[21];
  v15 = v0[14];
  v14 = v0[15];

  sub_100146EAC(v14, v8, type metadata accessor for CustodianRecord);
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v16 = *(v15 + updated[5]);
  v17 = *(v12 + 56);
  v17(v10, 1, 1, v11);
  (*(v13 + 56))(v159, 1, 1, v156);
  v18 = (v9 + v147[7]);
  *v18 = 0;
  v18[1] = 0;
  v148 = v18;
  v19 = (v9 + v147[8]);
  *v19 = 0;
  v19[1] = 0;
  v149 = v19;
  v20 = (v9 + v147[13]);
  *v20 = 0;
  v20[1] = 0;
  v152 = v20;
  v21 = (v9 + v147[14]);
  *v21 = 0;
  v21[1] = 0;
  v157 = v21;
  v22 = v9 + v147[15];
  *v22 = 0;
  v160 = v22;
  *(v22 + 8) = 1;
  v151 = v147[16];
  v144 = v17;
  v17(v9 + v151, 1, 1, v11);
  v23 = *(v12 + 16);
  v23(v9, v8, v11);
  v23(v9 + v147[5], v8 + v147[5], v11);
  v24 = v147[11];
  v25 = *(v8 + v24);
  v26 = *(v8 + v24 + 8);
  v27 = (v9 + v24);
  *v27 = v25;
  v27[1] = v26;
  v28 = v147[6];
  v29 = *(v8 + v28);
  v30 = *(v8 + v28 + 8);
  v31 = (v9 + v28);
  *v31 = v29;
  v31[1] = v30;
  *(v9 + v147[9]) = v16;
  v32 = v147[10];
  v33 = *(v8 + v32);
  v34 = *(v8 + v32 + 8);
  v35 = (v9 + v32);
  *v35 = v33;
  v35[1] = v34;
  v154 = v9;
  *(v9 + v147[12]) = *(v8 + v147[12]);
  v36 = type metadata accessor for ContactsHelper();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  sub_100015D6C(v25, v26);
  sub_100052704(v33, v34);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v39 = v0[10];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 contactForHandle:v40];
  swift_unknownObjectRelease();

  v42 = v0[33];
  if (!v41)
  {

    sub_1000EF4CC();
    v46 = 0;
    goto LABEL_26;
  }

  v43 = objc_allocWithZone(AALocalContactInfo);
  v44 = v41;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v43 initWithHandle:v45 contact:v44];

  if ((sub_1000EF4CC() & 1) == 0 || !v46)
  {
    goto LABEL_26;
  }

  v46 = v46;
  v47 = [v46 firstName];
  if (!v47)
  {
LABEL_25:

    goto LABEL_26;
  }

  v48 = v47;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = sub_1002576F0(v49, v51);
  v54 = v53;

  if (!v54)
  {
LABEL_26:
    v68 = v0[34];
    v69 = (v68 + v147[7]);
    v70 = v69[1];
    *v148 = *v69;
    v148[1] = v70;
    v71 = (v68 + v147[8]);
    v72 = v71[1];
    *v149 = *v71;
    v149[1] = v72;

    goto LABEL_27;
  }

  v46 = v46;
  v55 = [v46 lastName];
  if (!v55)
  {

    goto LABEL_25;
  }

  v56 = v55;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = sub_1002576F0(v57, v59);
  v62 = v61;

  if (!v62)
  {
LABEL_22:

    goto LABEL_26;
  }

  v63 = v0[34];
  v64 = (v63 + v147[7]);
  v65 = v64[1];
  if (v65)
  {
    if (*v64 == v52 && v65 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_21;
    }

    v63 = v0[34];
  }

  v66 = (v63 + v147[8]);
  v67 = v66[1];
  if (v67 && (*v66 == v60 && v67 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  *v148 = v52;
  v148[1] = v54;
  *v149 = v60;
  v149[1] = v62;
LABEL_27:
  v73 = v0[29];
  v74 = v0[24];
  v75 = v0[25];
  sub_100012D04(v0[30], v73, &qword_1003D8B60, &unk_10033F210);
  v150 = v46;
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    v76 = v0[34];
    sub_100008D3C(v0[29], &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v76 + v147[16], v154 + v151);
  }

  else
  {
    v77 = v0[26];
    v78 = v0[24];
    v79 = *(v0[25] + 32);
    v79(v77, v0[29], v78);
    sub_100008D3C(v154 + v151, &qword_1003D8B60, &unk_10033F210);
    v79(v154 + v151, v77, v78);
    v144(v154 + v151, 0, 1, v78);
  }

  v81 = v0[27];
  v80 = v0[28];
  v82 = v0[21];
  v83 = v0[22];
  v84 = (v0[34] + v147[13]);
  v85 = v84[1];
  *v152 = *v84;
  v152[1] = v85;
  sub_100012D04(v80, v81, &qword_1003DA110, &qword_10033F230);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    v86 = v0[34];
    v87 = v0[30];
    v89 = v0[27];
    v88 = v0[28];

    sub_100008D3C(v88, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v87, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v89, &qword_1003DA110, &qword_10033F230);
    v90 = (v86 + v147[14]);
    v91 = *v90;
    v92 = v90[1];
  }

  else
  {
    v153 = v0[28];
    v155 = v0[30];
    v94 = v0[22];
    v93 = v0[23];
    v96 = v0[20];
    v95 = v0[21];
    v97 = v0[18];
    v98 = v0[19];
    (*(v94 + 32))(v93, v0[27], v95);

    sub_100195ACC(v96);
    v91 = Date.ISO8601Format(_:)();
    v92 = v99;

    (*(v98 + 8))(v96, v97);
    (*(v94 + 8))(v93, v95);
    sub_100008D3C(v153, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v155, &qword_1003D8B60, &unk_10033F210);
  }

  v100 = v0[37];
  v102 = v0[33];
  v101 = v0[34];
  v103 = v0[13];
  *v157 = v91;
  v157[1] = v92;
  v104 = v101 + v147[15];
  v105 = *v104;
  v106 = *(v104 + 8);
  sub_100146CDC(v101, type metadata accessor for CustodianRecord);
  *v160 = v105;
  *(v160 + 8) = v106;
  sub_100147014(v102, v103, type metadata accessor for CustodianRecord);
  swift_getErrorValue();
  v107 = v0[7];
  v108 = v0[9];
  v109 = sub_1002DE99C(v0[8]);
  v0[40] = v109;
  if (!v109)
  {
    v121 = v0[37];

    goto LABEL_42;
  }

  v110 = v109;
  if (!sub_1002DEA78(v109))
  {
    v122 = v0[37];

LABEL_42:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v146, qword_1003FAA88);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Continuing to process decline status.", v125, 2u);
    }

    v126 = v0[31];
    v128 = v0[15];
    v127 = v0[16];
    v129 = v0[14];

    sub_100040738(v127 + 136, (v0 + 2));
    v130 = v0[6];
    sub_1000080F8(v0 + 2, v0[5]);
    v131 = *(v128 + *(v126 + 36));
    v132 = *(v129 + updated[6]);
    v133 = (v129 + updated[8]);
    v134 = *v133;
    v135 = v133[1];
    v136 = (v129 + updated[10]);
    v137 = *v136;
    v138 = *(v136 + 8);
    v139 = *(v130 + 8);
    v161 = v139 + *v139;
    v140 = v139[1];
    v141 = swift_task_alloc();
    v0[38] = v141;
    *v141 = v0;
    v141[1] = sub_10014303C;
    v142 = v0[15];

    __asm { BRAA            X8, X16 }
  }

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v111, v112, "Saving the decline response to local disk even though saving to cloud failed", v113, 2u);
  }

  v114 = v0[16];
  v115 = v0[13];

  v0[12] = *sub_1000080F8((v114 + 56), *(v114 + 80));
  v116 = swift_task_alloc();
  v0[41] = v116;
  *(v116 + 16) = v0 + 12;
  *(v116 + 24) = v115;
  v117 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v118 = swift_task_alloc();
  v0[42] = v118;
  *v118 = v0;
  v118[1] = sub_100143F10;
  v119 = v0[31];
  v120 = v0[17];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v120, 0, 0, 0x61636F4C65766173, 0xEF293A5F28796C6CLL, sub_100147588, v116, v119);
}

uint64_t sub_100143F10()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 328);

    v5 = sub_1001442F4;
  }

  else
  {
    v6 = *(v2 + 328);

    v5 = sub_10014403C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10014403C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 136);

  (*(v3 + 56))(v4, 0, 1, v2);
  sub_100008D3C(v4, &unk_1003DF000, &unk_10033EC50);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Continuing to process decline status.", v8, 2u);
  }

  v9 = *(v0 + 248);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);

  sub_100040738(v10 + 136, v0 + 16);
  v13 = *(v0 + 48);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v14 = *(v11 + *(v9 + 36));
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v16 = *(v12 + updated[6]);
  v17 = (v12 + updated[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (v12 + updated[10]);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v13 + 8);
  v28 = v23 + *v23;
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 304) = v25;
  *v25 = v0;
  v25[1] = sub_10014303C;
  v26 = *(v0 + 120);

  __asm { BRAA            X8, X16 }
}

void sub_1001442F4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 136);

  (*(v3 + 56))(v4, 1, 1, v2);
  sub_100008D3C(v4, &unk_1003DF000, &unk_10033EC50);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Continuing to process decline status.", v8, 2u);
  }

  v9 = *(v0 + 248);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);

  sub_100040738(v10 + 136, v0 + 16);
  v13 = *(v0 + 48);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v14 = *(v11 + *(v9 + 36));
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v16 = *(v12 + updated[6]);
  v17 = (v12 + updated[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (v12 + updated[10]);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v13 + 8);
  v28 = v23 + *v23;
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 304) = v25;
  *v25 = v0;
  v25[1] = sub_10014303C;
  v26 = *(v0 + 120);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1001445AC()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v13 = v0[20];
  v14 = v0[17];
  sub_100146CDC(v0[13], type metadata accessor for CustodianRecord);
  sub_10000839C(v0 + 2);

  v10 = v0[1];
  v11 = v0[39];

  return v10();
}

uint64_t sub_1001446C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v4[8] = updated;
  v6 = *(updated - 8);
  v4[9] = v6;
  v4[10] = *(v6 + 64);
  v4[11] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001447FC, 0, 0);
}

uint64_t sub_1001447FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[6];
  v24 = v0[5];
  v7 = *(v6 + *(v0[8] + 36));
  v8 = v0[9];
  v9 = v0[10];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter, v4);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v4);
  v10 = v0[2];
  v0[15] = v10;
  sub_100146EAC(v6, v3, type metadata accessor for CustodianStatusUpdateRequest);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v0[16] = v12;
  sub_100147014(v3, v12 + v11, type metadata accessor for CustodianStatusUpdateRequest);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v13 = swift_task_alloc();
  v0[17] = v13;
  v13[2] = v6;
  v13[3] = v5;
  v13[4] = v24;
  v14 = type metadata accessor for ExponentialRetryScheduler();

  v15 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[18] = v15;
  v16 = swift_allocObject();
  v0[19] = v16;
  *(v16 + 16) = 0;
  v0[3] = v15;
  v17 = swift_task_alloc();
  v0[20] = v17;
  v17[2] = v16;
  v17[3] = sub_10014707C;
  v17[4] = v12;
  v17[5] = 0xD000000000000017;
  v17[6] = 0x800000010032F110;
  v17[7] = &unk_100343538;
  v17[8] = v13;
  v17[9] = v10;
  v17[10] = v7;
  v18 = swift_allocObject();
  v0[21] = v18;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v20 = swift_task_alloc();
  v0[22] = v20;
  v21 = type metadata accessor for CustodianRecord();
  *v20 = v0;
  v20[1] = sub_100144AD8;
  v22 = v0[4];

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v22, &unk_100343540, v17, sub_10005237C, v18, v14, v21, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100144AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_100144CA8;
  }

  else
  {
    v6 = *(v2 + 160);
    v5 = *(v2 + 168);

    v4 = sub_100144BFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100144BFC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100144CA8()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[11];

  swift_unknownObjectRelease();

  v10 = v0[1];
  v11 = v0[23];

  return v10();
}

id sub_100144D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28[-1] - v7;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  if (*(a1 + updated[7]))
  {
    v10 = &kAAAnalyticsEventCustodianHealthCheckOwnerUpdatedCustodianRecord;
  }

  else
  {
    v10 = &kAAAnalyticsEventCustodianSetupOwnerUpdatedCustodianRecord;
  }

  v11 = *v10;
  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v12 = [*(*sub_1000080F8(v28 v28[3]) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_100012004();
  v18 = (a1 + updated[8]);
  v19 = *v18;
  v20 = v18[1];

  v21 = sub_100245D38(v11, v15, v17, v19, v20);
  sub_10000839C(v28);
  if (v21)
  {
    v22 = a1 + updated[10];
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v21;
    sub_100245E08(v23, v24);
  }

  return v21;
}

uint64_t sub_100144FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100145070, 0, 0);
}

uint64_t sub_100145070()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_100146EAC(v0[4], v1, type metadata accessor for CustodianStatusUpdateRequest);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  sub_100147014(v1, v6 + v5, type metadata accessor for CustodianStatusUpdateRequest);
  v0[2] = *sub_1000080F8((v4 + 56), *(v4 + 80));
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = v0 + 2;
  v7[3] = v3;
  v7[4] = sub_1001473EC;
  v7[5] = v6;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = type metadata accessor for CustodianRecord();
  *v9 = v0;
  v9[1] = sub_10014520C;
  v11 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000014, 0x800000010032F130, sub_10014746C, v7, v10);
}

uint64_t sub_10014520C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100145394;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100145328;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100145328()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100145394()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_10014540C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v134 = *(v6 - 8);
  v135 = v6;
  v7 = *(v134 + 64);
  __chkstk_darwin(v6);
  v133 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v150 = *(v9 - 8);
  v10 = *(v150 + 64);
  __chkstk_darwin(v9);
  v132 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v131 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v148 = (&v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v127 - v20;
  v22 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v144 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v127 - v26;
  v28 = type metadata accessor for CustodianRecord();
  v29 = *(*(v28 - 1) + 64);
  __chkstk_darwin(v28);
  v31 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100146EAC(a1, v31, type metadata accessor for CustodianRecord);
  v146 = *(a2 + *(type metadata accessor for CustodianStatusUpdateRequest(0) + 20));
  v32 = v13[7];
  v149 = v27;
  v32(v27, 1, 1, v12);
  v33 = *(v150 + 56);
  v142 = v21;
  v143 = v9;
  v33(v21, 1, 1, v9);
  v34 = (a3 + v28[7]);
  *v34 = 0;
  v34[1] = 0;
  v136 = v34;
  v35 = (a3 + v28[8]);
  *v35 = 0;
  v35[1] = 0;
  v137 = v35;
  v36 = (a3 + v28[13]);
  *v36 = 0;
  v36[1] = 0;
  v139 = v36;
  v37 = (a3 + v28[14]);
  *v37 = 0;
  v37[1] = 0;
  v140 = v37;
  v38 = a3 + v28[15];
  *v38 = 0;
  v141 = v38;
  *(v38 + 8) = 1;
  v138 = v28[16];
  v130 = v13 + 7;
  v129 = v32;
  v32((a3 + v138), 1, 1, v12);
  v147 = v13;
  v39 = v13[2];
  v39(a3, v31, v12);
  v40 = v28[5];
  v145 = v12;
  v39(a3 + v40, &v31[v40], v12);
  v41 = v28[11];
  v43 = *&v31[v41];
  v42 = *&v31[v41 + 8];
  v44 = (a3 + v41);
  *v44 = v43;
  v44[1] = v42;
  v45 = v28[6];
  v46 = *&v31[v45];
  v47 = *&v31[v45 + 8];
  v48 = (a3 + v45);
  *v48 = v46;
  v48[1] = v47;
  *(a3 + v28[9]) = v146;
  v49 = v28[10];
  v51 = *&v31[v49];
  v50 = *&v31[v49 + 8];
  v52 = (a3 + v49);
  *v52 = v51;
  v52[1] = v50;
  v53 = v28[12];
  v146 = v31;
  *(a3 + v53) = v31[v53];
  v54 = type metadata accessor for ContactsHelper();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();

  sub_100015D6C(v43, v42);
  sub_100052704(v51, v50);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v57 = v151;
  v58 = String._bridgeToObjectiveC()();
  v59 = [v57 contactForHandle:v58];

  swift_unknownObjectRelease();
  if (!v59)
  {

    sub_1000EF4CC();
    v63 = 0;
    v65 = v143;
LABEL_18:
    v66 = v145;
    v68 = v146;
    goto LABEL_22;
  }

  v60 = objc_allocWithZone(AALocalContactInfo);
  v61 = v59;
  v62 = String._bridgeToObjectiveC()();
  v63 = [v60 initWithHandle:v62 contact:v61];

  v64 = sub_1000EF4CC();
  v65 = v143;
  v66 = v145;
  if ((v64 & 1) == 0)
  {
    v68 = v146;
    goto LABEL_22;
  }

  v68 = v146;
  v67 = v147;
  v69 = v148;
  if (!v63)
  {
LABEL_24:
    v91 = (v68 + v28[7]);
    v92 = *v91;
    v93 = v91[1];
    v94 = v136;
    *v136 = v92;
    v94[1] = v93;
    v95 = (v68 + v28[8]);
    v97 = *v95;
    v96 = v95[1];
    v98 = v137;
    *v137 = v97;
    v98[1] = v96;

    v88 = v144;
    goto LABEL_25;
  }

  v63 = v63;
  v70 = [v63 firstName];
  if (!v70)
  {

    goto LABEL_24;
  }

  v71 = v70;
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  v75 = sub_1002576F0(v72, v74);
  v77 = v76;

  if (!v77)
  {
LABEL_22:
    v69 = v148;
    goto LABEL_23;
  }

  v63 = v63;
  v78 = [v63 lastName];
  if (!v78)
  {

    goto LABEL_22;
  }

  v79 = v78;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  v83 = sub_1002576F0(v80, v82);
  v85 = v84;

  if (!v85)
  {

    goto LABEL_18;
  }

  v128 = v83;
  v66 = v145;
  v86 = &v146[v28[7]];
  v87 = *(v86 + 1);
  v69 = v148;
  v88 = v144;
  if (v87 && (*v86 == v75 && v87 == v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v89 = &v146[v28[8]], (v90 = *(v89 + 1)) != 0) && (*v89 == v128 && v90 == v85 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v68 = v146;
LABEL_23:
    v67 = v147;
    goto LABEL_24;
  }

  v126 = v136;
  v125 = v137;
  *v136 = v75;
  v126[1] = v77;
  *v125 = v128;
  v125[1] = v85;
  v68 = v146;
  v67 = v147;
LABEL_25:
  sub_100012D04(v149, v88, &qword_1003D8B60, &unk_10033F210);
  if ((v67[6])(v88, 1, v66) == 1)
  {
    sub_100008D3C(v88, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v68 + v28[16], a3 + v138);
  }

  else
  {
    v99 = v67[4];
    v100 = v131;
    v99(v131, v88, v66);
    v148 = v28;
    v101 = v68;
    v102 = v69;
    v103 = v63;
    v104 = v65;
    v105 = v138;
    sub_100008D3C(a3 + v138, &qword_1003D8B60, &unk_10033F210);
    v99((a3 + v105), v100, v66);
    v106 = (a3 + v105);
    v65 = v104;
    v63 = v103;
    v69 = v102;
    v68 = v101;
    v28 = v148;
    v129(v106, 0, 1, v66);
  }

  v107 = (v68 + v28[13]);
  v108 = *v107;
  v109 = v107[1];
  v110 = v139;
  *v139 = v108;
  v110[1] = v109;
  v111 = v142;
  sub_100012D04(v142, v69, &qword_1003DA110, &qword_10033F230);
  v112 = v150;
  if ((*(v150 + 48))(v69, 1, v65) == 1)
  {

    sub_100008D3C(v111, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v149, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v69, &qword_1003DA110, &qword_10033F230);
    v113 = (v68 + v28[14]);
    v114 = *v113;
    v115 = v113[1];
  }

  else
  {
    v116 = v132;
    (*(v112 + 32))(v132, v69, v65);

    v117 = v133;
    sub_100195ACC(v133);
    v114 = Date.ISO8601Format(_:)();
    v115 = v118;

    (*(v134 + 8))(v117, v135);
    (*(v112 + 8))(v116, v65);
    sub_100008D3C(v111, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v149, &qword_1003D8B60, &unk_10033F210);
  }

  v119 = v140;
  *v140 = v114;
  v119[1] = v115;
  v120 = v68 + v28[15];
  v121 = *v120;
  v122 = *(v120 + 8);
  result = sub_100146CDC(v68, type metadata accessor for CustodianRecord);
  v124 = v141;
  *v141 = v121;
  *(v124 + 8) = v122;
  return result;
}

uint64_t sub_100145EC8()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);
  sub_10000839C(v0 + 22);
  v1 = OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22CustodianStatusUpdater__analyticsReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10014600C()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100146138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v27 = a2;
  v26 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v26);
  v7 = &v23 - v6;
  v8 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CustodianRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100146EAC(a3, v16, type metadata accessor for CustodianRecord);
  (*(v9 + 16))(v12, v25, v8);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_100147014(v16, v19 + v17, type metadata accessor for CustodianRecord);
  (*(v9 + 32))(v19 + v18, v12, v8);
  v20 = v26;
  (*(v4 + 16))(v7, v27 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v26);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v20);
  v21 = *sub_1000080F8(v28, v28[3]);
  sub_10017DF74(v24, 0, 2, sub_100147810, v19);

  return sub_10000839C(v28);
}

uint64_t sub_10014644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v5 = type metadata accessor for UUID();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CustodianRecord();
  v8 = *(*(v72 - 8) + 64);
  v9 = __chkstk_darwin(v72);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v69 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v69 - v18;
  __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v69 - v27);
  v78 = a1;
  v29 = a1;
  v31 = v30;
  sub_100012D04(v29, &v69 - v27, &unk_1003DA200, &unk_10033FA80);
  v77 = v31;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAE8);
    sub_100146EAC(a2, v16, type metadata accessor for CustodianRecord);
    sub_100146EAC(a2, v13, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v70 = v34;
      v37 = v36;
      v69 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v80 = v71;
      *v37 = 136315650;
      v38 = _typeName(_:qualified:)();
      v40 = v39;
      sub_100146CDC(v16, type metadata accessor for CustodianRecord);
      v41 = sub_10021145C(v38, v40, &v80);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v43 = v73;
      v42 = v74;
      v44 = v75;
      (*(v74 + 16))(v73, v13, v75);
      sub_100146CDC(v13, type metadata accessor for CustodianRecord);
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v42 + 8))(v43, v44);
      v48 = sub_10021145C(v45, v47, &v80);

      *(v37 + 14) = v48;
      *(v37 + 22) = 2112;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v49;
      v51 = v69;
      v50 = v70;
      *v69 = v49;
      _os_log_impl(&_mh_execute_header, v50, v35, "Failed to store %s locally. RecordID: %s, error: %@", v37, 0x20u);
      sub_100008D3C(v51, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100146CDC(v13, type metadata accessor for CustodianRecord);

      sub_100146CDC(v16, type metadata accessor for CustodianRecord);
    }
  }

  else
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAAE8);
    sub_100146EAC(a2, v21, type metadata accessor for CustodianRecord);
    sub_100146EAC(a2, v19, type metadata accessor for CustodianRecord);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v80 = v71;
      *v55 = 136315394;
      v56 = _typeName(_:qualified:)();
      LODWORD(v72) = v54;
      v57 = v56;
      v59 = v58;
      sub_100146CDC(v21, type metadata accessor for CustodianRecord);
      v60 = sub_10021145C(v57, v59, &v80);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = v73;
      v62 = v74;
      v63 = v75;
      (*(v74 + 16))(v73, v19, v75);
      sub_100146CDC(v19, type metadata accessor for CustodianRecord);
      sub_1001478F0(&qword_1003D9150, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v62 + 8))(v61, v63);
      v67 = sub_10021145C(v64, v66, &v80);

      *(v55 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v53, v72, "%s successfully stored locally. RecordID: %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100146CDC(v19, type metadata accessor for CustodianRecord);

      sub_100146CDC(v21, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v28, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100012D04(v78, v26, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = *v26;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100147014(v26, v76, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100146CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100146D3C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *a2;
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  sub_1002784C8(a3, a4, a5, 0, sub_10014750C, v17);
}

uint64_t sub_100146EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100146F14()
{
  v1 = (type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(v4 + v1[10] + 8);

  v7 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100147014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10014707C()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100144D70(v0 + v2, v3);
}

uint64_t sub_100147108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000082A8;

  return sub_100144FA8(a1, v4, v5, v6);
}

uint64_t sub_1001471CC(uint64_t a1)
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
  v12[1] = sub_10000EF88;

  return sub_1001308A0(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1001472C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100147300()
{
  v1 = (type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v2 + v1[10] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001473EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10014540C(a1, v6, a2);
}

uint64_t sub_100147478()
{
  v1 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10014750C(uint64_t a1)
{
  v2 = *(*(sub_100005814(&unk_1003D9200, &unk_10033EC90) - 8) + 80);

  return sub_100277AEC(a1);
}

uint64_t sub_100147594()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v20 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v19 = *(v3 + 64);
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

  v17 = (((v2 + 16) & ~v2) + v21 + v4) & ~v4;
  (*(v3 + 8))(v0 + v17, v20);

  return _swift_deallocObject(v0, v17 + v19);
}

uint64_t sub_100147810(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100005814(&unk_1003D9200, &unk_10033EC90) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10014644C(a1, v1 + v4, v7);
}

uint64_t sub_1001478F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014794C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100147A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_100147AE8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v1 <= 0x3F)
    {
      sub_10003A288();
      if (v2 <= 0x3F)
      {
        sub_100147BB4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100147BB4()
{
  if (!qword_1003DF088)
  {
    type metadata accessor for AnalyticsContextType(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DF088);
    }
  }
}

uint64_t sub_100147C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v57 = a8;
  v48 = a6;
  v49 = a5;
  v54 = a1;
  v58 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v56 = *(v58 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v58);
  v60 = &v47[-v13];
  v14 = type metadata accessor for CustodianRecord();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v14 - 8);
  v52 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47[-v19];
  v21 = kAAAnalyticsEventCustodianSetupProcessDeclineCleanup;
  v22 = a2;
  (*(v17 + 16))(&v47[-v19], a2 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore, v16);
  v23 = v21;
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v24 = [*(*sub_1000080F8(v61 v62) + 16)];
  if (v24 && (v25 = v24, v26 = [v24 aa_altDSID], v25, v26))
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v50 = a9;
  sub_100012004();

  v53 = a3;
  v59 = a4;
  v30 = sub_100245D38(v23, v27, v29, a3, a4);
  sub_10000839C(v61);
  if (v30)
  {
    v31 = v30;
    sub_100245E08(v49, v48 & 1);
  }

  sub_100040738(a2 + 16, v61);
  v49 = sub_1000080F8(v61, v62);
  v32 = v52;
  sub_100012050(a7, v52);
  v33 = v56;
  v34 = v58;
  (*(v56 + 16))(v60, v54, v58);
  v35 = (*(v51 + 80) + 33) & ~*(v51 + 80);
  v36 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = a7;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v33 + 80) + v37 + 16) & ~*(v33 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v30;
  *(v39 + 24) = v22;
  *(v39 + 32) = v57 & 1;
  sub_100012378(v32, v39 + v35);
  *(v39 + v36) = v50;
  v40 = (v39 + v37);
  v41 = v53;
  v43 = v59;
  v42 = v60;
  *v40 = v53;
  v40[1] = v43;
  (*(v33 + 32))(v39 + v38, v42, v34);
  v44 = *v49;

  v45 = v30;

  sub_10000EF8C(v54, v41, v43, sub_10014950C, v39);

  return sub_10000839C(v61);
}

uint64_t sub_100148080(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a6;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  if (a2)
  {
    if (a1)
    {
      v19 = _convertErrorToNSError(_:)();
    }

    else
    {
      v19 = 0;
    }

    [a2 updateTaskResultWithError:v19];
  }

  (*(v15 + 16))(v18, a3 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA40);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v23 + 4) = v25;
    *v24 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error cleaning up declined custodians %@", v23, 0xCu);
    sub_100083380(v24);
  }

  if (a4)
  {
    sub_10014839C(v29, v30);
  }

  sub_1001488D4(a7, a8);
  if (a1)
  {
    v31 = a1;
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

uint64_t sub_10014839C(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = type metadata accessor for CustodianRecord();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for TrustedContactUserNotification();
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v35 - v18;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return result;
    }

    sub_100012050(v43, &v35 - v18);
    swift_storeEnumTagMultiPayload();
    v20 = v42;
    (*(v42 + 16))(v13, v44 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v10);
    goto LABEL_9;
  }

  v38 = v4;
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6[2];
  v36 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController;
  v37 = v21;
  v21(v9, v44 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController, v5);
  Dependency.wrappedValue.getter();
  v22 = v6[1];
  v40 = v6 + 1;
  v22(v9, v5);
  v23 = *(*sub_1000080F8(v46, v47) + 16);
  v45[0] = 0;
  v24 = [v23 walrusStatus:v45];
  if (v45[0])
  {
    swift_willThrow();
    sub_10000839C(v46);
LABEL_8:
    sub_100012050(v43, v19);
    swift_storeEnumTagMultiPayload();
    v20 = v42;
    (*(v42 + 16))(v13, v44 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v10);
LABEL_9:
    Dependency.wrappedValue.getter();
    (*(v20 + 8))(v13, v10);
    v33 = sub_1000080F8(v45, v45[3]);
    sub_1002CA150(v46);
    v34 = *v33;
    sub_1002D2E28(v46, 0, 0);
    sub_1000C5460(v46);
    sub_10014A03C(v19, type metadata accessor for TrustedContactUserNotification);
    v32 = v45;
    return sub_10000839C(v32);
  }

  v25 = v24;
  v35 = v22;
  sub_10000839C(v46);
  if (v25 != 1)
  {
    goto LABEL_8;
  }

  v26 = v39;
  sub_100012050(v43, v39);
  v27 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_100012378(v26, v29 + v27);
  v30 = v44;
  *(v29 + v28) = v44;
  v37(v9, v30 + v36, v5);

  Dependency.wrappedValue.getter();
  v35(v9, v5);
  v31 = *sub_1000080F8(v46, v47);

  sub_10013E760(v31, sub_100149F4C, v29, v30);

  v32 = v46;
  return sub_10000839C(v32);
}

uint64_t sub_1001488D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-1] - v8;
  v10 = kAAAnalyticsEventRecoveryContactStatusUpdate;
  (*(v6 + 16))(&v23[-1] - v8, v2 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore, v5);
  v11 = v10;
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v12 = [*(*sub_1000080F8(v23 v23[3]) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_100012004();

  v18 = sub_100245D38(v11, v15, v17, a1, a2);
  result = sub_10000839C(v23);
  if (v18)
  {
    v20 = v18;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v20 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    [objc_msgSend(objc_opt_self() "reporter")];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100148B44()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__cdpRequestController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__custodianStorageController;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeclinedStatusHandler()
{
  result = qword_1003DF120;
  if (!qword_1003DF120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100148D78()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
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

uint64_t sub_100148F78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 89) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *v7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v9;
  return _swift_task_switch(sub_100148FB0, 0, 0);
}

uint64_t sub_100148FB0()
{
  v1 = *(v0 + 89);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v11 = *(v0 + 32);
  v4 = *(v0 + 88);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1 & 1;
  *(v7 + 56) = v6;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1001490F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000037, 0x800000010032F1C0, sub_100149224, v7, &type metadata for () + 8);
}

uint64_t sub_1001490F0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100122700;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10014920C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100149260()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v24 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v3 = *(v24 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);

  v5 = *(v0 + 24);

  v6 = v0 + ((v2 + 33) & ~v2);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v6 + v1[5], v7);
  v10 = *(v6 + v1[6] + 8);

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  v13 = (v6 + v1[10]);
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

  v18 = (((v22 + ((v2 + 33) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v4 + 16) & ~v4;
  v20 = *(v0 + v18 + 8);

  (*(v3 + 8))(v0 + v19, v24);

  return _swift_deallocObject(v0, v19 + v23);
}

uint64_t sub_10014950C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8);
  v9 = v1 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return sub_100148080(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8));
}

uint64_t sub_10014961C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21[-1] - v10;
  v12 = type metadata accessor for TrustedContactUserNotification();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v21[-1] - v16;
  if ((a2 & 1) == 0)
  {
    sub_100012050(a3, &v21[-1] - v16);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 16))(v11, a4 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__notificationManager, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v18 = sub_1000080F8(v21, v21[3]);
    sub_1002CA150(v22);
    v19 = *v18;
    sub_1002D2E28(v22, 0, 0);
    sub_1000C5460(v22);
    sub_10014A03C(v17, type metadata accessor for TrustedContactUserNotification);
    return sub_10000839C(v21);
  }

  return result;
}

uint64_t sub_100149814(char a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v33 = a2;
  v34 = a3;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v32 = type metadata accessor for URL();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v32);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  if (a1)
  {
    return v33(1, 0);
  }

  (*(v18 + 16))(v21, v31 + OBJC_IVAR____TtC13appleaccountd21DeclinedStatusHandler__custodianStorageController, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v21, v17);
  v23 = sub_1000080F8(v36, v36[3]);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  v26 = sub_1000080F8((*v23 + 16), *(*v23 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v10 + 8);
  v28 = v14;
  v29 = v32;
  v27(v28, v32);
  (*(v6 + 16))(v9, *v26 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v30 = *sub_1000080F8(v35, v35[3]);
  sub_1000324D8(v16, sub_10014A030, v24);

  v27(v16, v29);
  sub_10000839C(v35);
  return sub_10000839C(v36);
}

uint64_t sub_100149BC4(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v18[1] = a4;
    v13 = 0;
    v14 = *(a1 + 16);
    do
    {
      v15 = v13;
      if (v14 == v13)
      {
        break;
      }

      sub_100012050(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13++, v12);
      v16 = *&v12[*(v8 + 36)];
      sub_10014A03C(v12, type metadata accessor for CustodianRecord);
    }

    while (v16 != 2);
    a1 = v14 != v15;
  }

  a3(a1, a2 & 1);
  return sub_1000A6B60(a1, a2 & 1);
}

uint64_t sub_100149D30(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_100149D60()
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
  v17 = *(v0 + v16);

  return _swift_deallocObject(v0, v16 + 8);
}

uint64_t sub_100149F4C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014961C(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_100149FF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10014A03C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014A09C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 257) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 256) = a3;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v9 = *(type metadata accessor for CustodianRecord() - 8);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 + 64);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  *(v8 + 184) = v10;
  v11 = *(v10 - 8);
  *(v8 + 192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 208) = v13;
  v14 = *(v13 - 8);
  *(v8 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v8 + 232) = v16;
  v17 = *(v16 - 8);
  *(v8 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10014A2D4, 0, 0);
}

uint64_t sub_10014A2D4()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = kAAAnalyticsEventCustodianSetupProcessNotReachable;
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__accountStore, v3);
  v5 = v4;
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  sub_100012004();

  v14 = sub_100245D38(v5, v9, v11, v13, v12);
  sub_10000839C((v0 + 16));
  if (v14)
  {
    v15 = *(v0 + 257);
    v16 = *(v0 + 144);
    v17 = v14;
    sub_100245E08(v16, v15 & 1);
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  v21 = *(v0 + 256);
  (*(v19 + 16))(v18, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__analyticsReporter, v20);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  v22 = *(v0 + 96);
  swift_getObjectType();
  sub_100246FA8(v14);
  swift_unknownObjectRelease();
  if (v21 == 1 && *(v0 + 120) == 2)
  {
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 184);
    (*(v24 + 16))(v23, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__cdpRequestController, v25);
    Dependency.wrappedValue.getter();
    (*(v24 + 8))(v23, v25);
    v26 = *(*sub_1000080F8((v0 + 56), *(v0 + 80)) + 16);
    *(v0 + 104) = 0;
    v27 = [v26 walrusStatus:v0 + 104];
    if (*(v0 + 104))
    {
      swift_willThrow();
      sub_10000839C((v0 + 56));
    }

    else
    {
      v28 = v27;
      sub_10000839C((v0 + 56));
      if (v28 == 1)
      {
        v29 = *(v0 + 176);
        v30 = *(v0 + 152);
        v31 = *(v0 + 160);
        sub_100012050(*(v0 + 112), v29);
        v32 = (*(v31 + 80) + 24) & ~*(v31 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v30;
        sub_100012378(v29, v33 + v32);

        sub_10014AEC4(sub_10014B59C, v33);
      }
    }
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 224);
  v36 = *(v0 + 200);
  v37 = *(v0 + 176);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10014A6A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__cdpRequestController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__custodianStorageController;
  v6 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotReachableStatusHandler()
{
  result = qword_1003DF330;
  if (!qword_1003DF330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014A8D0()
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
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

uint64_t sub_10014AAC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1000082A8;

  return sub_10014A09C(a1, a2, a3, a4, a5, a6, a7 & 1);
}

void sub_10014ABA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-1] - v11;
  v13 = type metadata accessor for TrustedContactUserNotification();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v27[-1] - v16;
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v26, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v26, v19, "Error finding if a healthy custodian exists: %@", v20, 0xCu);
      sub_100083380(v21);
    }

    v23 = v26;
  }

  else if ((a1 & 1) == 0)
  {
    sub_100012050(a4, &v27[-1] - v16);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 16))(v12, a3 + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__notificationManager, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v12, v8);
    v24 = sub_1000080F8(v27, v27[3]);
    sub_1002CA150(v28);
    v25 = *v24;
    sub_1002D2E28(v28, 0, 0);
    sub_1000C5460(v28);
    sub_10014B664(v17, type metadata accessor for TrustedContactUserNotification);
    sub_10000839C(v27);
  }
}

uint64_t sub_10014AEC4(uint64_t a1, uint64_t a2)
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
  (*(v16 + 16))(&v29 - v18, v2 + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__custodianStorageController, v15);
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
  sub_1000324D8(v14, sub_10014B658, v21);

  v24(v14, v26);
  sub_10000839C(v33);
  return sub_10000839C(v34);
}

uint64_t sub_10014B250(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v18[1] = a4;
    v13 = 0;
    v14 = *(a1 + 16);
    do
    {
      v15 = v13;
      if (v14 == v13)
      {
        break;
      }

      sub_100012050(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13++, v12);
      v16 = *&v12[*(v8 + 36)];
      sub_10014B664(v12, type metadata accessor for CustodianRecord);
    }

    while (v16 != 2);
    a1 = v14 != v15;
  }

  a3(a1, a2 & 1);
  return sub_1000A6B60(a1, a2 & 1);
}

uint64_t sub_10014B3BC()
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

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_10014B59C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecord() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10014ABA8(a1, a2 & 1, v6, v7);
}

uint64_t sub_10014B620()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10014B664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014B6C4()
{
  result = sub_10014B6E8();
  qword_1003FA828 = result;
  unk_1003FA830 = v1;
  return result;
}

uint64_t sub_10014B6E8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1003084DC(0xD000000000000010, 0x800000010032F3A0), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_10014B7C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v17[1] = &_swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10015B688();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA40);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "============== appleaccountd starting ==============", v15, 2u);
  }

  return v1;
}

uint64_t sub_10014BB20()
{
  type metadata accessor for XPCNotificationObserver();
  swift_initStaticObject();
  sub_100314434();
  if (qword_1003D7E30 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1003FA948 + OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers);
  *(qword_1003FA948 + OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers) = _swiftEmptyArrayStorage;

  return swift_deallocClassInstance();
}

void sub_10014BBFC(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA40);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10021145C(v1, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "notifyd Event name: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    if (qword_1003D7DF8 != -1)
    {
      swift_once();
    }

    sub_10015B224(v1, v3);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "notifyd Event name unavailable", v11, 2u);
    }
  }
}

uint64_t sub_10014BE88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10014BEE8(void *a1)
{
  if (qword_1003D7E30 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_10024EC8C(a1);
}

uint64_t sub_10014C0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v4 - 8);
  v15 = v4;
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v18 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v19 = &off_1003B1488;
  *&v17 = a1;
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  *(a2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields) = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue;
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(a2 + v12) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10003E950(&v17, a2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController);
  return a2;
}

void sub_10014C40C()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "processLaunchEvents", v3, 2u);
  }

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  v12 = sub_10014BBFC;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10014BE88;
  v11 = &unk_1003AACA8;
  v5 = _Block_copy(&v8);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v5);
  _Block_release(v5);

  v6 = static OS_dispatch_queue.main.getter();
  v12 = sub_10014BEE8;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10014BE88;
  v11 = &unk_1003AACD0;
  v7 = _Block_copy(&v8);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v7);
  _Block_release(v7);
}

void *sub_10014C620(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v27[3] = type metadata accessor for LocalCache();
  v27[4] = &off_1003B4950;
  v27[0] = a2;
  a3[14] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a3[15] = v13;
  a3[16] = 0;
  a3[17] = &_swiftEmptyArrayStorage;
  a3[18] = [objc_allocWithZone(NSOperationQueue) init];
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  a3[19] = 0;
  a3[20] = 0;
  static DispatchQoS.unspecified.getter();
  *&v25[0] = &_swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  a3[21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = type metadata accessor for CloudKitStore();
  a3[2] = v23;
  a3[5] = v14;
  a3[6] = &off_1003B3B88;
  sub_100040738(v27, (a3 + 7));
  sub_10014EF84((a3 + 2), v25);
  type metadata accessor for CloudKitSyncPushDelegate();
  v15 = swift_allocObject();
  v16 = qword_1003D7EB0;

  if (v16 != -1)
  {
    swift_once();
  }

  *(v15 + 16) = qword_1003FA9B8;
  v17 = v25[1];
  *(v15 + 24) = v25[0];
  *(v15 + 40) = v17;
  *(v15 + 56) = v26;
  a3[12] = v15;
  v18 = type metadata accessor for CloudKitAPSBridge();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC13appleaccountd17CloudKitAPSBridge_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1003B4750;
  swift_unknownObjectWeakAssign();
  v24.receiver = v19;
  v24.super_class = v18;

  v20 = objc_msgSendSuper2(&v24, "init");
  sub_10000839C(v27);
  a3[13] = v20;
  return a3;
}

void sub_10014C9E4()
{
  v0 = type metadata accessor for DependencyRegistry.Entry();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = (v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v173 = sub_100008D04(v5, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up dependencies", v8, 2u);
  }

  v9 = type metadata accessor for DependencyRegistry();
  sub_100005814(&qword_1003D9AF0, &qword_10033F198);
  v4[3] = &type metadata for ClientInfoProvider;
  *v4 = 0xD000000000000020;
  v4[1] = 0x800000010032C200;
  v10 = v1 + 13;
  v11 = v1[13];
  v181 = enum case for DependencyRegistry.Entry.exact(_:);
  v11(v4);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v14 = v1[1];
  v13 = v1 + 1;
  v12 = v14;
  v14(v4, v0);
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  v15 = type metadata accessor for XPCActivitySchedulerFactory();
  v16 = swift_allocObject();
  v4[3] = v15;
  v17 = v11;
  v4[4] = sub_10014EF3C(&qword_1003DF5A8, type metadata accessor for XPCActivitySchedulerFactory);
  *v4 = v16;
  v176 = enum case for DependencyRegistry.Entry.factory(_:);
  v11(v4);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v14(v4, v0);
  v18 = type metadata accessor for DaemonAccountStore();
  v19 = swift_allocObject();
  v20 = [objc_opt_self() defaultStore];
  if (!v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v19 + 16) = v20;
  v174 = objc_opt_self();
  *(v19 + 24) = [v174 sharedInstance];
  v21 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  v4[3] = v18;
  *v4 = v19;
  v22 = v181;
  v180 = v10;
  (v17)(v4, v181, v0);

  v170 = v21;
  v178 = v9;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v175 = v12;
  v12(v4, v0);
  v23 = [objc_opt_self() contextForPrimaryAccount];
  v179 = v13;
  v171 = v19;
  if (!v23)
  {
    v28 = v17;
    v40 = [objc_allocWithZone(CDPWalrusStateController) init];
    v41 = [objc_allocWithZone(CDPStateController) init];
    v42 = [objc_allocWithZone(ACAccountStore) init];
    v39 = type metadata accessor for CDPRequestController();
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v42;
    v186 = v39;
    v187 = &off_1003AA7A0;
    v185[0] = v43;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Setting health check context type", v27, 2u);
  }

  v28 = v17;

  [v24 setType:15];
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Passing primary context with health check context type to CDPRequestController", v31, 2u);
  }

  v32 = objc_allocWithZone(CDPWalrusStateController);
  v33 = v24;
  v34 = [v32 initWithContext:v33];
  v35 = [objc_allocWithZone(CDPStateController) initWithContext:v33];

  if (!v35)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v36 = [objc_allocWithZone(ACAccountStore) init];
  v37 = type metadata accessor for CDPRequestController();
  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = v35;
  v38[4] = v36;
  v183 = v37;
  v184 = &off_1003AA7A0;

  *&v182 = v38;
  sub_10003E950(&v182, v185);
  v39 = v186;
LABEL_14:
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  v44 = sub_1000080F8(v185, v39);
  v4[3] = v39;
  v45 = sub_10000DBEC(v4);
  (*(*(v39 - 8) + 16))(v45, v44, v39);
  v177 = v28;
  (v28)(v4, v22, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46 = v175;
  v175(v4, v0);
  sub_100005814(&qword_1003DF5B0, &qword_100343688);
  v47 = type metadata accessor for CDPFollowUpHandlerFactory();
  v48 = swift_allocObject();
  v4[3] = v47;
  v4[4] = sub_10014EF3C(&qword_1003DF5B8, type metadata accessor for CDPFollowUpHandlerFactory);
  *v4 = v48;
  (v28)(v4, v176, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  v49 = [objc_allocWithZone(AAFollowUpController) init];
  v50 = sub_100005814(&unk_1003DACE0, &unk_10033F920);
  v4[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  *v4 = v49;
  v51 = v181;
  (v28)(v4, v181, v0);
  v173 = v49;
  v169 = v50;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  v52 = [v174 sharedInstance];
  v4[3] = sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  *v4 = v52;
  (v28)(v4, v51, v0);
  v168 = v52;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  v53 = [objc_opt_self() currentInfo];
  if (!v53)
  {
    v53 = [objc_allocWithZone(AADeviceInfo) init];
  }

  v4[3] = sub_100016034(0, &unk_1003DF5C8, AADeviceInfo_ptr);
  *v4 = v53;
  v54 = v181;
  v55 = v177;
  v177(v4, v181, v0);
  v167 = v53;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  v4[3] = &type metadata for RecoveryConstants;
  *v4 = 60;
  v55(v4, v54, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  v56 = v55;
  v57 = v46;
  v58 = [objc_allocWithZone(AAContactsManager) init];
  v4[3] = sub_100016034(0, &qword_1003DF5D8, AAContactsManager_ptr);
  *v4 = v58;
  v56(v4, v54, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  v59 = type metadata accessor for AnalyticsRTCReporter();
  v60 = [objc_allocWithZone(v59) init];
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  v4[3] = v59;
  *v4 = v60;
  v61 = v177;
  v177(v4, v181, v0);
  v166 = v60;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46(v4, v0);
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  if (qword_1003D7EA8 != -1)
  {
    swift_once();
  }

  v62 = qword_1003FA9B0;
  v4[3] = type metadata accessor for PushHelperService();
  *v4 = v62;
  v63 = v181;
  v61(v4, v181, v0);
  v64 = v62;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v57(v4, v0);
  sub_100005814(&unk_1003DF5E0, &unk_100343690);
  v4[3] = &type metadata for DeviceInfoProvider;
  v61(v4, v63, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v57(v4, v0);
  sub_100005814(&qword_1003E0400, &qword_100344870);
  v65 = v61;
  v66 = [objc_allocWithZone(AAFKeychainManager) init];
  v4[3] = sub_100016034(0, &qword_1003DF5F0, AAFKeychainManager_ptr);
  *v4 = v66;
  v67 = v181;
  v65(v4, v181, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v57(v4, v0);
  v68 = sub_100016034(0, &qword_1003DF5F8, NSUserDefaults_ptr);
  v69 = [objc_opt_self() standardUserDefaults];
  v4[3] = v68;
  *v4 = v69;
  v70 = v67;
  v71 = v177;
  v177(v4, v70, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v57(v4, v0);
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  v72 = type metadata accessor for DeviceStateFactory();
  v73 = swift_allocObject();
  v4[3] = v72;
  v4[4] = sub_10014EF3C(&qword_1003DF608, type metadata accessor for DeviceStateFactory);
  *v4 = v73;
  v71(v4, v176, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v57(v4, v0);
  v74 = type metadata accessor for CDPContextProvider();
  v75 = swift_allocObject();
  v165 = v75;
  sub_100005814(&qword_1003D9870, &qword_10033F000);
  v4[3] = v74;
  *v4 = v75;
  v76 = v0;
  v77 = v181;
  v71(v4, v181, v76);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v78 = v57;
  v57(v4, v76);
  v79 = type metadata accessor for DaemonAnalyticsAccountModel();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  v82 = swift_allocObject();
  v164 = v173;
  v83 = sub_10014C0CC(v164, v82);
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  v84 = v177;
  v4[3] = v79;
  v163[4] = v83;
  *v4 = v83;
  v84(v4, v77, v76);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v78(v4, v76);
  v85 = type metadata accessor for CloudKitStore();
  v86 = swift_allocObject();
  v86[3] = 0;
  swift_unknownObjectWeakInit();
  v87 = sub_100005814(&unk_1003D9830, &qword_10033E970);
  v4[3] = v85;
  *v4 = v86;
  v88 = v181;
  v84(v4, v181, v76);

  v173 = v87;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v89 = v175;
  v175(v4, v76);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v4[3] = v85;
  v174 = v86;
  *v4 = v86;
  v172 = v76;
  v84(v4, v88, v76);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v89(v4, v76);
  v90 = v89;
  v91 = type metadata accessor for LocalCache();
  swift_allocObject();
  v92 = sub_1003081E0();
  v93 = sub_100005814(&unk_1003DF610, &unk_1003437A0);
  v4[3] = v91;
  *v4 = v92;
  v94 = v172;
  v177(v4, v181, v172);

  v163[1] = v93;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v90(v4, v94);
  v183 = v91;
  v184 = &off_1003B4950;
  *&v182 = v92;
  v163[3] = v92;
  v95 = type metadata accessor for CloudKitSyncManager();
  v96 = swift_allocObject();
  v97 = sub_10003E968(&v182, v91);
  v98 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v97);
  v100 = (v163 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v100);
  v102 = *v100;
  v103 = v174;

  v104 = sub_10014C620(v103, v102, v96);

  sub_10000839C(&v182);
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  v4[3] = v95;
  v163[2] = v104;
  *v4 = v104;
  v105 = v181;
  v106 = v177;
  v177(v4, v181, v94);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v107 = v175;
  v175(v4, v94);
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  v108 = type metadata accessor for SmartUbiquitousKeyValueStore(0);
  v109 = *(v108 + 48);
  v110 = *(v108 + 52);
  v111 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  *(v111 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS) = 0;
  *(v111 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS) = 0;
  *(v111 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask) = 0;
  v4[3] = v108;
  *v4 = v111;
  v106(v4, v105, v94);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v107(v4, v94);
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  v112 = type metadata accessor for NotificationManagerFactory();
  v113 = swift_allocObject();
  v4[3] = v112;
  v4[4] = sub_10014EF3C(&qword_1003DF620, type metadata accessor for NotificationManagerFactory);
  *v4 = v113;
  v106(v4, v176, v94);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v114 = v107;
  v107(v4, v94);
  sub_100005814(&unk_1003DF628, &unk_100349290);
  v115 = type metadata accessor for DeamonSetupServiceRequestController();
  v116 = swift_allocObject();
  v4[3] = v115;
  *v4 = v116;
  v106(v4, v181, v94);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v107(v4, v94);
  sub_100005814(&unk_1003DA950, &unk_1003436B0);
  v117 = type metadata accessor for AAAppleIDAuthenticationProviderFactory();
  v118 = swift_allocObject();
  v4[3] = v117;
  v4[4] = sub_10014EF3C(&qword_1003DF638, type metadata accessor for AAAppleIDAuthenticationProviderFactory);
  *v4 = v118;
  v119 = v176;
  v120 = v177;
  v177(v4, v176, v94);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v114(v4, v94);
  sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  v121 = type metadata accessor for TapToRadarHelperFactory();
  v122 = swift_allocObject();
  v4[3] = v121;
  v4[4] = sub_10014EF3C(&qword_1003DF648, type metadata accessor for TapToRadarHelperFactory);
  *v4 = v122;
  v123 = v172;
  v120(v4, v119, v172);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v114(v4, v123);
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  v124 = type metadata accessor for TapToRadarRequesterFactory();
  v125 = swift_allocObject();
  v4[3] = v124;
  v4[4] = sub_10014EF3C(&qword_1003DF658, type metadata accessor for TapToRadarRequesterFactory);
  *v4 = v125;
  v126 = v177;
  v177(v4, v119, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v114(v4, v123);
  sub_100005814(&qword_1003DF660, &qword_1003436C0);
  v127 = type metadata accessor for WalrusPCSSignatureValidatorFactory();
  v128 = swift_allocObject();
  v4[3] = v127;
  v4[4] = sub_10014EF3C(&qword_1003DF668, type metadata accessor for WalrusPCSSignatureValidatorFactory);
  *v4 = v128;
  v126(v4, v119, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v114(v4, v123);
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  v129 = type metadata accessor for StorageController();
  v130 = *(v129 + 48);
  v131 = *(v129 + 52);
  v132 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v183 = v129;
  v184 = &off_1003B49F0;
  *&v182 = v132;
  v133 = sub_1000080F8(&v182, v129);
  v4[3] = v129;
  v134 = sub_10000DBEC(v4);
  (*(*(v129 - 8) + 16))(v134, v133, v129);
  v135 = v181;
  v126(v4, v181, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v136 = v175;
  v175(v4, v123);
  sub_10000839C(&v182);
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  v137 = type metadata accessor for UrlBagProvider();
  v138 = swift_allocObject();
  strcpy((v138 + 16), "custodianCfgs");
  *(v138 + 30) = -4864;
  *(v138 + 32) = 0xD000000000000026;
  *(v138 + 40) = 0x800000010032F290;
  v4[3] = v137;
  *v4 = v138;
  v126(v4, v135, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v136(v4, v123);
  sub_100005814(&qword_1003DF670, &qword_1003436C8);
  v139 = type metadata accessor for PDPAndADPCheckingFactory();
  v140 = swift_allocObject();
  v4[3] = v139;
  v4[4] = sub_10014EF3C(&qword_1003DF678, type metadata accessor for PDPAndADPCheckingFactory);
  *v4 = v140;
  v126(v4, v176, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141 = v175;
  v175(v4, v123);
  v142 = sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  v143 = [objc_allocWithZone(CDPCustodianRecoveryKeyController) init];
  v4[3] = v142;
  *v4 = v143;
  v126(v4, v181, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141(v4, v123);
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  v144 = type metadata accessor for CustodianIDMSRequestManagerFactory();
  v145 = swift_allocObject();
  v4[3] = v144;
  v4[4] = sub_10014EF3C(&unk_1003DF690, type metadata accessor for CustodianIDMSRequestManagerFactory);
  *v4 = v145;
  v126(v4, v176, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141(v4, v123);
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  v146 = [objc_opt_self() sharedService];
  v4[3] = sub_100016034(0, &qword_1003DF6A0, AAMessagingService_ptr);
  *v4 = v146;
  v147 = v181;
  v126(v4, v181, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141(v4, v123);
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  v148 = [objc_opt_self() mainBundle];
  v4[3] = &type metadata for BundleInfoProvider;
  *v4 = v148;
  v126(v4, v147, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141(v4, v123);
  sub_100005814(&unk_1003DDBF0, &qword_1003427F0);
  v149 = type metadata accessor for CustodianSPAKEFactory();
  v150 = swift_allocObject();
  v4[3] = v149;
  *v4 = v150;
  v126(v4, v147, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v141(v4, v123);
  sub_100005814(&unk_1003D9B70, &unk_10033F1B0);
  v151 = [objc_allocWithZone(AATrustedContactFlowPresenter) init];
  v4[3] = sub_100016034(0, &qword_1003DF6B0, AATrustedContactFlowPresenter_ptr);
  *v4 = v151;
  v126(v4, v147, v123);
  v152 = v126;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v153 = v175;
  v175(v4, v123);
  sub_100005814(&qword_1003DF6B8, &qword_100346BB0);
  v154 = type metadata accessor for ProtoAccountManager();
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  v157 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v4[3] = v154;
  *v4 = v157;
  v158 = v181;
  v152(v4, v181, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v153(v4, v123);
  sub_100005814(&qword_1003DF6C0, &unk_10033E6D0);
  v159 = type metadata accessor for AgeMigrationAccountManager();
  v160 = *(v159 + 48);
  v161 = *(v159 + 52);
  v162 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v4[3] = v159;
  *v4 = v162;
  v177(v4, v158, v123);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();

  sub_10000839C(v185);
  v153(v4, v123);
}

void sub_10014EAFC()
{
  if (qword_1003D7DF0 != -1)
  {
    swift_once();
  }

  if (unk_1003FA830)
  {
    v0 = qword_1003FA828;
  }

  else
  {
    v0 = 0xD000000000000012;
  }

  if (unk_1003FA830)
  {
    v1 = unk_1003FA830;
  }

  else
  {
    v1 = 0x800000010032F270;
  }

  v2 = qword_1003D7F20;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v8 = sub_10021145C(v0, v1, &v28);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting appleaccountd - %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  else
  {
  }

  sub_10014C40C();
  sub_10014C9E4();
  if (qword_1003D7DF8 != -1)
  {
    swift_once();
  }

  sub_1001566A4();
  type metadata accessor for XPCNotificationObserver();
  swift_initStaticObject();
  sub_100313FEC();
  v26 = [objc_allocWithZone(ACAccountStore) init];
  v9 = [v26 aa_primaryAppleAccount];
  if (!v9)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount", v22, 2u);
    }

    v23 = type metadata accessor for PDPAndADPChecks();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_1002A0A78();
    sub_10029FED8();

    goto LABEL_24;
  }

  v27 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v10, v11))
  {

LABEL_24:
    v19 = v26;
    goto LABEL_25;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v28 = v13;
  *v12 = 136315138;
  v14 = [v27 username];

  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_10021145C(v15, v17, &v28);

  *(v12 + 4) = v18;
  _os_log_impl(&_mh_execute_header, v10, v11, "Logged into: %s", v12, 0xCu);
  sub_10000839C(v13);

  v19 = v27;
LABEL_25:
}

uint64_t sub_10014EF3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014EF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DF6C8, qword_1003436E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014EFF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10014F014()
{
  v0 = type metadata accessor for StorageController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  if (qword_1003D7E00 != -1)
  {
    swift_once();
  }

  v4 = qword_1003FA840;
  v5 = qword_1003D7E08;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1003FA848;
  v17[3] = v0;
  v17[4] = &off_1003B49F0;
  v17[0] = v3;
  v7 = objc_allocWithZone(type metadata accessor for AppleAccountDaemonManager());
  v8 = sub_10003E968(v17, v0);
  v9 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;

  v14 = sub_100151BE4(v13, v4, v6, v7);

  sub_10000839C(v17);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

id sub_10014F284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountDaemonManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014F460(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_10014F484, 0, 0);
}

uint64_t sub_10014F484()
{
  v1 = [*(v0 + 72) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = v1;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 88) = v5;
    *(v0 + 96) = v7;
    v8 = (v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache);
    v9 = *(v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache + 24);
    v10 = v8[4];
    sub_1000080F8(v8, v9);
    *(v0 + 56) = v3;
    *(v0 + 16) = v5;
    *(v0 + 24) = v7;
    v11 = *(*(v10 + 8) + 8);
    v26 = (*(v11 + 32) + **(v11 + 32));
    v12 = *(*(v11 + 32) + 4);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_10014F7B8;

    return v26(v0 + 48, v0 + 56, v0 + 16, v9, v11);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 72);
    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA40);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get altDSID from account: %@", v21, 0xCu);
      sub_100083380(v22);
    }

    type metadata accessor for AAError(0);
    *(v0 + 40) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = *(v0 + 32);
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10014F7B8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_10014F8D0, 0, 0);
}

uint64_t sub_10014F8D0()
{
  v19 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = v0[11];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2080;
    v14 = v10;
    v15 = sub_10021145C(v9, v8, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cached login response (%@) for altDSID: %s", v11, 0x16u);
    sub_100083380(v12);

    sub_10000839C(v13);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10014FC60(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10014FD38;

  return sub_10014F460(v8, v9);
}

uint64_t sub_10014FD38()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10014FEF4(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10014FF14, 0, 0);
}

uint64_t sub_10014FF14()
{
  v1 = [*(v0 + 72) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    v7 = (v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache);
    v8 = *(v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache + 24);
    v9 = v7[4];
    sub_1000080F8(v7, v8);
    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v10 = *(*(v9 + 8) + 8);
    v25 = (*(v10 + 40) + **(v10 + 40));
    v11 = *(*(v10 + 40) + 4);
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_100150238;

    return v25(v0 + 48, v0 + 16, v8, v10);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 72);
    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 72);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get altDSID from account: %@", v20, 0xCu);
      sub_100083380(v21);
    }

    type metadata accessor for AAError(0);
    *(v0 + 40) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = *(v0 + 32);
    swift_willThrow();
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100150238()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100150334, 0, 0);
}

uint64_t sub_100150334()
{
  v30 = v0;
  v1 = v0[6];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = v0[12];
    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);
    v4 = v1;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    if (v7)
    {
      v9 = v0[11];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v10 = 138412546;
      *(v10 + 4) = v4;
      *v11 = v1;
      *(v10 + 12) = 2080;
      v13 = v4;
      v14 = sub_10021145C(v9, v8, v29);

      *(v10 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning cached login response (%@) for altDSID: %s", v10, 0x16u);
      sub_100083380(v11);

      sub_10000839C(v12);
    }

    else
    {
    }

    v25 = v0[1];

    return v25(v4);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v15 = v0[12];
    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA40);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[12];
    if (v19)
    {
      v21 = v0[11];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315138;
      v24 = sub_10021145C(v21, v20, v29);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cached login response not found for altDSID: %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    else
    {
    }

    type metadata accessor for AAError(0);
    v0[8] = -4411;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = v0[7];
    swift_willThrow();
    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100150888(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10015094C;

  return sub_10014FEF4(v6);
}

uint64_t sub_10015094C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100150B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[AppleAccountDaemonManager urlConfiguration] called.", v9, 2u);
  }

  v10 = *sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager), *(v3 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager + 24));
  return sub_100162438(a1, a2);
}

void sub_100150CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_100150D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return _swift_task_switch(sub_100150DB0, 0, 0);
}

uint64_t sub_100150DB0()
{
  sub_100040738(v0[7] + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_protoAccountManager, (v0 + 2));
  sub_1000080F8(v0 + 2, v0[5]);
  v1 = type metadata accessor for ProtoAccountManager();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100150F08;

  return (sub_100245AE4)(v1, &off_1003B0B70);
}

uint64_t sub_100150F08()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10015108C;
  }

  else
  {
    v3 = sub_10015101C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015101C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10000839C(v0 + 2);
  v1(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10015108C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  sub_10000839C(v0 + 2);
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100151268(void *a1)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "AppleAccountTool sending %@ to reporter", v6, 0xCu);
    sub_100083380(v7);
  }

  [objc_msgSend(objc_opt_self() "reporter")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001513DC(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10026028C(sub_100152D94, v8);
}

uint64_t sub_100151524(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete AppleID Availability health check: %@", v4, 0xCu);
      sub_100083380(v5);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Successfully completed AppleID Availability health check", v11, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001518E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100151990;

  return sub_100152930();
}

uint64_t sub_100151990()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100151AF4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100151B34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082A8;

  return sub_1001518E8(v2);
}

id sub_100151BE4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v43 = type metadata accessor for DependencyRegistry.Entry();
  v8 = *(v43 - 8);
  v9 = v8[8];
  __chkstk_darwin(v43);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45[3] = type metadata accessor for StorageController();
  v45[4] = &off_1003B49F0;
  v45[0] = a1;
  sub_100040738(v45, &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController]);
  v12 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache];
  *(v12 + 3) = sub_100005814(&qword_1003DF788, qword_1003437B0);
  *(v12 + 4) = sub_10015321C();
  *v12 = a2;
  v13 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager];
  *(v13 + 3) = type metadata accessor for URLConfigurationManager();
  *(v13 + 4) = &off_1003AB498;
  *v13 = a3;
  v14 = type metadata accessor for DaemonAccountStore();
  v15 = swift_allocObject();
  v16 = objc_opt_self();

  result = [v16 defaultStore];
  if (result)
  {
    *(v15 + 16) = result;
    *(v15 + 24) = [objc_opt_self() sharedInstance];
    v18 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_accountStore];
    v18[3] = v14;
    v18[4] = &off_1003AB0B8;
    *v18 = v15;
    v19 = [objc_allocWithZone(AAFollowUpController) init];
    v20 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_followUpController];
    *(v20 + 3) = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
    *(v20 + 4) = &off_1003B1488;
    *v20 = v19;
    type metadata accessor for DependencyRegistry();
    v21 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    v22 = v18[3];
    v23 = sub_1000080F8(v18, v22);
    v11[3] = v22;
    v24 = sub_10000DBEC(v11);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    v25 = enum case for DependencyRegistry.Entry.exact(_:);
    v42 = a4;
    v40 = v8[13];
    v26 = v43;
    v40(v11, enum case for DependencyRegistry.Entry.exact(_:), v43);
    v41 = v21;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v27 = v8[1];
    v27(v11, v26);
    sub_100005814(&unk_1003DACE0, &unk_10033F920);
    v28 = *(v20 + 3);
    v29 = sub_1000080F8(v20, v28);
    v11[3] = v28;
    v30 = sub_10000DBEC(v11);
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    v40(v11, v25, v26);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v27(v11, v26);
    v31 = type metadata accessor for ProtoAccountManager();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v35 = v42;
    v36 = &v42[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_protoAccountManager];
    v36[3] = v31;
    v36[4] = &off_1003B0B70;
    *v36 = v34;
    v37 = type metadata accessor for AppleAccountDaemonManager();
    v44.receiver = v35;
    v44.super_class = v37;
    v38 = objc_msgSendSuper2(&v44, "init");
    sub_10000839C(v45);
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100152054()
{
  sub_100208774();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = sub_100016034(0, &qword_1003DE9A8, ACAccount_ptr);
  sub_100256FF4(inited);
  v1 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001521EC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA40);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v28 = a2;
    v29 = v6;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    v13 = [v8 aa_altDSID];
    if (!v13)
    {
      _Block_release(a3);

      __break(1u);
      return;
    }

    v14 = v13;

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10021145C(v15, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Account %s is deleted.\nChecking if it's the primary account…", v11, 0xCu);
    sub_10000839C(v12);

    a2 = v28;
    v6 = v29;
  }

  else
  {
  }

  if ([v8 aa_isAccountClass:AAAccountClassPrimary])
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Primary account is deleted. Purging the AAD storage…", v21, 2u);
    }

    v22 = type metadata accessor for DataCryptor();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_100301968(0xD000000000000017, 0x800000010032F3E0, 0x614364726F636572, 0xEB00000000656863);
    sub_100303ECC();
    v25 = sub_1000080F8((a2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController), *(a2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController + 24));
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10005B8F8;
    *(v26 + 24) = v6;
    v27 = *v25;

    sub_10030C838(sub_1000D8510, v26);
  }

  else
  {
    a3[2](a3, 0);
  }
}

void sub_100152560(void (**a1)(void, void))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  _Block_copy(a1);
  v4 = [v3 sharedInstance];
  v5 = [v4 protoAccount];

  if (v5)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v5;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing proto account %@", v10, 0xCu);
      sub_100083380(v11);
    }

    v13 = [objc_opt_self() defaultStore];
    if (v13)
    {
      v14 = v13;
      v15 = [v3 sharedInstance];
      v16 = swift_allocObject();
      *(v16 + 16) = sub_10005B8F8;
      *(v16 + 24) = v2;
      v23[4] = sub_100152F90;
      v23[5] = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10013BB5C;
      v23[3] = &unk_1003AAE38;
      v17 = _Block_copy(v23);
      v18 = v7;

      [v14 removeAccount:v18 withCompletionHandler:v17];

      _Block_release(v17);
    }

    else
    {
      _Block_release(a1);
      __break(1u);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No proto account to remove.", v22, 2u);
    }

    a1[2](a1, 0);
  }
}

uint64_t sub_10015294C()
{
  v1 = type metadata accessor for AppleIDAvailabilityScheduler();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_10025FAD0(sub_100151268, 0, 0);
  *(v0 + 16) = v4;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting the AppleID Availability health check...", v8, 2u);
  }

  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_100152B1C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000025, 0x800000010032F5E0, sub_100152CF8, v4, &type metadata for () + 8);
}

uint64_t sub_100152B1C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100152C94;
  }

  else
  {
    v3 = sub_100152C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100152C30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100152C94()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_100152D00()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100152D94(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_100151524(a1);
}

uint64_t sub_100152E10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100152E48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100152E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EF88;

  return sub_100150D8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100152F58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100152F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100152FB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100153000()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_100150888(v2, v3, v4);
}

unint64_t sub_1001530B4()
{
  result = qword_1003D8370;
  if (!qword_1003D8370)
  {
    type metadata accessor for AAError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8370);
  }

  return result;
}

uint64_t sub_10015310C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10015315C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EF88;

  return sub_10014FC60(v2, v3, v5, v4);
}

unint64_t sub_10015321C()
{
  result = qword_1003DF790;
  if (!qword_1003DF790)
  {
    sub_100008CBC(&qword_1003DF788, qword_1003437B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DF790);
  }

  return result;
}

uint64_t sub_1001532C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DaemonActivityScheduler();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_100153330@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TrustedContactHealthScheduler();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  result = Dependency.init(dependencyId:config:)();
  a1[3] = v2;
  *a1 = v5;
  return result;
}

uint64_t sub_1001533D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(AKCustodianController) init];
  v3 = type metadata accessor for CustodianIDMSRequestManager();
  a1[3] = v3;
  v4 = sub_10000DBEC(a1);
  v5 = *(v3 + 20);
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  result = Dependency.init(dependencyId:config:)();
  *v4 = v2;
  return result;
}

uint64_t sub_1001534B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BeneficiaryAccessKeyRepairHandler();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0F80, &unk_100344570);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0F90, &unk_100343CF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0220, &unk_100344580);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  result = Dependency.init(dependencyId:config:)();
  *(v5 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext) = 1;
  a1[3] = v2;
  *a1 = v5;
  return result;
}

id sub_1001536BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UserNotificationManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v6 = [objc_allocWithZone(AAFollowUpController) init];
  v7 = (v5 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v7[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v7[4] = &off_1003B1488;
  *v7 = v6;
  v8 = type metadata accessor for NotificationController();
  result = [objc_allocWithZone(v8) init];
  v10 = (v5 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v10[3] = v8;
  v10[4] = &off_1003B3148;
  *v10 = result;
  a1[3] = v2;
  *a1 = v5;
  return result;
}

uint64_t sub_100153830@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecoveryFactorsController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  result = Dependency.init(dependencyId:config:)();
  a1[3] = v2;
  *a1 = v5;
  return result;
}

id sub_100153A54@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AAAppleIDAuthenticationController();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_100153B34@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1(0);
  result = swift_allocObject();
  a2[3] = v3;
  *a2 = result;
  return result;
}

uint64_t sub_100153B9C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AAFTapToRadarHelper) init];
  result = sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100153C50@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = a2();
  a3[3] = v5;
  *a3 = result;
  return result;
}

id sub_100153CB0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AAFollowUpController) init];
  v3 = type metadata accessor for DaemonTaskDispatcher();
  v4 = swift_allocObject();
  v5 = type metadata accessor for DaemonAccountStore();
  v6 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v6 + 16) = result;
    *(v6 + 24) = [objc_opt_self() sharedInstance];
    v22 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
    v23 = &off_1003B1488;
    *&v21 = v2;
    v19 = v3;
    v20 = &off_1003AB248;
    *&v18 = v4;
    v17[3] = v5;
    v17[4] = &off_1003AB0B8;
    v17[0] = v6;
    updated = type metadata accessor for AccountUpdatePerformer();
    v9 = swift_allocObject();
    v10 = sub_10003E968(v17, v5);
    v11 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v9[17] = v5;
    v9[18] = &off_1003AB0B8;
    v9[14] = v15;
    sub_10003E950(&v21, (v9 + 2));
    v9[7] = sub_1003162FC;
    v9[8] = 0;
    sub_10003E950(&v18, (v9 + 9));
    result = sub_10000839C(v17);
    a1[3] = updated;
    a1[4] = &off_1003B5158;
    *a1 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100153EE4()
{
  result = [objc_allocWithZone(type metadata accessor for ConnectionManager()) init];
  qword_1003FA838 = result;
  return result;
}

id sub_100153F18()
{
  v1 = v0;
  v253 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v241 = *(v253 - 8);
  v2 = *(v241 + 64);
  __chkstk_darwin(v253);
  v252 = &v230 - v3;
  v4 = type metadata accessor for DependencyRegistry.Entry();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  v9 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_daemonManager;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for AppleAccountDaemonManager()) init];
  v10 = type metadata accessor for CustodianDefaults();
  v11 = swift_allocObject();
  v12 = &v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDefaults];
  v259 = v0;
  v12[3] = v10;
  v12[4] = &off_1003A6358;
  *v12 = v11;
  v262 = type metadata accessor for DependencyRegistry();
  sub_100005814(&unk_1003E0380, &qword_100343D88);
  v13 = sub_1000080F8(v12, v10);
  v8[3] = v10;
  v14 = sub_10000DBEC(v8);
  (*(*(v10 - 8) + 16))(v14, v13, v10);
  v260 = enum case for DependencyRegistry.Entry.exact(_:);
  v15 = v5[13];
  v256 = v4;
  v15(v8);
  v258 = v15;
  v257 = v5 + 13;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v16 = v5[1];
  v16(v8, v4);
  v261 = v16;
  v263 = v5 + 1;
  v17 = type metadata accessor for TrustedContactHealthScheduler();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = sub_100005814(&qword_1003DF5A0, &qword_100343680);
  Dependency.init(dependencyId:config:)();
  v22 = &v1[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_healthScheduler];
  v22[3] = v17;
  v22[4] = &off_1003B1F08;
  *v22 = v20;
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  v23 = sub_1000080F8(v22, v17);
  v8[3] = v17;
  v24 = sub_10000DBEC(v8);
  (*(*(v17 - 8) + 16))(v24, v23, v17);
  v25 = v260;
  v26 = v256;
  (v15)(v8, v260, v256);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v27 = v26;
  v16(v8, v26);
  v28 = type metadata accessor for TrustedContactsPreflightScheduler();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v246 = v21;
  Dependency.init(dependencyId:config:)();
  *(v31 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider) = 0;
  v32 = v259;
  v33 = &v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactsPreflightScheduler];
  v33[3] = v28;
  v33[4] = &off_1003B2A20;
  *v33 = v31;
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  v34 = sub_1000080F8(v33, v28);
  v8[3] = v28;
  v35 = sub_10000DBEC(v8);
  (*(*(v28 - 8) + 16))(v35, v34, v28);
  v36 = v25;
  v37 = v25;
  v38 = v258;
  (v258)(v8, v37, v27);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v261(v8, v27);
  v39 = type metadata accessor for TrustedContactInitiator();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_100161820();
  v43 = &v32[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator];
  v43[3] = v39;
  v43[4] = &off_1003AB398;
  *v43 = v42;
  sub_100005814(&unk_1003E0390, &qword_100346800);
  v44 = sub_1000080F8(v43, v39);
  v8[3] = v39;
  v45 = sub_10000DBEC(v8);
  (*(*(v39 - 8) + 16))(v45, v44, v39);
  v38(v8, v36, v27);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v46 = v27;
  v47 = v261;
  v261(v8, v27);
  v48 = [objc_allocWithZone(AKInheritanceController) init];
  v49 = sub_100005814(&qword_1003E0F80, &unk_100344570);
  v8[3] = swift_getObjectType();
  *v8 = v48;
  v38(v8, v36, v27);
  v240 = v48;
  v254 = v49;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v47(v8, v27);
  v50 = type metadata accessor for StorageController();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  *(&v272 + 1) = v50;
  v273 = &off_1003B49F0;
  *&v271 = v53;
  v54 = type metadata accessor for InheritanceStorageController();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = v54;
  v244 = v54;
  v58 = swift_allocObject();
  v59 = sub_10003E968(&v271, v50);
  v60 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = (&v230 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v65 = v58;
  v66 = (v58 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController);
  v66[3] = v50;
  v66[4] = &off_1003B49F0;
  *v66 = v64;
  v67 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  v255 = v58;
  v251 = v67;
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v271);
  v68 = sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  v8[3] = v57;
  *v8 = v65;
  v69 = v260;
  v38(v8, v260, v46);

  v250 = v68;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v47(v8, v46);
  v70 = type metadata accessor for InheritanceSecurityController();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v73 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  v8[3] = v70;
  *v8 = v73;
  v74 = v69;
  v75 = v256;
  v38(v8, v74, v256);
  v239 = v73;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v47(v8, v75);
  v76 = type metadata accessor for InheritanceCleanupController();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = v76;
  v80 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v254 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceCleanupController;
  *&v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceCleanupController] = v80;
  v8[3] = v79;
  *v8 = v80;
  v38(v8, v260, v75);

  v242 = v79;
  v81 = v75;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v47(v8, v75);
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  Dependency.init(dependencyId:config:)();
  v82 = type metadata accessor for DaemonDestinationBuilder();
  v83 = swift_allocObject();
  Dependency.wrappedValue.getter();
  v84 = v271;
  *(&v272 + 1) = v82;
  v273 = &off_1003A9008;
  *&v271 = v83;
  v85 = type metadata accessor for DaemonIDSMessenger();
  v86 = swift_allocObject();
  v87 = sub_10003E968(&v271, v82);
  v88 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v87);
  v90 = (&v230 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90);
  v92 = *v90;
  v86[6] = v82;
  v86[7] = &off_1003A9008;
  v86[2] = v84;
  v86[3] = v92;
  v238 = v83;

  sub_10000839C(&v271);
  *(&v272 + 1) = v85;
  v273 = &off_1003B2BB0;
  *&v271 = v86;
  type metadata accessor for InheritanceSetupMessenger();
  v93 = swift_allocObject();
  v94 = sub_10003E968(&v271, v85);
  v95 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v94);
  v97 = (&v230 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = *v97;
  v93[5] = v85;
  v93[6] = &off_1003B2BB0;
  v93[2] = v99;
  v237 = v86;

  sub_10000839C(&v271);
  v100 = type metadata accessor for InheritanceCloudSharingController();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  v103 = swift_allocObject();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v249 = v103;
  Dependency.init(dependencyId:config:)();
  v104 = v255;

  v250 = v93;

  v105 = sub_10015A158(v104, v93, v103, type metadata accessor for InheritanceSetupMessenger, &off_1003AE2A0, &off_1003AEC98, type metadata accessor for BeneficiaryAcceptedStatusHandler);
  v248 = v105;
  v106 = type metadata accessor for BeneficiaryAcceptedStatusHandler();
  v8[3] = v106;
  *v8 = v105;
  v107 = v260;
  v108 = v258;
  (v258)(v8, v260, v81);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v261(v8, v81);
  v109 = type metadata accessor for UserNotificationManager();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  v112 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v113 = [objc_allocWithZone(AAFollowUpController) init];
  v114 = (v112 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v114[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v114[4] = &off_1003B1488;
  *v114 = v113;
  v115 = type metadata accessor for NotificationController();
  v116 = [objc_allocWithZone(v115) init];
  v117 = (v112 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v117[3] = v115;
  v117[4] = &off_1003B3148;
  *v117 = v116;
  v118 = *&v259[v254];
  v119 = v255;

  v247 = v112;

  v120 = v119;
  v121 = sub_10015A158(v119, v118, v112, type metadata accessor for InheritanceCleanupController, &off_1003AE988, &off_1003B3418, type metadata accessor for BeneficiaryDeclinedStatusHandler);
  v122 = type metadata accessor for BeneficiaryDeclinedStatusHandler();
  v8[3] = v122;
  *v8 = v121;
  v123 = v256;
  v108(v8, v107, v256);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v124 = v261;
  v261(v8, v123);
  v125 = v244;
  *(&v272 + 1) = v244;
  v273 = &off_1003B0008;
  *&v271 = v120;
  v126 = v120;
  v269 = v106;
  v270 = &off_1003ADB00;
  *&v268 = v248;
  v266 = v122;
  v267 = &off_1003ADCA0;
  *&v265 = v121;
  v127 = type metadata accessor for InheritanceInvitationResponseHandler();
  v128 = swift_allocObject();
  v129 = sub_10003E968(&v271, v125);
  v130 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v129);
  v132 = (&v230 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v133 + 16))(v132);
  v134 = *v132;
  v128[5] = v125;
  v128[6] = &off_1003B0008;
  v128[2] = v134;
  sub_10003E950(&v268, (v128 + 7));
  sub_10003E950(&v265, (v128 + 12));

  v236 = v121;

  sub_10000839C(&v271);
  v8[3] = v127;
  *v8 = v128;
  v135 = v260;
  v136 = v256;
  v108(v8, v260, v256);
  v245 = v128;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v124(v8, v136);
  type metadata accessor for DaemonFamilyRequester();
  v137 = swift_allocObject();
  swift_retain_n();
  v138 = v250;

  v139 = sub_100208A08(v126, v137);
  type metadata accessor for DaemonMessageUtil();
  v140 = swift_allocObject();
  v141 = sub_10015A444(v126, v138, v139, v140);
  v8[3] = type metadata accessor for InheritanceInvitationHandler();
  *v8 = v141;
  v142 = v258;
  (v258)(v8, v135, v136);
  v244 = v141;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v143 = v261;
  v261(v8, v136);

  v144 = v249;

  v145 = v247;

  v146 = sub_10015A7C8(v144, v126, v145);
  v8[3] = type metadata accessor for InheritanceAccessKeyMessageHandler();
  *v8 = v146;
  v142(v8, v135, v136);
  v243 = v146;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v143(v8, v136);
  v147 = *&v259[v254];
  v148 = v242;
  *(&v272 + 1) = v242;
  v273 = &off_1003AE988;
  *&v271 = v147;
  v149 = type metadata accessor for BeneficiaryRemovedMessageHandler();
  v150 = swift_allocObject();
  v151 = sub_10003E968(&v271, v148);
  v152 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v151);
  v154 = (&v230 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = *v154;
  v150[5] = v148;
  v150[6] = &off_1003AE988;
  v150[2] = v156;

  sub_10000839C(&v271);
  v8[3] = v149;
  *v8 = v150;
  v157 = v136;
  v158 = v258;
  (v258)(v8, v260, v136);
  v159 = v150;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v261(v8, v136);
  type metadata accessor for DaemonAccountStore();
  v160 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v160 + 16) = result;
    *(v160 + 24) = [objc_opt_self() sharedInstance];
    v162 = v245;

    v163 = v244;

    v164 = v243;

    v254 = v159;

    v165 = sub_10015AAAC(v160, v163, v162, v164, v159);
    v166 = &v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceMessageProcessor];
    *v166 = v165;
    *(v166 + 1) = &off_1003AE078;
    sub_100005814(&unk_1003E03B0, &qword_100343D98);
    v8[3] = swift_getObjectType();
    *v8 = v165;
    v167 = v260;
    (v158)(v8, v260, v157);
    v168 = v165;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v169 = v261;
    v261(v8, v157);
    v170 = sub_100016034(0, &unk_1003E6400, AAPreferences_ptr);
    v171 = [objc_allocWithZone(AAPreferences) init];
    v8[3] = v170;
    *v8 = v171;
    (v158)(v8, v167, v157);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v169(v8, v157);
    v172 = type metadata accessor for InheritanceRequestManager();
    v173 = [objc_allocWithZone(v172) init];
    v174 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager;
    v175 = v259;
    *&v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager] = v173;
    type metadata accessor for CustodianDaemonContainer();
    v271 = 0u;
    v272 = 0u;
    v273 = 0;
    swift_allocObject();
    *&v175[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer] = sub_10003AA68(&v271);
    v176 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AACustodianMachService];
    *&v175[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener] = v176;
    v177 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAccountUserNotificationMachService];
    *&v175[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener] = v177;
    v178 = type metadata accessor for PostInstallActivityScheduler();
    v179 = *(v178 + 48);
    v180 = *(v178 + 52);
    v181 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    *(v181 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider) = 0;
    *&v175[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_postInstallActivityScheduler] = v181;
    v182 = *&v175[v174];
    v8[3] = v172;
    *v8 = v182;
    v183 = v260;
    v184 = v258;
    (v258)(v8, v260, v157);
    v185 = v182;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v186 = v157;
    v187 = v261;
    v261(v8, v186);
    v188 = [objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter()) init];
    v189 = type metadata accessor for InheritanceRecordsCleaner();
    v190 = *(v189 + 48);
    v191 = *(v189 + 52);
    v192 = swift_allocObject();
    v193 = sub_10015B004(v188, v192);
    sub_100005814(&unk_1003E03C0, &unk_100343DA0);
    v8[3] = v189;
    v242 = v193;
    *v8 = v193;
    v194 = v256;
    v184(v8, v183, v256);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v187(v8, v194);
    IdentityMachService.getter();
    v195 = objc_allocWithZone(NSXPCListener);
    v196 = String._bridgeToObjectiveC()();

    v197 = [v195 initWithMachServiceName:v196];

    *&v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener] = v197;
    v198 = type metadata accessor for WalrusStateHandler();
    v199 = *(v198 + 48);
    v200 = *(v198 + 52);
    v201 = swift_allocObject();
    v231 = sub_100005814(&unk_1003D9890, &unk_1003405D0);
    Dependency.init(dependencyId:config:)();
    v202 = sub_100005814(&unk_1003DACD0, &unk_10033F020);
    v235 = v201;
    v230 = v202;
    Dependency.init(dependencyId:config:)();
    v233 = sub_100005814(&qword_1003DF600, &unk_1003436A0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9880, &unk_10033F010);
    Dependency.init(dependencyId:config:)();
    v232 = sub_100005814(&qword_1003DF5B0, &qword_100343688);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03D0, &qword_100343DB0);
    v8[3] = v198;
    *v8 = v201;
    v203 = v260;
    v204 = v256;
    v205 = v258;
    (v258)(v8, v260, v256);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v261(v8, v204);
    v206 = type metadata accessor for RecoveryKeyStateProvider();
    v207 = *(v206 + 48);
    v208 = *(v206 + 52);
    v209 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v234 = v209;
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03D8, &qword_100343DB8);
    v8[3] = v206;
    *v8 = v209;
    v205(v8, v203, v204);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v210 = v261;
    v261(v8, v204);
    sub_100005814(&qword_1003E03E0, &qword_100343DC0);
    v8[3] = &type metadata for FeatureFlagStateProvider;
    v205(v8, v203, v204);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v210(v8, v204);
    v211 = v210;
    v212 = type metadata accessor for EscrowRecordViabilityProvider();
    v213 = *(v212 + 48);
    v214 = *(v212 + 52);
    v215 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v231 = v215;
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03E8, &qword_100343DC8);
    v8[3] = v212;
    *v8 = v215;
    v216 = v258;
    (v258)(v8, v203, v204);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v211(v8, v204);
    *(&v272 + 1) = &type metadata for AAFeatureFlags;
    v273 = sub_10015B62C();
    LOBYTE(v271) = 0;
    LOBYTE(v196) = isFeatureEnabled(_:)();
    sub_10000839C(&v271);
    v217 = type metadata accessor for AppleIDAvailabilityScheduler();
    v218 = *(v217 + 48);
    v219 = *(v217 + 52);
    swift_allocObject();
    v220 = sub_10025FAD0(sub_1001560F8, 0, v196 & 1);
    v221 = v259;
    *&v259[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_appleIDAvailabilityScheduler] = v220;
    v8[3] = v217;
    *v8 = v220;
    v216(v8, v203, v204);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v222 = v261;
    v261(v8, v204);
    v223 = type metadata accessor for MaintenanceActivityScheduler();
    v224 = *(v223 + 48);
    v225 = *(v223 + 52);
    v226 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    *(v226 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider) = 0;
    *&v221[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_maintenanceActivityScheduler] = v226;
    v8[3] = v223;
    *v8 = v226;
    (v258)(v8, v203, v204);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v222(v8, v204);
    v227 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAgeMigrationMachService];
    *&v221[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener] = v227;
    v228 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAccountServiceMachService];

    (*(v241 + 8))(v252, v253);
    *&v221[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener] = v228;
    v229 = type metadata accessor for ConnectionManager();
    v264.receiver = v221;
    v264.super_class = v229;
    return objc_msgSendSuper2(&v264, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}