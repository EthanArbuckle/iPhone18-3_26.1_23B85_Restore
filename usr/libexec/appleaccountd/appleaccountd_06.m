uint64_t sub_1000B4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v36[1] = a6;
  v37 = a5;
  v10 = type metadata accessor for CustodianRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v36 - v16);
  sub_100012D04(a1, v36 - v16, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAD0);

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v38);
      *(v22 + 12) = 2048;
      *(v22 + 14) = a4;
      *(v22 + 22) = 2112;
      v25 = _convertErrorToNSError(_:)();
      *(v22 + 24) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - error marking custodian record with status %ld: %@", v22, 0x20u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v24);
    }

    swift_errorRetain();
    v37(v18);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);
    sub_1000BCC60(a3, v13, type metadata accessor for CustodianRecord);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v30 = 136315650;
      *(v30 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v38);
      *(v30 + 12) = 2080;
      v31 = *(v10 + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1000BCCC8(v13, type metadata accessor for CustodianRecord);
      v35 = sub_10021145C(v32, v34, &v38);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2048;
      *(v30 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - custodian %s has been updated with status %ld.", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v13, type metadata accessor for CustodianRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v37(0);
    return sub_100008D3C(v17, &unk_1003DA200, &unk_10033FA80);
  }
}

id sub_1000B47B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35[-1] - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35[-1] - v15;
  (*(v13 + 16))(&v35[-1] - v15, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v17 = sub_1000080F8(v35, v35[3]);
  v18 = [*(*v17 + 16) aa_primaryAppleAccount];
  if (!v18 || (v19 = v18, v20 = [v18 aa_altDSID], v19, !v20))
  {
    sub_10000839C(v35);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAD0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Account is nil. Not reporting Preflight Event.", v32, 2u);
    }

    v26 = 0;
    goto LABEL_13;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000839C(v35);
  (*(v8 + 16))(v11, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v21 = kAACustodianPreflightEvent;
  v22 = objc_opt_self();
  v23 = v21;

  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v26 = [v22 analyticsEventWithName:v23 altDSID:v24 flowID:v25];

  sub_10000839C(v35);
  if (v26)
  {
    v27 = v26;
    if (a4)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v30 = NSString.init(stringLiteral:)();
    [v26 setObject:v28 forKeyedSubscript:v30];

    swift_unknownObjectRelease();
LABEL_13:
  }

  return v26;
}

uint64_t sub_1000B4BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4D30, 0, 0);
}

uint64_t sub_1000B4D30()
{
  v1 = v0[8];
  if (v1)
  {
    if (v0[9])
    {
      v2 = v1;
      v3 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = v1;
      v3 = 0;
    }

    v9 = v0[10];
    [v1 updateTaskResultWithError:v3];

    v10 = sub_1001C1778();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for CustodianPreflightHealthCheck();
      v12 = sub_1000B6014();
      [v12 securityLevelForAccount:v11];
    }

    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v16 = v0[10];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v1 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v14 + 16))(v13, v16 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__cdpController, v15);
    Dependency.wrappedValue.getter();
    (*(v14 + 8))(v13, v15);
    v18 = [objc_allocWithZone(ACAccountStore) init];
    v19 = [v18 aa_primaryAppleAccount];

    if (v19)
    {
      v20 = [v19 aa_personID];

      if (v20)
      {
        [objc_opt_self() isICDPEnabledForDSID:v20];
      }
    }

    v21 = v0[10];
    v22 = v0[8];
    v23 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v1 setObject:v23 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v24 = v1;
    sub_1001BE1F4(v22);
    v25 = swift_task_alloc();
    v0[17] = v25;
    *v25 = v0;
    v25[1] = sub_1000B503C;
    v26 = v0[10];
    v27 = v0[8];

    return sub_1001BED5C(v27);
  }

  else
  {
    v4 = v0[16];
    v5 = v0[13];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000B503C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v3;
  v4[1] = sub_1000B51AC;
  v5 = v1[10];
  v6 = v1[8];

  return (sub_1001C0034)(v6);
}

uint64_t sub_1000B51AC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1000B52C0, 0, 0);
}

uint64_t sub_1000B52C0()
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Reporting Preflight Event %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);

  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  [*(v0 + 56) sendEvent:v14];
  swift_unknownObjectRelease();
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 64);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v16, v17, "Reported Preflight Event successfully %@", v20, 0xCu);
    sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
  }

  else
  {

    v16 = v19;
  }

  v23 = *(v0 + 128);
  v24 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000B55B4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController;
  v4 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory;
  v6 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__ttrRequester;
  v10 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider;
  v12 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController;
  v14 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__keyRepair;
  v16 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController;
  v20 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__akAccountManager;
  v22 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__cdpController;
  v24 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults);

  v26 = *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

  return v0;
}

uint64_t sub_1000B5998()
{
  sub_1000B55B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianPreflightHealthCheck()
{
  result = qword_1003DB6D0;
  if (!qword_1003DB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B5A44()
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    v24 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
    if (v3 <= 0x3F)
    {
      v25 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
      if (v5 <= 0x3F)
      {
        v26 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v7 <= 0x3F)
        {
          v27 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003DB6E0, &qword_1003DF650, &unk_1003480B0);
          if (v9 <= 0x3F)
          {
            v28 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
            if (v11 <= 0x3F)
            {
              v29 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
              if (v13 <= 0x3F)
              {
                v30 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
                if (v15 <= 0x3F)
                {
                  v31 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
                  if (v17 <= 0x3F)
                  {
                    v32 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
                    if (v19 <= 0x3F)
                    {
                      v33 = *(v18 - 8) + 64;
                      sub_10000DA14();
                      if (v21 <= 0x3F)
                      {
                        v34 = *(v20 - 8) + 64;
                        sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
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

uint64_t sub_1000B5E9C()
{
  v1 = (*v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000B5F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v7 = sub_100005814(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, *v5 + *a5, v7);
  Dependency.wrappedValue.getter();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000B6014()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, *v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

void sub_1000B613C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  sub_1000BCC60(v6, v15, a4);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10021145C(a1, a2, &v25);
    *(v19 + 12) = 2080;
    v20 = a6();
    v22 = v21;
    sub_1000BCCC8(v15, a5);
    v23 = sub_10021145C(v20, v22, &v25);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v15, a5);
  }
}

uint64_t sub_1000B636C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v41 = *(*(v1 - 8) + 80);
  v39 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v40 = (v41 + 24) & ~v41;
  v3 = v0 + v40;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v40, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v40 + v7[5], v4);
  v8 = *(v0 + v40 + v7[6] + 8);

  v9 = *(v0 + v40 + v7[7] + 8);

  v10 = *(v0 + v40 + v7[8] + 8);

  v11 = (v0 + v40 + v7[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));
  v13 = *(v3 + v7[13] + 8);

  v14 = *(v3 + v7[14] + 8);

  v15 = v7[16];
  v16 = *(v5 + 48);
  if (!v16(v3 + v15, 1, v4))
  {
    v6(v3 + v15, v4);
  }

  v38 = v1;
  v17 = v3 + *(v1 + 20);
  v6(v17, v4);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6(v17 + v18[5], v4);
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
  if (!v16(v17 + v22, 1, v4))
  {
    v6(v17 + v22, v4);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v3 + *(v38 + 24);
  v6(v24, v4);
  v25 = type metadata accessor for CustodianHealthRecord();
  v6(v24 + v25[5], v4);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v34 = *(v0 + v30 + 8);

  v35 = *(v0 + v31);
  swift_unknownObjectRelease();

  v36 = *(v0 + v33 + 8);

  return _swift_deallocObject(v0, v33 + 16);
}

uint64_t sub_1000B6748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B67B0(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B0100(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000B6894(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1000B69F4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000B6ADC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1000B69F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + v11) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000B6B54(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000B6B54(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000B6ADC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1000B69F4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000B6B54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100005814(&unk_1003DBB70, &unk_100349970);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B6D90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1002FAEE0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1000B6E00(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v118 = *(v12 - 8);
  v119 = v12;
  v13 = *(v118 + 64);
  __chkstk_darwin(v12);
  v117 = &v102 - v14;
  v15 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v102 - v18;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v116 = a5;
  v20[6] = a6;
  v21 = v16[2];
  v106 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController;
  v108 = v16 + 2;
  v107 = v21;
  v21(v19, a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController, v15);

  Dependency.wrappedValue.getter();
  v22 = v16[1];
  v110 = v19;
  v112 = v15;
  v111 = v16 + 1;
  v105 = v22;
  v22(v19, v15);
  v23 = v126;
  sub_1000080F8(v124, v125);
  v24 = *(v23 + 88);
  v109 = AAFollowUpIdentifierCustodianReview;
  v25 = v24();
  v120 = a3;
  if (!v25)
  {
    sub_10000839C(v124);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v38 = sub_100008D04(v37, qword_1003FAAD0);

    v121 = v38;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v116;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = v42;
      v45 = a6;
      v46 = swift_slowAlloc();
      v124[0] = v46;
      *v43 = 136315138;
      *(v43 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v124);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s - No pending custodian review follow up found", v43, 0xCu);
      sub_10000839C(v46);
      a6 = v45;
      v42 = v44;
    }

    v47 = v119;
    v48 = v120;
    v49 = v117;
    v50 = v118;
    (*(v118 + 16))(v117, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v119);
    Dependency.wrappedValue.getter();
    (*(v50 + 8))(v49, v47);
    v51 = [*(*sub_1000080F8(v124 v125) + 16)];
    sub_10000839C(v124);
    if (v51)
    {
      sub_1000A9F40(v42, a6, 0, v48, a4);

      return;
    }

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v124[0] = v101;
      *v100 = 136315138;
      *(v100 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v124);
      _os_log_impl(&_mh_execute_header, v98, v99, "%s - not logged in to AppleAccount, unable to Preflight", v100, 0xCu);
      sub_10000839C(v101);
    }

    type metadata accessor for AACustodianError(0);
    v123[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v97 = v124[0];
    v48(v124[0]);

    goto LABEL_42;
  }

  v26 = v25;
  v115 = a4;
  sub_10000839C(v124);
  if (qword_1003D7F50 != -1)
  {
    goto LABEL_44;
  }

LABEL_3:
  v27 = type metadata accessor for Logger();
  v28 = sub_100008D04(v27, qword_1003FAAD0);

  v29 = v26;

  v121 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v113 = v20;
  v114 = a2;
  v104 = a6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v124);
    *(v33 + 12) = 2080;
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    v34 = Array.description.getter();
    v36 = sub_10021145C(v34, v35, v124);

    *(v33 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s - Pending custodian review follow up userInfo dictionaries: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  v123[4] = &_swiftEmptySetSingleton;
  a2 = *(v26 + 16);
  if (a2)
  {
    v103 = a1;
    a1 = 0;
    v20 = (v26 + 32);
    a6 = &qword_1003D8430;
    while (1)
    {
      if (a1 >= *(v29 + 16))
      {
        __break(1u);
LABEL_44:
        swift_once();
        goto LABEL_3;
      }

      v53 = v20[a1];
      v54 = AAFollowUpTrustedContactIDs;
      v122 = AAFollowUpTrustedContactIDs;
      type metadata accessor for AAFollowUpUserInfo(0);
      sub_1000BC2E0(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo);

      v55 = v54;
      AnyHashable.init<A>(_:)();
      if (!*(v53 + 16))
      {
        break;
      }

      v56 = sub_10031B060(v124);
      if ((v57 & 1) == 0)
      {
        break;
      }

      sub_10000DB1C(*(v53 + 56) + 32 * v56, v123);
      sub_1000526B0(v124);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      if (!swift_dynamicCast())
      {
        goto LABEL_21;
      }

      v52 = v122;
      v29 = v26;
LABEL_14:
      ++a1;
      sub_1000B6D90(v52);

      if (a2 == a1)
      {
        a1 = v103;
        goto LABEL_23;
      }
    }

    sub_1000526B0(v124);
LABEL_21:
    v29 = v26;
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

LABEL_23:

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v124);
    *(v60 + 12) = 2080;
    v61 = Set.description.getter();
    v63 = sub_10021145C(v61, v62, v124);

    *(v60 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v58, v59, "%s - Checking if pending custodian review follow up needs to be dismissed for custodians: %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  v64 = v115;
  v65 = String._bridgeToObjectiveC()();
  v66 = AAPrefsDomain;
  if (AAPrefsDomain)
  {
    v67 = v65;

    v68 = CFPreferencesCopyAppValue(v67, v66);

    swift_unknownObjectRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v124[0] = v72;
      *v71 = 136315138;
      v123[0] = v68;
      swift_unknownObjectRetain();
      sub_100005814(&qword_1003DBB80, &qword_10033FC28);
      v73 = String.init<A>(describing:)();
      v75 = sub_10021145C(v73, v74, v124);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "Should Dismiss Custodian Review CFU: %s", v71, 0xCu);
      sub_10000839C(v72);
    }

    v77 = v113;
    v76 = v114;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();
    v80 = os_log_type_enabled(v78, v79);
    if (v68)
    {
      if (v80)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Not dismissing Custodian Review CFU", v81, 2u);
      }

      v82 = v117;
      v83 = v118;
      v84 = v119;
      (*(v118 + 16))(v117, v76 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v119);
      Dependency.wrappedValue.getter();
      (*(v83 + 8))(v82, v84);
      v85 = [*(*sub_1000080F8(v124 v125) + 16)];
      sub_10000839C(v124);
      if (v85)
      {
        sub_1000A9F40(v116, v104, 0, v120, v64);

        swift_unknownObjectRelease();

        return;
      }

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v124[0] = v96;
        *v95 = 136315138;
        *(v95 + 4) = sub_10021145C(*(v76 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v76 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v124);
        _os_log_impl(&_mh_execute_header, v93, v94, "%s - not logged in to AppleAccount, unable to Preflight", v95, 0xCu);
        sub_10000839C(v96);
      }

      type metadata accessor for AACustodianError(0);
      v123[0] = -7002;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v97 = v124[0];
      v120(v124[0]);

      swift_unknownObjectRelease();
LABEL_42:
    }

    else
    {
      if (v80)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Dismissing Custodian Review CFU", v86, 2u);
      }

      v87 = v110;
      v88 = v112;
      v107(v110, a1 + v106, v112);
      Dependency.wrappedValue.getter();
      v105(v87, v88);
      v89 = v125;
      v90 = v126;
      sub_1000080F8(v124, v125);
      v91 = swift_allocObject();
      *(v91 + 16) = sub_1000BCC48;
      *(v91 + 24) = v77;
      v92 = *(v90 + 32);

      v92(v109, sub_1000BCC58, v91, v89, v90);

      sub_10000839C(v124);
    }
  }

  else
  {

    __break(1u);
  }
}

BOOL sub_1000B7D84()
{
  v0 = [objc_allocWithZone(CDPWalrusStateController) init];
  v4 = 0;
  v1 = [v0 walrusStatus:&v4];
  if (v4)
  {
    swift_willThrow();

    return 0;
  }

  else
  {
    v3 = v1;

    return v3 == 1;
  }
}

void sub_1000B7E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v50[1] = a2;
  v51 = a1;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v12 = v50 - v11;
  v13 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v50 - v21;
  (*(v19 + 16))(v50 - v21, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v22, v18);
  v23 = [*(*sub_1000080F8(v56 v56[3]) + 16)];
  if (!v23 || (v24 = v23, v25 = [v23 aa_altDSID], v24, !v25))
  {
    sub_10000839C(v56);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAD0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_10;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v56);
    v35 = "%s Account is nil. Not reporting Post Repair CFU Event.";
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000839C(v56);
  (*(v14 + 16))(v17, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v26 = kAACustodianPostRepairCFUEvent;

  v27 = v26;
  v28 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v36 = [objc_opt_self() analyticsEventWithName:v27 altDSID:v28 flowID:v29];

  sub_10000839C(v56);
  if (!v36)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAD0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_10;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v56);
    v35 = "%s Event creation failed. Not reporting Post Repair CFU Event.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v31, v32, v35, v33, 0xCu);
    sub_10000839C(v34);

LABEL_10:

    sub_10031F804(v53, v54);
    return;
  }

  v37 = *(v51 + 16);
  if (v37)
  {
    v38 = *(v51 + 8 * v37 + 24);
    swift_errorRetain();
    v39 = _convertErrorToNSError(_:)();
  }

  else
  {
    v39 = 0;
  }

  [v36 updateTaskResultWithError:v39];

  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100008D04(v41, qword_1003FAAD0);
  v42 = v36;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56[0] = v47;
    *v45 = 136315394;
    *(v45 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v56);
    *(v45 + 12) = 2112;
    *(v45 + 14) = v42;
    *v46 = v36;
    v48 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s Reporting Post Repair CFU Event %@", v45, 0x16u);
    sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v47);
  }

  v49 = v52;
  (*(v52 + 16))(v12, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter, v9);
  Dependency.wrappedValue.getter();
  (*(v49 + 8))(v12, v9);
  [v56[0] sendEvent:v42];
  swift_unknownObjectRelease();
  sub_10031F804(v53, v54);
}

uint64_t sub_1000B8600(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v9 = type metadata accessor for UUID();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for CustodianshipRecords(0);
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v52 = v20;
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAD0);
  v55 = a1;
  sub_1000BCC60(a1, v22, type metadata accessor for CustodianshipRecords);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = a4;
    v27 = v26;
    v48 = swift_slowAlloc();
    v49 = a2;
    v59[0] = v48;
    *v27 = 136315394;
    *(v27 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v59);
    *(v27 + 12) = 2080;
    v28 = sub_1000A92F8();
    v29 = v12;
    v30 = v16;
    v31 = a5;
    v32 = v13;
    v34 = v33;
    sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
    v35 = sub_10021145C(v28, v34, v59);
    v13 = v32;
    a5 = v31;
    v16 = v30;
    v12 = v29;

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s - Checking CRK presence on Octagon for %s", v27, 0x16u);
    swift_arrayDestroy();
    a2 = v49;

    a4 = v50;
  }

  else
  {

    sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
  }

  (*(v13 + 16))(v16, a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v36 = sub_1000080F8(v59, v59[3]);
  v37 = v55;
  v38 = v56;
  sub_1000A8E58(v56);
  v39 = v53;
  sub_1000BCC60(v37, v53, type metadata accessor for CustodianshipRecords);
  v40 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  sub_1000B6748(v39, v42 + v40, type metadata accessor for CustodianshipRecords);
  v43 = (v42 + v41);
  *v43 = a2;
  v43[1] = &off_1003B0ED0;
  v44 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v54;
  v44[1] = a4;
  v45 = *v36;

  v46 = a2;

  sub_100018104(v38, sub_1000B8EFC, v42);

  (*(v57 + 8))(v38, v58);
  return sub_10000839C(v59);
}

uint64_t sub_1000B8B44()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v38 = *(*(v1 - 8) + 80);
  v36 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v37 = (v38 + 24) & ~v38;
  v3 = v0 + v37;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v37, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v37 + v7[5], v4);
  v8 = *(v0 + v37 + v7[6] + 8);

  v9 = *(v0 + v37 + v7[7] + 8);

  v10 = *(v0 + v37 + v7[8] + 8);

  v11 = (v0 + v37 + v7[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));
  v13 = *(v3 + v7[13] + 8);

  v14 = *(v3 + v7[14] + 8);

  v15 = v7[16];
  v16 = *(v5 + 48);
  if (!v16(v3 + v15, 1, v4))
  {
    v6(v3 + v15, v4);
  }

  v35 = v1;
  v17 = v3 + *(v1 + 20);
  v6(v17, v4);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6(v17 + v18[5], v4);
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
  if (!v16(v17 + v22, 1, v4))
  {
    v6(v17 + v22, v4);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v3 + *(v35 + 24);
  v6(v24, v4);
  v25 = type metadata accessor for CustodianHealthRecord();
  v6(v24 + v25[5], v4);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v32 = *(v0 + v30);
  swift_unknownObjectRelease();
  v33 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_1000B8EFC(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  return sub_1000B2048(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000B8FC0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v41 = *(*(v1 - 8) + 80);
  v39 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v40 = (v41 + 24) & ~v41;
  v3 = v0 + v40;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v40, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v40 + v7[5], v4);
  v8 = *(v0 + v40 + v7[6] + 8);

  v9 = *(v0 + v40 + v7[7] + 8);

  v10 = *(v0 + v40 + v7[8] + 8);

  v11 = (v0 + v40 + v7[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));
  v13 = *(v3 + v7[13] + 8);

  v14 = *(v3 + v7[14] + 8);

  v15 = v7[16];
  v16 = *(v5 + 48);
  if (!v16(v3 + v15, 1, v4))
  {
    v6(v3 + v15, v4);
  }

  v38 = v1;
  v17 = v3 + *(v1 + 20);
  v6(v17, v4);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6(v17 + v18[5], v4);
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
  if (!v16(v17 + v22, 1, v4))
  {
    v6(v17 + v22, v4);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v3 + *(v38 + 24);
  v6(v24, v4);
  v25 = type metadata accessor for CustodianHealthRecord();
  v6(v24 + v25[5], v4);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v34 = *(v0 + v30 + 8);

  v35 = *(v0 + v32);
  swift_unknownObjectRelease();
  v36 = *(v0 + v33 + 8);

  return _swift_deallocObject(v0, v33 + 16);
}

uint64_t sub_1000B939C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B04FC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1000B946C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v63 = a2;
  v5 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v58 = type metadata accessor for RecoveryKeys(0);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for CustodianshipRecords(0);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  v14 = __chkstk_darwin(v12);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v57 = type metadata accessor for CustodianRecord();
  v17 = (a1 + *(v57 + 40));
  v18 = v17[1];
  if (v18 >> 60 == 15 || (v19 = *v17, v20 = a1 + *(v12 + 20), v21 = (v20 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 32)), v22 = v21[1], v22 >> 60 == 15))
  {
    type metadata accessor for AACustodianError(0);
    v64[5] = -7019;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v64[0];
    v63(7, v64[0]);
  }

  else
  {
    v52 = v5;
    v24 = *v21;
    v55 = v19;
    sub_100052704(v19, v18);
    v53 = v24;
    v54 = v22;
    sub_100052704(v24, v22);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v56 = a3;
    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);
    sub_1000BCC60(a1, v16, type metadata accessor for CustodianshipRecords);
    v26 = v62;

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v51 = v8;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(*(v27 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v27 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v64);
      *(v31 + 12) = 2080;
      v50 = sub_1000A92F8();
      v33 = v32;
      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
      v34 = sub_10021145C(v50, v33, v64);

      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - Starting to Preflight Custodian Recovery for %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
    }

    v35 = v55;
    v36 = v52;
    sub_1000A8E58(v11 + *(v58 + 24));
    *v11 = v35;
    v11[1] = v18;
    v37 = v54;
    v11[2] = v53;
    v11[3] = v37;
    v38 = v61;
    v39 = v62;
    v40 = v51;
    (*(v61 + 16))(v51, v62 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController, v36);
    Dependency.wrappedValue.getter();
    (*(v38 + 8))(v40, v36);
    v41 = sub_1000080F8(v64, v64[3]);
    v42 = *(v57 + 20);
    v43 = v60;
    sub_1000BCC60(a1, v60, type metadata accessor for CustodianshipRecords);
    v44 = (*(v59 + 80) + 24) & ~*(v59 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    sub_1000B6748(v43, v45 + v44, type metadata accessor for CustodianshipRecords);
    v46 = (v45 + ((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    v47 = v56;
    *v46 = v63;
    v46[1] = v47;
    v48 = *v41;

    sub_100019348(a1 + v42, v11, sub_1000BACA0, v45);

    sub_1000BCCC8(v11, type metadata accessor for RecoveryKeys);
    sub_10000839C(v64);
  }
}

uint64_t sub_1000B9A7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord();
  v9 = v8 - 8;
  v74 = *(v8 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v8);
  v75 = v11;
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  __chkstk_darwin(v13);
  v71 = &v66 - v15;
  v16 = type metadata accessor for CustodianshipRecords(0);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v69 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v66 - v21;
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = swift_allocObject();
  v70 = a3;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v26 = *(v9 + 44);
  v76 = a1;
  v27 = *(a1 + v26);
  v28 = qword_1003D7F50;

  if (v27 == 3)
  {
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAD0);
    sub_1000BCC60(v76, v24, type metadata accessor for CustodianshipRecords);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v66 = v12;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v77);
      *(v33 + 12) = 2080;
      v34 = *(v67 + 24);
      v35 = v34 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      v70 = v25;
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1000BCCC8(v24, type metadata accessor for CustodianshipRecords);
      v39 = sub_10021145C(v36, v38, v77);
      v25 = v70;

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - custodian %s was marked as unreachable, marking as accepted again.", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v24, type metadata accessor for CustodianshipRecords);
    }

    v50 = v76;
    v51 = v69;
    sub_1000BCC60(v76, v69, type metadata accessor for CustodianshipRecords);
    v52 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = a2;
    sub_1000B6748(v51, v53 + v52, type metadata accessor for CustodianshipRecords);
    v54 = (v53 + ((v18 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v54 = sub_1000BAD6C;
    v54[1] = v25;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    (*(v72 + 16))(v71, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController, v73);

    Dependency.wrappedValue.getter();
    (*(v56 + 8))(v55, v57);
    v58 = sub_1000080F8(v77, v77[3]);
    v59 = v66;
    sub_1000BCC60(v50, v66, type metadata accessor for CustodianRecord);
    v60 = (*(v74 + 80) + 24) & ~*(v74 + 80);
    v61 = (v75 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = a2;
    sub_1000B6748(v59, v62 + v60, type metadata accessor for CustodianRecord);
    *(v62 + v61) = 2;
    v63 = (v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v63 = sub_1000BAD9C;
    v63[1] = v53;
    v64 = *v58;

    sub_10030C118(v50, 0, sub_1000BCD58, v62, v64, 2);

    sub_10000839C(v77);
  }

  else
  {
    if (v28 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAD0);
    sub_1000BCC60(v76, v22, type metadata accessor for CustodianshipRecords);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v77);
      *(v43 + 12) = 2080;
      v44 = *(v67 + 24);
      v45 = v44 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
      v49 = sub_10021145C(v46, v48, v77);

      *(v43 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s - custodian %s status is not unreachable, bailing.", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
    }

    v70(3, 0);
  }
}

uint64_t sub_1000BA330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CustodianshipRecords(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8 - 8);
  v42 = v10;
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = type metadata accessor for KeyRepairContext(0);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for CustodianRecord() + 20);
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 16);
  v43 = a1;
  v23(v20, a1 + v21, v22);
  v20[v17[7]] = 0;
  v20[v17[8]] = 1;
  v24 = &v20[v17[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = a2;
    v30 = a3;
    v31 = v29;
    v45[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v45);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s Starting repair keys", v28, 0xCu);
    sub_10000839C(v31);
    a3 = v30;
    a2 = v40;
  }

  (*(v12 + 16))(v15, v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__keyRepair, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v32 = sub_1000080F8(v45, v45[3]);
  v33 = v44;
  sub_1000BCC60(v43, v44, type metadata accessor for CustodianshipRecords);
  v34 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v35 = (v42 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v4;
  sub_1000B6748(v33, v36 + v34, type metadata accessor for CustodianshipRecords);
  v37 = (v36 + v35);
  *v37 = a2;
  v37[1] = a3;
  v38 = *v32;

  sub_100085FA8(v20, sub_1000BB4D4, v36);

  sub_1000BCCC8(v20, type metadata accessor for KeyRepairContext);
  return sub_10000839C(v45);
}

uint64_t sub_1000BA79C(uint64_t a1)
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

  return sub_1000B4BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BA864()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v36 = *(*(v1 - 8) + 80);
  v34 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  v35 = (v36 + 72) & ~v36;
  v5 = v0 + v35;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v35, v6);
  v9 = type metadata accessor for CustodianRecord();
  v8(v0 + v35 + v9[5], v6);
  v10 = *(v0 + v35 + v9[6] + 8);

  v11 = *(v0 + v35 + v9[7] + 8);

  v12 = *(v0 + v35 + v9[8] + 8);

  v13 = (v0 + v35 + v9[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v5 + v9[11]), *(v5 + v9[11] + 8));
  v15 = *(v5 + v9[13] + 8);

  v16 = *(v5 + v9[14] + 8);

  v17 = v9[16];
  v18 = *(v7 + 48);
  if (!v18(v5 + v17, 1, v6))
  {
    v8(v5 + v17, v6);
  }

  v33 = v1;
  v19 = v5 + *(v1 + 20);
  v8(v19, v6);
  v20 = type metadata accessor for CustodianRecoveryInfoRecord();
  v8(v19 + v20[5], v6);
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
  if (!v18(v19 + v24, 1, v6))
  {
    v8(v19 + v24, v6);
  }

  v25 = *(v19 + v20[12] + 8);

  v26 = v5 + *(v33 + 24);
  v8(v26, v6);
  v27 = type metadata accessor for CustodianHealthRecord();
  v8(v26 + v27[5], v6);
  v28 = v27[6];
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 8))(v26 + v28, v29);
  v30 = (v26 + v27[7]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100012324(*v30, v31);
  }

  sub_100012324(*(v26 + v27[8]), *(v26 + v27[8] + 8));

  return _swift_deallocObject(v0, v35 + v34);
}

uint64_t sub_1000BACB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000BACF8(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v1[4];
  }

  v5 = v1[3];
  return v3(4, v4);
}

uint64_t sub_1000BAD34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BAD6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(3, a1);
}

uint64_t sub_1000BADB4()
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

  v17 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17 + 8);

  return _swift_deallocObject(v0, v17 + 16);
}

uint64_t sub_1000BAFB4(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000B4284(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1000BB064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1000B4BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BB12C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v35 = *(*(v1 - 8) + 80);
  v33 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v36 = v0;
  v34 = (v35 + 24) & ~v35;
  v3 = v0 + v34;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v34, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v34 + v7[5], v4);
  v8 = *(v0 + v34 + v7[6] + 8);

  v9 = *(v0 + v34 + v7[7] + 8);

  v10 = *(v0 + v34 + v7[8] + 8);

  v11 = (v0 + v34 + v7[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));
  v13 = *(v3 + v7[13] + 8);

  v14 = *(v3 + v7[14] + 8);

  v15 = v7[16];
  v16 = *(v5 + 48);
  if (!v16(v3 + v15, 1, v4))
  {
    v6(v3 + v15, v4);
  }

  v17 = v3 + *(v1 + 20);
  v6(v17, v4);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6(v17 + v18[5], v4);
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
  if (!v16(v17 + v22, 1, v4))
  {
    v6(v17 + v22, v4);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v3 + *(v1 + 24);
  v6(v24, v4);
  v25 = type metadata accessor for CustodianHealthRecord();
  v6(v24 + v25[5], v4);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v31 = *(v36 + v30 + 8);

  return _swift_deallocObject(v36, v30 + 16);
}

uint64_t sub_1000BB4EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_1000BB5A4()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v37 = *(*(v1 - 8) + 80);
  v35 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  v5 = *(v0 + 72);

  v36 = (v37 + 80) & ~v37;
  v6 = v0 + v36;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v36, v7);
  v10 = type metadata accessor for CustodianRecord();
  v9(v0 + v36 + v10[5], v7);
  v11 = *(v0 + v36 + v10[6] + 8);

  v12 = *(v0 + v36 + v10[7] + 8);

  v13 = *(v0 + v36 + v10[8] + 8);

  v14 = (v0 + v36 + v10[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*(v6 + v10[11]), *(v6 + v10[11] + 8));
  v16 = *(v6 + v10[13] + 8);

  v17 = *(v6 + v10[14] + 8);

  v18 = v10[16];
  v19 = *(v8 + 48);
  if (!v19(v6 + v18, 1, v7))
  {
    v9(v6 + v18, v7);
  }

  v34 = v1;
  v20 = v6 + *(v1 + 20);
  v9(v20, v7);
  v21 = type metadata accessor for CustodianRecoveryInfoRecord();
  v9(v20 + v21[5], v7);
  v22 = *(v20 + v21[6] + 8);

  sub_100012324(*(v20 + v21[7]), *(v20 + v21[7] + 8));
  v23 = (v20 + v21[8]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100012324(*v23, v24);
  }

  sub_100012324(*(v20 + v21[9]), *(v20 + v21[9] + 8));
  v25 = v21[11];
  if (!v19(v20 + v25, 1, v7))
  {
    v9(v20 + v25, v7);
  }

  v26 = *(v20 + v21[12] + 8);

  v27 = v6 + *(v34 + 24);
  v9(v27, v7);
  v28 = type metadata accessor for CustodianHealthRecord();
  v9(v27 + v28[5], v7);
  v29 = v28[6];
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 8))(v27 + v29, v30);
  v31 = (v27 + v28[7]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100012324(*v31, v32);
  }

  sub_100012324(*(v27 + v28[8]), *(v27 + v28[8] + 8));

  return _swift_deallocObject(v0, v36 + v35);
}

uint64_t sub_1000BB9D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BBA40()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v38 = *(*(v1 - 8) + 80);
  v36 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v37 = (v38 + 32) & ~v38;
  v3 = v0 + v37;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v37, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v37 + v7[5], v4);
  v8 = *(v0 + v37 + v7[6] + 8);

  v9 = *(v0 + v37 + v7[7] + 8);

  v10 = *(v0 + v37 + v7[8] + 8);

  v11 = (v0 + v37 + v7[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));
  v13 = *(v3 + v7[13] + 8);

  v14 = *(v3 + v7[14] + 8);

  v15 = v7[16];
  v16 = *(v5 + 48);
  if (!v16(v3 + v15, 1, v4))
  {
    v6(v3 + v15, v4);
  }

  v35 = v1;
  v17 = v3 + *(v1 + 20);
  v6(v17, v4);
  v18 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6(v17 + v18[5], v4);
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
  if (!v16(v17 + v22, 1, v4))
  {
    v6(v17 + v22, v4);
  }

  v23 = *(v17 + v18[12] + 8);

  v24 = v3 + *(v35 + 24);
  v6(v24, v4);
  v25 = type metadata accessor for CustodianHealthRecord();
  v6(v24 + v25[5], v4);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  v30 = (v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v32 = *(v0 + v30);
  swift_unknownObjectRelease();
  v33 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_1000BBE00(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B13A8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000BBEC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000BBF14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BBF4C()
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
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v17 + 8);

  v21 = *(v0 + v18);

  v22 = *(v0 + v19);

  return _swift_deallocObject(v0, v19 + 8);
}

uint64_t sub_1000BC164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianRecord() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AAF44(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000BC230()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[10];

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000BC2C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BC328()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BC3B0()
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
  v19 = *(v0 + v17);

  v20 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_1000BC5B8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1000AB528(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1000BC668()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 6);

  v7 = &v0[v2];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v2], v8);
  v10(&v0[v2 + v1[5]], v8);
  v11 = *&v0[v2 + 8 + v1[6]];

  v12 = *&v0[v2 + 8 + v1[7]];

  v13 = *&v0[v2 + 8 + v1[8]];

  v14 = &v0[v2 + v1[10]];
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*&v7[v1[11]], *&v7[v1[11] + 8]);
  v16 = *&v7[v1[13] + 8];

  v17 = *&v7[v1[14] + 8];

  v18 = v1[16];
  if (!(*(v9 + 48))(&v7[v18], 1, v8))
  {
    v10(&v7[v18], v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000BC858(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1000AD82C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000BC8D4()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  v7 = &v0[v2];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v2], v8);
  v10(&v0[v2 + v1[5]], v8);
  v11 = *&v0[v2 + 8 + v1[6]];

  v12 = *&v0[v2 + 8 + v1[7]];

  v13 = *&v0[v2 + 8 + v1[8]];

  v14 = &v0[v2 + v1[10]];
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*&v7[v1[11]], *&v7[v1[11] + 8]);
  v16 = *&v7[v1[13] + 8];

  v17 = *&v7[v1[14] + 8];

  v18 = v1[16];
  if (!(*(v9 + 48))(&v7[v18], 1, v8))
  {
    v10(&v7[v18], v8);
  }

  v19 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v0[v19 + 8];

  return _swift_deallocObject(v0, v19 + 16);
}

uint64_t sub_1000BCADC()
{
  v1 = *(type metadata accessor for CustodianRecord() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_1000AB7C0(v3, v4, v5, v0 + v2, v7);
}

uint64_t sub_1000BCB94()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000BCBF4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000BCC00()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000BCC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BCCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BCD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000BF7F8(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008D3C(v12, &qword_1003DABF0, &qword_10033F8A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000BF7F8(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008D3C(v12, &qword_1003DABF0, &qword_10033F8A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000BD334(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  a2(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = a1;

    swift_errorRetain();
    sub_1000BCD5C(0, 0, v15, &unk_10033FCF0, v19);
  }

  return result;
}

uint64_t sub_1000BD4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1000082A8;

  return sub_1000BD578(a5, a6, a7, a8);
}

uint64_t sub_1000BD578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  v11 = *(v10 + 64) + 15;
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD6B4, 0, 0);
}

uint64_t sub_1000BD6B4()
{
  v73 = v0;
  v1 = v0[28];
  v2 = v0[24];
  type metadata accessor for CustodianDefaults();
  inited = swift_initStackObject();
  v0[35] = inited;
  v4 = sub_100071328(inited);
  v5 = sub_1000BE518(v2, v4);

  if (v5[2])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[36] = v6;
    sub_100008D04(v6, qword_1003FAA88);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = v5[2];

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v7, v8, "One or more CKRs state change to bad: %ld", v9, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v16 = v0[28];
    v17 = v16[5];
    v18 = v16[7];
    sub_1000080F8(v16 + 2, v17);
    (*(v18 + 88))(v17, v18);
    v19 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
    if (!v19 || (v20 = v19, v21 = [v19 aa_altDSID], v20, !v21))
    {
      sub_10000839C(v0 + 2);
      if (qword_1003D7F50 != -1)
      {
        swift_once();
      }

      v36 = v0[28];
      sub_100008D04(v6, qword_1003FAAD0);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v72 = v40;
        *v39 = 136315138;
        v41 = v16[5];
        v42 = v16[7];
        sub_1000080F8(v16 + 2, v41);
        v43 = (*(v42 + 64))(v41, v42);
        v45 = sub_10021145C(v43, v44, &v72);

        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "%s Account is nil. Not reporting Post Repair CFU Event.", v39, 0xCu);
        sub_10000839C(v40);

        goto LABEL_26;
      }

LABEL_25:

      goto LABEL_26;
    }

    v22 = v0[33];
    v23 = v0[34];
    v24 = v0[32];
    v25 = v0[28];
    v26 = v0[26];
    v71 = v0[25];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v0 + 2);
    (*(v22 + 16))(v23, v25 + OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsEventFactory, v24);
    Dependency.wrappedValue.getter();
    (*(v22 + 8))(v23, v24);
    v27 = kAAAnalyticsEventCustodianPreflightCRKStateChangedFromGoodToBad;
    v28 = objc_opt_self();
    v29 = v27;

    v30 = String._bridgeToObjectiveC()();

    v31 = String._bridgeToObjectiveC()();

    v32 = [v28 analyticsEventWithName:v29 altDSID:v30 flowID:v31];
    v0[37] = v32;

    sub_10000839C(v0 + 7);
    if (v32)
    {
      if (v0[27])
      {
        swift_getErrorValue();
        v33 = v0[17];
        v34 = v0[19];
        sub_10025648C(v0[18]);
        v35 = _convertErrorToNSError(_:)();
      }

      else
      {
        v35 = 0;
      }

      v50 = v0[28];
      [v32 updateTaskResultWithError:v35];

      sub_1001C14E8();
      v52 = v51;
      v53 = v16[5];
      v54 = v16[7];
      sub_1000080F8(v16 + 2, v53);
      v55 = (*(v54 + 96))(v53, v54);
      if (v52)
      {

        v56 = String._bridgeToObjectiveC()();
        v57 = [v55 authKitAccountWithAltDSID:v56];

        swift_bridgeObjectRelease_n();
        if (!v57)
        {
          goto LABEL_34;
        }

        v58 = v16[5];
        v59 = v16[7];
        sub_1000080F8(v16 + 2, v58);
        v55 = (*(v59 + 96))(v58, v59);
        [v55 securityLevelForAccount:v57];
      }

LABEL_34:
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      [v32 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

      v61 = v16[5];
      v62 = v16[7];
      sub_1000080F8(v16 + 2, v61);
      (*(v62 + 80))(v61, v62);
      v63 = [objc_allocWithZone(ACAccountStore) init];
      v64 = [v63 aa_primaryAppleAccount];

      if (v64)
      {
        v65 = [v64 aa_personID];

        if (v65)
        {
          [objc_opt_self() isICDPEnabledForDSID:v65];
        }
      }

      v66 = v0[28];
      v67 = Bool._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v0 + 12);
      [v32 setObject:v67 forKeyedSubscript:kAAAnalyticsCdpStatus];

      v68 = v32;
      sub_1001BE4D0(v32);
      v69 = swift_task_alloc();
      v0[38] = v69;
      *v69 = v0;
      v69[1] = sub_1000BDFD8;
      v70 = v0[28];

      return sub_1001BF268(v32);
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Telemetry event creation failed";
      goto LABEL_10;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v12 = Logger.logObject.getter();
  LOBYTE(v13) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_24;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = "CKRs state did not change from previous preflight run";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_26:
  v46 = v0[34];
  v47 = v0[31];

  v48 = v0[1];

  return v48();
}

uint64_t sub_1000BDFD8()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 312) = v5;
  *v5 = v4;
  v5[1] = sub_1000BE148;
  v6 = *(v1 + 224);

  return (sub_1001C0580)(v3);
}

uint64_t sub_1000BE148()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_1000BE25C, 0, 0);
}

uint64_t sub_1000BE25C()
{
  v27 = v0;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  sub_100008D04(*(v0 + 288), qword_1003FAAD0);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v11 = v7[5];
    v12 = v7[7];
    sub_1000080F8(v7 + 2, v11);
    v13 = (*(v12 + 64))(v11, v12);
    v15 = sub_10021145C(v13, v14, &v26);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v6;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Reporting Post Repair CFU Event %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 280);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 232);
  (*(v20 + 16))(v19, *(v0 + 224) + OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsRTCReporter, v21);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v19, v21);
  [*(v0 + 176) sendEvent:v17];
  swift_unknownObjectRelease();

  v22 = *(v0 + 272);
  v23 = *(v0 + 248);

  v24 = *(v0 + 8);

  return v24();
}

void *sub_1000BE518(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F50 != -1)
  {
LABEL_57:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAD0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v123 = v10;
    *v9 = 136315138;
    v11 = v3[5];
    v12 = v3[7];
    sub_1000080F8(v3 + 2, v11);
    v13 = (*(v12 + 64))(v11, v12);
    v15 = sub_10021145C(v13, v14, &v123);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s listOfCRKStateChangedToBad was called.", v9, 0xCu);
    sub_10000839C(v10);
  }

  v124 = &_swiftEmptySetSingleton;
  v16 = a1;
  v18 = a1[8];
  a1 += 8;
  v17 = v18;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v121 = v16;

  v23 = 0;
  v122 = v3;
  v120 = a2;
  while (v21)
  {
    v24 = v23;
LABEL_13:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v24 << 6);
    v27 = (v121[6] + 16 * v26);
    v28 = v27[1];
    v116 = *v27;
    v118 = *(v121[7] + v26);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v111 = v28;
      v31 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v31 = 136315650;
      v32 = v122[5];
      v33 = v122[7];
      sub_1000080F8(v122 + 2, v32);
      v34 = *(v33 + 64);
      v35 = v33;
      a2 = v120;
      v36 = v34(v32, v35);
      v38 = sub_10021145C(v36, v37, &v123);

      *(v31 + 4) = v38;
      v3 = v122;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_10021145C(v116, v111, &v123);
      *(v31 + 22) = 1024;
      *(v31 + 24) = v118;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Past Key: %s Bool: %{BOOL}d", v31, 0x1Cu);
      swift_arrayDestroy();
    }

    v23 = v24;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = a1[v24];
    ++v23;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  a1 = (a2 + 64);
  v39 = 1 << *(a2 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(a2 + 64);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  while (v41)
  {
    v44 = v43;
LABEL_24:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = v45 | (v44 << 6);
    v47 = (*(a2 + 48) + 16 * v46);
    v48 = v47[1];
    v117 = *v47;
    v119 = *(*(a2 + 56) + v46);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v112 = v48;
      v51 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v51 = 136315650;
      v52 = v122[5];
      v53 = v122[7];
      sub_1000080F8(v122 + 2, v52);
      v54 = *(v53 + 64);
      v55 = v53;
      a2 = v120;
      v56 = v54(v52, v55);
      v58 = sub_10021145C(v56, v57, &v123);

      *(v51 + 4) = v58;
      v3 = v122;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_10021145C(v117, v112, &v123);
      *(v51 + 22) = 1024;
      *(v51 + 24) = v119;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s Current Key: %s Bool: %{BOOL}d", v51, 0x1Cu);
      swift_arrayDestroy();
    }

    v43 = v44;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_55;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = a1[v44];
    ++v43;
    if (v41)
    {
      goto LABEL_24;
    }
  }

  a1 = v121;

  v60 = sub_1002DF678(v59);
  v61 = sub_1000CE940(a2, v60);
  v62 = v61;
  v63 = 0;
  v64 = v61 + 56;
  v65 = 1 << *(v61 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  a2 = v66 & *(v61 + 56);
  v3 = ((v65 + 63) >> 6);
  while (a2)
  {
    v67 = a2;
LABEL_36:
    a2 = (v67 - 1) & v67;
    if (a1[2])
    {
      v69 = (*(v62 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v67)))));
      v70 = *v69;
      v71 = v69[1];

      v72 = sub_1003084DC(v70, v71);
      if ((v73 & 1) != 0 && *(v120 + 16))
      {
        v74 = *(a1[7] + v72);
        v75 = sub_1003084DC(v70, v71);
        if (v76)
        {
          v114 = v62;
          v115 = *(*(v120 + 56) + v75);

          v77 = Logger.logObject.getter();
          v78 = v74;
          v79 = static os_log_type_t.debug.getter();

          v113 = v79;
          v80 = v79;
          v81 = v78;
          v82 = v77;
          v83 = os_log_type_enabled(v77, v80);
          if (!v81 || (v115 & 1) != 0)
          {
            v62 = v114;
            if (v83)
            {
              v90 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              *v90 = 136315906;
              v107 = v122[7];
              v108 = v122[5];
              sub_1000080F8(v122 + 2, v108);
              log = v82;
              v91 = (*(v107 + 64))(v108);
              v109 = sub_10021145C(v91, v92, &v123);

              *(v90 + 4) = v109;
              *(v90 + 12) = 2080;
              v93 = sub_10021145C(v70, v71, &v123);

              *(v90 + 14) = v93;
              *(v90 + 22) = 1024;
              *(v90 + 24) = v81;
              *(v90 + 28) = 1024;
              *(v90 + 30) = v115;
              v82 = log;
              _os_log_impl(&_mh_execute_header, log, v113, "%s Preflight result for uuid: %s, previous: %{BOOL}d, current: %{BOOL}d", v90, 0x22u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a1 = v121;
          }

          else
          {
            if (v83)
            {
              v84 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              *v84 = 136315394;
              v85 = v122[5];
              v86 = v122[7];
              sub_1000080F8(v122 + 2, v85);
              v87 = (*(v86 + 64))(v85, v86);
              v89 = sub_10021145C(v87, v88, &v123);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2080;
              *(v84 + 14) = sub_10021145C(v70, v71, &v123);
              _os_log_impl(&_mh_execute_header, v82, v113, "%s Preflight result for uuid: %s, transitioning from good to bad", v84, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a1 = v121;
            v62 = v114;
            sub_1002FAEE0(&v123, v70, v71);
          }
        }

        else
        {

          a1 = v121;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_56;
    }

    if (v68 >= v3)
    {
      break;
    }

    v67 = *(v64 + 8 * v68);
    ++v63;
    if (v67)
    {
      v63 = v68;
      goto LABEL_36;
    }
  }

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v96 = 136315394;
    v97 = v122[5];
    v98 = v122[7];
    sub_1000080F8(v122 + 2, v97);
    v99 = (*(v98 + 64))(v97, v98);
    v101 = sub_10021145C(v99, v100, &v123);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2080;
    swift_beginAccess();

    v102 = Set.description.getter();
    v104 = v103;

    v105 = sub_10021145C(v102, v104, &v123);

    *(v96 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v94, v95, "%s listOfCRKStateChangedToBad: Returning %s.", v96, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  return v124;
}

uint64_t sub_1000BF0C8()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsEventFactory;
  v2 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsRTCReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianPreflightHealthCheckSequoiaB()
{
  result = qword_1003DBBD8;
  if (!qword_1003DBBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BF218()
{
  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
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

uint64_t sub_1000BF31C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1000BF378()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_1000BF3DC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 88))(v1, v2);
}

uint64_t sub_1000BF440()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 96))(v1, v2);
}

uint64_t sub_1000BF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for CustodianDefaults();
  inited = swift_initStackObject();
  v11 = sub_100071328(inited);
  v12 = v9[5];
  v13 = v9[6];
  sub_1000080F8(v9 + 2, v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = v11;
  v15[6] = a1;
  v15[7] = a2;
  v16 = *(v13 + 8);
  v17 = *(v16 + 16);

  v17(a1, a2, sub_1000BF6B4, v15, v12, v16);
}

uint64_t sub_1000BF5D8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_1000080F8((v1 + 16), v2);
  return (*(*(v3 + 8) + 24))(v2) & 1;
}

uint64_t sub_1000BF62C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BF664()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000BF6C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BF71C(uint64_t a1)
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

  return sub_1000BD4B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BF7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF868(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000BF960;

  return v7(a1);
}

uint64_t sub_1000BF960()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BFA58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BFA90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_1000BF868(a1, v5);
}

uint64_t sub_1000BFB48(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1000BFC3C;

  return v6(v2 + 16);
}

uint64_t sub_1000BFC3C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000BFD6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_1000BFB48(a1, v5);
}

uint64_t sub_1000BFE24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000BFB48(a1, v5);
}

id sub_1000BFEE8(char a1, unsigned __int8 a2)
{
  v2 = -7200 - a2;
  if (a1 == 3)
  {
    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v7;
  }

  else
  {
    sub_1002A18BC();
    swift_getErrorValue();
    v4 = sub_100255F6C(v2, v5, v6);

    return v4;
  }
}

unint64_t sub_1000BFFBC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0C88(*a1);
  *a2 = result;
  return result;
}

id sub_1000C00B4(char a1, char a2, unsigned __int8 a3)
{
  v3 = (a3 >> 6);
  if ((a3 >> 6) > 1u)
  {
    v5 = -7352;
    if ((a1 & 1) == 0)
    {
      v5 = -7302;
    }

    v6 = -7353;
    if ((a1 & 1) == 0)
    {
      v6 = -7303;
    }

    if (v3 == 2)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_13;
  }

  if (a3 >> 6)
  {
    if (a1)
    {
      v4 = -7351;
    }

    else
    {
      v4 = -7301;
    }

LABEL_13:
    sub_1000BFEE8(a2, a3 & 0x3F);
    swift_getErrorValue();
    v3 = sub_100255F6C(v4, v8, v9);
  }

  return v3;
}

uint64_t sub_1000C016C()
{
  v1 = 0x6574656C706D6F63;
  v2 = 0x6E776F446E726F74;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x676E69646E6570;
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

uint64_t sub_1000C01F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C0E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C0234(uint64_t a1)
{
  v2 = sub_1000C1770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0270(uint64_t a1)
{
  v2 = sub_1000C1770();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C02AC(void *a1, int a2)
{
  v39 = a2;
  v3 = sub_100005814(&qword_1003DBD78, &qword_10033FE20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v31 - v5;
  v6 = sub_100005814(&qword_1003DBD80, &qword_10033FE28);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100005814(&qword_1003DBD88, &qword_10033FE30);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_100005814(&qword_1003DBD90, &qword_10033FE38);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = sub_100005814(&qword_1003DBD98, &qword_10033FE40);
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  v22 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000C1770();
  v23 = v39;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v23 >> 6) > 1u)
  {
    if (v23 >> 6 == 2)
    {
      v46 = 2;
      sub_1000C186C();
      v24 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v23 & 0x3F;
      sub_1000C1968();
      v25 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = *(v34 + 8);
      v27 = v9;
    }

    else
    {
      v48 = 3;
      sub_1000C17C4();
      v30 = v36;
      v24 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v23 & 0x3F;
      sub_1000C1968();
      v25 = v38;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = *(v37 + 8);
      v27 = v30;
    }

    v26(v27, v25);
  }

  else
  {
    if (v23 >> 6)
    {
      v44 = 1;
      sub_1000C18C0();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v23 & 0x3F;
      sub_1000C1968();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v33 + 8))(v13, v10);
      return (*(v40 + 8))(v21, v28);
    }

    v42 = 0;
    sub_1000C1914();
    v24 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v32 + 8))(v17, v14);
  }

  return (*(v40 + 8))(v21, v24);
}

uint64_t sub_1000C0804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000C088C(uint64_t a1)
{
  v2 = sub_1000C1914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C08C8(uint64_t a1)
{
  v2 = sub_1000C1914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0958(uint64_t a1)
{
  v2 = sub_1000C17C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0994(uint64_t a1)
{
  v2 = sub_1000C17C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C09D0(uint64_t a1)
{
  v2 = sub_1000C18C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0A0C(uint64_t a1)
{
  v2 = sub_1000C18C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000C0A48()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000C0A8C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000C0ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000C0B50(uint64_t a1)
{
  v2 = sub_1000C186C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C0B8C(uint64_t a1)
{
  v2 = sub_1000C186C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0BD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0FB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1000C0C1C(int a1, int a2)
{
  v2 = a2 ^ a1;
  v3 = ((a2 ^ a1) & 0x3F) == 0;
  if ((a2 & 0xC0) != 0x80)
  {
    v3 = 0;
  }

  v4 = (v2 & 0x3F) == 0;
  if (a2 <= 0xBFu)
  {
    v4 = 0;
  }

  if (a1 >> 6 != 2)
  {
    v3 = v4;
  }

  v5 = v2 ^ 1;
  if (a2 >= 0x40u)
  {
    v5 = 0;
  }

  v6 = (v2 & 0x3F) == 0;
  v7 = (a2 & 0xC0) == 0x40 && v6;
  if (!(a1 >> 6))
  {
    v7 = v5;
  }

  if ((a1 >> 6) <= 1u)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C0C88(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupReadinessState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD)
  {
    goto LABEL_17;
  }

  if (a2 + 243 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 243) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 243;
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

      return (*a1 | (v4 << 8)) - 243;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 243;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CustodianSetupReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 243 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 243) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD)
  {
    v4 = 0;
  }

  if (a2 > 0xC)
  {
    v5 = ((a2 - 13) >> 8) + 1;
    *result = a2 - 13;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C0E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F446E726F74 && a2 == 0xEF726568744F7942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000C0FB8(uint64_t *a1)
{
  v47 = sub_100005814(&qword_1003DBD18, &qword_10033FDF0);
  v50 = *(v47 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v47);
  v52 = &v43 - v3;
  v46 = sub_100005814(&qword_1003DBD20, &qword_10033FDF8);
  v49 = *(v46 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v46);
  v51 = &v43 - v5;
  v44 = sub_100005814(&qword_1003DBD28, &qword_10033FE00);
  v48 = *(v44 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v44);
  v8 = &v43 - v7;
  v9 = sub_100005814(&qword_1003DBD30, &qword_10033FE08);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_100005814(&qword_1003DBD38, &qword_10033FE10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v54 = a1;
  sub_1000080F8(a1, v19);
  sub_1000C1770();
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v21 = v12;
    v18 = v8;
    v22 = v51;
    v23 = v52;
    v43 = 0;
    v53 = v14;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 4) : (v27 = 1), v27))
    {
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      v30 = v17;
      v31 = *(sub_100005814(&qword_1003DBD48, &qword_10033FE18) + 48);
      *v29 = &type metadata for CustodianSetupReadinessState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v53 + 8))(v30, v13);
    }

    else if (*(v24 + 32) > 1u)
    {
      v34 = v53;
      if (v26 == 2)
      {
        v59 = 2;
        sub_1000C186C();
        v35 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v35)
        {
          sub_1000C1818();
          v36 = v46;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v49 + 8))(v22, v36);
          (*(v34 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v18 = v58 | 0xFFFFFF80;
          goto LABEL_22;
        }
      }

      else
      {
        v61 = 3;
        sub_1000C17C4();
        v39 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v39)
        {
          sub_1000C1818();
          v40 = v47;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(v23, v40);
          (*(v34 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v18 = v60 | 0xFFFFFFC0;
          goto LABEL_22;
        }
      }

      (*(v34 + 8))(v17, v13);
    }

    else
    {
      if (*(v24 + 32))
      {
        v57 = 1;
        sub_1000C18C0();
        v37 = v18;
        v38 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v38)
        {
          sub_1000C1818();
          v42 = v44;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v48 + 8))(v37, v42);
          (*(v53 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v18 = v56 | 0x40u;
          goto LABEL_22;
        }
      }

      else
      {
        v55 = 0;
        sub_1000C1914();
        v32 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          v33 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v45 + 8))(v21, v9);
          (*(v53 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v18 = v33 & 1;
          goto LABEL_22;
        }
      }

      (*(v53 + 8))(v17, v13);
    }

    swift_unknownObjectRelease();
  }

LABEL_22:
  sub_10000839C(v54);
  return v18;
}

unint64_t sub_1000C1770()
{
  result = qword_1003DBD40;
  if (!qword_1003DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD40);
  }

  return result;
}

unint64_t sub_1000C17C4()
{
  result = qword_1003DBD50;
  if (!qword_1003DBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD50);
  }

  return result;
}

unint64_t sub_1000C1818()
{
  result = qword_1003DBD58;
  if (!qword_1003DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD58);
  }

  return result;
}

unint64_t sub_1000C186C()
{
  result = qword_1003DBD60;
  if (!qword_1003DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD60);
  }

  return result;
}

unint64_t sub_1000C18C0()
{
  result = qword_1003DBD68;
  if (!qword_1003DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD68);
  }

  return result;
}

unint64_t sub_1000C1914()
{
  result = qword_1003DBD70;
  if (!qword_1003DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBD70);
  }

  return result;
}

unint64_t sub_1000C1968()
{
  result = qword_1003DBDA0;
  if (!qword_1003DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupReadinessState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustodianSetupReadinessState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CustodianMessage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CustodianMessage.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianSetupFault(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianSetupFault(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C1D78()
{
  result = qword_1003DBDA8;
  if (!qword_1003DBDA8)
  {
    sub_100008CBC(&qword_1003DBDB0, qword_10033FED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDA8);
  }

  return result;
}

unint64_t sub_1000C1DE0()
{
  result = qword_1003DBDB8;
  if (!qword_1003DBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDB8);
  }

  return result;
}

unint64_t sub_1000C1E38()
{
  result = qword_1003DBDC0;
  if (!qword_1003DBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDC0);
  }

  return result;
}

unint64_t sub_1000C1E90()
{
  result = qword_1003DBDC8;
  if (!qword_1003DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDC8);
  }

  return result;
}

unint64_t sub_1000C1EE8()
{
  result = qword_1003DBDD0;
  if (!qword_1003DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDD0);
  }

  return result;
}

unint64_t sub_1000C1F40()
{
  result = qword_1003DBDD8;
  if (!qword_1003DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDD8);
  }

  return result;
}

unint64_t sub_1000C1F98()
{
  result = qword_1003DBDE0;
  if (!qword_1003DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDE0);
  }

  return result;
}

unint64_t sub_1000C1FF0()
{
  result = qword_1003DBDE8;
  if (!qword_1003DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDE8);
  }

  return result;
}

unint64_t sub_1000C2048()
{
  result = qword_1003DBDF0;
  if (!qword_1003DBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDF0);
  }

  return result;
}

unint64_t sub_1000C20A0()
{
  result = qword_1003DBDF8;
  if (!qword_1003DBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBDF8);
  }

  return result;
}

unint64_t sub_1000C20F8()
{
  result = qword_1003DBE00;
  if (!qword_1003DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE00);
  }

  return result;
}

unint64_t sub_1000C2150()
{
  result = qword_1003DBE08;
  if (!qword_1003DBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE08);
  }

  return result;
}

unint64_t sub_1000C21A8()
{
  result = qword_1003DBE10;
  if (!qword_1003DBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE10);
  }

  return result;
}

unint64_t sub_1000C2200()
{
  result = qword_1003DBE18;
  if (!qword_1003DBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE18);
  }

  return result;
}

unint64_t sub_1000C2258()
{
  result = qword_1003DBE20;
  if (!qword_1003DBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE20);
  }

  return result;
}

unint64_t sub_1000C22B0()
{
  result = qword_1003DBE28;
  if (!qword_1003DBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE28);
  }

  return result;
}

unint64_t sub_1000C2308()
{
  result = qword_1003DBE30;
  if (!qword_1003DBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE30);
  }

  return result;
}

unint64_t sub_1000C235C()
{
  result = qword_1003DBE38;
  if (!qword_1003DBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DBE38);
  }

  return result;
}

uint64_t sub_1000C23E4()
{
  v29 = type metadata accessor for OS_dispatch_queue.Attributes();
  v0 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v27 = 0x800000010032D140;
  static DispatchQoS.background.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = 256;
  *(v14 + 24) = vdupq_n_s64(0x8CA0uLL);
  *(v14 + 40) = xmmword_100340540;
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 80) = 0;
  v17 = sub_100071C74();
  v24 = v6;
  v25 = v17;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;
  v22 = v13;
  v23 = v7;
  (*(v7 + 16))(v11, v13, v6);
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v26);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C5514(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);

  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v16 + 16) = v18;
  *(v16 + 24) = 0xD000000000000037;
  *(v16 + 32) = v27;
  *(v16 + 40) = sub_1000C508C;
  *(v16 + 48) = v14;
  *(v16 + 56) = sub_1000C50F4;
  *(v16 + 64) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000C50FC;
  *(v19 + 24) = v16;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003A8178;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v18, v20);
  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 8))(v22, v24);

    return v16;
  }

  return result;
}

uint64_t sub_1000C28D0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071C74();
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  aBlock[4] = sub_1000C48EC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A80D8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000C5514(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v23 + 8))(v6, v3);
  (*(v7 + 8))(v10, v22);
}

uint64_t sub_1000C2C6C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Did dismiss previously posted custodian invitation CFUs? %{BOOL}d", v9, 8u);
  }

  return a3(a2);
}

uint64_t sub_1000C2D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v44 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v44);
  v9 = &v39 - v8;
  v10 = type metadata accessor for URL();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  v12 = __chkstk_darwin(v10);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v10;
    v46[0] = v39;
    *v19 = 136315138;
    v45[0] = v6;
    sub_100005814(&qword_1003DBF10, &qword_1003405F8);
    v20 = String.init<A>(describing:)();
    v22 = v3;
    v23 = a1;
    v24 = v15;
    v25 = v9;
    v26 = a2;
    v27 = sub_10021145C(v20, v21, v46);

    *(v19 + 4) = v27;
    a2 = v26;
    v9 = v25;
    v15 = v24;
    a1 = v23;
    v3 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - Starting scheduled invitation status check for all custodianships.", v19, 0xCu);
    sub_10000839C(v39);
    v10 = v40;
  }

  sub_100040738((v3 + 2), v46);
  v28 = sub_1000080F8(v46, v46[3]);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a1;
  v30[4] = a2;
  v31 = sub_1000080F8((*v28 + 16), *(*v28 + 40));
  type metadata accessor for LocalCache();

  v32 = v41;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v33 = *(v43 + 8);
  v33(v32, v10);
  v34 = v42;
  v35 = *v31 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v36 = v44;
  (*(v42 + 16))(v9, v35, v44);
  Dependency.wrappedValue.getter();
  (*(v34 + 8))(v9, v36);
  v37 = *sub_1000080F8(v45, v45[3]);
  sub_1000328BC(v15, sub_1000C51E4, v30);

  v33(v15, v10);
  sub_10000839C(v45);

  return sub_10000839C(v46);
}

void sub_1000C3210(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v108 = a5;
  v111 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v103 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v11);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS.QoSClass();
  v99 = *(v100 - 8);
  v14 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v112 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v91 - v20;
  v22 = type metadata accessor for Date();
  v109 = *(v22 - 8);
  v23 = *(v109 + 64);
  v24 = __chkstk_darwin(v22);
  v107 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v113 = &v91 - v26;
  v116 = type metadata accessor for CustodianshipInfoRecord();
  v104 = *(v116 - 8);
  v27 = *(v104 + 64);
  v28 = __chkstk_darwin(v116);
  v106 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v91 - v31;
  __chkstk_darwin(v30);
  v34 = &v91 - v33;
  if (a2)
  {
    if (qword_1003D7F38 == -1)
    {
LABEL_3:
      v35 = type metadata accessor for Logger();
      sub_100008D04(v35, qword_1003FAA88);
      v36 = v111;
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      sub_1000399DC(v36, 1);
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136315138;
        v119 = v36;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v41 = String.init<A>(describing:)();
        v43 = sub_10021145C(v41, v42, aBlock);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to fetch custodianships - %s", v39, 0xCu);
        sub_10000839C(v40);
      }

      a4(v36);
      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v95 = v11;
  v96 = v8;
  v97 = a4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100008D04(v44, qword_1003FAA88);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Successfully fetched Custodianship info.", v47, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v91 = v7;
    v92 = dispatch_group_create();
    v93 = swift_allocObject();
    *(v93 + 16) = 0;
    v48 = *(v111 + 16);
    v49 = _swiftEmptyArrayStorage;
    if (!v48)
    {
LABEL_31:
      v67 = v49[2];
      v68 = v108;
      v69 = v97;
      a4 = v93;
      v70 = v92;
      v71 = v104;
      if (!v67)
      {
LABEL_35:

        sub_100071C74();
        v73 = v99;
        v74 = v98;
        v75 = v100;
        (*(v99 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v100);
        v76 = static OS_dispatch_queue.global(qos:)();
        (*(v73 + 8))(v74, v75);
        v77 = swift_allocObject();
        v77[2] = v69;
        v77[3] = v68;
        v77[4] = a4;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v77;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003A8268;
        v78 = _Block_copy(aBlock);

        v79 = v101;
        static DispatchQoS.unspecified.getter();
        v118 = _swiftEmptyArrayStorage;
        sub_1000C5514(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
        v80 = v103;
        v81 = v91;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v78);
        (*(v96 + 8))(v80, v81);
        (*(v102 + 8))(v79, v95);

        return;
      }

      v72 = 0;
      while (v72 < v49[2])
      {
        sub_1000C522C(v49 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v72, v32);
        sub_1000C3FF8(v32, v70, Strong, a4);
        ++v72;
        sub_1000C54B4(v32, type metadata accessor for CustodianshipInfoRecord);
        if (v67 == v72)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v50 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v114 = *(v104 + 72);
    v94 = v50;
    v51 = v111 + v50;
    v52 = (v109 + 56);
    v110 = (v109 + 32);
    v111 = v109 + 48;
    v109 += 8;
    while (1)
    {
      sub_1000C522C(v51, v34);
      v53 = sub_1002E1D08(*&v34[*(v116 + 32)], *&v34[*(v116 + 32) + 8]);
      if (!v53)
      {
        break;
      }

      v54 = v53;
      v55 = [v53 creationDate];

      if (v55)
      {
        v56 = v112;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v112;
      }

      v58 = v113;
      (*v52)(v56, v57, 1, v22);
      sub_1000C52F8(v56, v21);
      if ((*v111)(v21, 1, v22) == 1)
      {
        goto LABEL_19;
      }

      (*v110)(v58, v21, v22);
      if (*&v34[*(v116 + 28)] == 1)
      {
        v59 = v107;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v61 = v60;
        v105 = v49;
        v62 = *v109;
        (*v109)(v59, v22);
        v62(v113, v22);
        v49 = v105;
        if (v61 > 604800.0)
        {
          sub_1000C5368(v34, v106);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0244(0, v49[2] + 1, 1);
            v49 = aBlock[0];
          }

          v65 = v49[2];
          v64 = v49[3];
          v66 = v65 + 1;
          if (v65 >= v64 >> 1)
          {
            sub_1002E0244(v64 > 1, v65 + 1, 1);
            v66 = v65 + 1;
            v49 = aBlock[0];
          }

          v49[2] = v66;
          sub_1000C5368(v106, v49 + v94 + v65 * v114);
          goto LABEL_21;
        }
      }

      else
      {
        (*v109)(v58, v22);
      }

LABEL_20:
      sub_1000C54B4(v34, type metadata accessor for CustodianshipInfoRecord);
LABEL_21:
      v51 += v114;
      if (!--v48)
      {
        goto LABEL_31;
      }
    }

    (*v52)(v21, 1, 1, v22);
LABEL_19:
    sub_1000C5290(v21);
    goto LABEL_20;
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v84 = 136315138;
    v118 = type metadata accessor for CustodianInvitationStatusChecker();
    sub_100005814(&qword_1003DBF10, &qword_1003405F8);
    v86 = String.init<A>(describing:)();
    v88 = sub_10021145C(v86, v87, aBlock);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "%s is nil", v84, 0xCu);
    sub_10000839C(v85);
  }

  v89 = v97;
  type metadata accessor for AACustodianError(0);
  v118 = -7000;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000C5514(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v90 = aBlock[0];
  v89(aBlock[0]);
}

uint64_t sub_1000C3FF8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v54 = a3;
  v61 = a1;
  v5 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v53 = &v50 - v7;
  v52 = type metadata accessor for TrustedContactUserNotification();
  v8 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "CustodianshipRecord invitation has been pending for more than threshold time limit.", v20, 2u);
  }

  v21 = v61;
  sub_1000C522C(v61, v16);
  sub_1000C522C(v21, v14);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v60[0] = v50;
    *v24 = 136315394;
    v25 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000C5514(&qword_1003D9150, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v51 = a2;
    sub_1000C54B4(v16, type metadata accessor for CustodianshipInfoRecord);
    v29 = sub_10021145C(v26, v28, v60);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = &v14[*(v10 + 24)];
    v31 = *v30;
    v32 = v30[1];

    a2 = v51;
    sub_1000C54B4(v14, type metadata accessor for CustodianshipInfoRecord);
    v33 = sub_10021145C(v31, v32, v60);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Notifying User for CustodianshipRecord - %s - %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000C54B4(v14, type metadata accessor for CustodianshipInfoRecord);
    sub_1000C54B4(v16, type metadata accessor for CustodianshipInfoRecord);
  }

  dispatch_group_enter(a2);
  v34 = sub_100005814(&qword_1003E7750, qword_100340600);
  v35 = v57;
  v36 = &v57[*(v34 + 48)];
  v37 = *(v10 + 20);
  v38 = type metadata accessor for UUID();
  v39 = v61;
  (*(*(v38 - 8) + 16))(v35, v61 + v37, v38);
  v40 = (v39 + *(v10 + 24));
  v41 = v40[1];
  *v36 = *v40;
  *(v36 + 1) = v41;
  swift_storeEnumTagMultiPayload();
  v42 = v55;
  v43 = v53;
  v44 = v56;
  (*(v55 + 16))(v53, v54 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager, v56);

  Dependency.wrappedValue.getter();
  (*(v42 + 8))(v43, v44);
  v45 = sub_1000080F8(v59, v59[3]);
  sub_1002CA150(v60);
  v46 = swift_allocObject();
  *(v46 + 16) = v58;
  *(v46 + 24) = a2;
  v47 = *v45;

  v48 = a2;
  sub_1002D2E28(v60, sub_1000C5458, v46);

  sub_1000C5460(v60);
  sub_1000C54B4(v35, type metadata accessor for TrustedContactUserNotification);
  return sub_10000839C(v59);
}

void sub_1000C45B8(uint64_t a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    swift_errorRetain();
  }

  dispatch_group_leave(group);
}

uint64_t sub_1000C4628(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_1000C4694()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianInvitationStatusChecker()
{
  result = qword_1003DBE78;
  if (!qword_1003DBE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C47E4()
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000C4910(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4928(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v17 = v30 - v16;
  switch(a3)
  {
    case 4:
      return sub_10030FD6C();
    case 3:
      return sub_10030FD48();
    case 2:
      v18 = result;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v19 = result;
        v20 = swift_allocObject();
        *(v20 + 16) = a4;
        *(v20 + 24) = a1;
        (*(v13 + 16))(v17, v19 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__accountStore, v18);

        Dependency.wrappedValue.getter();
        (*(v13 + 8))(v17, v18);
        v21 = [*(*sub_1000080F8(v31 v32) + 16)];
        sub_10000839C(v31);
        if (v21)
        {
          (*(v8 + 16))(v11, v19 + OBJC_IVAR____TtC13appleaccountd32CustodianInvitationStatusChecker__userNotificationManager, v7);
          Dependency.wrappedValue.getter();
          (*(v8 + 8))(v11, v7);
          v22 = sub_1000080F8(v31, v32);
          v23 = AAFollowUpIdentifierCustodianInvitationReminder;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_1000C5154;
          *(v24 + 24) = v20;
          v25 = (*v22 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
          v26 = v25[3];
          v27 = v25[4];
          sub_1000080F8(v25, v26);
          v28 = *(v27 + 56);

          v28(v23, v21, sub_1000C519C, v24, v26, v27);

          return sub_10000839C(v31);
        }

        else
        {
          type metadata accessor for AACustodianError(0);
          v31[0] = -7002;
          sub_100212324(_swiftEmptyArrayStorage);
          sub_1000C5514(&qword_1003D8140, type metadata accessor for AACustodianError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v29 = v30[1];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            sub_1000C2D84(sub_1000C515C, a1);
          }

          else
          {
          }
        }
      }

      break;
  }

  return result;
}

uint64_t sub_1000C4D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000C2D84(sub_1000C5570, a3);
  }

  return result;
}

BOOL sub_1000C4E20(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA88);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v2, v3))
    {

      return sub_10030FF34();
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = String.init<A>(describing:)();
    v8 = sub_10021145C(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduled Custodian Invitation Status check completed with error: %s", v4, 0xCu);
    sub_10000839C(v5);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);
    v2 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v2, v10, "Scheduled Custodian Invitation Status check is complete.", v11, 2u);
    }
  }

  return sub_10030FF34();
}

__n128 sub_1000C508C@<Q0>(uint64_t a1@<X8>)
{
  v2 = 256;
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL | *(v1 + 16) & 1;
  *(a1 + 8) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000C50BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C5114()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C5164()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C51A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000C51F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5290(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C52F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C53CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000C5418()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C54B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C5514(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000C5574()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1003DBF18 = result;
  return result;
}

void sub_1000C55A8()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Custodian manatee migrator listening for CKAccountChanged", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:"manateeStatusChanged" name:CKAccountChangedNotification object:0];
}

void sub_1000C56EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = type metadata accessor for AsyncOperation();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v8 = &v7[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v8 = sub_1000CB71C;
  v8[1] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v9 = objc_msgSendSuper2(&v10, "init");
  if (qword_1003D7DE0 != -1)
  {
    swift_once();
  }

  [qword_1003DBF18 addOperation:{v9, v10.receiver, v10.super_class}];
}

uint64_t sub_1000C5810(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_1000C99BC(v10, a4, a5, a1, a2);
  }

  return result;
}

uint64_t sub_1000C58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated;
  if (*(a2 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) > 0)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v8 = _convertErrorToNSError(_:)();
    v9 = *(a2 + v7);
LABEL_6:
    v10 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors;
    swift_beginAccess();
    v11 = *(*(a2 + v10) + 16);
    if (AAUnderTest.getter())
    {
LABEL_19:

      return a4(a1);
    }

    if (!v8)
    {
      v16 = 0;
LABEL_18:
      sub_100005814(&qword_1003E30D0, &unk_100340690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033E5C0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x800000010032DFF0;
      *(inited + 48) = Int._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000012;
      *(inited + 64) = 0x800000010032E010;
      *(inited + 72) = Int._bridgeToObjectiveC()();
      sub_1003093D0(inited);
      swift_setDeallocating();
      sub_100005814(&unk_1003E8C10, &unk_100344990);
      swift_arrayDestroy();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      v8 = v16;
      goto LABEL_19;
    }

    sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
    type metadata accessor for CKError(0);
    v12 = v8;
    if (swift_dynamicCast())
    {
      v13 = v22;
      v14 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v14)
      {
        v15 = sub_10030B6CC(v14);

        if (v15)
        {
          swift_getErrorValue();
          sub_1002DEA80(v20);

          goto LABEL_15;
        }
      }
    }

    sub_1000CB64C();
    v13 = v12;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
      *v17 = v13;
      goto LABEL_17;
    }

LABEL_15:

LABEL_17:
    swift_getErrorValue();
    sub_10025648C(v21);
    v16 = _convertErrorToNSError(_:)();

    goto LABEL_18;
  }

  if (a1)
  {
    goto LABEL_5;
  }

  return a4(a1);
}

void sub_1000C5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustodianRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = dispatch_group_create();
  if (a2)
  {
    swift_errorRetain();
    v23 = a2;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAB18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Couldn't fetch custodianship records for manatee migration.", v27, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_errorRetain();
      sub_1000C62AC(v23);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v29 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

      dispatch_group_leave(v29);
    }

    else
    {
    }
  }

  else
  {
    v48 = v16;
    v49 = v12;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v50 = v9;
    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAB18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting migrating custodianship records to Manatee.", v33, 2u);
    }

    v34 = *(v51 + 16);
    v35 = v8;
    if (v34)
    {
      v36 = v51 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      swift_beginAccess();
      v37 = *(v18 + 72);
      do
      {
        sub_1000CB554(v36, v21, type metadata accessor for CustodianRecord);
        dispatch_group_enter(v22);
        v38 = swift_weakLoadStrong();
        if (v38)
        {
          v39 = v38;
          v40 = v22;
          sub_1000CA3DC(v21, v39, v40);

          v35 = v8;
        }

        sub_1000CB5EC(v21, type metadata accessor for CustodianRecord);
        v36 += v37;
        --v34;
      }

      while (v34);
    }

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v41 = v52;
    v42 = v48;
    (*(v52 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v43 = static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v42, v13);
    aBlock[4] = sub_1000CB5BC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A8548;
    v44 = _Block_copy(aBlock);

    v45 = v49;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v46 = v35;
    v47 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v44);

    (*(v54 + 8))(v46, v47);
    (*(v53 + 8))(v45, v50);
  }
}

void sub_1000C62AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
  os_unfair_lock_lock(*(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock));
  if (a1)
  {
    v4 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors;
    swift_beginAccess();
    v5 = *(v1 + v4);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1003062A8(0, v5[2] + 1, 1, v5);
      *(v1 + v4) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1003062A8((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v5[v8 + 4] = a1;
    *(v1 + v4) = v5;
    swift_endAccess();
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = v11;
LABEL_9:
    os_unfair_lock_unlock(*(v1 + v3));
    return;
  }

  __break(1u);
}

uint64_t sub_1000C63CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v26 = type metadata accessor for URL();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_100040738(v2 + 56, v28);
  v17 = sub_1000080F8(v28, v28[3]);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v10 + 8);
  v21 = v14;
  v22 = v26;
  v20(v21, v26);
  (*(v6 + 16))(v9, *v19 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v23 = *sub_1000080F8(v27, v27[3]);
  sub_1000324D8(v16, sub_1000CB550, v18);

  v20(v16, v22);
  sub_10000839C(v27);
  return sub_10000839C(v28);
}

void sub_1000C6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustodianshipInfoRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = dispatch_group_create();
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB18);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Couldn't fetch custodianship info records for manatee migration: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_errorRetain();
      sub_1000C62AC(a2);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

      dispatch_group_leave(v30);
    }

    else
    {
    }
  }

  else
  {
    v49 = v16;
    v50 = v12;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v51 = v9;
    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAB18);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Starting migrating custodianship info records to Manatee.", v34, 2u);
    }

    v35 = *(v52 + 16);
    v36 = v8;
    if (v35)
    {
      v37 = v52 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      swift_beginAccess();
      v38 = *(v18 + 72);
      do
      {
        sub_1000CB554(v37, v21, type metadata accessor for CustodianshipInfoRecord);
        dispatch_group_enter(v22);
        v39 = swift_weakLoadStrong();
        if (v39)
        {
          v40 = v39;
          v41 = v22;
          sub_1000CA9C4(v21, v40, v41);

          v36 = v8;
        }

        sub_1000CB5EC(v21, type metadata accessor for CustodianshipInfoRecord);
        v37 += v38;
        --v35;
      }

      while (v35);
    }

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v42 = v53;
    v43 = v49;
    (*(v53 + 104))(v49, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v44 = static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v13);
    aBlock[4] = sub_1000CB010;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A8430;
    v45 = _Block_copy(aBlock);

    v46 = v50;
    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v47 = v36;
    v48 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v45);

    (*(v55 + 8))(v47, v48);
    (*(v54 + 8))(v46, v51);
  }
}

void sub_1000C6DE8(uint64_t a1, const char *a2)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);

    dispatch_group_leave(v8);
  }
}

uint64_t sub_1000C6F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v26 = type metadata accessor for URL();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_100040738(v2 + 56, v28);
  v17 = sub_1000080F8(v28, v28[3]);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v10 + 8);
  v21 = v14;
  v22 = v26;
  v20(v21, v26);
  (*(v6 + 16))(v9, *v19 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v23 = *sub_1000080F8(v27, v27[3]);
  sub_1000328BC(v16, sub_1000CB72C, v18);

  v20(v16, v22);
  sub_10000839C(v27);
  return sub_10000839C(v28);
}

uint64_t sub_1000C71E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Custodian + CustodianshipInfo migration complete.", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors;
  swift_beginAccess();
  v10 = *(a3 + v9);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
    swift_errorRetain();
  }

  else
  {
    v11 = 0;
  }

  a1(v11);
}

uint64_t sub_1000C7328()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v1 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__keyRepair;
  v4 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_migrateErrors);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianManateeMigrator()
{
  result = qword_1003DBF78;
  if (!qword_1003DBF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C74A0()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000C7600(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock;
      os_unfair_lock_lock(*(Strong + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_reportResultLock));
      v16 = *(v14 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        __break(1u);
        return;
      }

      *(v14 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_numOfRecordsMigrated) = v18;
      os_unfair_lock_unlock(*(v14 + v15));
    }

    a3(0);
    return;
  }

  swift_errorRetain();
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v10 = String.init<A>(describing:)();
    v12 = sub_10021145C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error migrating custodianRecord : %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_errorRetain();
    sub_1000C62AC(a1);
  }

  swift_errorRetain();
  a3(a1);
}

uint64_t sub_1000C7878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CustodianshipInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAB18);
    sub_1000CB554(a2, v9, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v14 = 136315394;
      v17 = *(v6 + 20);
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_1000CB5EC(v9, type metadata accessor for CustodianshipInfoRecord);
      v21 = sub_10021145C(v18, v20, &v25);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2112;
      v22 = _convertErrorToNSError(_:)();
      *(v14 + 14) = v22;
      *v15 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error migrating CustodianshipInfoRecord for custodianID - %s: %@", v14, 0x16u);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v16);

      a3 = v24;
    }

    else
    {

      sub_1000CB5EC(v9, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  return a3(a1);
}

uint64_t sub_1000C7B70()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAB18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Manatee status changed, fetching new manatee status.", v10, 2u);
  }

  sub_100040738(v1 + 16, v19);
  v11 = sub_1000080F8(v19, v19[3]);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, *v11 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v2);

  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v13 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000C9950;
  *(v14 + 24) = v12;
  aBlock[4] = sub_100016014;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003A8318;
  v15 = _Block_copy(aBlock);

  [v13 accountInfoWithCompletionHandler:v15];
  _Block_release(v15);

  sub_10000839C(v18);

  return sub_10000839C(v19);
}

void sub_1000C7EDC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_21;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Something went wrong while checking manatee status: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

LABEL_20:

LABEL_21:

    return;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v19, "Account is not manatee, skipping manatee migration.", v20, 2u);
    goto LABEL_20;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAB18);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Account is now manatee, kicking off migration.", v11, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = OSTransaction.complete();
    *(v13 + 4) = 0;
    v14 = type metadata accessor for AsyncOperation();
    v15 = objc_allocWithZone(v14);
    v15[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v16 = &v15[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v16 = sub_1000C99B0;
    v16[1] = v13;
    v22.receiver = v15;
    v22.super_class = v14;
    v17 = objc_msgSendSuper2(&v22, "init");
    if (qword_1003D7DE0 != -1)
    {
      swift_once();
    }

    [qword_1003DBF18 addOperation:v17];
  }
}

uint64_t sub_1000C830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v61 = a3;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  v7 = v6[8];
  __chkstk_darwin(v57);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v59 = &v49 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - v16;
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_1000CB554(a1, v19, type metadata accessor for CustodianshipInfoRecord);
  sub_1000CB554(a2, v17, type metadata accessor for CustodianshipInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v55 = a1;
    v24 = v23;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v24 = 136315650;
    v53 = v21;
    v51 = v6[2];
    v52 = v22;
    v25 = v9;
    v26 = v9;
    v27 = v57;
    v51(v26, v19, v57);
    v50 = type metadata accessor for CustodianshipInfoRecord;
    sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
    v49 = sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = a2;
    v30 = v29;
    v31 = v6[1];
    v31(v25, v27);
    v32 = sub_10021145C(v28, v30, &v63);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    v51(v25, v17, v27);
    sub_1000CB5EC(v17, v50);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v31(v25, v27);
    v36 = sub_10021145C(v33, v35, &v63);
    a2 = v56;

    *(v24 + 14) = v36;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v63);
    v21 = v53;
    _os_log_impl(&_mh_execute_header, v53, v52, "Storage Controller: Replacing the old record with recordID: %s with new record recordID: %s, type: %s...", v24, 0x20u);
    swift_arrayDestroy();

    a1 = v55;
  }

  else
  {
    sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
    sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
  }

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v59;
  sub_1000CB554(a2, v59, type metadata accessor for CustodianshipInfoRecord);
  v39 = v60;
  sub_1000CB554(a1, v60, type metadata accessor for CustodianshipInfoRecord);
  v40 = *(v58 + 80);
  v41 = (v40 + 16) & ~v40;
  v42 = (v11 + v40 + v41) & ~v40;
  v43 = (v11 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = a2;
  v45 = swift_allocObject();
  sub_1000C5368(v38, v45 + v41);
  sub_1000C5368(v39, v45 + v42);
  *(v45 + v43) = v37;
  v46 = (v45 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  v47 = v62;
  *v46 = v61;
  v46[1] = v47;

  sub_100230FD4(v44, sub_1000CB2BC, v45);
}

uint64_t sub_1000C88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v77 = a5;
  v78 = a6;
  v75 = a4;
  v76 = a3;
  v73 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v70 = &v66 - v9;
  v10 = type metadata accessor for UUID();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipInfoRecord();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v66 - v18;
  __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v22 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v66 - v24);
  sub_100012D04(a1, &v66 - v24, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79[0] = v32;
      *v30 = 138412546;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v79);
      _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: When attepmting to replace record, failed to save new record to cloud, recordID: %@, type: %s", v30, 0x16u);
      sub_100008D3C(v31, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v32);
    }

    swift_errorRetain();
    v77(v26);
  }

  else
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    v36 = sub_100008D04(v35, qword_1003FAAE8);
    sub_1000CB554(v73, v21, type metadata accessor for CustodianshipInfoRecord);
    v73 = v36;
    v37 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v67))
    {
      v38 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79[0] = v66;
      *v38 = 136315394;
      v39 = v13;
      v40 = v74;
      (*(v74 + 16))(v39, v21, v10);
      sub_1000CB5EC(v21, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = v40;
      v13 = v39;
      (*(v44 + 8))(v39, v10);
      v45 = sub_10021145C(v41, v43, v79);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v79);
      _os_log_impl(&_mh_execute_header, v37, v67, "Storage Controller: Saving new record with record succeeded, recordID: %s, type: %s.", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v21, type metadata accessor for CustodianshipInfoRecord);
    }

    sub_1000CB554(v76, v19, type metadata accessor for CustodianshipInfoRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79[0] = v73;
      *v48 = 136315394;
      v49 = v13;
      v50 = v10;
      v51 = v74;
      (*(v74 + 16))(v49, v19, v50);
      sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v51 + 8))(v49, v50);
      v55 = sub_10021145C(v52, v54, v79);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v79);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Deleting the old record with record ID: %s, type: %s...", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v19, type metadata accessor for CustodianshipInfoRecord);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v57 = v70;
      v58 = v71;
      v59 = v72;
      (*(v71 + 16))(v70, Strong + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v72);
      Dependency.wrappedValue.getter();

      (*(v58 + 8))(v57, v59);
      v60 = v76;
      v61 = v69;
      sub_1000CB554(v76, v69, type metadata accessor for CustodianshipInfoRecord);
      v62 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v63 = swift_allocObject();
      sub_1000C5368(v61, v63 + v62);
      v64 = (v63 + ((v15 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
      v65 = v78;
      *v64 = v77;
      v64[1] = v65;

      sub_1001A35E0(v60, sub_1000CB4B0, v63);

      sub_10000839C(v79);
    }

    return sub_100008D3C(v25, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_1000C9254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v6 = type metadata accessor for UUID();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v43 - v19);
  sub_100012D04(a1, &v43 - v19, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    sub_1000CB554(a2, v16, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v25 = 136315650;
      v27 = v45;
      (*(v45 + 16))(v9, v16, v6);
      sub_1000CB5EC(v16, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v27 + 8))(v9, v6);
      v31 = sub_10021145C(v28, v30, &v48);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v25 + 14) = v32;
      *v26 = v32;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v48);
      _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Failed to delete old record from cloud store, recordID: %s - %@, type: %s", v25, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v16, type metadata accessor for CustodianshipInfoRecord);
    }

    swift_errorRetain();
    v47(v21);
  }

  else
  {
    sub_100008D3C(v20, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    sub_1000CB554(a2, v14, type metadata accessor for CustodianshipInfoRecord);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v36 = 136315394;
      v37 = v45;
      (*(v45 + 16))(v9, v14, v6);
      sub_1000CB5EC(v14, type metadata accessor for CustodianshipInfoRecord);
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v37 + 8))(v9, v6);
      v41 = sub_10021145C(v38, v40, &v48);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v48);
      _os_log_impl(&_mh_execute_header, v34, v35, "Storage Controller: Successfully deleted old record from cloud store, recordID: %s, type: %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CB5EC(v14, type metadata accessor for CustodianshipInfoRecord);
    }

    return (v47)(0);
  }
}

uint64_t sub_1000C9918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000C995C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000C9994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C99BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  __chkstk_darwin(v10);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  v13 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v54 - v22;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = a5;
  (*(v20 + 16))(v23, a1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__accountStore, v19);

  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v23, v19);
  v25 = [*(*sub_1000080F8(aBlock v64) + 16)];
  if (v25)
  {

    sub_10000839C(aBlock);
    v26 = objc_allocWithZone(type metadata accessor for CustodianMigrationAnalyticsEvent());
    sub_100309C2C(_swiftEmptyArrayStorage);
    v27 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = v27;
    v28[4] = sub_100083740;
    v28[5] = v24;
    v29 = qword_1003D7F68;

    v54 = v27;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAB18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting custodian manatee migration.", v33, 2u);
    }

    v34 = *(a1 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator_dispatchGroup);
    dispatch_group_enter(v34);
    v35 = swift_allocObject();
    swift_weakInit();

    sub_1000C63CC(sub_1000CA338, v35);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Starting custodianshipInfo manatee migration.", v38, 2u);
    }

    dispatch_group_enter(v34);
    v39 = swift_allocObject();
    swift_weakInit();

    sub_1000C6F20(sub_1000CA340, v39);

    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v41 = v55;
    v40 = v56;
    (*(v55 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v56);
    v42 = static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v18, v40);
    v43 = swift_allocObject();
    v43[2] = sub_1000CA32C;
    v43[3] = v28;
    v43[4] = a1;
    v65 = sub_1000CA388;
    v66 = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    v64 = &unk_1003A83E0;
    v44 = _Block_copy(aBlock);

    v45 = v57;
    static DispatchQoS.unspecified.getter();
    v67 = _swiftEmptyArrayStorage;
    sub_1000CA394(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v46 = v59;
    v47 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v44);

    (*(v61 + 8))(v46, v47);
    (*(v58 + 8))(v45, v60);
  }

  else
  {
    sub_10000839C(aBlock);
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAB18);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Not logged in to AppleAccount, Aborting migration!", v51, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v67 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000CA394(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = aBlock[0];
    v53 = a2(aBlock[0]);
    a4(v53);
  }
}

uint64_t sub_1000CA2A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000CA2E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000CA348()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000CA394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CA3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v9 = &v47 - v8;
  v10 = type metadata accessor for KeyRepairContext(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecord();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(v14 + 48);
  v53 = a1;
  v20 = *(a1 + v19);
  v21 = qword_1003D7F68;
  v22 = a3;
  if (v20 == 1)
  {
    v23 = v22;
    if (v21 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAB18);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "CustodianRecord is already in Manatee.", v27, 2u);
    }

    dispatch_group_leave(v23);
  }

  else
  {
    v49 = a2;
    if (v21 != -1)
    {
      swift_once();
    }

    v50 = v18;
    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAB18);
    sub_1000CB554(v53, v17, type metadata accessor for CustodianRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v32 = 136315138;
      v33 = *(v14 + 20);
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000CB5EC(v17, type metadata accessor for CustodianRecord);
      v37 = sub_10021145C(v34, v36, v54);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Migrating CustodianRecord with custodianID %s...", v32, 0xCu);
      sub_10000839C(v48);
    }

    else
    {

      sub_1000CB5EC(v17, type metadata accessor for CustodianRecord);
    }

    v38 = *(v14 + 20);
    v39 = type metadata accessor for UUID();
    (*(*(v39 - 8) + 16))(v13, v53 + v38, v39);
    v13[v10[5]] = 1;
    v13[v10[6]] = 1;
    v40 = &v13[v10[7]];
    *v40 = 0;
    *(v40 + 1) = 0;
    v42 = v51;
    v41 = v52;
    (*(v51 + 16))(v9, v49 + OBJC_IVAR____TtC13appleaccountd24CustodianManateeMigrator__keyRepair, v52);
    Dependency.wrappedValue.getter();
    (*(v42 + 8))(v9, v41);
    v43 = sub_1000080F8(v54, v54[3]);
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = sub_10007CFEC;
    *(v45 + 32) = v50;
    v46 = *v43;

    sub_100085FA8(v13, sub_1000CB5E0, v45);

    sub_1000CB5EC(v13, type metadata accessor for KeyRepairContext);

    sub_10000839C(v54);
  }
}

uint64_t sub_1000CA9C4(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = a2;
  v5 = type metadata accessor for CustodianshipInfoRecord();
  v62 = *(v5 - 1);
  v6 = *(v62 + 64);
  v7 = __chkstk_darwin(v5);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  v14 = __chkstk_darwin(v11);
  v64 = &v58 - v15;
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a1 + v5[9]);
  v20 = qword_1003D7F68;
  v21 = a3;
  if (v19 == 1)
  {
    v22 = v21;
    if (v20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB18);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CustodianshipInfoRecord is already in Manatee.", v26, 2u);
    }

    dispatch_group_leave(v22);
  }

  else
  {
    v60 = v18;
    if (v20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAB18);
    v59 = a1;
    sub_1000CB554(a1, v17, type metadata accessor for CustodianshipInfoRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v31 = 136315138;
      v32 = v5[5];
      type metadata accessor for UUID();
      sub_1000CA394(&qword_1003D9150, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
      v36 = sub_10021145C(v33, v35, v65);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Migrating CustodianshipInfoRecord for custodianID - %s", v31, 0xCu);
      sub_10000839C(v58);
    }

    else
    {

      sub_1000CB5EC(v17, type metadata accessor for CustodianshipInfoRecord);
    }

    v37 = v59;
    sub_1000CB554(v59, v13, type metadata accessor for CustodianshipInfoRecord);
    v38 = type metadata accessor for UUID();
    v39 = *(*(v38 - 8) + 16);
    v39(v10, v13, v38);
    v39(&v10[v5[5]], &v13[v5[5]], v38);
    v40 = v5[8];
    if (v13[v5[9]] == 1)
    {
      v41 = *&v13[v40];
      v42 = *&v13[v40 + 8];
      v43 = &v10[v40];
      *v43 = v41;
      v43[1] = v42;
      sub_100015D6C(v41, v42);
    }

    else
    {
      *&v10[v40] = xmmword_10033F8D0;
    }

    v44 = v5[6];
    v46 = *&v13[v44];
    v45 = *&v13[v44 + 8];
    v47 = &v10[v44];
    *v47 = v46;
    *(v47 + 1) = v45;
    v48 = *&v13[v5[7]];

    sub_1000CB5EC(v13, type metadata accessor for CustodianshipInfoRecord);
    *&v10[v5[7]] = v48;
    v10[v5[9]] = 1;
    v49 = v64;
    sub_1000C5368(v10, v64);
    sub_100040738(v61 + 16, v65);
    v50 = sub_1000080F8(v65, v65[3]);
    v51 = v63;
    sub_1000CB554(v37, v63, type metadata accessor for CustodianshipInfoRecord);
    v52 = v37;
    v53 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v54 = swift_allocObject();
    sub_1000C5368(v51, v54 + v53);
    v55 = (v54 + ((v6 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    v56 = v60;
    *v55 = sub_1000CB730;
    v55[1] = v56;
    v57 = *v50;

    sub_1000C830C(v52, v49, sub_1000CB070, v54);

    sub_1000CB5EC(v49, type metadata accessor for CustodianshipInfoRecord);
    sub_10000839C(v65);
  }
}

uint64_t sub_1000CB034()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000CB070(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000C7878(a1, v1 + v4, v6);
}

uint64_t sub_1000CB110()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v3;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v10(v8 + v1[7], v9);
  v11 = *(v8 + v1[8] + 8);

  sub_100012324(*(v8 + v1[10]), *(v8 + v1[10] + 8));
  v10(v0 + v5, v9);
  v10(v0 + v5 + v1[7], v9);
  v12 = *(v0 + v5 + v1[8] + 8);

  sub_100012324(*(v0 + v5 + v1[10]), *(v0 + v5 + v1[10] + 8));
  v13 = *(v0 + v6);

  v14 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000CB2BC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1000C88C0(a1, v1 + v5, v1 + v7, v9, v11, v12);
}

uint64_t sub_1000CB378()
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

uint64_t sub_1000CB4B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000C9254(a1, v1 + v4, v6, v7);
}

uint64_t sub_1000CB554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CB5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000CB64C()
{
  result = qword_1003E8C00;
  if (!qword_1003E8C00)
  {
    sub_100016034(255, &qword_1003DB5F0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8C00);
  }

  return result;
}

uint64_t sub_1000CB6B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

__n128 sub_1000CB734(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CB740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CB788(uint64_t result, int a2, int a3)
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

uint64_t sub_1000CB7D8()
{
  v1[13] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB90C, 0, 0);
}

uint64_t sub_1000CB90C()
{
  v37 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__analyticsReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[20] = v0[10];
  v8 = kAAAnalyticsEventCustodianSetupFetchSuggestedContactsFromDeviceIntelligence;
  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd26CustodianMegadomeSuggester__accountStore, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v4, v5);
  v9 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v9 && (v10 = v9, v11 = [v9 aa_altDSID], v10, v11))
  {
    v12 = v0[13];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v16 = *(v12 + 24);
    v15 = *(v12 + 32);

    v17 = v8;

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = v0[13];
    v21 = *(v19 + 24);
    v20 = *(v19 + 32);

    v22 = v8;

    v18 = 0;
    v14 = 0;
  }

  v0[21] = v14;
  v23 = objc_opt_self();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 analyticsEventWithName:v8 altDSID:v18 flowID:v24];
  v0[22] = v25;

  if (v25)
  {
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v26 = v25;
    v27 = NSString.init(stringLiteral:)();
    [v26 setObject:0 forKeyedSubscript:v27];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v0[23] = sub_100008D04(v28, qword_1003FAA40);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v36);
    _os_log_impl(&_mh_execute_header, v29, v30, "Performing: %s...", v31, 0xCu);
    sub_10000839C(v32);
  }

  sub_100257274(v8);
  v33 = swift_task_alloc();
  v0[24] = v33;
  *v33 = v0;
  v33[1] = sub_1000CBF74;
  v34 = v0[13];

  return sub_1000CC4D0((v0 + 12));
}

uint64_t sub_1000CBF74()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1000CC088;
  }

  else
  {
    v3 = sub_1000CC310;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CC088()
{
  v25 = v0;
  v1 = v0[25];
  v2 = v0[23];
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
    *(v5 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v24);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100083380(v6);

    sub_10000839C(v7);
  }

  v9 = v0[22];
  swift_getErrorValue();
  v10 = v0[7];
  v11 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v9)
  {
    v12 = v0[22];
    v13 = v0[20];
    v14 = v12;
    swift_errorRetain();
    v15 = _convertErrorToNSError(_:)();
    [v14 updateTaskResultWithError:v15];

    swift_getObjectType();
    sub_100246FA8(v12);
  }

  else
  {
    swift_errorRetain();
  }

  v16 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[16];
  v21 = v0[13];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_10000839C(v0 + 2);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000CC310()
{
  v17 = v0;
  v1 = *(v0 + 184);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000016, 0x800000010032E140, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 104);
  if (v6)
  {
    [*(v0 + 176) updateTaskResultWithError:0];
    swift_getObjectType();
    v9 = v6;
    sub_100246FA8(v6);
  }

  swift_unknownObjectRelease();
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);

  v13 = *(v0 + 96);
  sub_10000839C((v0 + 16));

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1000CC4D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for EntityIdentifier();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for PersonEntityTagType();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000CC5EC, 0, 0);
}

uint64_t sub_1000CC5EC()
{
  v1 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService());
  v0[9] = PersonEntityTaggingService.init(etConfig:)();
  (*(v0[7] + 104))(v0[8], enum case for PersonEntityTagType.familyAndFriends(_:), v0[6]);
  v2 = *(&async function pointer to dispatch thunk of PersonEntityTaggingService.personEntities(for:options:) + 1);
  v6 = &async function pointer to dispatch thunk of PersonEntityTaggingService.personEntities(for:options:) + async function pointer to dispatch thunk of PersonEntityTaggingService.personEntities(for:options:);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000CC734;
  v4 = v0[8];

  return (v6)(v4, 0);
}

uint64_t sub_1000CC734(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1000CCC44;
  }

  else
  {
    v5 = sub_1000CC848;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_1000CC848()
{
  v1 = *(v0 + 96);
  sub_1000CF2C4(*(v0 + 88), 1);
  if (!v1)
  {
    type metadata accessor for ViewService();
    v4 = static ViewService.clientService.getter();
    v5 = ViewService.visualIdentifierView()();
    v6 = *(v0 + 88);
    v11 = v5;

    result = PersonEntityTaggingService.ScoreRankedEntityTagPersons.scoredEntities.getter();
    v12 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v13 = result;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_9:
        if (v13 < 1)
        {
          __break(1u);
          return result;
        }

        v14 = 0;
        v15 = v12 & 0xC000000000000001;
        v45 = (*(v0 + 32) + 8);
        v16 = _swiftEmptyArrayStorage;
        v41 = v12;
        v42 = v11;
        v43 = v12 & 0xC000000000000001;
        v44 = v13;
        do
        {
          if (v15)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(v12 + 8 * v14 + 32);
          }

          v18 = v17;
          PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.score.getter();
          if (v19 < 0.5)
          {
          }

          else
          {
            v20 = *(v0 + 40);
            v21 = *(v0 + 24);
            PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.id.getter();
            EntityIdentifier.stringValue.getter();
            (*v45)(v20, v21);
            v22 = String._bridgeToObjectiveC()();

            v23 = [v11 personForIdentifier:v22];

            if (v23)
            {
              v24 = [v23 names];
              v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v25 = [v23 phoneNumbers];
              v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = [v23 emails];
              v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v29 = [v23 contactIdentifiers];
              v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_1003063DC(0, *(v16 + 2) + 1, 1, v16);
              }

              v32 = *(v16 + 2);
              v31 = *(v16 + 3);
              if (v32 >= v31 >> 1)
              {
                v16 = sub_1003063DC((v31 > 1), v32 + 1, 1, v16);
              }

              *(v16 + 2) = v32 + 1;
              v33 = &v16[32 * v32];
              *(v33 + 4) = v46;
              *(v33 + 5) = v26;
              *(v33 + 6) = v28;
              *(v33 + 7) = v30;
              v12 = v41;
              v11 = v42;
            }

            else
            {
            }

            v15 = v43;
            v13 = v44;
          }

          ++v14;
        }

        while (v13 != v14);
        goto LABEL_27;
      }
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_27:
    v34 = *(v0 + 88);
    v35 = *(v0 + 64);
    v36 = *(v0 + 72);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    v39 = *(v0 + 40);
    v40 = *(v0 + 16);

    swift_unknownObjectRelease();

    (*(v38 + 8))(v35, v37);
    *v40 = v16;

    v9 = *(v0 + 8);
    goto LABEL_4;
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v7 = *(v0 + 64);
  v8 = *(v0 + 40);

  v9 = *(v0 + 8);
LABEL_4:

  return v9();
}

uint64_t sub_1000CCC44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000CCCE0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = swift_task_alloc();
  v2[26] = v3;
  *v3 = v2;
  v3[1] = sub_1000CCD70;

  return sub_1000CB7D8();
}

uint64_t sub_1000CCD70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1000CD118;
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = sub_1000CCE9C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000CCE9C()
{
  v0[22] = _swiftEmptyArrayStorage;
  v1 = v0[27];
  v0[28] = v1;
  v2 = *(v1 + 16);
  v0[29] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[30] = v3;
      v0[31] = _swiftEmptyArrayStorage;
      v4 = v0[24];
      v5 = (v0[28] + 32 * v3);
      v0[32] = v5[4];
      v6 = v5[5];
      v0[33] = v6;
      v0[34] = v5[6];
      v7 = v5[7];
      v0[35] = v7;
      v0[23] = _swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();

      sub_10028BBC0(v6);

      sub_10028BBC0(v8);

      v10 = sub_1002E225C(v9);

      v11 = v0[23];
      v0[36] = v11;
      v12 = *(sub_1000CEAE0(v11, v10) + 16);

      if (!v12)
      {
        v13 = *(v0[25] + 16);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v15 = [v13 contactForIdentifiers:isa];
        v0[37] = v15;

        if (v15)
        {
          break;
        }
      }

      v3 = v0[30] + 1;
      if (v3 == v0[29])
      {
        v19 = v0[28];
        goto LABEL_10;
      }
    }

    v16 = swift_task_alloc();
    v0[38] = v16;
    *v16 = v0;
    v16[1] = sub_1000CD394;
    v17 = v0[25];

    return sub_1000D06DC(v7, v11);
  }

  else
  {
LABEL_10:

    v20 = v0[1];

    return v20(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CD118()
{
  v1 = _swiftEmptyArrayStorage;
  v0[22] = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v0[28] = _swiftEmptyArrayStorage;
  v0[29] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[30] = v3;
      v0[31] = v1;
      v4 = v0[24];
      v5 = (v0[28] + 32 * v3);
      v0[32] = v5[4];
      v6 = v5[5];
      v0[33] = v6;
      v0[34] = v5[6];
      v7 = v5[7];
      v0[35] = v7;
      v8 = v1;
      v0[23] = v1;
      swift_bridgeObjectRetain_n();

      sub_10028BBC0(v6);

      sub_10028BBC0(v9);

      v11 = sub_1002E225C(v10);

      v12 = v0[23];
      v0[36] = v12;
      v13 = *(sub_1000CEAE0(v12, v11) + 16);

      if (!v13)
      {
        v14 = *(v0[25] + 16);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v16 = [v14 contactForIdentifiers:isa];
        v0[37] = v16;

        if (v16)
        {
          break;
        }
      }

      v3 = v0[30] + 1;
      v1 = v8;
      if (v3 == v0[29])
      {
        v20 = v0[28];
        goto LABEL_10;
      }
    }

    v17 = swift_task_alloc();
    v0[38] = v17;
    *v17 = v0;
    v17[1] = sub_1000CD394;
    v18 = v0[25];

    return sub_1000D06DC(v7, v12);
  }

  else
  {
LABEL_10:

    v21 = v0[1];

    return v21(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CD394(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_1000CD510, 0, 0);
}

uint64_t sub_1000CD510()
{
  v63 = v0;
  v1 = v0[39];
  if (!v1[2])
  {
    v30 = v0[36];
    v31 = v0[39];

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA40);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[37];
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10021145C(0xD000000000000023, 0x800000010032E080, &v62);
      _os_log_impl(&_mh_execute_header, v33, v34, " %s No recommendations supplied", v37, 0xCu);
      sub_10000839C(v38);
    }

    v1 = v0 + 31;
    goto LABEL_14;
  }

  v2 = v0[39];
  if (qword_1003D7F20 != -1)
  {
    swift_once();
    v58 = v0[39];
  }

  v3 = v0[37];
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[39];
    v9 = v0[37];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10021145C(0xD000000000000023, 0x800000010032E080, &v62);
    *(v10 + 12) = 2080;
    v12 = Array.description.getter();
    v14 = sub_10021145C(v12, v13, &v62);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v9;
    *v11 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, v7, " %s Recommended handles: %s for %@", v10, 0x20u);
    sub_100083380(v11);

    swift_arrayDestroy();
  }

  if (!v1[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v1 = v0 + 22;
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[37];
  v20 = *(v16 + 32);
  v19 = *(v16 + 40);

  v0[5] = &type metadata for String;

  v0[2] = v20;
  v0[3] = v19;
  sub_10000DB1C((v0 + 2), (v0 + 6));
  v0[10] = String.init<A>(describing:)();
  v0[11] = v21;
  v0[12] = 0x3A6F746C69616DLL;
  v0[13] = 0xE700000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v22 = sub_1000709A0();
  v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v25 = v24;

  v0[16] = v23;
  v0[17] = v25;
  v0[18] = 980182388;
  v0[19] = 0xE400000000000000;
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v60 = v22;
  v61 = v22;
  v59 = v22;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_10000839C(v0 + 2);
  v26 = objc_allocWithZone(AALocalContactInfo);
  v27 = v18;
  v28 = String._bridgeToObjectiveC()();

  [v26 initWithHandle:v28 contact:{v27, &type metadata for String, v59, v60, v61}];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[22] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v29 = v0[37];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_14:
  v39 = *v1;
  while (1)
  {
    v40 = v0[30] + 1;
    if (v40 == v0[29])
    {
      break;
    }

    v0[30] = v40;
    v0[31] = v39;
    v41 = v0[24];
    v42 = (v0[28] + 32 * v40);
    v0[32] = v42[4];
    v43 = v42[5];
    v0[33] = v43;
    v0[34] = v42[6];
    v44 = v42[7];
    v0[35] = v44;
    v0[23] = _swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();

    sub_10028BBC0(v43);

    sub_10028BBC0(v45);

    v47 = sub_1002E225C(v46);

    v48 = v0[23];
    v0[36] = v48;
    v49 = *(sub_1000CEAE0(v48, v47) + 16);

    if (!v49)
    {
      v50 = *(v0[25] + 16);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v52 = [v50 contactForIdentifiers:isa];
      v0[37] = v52;

      if (v52)
      {
        v53 = swift_task_alloc();
        v0[38] = v53;
        *v53 = v0;
        v53[1] = sub_1000CD394;
        v54 = v0[25];

        return sub_1000D06DC(v44, v48);
      }
    }
  }

  v56 = v0[28];

  v57 = v0[1];

  return v57(v39);
}

uint64_t sub_1000CDC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1000CDC60, 0, 0);
}

uint64_t sub_1000CDC60()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  *v3 = v0;
  v3[1] = sub_1000CDD68;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010032E0B0, sub_1000D0F34, v1, v4);
}

uint64_t sub_1000CDD68()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1000CDE80, 0, 0);
}

void sub_1000CDEA0(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  sub_100256EF4(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v9, v5);
  aBlock[4] = sub_1000D0FD0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CE64C;
  aBlock[3] = &unk_1003A86D8;
  v16 = _Block_copy(aBlock);

  [v18 refreshIDStatusForDestinations:isa service:v11 listenerID:v12 queue:v13 completionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1000CE10C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v37 = _swiftEmptyArrayStorage;
    p_ivars = &AppleIDAvailabilityHealthCheck.ivars;
    v36 = v2;
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          *&v42[0] = v37;
          sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
          return CheckedContinuation.resume(returning:)();
        }

        v5 = *(v2 + 8 * v9);
        ++v7;
        if (v5)
        {
          v7 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    while (1)
    {
LABEL_12:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_1000D1064(v1[6] + 40 * (v10 | (v7 << 6)), v42);
      v40[0] = v42[0];
      v40[1] = v42[1];
      v41 = v43;
      if (!v1[2])
      {
        goto LABEL_23;
      }

      v11 = sub_10031B060(v40);
      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_10000DB1C(v1[7] + 32 * v11, v39);
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v13 = v38;
      if ([v38 integerValue] == 1)
      {
        v14 = AnyHashable.description.getter();
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100305F30(0, *(v37 + 2) + 1, 1, v37);
        }

        v18 = *(v37 + 2);
        v17 = *(v37 + 3);
        if (v18 >= v17 >> 1)
        {
          v37 = sub_100305F30((v17 > 1), v18 + 1, 1, v37);
        }

        sub_1000526B0(v40);
        *(v37 + 2) = v18 + 1;
        v19 = &v37[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {

LABEL_23:
        if (p_ivars[484] != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100008D04(v20, qword_1003FAA40);
        sub_1000D1064(v40, v39);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v23 = 136315394;
          *(v23 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, &v38);
          *(v23 + 12) = 2080;
          v24 = AnyHashable.description.getter();
          v25 = v6;
          v26 = v1;
          v28 = v27;
          sub_1000526B0(v39);
          v29 = sub_10021145C(v24, v28, &v38);
          v1 = v26;
          v6 = v25;
          v2 = v36;

          *(v23 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "%s %s not valid", v23, 0x16u);
          swift_arrayDestroy();

          p_ivars = (&AppleIDAvailabilityHealthCheck + 48);
        }

        else
        {

          sub_1000526B0(v39);
        }

        sub_1000526B0(v40);
        if (!v5)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (qword_1003D7F20 != -1)
  {
LABEL_34:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAA40);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v42[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(0xD000000000000021, 0x800000010032E0B0, v42);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s no results returned", v33, 0xCu);
    sub_10000839C(v34);
  }

  *&v42[0] = _swiftEmptyArrayStorage;
  sub_100005814(&qword_1003DC2A8, &unk_1003407D0);
  return CheckedContinuation.resume(returning:)();
}